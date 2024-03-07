/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xueshengguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xueshengguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xueshengguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xueshengguanlixitong/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/xueshengguanlixitong/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/xueshengguanlixitong/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2022-03-01 21:45:32'),(2,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2022-03-01 21:45:32'),(3,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2022-03-01 21:45:32'),(4,'qingjia_yesno_types','审核结果',1,'未审核',NULL,NULL,'2022-03-01 21:45:32'),(5,'qingjia_yesno_types','审核结果',2,'通过',NULL,NULL,'2022-03-01 21:45:32'),(6,'qingjia_yesno_types','审核结果',3,'拒绝',NULL,NULL,'2022-03-01 21:45:32'),(7,'sex_types','性别',1,'男',NULL,NULL,'2022-03-01 21:45:32'),(8,'sex_types','性别',2,'女',NULL,NULL,'2022-03-01 21:45:32'),(9,'banji_types','班级',1,'班级1',NULL,NULL,'2022-03-01 21:45:32'),(10,'banji_types','班级',2,'班级2',NULL,NULL,'2022-03-01 21:45:32'),(11,'banji_types','班级',3,'班级3',NULL,NULL,'2022-03-01 21:45:32'),(12,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-01 21:45:32'),(13,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-01 21:45:32'),(14,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-01 21:45:32');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 Search111 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `jiaoshi_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`jiaoshi_uuid_number`,`username`,`password`,`jiaoshi_name`,`jiaoshi_photo`,`sex_types`,`jiaoshi_phone`,`jiaoshi_email`,`jiaoshi_delete`,`create_time`) values (1,'164614235170411','a1','123456','教师姓名1','http://localhost:8080/xueshengguanlixitong/upload/jiaoshi1.jpg',1,'17703786901','1@qq.com',1,'2022-03-01 21:45:51'),(2,'164614235170415','a2','123456','教师姓名2','http://localhost:8080/xueshengguanlixitong/upload/jiaoshi2.jpg',1,'17703786902','2@qq.com',1,'2022-03-01 21:45:51'),(3,'164614235170410','a3','123456','教师姓名3','http://localhost:8080/xueshengguanlixitong/upload/jiaoshi3.jpg',1,'17703786903','3@qq.com',1,'2022-03-01 21:45:51');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称 Search111',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `shangke_time` timestamp NULL DEFAULT NULL COMMENT '上课时间',
  `xiake_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型  Search111',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级  Search111',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `kecheng_content` text COMMENT '课程详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_name`,`kecheng_photo`,`shangke_time`,`xiake_time`,`kecheng_types`,`banji_types`,`jiaoshi_id`,`kecheng_content`,`create_time`) values (1,'课程名称1','http://localhost:8080/xueshengguanlixitong/upload/kecheng1.jpg','2022-03-01 21:45:51','2022-03-01 21:45:51',1,3,2,'课程详情1','2022-03-01 21:45:51'),(2,'课程名称2','http://localhost:8080/xueshengguanlixitong/upload/kecheng2.jpg','2022-03-01 21:45:51','2022-03-01 21:45:51',3,1,3,'课程详情2','2022-03-01 21:45:51'),(3,'课程名称3','http://localhost:8080/xueshengguanlixitong/upload/kecheng3.jpg','2022-03-01 21:45:51','2022-03-01 21:45:51',1,2,2,'课程详情3','2022-03-01 21:45:51'),(4,'课程名称4','http://localhost:8080/xueshengguanlixitong/upload/kecheng4.jpg','2022-03-01 21:45:51','2022-03-01 21:45:51',3,3,2,'课程详情4','2022-03-01 21:45:51'),(5,'课程名称5','http://localhost:8080/xueshengguanlixitong/upload/kecheng5.jpg','2022-03-01 21:45:51','2022-03-01 21:45:51',3,3,1,'课程详情5','2022-03-01 21:45:51');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/xueshengguanlixitong/upload/news1.jpg','2022-03-01 21:45:51','公告详情1','2022-03-01 21:45:51'),(2,'公告标题2',1,'http://localhost:8080/xueshengguanlixitong/upload/news2.jpg','2022-03-01 21:45:51','公告详情2','2022-03-01 21:45:51'),(3,'公告标题3',3,'http://localhost:8080/xueshengguanlixitong/upload/news3.jpg','2022-03-01 21:45:51','公告详情3','2022-03-01 21:45:51'),(4,'公告标题4',1,'http://localhost:8080/xueshengguanlixitong/upload/news4.jpg','2022-03-01 21:45:51','公告详情4','2022-03-01 21:45:51'),(5,'公告标题5',2,'http://localhost:8080/xueshengguanlixitong/upload/news5.jpg','2022-03-01 21:45:51','公告详情5','2022-03-01 21:45:51');

/*Table structure for table `qingjia` */

DROP TABLE IF EXISTS `qingjia`;

CREATE TABLE `qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qingjia_time` date DEFAULT NULL COMMENT '请假时间',
  `qingjia_number` int(200) DEFAULT NULL COMMENT '请假时间(天)',
  `qingjia_text` text COMMENT '请假原因',
  `qingjia_yesno_types` int(200) DEFAULT NULL COMMENT '审核结果',
  `qingjia_yesno_text` text COMMENT '审核原由',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='请假信息';

/*Data for the table `qingjia` */

insert  into `qingjia`(`id`,`yonghu_id`,`qingjia_time`,`qingjia_number`,`qingjia_text`,`qingjia_yesno_types`,`qingjia_yesno_text`,`create_time`) values (1,2,'2022-03-01',256,'请假原因1',1,NULL,'2022-03-01 21:45:51'),(2,2,'2022-03-01',117,'请假原因2',1,NULL,'2022-03-01 21:45:51'),(3,1,'2022-03-01',329,'请假原因3',1,NULL,'2022-03-01 21:45:51'),(4,3,'2022-03-01',52,'请假原因4',2,'同意请假','2022-03-01 21:45:51'),(5,3,'2022-03-01',328,'请假原因5',2,'通过','2022-03-01 21:45:51'),(6,1,'2022-03-04',4,'家里有事情',1,'','2022-03-02 09:50:45');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','9c0offgsj03tmmcuo7y1f1mb3ur9ne1s','2022-03-02 09:28:24','2022-03-02 10:54:27'),(2,1,'a1','yonghu','用户','dz091su8xxffqxohagklpu88kawwlzg7','2022-03-02 09:32:42','2022-03-02 10:56:49'),(3,1,'a1','jiaoshi','教师','zhml68iov3p232lfmimukiqm9d2nhq0p','2022-03-02 09:47:29','2022-03-02 10:47:30');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xueshengchengji` */

DROP TABLE IF EXISTS `xueshengchengji`;

CREATE TABLE `xueshengchengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `xueshengchengji_name` varchar(200) DEFAULT NULL COMMENT '科目 Search111',
  `xueshengchengji` int(200) DEFAULT NULL COMMENT '学生成绩',
  `xueshengchengji_content` text COMMENT '成绩详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='学生成绩';

/*Data for the table `xueshengchengji` */

insert  into `xueshengchengji`(`id`,`jiaoshi_id`,`yonghu_id`,`xueshengchengji_name`,`xueshengchengji`,`xueshengchengji_content`,`create_time`) values (1,1,1,'科目1',450,'成绩详情1','2022-03-01 21:45:51'),(2,1,1,'科目2',390,'成绩详情2','2022-03-01 21:45:51'),(3,3,2,'科目3',402,'成绩详情3','2022-03-01 21:45:51'),(4,3,1,'科目4',417,'成绩详情4','2022-03-01 21:45:51'),(5,3,2,'科目5',232,'成绩详情5','2022-03-01 21:45:51');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`banji_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/xueshengguanlixitong/upload/yonghu1.jpg',1,2,'17703786901','410224199610232001','1@qq.com',1,'2022-03-01 21:45:51'),(2,'a2','123456','用户姓名2','http://localhost:8080/xueshengguanlixitong/upload/yonghu2.jpg',2,1,'17703786902','410224199610232002','2@qq.com',1,'2022-03-01 21:45:51'),(3,'a3','123456','用户姓名3','http://localhost:8080/xueshengguanlixitong/upload/yonghu3.jpg',2,2,'17703786903','410224199610232003','3@qq.com',1,'2022-03-01 21:45:51');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
