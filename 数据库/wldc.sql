/*
SQLyog Ultimate v12.14 (64 bit)
MySQL - 5.5.40 : Database - wldc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wldc` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `wldc`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `quanxian` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

/*Data for the table `admin` */

insert  into `admin`(`id`,`name`,`pwd`,`quanxian`) values 
(1,'admin','admin','-1');

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `author` varchar(500) DEFAULT NULL,
  `publishing` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `storage` varchar(50) DEFAULT NULL,
  `brief` varchar(500) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `tate` varchar(50) DEFAULT NULL,
  `sums` varchar(50) DEFAULT '0',
  `imgpath` varchar(100) DEFAULT NULL,
  `price1` varchar(50) DEFAULT NULL,
  `sums1` varchar(50) DEFAULT '0',
  PRIMARY KEY (`name`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=gb2312;

/*Data for the table `books` */

insert  into `books`(`id`,`name`,`author`,`publishing`,`number`,`price`,`storage`,`brief`,`type`,`tate`,`sums`,`imgpath`,`price1`,`sums1`) values 
(2,'炒肉滑子菇','肉，滑子菇',NULL,NULL,'10',NULL,'sdfsdfsdf','2',NULL,'0','bookimg/dchaorouhuazigu.jpg','20','17'),
(7,'大骨头炖酸菜','大骨头，酸菜',NULL,NULL,NULL,NULL,'无','3',NULL,'0','bookimg/ddagusuancai.gif','13','2'),
(5,'黄瓜拉皮','黄瓜，拉皮',NULL,NULL,NULL,NULL,'无','1',NULL,'0','bookimg/dhuanggualapi.gif','5','1'),
(10,'酱骨架','猪大骨',NULL,NULL,NULL,NULL,'无','4',NULL,'0','bookimg/djianggujia.gif','20','4'),
(8,'酱猪耳','猪耳',NULL,NULL,NULL,NULL,'无','4',NULL,'0','bookimg/djiangzhuer.gif','18','0'),
(3,'木须肉','猪肉',NULL,NULL,NULL,NULL,'无','2',NULL,'0','bookimg/dmuxurou.gif','15','1'),
(9,'五香驴肉','驴肉',NULL,NULL,NULL,NULL,'无','4',NULL,'0','bookimg/dlvrou.gif','22','1'),
(6,'猪肉炖粉条','猪肉，粉条',NULL,NULL,NULL,NULL,'无','3',NULL,'0','bookimg/dzhuroiudunfentiao.gif','15','1'),
(4,'炝干豆腐丝','豆腐丝',NULL,NULL,NULL,NULL,'无','1',NULL,'0','bookimg/dqianggandoufusi.gif','5','1');

/*Table structure for table `emp` */

DROP TABLE IF EXISTS `emp`;

CREATE TABLE `emp` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `duty` varchar(50) DEFAULT NULL,
  `estate` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

/*Data for the table `emp` */

insert  into `emp`(`id`,`name`,`sex`,`birthday`,`phone`,`addr`,`duty`,`estate`) values 
(3,'李广','女','2020-06-01','13911111111','天津市','送餐员','闲置'),
(5,'赵哲','男','2000-06-30','13999999999','上海市','服务员','忙碌');

/*Table structure for table `leaveword` */

DROP TABLE IF EXISTS `leaveword`;

CREATE TABLE `leaveword` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `users` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(500) DEFAULT NULL,
  `times` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`users`,`title`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

/*Data for the table `leaveword` */

insert  into `leaveword`(`id`,`users`,`title`,`content`,`times`) values 
(2,'1','wrwer','wrwerwer','2020-06-09 13:14'),
(3,'2','werwewer','werwerwerwe','2020-06-09 22:55');

/*Table structure for table `nutrition` */

DROP TABLE IF EXISTS `nutrition`;

CREATE TABLE `nutrition` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `content` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

/*Data for the table `nutrition` */

insert  into `nutrition`(`id`,`name`,`content`) values 
(1,'sdfds','sdfsdf'),
(3,'关注白领女性的膳食营养','有资料显示，国内有人对477坐办公室的白领女性进行体检发现，发现有25.6%的女性患有与营养不良有关的疾病。现代生活中，白领女性工作节奏快、压力大、负担重，常常无暇顾及饮食营养，热量摄入量常常处于较低水平。她们容易疲劳、情绪低落，抵抗力下降等。有关专家提醒白领女性在膳食中注意以下几点： \r\n\r\n　　维生素摄入要充足：维生素本身并不产生热能，但它们是维持生理功能的重要成份，特别是与脑和神经代谢有关的维生素，如维生素B1、维生素B6等。这些维生素在糙米、全麦、黄豆中含量较丰富，因此，日常膳食中粮食不宜太精。另外，β－胡萝卜素、维生素C、维生素E，有利于提高工作效率，各种新鲜蔬菜和水果中它们的含量尤为丰富。');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) DEFAULT NULL,
  `bookid` varchar(50) DEFAULT NULL,
  `booksum` varchar(50) DEFAULT NULL,
  `times` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=gb2312;

/*Data for the table `orders` */

insert  into `orders`(`id`,`userid`,`bookid`,`booksum`,`times`) values 
(3,'1','2','10','2020-06-09 13:10'),
(4,'1','2','3','2020-06-09 19:57'),
(5,'2','2','1','2020-06-09 22:54'),
(6,'2','2','1','2020-06-09 22:54'),
(7,'2','5','1','2020-06-09 22:59'),
(8,'2','10','1','2020-06-09 23:02'),
(9,'2','10','1','2020-06-09 23:02'),
(10,'2','10','1','2020-06-09 23:03'),
(11,'2','10','1','2020-06-09 23:03'),
(12,'2','6','1','2020-06-09 23:07'),
(13,'2','4','1','2020-06-09 23:07'),
(14,'2','9','1','2020-06-09 23:11'),
(15,'2','3','1','2020-06-09 23:11'),
(16,'3','7','1','2020-01-25 23:18'),
(17,'3','7','1','2020-01-27 15:01');

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `sums` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `times` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

/*Data for the table `stock` */

insert  into `stock`(`id`,`name`,`unit`,`sums`,`price`,`times`) values 
(1,'大白菜','斤','100','20','2020-06-09 20:18'),
(3,'大白菜','斤','200','40','2020-06-09 20:41'),
(4,'大葱','斤','50','50','2020-06-09 20:43'),
(5,'qqq','q','1','212','2020-01-27 15:00');

/*Table structure for table `types` */

DROP TABLE IF EXISTS `types`;

CREATE TABLE `types` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312;

/*Data for the table `types` */

insert  into `types`(`id`,`name`) values 
(1,'凉拌菜'),
(2,'熘炒菜'),
(5,'湘菜'),
(6,'四川菜');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `card` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`pwd`,`realname`,`sex`,`age`,`card`,`address`,`phone`,`email`,`code`,`type`) values 
(1,'111','111','111','男','22','111111111111111111','天津市','13977777777','1123@163.com','110044',NULL),
(2,'222','222','张三','男','24','111111111111111111','天津市','13988888888','123@163.com','110044',NULL),
(3,'qqyo','qq111111','qq','男','12','420682198802213011','szs','5555555','44444444@qq.com','518000',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
