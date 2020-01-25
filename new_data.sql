/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 8.0.17 : Database - test1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test1` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `test1`;

/*Table structure for table `t_apply` */

DROP TABLE IF EXISTS `t_apply`;

CREATE TABLE `t_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL,
  `msg` varchar(255) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL,
  `to_id` bigint(20) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `from_category_id` bigint(20) NOT NULL DEFAULT '0',
  `to_category_id` bigint(20) NOT NULL DEFAULT '0',
  `from_username` varchar(255) NOT NULL DEFAULT '',
  `to_username` varchar(255) NOT NULL DEFAULT '',
  `from_icon` varchar(255) NOT NULL DEFAULT '',
  `to_icon` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `t_apply` */

insert  into `t_apply`(`id`,`type`,`status`,`user_id`,`msg`,`create_time`,`to_id`,`username`,`icon`,`from_category_id`,`to_category_id`,`from_username`,`to_username`,`from_icon`,`to_icon`) values (1,1,1,1,'测试添加好友','2019-09-21 12:05:04',3,'测试用户三','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537781&di=108290dae4164d2c101dc44e1a4875e2&imgtype=jpg&er=1&src=http%3A%2F%2Fpic2.zhimg.com%2Fv2-69d7422e6fdcf68b8c6124ba020a68d9_b.jpg',0,0,'测试用户三','去儿童缺他','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537781&di=108290dae4164d2c101dc44e1a4875e2&imgtype=jpg&er=1&src=http%3A%2F%2Fpic2.zhimg.com%2Fv2-69d7422e6fdcf68b8c6124ba020a68d9_b.jpg','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537781&di=108290dae4164d2c101dc44e1a4875e2&imgtype=jpg&er=1&src=http%3A%2F%2Fpic2.zhimg.com%2Fv2-69d7422e6fdcf68b8c6124ba020a68d9_b.jpg'),(2,1,0,1,'我是宋志文','2019-09-21 12:05:24',5,'测试用户5','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537803&di=b01deda8e9fc8b1deabaf303b907b5e2&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201608%2F16%2F20160816100317_freX8.jpeg',1,0,'管理员账户','测试用户5','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537803&di=b01deda8e9fc8b1deabaf303b907b5e2&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201608%2F16%2F20160816100317_freX8.jpeg'),(3,1,2,1,'测试','2019-09-21 12:05:37',4,'王四','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537794&di=389c7f4f24b73414ee0c315a1641cbaf&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F20%2F20171020164428_KXUMZ.thumb.700_0.jpeg',0,0,'王四','王四','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537794&di=389c7f4f24b73414ee0c315a1641cbaf&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F20%2F20171020164428_KXUMZ.thumb.700_0.jpeg','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537794&di=389c7f4f24b73414ee0c315a1641cbaf&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F20%2F20171020164428_KXUMZ.thumb.700_0.jpeg'),(4,1,1,1,'9527','2019-09-21 12:05:47',6,'测试6','https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2425988043,2484997674&fm=26&gp=0.jpg',0,0,'测试6',' 请问','https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2425988043,2484997674&fm=26&gp=0.jpg','https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2425988043,2484997674&fm=26&gp=0.jpg'),(16,1,0,1,'我是宋志文','2019-10-18 03:54:46',7,'','',1,0,'管理员账户','测试用户七','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537826&di=530dbaf0c98ca885dd9107c596dffa8c&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F03%2F20171003081804_HWhj3.jpeg'),(17,1,0,2,'我是张二','2019-10-18 04:13:49',1,'','',1,0,'测试用户2','管理员账户','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg');

/*Table structure for table `t_article` */

DROP TABLE IF EXISTS `t_article`;

CREATE TABLE `t_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `belong_id` bigint(20) NOT NULL DEFAULT '0',
  `imgs` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `video` varchar(255) NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_count` int(11) NOT NULL DEFAULT '0',
  `like_count` int(11) NOT NULL DEFAULT '0',
  `is_invalid` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `audio` varchar(255) NOT NULL DEFAULT '',
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

/*Data for the table `t_article` */

insert  into `t_article`(`id`,`belong_id`,`imgs`,`title`,`video`,`content`,`comment_count`,`like_count`,`is_invalid`,`create_time`,`icon`,`username`,`audio`,`category`) values (19,2,'[]','','','啊哈哈哈哈哈哈哈！',0,0,0,'2019-11-29 14:58:42','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg','闪电侠','',0),(41,2,'[\"http://qiniu.jokor.vip/a_1577968079990\",\"http://qiniu.jokor.vip/a_21577968080871\",\"http://qiniu.jokor.vip/a_21577968081044\",\"http://qiniu.jokor.vip/a_21577968081259\",\"http://qiniu.jokor.vip/a_21577968081444\",\"http://qiniu.jokor.vip/a_21577968081614\",\"http://qiniu.jokor.vip/a_21577968081778\",\"http://qiniu.jokor.vip/a_21577968081950\",\"http://qiniu.jokor.vip/a_21577968082200\",\"http://qiniu.jokor.vip/a_21577968082468\",\"http://qiniu.jokor.vip/a_21577968082714\",\"http://qiniu.jokor.vip/a_21577968083020\",\"http://qiniu.jokor.vip/a_21577968083403\"]','','','测试数据',0,0,0,'2020-01-02 20:28:04','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg','闪电侠','',0),(43,1,'[\"http://qiniu.jokor.vip/a_1578071324191\",\"http://qiniu.jokor.vip/a_11578071325081\",\"http://qiniu.jokor.vip/a_11578071325285\",\"http://qiniu.jokor.vip/a_11578071325466\",\"http://qiniu.jokor.vip/a_11578071325627\"]','','','测试数据',0,0,0,'2020-01-04 01:08:47','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(44,1,'[]','','','测试0',0,0,0,'2020-01-04 01:45:55','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(45,1,'[]','','','测试数据',0,0,0,'2020-01-04 01:53:11','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(46,1,'[]','','','测试',0,0,0,'2020-01-04 01:59:56','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(47,1,'[]','','','测试',0,0,0,'2020-01-04 02:00:22','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(48,1,'[]','','','嗯嗯，今天是个好日子',0,0,0,'2020-01-04 02:01:02','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(49,1,'[]','','','哈哈啊哈哈',0,0,0,'2020-01-04 02:02:29','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(50,1,'[]','','','哈哈',0,0,0,'2020-01-04 02:02:41','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(51,1,'[]','','','哈哈',0,0,0,'2020-01-04 02:13:37','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(52,1,'[]','','','哼！',0,0,0,'2020-01-04 02:22:05','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(53,1,'[]','','','哈！',0,0,0,'2020-01-04 02:22:37','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(54,1,'[]','','','？？？',0,0,0,'2020-01-04 02:26:13','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(55,1,'[]','','','改了',0,0,0,'2020-01-04 02:28:45','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(56,1,'[]','','','恒',0,0,0,'2020-01-04 02:29:50','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(57,1,'[]','','','哈哈哈哈',0,0,0,'2020-01-04 02:31:25','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(58,1,'[]','','','嗯嗯',0,0,0,'2020-01-04 02:35:33','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(59,1,'[]','','','测试发布帖子！',0,0,0,'2020-01-04 02:38:07','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(60,1,'[]','','','今天来吃鸡啊，哈哈哈哈！',0,0,0,'2020-01-04 03:33:12','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(61,1,'[]','','','测试',0,0,0,'2020-01-04 04:34:29','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','管理员账户','',0),(68,2,'[\"http://qiniu.jokor.vip/a_1579244902104\",\"http://qiniu.jokor.vip/a_21579244904943\",\"http://qiniu.jokor.vip/a_21579244907195\"]','','','测试数据',0,0,0,'2020-01-17 15:08:28','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg','闪电侠','',0);

/*Table structure for table `t_c_article` */

DROP TABLE IF EXISTS `t_c_article`;

CREATE TABLE `t_c_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) NOT NULL DEFAULT '0',
  `belong_id` bigint(20) NOT NULL DEFAULT '0',
  `circle_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `t_c_article` */

insert  into `t_c_article`(`id`,`article_id`,`belong_id`,`circle_id`) values (1,12,0,1),(2,13,0,1),(3,14,0,1),(4,15,0,1),(5,17,0,1),(6,18,0,1),(7,47,0,3),(8,48,0,3),(9,48,0,7),(10,49,0,3),(11,49,0,7),(12,49,0,9),(13,49,0,12),(14,50,0,1),(15,51,0,3),(16,52,0,3),(17,53,0,3),(18,54,0,3),(19,0,0,-1),(20,0,0,-1),(21,55,0,3),(22,56,0,-1),(23,57,0,-1),(24,58,0,-1),(25,59,0,3),(26,60,0,3),(27,60,0,7),(28,60,0,9),(29,60,0,12),(30,60,0,10),(31,61,0,3),(32,62,0,3),(33,63,0,3),(34,64,0,3);

/*Table structure for table `t_c_class_article` */

DROP TABLE IF EXISTS `t_c_class_article`;

CREATE TABLE `t_c_class_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) NOT NULL DEFAULT '0',
  `circle_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_c_class_article` */

/*Table structure for table `t_c_grad` */

DROP TABLE IF EXISTS `t_c_grad`;

CREATE TABLE `t_c_grad` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `circle_id` bigint(20) NOT NULL DEFAULT '0',
  `gradn_name` varchar(255) NOT NULL DEFAULT '',
  `grad_count` tinyint(4) NOT NULL DEFAULT '0',
  `is_manager` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_c_grad` */

insert  into `t_c_grad`(`id`,`circle_id`,`gradn_name`,`grad_count`,`is_manager`) values (1,1,'1级',0,0),(2,1,'2级',1,0),(3,1,'3级',2,1);

/*Table structure for table `t_c_manager` */

DROP TABLE IF EXISTS `t_c_manager`;

CREATE TABLE `t_c_manager` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `circle_id` bigint(20) NOT NULL DEFAULT '0',
  `manager_grad` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `user_icon` varchar(255) NOT NULL DEFAULT '',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `view_count` bigint(20) NOT NULL DEFAULT '0',
  `sign_time` datetime NOT NULL,
  `sign_count` bigint(20) NOT NULL DEFAULT '0',
  `sign_alian` bigint(20) NOT NULL DEFAULT '0',
  `reply_count` bigint(20) NOT NULL DEFAULT '0',
  `reply_len` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_c_manager` */

/*Table structure for table `t_c_user` */

DROP TABLE IF EXISTS `t_c_user`;

CREATE TABLE `t_c_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `user_icon` varchar(255) NOT NULL DEFAULT '',
  `circle_id` bigint(20) NOT NULL DEFAULT '0',
  `circle_grad` tinyint(4) NOT NULL DEFAULT '0',
  `sign_time` datetime NOT NULL,
  `sign_count` bigint(20) NOT NULL DEFAULT '0',
  `sign_alian` bigint(20) NOT NULL DEFAULT '0',
  `reply_count` bigint(20) NOT NULL DEFAULT '0',
  `reply_len` bigint(20) NOT NULL DEFAULT '0',
  `view_count` bigint(20) NOT NULL DEFAULT '0',
  `get_data_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `t_c_user` */

insert  into `t_c_user`(`id`,`user_id`,`username`,`user_icon`,`circle_id`,`circle_grad`,`sign_time`,`sign_count`,`sign_alian`,`reply_count`,`reply_len`,`view_count`,`get_data_time`) values (1,1,'宋志文','',1,3,'2020-01-04 01:23:06',185,1,188,86531,16523,'2019-12-24 20:58:24'),(2,2,'宋志文','',1,3,'2020-01-02 11:20:09',185,2,188,86531,16523,'2019-12-24 20:58:24'),(3,2,'宋志文','',3,3,'2020-01-01 17:24:49',184,1,188,86531,16523,'2019-12-24 20:58:24'),(4,2,'宋志文','',2,3,'2020-01-01 17:24:51',184,1,188,86531,16523,'2019-12-24 20:58:24'),(5,2,'','',6,0,'2020-01-02 11:20:20',2,2,0,0,0,'2019-12-31 08:42:35'),(6,2,'','',7,0,'2020-01-02 11:21:45',2,2,0,0,0,'2019-12-31 08:49:39'),(7,2,'','',8,0,'2019-12-31 08:49:40',0,0,0,0,0,'2019-12-31 08:49:40'),(8,2,'','',9,0,'2020-01-02 13:57:43',2,2,0,0,0,'2019-12-31 13:06:59'),(9,2,'','',10,0,'2020-01-01 17:13:49',1,1,0,0,0,'2019-12-31 13:21:45'),(10,2,'','',11,0,'2020-01-01 17:33:47',1,1,0,0,0,'2019-12-31 13:22:24'),(11,2,'','',12,0,'2020-01-01 17:25:05',1,1,0,0,0,'2019-12-31 13:41:04'),(12,2,'','',13,0,'2020-01-02 11:21:41',2,2,0,0,0,'2019-12-31 13:43:21'),(13,1,'','',3,0,'2020-01-04 01:22:22',1,1,0,0,0,'2020-01-02 15:35:56'),(15,1,'','',7,0,'2020-01-04 01:27:13',1,1,0,0,0,'2020-01-02 15:39:28'),(20,1,'','',9,0,'2020-01-04 01:23:03',1,1,0,0,0,'2020-01-02 15:41:24'),(21,1,'','',12,0,'2020-01-02 15:41:55',0,0,0,0,0,'2020-01-02 15:41:55'),(22,1,'','',10,0,'2020-01-04 01:28:30',1,1,0,0,0,'2020-01-02 15:44:47'),(23,1,'','',6,0,'2020-01-04 01:23:09',1,1,0,0,0,'2020-01-02 15:44:57'),(24,1,'','',13,0,'2020-01-04 01:23:11',1,1,0,0,0,'2020-01-02 15:45:34');

/*Table structure for table `t_category` */

DROP TABLE IF EXISTS `t_category`;

CREATE TABLE `t_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `t_category` */

insert  into `t_category`(`id`,`user_id`,`name`) values (1,1,'亲人'),(2,1,'朋友'),(3,1,'同事'),(4,1,'同学'),(5,1,'网友'),(6,2,'亲人'),(7,2,'朋友'),(8,2,'同事'),(9,2,'同学'),(10,2,'网友');

/*Table structure for table `t_circle` */

DROP TABLE IF EXISTS `t_circle`;

CREATE TABLE `t_circle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `msg` varchar(255) NOT NULL DEFAULT '',
  `shop_id` bigint(20) NOT NULL DEFAULT '0',
  `belong1` bigint(20) NOT NULL DEFAULT '0',
  `belong2` bigint(20) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `t_circle` */

insert  into `t_circle`(`id`,`name`,`icon`,`msg`,`shop_id`,`belong1`,`belong2`,`create_time`) values (1,'悠悠球俱乐部','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577202090314&di=ca1519eedb57205779d848821386c45d&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201412%2F13%2F20141213220212_rLVdL.jpeg','会玩悠悠球的小猪崽子',0,1,2,'2019-12-24 20:53:57'),(2,'上班摸鱼','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577202090313&di=9a1bee33af8272b991ff77dd2ca5a091&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20171114%2F0fc43e9ad58f4a5cb41a018925b0e475.jpeg','快快乐乐上班去',0,1,2,'2019-12-24 20:55:37'),(3,'测试','http://qiniu.jokor.vip/C_215-29-16-u=4035967573,2079312313&fm=26&gp=0.jpg','测试',0,2,1,'2019-12-30 19:59:23'),(4,'测试啊','http://qiniu.jokor.vip/C_215-29-16-u=4035967573,2079312313&fm=26&gp=0.jpg','哈哈哈',0,2,1,'2019-12-30 20:03:52'),(5,'猫','http://qiniu.jokor.vip/C_21573737239657.jpg','一只萌哒哒的喵喵',0,2,1,'2019-12-31 08:17:24'),(6,'狗','http://b-ssl.duitang.com/uploads/item/201511/13/20151113110434_kyReJ.jpeg','狗子标签',0,2,1,'2019-12-31 08:42:35'),(7,'锤子','http://b-ssl.duitang.com/uploads/item/201510/24/20151024160112_uYtPB.jpeg','玩个蛇皮',0,2,1,'2019-12-31 08:49:39'),(9,'哈吃啊','http://b-ssl.duitang.com/uploads/item/201607/26/20160726185736_yPmrE.thumb.224_0.jpeg','[公告]测试！',0,2,1,'2019-12-31 13:06:59'),(10,'呵呵','http://qiniu.jokor.vip/C_21577769676016.jpg','测试',0,2,1,'2019-12-31 13:21:45'),(11,'哈撒啦','http://qiniu.jokor.vip/C_21577769728365.jpg','萌哒哒！',0,2,1,'2019-12-31 13:22:24'),(12,'哈哈哈哈','http://qiniu.jokor.vip/C_21577770850562.jpg','测试数据',0,2,1,'2019-12-31 13:41:04'),(13,'憨憨','http://qiniu.jokor.vip/C_21577770988496.jpg','测试数据',0,2,1,'2019-12-31 13:43:21');

/*Table structure for table `t_comment` */

DROP TABLE IF EXISTS `t_comment`;

CREATE TABLE `t_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `belong_id` bigint(20) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `article_id` bigint(20) NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL,
  `is_invalid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

/*Data for the table `t_comment` */

insert  into `t_comment`(`id`,`belong_id`,`username`,`icon`,`article_id`,`content`,`create_time`,`is_invalid`) values (1,1,'测试用户','jfo',1,'啊哈哈哈，好文章好文章。这是个好帖子，不吹不黑！','2019-11-19 14:17:22',0),(2,1,'测试用户','jfo',1,'出来吹牛逼咯','2019-11-22 14:17:22',0),(3,1,'测试用户','jfo',1,'棒你个棒槌','2019-11-14 14:17:22',0),(4,1,'测试用户','jfo',1,'啊哈哈哈哈','2019-11-22 14:17:22',0),(5,1,'测试用户','jfo',1,'笑死我了','2019-11-14 14:17:22',0),(6,1,'测试用户','jfo',1,'笑死我了','2019-11-14 14:17:22',0),(7,1,'测试用户','jfo',1,'笑死我了','2019-11-14 14:17:22',0),(8,1,'测试用户','jfo',1,'笑死我了','2019-11-14 14:17:22',0),(9,1,'测试用户','jfo',1,'笑死我了','2019-11-14 14:17:22',0),(10,1,'测试用户','jfo',1,'笑死我了','2019-11-14 14:17:22',0),(11,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'哈哈哈','2019-11-28 10:39:56',0),(12,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'呵呵！','2019-11-28 13:49:03',0),(13,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'哈哈哈哈哦豁','2019-11-28 14:31:11',0),(14,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'呵呵','2019-11-28 14:35:51',0),(15,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'嗯嗯，马上就去。','2019-11-28 14:36:00',0),(16,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',13,'哈哈哈哈，这是一条测试数据哦！','2019-11-28 15:18:14',0),(17,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',12,'没错！这就是一条测试数据！','2019-11-28 15:20:09',0),(18,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'啊哈哈哈，这是一条测试评论！','2019-11-29 14:07:28',0),(19,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'啊哈哈哈，就简单的测试一下下','2019-11-29 14:09:53',0),(20,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'啊哈哈哈，就简单的测试一下下','2019-11-29 14:09:56',0),(21,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'啊哈哈哈，就简单的测试一下下。嗯嗯，好像数据正常！','2019-11-29 14:10:08',0),(22,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'啊哈哈哈，就简单的测试一下下。嗯嗯，好像数据正常！','2019-11-29 14:10:12',0),(23,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'啊哈哈哈，就简单的测试一下下。嗯嗯，好像数据正常！','2019-11-29 14:10:13',0),(24,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'啊哈哈哈，就简单的测试一下下。嗯嗯，好像数据正常！','2019-11-29 14:10:13',0),(25,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'啊哈哈哈，就简单的测试一下下。嗯嗯，好像数据正常！','2019-11-29 14:10:15',0),(26,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'啊哈哈哈，就简单的测试一下下。嗯嗯，好像数据正常！','2019-11-29 14:10:17',0),(27,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'呵呵！','2019-11-29 14:10:27',0),(28,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'哦豁！','2019-11-29 14:13:16',0),(29,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'嗯嗯','2019-11-29 14:13:31',0),(30,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'','2019-11-29 14:13:34',0),(31,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'','2019-11-29 14:13:36',0),(32,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'我是钢铁侠！','2019-11-29 14:13:43',0),(33,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'啊哈哈哈！','2019-11-29 14:15:33',0),(34,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',15,'嗯嗯','2019-11-29 14:17:49',0),(35,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',15,'哈哈，你个憨憨','2019-11-29 14:18:15',0),(36,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',15,'好似乎','2019-11-29 14:18:21',0),(37,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',15,'？？？','2019-11-29 14:18:26',0),(38,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',15,'！！','2019-11-29 14:18:28',0),(39,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',16,'嗯嗯','2019-11-29 14:19:56',0),(40,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',16,'哈哈','2019-11-29 14:26:05',0),(41,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',15,'？？？','2019-11-29 14:26:12',0),(42,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',17,'测试评论！','2019-11-29 14:26:43',0),(43,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',16,'测试！','2019-11-29 14:26:52',0),(44,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',17,'嗯嗯！！！','2019-11-29 14:27:16',0),(45,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',23,'阿西吧！','2019-11-29 15:34:36',0),(46,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',22,'哈哈哦豁','2019-11-29 15:42:58',0),(47,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',22,'呵呵！闭嘴泡逼','2019-11-29 15:46:38',0),(48,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',22,'啥？！','2019-11-29 15:46:53',0),(49,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',22,'.  ','2019-11-29 15:47:03',0),(50,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',23,'嗯嗯！','2019-11-29 15:48:02',0),(51,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',23,'哈哈，傻狍子','2019-11-29 16:07:33',0),(52,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',23,'啥！','2019-11-29 16:08:20',0),(53,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',23,'咋啦！','2019-11-29 16:10:47',0),(54,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',23,'？？？','2019-11-29 16:13:05',0),(55,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',24,'哈哈。。。','2019-11-29 16:36:16',0),(56,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',18,'哈哈','2019-12-01 19:19:04',0),(57,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',24,'？？','2019-12-01 19:21:28',0),(58,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',24,'哦哦！','2019-12-02 07:38:20',0),(59,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',24,'哼哼哼！','2019-12-02 07:38:27',0),(60,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',24,'你飘了','2019-12-02 07:38:41',0),(61,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',24,'呵呵！','2019-12-02 08:14:48',0),(62,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',24,'哈哈！','2019-12-02 15:29:01',0),(63,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',24,'嗯嗯！','2019-12-02 15:29:17',0),(64,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',23,'测试！','2019-12-02 15:34:37',0),(65,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',22,'测试！','2019-12-02 15:34:59',0),(66,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',24,'哈哈哈哈，这是一条测试数据！','2019-12-02 15:42:06',0),(67,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',24,'啥！','2019-12-02 15:42:34',0),(68,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',23,'测试！','2019-12-02 15:44:22',0),(69,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',24,'测试！！！','2019-12-02 15:48:51',0),(70,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',24,'测试！！！','2019-12-02 15:54:06',0),(71,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',24,'测试？','2019-12-02 15:54:16',0),(72,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',25,'测试！','2019-12-02 15:55:35',0),(73,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',25,'背对疾风吧！','2019-12-02 15:58:16',0),(74,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',25,'C服！','2019-12-02 16:07:37',0),(75,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',25,'呵呵！','2019-12-02 16:09:31',0),(76,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',26,'哈哈哈！！！我是一楼！','2019-12-02 16:10:11',0),(77,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',28,'哈哈！','2019-12-16 11:32:53',0),(78,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',28,'很厉害！','2019-12-16 11:33:00',0),(79,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',30,'哈哈(ಡωಡ)hiahiahia','2019-12-16 13:30:45',0),(80,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',30,'呵呵！','2019-12-16 13:31:28',0),(81,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',30,'哈！','2019-12-16 13:31:43',0),(82,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',30,'哦豁！','2019-12-16 13:31:59',0),(83,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',30,'哈哈哈！','2019-12-17 09:12:10',0),(84,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',31,'哈哈，是吗','2019-12-18 15:28:04',0),(85,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',31,'？？？','2019-12-18 15:28:30',0),(86,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',15,'测试','2019-12-18 22:11:26',0),(87,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',31,'哈哈哈','2019-12-19 09:41:00',0),(88,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',32,'哈哈！','2019-12-19 10:47:00',0),(89,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',32,'哦豁！','2019-12-19 10:47:13',0),(90,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',34,'哈哈哈！','2019-12-19 14:10:26',0),(91,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',33,'测试','2019-12-19 16:05:13',0),(92,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',34,'哈哈','2019-12-19 22:11:02',0),(93,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',12,'f008','2019-12-19 23:00:06',0),(94,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',12,'呵呵呵呵！','2019-12-19 23:00:11',0),(95,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',35,'哈哈','2019-12-20 21:27:37',0),(96,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',35,'测试','2019-12-20 23:25:06',0),(97,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',35,'嗯嗯','2019-12-20 23:25:12',0),(98,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',35,'评论','2019-12-20 23:59:20',0),(99,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',30,'测试！','2019-12-27 22:42:03',0),(100,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',30,'哈哈！','2019-12-27 22:42:10',0),(101,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',17,'哈哈！','2019-12-28 14:52:14',0),(102,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'测试','2019-12-31 14:47:46',0),(103,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',47,'哈哈','2020-01-04 02:00:36',0),(104,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',63,'呵呵','2020-01-04 20:38:21',0),(105,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',63,'测试','2020-01-04 20:41:05',0),(106,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',67,'测试','2020-01-17 14:44:39',0),(107,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',68,'测试','2020-01-17 15:09:22',0),(108,3,'向日葵','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537781&di=108290dae4164d2c101dc44e1a4875e2&imgtype=jpg&er=1&src=http%3A%2F%2Fpic2.zhimg.com%2Fv2-69d7422e6fdcf68b8c6124ba020a68d9_b.jpg',68,'测试','2020-01-17 15:13:48',0);

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
  `mem_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `t_group` */

insert  into `t_group`(`id`,`icon`,`name`,`sign`,`msg`,`pwd`,`city`,`is_city`,`administers`,`belong`,`max_count`,`is_pay`,`pay_num`,`pri`,`grad`,`create_time`,`mem_count`) values (10,'http://img4.imgtn.bdimg.com/it/u=483218887,1570250175&fm=26&gp=0.jpg','测试1群','交友群','','',0,0,'',1,100,0,0,0,0,'2019-11-14 14:21:43',0),(11,'http://img5.imgtn.bdimg.com/it/u=2727007005,1460334428&fm=26&gp=0.jpg','测试2群','学习群','','',0,0,'',1,100,0,0,0,0,'2019-11-14 14:22:30',0),(12,'http://img0.imgtn.bdimg.com/it/u=1106065737,3533837881&fm=26&gp=0.jpg','测试3群','锻炼群','','',0,0,'',1,100,0,0,0,0,'2019-11-14 14:23:54',0),(13,'http://img2.imgtn.bdimg.com/it/u=2815876346,892338732&fm=26&gp=0.jpg','测试4群','爱国群','','',0,0,'',1,100,0,0,0,0,'2019-11-14 14:39:18',0),(14,'http://img3.imgtn.bdimg.com/it/u=1197649131,3280891552&fm=26&gp=0.jpg','测试5群','毛泽东思想讨论群','','',0,0,'',1,100,0,0,0,0,'2019-11-14 14:59:43',0),(18,'','测试','','','',0,0,'',1,100,0,0,0,0,'2019-11-15 06:28:27',0),(19,'','吹牛群','','','',0,0,'',1,100,0,0,0,0,'2019-11-15 06:33:14',0),(20,'','测试群','','','',0,0,'',1,100,0,0,0,0,'2019-11-15 06:34:58',0),(21,'','测试','','','',0,0,'',1,100,0,0,0,0,'2019-11-15 06:35:53',0),(22,'','呵呵','','','',0,0,'',1,100,0,0,0,0,'2019-11-15 06:36:24',0),(23,'','are','','','',0,0,'',1,100,0,0,0,0,'2019-11-15 06:55:43',0),(24,'','哈哈','','','',0,0,'',1,100,0,0,0,0,'2019-11-15 07:01:49',0),(25,'','','','','',0,0,'',2,100,0,0,0,0,'2019-11-21 05:57:59',0);

/*Table structure for table `t_group_list` */

DROP TABLE IF EXISTS `t_group_list`;

CREATE TABLE `t_group_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL DEFAULT '0',
  `msg` varchar(255) NOT NULL DEFAULT '',
  `belong` bigint(20) NOT NULL DEFAULT '0',
  `group_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `t_group_list` */

insert  into `t_group_list`(`id`,`sort`,`msg`,`belong`,`group_id`) values (15,0,'',1,10),(16,0,'',1,23),(17,0,'',1,11),(18,0,'',1,12),(19,0,'',1,24),(20,0,'',1,13),(21,0,'',1,14),(22,0,'',3,10),(23,0,'',2,10),(24,0,'',2,25);

/*Table structure for table `t_likes` */

DROP TABLE IF EXISTS `t_likes`;

CREATE TABLE `t_likes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `belong_id` bigint(20) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `article_id` bigint(20) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

/*Data for the table `t_likes` */

insert  into `t_likes`(`id`,`belong_id`,`username`,`icon`,`article_id`,`create_time`) values (1,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',1,'2019-11-19 14:17:32'),(2,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'2019-11-28 10:57:04'),(3,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',13,'2019-11-28 11:00:36'),(4,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',12,'2019-11-28 11:00:42'),(5,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',11,'2019-11-28 11:01:07'),(6,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',14,'2019-11-28 13:58:10'),(7,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',15,'2019-11-28 14:39:49'),(8,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',16,'2019-11-28 14:44:12'),(9,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',17,'2019-11-28 14:45:26'),(10,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',23,'2019-11-29 15:34:13'),(11,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',22,'2019-11-29 15:44:04'),(12,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',24,'2019-11-29 16:19:44'),(13,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',21,'2019-11-29 16:19:47'),(14,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',18,'2019-11-29 16:19:50'),(15,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',25,'2019-12-02 15:55:41'),(16,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',28,'2019-12-16 11:32:55'),(17,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',29,'2019-12-16 11:38:52'),(18,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',30,'2019-12-16 13:30:40'),(19,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',26,'2019-12-16 15:50:09'),(20,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',31,'2019-12-18 15:27:58'),(21,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',34,'2019-12-19 14:10:28'),(22,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',33,'2019-12-19 16:05:08'),(23,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',16,'2019-12-20 16:55:06'),(24,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',35,'2019-12-20 23:59:45'),(25,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',35,'2019-12-21 00:08:18'),(26,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',32,'2019-12-24 09:48:31'),(27,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',33,'2019-12-24 09:48:41'),(28,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',19,'2019-12-24 20:39:34'),(29,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',13,'2019-12-24 22:33:34'),(30,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',21,'2019-12-24 22:33:39'),(31,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',23,'2019-12-24 22:33:43'),(32,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',15,'2019-12-24 22:34:32'),(33,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',15,'2019-12-24 22:34:36'),(34,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',14,'2019-12-24 22:34:44'),(35,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',27,'2019-12-24 22:34:58'),(36,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',19,'2019-12-28 14:20:09'),(37,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',22,'2019-12-28 20:20:05'),(38,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',43,'2020-01-04 01:24:30'),(39,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',41,'2020-01-04 01:24:41'),(40,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',47,'2020-01-04 02:00:29'),(41,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',50,'2020-01-04 02:02:49'),(42,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',55,'2020-01-04 03:33:46'),(43,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',56,'2020-01-04 03:33:49'),(44,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',59,'2020-01-04 03:33:59'),(45,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',58,'2020-01-04 03:34:00'),(46,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',51,'2020-01-04 04:33:37'),(47,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',48,'2020-01-04 04:33:39'),(48,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',54,'2020-01-04 04:33:59'),(49,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',53,'2020-01-04 04:34:01'),(50,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',52,'2020-01-04 04:34:03'),(51,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',49,'2020-01-04 04:34:06'),(52,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',60,'2020-01-04 04:34:09'),(53,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',61,'2020-01-04 04:34:32'),(54,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',63,'2020-01-04 20:38:24'),(55,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',64,'2020-01-04 20:58:37'),(56,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',61,'2020-01-17 15:08:03'),(57,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',60,'2020-01-17 15:08:04'),(58,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',68,'2020-01-17 15:08:59'),(59,3,'向日葵','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537781&di=108290dae4164d2c101dc44e1a4875e2&imgtype=jpg&er=1&src=http%3A%2F%2Fpic2.zhimg.com%2Fv2-69d7422e6fdcf68b8c6124ba020a68d9_b.jpg',68,'2020-01-17 15:14:03');

/*Table structure for table `t_recommend_article` */

DROP TABLE IF EXISTS `t_recommend_article`;

CREATE TABLE `t_recommend_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `grad` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_recommend_article` */

/*Table structure for table `t_reply` */

DROP TABLE IF EXISTS `t_reply`;

CREATE TABLE `t_reply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `belong_id` bigint(20) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `comment_id` bigint(20) NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL DEFAULT '',
  `is_invalid` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `article_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

/*Data for the table `t_reply` */

insert  into `t_reply`(`id`,`belong_id`,`username`,`icon`,`comment_id`,`content`,`is_invalid`,`create_time`,`article_id`) values (1,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',1,'测试回复',0,'2019-11-25 11:36:00',17),(2,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'呵呵！',0,'2019-12-01 19:25:31',24),(3,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'哈哈！',0,'2019-12-01 19:26:26',24),(4,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'你是个憨憨？',0,'2019-12-01 19:28:44',24),(5,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',57,'哈逼！',0,'2019-12-01 19:29:13',24),(6,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',57,'呵呵，儿子乖！',0,'2019-12-01 19:29:26',24),(7,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',57,'哦豁！',0,'2019-12-01 20:17:32',24),(8,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'哈哈哈，这是一条测试回复',0,'2019-12-01 20:17:52',24),(9,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',45,'tam万岁！',0,'2019-12-01 20:19:18',23),(10,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',45,'啊哈哈哈！',0,'2019-12-01 20:19:23',23),(11,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',51,'嗯嗯！',0,'2019-12-01 20:19:31',23),(12,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',57,'哈哈哈！',0,'2019-12-02 07:37:58',24),(13,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',57,'这是一条测试数据',0,'2019-12-02 07:38:04',24),(14,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',59,'呵呵',0,'2019-12-02 07:38:31',24),(15,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',59,'二狗子',0,'2019-12-02 07:38:37',24),(16,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',59,'你飘了哟',0,'2019-12-02 07:38:56',24),(17,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',59,'',0,'2019-12-02 07:39:01',24),(18,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'哈哈',0,'2019-12-02 11:33:52',24),(19,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'这是一条测试回复哦！',0,'2019-12-02 11:37:46',24),(20,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'啊哈哈哈！',0,'2019-12-02 13:35:01',24),(21,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'啊哈哈哈！',0,'2019-12-02 13:35:03',24),(22,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'啊哈哈哈！',0,'2019-12-02 13:35:04',24),(23,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'啊哈哈哈！',0,'2019-12-02 13:35:05',24),(24,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'啊哈哈哈！',0,'2019-12-02 13:35:05',24),(25,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'啊哈哈哈！',0,'2019-12-02 13:35:06',24),(26,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'啊哈哈哈！',0,'2019-12-02 13:35:06',24),(27,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'呵呵',0,'2019-12-02 13:35:59',24),(28,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'哈比',0,'2019-12-02 13:39:08',24),(29,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'很棒哦！',0,'2019-12-02 14:04:31',24),(30,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',59,'呵呵',0,'2019-12-02 14:06:24',24),(31,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',59,'哼哼',0,'2019-12-02 14:07:23',24),(32,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',60,'哈哈',0,'2019-12-02 14:10:47',24),(33,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',59,'呵呵！',0,'2019-12-02 14:10:55',24),(34,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',57,'哈哈！',0,'2019-12-02 14:13:15',24),(35,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',59,'嗯嗯',0,'2019-12-02 14:17:52',24),(36,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',59,'呵呵！',0,'2019-12-02 14:21:04',24),(37,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',59,'哟嚯！',0,'2019-12-02 14:22:11',24),(38,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',57,'测试！',0,'2019-12-02 14:28:13',24),(39,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',57,'哈哈哈！',0,'2019-12-02 14:35:35',24),(40,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',59,'哈哈哈！',0,'2019-12-02 14:38:18',24),(41,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',57,'哼！',0,'2019-12-02 14:39:25',24),(42,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',57,'＆',0,'2019-12-02 14:44:23',24),(43,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',59,'哈哈',0,'2019-12-02 14:56:59',24),(44,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',57,'测试？！！！',0,'2019-12-02 15:09:30',24),(45,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',55,'？！！',0,'2019-12-02 15:14:21',24),(46,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',69,'测试！',0,'2019-12-02 15:48:56',24),(47,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',69,'测试！！！！',0,'2019-12-02 15:49:06',24),(48,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',73,'傻子吧',0,'2019-12-02 15:58:22',25),(49,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',75,'就服你！',0,'2019-12-02 16:09:37',25),(50,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',76,'嗯嗯',0,'2019-12-02 16:10:18',26),(51,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',76,'哈哈',0,'2019-12-16 19:34:58',26),(52,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',84,'666666',0,'2019-12-18 15:28:19',31),(53,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',84,'7777',0,'2019-12-18 15:28:26',31),(54,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',85,'9999',0,'2019-12-18 15:28:45',31),(55,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',87,'9527',0,'2019-12-19 09:41:11',31),(56,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',88,'？？？？',0,'2019-12-19 10:47:08',32),(57,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',88,'哈哈！',0,'2019-12-19 22:10:14',32),(58,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',88,'就你皮',0,'2019-12-19 22:10:22',32),(59,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',88,'呵呵呵',0,'2019-12-19 22:10:26',32),(60,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',88,'嗯嗯',0,'2019-12-19 22:10:29',32),(61,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',90,'哈扒鸡',0,'2019-12-19 22:10:58',34),(62,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',17,'哈哈',0,'2019-12-19 23:00:00',12),(63,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',80,'哈哈',0,'2019-12-19 23:07:58',30),(64,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',81,'嗯呢呢',0,'2019-12-19 23:08:04',30),(65,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',72,'哈哈！',0,'2019-12-19 23:08:19',25),(66,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',73,'不是！',0,'2019-12-19 23:08:24',25),(67,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',79,'哈啪啪',0,'2019-12-20 09:02:50',30),(68,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',98,'哈哈',0,'2019-12-20 23:59:26',35),(69,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',98,'这是一条测试数据',0,'2019-12-20 23:59:32',35),(70,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',30,'测试',0,'2019-12-31 10:10:46',14),(71,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',30,'测试',0,'2019-12-31 10:10:54',14),(72,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',28,'测试',0,'2019-12-31 10:11:02',14),(73,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',28,'测试',0,'2019-12-31 10:11:06',14),(74,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',11,'测试',0,'2019-12-31 10:14:04',14),(75,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',11,'测试！',0,'2019-12-31 10:14:12',14),(76,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',17,'',0,'2020-01-01 19:13:30',12),(77,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',11,'哈哈',0,'2020-01-01 20:02:00',14),(78,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',106,'哈撒',0,'2020-01-17 14:44:44',67),(79,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',106,'测试',0,'2020-01-17 14:44:54',67),(80,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',106,'测试',0,'2020-01-17 14:45:10',67),(81,3,'向日葵','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537781&di=108290dae4164d2c101dc44e1a4875e2&imgtype=jpg&er=1&src=http%3A%2F%2Fpic2.zhimg.com%2Fv2-69d7422e6fdcf68b8c6124ba020a68d9_b.jpg',107,'测试',0,'2020-01-17 15:13:45',68),(82,2,'闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg',108,'测试数据',0,'2020-01-17 15:15:09',68),(83,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',108,'测试数据',0,'2020-01-17 15:15:19',68),(84,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',108,'测试',0,'2020-01-17 15:16:14',68),(85,1,'管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg',108,'哈哈',0,'2020-01-17 15:16:18',68);

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
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`name`,`user_name`,`icon`,`tel`,`email`,`id_card`,`pwd`,`sign`,`city`,`path`,`vip`,`vip_grad`,`grad`,`create_time`,`login_time`,`ban_time`,`family_id`,`birth`,`sex`) values (1,'宋志文','管理员账户','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567921572660&di=fd7d5e447ccbf1d270962801e37c97ee&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201510%2F13%2F20151013234603_hiYnP.jpeg','18588263531','78901214','95274','78901214','长按头像显示大图长按头像显示大图长按头像显示大图长按头像显示大图长按头像显示大图长按头像显示大图长按头像显示大图。',1,'2019-09-07 00:00:00','2019-09-07 08:27:06',1,1,'2019-09-07 08:27:06','2019-09-07 08:27:06','3019-09-07 08:27:06',1,'2019-09-17 17:34:12',0),(2,'测试用户1','闪电侠','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3276179142,1686381254&fm=26&gp=0.jpg','001','78as0d15','7894564','123456','今天心情不错！',1,'2019-09-07 00:00:00','2019-09-07 08:27:06',1,1,'2019-09-07 08:27:06','2019-09-07 08:27:06','3019-09-07 08:27:06',1,'0000-00-00 00:00:00',0),(3,'测试用户2','向日葵','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537781&di=108290dae4164d2c101dc44e1a4875e2&imgtype=jpg&er=1&src=http%3A%2F%2Fpic2.zhimg.com%2Fv2-69d7422e6fdcf68b8c6124ba020a68d9_b.jpg','002','f3g4664`','ef46ds4f3','123456','天天好心情',1,'2019-09-07 00:00:00','2019-09-07 08:27:06',1,1,'2019-09-07 08:27:06','2019-09-07 08:27:06','3019-09-07 08:27:06',1,'0000-00-00 00:00:00',0),(4,'测试用户3','fuck shit','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537794&di=389c7f4f24b73414ee0c315a1641cbaf&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F20%2F20171020164428_KXUMZ.thumb.700_0.jpeg','003','fjswlej','fdmls','123456','速度佛普通攻击 ',1,'2019-09-07 00:00:00','2019-09-07 08:27:06',1,1,'2019-09-07 08:27:06','2019-09-07 08:27:06','3019-09-07 08:27:06',1,'0000-00-00 00:00:00',0),(5,'测试用户4','奶香味','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537803&di=b01deda8e9fc8b1deabaf303b907b5e2&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201608%2F16%2F20160816100317_freX8.jpeg','004','ejwsodf4345','dsfm ','123456','啊说得好佛我去饿哦',1,'2019-09-07 00:00:00','2019-09-07 08:27:06',1,1,'2019-09-07 08:27:06','2019-09-07 08:27:06','3019-09-07 08:27:06',1,'0000-00-00 00:00:00',0),(6,'测试用户5','今天不喝茶','https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2425988043,2484997674&fm=26&gp=0.jpg','005','fdgjvlj ','ewrfowej    ','123456','速度nhk发货',0,'2019-09-07 00:00:00','2019-09-07 08:27:06',0,0,'2019-09-07 08:27:06','2019-09-07 08:27:06','3019-09-07 08:27:06',1,'0000-00-00 00:00:00',0),(7,'测试用户6','曰了狗','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568537826&di=530dbaf0c98ca885dd9107c596dffa8c&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F03%2F20171003081804_HWhj3.jpeg','006','fehow','dfasd fo ','123456','额和肉和',0,'2019-09-07 00:00:00','2019-09-07 08:27:06',0,0,'2019-09-07 08:27:06','2019-09-07 08:27:06','3019-09-07 08:27:06',1,'0000-00-00 00:00:00',0),(8,'测试用户7','阿萨==','https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3349864628,2464822885&fm=26&gp=0.jpg','007','rerglj','df  loewrjf ','123456','热风进攻而 ',0,'2019-09-07 00:00:00','2019-09-07 08:27:06',0,0,'2019-09-07 08:27:06','2019-09-07 08:27:06','3019-09-07 08:27:06',1,'0000-00-00 00:00:00',0),(9,'测试用户8','背对疾风吧','http://img3.imgtn.bdimg.com/it/u=3029681416,788922299&fm=26&gp=0.jpg','008','sfaadf','asdfasdf','123456','背对疾风吧',0,'2019-11-13 09:28:19','2019-11-13 09:28:21',0,0,'2019-11-13 09:28:23','2019-11-13 09:28:25','2050-11-13 09:28:26',1,'2019-11-13 09:28:42',0),(10,'测试用户9','一库','http://img0.imgtn.bdimg.com/it/u=4246326797,2657995307&fm=26&gp=0.jpg','009','ghdsfh','djgngl','123456','我用双手成就你得梦想',0,'2019-11-13 14:15:58','2019-11-13 14:16:05',0,0,'2019-11-13 14:16:09','2019-11-13 14:16:11','2030-01-01 14:16:14',1,'2019-11-13 14:16:25',0),(11,'测试用户10','虾米','http://img2.imgtn.bdimg.com/it/u=4021728696,1791334698&fm=26&gp=0.jpg','010','ergwer','aedfae','123456','呵呵',1,'2019-11-13 14:17:48','2019-11-13 14:18:23',0,0,'2019-11-13 14:18:15','2019-11-13 14:17:51','2049-11-13 14:17:53',1,'2019-11-13 14:18:06',0),(12,'测试用户11','科马','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573651172838&di=c175877b8c7aa1c4189a5173b7e6f314&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201803%2F24%2F20180324081023_8FVre.jpeg','011','dshfh','fasdf','123456','床前明月光',0,'2019-11-13 18:32:03','2019-11-13 18:32:05',0,0,'2019-11-13 18:32:09','2019-11-13 18:32:11','2030-11-13 18:32:14',1,'2409-11-13 18:32:25',0),(13,'测试用户12','哈皮','http://img1.imgtn.bdimg.com/it/u=3742137519,3502794146&fm=26&gp=0.jpg','012','ashkah','ehfh','123456','哒哒哒',0,'2019-11-13 18:33:23','2019-11-13 18:33:24',0,0,'2019-11-13 18:33:28','2019-11-13 18:33:31','2109-11-13 18:33:33',1,'2019-11-13 18:33:39',0),(14,'测试用户15','频频','http://img4.imgtn.bdimg.com/it/u=2127788995,1458578169&fm=26&gp=0.jpg','015','ashkah','ehfh','123456','哒哒哒',0,'2019-11-13 18:33:23','2019-11-13 18:33:24',0,0,'2019-11-13 18:33:28','2019-11-13 18:33:31','2109-11-13 18:33:33',1,'2019-11-13 18:33:39',0),(15,'测试用户13','叩叩','http://img1.imgtn.bdimg.com/it/u=2713288513,2026476790&fm=26&gp=0.jpg','013','ashkah','ehfh','123456','哒哒哒',0,'2019-11-13 18:33:23','2019-11-13 18:33:24',0,0,'2019-11-13 18:33:28','2019-11-13 18:33:31','2109-11-13 18:33:33',1,'2019-11-13 18:33:39',0),(16,'测试用户14','大马哈','http://img1.imgtn.bdimg.com/it/u=2552851373,933092732&fm=26&gp=0.jpg','014','ashkah','ehfh','123456','哒哒哒',0,'2019-11-13 18:33:23','2019-11-13 18:33:24',0,0,'2019-11-13 18:33:28','2019-11-13 18:33:31','2109-11-13 18:33:33',1,'2019-11-13 18:33:39',0),(17,'测试用户16','哟后','http://img0.imgtn.bdimg.com/it/u=3582194852,1481557220&fm=26&gp=0.jpg','016','ashkah','ehfh','123456','哒哒哒',0,'2019-11-13 18:33:23','2019-11-13 18:33:24',0,0,'2019-11-13 18:33:28','2019-11-13 18:33:31','2109-11-13 18:33:33',1,'2019-11-13 18:33:39',0),(18,'测试用户17','嗯哼','http://img5.imgtn.bdimg.com/it/u=1323333605,4050265276&fm=26&gp=0.jpg','017','ashkah','ehfh','123456','哒哒哒',0,'2019-11-13 18:33:23','2019-11-13 18:33:24',0,0,'2019-11-13 18:33:28','2019-11-13 18:33:31','2109-11-13 18:33:33',1,'2019-11-13 18:33:39',0),(19,'测试用户18','旅客','http://img0.imgtn.bdimg.com/it/u=1813762643,1914315241&fm=26&gp=0.jpg','018','ashkah','ehfh','123456','哒哒哒',0,'2019-11-13 18:33:23','2019-11-13 18:33:24',0,0,'2019-11-13 18:33:28','2019-11-13 18:33:31','2109-11-13 18:33:33',1,'2019-11-13 18:33:39',0),(20,'测试用户19','小于','http://img0.imgtn.bdimg.com/it/u=2141883083,441478555&fm=26&gp=0.jpg','019','ashkah','ehfh','123456','哒哒哒',0,'2019-11-13 18:33:23','2019-11-13 18:33:24',0,0,'2019-11-13 18:33:28','2019-11-13 18:33:31','2109-11-13 18:33:33',1,'2019-11-13 18:33:39',0),(21,'测试用户20','喷子','http://img5.imgtn.bdimg.com/it/u=1968041477,106026006&fm=26&gp=0.jpg','020','ashkah','ehfh','123456','哒哒哒',0,'2019-11-13 18:33:23','2019-11-13 18:33:24',0,0,'2019-11-13 18:33:28','2019-11-13 18:33:31','2109-11-13 18:33:33',1,'2019-11-13 18:33:39',0);

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `t_user_list` */

insert  into `t_user_list`(`id`,`category_id`,`sort`,`msg`,`belong`,`friend`,`friend_id`) values (1,1,1,'狗子',1,2,2),(2,1,1,'八戒',1,3,3),(3,2,1,'而我',1,4,4),(4,3,1,'去额外',1,5,5),(5,6,1,'管理员账号',2,1,1),(6,7,1,'3号测试用户',2,3,3),(10,2,0,'我是宋志文',1,0,10),(11,3,0,'我是宋志文',1,0,9),(12,3,0,'我是宋志文',1,0,11),(13,1,0,'我是宋志文',1,0,12),(14,2,0,'我是宋志文',1,0,13),(15,2,0,'我是宋志文',1,0,15),(16,2,0,'我是宋志文',1,0,16),(17,2,0,'我是宋志文',1,0,14),(18,4,0,'我是宋志文',1,0,17),(19,5,0,'我是宋志文',1,0,18),(20,2,0,'我是宋志文',1,0,19),(21,2,0,'我是宋志文',1,0,20),(22,2,0,'我是宋志文',1,0,21);

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
