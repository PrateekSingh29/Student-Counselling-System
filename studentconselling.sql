/*
SQLyog Community Edition- MySQL GUI v5.22a
Host - 5.0.19-nt : Database - studentconsellingsystem
*********************************************************************
Server version : 5.0.19-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `studentconsellingsystem`;

USE `studentconsellingsystem`;

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

/*Table structure for table `assigninsitute` */

DROP TABLE IF EXISTS `assigninsitute`;

CREATE TABLE `assigninsitute` (
  `id` varchar(100) default NULL,
  `branch` varchar(100) default NULL,
  `insitute` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assigninsitute` */

insert  into `assigninsitute`(`id`,`branch`,`insitute`) values ('nnnn','ME','cc'),('amit','ME','cc'),('amit','EC','cc');

/*Table structure for table `auto_gen_id` */

DROP TABLE IF EXISTS `auto_gen_id`;

CREATE TABLE `auto_gen_id` (
  `form_name` varchar(100) NOT NULL default '',
  `prefix_id` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auto_gen_id` */

insert  into `auto_gen_id`(`form_name`,`prefix_id`) values ('vendor','Vendor-00002'),('client','Client-00002'),('product','P-00003'),('citizen','Citizen-00001'),('payment','DRAFT-00005'),('Offer','Offer-00004'),('stu','STU-00019'),('doc','Doc-00003'),('ins','INS-00002'),('dis','Dis-00003'),('tea','Tea-00010');

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

/*Table structure for table `conselling` */

DROP TABLE IF EXISTS `conselling`;

CREATE TABLE `conselling` (
  `collage1` varchar(100) default NULL,
  `branch1` varchar(100) default NULL,
  `collage2` varchar(100) default NULL,
  `branch2` varchar(100) default NULL,
  `collage3` varchar(100) default NULL,
  `branch3` varchar(100) default NULL,
  `name` varchar(100) default NULL,
  `name1` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `conselling` */

insert  into `conselling`(`collage1`,`branch1`,`collage2`,`branch2`,`collage3`,`branch3`,`name`,`name1`) values ('cc','ME','cc','EC','cc','IT','mmmmm',NULL),('cc','ME','cc','EC','cc','EC','344544','mmmm');

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

/*Table structure for table `insitute` */

DROP TABLE IF EXISTS `insitute`;

CREATE TABLE `insitute` (
  `UserID` varchar(100) default NULL,
  `Image` varchar(100) default NULL,
  `uname` varchar(100) default NULL,
  `pass` varchar(100) default NULL,
  `branch1` varchar(100) default NULL,
  `total1` varchar(100) default NULL,
  `branch2` varchar(100) default NULL,
  `tota12` varchar(100) default NULL,
  `branch3` varchar(100) default NULL,
  `total3` varchar(100) default NULL,
  `branch4` varchar(100) default NULL,
  `total4` varchar(100) default NULL,
  `ContactNo` varchar(100) default NULL,
  `EmailID` varchar(100) default NULL,
  `Address` varchar(100) default NULL,
  `City` varchar(100) default NULL,
  `PinCode` varchar(100) default NULL,
  `State` varchar(100) default NULL,
  `Country` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `insitute` */

insert  into `insitute`(`UserID`,`Image`,`uname`,`pass`,`branch1`,`total1`,`branch2`,`tota12`,`branch3`,`total3`,`branch4`,`total4`,`ContactNo`,`EmailID`,`Address`,`City`,`PinCode`,`State`,`Country`) values ('Tea-00011','UserImage_1334337796521.jpg','cc','cc','ME','200','EC','300','IT','400','EC','500','99666656556','puja@gmail.com','sd','Delhi','2323','ds','Africa');

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
  `total` varchar(100) default NULL,
  `status` varchar(100) default 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `signup` */

insert  into `signup`(`UserID`,`uname`,`pass`,`FirstName`,`LastName`,`Gender`,`DOB`,`ContactNo`,`EmailID`,`Address`,`City`,`PinCode`,`State`,`Country`,`image`,`branch`,`total`,`status`) values ('STU-00003','d','d','dd','dd','Female','27-02-2012','','','','Select','','','Select','UserImage_1330380914847.jpg',NULL,NULL,'false'),('STU-00004','qq','qq','qq','qq','Female','22-02-2012','','','','Select','','','Select','UserImage_1330585294028.jpg','ME',NULL,'false'),('STU-00005','alka','b','alka','singh','Female','27-03-2012','9555085935','alkasngh144@gmail.com','sector-62','Delhi','201301','U.P.','India','UserImage_1330690884402.jpg','IT',NULL,'false'),('STU-00006','vicky','singh','vicky','kumar','Male','11-07-1991','9341988539','vickysujit@gmail.com','noi','Noida','98765','u.p','Select','UserImage_1330704037041.jpg','EC',NULL,'false'),('STU-00010','alka','singh','alka','singh','Female','20-03-1989','9555085935','alkasngh144@gmail.com','noida','Noida','201301','U.P','India','UserImage_1332225129576.jpg','IT',NULL,'false'),('STU-00011','shalu','aa','shalu','maurya','Female','','','','','Select','','','Select','UserImage_1332225997183.jpg','ME',NULL,'false'),('STU-00012','priya1','priya','priya','gupta','Female','10-09-1991','8860269010','priyagupta9110@gmail.com','mgm girls hostel','Noida','201301','U.p','India','UserImage_1332228629112.jpg','IT',NULL,'false'),('STU-00013','fgsffg','ghdh','fdfg','dhch','Male','19-03-2012','','','','Select','123','','Select','UserImage_1332233591683.jpg','ME',NULL,'false'),('STU-00014','','','','','Select','','','','','Select','','','Select','UserImage_1332236585712.jpg','Select',NULL,'false'),('STU-00015','p','p','pradeep','kumar','Male','19-03-1984','9010223356','akivaas9@gmail.com','sector32','Select','','','Select','UserImage_1332238402618.jpg','ME',NULL,'false'),('STU-00016','Rahul','b','a','a','Male','21-04-1980','46546542423','rahul@gmail.com','sdffs','Delhi','1313','dwsds','Australia','UserImage_1334146792825.jpg','EC',NULL,'false'),('STU-00017','dfgh','dfghjk','dfghj','fghj','Male','27-03-2012','4567345678567','paliwalmisty91@gmail.com','rdfgh','Delhi','34567','dfghj','Australia','UserImage_1334147770990.jpg','EC',NULL,'false'),('STU-00018','nnnn','nnnn','nn','OBC','Female','13-04-2012','99666656556','puja@gmail.com','g','Delhi','777','kj','America','UserImage_1334338634561.jpg','ME','200','false'),('STU-00019','amit','1234','amit','Genral','Male','29-06-1991','8882554294','jaipal.raj17@gmail.com','vill-gzb','Gurgoan','218111','utter','India','UserImage_1334355594184.jpg','EC','100','false');

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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
