/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.7.17-log : Database - test1
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test1`;

/*Table structure for table `t_apply` */

DROP TABLE IF EXISTS `t_apply`;

CREATE TABLE `t_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL,
  `friend_id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `relative_id` bigint(20) NOT NULL,
  `msg` varchar(255) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL,
  `to_id` bigint(20) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `t_apply` */

insert  into `t_apply`(`id`,`type`,`status`,`user_id`,`friend_id`,`group_id`,`relative_id`,`msg`,`create_time`,`to_id`,`username`,`icon`) values (1,1,1,1,3,0,0,'测试添加好友','2019-09-21 12:05:04',3,'测试用户三','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537781&di=108290dae4164d2c101dc44e1a4875e2&imgtype=jpg&er=1&src=http%3A%2F%2Fpic2.zhimg.com%2Fv2-69d7422e6fdcf68b8c6124ba020a68d9_b.jpg'),(2,1,0,1,4,0,0,'啊哈哈哈','2019-09-21 12:05:24',5,'测试用户5','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537803&di=b01deda8e9fc8b1deabaf303b907b5e2&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201608%2F16%2F20160816100317_freX8.jpeg'),(3,1,0,1,5,0,0,'测试','2019-09-21 12:05:37',4,'王四','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537794&di=389c7f4f24b73414ee0c315a1641cbaf&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F20%2F20171020164428_KXUMZ.thumb.700_0.jpeg'),(4,1,1,1,6,0,0,'9527','2019-09-21 12:05:47',6,'测试6','https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2425988043,2484997674&fm=26&gp=0.jpg');

/*Table structure for table `t_category` */

DROP TABLE IF EXISTS `t_category`;

CREATE TABLE `t_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `t_category` */

insert  into `t_category`(`id`,`user_id`,`name`) values (1,1,'亲人'),(2,1,'朋友'),(3,1,'同事'),(4,1,'同学'),(5,1,'网友');

/*Table structure for table `t_device` */

DROP TABLE IF EXISTS `t_device`;

CREATE TABLE `t_device` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_visitor` tinyint(1) NOT NULL DEFAULT '0',
  `sub_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `msg` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `pro` int(11) NOT NULL DEFAULT '0',
  `is_pwd` tinyint(1) NOT NULL DEFAULT '0',
  `pwd` varchar(255) NOT NULL DEFAULT '',
  `family_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `create_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_device` */

/*Table structure for table `t_family` */

DROP TABLE IF EXISTS `t_family`;

CREATE TABLE `t_family` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `manager` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `pwd` varchar(255) NOT NULL DEFAULT '',
  `sign` varchar(255) NOT NULL DEFAULT '',
  `grad` int(11) NOT NULL DEFAULT '0',
  `create_time` date NOT NULL,
  `login_time` datetime NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_family` */

insert  into `t_family`(`id`,`manager`,`name`,`icon`,`pwd`,`sign`,`grad`,`create_time`,`login_time`,`is_read`) values (1,1,'宋志文','/logo','78901214','滚吧，屎球球',100,'2019-09-07','2019-09-07 16:48:33',1);

/*Table structure for table `t_family_t_devices` */

DROP TABLE IF EXISTS `t_family_t_devices`;

CREATE TABLE `t_family_t_devices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `t_family_id` bigint(20) NOT NULL,
  `t_device_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_family_t_devices` */

/*Table structure for table `t_family_tag` */

DROP TABLE IF EXISTS `t_family_tag`;

CREATE TABLE `t_family_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `msg` varchar(255) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL,
  `t_family_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_family_tag` */

/*Table structure for table `t_group` */

DROP TABLE IF EXISTS `t_group`;

CREATE TABLE `t_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `sign` varchar(255) NOT NULL DEFAULT '',
  `msg` varchar(255) NOT NULL DEFAULT '',
  `pwd` varchar(255) NOT NULL DEFAULT '',
  `city` int(11) NOT NULL DEFAULT '0',
  `is_city` tinyint(1) NOT NULL DEFAULT '0',
  `administers` varchar(255) NOT NULL DEFAULT '',
  `belong` bigint(20) NOT NULL DEFAULT '0',
  `max_count` int(11) NOT NULL DEFAULT '0',
  `is_pay` tinyint(1) NOT NULL DEFAULT '0',
  `pay_num` int(11) NOT NULL DEFAULT '0',
  `pri` int(11) NOT NULL DEFAULT '0',
  `grad` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_group` */

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `user_name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `tel` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `id_card` varchar(255) NOT NULL DEFAULT '',
  `pwd` varchar(255) NOT NULL DEFAULT '',
  `sign` varchar(255) NOT NULL DEFAULT '',
  `city` int(11) NOT NULL DEFAULT '0',
  `path` datetime NOT NULL,
  `vip` datetime NOT NULL,
  `vip_grad` int(11) NOT NULL DEFAULT '0',
  `grad` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `login_time` datetime NOT NULL,
  `ban_time` datetime NOT NULL,
  `family_id` bigint(20) NOT NULL,
  `birth` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`name`,`user_name`,`icon`,`tel`,`email`,`id_card`,`pwd`,`sign`,`city`,`path`,`vip`,`vip_grad`,`grad`,`create_time`,`login_time`,`ban_time`,`family_id`,`birth`) values (1,'宋志文','管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','18588263531','78901214','95274','78901214','哈哈哈',1,'2019-09-07 00:00:00','2019-09-07 08:27:06',1,1,'2019-09-07 08:27:06','2019-09-07 08:27:06','3019-09-07 08:27:06',1,'2019-09-17 17:34:12'),(2,'张二','测试用户2','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg','001','78as0d15','7894564','123456','今天心情不错！',1,'2019-09-07 00:00:00','2019-09-07 08:27:06',1,1,'2019-09-07 08:27:06','2019-09-07 08:27:06','3019-09-07 08:27:06',1,'0000-00-00 00:00:00'),(3,'刘三','测试用户三','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537781&di=108290dae4164d2c101dc44e1a4875e2&imgtype=jpg&er=1&src=http%3A%2F%2Fpic2.zhimg.com%2Fv2-69d7422e6fdcf68b8c6124ba020a68d9_b.jpg','002','f3g4664`','ef46ds4f3','123456','天天好心情',1,'2019-09-07 00:00:00','2019-09-07 08:27:06',1,1,'2019-09-07 08:27:06','2019-09-07 08:27:06','3019-09-07 08:27:06',1,'0000-00-00 00:00:00'),(4,'王四','测试用户4','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537794&di=389c7f4f24b73414ee0c315a1641cbaf&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F20%2F20171020164428_KXUMZ.thumb.700_0.jpeg','003','fjswlej','fdmls','123456','速度佛普通攻击 ',1,'2019-09-07 00:00:00','2019-09-07 08:27:06',1,1,'2019-09-07 08:27:06','2019-09-07 08:27:06','3019-09-07 08:27:06',1,'0000-00-00 00:00:00'),(5,'陈五','测试用户5','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537803&di=b01deda8e9fc8b1deabaf303b907b5e2&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201608%2F16%2F20160816100317_freX8.jpeg','004','ejwsodf4345','dsfm ','123456','啊说得好佛我去饿哦',1,'2019-09-07 00:00:00','2019-09-07 08:27:06',1,1,'2019-09-07 08:27:06','2019-09-07 08:27:06','3019-09-07 08:27:06',1,'0000-00-00 00:00:00'),(6,'黑六','测试6','https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2425988043,2484997674&fm=26&gp=0.jpg','005','fdgjvlj ','ewrfowej    ','123456','速度nhk发货',0,'2019-09-07 00:00:00','2019-09-07 08:27:06',0,0,'2019-09-07 08:27:06','2019-09-07 08:27:06','3019-09-07 08:27:06',1,'0000-00-00 00:00:00'),(7,'哈七','测试用户七','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537826&di=530dbaf0c98ca885dd9107c596dffa8c&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F03%2F20171003081804_HWhj3.jpeg','006','fehow','dfasd fo ','123456','额和肉和',0,'2019-09-07 00:00:00','2019-09-07 08:27:06',0,0,'2019-09-07 08:27:06','2019-09-07 08:27:06','3019-09-07 08:27:06',1,'0000-00-00 00:00:00'),(8,'奴8 ','测试八','https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3349864628,2464822885&fm=26&gp=0.jpg','007','rerglj','df  loewrjf ','123456','热风进攻而 ',0,'2019-09-07 00:00:00','2019-09-07 08:27:06',0,0,'2019-09-07 08:27:06','2019-09-07 08:27:06','3019-09-07 08:27:06',1,'0000-00-00 00:00:00');

/*Table structure for table `t_user_list` */

DROP TABLE IF EXISTS `t_user_list`;

CREATE TABLE `t_user_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `msg` varchar(255) NOT NULL DEFAULT '',
  `belong` bigint(20) NOT NULL DEFAULT '0',
  `friend` bigint(20) NOT NULL DEFAULT '0',
  `friend_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `t_user_list` */

insert  into `t_user_list`(`id`,`category_id`,`sort`,`msg`,`belong`,`friend`,`friend_id`) values (1,1,1,'狗子',1,2,2),(2,1,1,'八戒',1,3,3),(3,2,1,'而我',1,4,4),(4,3,1,'去额外',1,5,5);

/*Table structure for table `t_user_t_devices` */

DROP TABLE IF EXISTS `t_user_t_devices`;

CREATE TABLE `t_user_t_devices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `t_user_id` bigint(20) NOT NULL,
  `t_device_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user_t_devices` */

/*Table structure for table `t_user_t_groups` */

DROP TABLE IF EXISTS `t_user_t_groups`;

CREATE TABLE `t_user_t_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `t_user_id` bigint(20) NOT NULL,
  `t_group_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user_t_groups` */

/*Table structure for table `t_visitor` */

DROP TABLE IF EXISTS `t_visitor`;

CREATE TABLE `t_visitor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `visitor_id` bigint(20) NOT NULL,
  `family_id` bigint(20) NOT NULL,
  `msg` varchar(255) NOT NULL DEFAULT '',
  `start_time` datetime NOT NULL,
  `endt_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_visitor` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
