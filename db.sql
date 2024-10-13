/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xueshengwangshangxuanke
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xueshengwangshangxuanke` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xueshengwangshangxuanke`;

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chengji_name` varchar(200) DEFAULT NULL COMMENT '成绩标题 Search111',
  `chengji_types` int(11) DEFAULT NULL COMMENT '成绩类型  Search111',
  `xuenfen_number` int(11) DEFAULT NULL COMMENT '成绩',
  `chengji_content` text COMMENT '备注',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `chengji_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='学生成绩';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`chengji_name`,`chengji_types`,`xuenfen_number`,`chengji_content`,`yonghu_id`,`chengji_delete`,`create_time`) values (1,'成绩标题1',1,492,'备注1',3,1,'2023-03-17 14:00:45'),(2,'成绩标题2',2,77,'备注2',1,1,'2023-03-17 14:00:45'),(3,'成绩标题3',2,191,'备注3',2,1,'2023-03-17 14:00:45'),(4,'成绩标题4',1,383,'备注4',3,1,'2023-03-17 14:00:45'),(5,'成绩标题5',3,350,'备注5',1,1,'2023-03-17 14:00:45'),(6,'成绩标题6',2,451,'备注6',1,1,'2023-03-17 14:00:45'),(7,'成绩标题7',1,193,'备注7',3,1,'2023-03-17 14:00:45'),(8,'成绩标题8',2,103,'备注8',3,1,'2023-03-17 14:00:45'),(9,'成绩标题9',2,476,'备注9',2,1,'2023-03-17 14:00:45'),(10,'成绩标题10',1,490,'备注10',3,1,'2023-03-17 14:00:45'),(11,'成绩标题11',3,415,'备注11',2,1,'2023-03-17 14:00:45'),(12,'成绩标题12',2,271,'备注12',1,1,'2023-03-17 14:00:45'),(13,'成绩标题13',2,300,'备注13',2,1,'2023-03-17 14:00:45'),(14,'成绩标题14',2,322,'备注14',2,1,'2023-03-17 14:00:45');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2023-03-17 13:57:39'),(2,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2023-03-17 13:57:39'),(3,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2023-03-17 13:57:39'),(4,'xueqi_types','学期',1,'学期1',NULL,NULL,'2023-03-17 13:57:39'),(5,'xueqi_types','学期',2,'学期2',NULL,NULL,'2023-03-17 13:57:39'),(6,'xingqi_types','周次',1,'周次1',NULL,NULL,'2023-03-17 13:57:39'),(7,'xingqi_types','周次',2,'周次2',NULL,NULL,'2023-03-17 13:57:39'),(8,'jieke_types','第几节',1,'第1节',NULL,NULL,'2023-03-17 13:57:39'),(9,'jieke_types','第几节',2,'第2节',NULL,NULL,'2023-03-17 13:57:39'),(10,'chengji_types','成绩类型',1,'平时成绩',NULL,NULL,'2023-03-17 13:57:39'),(11,'chengji_types','成绩类型',2,'期中考试成绩',NULL,NULL,'2023-03-17 13:57:39'),(12,'chengji_types','成绩类型',3,'期末考试成绩',NULL,NULL,'2023-03-17 13:57:39'),(13,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-17 13:57:39'),(14,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-17 13:57:39'),(15,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-17 13:57:39'),(16,'sex_types','性别',1,'男',NULL,NULL,'2023-03-17 13:57:39'),(17,'sex_types','性别',2,'女',NULL,NULL,'2023-03-17 13:57:39'),(18,'banji_types','班级',1,'班级1',NULL,NULL,'2023-03-17 13:57:39'),(19,'banji_types','班级',2,'班级2',NULL,NULL,'2023-03-17 13:57:39'),(20,'banji_types','班级',3,'班级3',NULL,NULL,'2023-03-17 13:57:39');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111 ',
  `jiaoshi_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`jiaoshi_uuid_number`,`username`,`password`,`jiaoshi_name`,`jiaoshi_photo`,`sex_types`,`jiaoshi_phone`,`jiaoshi_email`,`banji_types`,`jiaoshi_delete`,`create_time`) values (1,'1679032845783','a1','123456','教师姓名1','upload/jiaoshi1.jpg',1,'17703786901','1@qq.com',2,1,'2023-03-17 14:00:45'),(2,'1679032845828','a2','123456','教师姓名2','upload/jiaoshi2.jpg',2,'17703786902','2@qq.com',3,1,'2023-03-17 14:00:45'),(3,'1679032845805','a3','123456','教师姓名3','upload/jiaoshi3.jpg',1,'17703786903','3@qq.com',1,1,'2023-03-17 14:00:45');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '课程编号 ',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称 Search111',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型  Search111',
  `xuenfen_number` int(11) DEFAULT NULL COMMENT '学分',
  `kecheng_content` text COMMENT '课程详情',
  `kecheng_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_uuid_number`,`kecheng_name`,`kecheng_types`,`xuenfen_number`,`kecheng_content`,`kecheng_delete`,`create_time`) values (1,'1679032845745','课程名称1',2,446,'课程详情1',1,'2023-03-17 14:00:45'),(2,'1679032845787','课程名称2',1,206,'课程详情2',1,'2023-03-17 14:00:45'),(3,'1679032845786','课程名称3',3,338,'课程详情3',1,'2023-03-17 14:00:45'),(4,'1679032845751','课程名称4',3,92,'课程详情4',1,'2023-03-17 14:00:45'),(5,'1679032845773','课程名称5',1,317,'课程详情5',1,'2023-03-17 14:00:45'),(6,'1679032845832','课程名称6',3,147,'课程详情6',1,'2023-03-17 14:00:45'),(7,'1679032845749','课程名称7',2,308,'课程详情7',1,'2023-03-17 14:00:45'),(8,'1679032845792','课程名称8',3,341,'课程详情8',1,'2023-03-17 14:00:45'),(9,'1679032845814','课程名称9',2,204,'课程详情9',1,'2023-03-17 14:00:45'),(10,'1679032845738','课程名称10',3,292,'课程详情10',1,'2023-03-17 14:00:45'),(11,'1679032845760','课程名称11',2,82,'课程详情11',1,'2023-03-17 14:00:45'),(12,'1679032845786','课程名称12',1,63,'课程详情12',1,'2023-03-17 14:00:45'),(13,'1679032845750','课程名称13',1,9,'课程详情13',1,'2023-03-17 14:00:45'),(14,'1679032845766','课程名称14',2,481,'课程详情14',1,'2023-03-17 14:00:45');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'upload/news1.jpg','2023-03-17 14:00:45','公告详情1','2023-03-17 14:00:45'),(2,'公告标题2',3,'upload/news2.jpg','2023-03-17 14:00:45','公告详情2','2023-03-17 14:00:45'),(3,'公告标题3',2,'upload/news3.jpg','2023-03-17 14:00:45','公告详情3','2023-03-17 14:00:45'),(4,'公告标题4',3,'upload/news4.jpg','2023-03-17 14:00:45','公告详情4','2023-03-17 14:00:45'),(5,'公告标题5',1,'upload/news5.jpg','2023-03-17 14:00:45','公告详情5','2023-03-17 14:00:45'),(6,'公告标题6',2,'upload/news6.jpg','2023-03-17 14:00:45','公告详情6','2023-03-17 14:00:45'),(7,'公告标题7',1,'upload/news7.jpg','2023-03-17 14:00:45','公告详情7','2023-03-17 14:00:45'),(8,'公告标题8',2,'upload/news8.jpg','2023-03-17 14:00:45','公告详情8','2023-03-17 14:00:45'),(9,'公告标题9',3,'upload/news9.jpg','2023-03-17 14:00:45','公告详情9','2023-03-17 14:00:45'),(10,'公告标题10',3,'upload/news10.jpg','2023-03-17 14:00:45','公告详情10','2023-03-17 14:00:45'),(11,'公告标题11',2,'upload/news11.jpg','2023-03-17 14:00:45','公告详情11','2023-03-17 14:00:45'),(12,'公告标题12',1,'upload/news12.jpg','2023-03-17 14:00:45','公告详情12','2023-03-17 14:00:45'),(13,'公告标题13',2,'upload/news13.jpg','2023-03-17 14:00:45','公告详情13','2023-03-17 14:00:45'),(14,'公告标题14',1,'upload/news14.jpg','2023-03-17 14:00:45','公告详情14','2023-03-17 14:00:45');

/*Table structure for table `paike` */

DROP TABLE IF EXISTS `paike`;

CREATE TABLE `paike` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `shangke_time` timestamp NULL DEFAULT NULL COMMENT '上课时间',
  `xiake_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `jieke_types` int(11) DEFAULT NULL COMMENT '第几节  Search111',
  `xueqi_types` int(11) DEFAULT NULL COMMENT '学期 Search111',
  `xingqi_types` int(11) DEFAULT NULL COMMENT '周次 Search111',
  `paike_address` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `paike_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='排课信息';

/*Data for the table `paike` */

insert  into `paike`(`id`,`kecheng_id`,`shangke_time`,`xiake_time`,`jieke_types`,`xueqi_types`,`xingqi_types`,`paike_address`,`jiaoshi_id`,`paike_delete`,`create_time`) values (1,1,'2023-03-17 14:00:45','2023-03-17 14:00:45',1,1,1,'上课地点1',3,1,'2023-03-17 14:00:45'),(2,2,'2023-03-17 14:00:45','2023-03-17 14:00:45',2,1,1,'上课地点2',1,1,'2023-03-17 14:00:45'),(3,3,'2023-03-17 14:00:45','2023-03-17 14:00:45',1,2,1,'上课地点3',2,1,'2023-03-17 14:00:45'),(4,4,'2023-03-17 14:00:45','2023-03-17 14:00:45',1,2,1,'上课地点4',3,1,'2023-03-17 14:00:45'),(5,5,'2023-03-17 14:00:45','2023-03-17 14:00:45',1,2,1,'上课地点5',3,1,'2023-03-17 14:00:45'),(6,6,'2023-03-17 14:00:45','2023-03-17 14:00:45',2,1,1,'上课地点6',2,1,'2023-03-17 14:00:45'),(7,7,'2023-03-17 14:00:45','2023-03-17 14:00:45',1,1,1,'上课地点7',1,1,'2023-03-17 14:00:45'),(8,8,'2023-03-17 14:00:45','2023-03-17 14:00:45',1,2,2,'上课地点8',1,1,'2023-03-17 14:00:45'),(9,9,'2023-03-17 14:00:45','2023-03-17 14:00:45',1,2,1,'上课地点9',3,1,'2023-03-17 14:00:45'),(10,10,'2023-03-17 14:00:45','2023-03-17 14:00:45',1,1,2,'上课地点10',1,1,'2023-03-17 14:00:45'),(11,11,'2023-03-17 14:00:45','2023-03-17 14:00:45',1,1,2,'上课地点11',3,1,'2023-03-17 14:00:45'),(12,12,'2023-03-17 14:00:45','2023-03-17 14:00:45',1,1,1,'上课地点12',2,1,'2023-03-17 14:00:45'),(13,13,'2023-03-17 14:00:45','2023-03-17 14:00:45',2,2,2,'上课地点13',1,1,'2023-03-17 14:00:45'),(14,14,'2023-03-17 14:00:45','2023-03-17 14:00:45',2,2,2,'上课地点14',2,1,'2023-03-17 14:00:45');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','lit5m7eeh4y8i8cofqnp5e8gb94iovs3','2023-03-17 14:08:59','2023-03-17 15:44:22'),(2,1,'a1','yonghu','学生','jnxvwwlrkq6hwsrjeoic0ynjq664opz5','2023-03-17 14:10:05','2023-03-17 15:35:32'),(3,1,'a1','jiaoshi','教师','e52iw7vr3ey8omzwwpm576n0rbbcpri1','2023-03-17 14:36:11','2023-03-17 15:36:12');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-17 13:57:39');

/*Table structure for table `xuanke` */

DROP TABLE IF EXISTS `xuanke`;

CREATE TABLE `xuanke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '选课时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='选课信息';

/*Data for the table `xuanke` */

insert  into `xuanke`(`id`,`kecheng_id`,`yonghu_id`,`insert_time`,`create_time`) values (16,14,1,'2023-03-17 14:35:36','2023-03-17 14:35:36'),(17,7,1,'2023-03-17 14:35:40','2023-03-17 14:35:40'),(18,5,1,'2023-03-17 14:35:44','2023-03-17 14:35:44');

/*Table structure for table `xuankexianzhi` */

DROP TABLE IF EXISTS `xuankexianzhi`;

CREATE TABLE `xuankexianzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuankexianzhi_number` int(11) DEFAULT NULL COMMENT '选课数量',
  `kaishi_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `jieshu_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='选课限制';

/*Data for the table `xuankexianzhi` */

insert  into `xuankexianzhi`(`id`,`xuankexianzhi_number`,`kaishi_time`,`jieshu_time`,`create_time`) values (1,3,'2023-03-16 14:00:45','2023-03-18 14:00:45','2023-03-17 14:00:45');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '学号 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生名称 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`yonghu_uuid_number`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`sex_types`,`banji_types`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'1679032845849','a1','123456','学生名称1','upload/yonghu1.jpg','17703786901','410224199010102001',1,3,'1@qq.com',1,'2023-03-17 14:00:45'),(2,'1679032845839','a2','123456','学生名称2','upload/yonghu2.jpg','17703786902','410224199010102002',2,1,'2@qq.com',1,'2023-03-17 14:00:45'),(3,'1679032845814','a3','123456','学生名称3','upload/yonghu3.jpg','17703786903','410224199010102003',2,1,'3@qq.com',1,'2023-03-17 14:00:45');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
