/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.22-community : Database - xscj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xscj` /*!40100 DEFAULT CHARACTER SET gbk */;

USE `xscj`;

/*Table structure for table `dlb` */

DROP TABLE IF EXISTS `dlb`;

CREATE TABLE `dlb` (
  `id` int(11) NOT NULL auto_increment,
  `xh` char(6) default NULL,
  `kl` char(20) default NULL,
  `addtime` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `dlb` */

insert  into `dlb`(`id`,`xh`,`kl`,`addtime`) values (1,'201001','123456','2010-01-01'),(2,'201002','123456','2010-02-02');

/*Table structure for table `kcb` */

DROP TABLE IF EXISTS `kcb`;

CREATE TABLE `kcb` (
  `kch` char(3) NOT NULL,
  `kcm` char(12) default NULL,
  `kxxq` smallint(6) default NULL,
  `xs` int(11) default '0',
  `xf` int(11) default '0',
  PRIMARY KEY  (`kch`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `kcb` */

insert  into `kcb`(`kch`,`kcm`,`kxxq`,`xs`,`xf`) values ('001','JSP',6,32,2),('002','JSP',6,64,4),('003','JSP',6,32,2),('004','JSP',5,48,3),('100','JSP',5,64,3),('666','JSP',NULL,NULL,NULL);

/*Table structure for table `lytable` */

DROP TABLE IF EXISTS `lytable`;

CREATE TABLE `lytable` (
  `id` int(11) NOT NULL auto_increment,
  `userId` int(11) default NULL,
  `data` datetime default NULL,
  `title` varchar(50) default NULL,
  `content` varchar(500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `lytable` */

/*Table structure for table `usertable` */

DROP TABLE IF EXISTS `usertable`;

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `password` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `usertable` */

insert  into `usertable`(`id`,`username`,`password`) values (1,'liukun','liukun');

/*Table structure for table `xs_kcb` */

DROP TABLE IF EXISTS `xs_kcb`;

CREATE TABLE `xs_kcb` (
  `xh` varchar(6) NOT NULL,
  `kch` varchar(3) NOT NULL,
  PRIMARY KEY  (`xh`,`kch`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `xs_kcb` */

/*Table structure for table `xsb` */

DROP TABLE IF EXISTS `xsb`;

CREATE TABLE `xsb` (
  `xh` char(6) NOT NULL,
  `xm` varchar(8) NOT NULL,
  `xb` bit(1) default NULL,
  `cssj` datetime default NULL,
  `zy_id` int(11) NOT NULL,
  `zxf` int(11) default NULL,
  `bz` varchar(500) default NULL,
  `zp` mediumblob,
  PRIMARY KEY  (`xh`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `xsb` */

insert  into `xsb`(`xh`,`xm`,`xb`,`cssj`,`zy_id`,`zxf`,`bz`,`zp`) values ('123','Dream',NULL,NULL,1,NULL,NULL,NULL);

/*Table structure for table `zyb` */

DROP TABLE IF EXISTS `zyb`;

CREATE TABLE `zyb` (
  `id` int(11) NOT NULL auto_increment,
  `zym` char(12) default NULL,
  `rs` int(11) default '0',
  `fdy` char(8) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `zyb` */

insert  into `zyb`(`id`,`zym`,`rs`,`fdy`) values (123,'计算机',100,'辅导员1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
