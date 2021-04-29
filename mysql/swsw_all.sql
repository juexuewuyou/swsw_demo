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
 		phone char(11),
		udate datetime
);


########################################################
#分类表男生女生
create table sw_sort (
       sid int primary key auto_increment,
       sname varchar(8) not null	    
);


########################################################

#书籍类别表
create table sw_category(
		cid  int  primary key auto_increment,
		cname varchar(8)  unique  not null,
		#属于男生还是女生
                sortId int not null,
                foreign key(sortId) references sw_sort(sid)
);

######################################################

#书籍表
create table sw_books (
		bid int primary key  auto_increment,
		bname  varchar(66) not null,
		b_auth  varchar(16),
		b_photo varchar(128),
		b_content text(1000000000) not null,
		#类别id
                categoryId  int not null,
		b_date datetime,
                # 点赞,初始化零
                b_up int default 0,
		#书籍状态是否完结 0未完结
		b_state boolean ,
		#简介
		b_introduce varchar(516),
		foreign key(categoryId) references sw_category(cid)
);


##################################################################

#用户收藏表sw_favorite
create table sw_favorite (
	fid int primary key auto_increment,
	fname varchar(66) not null,
        fimg  varchar(16),
	#用户id
	userId int,
	foreign key(userId) references sw_user(uid)
);


#向用户信息表sw_user中插入数据
insert into sw_user values (null,'张三',123456,'123@163.com','zhangsan','t_1.jpg',1,'18356787799',null);


#向类别表sw_sort插入数据
insert into sw_sort values(null,'推荐');
insert into sw_sort values(null,'女生');
insert into sw_sort values(null,'男生');



#向表sw_category 插入数据分类表
insert into sw_category values (0010,'现言',2);
insert into sw_category values (0020,'短篇',2);
insert into sw_category values (0030,'武侠',1);
insert into sw_category values (0040,'都市',2);
insert into sw_category values (0050,'青春浪漫',2);
insert into sw_category values (0060,'轻小说',1);
insert into sw_category values (0070,'玄幻',1);
insert into sw_category values (0080,'历史',1);
insert into sw_category values (0090,'现实',1);
insert into sw_category values (0100,'古言',2);
insert into sw_category values (0110,'悬疑',2);
insert into sw_category values (0120,'励志',1);
insert into sw_category values (0130,'修真',1);

 
   

#向收藏表sw_favorite插入数据
insert into sw_favorite values(null,'混沌初始','xh_0.jpg',1);
insert into sw_favorite values(null,'造化神尊','xh_1.jpg',1);
insert into sw_favorite values(null,'万古劫灵','xh_2.jpg',1);








#向books表中添加数据
insert into sw_books values(null,'混沌初始','扬帆星海','xh_0.jpg','等待更新','70',null,666,0,'腹藏万卷书的天才少年云飞，意外流落异界，太极拳大放神威，分子理论创新炼丹，电子技术指导阵法，借助现代科学技术知识扬威异界，去追寻盘古、女娲的足迹……');
insert into sw_books values(null,'造化神尊','陈家起灵','xh_1.jpg','等待更新','70',null,666,0,'神天大陆，造化如星河！少年有志，开天而起震苍穹，平灭邪魔慑乾坤！且看秦天如何在这片被遗失的天地，来突破桎梏，铸就不败的热血传说！');
insert into sw_books values(null,'万古劫灵','一粒未央','xh_2.jpg','等待更新','70',null,666,0,'<p>第一世，我为极道仙尊。</p><p>第二世，我为轮回大帝。</p><p>第三世，我浴血重生，势必证道诸天，报仇雪恨！</p><p>看少年叶玄，三世称尊，证帝天极！</p>');
insert into sw_books values(null,'重生之逆流人生 ','揪揪糖','xs_0.jpg','等待更新','90',null,666,0,'<p>上辈子生的委屈、长得憋屈、死的时候还被人指指点点！</p><p>这辈子指点江山、豪情壮志、爱江山更爱美人！</p><p>上辈子欠你的！这辈子还！上辈子欠我的，我给你好看！</p><p>没有金手指的神通、没有小鲜肉的魔力、没有偶遇美女的想法！</p><p>我就是我，腊月初八被人点的烟火！</p><p>女作者写的男主书，细腻的笔体、真实的生活、不服来看！</p>');
insert into sw_books values(null,'大明首相','维衡','ls_0.jpg','等待更新','80',null,666,0,'作者站在大历史维度，充分尊重历史真实，主要事件、人物不虚构、不美（丑）化，制度、风俗等细节还原历史原貌，以人性为底色，以朝廷为枢纽，塑造了给因袭萎靡、积弊丛生的老大王朝带来清明刚健新风，以忠诚、干净、担当著称，锐志匡时、肩大任而不挠的执政者的真实形象，揭开了帝制中国上层的神秘面纱，在错综复杂的矛盾纠葛中，全方位再现了大明中后期犹暗乍明、朦胧躁动的历史。小说情节曲折生动，人物性格鲜明，弥漫着浓厚、古雅的历史氛围，有很强的代入感，使人仿佛置身时空隧道，一览大明帝国的历史风景。');
insert into sw_books values(null,'剑鸣九天 ','一株仙草 ','xh_3.jpg','等待更新','70',null,666,0,'<p>一场黑色的大火，掀开了大凉山神秘的轻纱。</p><p>一柄残缺的巨剑，斩破了神魔大陆的千古岁月。</p><p>失去记忆的少年，在浑噩中苏醒，在那个看不见光明的世界中，留下了无数动人心魄的传奇。</p><p>有人说，他是魔，但他只是一名剑客，孤独的剑客。</p>');
insert into sw_books values(null,'异世灵武天下','禹枫','xh_4.jpg','等待更新','70',null,666,0,'<p>穿越后，成为已死的废柴少爷，遇上了神秘老者南叔。</p><p>为亲情，为红颜，为身边最亲的人，陆少游从废柴一步步踏上强者之路。</p><p>强者之路，一路荆棘遍布，却也阻挡不住一颗强者之心。</p><p>醉卧美人膝，醒掌天下权，传言武道巅峰，灵道极致，便能踏碎虚空。灵武双修，不世霸枭，既然来了，就要留下一世传奇。</p>');
insert into sw_books values(null,'元灵伐天 ','南木萧萧','xh_5.jpg','等待更新','70',null,666,0,'<p>【搞笑热血都市玄幻】一脚踏空世界大变，高考莫名成了武考，大学变成了武府！</p><p>飞天遁地的修士，遍布全球的元兽，神秘诡谲的秘境，以及膨胀百倍的地球！这一切的背后究竟蕴含着怎样的秘密？</p><p>玄幻都市行，热血伐九洲</p>');
#######################################################################
insert into sw_books values(null,'武帝重生 ','静墨','xh_6.jpg','等待更新','70',null,666,0,'你敢把我怎么样？某位公子叫嚣着。“没怎么样，就废掉你双手双脚而已。林龙邪邪一笑。“啊……”公子哥的惨叫声响彻天际。“前方就是武圣杨顶遗迹，大家冲啊！”各路强者蜂拥而上。“武圣遗迹么，前世早被我洗劫一空了。”林龙笑而不语。“两女是秘典所述的炉鼎……”几名绝顶强者密谋着。“不好意思，她们已经委身于我几年。”林龙淡然一笑。“怎么可能？”几名绝顶强者尽皆惊讶。……武帝林龙遭受围攻，跌落悬崖的他重生回到少年时代。凭借先知先觉他成为了最强者。');
insert into sw_books values(null,'绝世符神 ','东方行云','xh_7.jpg','等待更新','70',null,666,0,'你能炼药，可以快速突破？我一枚聚灵符，能增加十倍百倍的修炼速度！”“你会炼器，炼出神兵可斩星辰？我有九天雷符，能召唤九天神雷，一击之下万里成灰！”“你精通阵法，可攻可守？我有铭符万千，他人生死皆在我一念之间！”万年之前的九天至尊殒落身死，却转世重生于万年之后，成了一个三流家族中人人可欺的庸人。一次重伤，萧羽想起了前世所有记忆，无论是炼药还是锻器，各道都是信手拈来，然而他最为擅长的，始终是铭符之道。');
#####################################################
insert into sw_books values(null,'一术镇天 ','五月初八 ','xh_8.jpg','等待更新','70',null,666,0,'传闻之中，九天之上，通天仙路，无上仙门，一踏而过，便可永生。然而修仙者为求永生，前赴后继，为何又成为苍天眼中的毒瘤？人有法术，仙有仙术，天亦有天术。天术镇压一切，乃万术之祖，世间万法莫不始于天术。苏夜，一个穿越而来差点被当做祭品献祭给九天仙神的卑微生灵，又将怎样踏遍万仙，一破仙门？');
insert into sw_books values(null,'无敌血脉','逍遥寰宇 ','xh_9.jpg','等待更新','70',null,666,0,'无垠宇宙，血脉为尊！出生决定一切，超品血脉者，生有神通，移山填海，捉星拿月，十品废脉者，寿不过百，前途灰暗，蝼蚁一生！少年杨帆，七星宗一普通杂役，注定碌碌一生，怎知偶有奇遇，得至宝吞噬，吞无尽血脉，成无上圣脉，无敌天下，谁人不服？');
insert into sw_books values(null,'凌天战神','万木峥嵘 ','xh_10.jpg','等待更新','70',null,666,0,'凌天大陆，星辰皆有战灵，天才认主，武道觉醒。强者一念，天地色变，弱者如蚁，血洒苍穹！更有传说，凌天之上，有龙翱翔。上古武帝庄子，九转涅槃后悟屠龙之技，御龙为马，主宰天地，是为凌天战神。“天下苍生视我为敌又如何？”叶峰紧握长枪，怒视苍穹之上：“他日我为玄帝，敢踏破苍天大地！”');
insert into sw_books values(null,'盖世战神:不败战神 ','居白','ds_0.jpg','等待更新','40',null,666,0,'列土封疆，战神归来。本应是衣锦还乡，却传来兄弟噩耗。他说：所有人都要为此付出代价！');
#############################################
insert into sw_books values(null,'国士无双（又名都市君临天下）','一枝轩','ds_1.jpg','等待更新','40',null,666,0,'那一年，落雪人间。她风华绝代之际，黯然消逝。他则成为无双名将！他记得，自己说过要娶她。无论生死！');
insert into sw_books values(null,'共和国战疫 ','王鹏骄','xs_1.jpg','等待更新','70',null,666,0,'【同舟共济，战“疫”有我】【“新时代的中国”第二届全国网络文学现实题材主题征文大赛】王鹏骄2020抗疫题材“共和国系列”三部曲之一，长篇报告文学。根据作者所在的新冠肺炎定点收治医院诊疗筛查亲历，及对邱海波教授为首的疫区最中心同仁的采访撰写全文。“不必赞颂我是扁鹊华佗，只是国家需要人民重托。”（该系列作品抗疫主题曲《中国医者》已登陆网易云音乐及虾米音乐，热播中~~)');
insert into sw_books values(null,'和人形测谎仪没法谈恋爱','赖尔','xs_0.jpg','等待更新','90',null,666,0,'慕真真是红绿色盲。在现实世界里，她看不见红色和绿色，但是她却有一项特殊技能：她能从文字上分辨出真假，真话就是红色，谎话是绿色。慕真真偶然遇到了当红“小鲜肉”司霖，并通过微博文字发现，对方是个十足的谎话精。在揭露司霖“真面目”的过程中，真真发现明星的“两面派”有其原因，而真实与谎言，也往往不能通过140字的短文来判定。另一方面，明星人设崩塌的司霖，也逐渐放下了偶像包袱，他与不打不相识的慕真真一起，成为了视频UP主。在甜蜜恋爱的同时，他们也成为了为网络暴力的受害者发声、对抗键盘侠和造谣者、查明网红事件的真相的“The Truth Teller”（真言者）……');
insert into sw_books values(null,'一面','本命红楼','xs_3.jpg','等待更新','90',null,666,0,'大部分人的一面就仅仅是一面，但有的人仅仅只一面，却注定了一生。　这是二战大背景下，一个廊桥遗梦式的爱情故事，兜兜转转不论经历多少轮回曲折最终还是你；这是战火和苦难中，不断成长蜕变的革命青年，苦难和经历只会让梦想者更加坚强；这是思想文化激流中，一个忠诚真理，一心学生，锻造大学英魂的好校长；他有无数次一面，和鲁迅、和丁玲、和张天翼、和顾祝同，一个个都是近代史中浓墨重彩的一笔，这一面面构成主人翁绚烂梦想的一生。人世匆匆，人生促促，太多人经过又离开，来到又分别，大多只是过客，有些人只是“一面”，却扎根在内心的最深处，生长发芽，静默欢喜。');
insert into sw_books values(null,'不负韶光 ','月壮边疆','xs_4.jpg','等待更新','70',null,666,0,'十八大后，归国侨眷夏棘青因旧城区改造，和新小孜、谭鸣声、季陶然等年轻人因缘聚会在城郊综合社区东江新城。滞后的配套与服务让他心有抵触，成为在网络中挑剔问题的“毛毛虫”，微博与微信公众号“新城夜话”成为居民吐槽的负面平台。伴随城市文明建设与基层治理创新的深入，夏棘青不知不觉开始参与社区公益服务，与街坊邻里上演了许多啼笑皆非的故事，随后在基层党组织帮助和支持下，自觉创立”网络多媒体自治联盟”，与年轻伙伴们共同实现“八步蝶变”，描绘出爱情、亲情、友情的美丽画卷，展现改革创新进程中，党组织克难求进，关心引导新青年转变思维，积极投身社会治理，发展成为团青年先锋、文明好网民的真实轨迹');
########################################################
insert into sw_books values(null,'元尊','天蚕土豆','xh_11.jpg','等待更新','70',null,666,0,'天蚕土豆最新鼎力大作。大周皇子周元，原本拥有圣龙之命，却被敌国武王以亿万大周子民为要挟，蟒雀吞龙，夺走其圣龙气运。周元入祖地，遇夭夭；重开八脉，再踏征途。少年执笔，龙蛇舞动；劈开乱世，点亮苍穹。气掌乾坤的世界里，究竟是蟒雀吞龙，还是圣龙崛起？！');
insert into sw_books values(null,'核医荣誉 ','王鹏骄','xs_5.jpg','等待更新','90',null,666,0,'“战乱救国，和平救人。核医荣誉，属于祖国，属于人民。”国内核医题材开创者、三甲医院核医学工作者王鹏骄继“2019中作协重点扶持项目《核医荣光》”后，以核医工作纪实为篮本改编的全新医疗现实题材小说，本故事为作者核医“荣”系列III部曲第II部。以无名革命烈士精神为指引，讲述了汉东医院核医学科研型技术医生李荣誉与团队利用核医诊疗理念为人们解决无数疑难杂症，并一步步实现自我成长自我救赎的故事，同时将因疾结缘的不同行业病患身后故事与冷暖自知的人间百态推陈出新地交给观者。【2019全国首届现实题材主题征文大赛未完结组优秀奖】');
insert into sw_books values(null,'王牌神医 ','朽木可雕 ','ds_2.jpg','等待更新','40',null,666,0,'一个医院的临时工，凭一双妙手逐步成为医学界的传奇！一个社会底层的小人物，靠一腔热血成为人世间的枭王！当佛已经无能为力，便由我来普渡众生——杨风。');
insert into sw_books values(null,'花园村的那些人 ','子苓','xs_6.jpg','等待更新','90',null,666,0,'大婚前，她对准自己的脖子说：“今晚就要做你的人，做不成就做鬼。”面对姑娘如此炽热的爱，他该如何选择？一个月的阴雨天，愣是把黄橙橙的麦穗变成了青牙刷，他们将如何度过漫漫长冬？因为穷，无奈把亲生孩子送人；因为穷，连野都要抢； 因为穷，人被倒塌的房屋，活活地砸死。他说：“穷，并不可怕，可怕的是连承认贫穷的勇气都没有。那些不为改变贫穷而努力奋斗的人是确实可耻的。”于是他们偷偷分田到户，承包鱼塘，先后办起手工厂、纺织厂、砖窑厂等等，在时代的大潮下，做出了一系列惊人之举。可是他也遭到了恐吓、绑架、批斗，面对这些，他害怕了吗？《花园村的那些人》带您走进惊心动魄的岁月');
###############################################
insert into sw_books values(null,'浪潮 ','胡说','xs_8.jpg','等待更新','90',null,666,0,'21世纪前20年，伴随着中国制造到中国智造再到中国创造，林远、陈鹏、郑南飞、周晓月这四个来自社会底层的80后，在时代的大浪潮中，上演了一幕幕荡气回肠的沉浮故事。');
insert into sw_books values(null,'人生的战争 ','雨甜','xs_7.jpg','等待更新','90',null,666,0,'朱浩洋在部队这个大舞台上辗转腾挪，遇到挫折和危险，常能化险为夷；处理与妻子关系、与对手关系，常能化干戈为玉帛；处理工作矛盾，遇到棘手难题，又常常化腐朽为神奇。他自觉投身新军事革命，刻苦钻研信息化条件现代化战争的打赢技能，成长为足智多谋的“蓝军”旅长，与全军各部队精英角逐朱日和演兵场，多年来，以32比1的战线，成为战神级的英雄，将朱浩洋人生推向了顛峰。小说生动有趣，耐人寻味，给读者以许多有益的人生启迪。');
################################################
insert into sw_books values(null,'无字江山','小神','xs_9.jpg','等待更新','90',null,666,0,'该作品是中国作协网络文学重点园地联席会议重点扶持作品。日落龙河现，无字半江山。大四那年性格诡异的教授在冬至这天把我一个人丢在了摩天岭下的灵河岸边，我以为这只是一次普通的考古实习，没想到却跟当年母亲离奇失踪，家族举家迁徙以及我背后的天熊胎记全都息息相关，我是个聋子，改变我一生的宿命故事就这样毫无征兆的开始了。');
insert into sw_books values(null,'我们青春时 ','徐昕','xs_10.jpg','等待更新','90',null,666,0,'人性中最美好的情感是与生俱来、永恒不变的。唯有以真实的生活态度对待生活，才能感悟人生的真谛，获得真挚的爱情。20世纪70年代，一群年轻人怀揣着梦想，却被时代的洪流裹挟向前，面对欲望和物质的诱惑，跌宕起伏，走向不同命运轨迹。【向新中国成立70周年献礼参赛作品】');
insert into sw_books values(null,'破冰之路 ','扬帆星海','xs_11.jpg','等待更新','90',null,666,0,'退伍军人王福满返回家乡郭王村，正好遇上修路引起的拆迁一座在当地香火较为旺盛的山神庙，为扫清修路障碍，怒砸山神庙，也因此在村里“众叛亲离”，但凭借军人的坚毅、赤子的真情和辛苦的劳作，在扶贫干部和精准扶贫政策的帮持下，不光挽回了乡情，更是通过流转土地、创办合作社，培育黄桃种植农场，建设罐头厂、粉丝厂等绿色食品加工基地，带领村民走上一条脱贫致富的康庄大道，同时也收获了自己的美满爱情。村里的巨变和富裕的生活让乡亲们认识到：守护郭王村、让自己过上幸福宽裕生活的不是香火供奉的山神，而是中国共产党和利民的好政策。');
####################################################
insert into sw_books values(null,'天启预报 ','风月著','qxs_7.jpg','等待更新','60',null,666,0,'“我想要挨一顿毒打……”
——灾厄之剑、旧世界守墓人、调律师、最后的天国捍卫者、二十四个毁灭因素之一、淮海路小佩奇、深渊烈日、最终的地狱之王：槐诗。
某一天，穷困潦倒的槐诗忽然发现自己捡来的金手指终于能用了……只不过，这似乎并不是一件好事。为了赚钱和苟命，他一不小心踏入了这个危险世界。
');
insert into sw_books values(null,'诡秘之主 ','爱潜水的乌贼著','qxs_6.jpg','等待更新','60',null,666,0,'蒸汽与机械的浪潮中，谁能触及非凡？历史和黑暗的迷雾里，又是谁在耳语？我从诡秘中醒来，睁眼看见这个世界：
枪械，大炮，巨舰，飞空艇，差分机；魔药，占卜，诅咒，倒吊人，封印物……光明依旧照耀，神秘从未远离，这是一段“愚者”的传说。');
insert into sw_books values(null,'没钱上大学的我只能去屠龙了',' 宇宙无敌水哥 著','qxs_5.jpg','等待更新','60',null,666,0,'总之岁月漫长，然而值得等待。
林年等了十六年，等到了卡塞尔之门的召唤，等来荒诞无稽、热血放纵的青春。');
insert into sw_books values(null,'我师兄实在太稳健了 ',' 言归正传著','qxs_4.jpg','等待更新','60',null,666,0,'总重生在封神大战之前的上古时代，李长寿成了一个小小的炼气士，没有什么气运加身，也不是什么注定的大劫之子，他只有一个想要长生不老的修仙梦。
　　为了能在残酷的洪荒安身立命，他努力不沾因果，杀人必扬其灰，凡事谋而后动，从不轻易步入危险之中。
');
insert into sw_books values(null,'我就是不按套路出牌  ',' 百分之七著','qxs_3.jpg','等待更新','60',null,666,0,'场大战之后，漂亮师姐在你面前娇羞的抬起脸，并缓缓闭了眼睛，这时候你……
【选项一：轻轻吻上她的嘴唇。完成奖励：千叶奇谱（地级上品）】
【选项二：在她的额头上吻一下。完成奖励：阴阳双锋剑（地级下品）】
【选项三：给她一个拥抱。完成奖励：幽冥宝鳞（玄级上品)');

insert into sw_books values(null,'轮回乐园 ','  那一只蚊子著','qxs_2.jpg','等待更新','60',null,666,0,'苏晓签订轮回契约，进入各个世界执行任务。他曾目睹一个世界崩灭为尘粒，也曾与被遗忘的王者持刃而战。
　　暗鸦在低语，黑渊下巨兽咆哮。
　　欢迎来到，轮回乐园……
');

insert into sw_books values(null,'我加载了恋爱游戏  ',' 掠过的乌鸦 著','qxs_1.jpg','等待更新','60',null,666,0,'【那就变得更俊美，如果可以打动美少女】
　　【如果情话能说得更好听，也请说给她听】
　　【但请记住，不要主动】
　　【让美少女自己喊出来：“俊美的、情话说得好听的东京帅哥啊，我一定要拥有你，你是我的。”】
　　这是岩手县少年成为东京帅哥的故事。
');

insert into sw_books values(null,'黎明之剑 ',' 远瞳著','qxs_0.jpg','等待更新','60',null,666,0,'【高文穿越了，但穿越的时候稍微出了点问题。
　　在某个异界大陆上空飘了十几万年之后，他觉得自己可能需要一具身体才算是成为一个完整的穿越者，但他并没想到自己好不容易成功之后竟然还需要带着这具身体从棺材里爬出来，并且面对两个吓蒙了的曾曾曾曾……曾孙女。
　　以及一个即将迎来纪元终结的世界。
');

insert into sw_books values(null,'重生之朱雀如梦 ','  令狐小牙著','qc_7.jpg','等待更新','50',null,666,0,'重生啦！重生啦！
　　异能？有个空间算异能么？
　　美男？大概有吧？不！一定有！
　　钱财？这个嘛……
　　注：本文轻松小白，励志温馨。笔者新手上路，请大家多多指导。
　　小牙一般情况都保持每天有更，节假日会双更或多更，希望喜欢本书的朋友推荐和收藏。　　
');

insert into sw_books values(null,'重生之恋  ','  链链著','qc_6.jpg','等待更新','50',null,666,0,'小清新+痴情守护男+加大虐恋+加复仇，
　　情节多变而有趣，
　　什么：交往一周后就不生不息的去北上一线城市发展，那是她最的单纯的暗恋
　　什么：不管怎么样我都不会放弃，女主说：再美丽的爱情都敌不过时间和空间的距离
　　什么：世界上根本就没有无缘无故的爱，我和你在一起，只是为了报复你，傻女人。
　　原来，她的情路注定了一路颠簸，那么，她渴望的归属点又在哪儿那。
　　重生后的恋爱，让我们一起期待吧。　
');
insert into sw_books values(null,'重生夏琉璃  ',' 陶目著','qc_5.jpg','等待更新','50',null,666,0,'乖乖牌重生到不良少女身上，这个身体的主人到底惹了多少麻烦？
　　美女你干嘛跟我过不去？
　　——啥？！我和你抢男人？
　　帅哥你干嘛老瞪我？
　　——什么？！我拍过你艳照？
　　——冤枉啊！这些都不是我干的
');

insert into sw_books values(null,'重生之种田生活  ',' 渔妇著','qc_4.jpg','等待更新','50',null,666,0,'人生能重来一次，就像天上掉馅饼一般。当这个馅饼刚好砸在小嫚的头上时，小嫚会有怎样的表现呢！
');

insert into sw_books values(null,'谁敢反对我重生   ',' 我为楚狂著','qc_3.jpg','等待更新','50',null,666,0,'【重生女神学霸√爽文√甜宠√】鲜血淋漓，闺蜜和弟弟怂恿她自残说是为了她好，心上人玩弄她说是为了让她快乐，父亲将录取通知书上她的名字换成弟弟的名字，美其名曰：女子无才便是德。被亲近之人推入崖底，不料竟是他来替她收尸。
');

insert into sw_books values(null,'重生韶华不负   ',' 是第二梦著','qc_2.jpg','等待更新','50',null,666,0,'大龄剩女遭遇车祸一朝回到初三
那段有遗憾的青春她要自己弥补。
那些守护着她的人如今也要换她守护。
早恋？不可能！
');

insert into sw_books values(null,'重生追美男  ',' 温以然著','qc_1.jpg','等待更新','50',null,666,0,'大龄剩女+处女的孟晓晓重生了，请问她最想干什么？
　　当然是撩追心上人呀！就算重生，追美男也是一件脑力体力活呀！
　　没有金手指可怎么追呢？还有闺蜜的婚姻大事怎么进行下去呢？
　　孟晓晓很苦恼，坐等你们来扰！
　　还有正在连载的《再婚攻略，娇妻有毒！》欢迎来访！
');

insert into sw_books values(null,'潇洒重生路   ',' 傻的那般可爱crystal著','qc_0.jpg','等待更新','50',null,666,0,'女主南潇潇考运差，砖头砸，遇到腹黑他。即将毕业，仍旧混混沌沌，别人找工作，她为考试愁。不知老天垂怜，抑或天降横祸，考场出来砖头命中，华丽丽的成为重生大军中的一员。之后，女主一改霉运，成绩好，人儿娇，红娘俏，且看她如何努力学习，建立友谊，顺便撮合死党与干哥哥，发家致富。
');

##############################################################
insert into sw_books values(null,'喜时归','月下无美人著','gy_7.jpg','等待更新','100',null,666,0,'谢于归重生后做的最错的事情，就是撅了自己的坟，盗了自己的墓，招惹了那条嗅到血腥就不松口的疯狗……
……
韩恕叼着她脖颈直磨牙：你说谁是狗？
谢于归：你不是？
韩恕：……汪。
');

insert into sw_books values(null,'娘子万安 ','月下无美人著','gy_6.jpg','等待更新','100',null,666,0,'混世魔王想做一朵小白花到底有多难。
贵女周如珺惨死在大牢之中，再睁开眼睛已经变成了傻女顾明珠，开启了她混不吝的一生。
对顾明珠来说，报仇并不难，难在她曾答应那些死囚，要让他们赫赫有名的身份重见天日，于是顾明珠日日思量，要怎么才能不心惊肉跳，平庸安泰地过此生。
顾娘子安分守己，人前也并不出挑，可他却发现这样一个害羞、胆小的女子有点黑，仔细看起来，她黑得深不可测……
');

insert into sw_books values(null,'藏珠 ','云芨著','gy_5.jpg','等待更新','100',null,666,0,'徐吟做梦都想回到那一年，父亲还是南源刺史，姐姐还没成为妖妃，而她，正忙着招猫逗狗，争闲斗气……
');

insert into sw_books values(null,'嫡长女她又美又飒  ','千桦尽落著','gy_4.jpg','等待更新','100',null,666,0,'前世，镇国公府，一朝倾塌灰飞烟灭。
　　此生，嫡长女白卿言重生一世，绝不让白家再步前世后尘。
　　白家男儿已死，大都城再无白家立锥之地？
　　大魏国富商萧容衍道：百年将门镇国公府白家，从不出废物，女儿家也不例外。
　　后来……
　　白家大姑娘，是一代战神，成就不败神话。
　　白家二姑娘，是朝堂新贵忠勇侯府手段了得的当家主母。
　　白家三姑娘，是天下第二富商，翻手为云覆手为雨的商界翘楚。
');
insert into sw_books values(null,'农家小福女  ','郁雨竹著','gy_3.jpg','等待更新','100',null,666,0,'周家的四哥赌输了钱，母亲病重，赌场的人还想让满宝卖身偿债。
　　村里人都说周家的宝贝疙瘩好日子到头了，老娘也握着满宝的小手哭唧唧。
　　满宝却手握系统，带着兄弟嫂子们开荒，种地，种药材，开铺子……
　　日子越过越好，嫂子们却开始忧心满宝的婚事。
　　“小姑，庄先生的孙子不错，又斯文又会读书，配你正好。”
　　“小姑，还是钱老爷家的小儿子好，又漂亮，又听话，一定不会顶嘴。”
');


insert into sw_books values(null,'和亲公主回来了 ',' 三月果著','gy_2.jpg','等待更新','100',null,666,0,'十四年前，年仅十六岁的永思公主为了保住皇兄的疆土和百姓，远嫁羌国和亲。十四年后，皇兄驾崩，幼帝登基，摄政王率兵灭了羌国，永思公主带着她的十里红妆回来了......
李灵幽千辛万苦熬死了老掉牙的羌国可汗，从鸟不拉屎的草原回到繁华的京都，本想着养几个面首夜夜笙歌、快活到老，没成想那凶神恶煞的摄政王竟然也想爬她的床......
');

insert into sw_books values(null,'花娇 ','  吱吱著','gy_1.jpg','等待更新','100',null,666,0,'郁棠前世家破人亡，今生只想帮着大堂兄振兴家业。
　　裴宴（冷眼睨视）：无事献殷勤，非奸即盗！这小姑娘的总在我面前晃来晃去的，难道是觊觎裴家宗妇的位置？
　　郁棠（默默流泪）：不，这完全是误会！我只是想在您家的船队出海的时候让我参那么一小股，赚点小钱钱……
');

insert into sw_books values(null,'表小姐 ',' 吱吱著','gy_0.jpg','等待更新','100',null,666,0,'王晞的母亲为给她说门体面的亲事，把她送到京城的永城侯府家镀金。可出身蜀中巨贾之家的王晞却觉得京城哪哪儿都不好，只想着什么时候能早点回家。直到有一天，她偶然间发现自己住的后院假山上可以用千里镜看见隔壁长公主府……她顿时眼睛一亮——长公主之子陈珞可真英俊！永城侯府的表姐们可真有趣！京城好好玩！
');
insert into sw_books values(null,'从华山开始的武侠之旅  ',' 八月南苏著','wx_7.jpg','等待更新','30',null,666,0,'那天晚上我做了一个梦 梦里我手里拿着把木剑挥舞 突然天空低垂，无数剑仙御剑而来 他们踏剑立于天上 或怜悯、或讥讽、或悲戚、或烦躁、或愤怒，却都看着我 天空中突然响起沧桑的声音 “汝习武可得长生否？” 我听完将木剑举起对着漫天剑仙说道！ “吾辈学武！只为路遇不平拔剑起！只为吐尽胸中不平气！”ps：笑傲世界已经结束，现在在天龙八部。
');


insert into sw_books values(null,'诸世大罗 ',' 衔雨著','wx_6.jpg','等待更新','30',null,666,0,'在武道为尊的天玄界里，三清道脉横压神州，三世佛统普渡西土，还有世家皇朝，外道诸魔，群起争雄。
楚牧携带昆仑镜穿越到此世，从玉鼎宗的一质子成长，映照诸天，步步走向玉清之首，诸道之巅。
暂定副本：大明世界、古龙世界、大唐世界、风云世界······
');

insert into sw_books values(null,'我资质平平 ',' 下地拔草著','wx_5.jpg','等待更新','30',null,666,0,'我资质平平，却奇遇连连！
【你闻到一股淡淡的药香，你扒开角落里的石头，找到一个白色瓷瓶，里面装着三枚少林大还丹！】
……
【你仰望头顶星空，心有所感，七星剑法达到出神入化之境！】
……
【你撬开中空的木盒，发现里面藏着一本绝世神功！】
');

insert into sw_books values(null,'我反夺舍了诸天大佬 ','  银霜骑士著','wx_4.jpg','等待更新','30',null,666,0,'这是一个坐在家中奇遇便会上门的故事！
身具夺舍体质，常被诸天大佬夺舍，体质特殊反夺舍了诸天大佬。
神功妙法，武道经验，悟性天赋，武道神通，每一次夺舍都是一次主动上门的奇遇！！！
');

insert into sw_books values(null,'做个武侠梦 ','  索肥丫 著','wx_3.jpg','等待更新','30',null,666,0,'做梦可以习武？还能进化？怕不是得了睡梦罗汉拳的真传！把梦境连接起来岂不是降龙十八掌最后一式？说起来都有点累了，让我们睡一觉，一起做个武侠梦，梦里啥都有。
');

insert into sw_books values(null,'从山匪开始的武侠  ',' 叮叮小石头著','wx_2.jpg','等待更新','30',null,666,0,'有人掌出青龙，威震天下。有人拳碎青山，万人敬仰。有人千年不死，宛如仙神。有人悲天悯人，慈悲度世。这惶惶大世，岂能没有我一席之地？（主角杀伐果断，不圣母，有实力就杀，没实力就苟）建了个群680610894欢迎来催更（请看完三章再决定要不要弃书，本书真的杀伐果断）
');

insert into sw_books values(null,'诸天无限扮演 ','  千逢夏著','wx_1.jpg','等待更新','30',null,666,0,'穿越后十五年，英俊、谦虚、武功高强，凭亿近人的夏无忌外挂终于到账，开启一场场万界降临之旅。 不断降临，完成心愿，吸收相似神魂，无尽归一。
小李飞刀中的龙小云，让父亲龙啸云体会哄堂大孝、爆孝如雷。 功夫的火云邪神，与斧头帮老大琛哥上演父子情深，棍棒底下出孝子。
');

insert into sw_books values(null,'横推山河九万里 ',' 易子七著','wx_0.jpg','等待更新','30',null,666,0,'安得倚天起霸拳，横推山河九万里。
一个材料不一样的少年人，一块“平平无奇”的属性板。
现代武侠，天子民国，妖魔大清，神鬼大明……
这是一个武起乾坤拳镇山河的故事！
');


insert into sw_books values(null,'舍励 ','  花意浓铭著','dp_7.jpg','等待更新','20',null,666,0,'宇宙浩渺，我们的地球已经存在了很多很多年，人类也已经存在了很多很多年。在那些久远的年代里曾经发生过数不清的精彩故事，其中一个最扣动心弦......。
那是关于舍励等七个少年历经艰难险阻，帮助人类渡过劫难，重建美好家园的精彩故事。故事里有很多你们没见过的国家，没听过的人物，甚至想都想不到的事件，可是谁能确定没有发生过呢？
希望读过这个激荡昂扬的故事后，少年儿童们学会用“勇敢、智慧、仁爱”面对生活中的困境，与朋友真诚相待，爱护自然环境，热爱祖国，心有梦想。
');

insert into sw_books values(null,'龙车爷爷奇遇记 ',' 高铁侠客著','dp_6.jpg','等待更新','20',null,666,0,'龙车爷爷是中国铁路史上第一台火车——龙号机车的拟人。故事中，已逾百龄的龙车爷爷，通过过神奇的时间轨道，一路上先后遇上了各个时代、各式各样的火车，蒸汽机车，内燃机车，电力机车，动车组，磁悬浮列车，管道胶囊高铁……发生了许多惊险而有趣的故事。一部中国铁路发展历史，以及高铁未来发展的梦想，你都可以在龙车爷爷的这一番奇遇中找到……
');

insert into sw_books values(null,'轻，短，散  ',' 得了吧著','dp_5.jpg','等待更新','20',null,666,0,'各种各样的狂想，短篇小说。
《轻，短，散》、《软，化，物》、《转，舍，离》三部曲。
半科幻，脑洞向。
轻小说、短篇、散文。
无尽的铁轨，悠长的旅途。
唯有思绪，让你不再孤单。
');

insert into sw_books values(null,'我的洪荒之行 ',' 青岗坂著','dp_4.jpg','等待更新','20',null,666,0,'一个高中生，意外穿越洪荒。一步先，步步先，夺取他人机缘，收尽佳徒！追寻宇宙真谛的传奇故事！
');

insert into sw_books values(null,'女权世界的暖男  ',' 吃我咸鱼突出 著','dp_3.jpg','等待更新','20',null,666,0,'慕寒:事情不应该是这样的啊，我明明想当个好人的啊，为什么会这样啊！
哎嘿嘿，你跑不掉了！
主角穿越女权世界，看主角如何在这个逆转的世界求生
');


insert into sw_books values(null,'维度之间   ',' 得了吧 著','dp_2.jpg','等待更新','20',null,666,0,'三年来都是同一个梦，一千次选择中我都
做了同样的决定那就是救人。
而今天我还是选择救人，但梦不一样了……
“都一千次了，这家伙为什么还这样？那这一次要不我们换个玩法？”
');

insert into sw_books values(null,'破碎的文森特   ','  文森特周 著','dp_1.jpg','等待更新','20',null,666,0,'临杭市接连发生虐猫案，尸体由几只猫的部位拼接而成。刑警周君奉命调查，在借助网络力量后迅速破案，就在所有人以为案件就此终结时，待拆迁的临氧宿舍楼发现了被拼接在玩偶身上的人类肢体，并在玩偶的腹部发现了描写案件的小说手稿。
');


insert into sw_books values(null,'兰若蝉声 ','  扫叶僧 著','dp_0.jpg','等待更新','20',null,666,0,'荆轲手札出世，
　　青囊原本重现。
　　史书为何讳提始皇帝后宫？
　　亚历山大欲观东海为何迷途？
　　荆轲竟与基辅国有不解渊源？
　　马超后人真的去了亚美尼亚？
　　木兰将军的姓氏背后有何玄机？
　　李世民的祖上和鲜卑拓跋氏究竟有什么不能说的秘密？
　　麒麟与西方独角兽究竟是何物种？
　　古代黑科技如何上天入地？
');

###################################################
insert into sw_books values(null,'重生后我成了反派大佬',' 我尽力了 著','xy_7.jpg','等待更新','10',null,666,0,'物流港爆炸，让许向阳的命运发生巨大改变。
再次睁开眼来到特殊年代……
由她变成“他”也就算了，怎么还是村里有名的盲流子？
#你要悄悄种田经商，然后震惊所有人#
于是猫嫌狗弃的家伙，转眼成了万元户、富一代。
在家人眼里他是乖孩子，在领导眼里他是得力手下。
在极品眼里，他就是个大反派！
这不明摆着是大佬吗？
许向阳：我真不是大佬啊……
众人：求你做个人！谁不知道你是大佬？
年代！男主文！无cp！爽文！
已有完结文:《带着仓库重生》《带着拼多多重生》《六十年代幸福生活》欢迎入坑。
');

insert into sw_books values(null,'大佬级炮灰','蜗碎 著','xy_6.jpg','等待更新','10',null,666,0,' 天师界大佬符慕白在捉妖途中，被劈歪了的天雷打中，一命呜呼。
再次醒来，大佬却成了三百年后的校园少女神棍！
面对聚众前来报复的前顾客，大佬级神棍当机立断：“少年，你有血光之灾！”
一语成谶。
你大佬还是你大佬！
');

insert into sw_books values(null,'在八十年代又野又飒 ','我不白 著','xy_5.jpg','等待更新','10',null,666,0,' 苏青湖不想死了，不仅不想死，还想在这年代里活得又野又飒！
富一代太狗算什么？比他狗就成了！
俩阴晴不定时不时想挖坑给她跳的兔崽子算什么？比他们会挖坑就行了！
青梅竹马为了前程和有背景的学姐领证了算啥？她找了个更有背景的结婚了！
……
桩桩件件，不定谁吃亏呢！
');

insert into sw_books values(null,'快穿之我只想种田 ','沧澜止戈 著','xy_4.jpg','等待更新','10',null,666,0,' 别被书名骗了，取名废，其实就是女强无CP，村姑背景系统逆袭流，也俗称慢穿泥石流，凶杀末世武侠仙侠魔法啥都有，还有，新书8-20不见不散。
');

insert into sw_books values(null,'影后的嘴开过光 ','夜九白 著','xy_3.jpg','等待更新','10',null,666,0,' “江小白的嘴，害人的鬼！”
　　大符师江白研制灵运符时被炸死，一睁眼就成了十八线小明星江小白，意外喜提“乌鸦嘴”技能。
　　好的不灵坏的灵？影后的嘴大约是开过光！
　　娱乐圈一众人瑟瑟发抖：“影后，求别开口！”（无男主文嗷～)
');

insert into sw_books values(null,'天后她多才多亿  ','彤灵尘 著','xy_2.jpg','等待更新','10',null,666,0,' 【事业感情两手抓，主角双强】
出生即巅峰的南曦，从小被团宠长大。
他人眼红却敢怒不敢言，私下讨论最多的莫过于：十年河东十年河西，南家得意不了多久。
或许人多力量大，哪怕恶意的期盼也一样。
在她20岁突然家道中落，一时间，多少人高呼大快人心。
');

insert into sw_books values(null,'退婚后她成了真祖宗   ','病娇猫娘 著','xy_1.jpg','等待更新','10',null,666,0,' 苏家的废物千金苏也，被薄氏集团总裁退婚后疯了！
第一天，她摸着父亲的头：“大侄子，我看好一个项目，明天你去竞标。”
第二天，她用铁锹把苏家祖坟刨了，嘴里念叨：“我记着是埋在这了呀？”
第三天，她拍了拍某洁癖总裁的肩旁：“小薄啊，联姻不成情意还在，这服药我给你打一折，你就给我600万吧。”
');
insert into sw_books values(null,'老祖宗她又美又飒',' 甜西宝 著','xy_0.jpg','等待更新','10',null,666,0,' 白初薇活了五千年，硬生生把自己活成了全人类的老祖宗后，下山开启原著剧情。
　　恒华一中高三新转来了一个女同学，小姑娘明眸皓齿，唇红齿白，长得像个天仙。
　　只可惜是个中二病——
　　“十个段家加在一起都没有我五千年累计的资产一半多。”
　　“华国古典名著之首？那是我两百年前随便写着玩的。”
　　“科学研究不如一剑飞仙，今天老祖宗我教大家如何科学修仙。”
　　吃瓜网友嗤之以鼻，坐等白初薇装逼翻车。
　　直到后来，
　　华国财产统计协会：“老祖宗作为全球首富，拥有全球最多的金矿、上百座岛屿、无数产业。”
');
insert into sw_books values(null,'这个诅咒太棒了',' 行者有三 著','ds_7.jpg','等待更新','40',null,666,0,' 陈宇穿越到高武世界，却被“世界意志”判定为入侵者，施加了诅咒。 【诅咒效果：状态反转】 【修行中：劲气-1、-2、-1、-1……】 【锻炼中：肥胖+1；虚弱+1；体质-1；力量-1；耐性-1……】 陈宇：“欺人太甚！老子不练了！” 【懒惰中：劲气+1、+2、+2、+1……】 【熬夜中：健康+1；免疫力+1；心肺功能+1；疲惫-1……】 【纵欲中：健康+4；精力+3；强壮+3；劲气+20；寿命+2；贤者时间-5……】 这个诅咒…… 真是太棒了！
');
insert into sw_books values(null,'重生之我真没想当男神','周一口鸟 著','ds_6.jpg','等待更新','40',null,666,0,'三十岁的周煜文重新回到了自己十八岁的时候。
　　这一年2010年。
　　重活一世，周煜文没有太多的雄心壮志，他只不过想平平淡淡的生活，赚一点小钱，谈一场恋爱，只不过命运总爱开玩笑...
');
insert into sw_books values(null,'全球高武 ','老鹰吃小鸡 著','ds_5.jpg','等待更新','40',null,666,0,'地窟入侵，武道崛起。
　　小人物也有大情怀，为生存而战，为守护而战。
　　且看小人物方平，一步步崛起，拯救（忽悠）全世界的故事！
');
insert into sw_books values(null,'前桌女生竟是我的头号黑粉 ',' 给您添蘑菇啦 著','ds_4.jpg','等待更新','40',null,666,0,'创作过13部小说，且通通太监掉了的男人，
在现实中，被女读者抓到了！
虽然她有妙不可言的催更技能，
（和惨不忍睹的逼更手段）
但普通作者依然只有0.024%的概率成为职业作家。
为这种事而耽误人生……
真香！
');
insert into sw_books values(null,'第一序列',' 会说话的肘子 著','ds_3.jpg','等待更新','40',null,666,0,'废土之上，人类文明得以苟延残喘。
一座座壁垒拔地而起，秩序却不断崩坏。
有人说，当灾难降临时，精神意志才是人类面对危险的第一序列武器。
有人说，不要让时代的悲哀，成为你的悲哀。
有人说，我要让我的悲哀，成为这个时代的悲哀。
这次是一个新的故事。
浩劫余生，终见光明。
');

insert into sw_books values(null,'重生之金融巨头 ','昭灵驷玉 著','ds_2.jpg','等待更新','40',null,666,0,'在不见血光的资本角力之中，朴实无华的文字亦可跃为钢盔铁甲的战士，了然于胸的规则亦可成为如臂挥使的十八般武器。原来这既无硝烟，也无冷兵器的战争也可如此精彩…
');

insert into sw_books values(null,'万族之劫','老鹰吃小鸡 著','ds_1.jpg','等待更新','40',null,666,0,'我是这诸天万族的劫！
　　《全球高武》和《万族之劫》前五册实体书出版了，天猫、当当、京东都有售，喜欢的可以去看看，谢谢大家支持！
');

insert into sw_books values(null,'稳住别浪','跳舞 著','ds_0.jpg','等待更新','40',null,666,0,'天堂打烊，地狱满员。
所以，我留在人间当祸害呀……
');
insert into sw_books values(null,'绍宋','榴弹怕水著','ls_1.jpg','等待更新','80',null,666,0,'公元1127年，北宋灭亡。旋即，皇九子赵构在万众期待中于商丘登基，继承宋统，改元建炎。然而，三个月内，李纲罢相，陈东被杀，岳飞被驱逐出军，宗泽被遗弃东京，河北抗金布置被全面裁撤……经过这么多努力之后，满朝文武终于统一了思想，定下了拥护赵官家南下淮甸转扬州的辉煌抗金路线。');
insert into sw_books values(null,'赘婿','愤怒的香蕉著','ls_2.jpg','等待更新','80',null,666,0,'武朝末年，岁月峥嵘，天下纷乱，金辽相抗，局势动荡，百年屈辱，终于望见结束的第一缕曙光，天祚帝、完颜阿骨打、吴乞买，成吉思汗铁木真、札木合、赤老温、木华黎、博尔忽、博尔术、秦桧、岳飞、李纲、种师道、唐恪、吴敏、耿南仲、张邦昌，忠臣与奸臣的较量，英雄与枭雄的博弈，胡虏南下，百万铁骑叩雁门，江山沦陷，生灵涂炭，一个国家与民族百年的屈辱与抗争，先行者的哭泣、呐喊与悲怆……');
insert into sw_books values(null,'新书','七月新番著','ls_3.jpg','等待更新','80',null,666,0,'新朝末年，王莽改制失败，天下将乱，赤眉绿林义旗高举，刘秀兄弟志在复汉。
　　重生于这样一个时代，当如何？
　　新室已朽，不破不立，唯有来者，大笔书之！
　　PS：这是关于穿越者大战位面之子的故事。');
insert into sw_books values(null,'小阁老','三戒大师著','ls_4.jpg','等待更新','80',null,666,0,'大明王朝的守护者，万历皇帝的亲密战友，内阁首辅的好儿子，十六、十七世纪全球首富。
控制吏部三十年的幕后黑手，宗藩制度的掘墓人，东林党口中的严世藩第二，张居正高呼不可战胜。');
insert into sw_books values(null,'红楼春','屋外风吹凉著','ls_5.jpg','等待更新','80',null,666,0,'隆安五年，二世为人的贾蔷为保清白身，从虎狼之巢宁国府夺命而逃，自此，一名万年工科单身狗，迎来了他在红楼世界的春天……');
insert into sw_books values(null,'朕又不想当皇帝','争斤论两花花帽著','ls_6.jpg','等待更新','80',null,666,0,'重活一回，本想安安稳稳过一生，奈何都想逼着他做皇帝.......');
insert into sw_books values(null,'梦回大明春','王梓钧著','ls_7.jpg','等待更新','80',null,666,0,'穿越到大明朝，考科举是黑户，想读书又没老师。
好在隔壁就是流放王阳明的龙场驿，不过还得等几年，那就先抢一个老师回家凑合着学吧。');
insert into sw_books values(null,'世子很凶','关关公子著','ls_8.jpg','等待更新','80',null,666,0,'世如棋，人如子。
庙堂尔虞我诈，江湖爱恨情仇，市井喜怒哀乐，无非是一颗颗棋子，在棋盘上串联交织，迸发出的点点火光。
昭鸿年间，坊间盛传有藩王窥伺金殿上那张龙椅，皇帝召各路藩王世子入京求学，实为质子。
许不令身为肃王世子，天子脚下，本该谨言慎行‘藏拙自污’。');
insert into sw_books values(null,'传奇机长','梅子徐著','xs_0.jpg','等待更新','90',null,666,0,'一个伴随特情而生的男人！
一个柯南体质的灾星！
一个民航的传奇！
他就是苍穹之上的救世主！');
insert into sw_books values(null,'我有一座山','老街板面著','xs_1.jpg','等待更新','90',null,666,0,'于飞离婚了，离开了大都市那种快节奏高压力的生活，独自回老家带着女儿，打算在家种种田，养养鱼，过那种父辈过了一辈子的农民生活。直到那次收拾老屋……');
insert into sw_books values(null,'大国重坦','华东之雄著','xs_2.jpg','等待更新','90',null,666,0,'为了给父亲正名，秦振华来到了一机厂，从此开始了一段崭新的人生，修坦克，改炮管，造发动机，搞外贸，一步步地铸造出来大国重坦！');
insert into sw_books values(null,'重振中医','关关公子著','xs_3.jpg','等待更新','90',null,666,0,'这是一个利用中医治病的故事。
钟医从国外知名学府毕业，回国后却毅然决然的选择了外公教他的中医来治病，让众人大跌眼镜');
insert into sw_books values(null,'姚远的远方','霖沛著','xs_4.jpg','等待更新','90',null,666,0,'法大毕业生姚远想成为一名让人羡慕的大律师，于是开启了北漂生活，结果他走向了人生巅峰。
欢迎加入姚远的远方，');
insert into sw_books values(null,'千金聚散','途半著','xs_5.jpg','等待更新','90',null,666,0,'现实中也有神话翩翩，有人却反其道神话翩翩。
孟匀易，高招频出的职业经理人，小有成就后，玩起了“钱生钱”游戏，一发不可收拾。
雷志森，壮志不休，曾把亏损国营小厂造就成业绩辉煌的上市公司，最终，却迷失了方向。
吸金“高手”的浪漫情怀，为爱动容的悲欢离合。
千金缘何聚了又散？');
insert into sw_books values(null,'无刺','十三不晚著','xs_6.jpg','等待更新','90',null,666,0,'所有的谎和错误就像刺一样会扎痛人心
所以，千万不要说谎，一个谎要用千百个谎来圆
所以，千万别犯错，错了也不要用另外一个错误来遮掩');
insert into sw_books values(null,'特级厨师','甜沫但不甜 著','xs_7.jpg','等待更新','90',null,666,0,'法餐讲究？日料精致？韩食美味？你怕是没有见过真正的中国菜吧！
　　御厨世家传人杨振兴，在振兴家族老字号的同时，通过各种方法努力向全世界宣传中华饮食文化与中华料理。
　　让全世界人民能够真切的享受、体会到中华饮食文化深深的独有的魅力！
　　有百万字作品《北地直播间》，欢迎大家品鉴！');
insert into sw_books values(null,'绝世修真','飞鸟泪著',' xz_0.jpg','等待更新','130',null,666,0,'一名山村里的普通少年叶逍，遭遇山顶海眼爆发，失去了亲人，但却没有就此沉沦，反而带着幸存的村民重建村落，避免乡亲走上强盗之路。他更救了仙门子弟，在其引介之下，拜入修仙大派。 叶逍天赋不凡，修为提升迅速，很快就筑基成功，在修行界占住脚跟，在后起一辈中也有了一定名气。 不久后魔教来袭，整个正道修行界节节败退，他忍辱负重，一面袭扰一面提升实力，最终成为抗魔修士的一面旗帜，开创了一个崭新的时代。');
insert into sw_books values(null,'修仙之灵符天下','然然著','xz_1.jpg','等待更新','130',null,666,0,'山村少年获得一本符书，踏上修仙之路，凭借坚定的心志，凭借符术降伏桂妖，收服女鬼，在除妖除魔中也得到回报，修为突飞猛进，在短短数年里达到普通人几十年都无法达到的高度。最后更是进入一处小世界，获得万年奇珍，建立了自己的势力，成为修仙界首屈一指的大人物。');

insert into sw_books values(null,'琉璃小师妹[重生]','苏心糖','xz_2.jpg','等待更新','130',null,666,0,'于吾而言，最大的幸运莫过于，我回来了，而你还在！
前世的琉璃是浮尘派的大师姐，内能处理派中俗务，教导弟子修炼，在外能打能杀，光耀门楣的全能大师姐。
好不容易熬到了渡劫期大圆满，却在飞升一半时，打了个盹，被黑色雷劫给劈没了。');

insert into sw_books values(null,'白月光归来后','柯小聂 ','xz_3.jpg','等待更新','130',null,666,0,'当惯了白月光替身，一昔正主回归，爬墙的大佬们都奔回去不说，林愫还被迫跟白月光一起做小世界任务，人人都等着看她笑话。
林愫：呵呵，谁菜谁尴尬。');
insert into sw_books values(null,'武狂小道士','王小菜先生 ','xz_4.jpg','等待更新','130',null,666,0,'命冲太岁巧机缘，顽儿入武命入玄。 终返凡尘续凡命，却把狂命惹玄机。 武道成狂念成痴，我命劫生向天问。 人若阻我我人王，天若劫我我破天。 小武无意犯黑帮而入黑拳界，阴差阳错踏上问武之道，只道是华夏真功夫，岂容质疑，胆敢犯者，狂扁之，暗倾心师姐不自知，终踏问仙界，大展武狂真功夫，混迹仙界立王道……我为狂，谁与争锋？
');
insert into sw_books values(null,'暗黑魔主','齐奇 ','xz_5.jpg','等待更新','130',null,666,0,'从小生活在穷困山村的李瑞一心想着要考取功名，走出山村，能够有另外一种不同的生活，可是连年的科考失利让他不得不开始做出其他的打算，首先走出山村，来到外面的世界打拼一下，然后在考虑考取功名的事情，可是，在离开了家乡的路上，不小心遇见了吃人凶手，惊慌失措的李瑞被一只白猫所救，而白猫在最后离开的时候告诉他可以去一个佛光寺的地方去碰碰运气，抱着反正也没有其他地方可去的李瑞来到了佛光寺，却没有想到在这里
');
insert into sw_books values(null,'诛灵之神剑','大胡子 ','xz_6.jpg','等待更新','130',null,666,0,'上古世家少爷血脉不凡，却是不爱修炼，耽于享乐！ 一次偶然机遇得到最强上古神剑，惹来杀身之祸！ 举族被灭，一人独活！ 山脉流离，乞丐偷生，只为活下去，报灭族之仇！ 铸就不屈之志！ 诛灵剑宗，助天灵殿，开启复仇之路！ 焚尽血剑门，终成复仇之志！
');

insert into sw_books values(null,'破天之皇','大饼 ','xz_6.jpg','等待更新','130',null,666,0,'宇文辰是一个修行者，在游荡中寻求机遇，寻求一点点突破的豁口。在机缘巧合下遇到了一个祭坛，这个祭坛很明显有着五个很强势的鬼魄。只要能够炼化这个祭坛，就能够控制这几个魂魄。这样的话他在修行的道路上就能迈出去很好的一步。但努力很久都无法炼化，最后准备放弃离去时，一个叫董倩倩的女子出来了，助他一臂之力，终于将其收服。从此他平凡的生活将不再平凡。
');

insert into sw_books values(null,'破天之皇','大饼 ','xz_7.jpg','等待更新','130',null,666,0,'宇文辰是一个修行者，在游荡中寻求机遇，寻求一点点突破的豁口。在机缘巧合下遇到了一个祭坛，这个祭坛很明显有着五个很强势的鬼魄。只要能够炼化这个祭坛，就能够控制这几个魂魄。这样的话他在修行的道路上就能迈出去很好的一步。但努力很久都无法炼化，最后准备放弃离去时，一个叫董倩倩的女子出来了，助他一臂之力，终于将其收服。从此他平凡的生活将不再平凡。
');
insert into sw_books values(null,'炖枣记（一）','抹茶曲奇 ','xz_8.jpg','等待更新','130',null,666,0,'作为一颗枣子，唐枣的人生一喜一悲：
喜的是—— 遇见了一个牛逼哄哄的师父，吃穿不愁，有人撑腰。
悲的是—— 每天醒来，都在师父的眼里看到了毫不掩饰的食欲……
');

insert into sw_books values(null,'杀戮至尊','蓝子奇 ','xz_10.jpg','等待更新','130',null,666,0,'自古以来，有人的地方就有江湖，有江湖就有战争。 在玄幻世界里，这江湖色彩更为浓烈。 在这里，没有那么多的道义可言； 在这里，也没有什么以理服人的传统至理。 在这里能生存下去的，只有两个字——实力 实力，才是王道。
');

insert into sw_books values(null,'百年孤独 ','加夫列尔·加西亚·马尔克斯','lz_0.jpg','等待更新','120',null,666,0,'《百年孤独》，是哥伦比亚作家加西亚·马尔克斯创作的长篇小说，是其代表作，也是拉丁美洲魔幻现实主义文学的代表作，被誉为“再现拉丁美洲历史社会图景的鸿篇巨著”。
');

insert into sw_books values(null,'如何阅读一本书  ','艾德勒 / 查尔斯·范多伦 著','lz_1.jpg','等待更新','120',null,666,0,
'《如何阅读一本书》是2004年在商务印书馆出版的图书，该书作者是[美] 莫提默·J. 艾德勒、查尔斯·范多伦。该书主要论述指导如何通过阅读增进理解力。');

insert into sw_books values(null,'少有人走的路  ','【美】斯科特·派克 著','lz_2.jpg','等待更新','120',null,666,0,
'《少有人走的路》作者【美】斯科特·派克，是由吉林文史出版社出版的图书。 [1] 
该书讲述了作者如何灵活运用传统心理分析方法去解决人生的冲突和难题
');

insert into sw_books values(null,'少有人走的路  ','【美】斯科特·派克 著','lz_2.jpg','等待更新','120',null,666,0,'《少有人走的路》作者【美】斯科特·派克，是由吉林文史出版社出版的图书。 [1] 
该书讲述了作者如何灵活运用传统心理分析方法去解决人生的冲突和难题
');

insert into sw_books values(null,'追风筝的人','卡勒德·胡赛尼著','lz_3.jpg
','等待更新','120',null,666,0,'《追风筝的人》是美籍阿富汗作家卡勒德·胡赛尼（Khaled Hosseini）的第一部长篇小说，译者李继宏，上海人民出版社于2003年出版，是美国2005年的排名第三的畅销书。
');

insert into sw_books values(null,'万历十五年','黄仁宇著','lz_4.jpg
','等待更新','120',null,666,0,'《万历十五年》从“大历史观”的研究视角出发，选取了明朝万历十五年（1587年）作为考察切入点，运用历史小说的叙事模式和传记体式的章节，通过对关键历史人物悲惨命运的描述，探析了晚明帝国走向衰落的深刻原因。
');

insert into sw_books values(null,'《三体》','刘慈欣著','lz_5.jpg
','等待更新','120',null,666,0,'《三体》是刘慈欣创作的系列长篇科幻小说，由《三体》、《三体Ⅱ·黑暗森林》、《三体Ⅲ·死神永生》组成，第一部于2006年5月起在《科幻世界》杂志上连载，第二部于2008年5月首次出版，第三部则于2010年11月出版。
作品讲述了地球人类文明和三体文明的信息交流、生死搏杀及两个文明在宇宙中的兴衰历程。其第一部经过刘宇昆翻译后获得了第73届雨果奖最佳长篇小说奖
');
insert into sw_books values(null,'失控 ','凯文·凯利','lz_6.jpg
','等待更新','120',null,666,0,'《失控》，全名为《失控：机器、社会与经济的新生物学》（Out of Control: The New Biology of Machines, Social Systems, and the Economic World），作者是《连线》杂志的创始主编凯文·凯利。
');
insert into sw_books values(null,'把时间当作朋友 ','李笑来','lz_7.jpg
','等待更新','120',null,666,0,'为什么你总是说“没有时间了”，勤奋而又懒惰？最节省时间的方式是学习，为什么你砍柴而不肯磨刀？基于过程的记录，为什么迥异于基于结果的记录？一个人对时间的精确感知能力真的能训练得像特异功能？都是平凡人，为什么若干年后彼此已成天壤之别？时间这条船，为什么只送心智成熟的人去往梦想的彼岸？绝大多数的成功根本与智商没有任何关系，所有的失败都与且只与时间限制有关。
');
insert into sw_books values(null,'自控力  ','凯利·麦格尼格尔','lz_8.jpg','等待更新','120',null,666,0,'主要讲述了该书为读者提供了清晰的框架，讲述了什么是自控力，自控力如何发生作用，以及为何自控力如此重要。');
insert into sw_books values(null,'国史大纲  ','钱穆','lz_9.jpg','等待更新','120',null,666,0,'《国史大纲（上下）》是1996年商务印书馆出版的图书，作者是钱穆。本书主旨在发明其相互影响，及先后之演变发展，以作国人如何应付现时代之种种事变作根据之借鉴。
');
insert into sw_books values(null,'追凶诡探  ','鬼家公子','xyy_0.png
','等待更新','110',null,666,0,'诛邪退散悬凶破，恶罪判官宋提刑。
万古不死雪冤屈，我为逝者祭亡魂。
');
insert into sw_books values(null,'他在我身后','文宁','xyy_1.jpg
','等待更新','110',null,666,0,'顾诗雅：阎柏轩是她见过的最另类的刑警，玩世不恭，却又心思缜密，嫉恶如仇，被人戏称“阎王不收”，阎王不收的凶手，他阎柏轩都收。
');
insert into sw_books values(null,'西施计划','朱寒溪','xyy_2.jpg
','等待更新','110',null,666,0,'假扮情侣就一定会变成真情侣么？计划成功就一定会达到目的么？每一个存在的人都有意义么？一本让你意想不到的，有违常规的谍战小说。1941年，太平洋局势恶化，因此美日两国开始了长达九个月的马拉松谈判。美国为了在谈判桌上取得优势，敦促盟友重庆政府寻找证据。为此军统制定了一个名为“西施”的计划，而这计划中，最重要的道具竟是一个延安女特工。
');
insert into sw_books values(null,'搜救队异闻录','大漠孤烟','xyy_3.jpg
','等待更新','110',null,666,0,'在浩瀚无垠的沙海中，上演了一幕幕惊心动魄的场面，勇战传说中已灭绝的大蜥螈、观看食人大毒蝎的世纪决斗、逃离令人毛骨悚然的黄金蚁群、破解让人癫狂失控的魔音鼓……一切都如此神秘、神奇、神圣。通过这本书，你将与新疆沙漠这一千年来所有最最最隐秘的故事和传说逐一相遇。你会发现--“世界没有我们想像的那么简单”。
');
insert into sw_books values(null,'无形之刃','陈研一','xyy_4.jpg
','等待更新','110',null,666,0,'网络热帖《是坏人变老了，还是老人变坏了》下，有人先后匿名上传了两位失德老人的视频后，两位老人相继被害。凶案现场除留下“老人变坏了”的字迹外，没有任何有价值的线索。经多方排查，警方锁定的犯罪嫌疑人“畏罪自杀”。刑侦精英钟宁在案件迷雾中查出幕后主使另有其人，而随着对案件的深入调查，更多令人唏嘘的隐情浮出水面。
');
insert into sw_books values(null,'匪与绅','张佳竹','xyy_5.jpg
','等待更新','110',null,666,0,'马家兄弟的父亲马成扔下两个儿子独自逃亡。为了生计，兄长马洪只身前往省城，终于成为省城首富；弟弟马飞阴差阳错误入土匪窝，统一了山区的所有土匪，成为了罗城历史上最年轻的统治者。抗日战争爆发后，马飞力守罗城死战不降，与此同时，兄长马洪因为感情上的挫折，一气之下也回到了罗城，由此开始了兄弟两人在罗城的传奇
');

insert into sw_books values(null,'不可替代','子杰','xyy_6.jpg
','等待更新','110',null,666,0,'吉米的噩梦是从父亲的葬礼开始的，他的母亲在那一天离奇失踪，种种迹象显示他们的房子受到了监视。这一切似乎都和父亲在二十年前写下的一封奇怪的信有关。
');
insert into sw_books values(null,'狩猎现场','于雷','xyy_7.jpg
','等待更新','110',null,666,0,'某市发生一起有些离奇的失踪案，警校毕业不久的女警官乔风歌阴差阳错接手调查。报案者郭建国的妻子胡秀芳失踪，根据郭建国的描述，这起失踪案有些不可思议，甚至是诡异。乔风歌原本以为是夫妻闹别扭，但仔细调查后，却发现事情另有隐情。而接下来以围绕胡秀芳失踪一案发生了更多离奇时间，甚至相关人士惨遭杀害。
');