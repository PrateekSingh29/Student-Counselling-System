/*
SQLyog Community Edition- MySQL GUI v5.22a
Host - 5.0.77-community-nt : Database - onlinesmartcampus
*********************************************************************
Server version : 5.0.77-community-nt
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

insert  into `auto_gen_id`(`form_name`,`prefix_id`) values ('vendor','Vendor-00002'),('client','Client-00002'),('product','P-00003'),('citizen','Citizen-00001'),('payment','DRAFT-00005'),('Offer','Offer-00004'),('stu','STU-00017'),('doc','Doc-00003'),('id','Dis-00003'),('dis','Dis-00003'),('tea','Tea-00010');

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

insert  into `book`(`bookid`,`bookname`,`bookauthor`,`bookcategrory`,`bookstatus`,`image`,`price`) values ('B1009','h','h','h','Avaliable','images_1330321842127.jpg','200'),('B1010','Ds',NULL,NULL,NULL,NULL,NULL);

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

insert  into `course`(`id`,`name`,`dis`,`file1`,`file2`,`file3`,`file4`,`date`) values ('Doc-00002','kk','hjhj','UserImage_1321770287703.jpg','UserImage_1321770287703.jpg','UserImage_1321770287703.mp3','UserImage_1321770287703.doc','2011-11-19 22:24:48'),('Doc-00003','B.tech (IT)','information technollogy','UserImage_1334086772476.doc','UserImage_1334086772476.jpg',NULL,NULL,'2012-04-11 01:09:32');

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

insert  into `renewable`(`regid`,`branchid`,`username`,`branchname`,`bookid`,`bookname`,`issue`,`renewal`,`extend`) values ('j','jc','j','j','B1009','j','27-02-2012','Yes','29-02-2012'),('ab','bt-it','alka','it','B1010','Ds','20-03-2012','yes','30-02-2012');

/*Table structure for table `result` */

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `id` varchar(100) default NULL,
  `name` varchar(100) default NULL,
  `course` varchar(100) default NULL,
  `sem` varchar(100) default NULL,
  `pep1` varchar(100) default NULL,
  `pep2` varchar(100) default NULL,
  `pep3` varchar(100) default NULL,
  `pep4` varchar(100) default NULL,
  `pep5` varchar(100) default NULL,
  `pep6` varchar(100) default NULL,
  `total` varchar(100) default NULL,
  `grade` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `result` */

insert  into `result`(`id`,`name`,`course`,`sem`,`pep1`,`pep2`,`pep3`,`pep4`,`pep5`,`pep6`,`total`,`grade`) values ('STU-00015','fd','na','na','77','99','66','89','67','88','486','first'),('STU-00014','erww','bca','2','56','78','67','9','89','90','389','first');

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

insert  into `signup`(`UserID`,`uname`,`pass`,`FirstName`,`LastName`,`Gender`,`DOB`,`ContactNo`,`EmailID`,`Address`,`City`,`PinCode`,`State`,`Country`,`image`,`branch`,`status`) values ('Citizen-00001','df','df','df','','Select','','','','','Select','','','Select','UserImage_1321124353031.jpg',NULL,'false'),('Client-00001','fff','fff','cxc','xcx','Female','23-11-2011','xc','xc','xcxc','Noida','xc','xcx','Africa','UserImage_1321167504734.jpg',NULL,'false'),('Client-00002','nm','nm','nm','nm','Select','ll','ll','llk','jjh','Gurgoan','123','gg','Select','UserImage_1321168354406.jpg',NULL,'false'),('STU-00001','dfd','fdf','df','df','Male','','','','','Select','','','Select','UserImage_1321489980796.jpg',NULL,'false'),('STU-00002','puja','puja','puja','singh','Female','','','bnbnb','nbnb','Gurgoan','','hjhjhj','India','UserImage_1321497806984.gif',NULL,'false'),('STU-00003','d','d','dd','dd','Female','27-02-2012','','','','Select','','','Select','UserImage_1330380914847.jpg',NULL,'false'),('STU-00004','qq','qq','qq','qq','Female','22-02-2012','','','','Select','','','Select','UserImage_1330585294028.jpg','ME','false'),('STU-00005','alka','b','alka','singh','Female','27-03-2012','9555085935','alkasngh144@gmail.com','sector-62','Delhi','201301','U.P.','India','UserImage_1330690884402.jpg','IT','false'),('STU-00006','vicky','singh','vicky','kumar','Male','11-07-1991','9341988539','vickysujit@gmail.com','noi','Noida','98765','u.p','Select','UserImage_1330704037041.jpg','EC','false'),('STU-00010','alka','singh','alka','singh','Female','20-03-1989','9555085935','alkasngh144@gmail.com','noida','Noida','201301','U.P','India','UserImage_1332225129576.jpg','IT','false'),('STU-00011','shalu','aa','shalu','maurya','Female','','','','','Select','','','Select','UserImage_1332225997183.jpg','ME','false'),('STU-00012','priya1','priya','priya','gupta','Female','10-09-1991','8860269010','priyagupta9110@gmail.com','mgm girls hostel','Noida','201301','U.p','India','UserImage_1332228629112.jpg','IT','false'),('STU-00013','fgsffg','ghdh','fdfg','dhch','Male','19-03-2012','','','','Select','123','','Select','UserImage_1332233591683.jpg','ME','false'),('STU-00014','','','','','Select','','','','','Select','','','Select','UserImage_1332236585712.jpg','Select','false'),('STU-00015','pradeep','p','pradeep','kumar','Male','19-03-1984','9010223356','akivaas9@gmail.com','sector32','Select','','','Select','UserImage_1332238402618.jpg','ME','false'),('STU-00016','Rahul','b','a','a','Male','21-04-1980','46546542423','rahul@gmail.com','sdffs','Delhi','1313','dwsds','Australia','UserImage_1334146792825.jpg','EC','false'),('STU-00017','dfgh','dfghjk','dfghj','fghj','Male','27-03-2012','4567345678567','paliwalmisty91@gmail.com','rdfgh','Delhi','34567','dfghj','Australia','UserImage_1334147770990.jpg','EC','false');

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

insert  into `teacher`(`UserID`,`uname`,`pass`,`FirstName`,`LastName`,`Gender`,`DOB`,`ContactNo`,`EmailID`,`Address`,`City`,`PinCode`,`State`,`Country`,`image`,`status`) values ('Tea-00001','dfd','dfd','','','Select','','','','','Select','','','Select','UserImage_1321694389015.jpg','false'),('Tea-00002','shalu','shalu','shalu','maurya','Female','29-03-1977','9010223356','shalu@gmail.com','sec-62','Delhi','445511','delhi','India','UserImage_1332230538423.jpg','false'),('Tea-00003','neelam','neelam','neelam','jain','Female','12-03-1974','','','','Select','','','Select','UserImage_1332230599553.jpg','false'),('Tea-00004','asim','asim','mh','asim','Male','27-03-1979','9555','','','Select','','','Select','UserImage_1332230701579.jpg','false'),('Tea-00005','silpi','silpi','silpi','singh','Female','10-04-2012','9010223356','silpi@gmail.com','noida','Delhi','201301','delhi','India','UserImage_1334085392437.jpg','false'),('Tea-00006','anurag','anurag','anurag','kumar','Male','12-04-2012','08919283344','akivaas9@gmail.com','mayur vihar','Noida','223301','u.p','India','UserImage_1334085542061.jpg','false'),('Tea-00007','karamjeet','karamjjeet','karamjeet','kaur','Female','10-04-2012','9010998871','karam@gmail.com','dfg','Delhi','661245','delhi','India','UserImage_1334085660204.jpg','false'),('Tea-00008','anuradha','anuradha','anuradha','singh','Female','23-04-2012','0987654321','alkasngh144@gmail.com','sector81','Gurgoan','229701','U.P.','India','UserImage_1334085799066.jpg','false'),('Tea-00009','neena','neena','neena','thakur','Female','11-01-1982','8783264972','neena@yahoo.ca','xyz','Delhi','201301','delhi','India','UserImage_1334085894166.jpg','false'),('Tea-00010','zia','zia','zia','khan','Female','02-04-1985','08919283346','zia@gmail.com','anank','Delhi','12345','delhi','India','UserImage_1334085980052.jpg','false');

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
