/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wangshanghuadian
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wangshanghuadian` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wangshanghuadian`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(2,3,'收货人2','17703786902','地址2',1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(3,1,'收货人3','17703786903','地址3',1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(4,2,'收货人4','17703786904','地址4',1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(5,1,'收货人5','17703786905','地址5',1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(6,3,'收货人6','17703786906','地址6',1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(7,2,'收货人7','17703786907','地址7',1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(8,1,'收货人8','17703786908','地址8',1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(9,1,'收货人9','17703786909','地址9',1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(10,1,'收货人10','17703786910','地址10',1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(11,2,'收货人11','17703786911','地址11',1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(12,2,'收货人12','17703786912','地址12',1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(13,3,'收货人13','17703786913','地址13',1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(14,2,'收货人14','17703786914','地址14',1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(15,4,'张三','17788889999','地址111',2,'2023-04-25 13:42:47','2023-04-25 13:42:47','2023-04-25 13:42:47');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `xianhua_id` int(11) DEFAULT NULL COMMENT '鲜花',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,4,'第三个第三个第三个','2023-04-25 13:45:16',NULL,NULL,1,1,'2023-04-25 13:45:17'),(2,4,'呵呵哈哈哈','2023-04-25 13:45:18',NULL,NULL,2,1,'2023-04-25 13:45:18'),(3,4,NULL,NULL,'hgdsfsd轨道射灯','2023-04-25 13:46:26',NULL,2,'2023-04-25 13:46:27');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1固定死发的是郭德纲','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (17,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-25 10:56:41'),(18,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-25 10:56:41'),(19,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2023-04-25 10:56:41'),(20,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2023-04-25 10:56:41'),(21,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2023-04-25 10:56:41'),(22,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-25 10:56:41'),(23,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-25 10:56:41'),(24,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-25 10:56:41'),(25,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-25 10:56:41'),(26,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-25 10:56:41'),(27,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-25 10:56:41'),(28,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-25 10:56:41'),(29,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-25 10:56:41'),(30,'xianhua_types','鲜花类型',1,'鲜花类型1',NULL,NULL,'2023-04-25 10:56:41'),(31,'xianhua_types','鲜花类型',2,'鲜花类型2',NULL,NULL,'2023-04-25 10:56:41'),(32,'xianhua_types','鲜花类型',3,'鲜花类型3',NULL,NULL,'2023-04-25 10:56:41'),(33,'xianhua_types','鲜花类型',4,'鲜花类型4',NULL,NULL,'2023-04-25 10:56:41'),(34,'xianhua_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-25 10:56:41'),(35,'xianhua_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-25 10:56:41'),(36,'xianhua_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-25 10:56:41'),(37,'xianhua_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-25 10:56:42'),(38,'xianhua_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-25 10:56:42'),(39,'xianhua_order_types','订单类型',103,'已发货',NULL,NULL,'2023-04-25 10:56:42'),(40,'xianhua_order_types','订单类型',104,'已收货',NULL,NULL,'2023-04-25 10:56:42'),(41,'xianhua_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-25 10:56:42'),(42,'xianhua_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-25 10:56:42'),(43,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-04-25 10:56:42'),(44,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-04-25 10:56:42'),(45,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-04-25 10:56:42'),(46,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-04-25 10:56:42'),(47,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-04-25 10:56:42'),(48,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-04-25 10:56:42'),(49,'xianhua_types','鲜花类型',5,'鲜花类型5',NULL,'','2023-04-25 13:48:41');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛交流';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',51,1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(2,'帖子标题2',1,NULL,'发布内容2',283,2,1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(3,'帖子标题3',1,NULL,'发布内容3',22,2,1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(4,'帖子标题4',2,NULL,'发布内容4',215,3,1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(5,'帖子标题5',2,NULL,'发布内容5',187,2,1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(6,'帖子标题6',2,NULL,'发布内容6',479,1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(7,'帖子标题7',3,NULL,'发布内容7',81,2,1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(8,'帖子标题8',1,NULL,'发布内容8',332,2,1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(9,'帖子标题9',1,NULL,'发布内容9',154,2,1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(10,'帖子标题10',1,NULL,'发布内容10',154,3,1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(11,'帖子标题11',2,NULL,'发布内容11',221,1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(12,'帖子标题12',2,NULL,'发布内容12',409,1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(13,'帖子标题13',1,NULL,'发布内容13',79,1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(14,'帖子标题14',2,NULL,'发布内容14',274,1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17','2023-04-25 10:58:17'),(15,NULL,4,NULL,'发的个是大纲的三个',14,NULL,2,'2023-04-25 13:45:00',NULL,'2023-04-25 13:45:00'),(16,'帖子111',4,NULL,'第三个十多个是',NULL,3,1,'2023-04-25 13:47:12',NULL,'2023-04-25 13:47:12'),(17,NULL,NULL,1,'地方个第三个第三个',16,NULL,2,'2023-04-25 13:48:50',NULL,'2023-04-25 13:48:50');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-04-25 10:58:17','公告详情1','2023-04-25 10:58:17'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-04-25 10:58:17','公告详情2','2023-04-25 10:58:17'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-04-25 10:58:17','公告详情3','2023-04-25 10:58:17'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-25 10:58:17','公告详情4','2023-04-25 10:58:17'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-25 10:58:17','公告详情5','2023-04-25 10:58:17'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-25 10:58:17','公告详情6','2023-04-25 10:58:17'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-25 10:58:17','公告详情7','2023-04-25 10:58:17'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-25 10:58:17','公告详情8','2023-04-25 10:58:17'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-04-25 10:58:17','公告详情9','2023-04-25 10:58:17'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-04-25 10:58:17','公告详情10','2023-04-25 10:58:17'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-04-25 10:58:17','公告详情11','2023-04-25 10:58:17'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-04-25 10:58:17','公告详情12','2023-04-25 10:58:17'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-04-25 10:58:17','公告详情13','2023-04-25 10:58:17'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-25 10:58:17','<p>公告详情14给第三方孤独颂歌第三个</p>','2023-04-25 10:58:17');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','bjdlq47aio7a8qxy7dt9lpuvg40r8h0h','2023-04-25 13:09:20','2023-04-25 14:25:44'),(2,4,'a5','yonghu','用户','evf1pyansle376n56c2yja458mj7h5ny','2023-04-25 13:42:17','2023-04-25 14:44:34'),(3,1,'admin','users','管理员','jpkh0c6xj94f2ce2veoxrdn0ov61ijvh','2023-04-25 13:46:13','2023-04-25 14:47:48');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-25 10:56:41');

/*Table structure for table `xianhua` */

DROP TABLE IF EXISTS `xianhua`;

CREATE TABLE `xianhua` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xianhua_name` varchar(200) DEFAULT NULL COMMENT '鲜花名称  Search111 ',
  `xianhua_uuid_number` varchar(200) DEFAULT NULL COMMENT '鲜花编号',
  `xianhua_photo` varchar(200) DEFAULT NULL COMMENT '鲜花照片',
  `xianhua_huayu` varchar(200) DEFAULT NULL COMMENT '花语',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `xianhua_types` int(11) DEFAULT NULL COMMENT '鲜花类型 Search111',
  `xianhua_kucun_number` int(11) DEFAULT NULL COMMENT '鲜花数量',
  `xianhua_old_money` decimal(10,2) DEFAULT NULL COMMENT '鲜花原价 ',
  `xianhua_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `xianhua_clicknum` int(11) DEFAULT NULL COMMENT '鲜花热度',
  `xianhua_content` longtext COMMENT '鲜花介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `xianhua_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='鲜花';

/*Data for the table `xianhua` */

insert  into `xianhua`(`id`,`xianhua_name`,`xianhua_uuid_number`,`xianhua_photo`,`xianhua_huayu`,`zan_number`,`cai_number`,`xianhua_types`,`xianhua_kucun_number`,`xianhua_old_money`,`xianhua_new_money`,`xianhua_clicknum`,`xianhua_content`,`shangxia_types`,`xianhua_delete`,`insert_time`,`create_time`) values (1,'鲜花名称1','1682391497580','upload/xianhua1.jpg','花语1',291,447,4,101,'880.77','257.17',64,'鲜花介绍1',1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(2,'鲜花名称2','1682391497594','upload/xianhua2.jpg','花语2',268,235,1,102,'934.36','379.48',259,'鲜花介绍2',1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(3,'鲜花名称3','1682391497534','upload/xianhua3.jpg','花语3',293,361,3,103,'537.21','62.72',49,'鲜花介绍3',1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(4,'鲜花名称4','1682391497605','upload/xianhua4.jpg','花语4',92,464,4,104,'619.36','439.98',333,'鲜花介绍4',1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(5,'鲜花名称5','1682391497574','upload/xianhua5.jpg','花语5',119,333,2,105,'982.34','123.79',392,'鲜花介绍5',1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(6,'鲜花名称6','1682391497546','upload/xianhua6.jpg','花语6',407,182,2,106,'960.10','158.30',486,'鲜花介绍6',1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(7,'鲜花名称7','1682391497599','upload/xianhua7.jpg','花语7',284,411,1,107,'635.98','13.76',351,'鲜花介绍7',1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(8,'鲜花名称8','1682391497613','upload/xianhua8.jpg','花语8',443,106,1,108,'972.90','117.60',55,'鲜花介绍8',1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(9,'鲜花名称9','1682391497594','upload/xianhua9.jpg','花语9',458,254,1,108,'858.53','62.68',417,'鲜花介绍9',1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(10,'鲜花名称10','1682391497614','upload/xianhua10.jpg','花语10',190,489,2,1010,'936.07','394.16',485,'鲜花介绍10',1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(11,'鲜花名称11','1682391497538','upload/xianhua11.jpg','花语11',246,207,4,1011,'876.15','51.80',353,'鲜花介绍11',1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(12,'鲜花名称12','1682391497558','upload/xianhua12.jpg','花语12',445,439,4,1010,'606.14','260.36',142,'鲜花介绍12',1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(13,'鲜花名称13','1682391497615','upload/xianhua13.jpg','花语13',451,162,2,1011,'856.60','419.93',410,'鲜花介绍13',1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(14,'鲜花名称14','1682391497613','upload/xianhua14.jpg','花语14的灌灌灌灌',281,240,1,1012,'541.58','83.04',236,'<p>鲜花介绍14给宿管打多少分</p>',1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17');

/*Table structure for table `xianhua_collection` */

DROP TABLE IF EXISTS `xianhua_collection`;

CREATE TABLE `xianhua_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xianhua_id` int(11) DEFAULT NULL COMMENT '鲜花',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xianhua_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='鲜花收藏';

/*Data for the table `xianhua_collection` */

insert  into `xianhua_collection`(`id`,`xianhua_id`,`yonghu_id`,`xianhua_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(2,2,1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(3,3,1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(4,4,2,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(5,5,2,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(6,6,1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(7,7,2,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(8,8,1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(9,9,3,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(10,10,1,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(11,11,3,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(12,12,2,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(13,13,2,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(14,14,3,1,'2023-04-25 10:58:17','2023-04-25 10:58:17'),(15,13,1,2,'2023-04-25 13:31:53','2023-04-25 13:31:53'),(16,14,4,2,'2023-04-25 13:42:28','2023-04-25 13:42:28');

/*Table structure for table `xianhua_commentback` */

DROP TABLE IF EXISTS `xianhua_commentback`;

CREATE TABLE `xianhua_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xianhua_id` int(11) DEFAULT NULL COMMENT '鲜花',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xianhua_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='鲜花评价';

/*Data for the table `xianhua_commentback` */

insert  into `xianhua_commentback`(`id`,`xianhua_id`,`yonghu_id`,`xianhua_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2023-04-25 10:58:17','回复信息1','2023-04-25 10:58:17','2023-04-25 10:58:17'),(2,2,1,'评价内容2','2023-04-25 10:58:17','回复信息2','2023-04-25 10:58:17','2023-04-25 10:58:17'),(3,3,2,'评价内容3','2023-04-25 10:58:17','回复信息3','2023-04-25 10:58:17','2023-04-25 10:58:17'),(4,4,1,'评价内容4','2023-04-25 10:58:17','回复信息4','2023-04-25 10:58:17','2023-04-25 10:58:17'),(5,5,1,'评价内容5','2023-04-25 10:58:17','回复信息5','2023-04-25 10:58:17','2023-04-25 10:58:17'),(6,6,1,'评价内容6','2023-04-25 10:58:17','回复信息6','2023-04-25 10:58:17','2023-04-25 10:58:17'),(7,7,2,'评价内容7','2023-04-25 10:58:17','回复信息7','2023-04-25 10:58:17','2023-04-25 10:58:17'),(8,8,3,'评价内容8','2023-04-25 10:58:17','回复信息8','2023-04-25 10:58:17','2023-04-25 10:58:17'),(9,9,3,'评价内容9','2023-04-25 10:58:17','回复信息9','2023-04-25 10:58:17','2023-04-25 10:58:17'),(10,10,3,'评价内容10','2023-04-25 10:58:17','回复信息10','2023-04-25 10:58:17','2023-04-25 10:58:17'),(11,11,1,'评价内容11','2023-04-25 10:58:17','回复信息11','2023-04-25 10:58:17','2023-04-25 10:58:17'),(12,12,3,'评价内容12','2023-04-25 10:58:17','回复信息12','2023-04-25 10:58:17','2023-04-25 10:58:17'),(13,13,3,'评价内容13','2023-04-25 10:58:17','回复信息13','2023-04-25 10:58:17','2023-04-25 10:58:17'),(14,14,2,'评价内容14','2023-04-25 10:58:17','回复信息14','2023-04-25 10:58:17','2023-04-25 10:58:17');

/*Table structure for table `xianhua_order` */

DROP TABLE IF EXISTS `xianhua_order`;

CREATE TABLE `xianhua_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xianhua_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `xianhua_id` int(11) DEFAULT NULL COMMENT '鲜花',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `xianhua_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `xianhua_order_courier_name` varchar(200) DEFAULT NULL COMMENT '派送人',
  `xianhua_order_courier_number` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `xianhua_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `xianhua_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='鲜花订单';

/*Data for the table `xianhua_order` */

insert  into `xianhua_order`(`id`,`xianhua_order_uuid_number`,`address_id`,`xianhua_id`,`yonghu_id`,`buy_number`,`xianhua_order_true_price`,`xianhua_order_courier_name`,`xianhua_order_courier_number`,`xianhua_order_types`,`xianhua_order_payment_types`,`insert_time`,`create_time`) values (1,'1682401406771',15,13,4,1,'419.93',NULL,NULL,101,1,'2023-04-25 13:43:27','2023-04-25 13:43:27'),(2,'1682401420520',15,12,4,1,'260.36',NULL,NULL,101,1,'2023-04-25 13:43:41','2023-04-25 13:43:41'),(3,'1682401427400',15,12,4,1,'260.36',NULL,NULL,101,1,'2023-04-25 13:43:47','2023-04-25 13:43:47'),(4,'1682401427400',15,13,4,1,'419.93',NULL,NULL,101,1,'2023-04-25 13:43:47','2023-04-25 13:43:47'),(5,'1682401427400',15,14,4,1,'83.04',NULL,NULL,101,1,'2023-04-25 13:43:47','2023-04-25 13:43:47'),(6,'1682401490629',15,9,4,1,'62.68',NULL,NULL,101,1,'2023-04-25 13:44:51','2023-04-25 13:44:51'),(7,'1682401607176',15,14,4,1,'83.04','张三','17788889999',103,1,'2023-04-25 13:46:47','2023-04-25 13:46:47');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`jinyong_types`,`create_time`) values (1,'a1','123456','1682391497585','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','515.94',1,'2023-04-25 10:58:17'),(2,'a2','123456','1682391497543','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','91.38',1,'2023-04-25 10:58:17'),(3,'a3','123456','1682391497600','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','37.61',2,'2023-04-25 10:58:17'),(4,'a5','123456','1682401330732','张5','17788889999','444222333366669999','upload/1682401380911.jpg',2,'5@qq.com','98409.66',1,'2023-04-25 13:42:11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
