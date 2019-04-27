/*
SQLyog Community Edition- MySQL GUI v5.22a
Host - 5.0.19-nt : Database - onlinesmartcampus
*********************************************************************
Server version : 5.0.19-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `onlinesmartcampus`;

USE `onlinesmartcampus`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `uname` varchar(100) default NULL,
  `pass` varchar(100) default NULL,
  `image` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`uname`,`pass`,`image`) values ('a','a',NULL);

/*Table structure for table `auto_gen_id` */

DROP TABLE IF EXISTS `auto_gen_id`;

CREATE TABLE `auto_gen_id` (
  `form_name` varchar(100) NOT NULL default '',
  `prefix_id` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auto_gen_id` */

insert  into `auto_gen_id`(`form_name`,`prefix_id`) values ('vendor','Vendor-00002'),('client','Client-00002'),('product','P-00003'),('citizen','Citizen-00001'),('payment','DRAFT-00005'),('Offer','Offer-00004'),('stu','STU-00004'),('doc','Doc-00002'),('id','Dis-00003'),('dis','Dis-00003'),('tea','Tea-00001');

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bookid` varchar(100) default NULL,
  `bookname` varchar(100) default NULL,
  `bookauthor` varchar(100) default NULL,
  `bookcategrory` varchar(100) default NULL,
  `bookstatus` varchar(100) default NULL,
  `image` varchar(100) default NULL,
  `price` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `book` */

insert  into `book`(`bookid`,`bookname`,`bookauthor`,`bookcategrory`,`bookstatus`,`image`,`price`) values ('B1009','h','h','h','Avaliable','images_1330321842127.jpg','200');

/*Table structure for table `bookpurchase` */

DROP TABLE IF EXISTS `bookpurchase`;

CREATE TABLE `bookpurchase` (
  `id` varchar(100) default NULL,
  `name` varchar(100) default NULL,
  `auathor` varchar(100) default NULL,
  `category` varchar(100) default NULL,
  `price` varchar(100) default NULL,
  `vat` varchar(100) default NULL,
  `total` varchar(100) default NULL,
  `type` varchar(100) default NULL,
  `bank` varchar(100) default NULL,
  `amount` varchar(100) default NULL,
  `account` varchar(100) default NULL,
  `pass` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bookpurchase` */

insert  into `bookpurchase`(`id`,`name`,`auathor`,`category`,`price`,`vat`,`total`,`type`,`bank`,`amount`,`account`,`pass`) values ('B1009',NULL,'h','h','200','4','208','Net_Banking','Punjab National Bank','208','5tgg','1222'),('B1009',NULL,'h','h','200','4','208','Net_Banking','State Bank Of India','208','d','ddddd');

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` varchar(100) default NULL,
  `comment` varchar(1000) default NULL,
  `by1` varchar(100) default NULL,
  `date` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `comment` */

insert  into `comment`(`id`,`comment`,`by1`,`date`) values ('ID-00002','ccx xcxc  xccccccccccccccccccccccccccccccccc','nm','2011-11-16 18:11:45'),('ID-00001','fdfdf','nm','2011-11-16 18:12:13'),('ID-00002','ol,','nm','2011-11-16 18:12:45'),('ID-00002','ghgh','nm','2011-11-16 18:19:25'),('ID-00003','11111111','nm','2011-11-16 18:21:16'),('ID-00002','zxczxz','nm','2011-11-16 18:28:08'),('ID-00004','cvcvc','nm','2011-11-16 18:41:51'),('ID-00004','fghfgf','nm','2011-11-16 18:42:03'),('ID-00003','hgfh','a','2011-11-16 18:58:10'),('ID-00004','vb ','a','2011-11-16 18:58:27'),('ID-00005','java is googd book','puja','2011-11-17 19:19:56'),('ID-00004','fgfgfg','puja','2011-11-19 01:04:42'),('ID-00005','rfgtuhjnkm,','a','2011-11-19 01:36:51'),('ID-00004','TEACHER','dfd','2011-11-19 01:37:33'),('Dis-00003','ghjk,l','dfd','2011-11-19 22:31:17');

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `id` varchar(100) default NULL,
  `name` varchar(100) default NULL,
  `dis` varchar(100) default NULL,
  `file1` mediumtext,
  `file2` mediumtext,
  `file3` mediumtext,
  `file4` mediumtext,
  `date` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `course` */

insert  into `course`(`id`,`name`,`dis`,`file1`,`file2`,`file3`,`file4`,`date`) values ('Doc-00002','kk','hjhj','UserImage_1321770287703.jpg','UserImage_1321770287703.jpg','UserImage_1321770287703.mp3','UserImage_1321770287703.doc','2011-11-19 22:24:48');

/*Table structure for table `dcomment` */

DROP TABLE IF EXISTS `dcomment`;

CREATE TABLE `dcomment` (
  `id` varchar(100) default NULL,
  `comment` varchar(100) default NULL,
  `by1` varchar(100) default NULL,
  `date` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dcomment` */

insert  into `dcomment`(`id`,`comment`,`by1`,`date`) values ('Dis-00001','dfdfd','puja','2011-11-19 00:55:04'),('Dis-00001','dfdf','puja','2011-11-19 00:57:48'),('Dis-00002','java is languasges.','nm','2011-11-19 01:01:51'),('Dis-00002','java is programming','puja','2011-11-19 01:03:33'),('Dis-00002','fdfdf df dfadmin','puja','2011-11-19 01:10:46'),('Dis-00002','fdfdf df dfadmin','puja','2011-11-19 01:12:01'),('Dis-00003','dfd admin','a','2011-11-19 01:13:12'),('Dis-00002',' df df f df df ','a','2011-11-19 01:14:04'),('Dis-00003','df fd','a','2011-11-19 01:15:39'),('Dis-00002','BY TEACHER','a','2011-11-19 01:37:57'),('Dis-00002','GD','a','2011-11-19 01:39:04'),('Dis-00001','CBBBBBBBBBBBB','dfd','2011-11-19 01:39:30'),('Dis-00003','mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm','null','2011-11-19 21:42:01');

/*Table structure for table `discustion` */

DROP TABLE IF EXISTS `discustion`;

CREATE TABLE `discustion` (
  `id` varchar(100) default NULL,
  `title` varchar(100) default NULL,
  `by1` varchar(100) default NULL,
  `date` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `discustion` */

insert  into `discustion`(`id`,`title`,`by1`,`date`) values ('Dis-00001','dsdsd dsds','puja','2011-11-19 00:48:03'),('Dis-00002','what is java.','nm','2011-11-19 01:01:30'),('Dis-00003','dfdf dfd ','puja','2011-11-19 01:04:59');

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `id` varchar(100) default NULL,
  `type` varchar(1000) default NULL,
  `title` varchar(100) default NULL,
  `Image` mediumtext,
  `date` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `item` */

insert  into `item`(`id`,`type`,`title`,`Image`,`date`) values ('ID-00001','EBooks','kjkm','UserImage_1321494445890.jpg','2011-11-16 17:47:25'),('ID-00002','EBooks','kjkm','UserImage_1321494488578.jpg','2011-11-16 17:48:08'),('ID-00003','Notes','12232','UserImage_1321494754500.docx','2011-11-16 17:52:34'),('ID-00004','EBooks','zzd','UserImage_1321496912921.gif','2011-11-16 18:28:32'),('ID-00005','EBooks','java','UserImage_1321586369343.doc','2011-11-17 19:19:29'),('Dis-00003','EBooks','gjh','UserImage_1321693340765.jpg','2011-11-19 01:02:20');

/*Table structure for table `renewable` */

DROP TABLE IF EXISTS `renewable`;

CREATE TABLE `renewable` (
  `regid` varchar(100) default NULL,
  `branchid` varchar(100) default NULL,
  `username` varchar(100) default NULL,
  `branchname` varchar(100) default NULL,
  `bookid` varchar(100) default NULL,
  `bookname` varchar(100) default NULL,
  `issue` varchar(100) default NULL,
  `renewal` varchar(100) default NULL,
  `extend` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `renewable` */

insert  into `renewable`(`regid`,`branchid`,`username`,`branchname`,`bookid`,`bookname`,`issue`,`renewal`,`extend`) values ('j','jc','j','j','B1009','j','27-02-2012','Yes','29-02-2012');

/*Table structure for table `returning` */

DROP TABLE IF EXISTS `returning`;

CREATE TABLE `returning` (
  `regid` varchar(100) default NULL,
  `branchid` varchar(100) default NULL,
  `username` varchar(100) default NULL,
  `branchname` varchar(100) default NULL,
  `bookid` varchar(100) default NULL,
  `bookname` varchar(100) default NULL,
  `issue` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `returning` */

insert  into `returning`(`regid`,`branchid`,`username`,`branchname`,`bookid`,`bookname`,`issue`) values ('df','df','df','df','B1009','dfd','01-03-2012');

/*Table structure for table `signup` */

DROP TABLE IF EXISTS `signup`;

CREATE TABLE `signup` (
  `UserID` varchar(50) NOT NULL default '',
  `uname` varchar(50) NOT NULL default '',
  `pass` varchar(50) default NULL,
  `FirstName` varchar(100) default NULL,
  `LastName` varchar(100) default NULL,
  `Gender` varchar(25) default NULL,
  `DOB` varchar(25) default NULL,
  `ContactNo` varchar(15) default NULL,
  `EmailID` varchar(100) default NULL,
  `Address` varchar(200) default NULL,
  `City` varchar(100) default NULL,
  `PinCode` varchar(10) default NULL,
  `State` varchar(100) default NULL,
  `Country` varchar(100) default NULL,
  `image` varchar(500) default NULL,
  `branch` varchar(100) default NULL,
  `status` varchar(100) default 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `signup` */

insert  into `signup`(`UserID`,`uname`,`pass`,`FirstName`,`LastName`,`Gender`,`DOB`,`ContactNo`,`EmailID`,`Address`,`City`,`PinCode`,`State`,`Country`,`image`,`branch`,`status`) values ('Citizen-00001','df','df','df','','Select','','','','','Select','','','Select','UserImage_1321124353031.jpg',NULL,'false'),('Client-00001','fff','fff','cxc','xcx','Female','23-11-2011','xc','xc','xcxc','Noida','xc','xcx','Africa','UserImage_1321167504734.jpg',NULL,'false'),('Client-00002','nm','nm','nm','nm','Select','ll','ll','llk','jjh','Gurgoan','123','gg','Select','UserImage_1321168354406.jpg',NULL,'false'),('STU-00001','dfd','fdf','df','df','Male','','','','','Select','','','Select','UserImage_1321489980796.jpg',NULL,'false'),('STU-00002','puja','puja',' nn','bnb','Female','','','bnbnb','nbnb','Gurgoan','','hjhjhj','India','UserImage_1321497806984.gif',NULL,'false'),('STU-00003','d','d','dd','dd','Female','27-02-2012','','','','Select','','','Select','UserImage_1330380914847.jpg',NULL,'false'),('STU-00004','qq','qq','qq','qq','Female','22-02-2012','','','','Select','','','Select','UserImage_1330585294028.jpg','ME','false');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `UserID` varchar(50) NOT NULL default '',
  `uname` varchar(50) NOT NULL default '',
  `pass` varchar(50) default NULL,
  `FirstName` varchar(100) default NULL,
  `LastName` varchar(100) default NULL,
  `Gender` varchar(25) default NULL,
  `DOB` varchar(25) default NULL,
  `ContactNo` varchar(15) default NULL,
  `EmailID` varchar(100) default NULL,
  `Address` varchar(200) default NULL,
  `City` varchar(100) default NULL,
  `PinCode` varchar(10) default NULL,
  `State` varchar(100) default NULL,
  `Country` varchar(100) default NULL,
  `image` varchar(500) default NULL,
  `status` varchar(100) default 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `teacher` */

insert  into `teacher`(`UserID`,`uname`,`pass`,`FirstName`,`LastName`,`Gender`,`DOB`,`ContactNo`,`EmailID`,`Address`,`City`,`PinCode`,`State`,`Country`,`image`,`status`) values ('Tea-00001','dfd','dfd','','','Select','','','','','Select','','','Select','UserImage_1321694389015.jpg','false');

/*Table structure for table `withdrawbook` */

DROP TABLE IF EXISTS `withdrawbook`;

CREATE TABLE `withdrawbook` (
  `rid` varchar(100) default NULL,
  `bid` varchar(100) default NULL,
  `username` varchar(100) default NULL,
  `branchname` varchar(100) default NULL,
  `bookid` varchar(100) default NULL,
  `bookname` varchar(100) default NULL,
  `bookauthor` varchar(100) default NULL,
  `issuedate` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `withdrawbook` */

insert  into `withdrawbook`(`rid`,`bid`,`username`,`branchname`,`bookid`,`bookname`,`bookauthor`,`issuedate`) values ('j','j','j','j','B1009','j','j','26-02-2012'),('df','df','df','df','B1009','dfd','df','28-02-2012');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
