-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: classroomfriends
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `aboutMe` VARCHAR(100) NOT NULL,
  `tagline` VARCHAR(60) NOT NULL,
  `coverPicture` VARCHAR(200) NOT NULL,
  `profilePicture` VARCHAR(200) NOT NULL,
  `isGraduated` INT(1) NOT NULL,
  `isActive` INT(1) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` 
VALUES 
('sarah@gmail.com','Sarah Cruiz','hellopeople','30/12/1999','Male','Roorkee','India','Dancer','tagline','123.png','pewwes.png',0,1),
('shubhi@gmail.com','Subhi Jain','helloworld','3/1/1991','Female','Ropar','India','Nature Lover','tagline','12223.png','pew22wes.png',1,1),
('sharma_s@gmail.com','Shyam Sharma','myworld','15/2/1999','Male','Puri','India','Alcoholic','tagline','12345.png','dp.png',0,1),
('rameshdutta1234@gmail.com','Ramesh Dutta','thisisme','5/9/1989','Male','Kanpur','India','Music Enthusiast','tagline','1234wwd5.png','dpwdwd.png',1,1),
('jyotiprabhu@gmail.com','Jyoti Prabhu','jyotithegreat','31/10/1997','Female','Mumbai','India','Beach is life','tagline','123421wwd5.png','dpqwqwdwd.png',1,1)
('monika_jain@gmail.com','Monika Jain','monika.jain','23/3/1990','Female','Mohali','India','Foodie','tagline','123asa421wwd5.png','dpqwsadqwdwd.png',1,1)
('ram.vishnu@gmail.com','Ram Vishnu','ramvthegreat','6/7/1993','Male','Ludhiana','India','Eating food whole day','tagline','123421aswwd5.png','daspqwqwdwd.png',1,1)
('akhilanthony@gmail.com','Akhil Anthony','bestrong@akhil','20/10/1991','Male','Pune','India','Software Developer','tagline','123421wwas5.png','dpqwqwasdwd.png',1,1)
;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



create table Interests (
     `Interest` VARCHAR(60) NOT NULL ,
     `email` VARCHAR(100) NOT NULL,
     primary key(Interest,email),
     foreign key(email) references users(email)
     ) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO Interests 
VALUES 
('sarah@gmail.com','Dancing'),
('shubhi@gmail.com','Nature Observing'),
('sharma_s@gmail.com','Daaru pai Charcha!'),
('rameshdutta1234@gmail.com','Music Lover'),
('jyotiprabhu@gmail.com','Beach is life'),
('monika_jain@gmail.com', 'Food'),
('ram.vishnu@gmail.com','Fun loving'),
('akhilanthony@gmail.com','techie')
;


create table Friends (
    `email1` VARCHAR(100) NOT NULL,
    `email2` VARCHAR(100) NOT NULL,
    `friendsSince` DATETIME ,
    primary key(email1,email2),
    foreign key (email1) references users(email),
    foreign key (email2) references users(email)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Friends 
VALUES 
('sarah@gmail.com','shubhi@gmail.com',10/09/12 13:05),
('shubhi@gmail.com','akhilanthony@gmail.com',10/09/15 13:05),
('sharma_s@gmail.com','ram.vishnu@gmail.com',10/09/13 13:05),
('rameshdutta1234@gmail.com','jyotiprabhu@gmail.com',10/09/07 13:05),
('jyotiprabhu@gmail.com','akhilanthony@gmail.com',10/09/09 13:05),
('monika_jain@gmail.com', 'jyotiprabhu@gmail.com',10/09/01 13:05),
('akhilanthony@gmail.com','ram.vishnu@gmail.com',10/09/02 13:05)
;


create table Album(
    `pictureURL` VARCHAR(200) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    primary key(pictureURL,email),
    foreign key (email) references users(email)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Album
VALUES 
('12inepnd13.jpg','shubhi@gmail.com'),
('12inepnfsfd13.jpg','akhilanthony@gmail.com'),
('12inepnd13aa.jpg','ram.vishnu@gmail.com'),
('asc12inepnd13.jpg','rameshdutta1234@gmail.com'),
('ascfsvfsv1a2.jpg','sarah@gmail.com'),
('incdcepnd13.jpg', 'jyotiprabhu@gmail.com'),
('3rfainepnd13.jpg','ram.vishnu@gmail.com')
;


Create table SentMessage( 
    `messageTimestamp` DATETIME,
    `email1` varchar(100) not null,
    `email2` varchar(100) not null,
    `message` varchar(500) not null,
    `isSeen` int(1) not null,
    primary key(messageTimestamp,email1,email2),
    foreign key(email1) references users(email),
    foreign key(email2) references users(email)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO SentMessage 
VALUES 
(20/09/17 13:01,'sarah@gmail.com','shubhi@gmail.com','Hows life going?',1),
(15/02/17 15:11,'shubhi@gmail.com','akhilanthony@gmail.com','Met Raja today! Great fun!!',0),
(20/08/17 01:39,'sharma_s@gmail.com','ram.vishnu@gmail.com','Finally got my ticket to US. Yaayyyy!!',1),
(29/01/17 19:48,'rameshdutta1234@gmail.com','jyotiprabhu@gmail.com','Meet me asap.',1),
(22/05/17 14:07,'jyotiprabhu@gmail.com','akhilanthony@gmail.com','Its too late now. :(',0),
(12/07/17 08:55,'monika_jain@gmail.com', 'jyotiprabhu@gmail.com','Come join the party!',0),
(19/01/17 14:51,'akhilanthony@gmail.com','ram.vishnu@gmail.com','Life sucks!!!',0)
;


Create table Work(
`designation` varchar(100) not null,
`email1` varchar(100) not null,
`company` varchar(100) not null,
`st` VARCHAR(100),
`en` VARCHAR(100),
`description` varchar(100) not null,
primary key(designation,email1,company),
foreign key(email1) references users(email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Work 
VALUES 
('Software Developer','sarah@gmail.com','LiveMint','20/09/16','20/10/17','Handled major tech part'),
('Marketing Head','akhilanthony@gmail.com','Times of India','10/09/16','20/10/17','Marketing'),
('Tech lead','sharma_s@gmail.com','CityFlow','30/11/16','04/02/17','Team leading'),
('Testing lead','jyotiprabhu@gmail.com','Entropy Innovations','03/01/15','24/12/17','Testing'),
('Business Analyst','monika_jain@gmail.com','i3 Consulting','23/11/12','24/12/16','Analyst'),
('Testing Engineer','rameshdutta1234@gmail.com','Locomotive Ltd.','23/11/12','24/12/16','Tester'),
('Risk Analyst','shubhi@gmail.com','Citi Bank','23/11/14','24/12/16','Risk Analysis')
;


create table University(
	universityName varchar(100) not null,
	city varchar(100) not null,
	primary key(universityName,city)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO University 
VALUES 
('Indian Institute of Technology Roorkee','Roorkee'),
('Indian Institute of Technology Bombay','Mumbai'),
('Indian Institute of Technology Ropar','Ropar'),
('Indian Institute of Technology Delhi','Delhi'),
('Indian Institute of Technology Kanpur','Kanpur')
;

create table WorkPlace(
	company varchar(100) not null,
	city varchar(100) not null,
	primary key(company,city)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO WorkPlace
VALUES 
('Capgemini','Gurgaon'),
('Microland','Bangalore'),
('Red Hat Inc.','Bangalore'),
('ICICI Lombard','Bangalore'),
('Apple Inc.','Hyderabad'),
;


Create table Work(
designation varchar(100) not null,
email1 varchar(100) not null,
company varchar(100) not null,
st VARCHAR(100),
en VARCHAR(100),
description varchar(100) not null,
primary key(designation,email1,company),
foreign key(email1) references users(email),
foreign key(company) references users(company)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO Work 
VALUES 
('Software Developer','sarah@gmail.com','LiveMint','20/09/16','20/10/17','Handled major tech part'),
('Marketing Head','akhilanthony@gmail.com','Times of India','10/09/16','20/10/17','Marketing'),
('Tech lead','sharma_s@gmail.com','CityFlow','30/11/16','04/02/17','Team leading'),
('Testing lead','jyotiprabhu@gmail.com','Entropy Innovations','03/01/15','24/12/17','Testing'),
('Business Analyst','monika_jain@gmail.com','i3 Consulting','23/11/12','24/12/16','Analyst'),
('Testing Engineer','rameshdutta1234@gmail.com','Locomotive Ltd.','23/11/12','24/12/16','Tester'),
('Risk Analyst','shubhi@gmail.com','Citi Bank','23/11/14','24/12/16','Risk Analysis')
;

Create table Education(
email1 varchar(100) not null,
universityName varchar(100) not null,
st VARCHAR(100),
en VARCHAR(100),
description varchar(100) not null,
primary key(email1,universityName),
foreign key(email1) references users(email),
foreign key(universityName) references University(universityName)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Education
VALUES 
('sarah@gmail.com','Indian Institute of Technology Roorkee','20/09/13','20/10/17','Civil'),
('akhilanthony@gmail.com','Indian Institute of Technology Ropar','10/09/13','20/10/17','ECE'),
('sharma_s@gmail.com','Indian Institute of Technology Ropar','30/11/13','04/02/17','CSE'),
('jyotiprabhu@gmail.com','Indian Institute of Technology Bombay','03/01/15','24/12/17','Chem'),
('monika_jain@gmail.com','Indian Institute of Technology Kanpur','23/11/12','24/12/16','CSE'),
('rameshdutta1234@gmail.com','Indian Institute of Technology Delhi','23/11/12','24/12/16','EE'),
('shubhi@gmail.com','Indian Institute of Technology Kanpur','23/11/14','24/12/16','MNC')
;

create table Article(
	email1 varchar(100) not null,
	articleid varchar(100) not null,
	description varchar(100) not null,
	timeposted DATETIME,
	imageURL varchar(200) not null,
	primary key(articleid),
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Article
VALUES 
('122223333333333333','shubhi@gmail.com','In LA!!!','10/09/17 13:05','23dfcwfe3d.jpg'),
('12222222444444','akhilanthony@gmail.com','Life goes on.','18/09/17 13:01','23dfcsdwfe3d.jpg'),
('22222244444442','ram.vishnu@gmail.com','My new car.','10/06/17 19:01','23dfcsdddddde3d.jpg'),
('1344444343333333','rameshdutta1234@gmail.com','NYC streetsss!!!!!','10/01/17 13:41','23dfcsdwfe3dwf.jpg'),
('3333222277777777','sarah@gmail.com','Party in LLAAA!!!','12/09/17 09:01','23dfcsddewfe3d.jpg'),
('55677777777777754','jyotiprabhu@gmail.com','Love you sooooo much!','10/09/17 11:01','23dfcsdwfsfe3d.jpg'),
('444456577778723','ram.vishnu@gmail.com','My Baby','20/11/16 03:29','23dfcsdaaaaa3wfe3d.jpg')
;


create table ArticleLiked(
	email1 varchar(100) not null,
	articleid varchar(100) not null,
	primary key(email1,articleid),
	foreign key(email1) references users(email),
	foreign key(articleid) references Article(articleid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO ArticleLiked
VALUES 
('shubhi@gmail.com','122223333333333333'),
('akhilanthony@gmail.com','12222222444444'),
('ram.vishnu@gmail.com','22222244444442'),
('rameshdutta1234@gmail.com','1344444343333333'),
('sarah@gmail.com','3333222277777777'),
('jyotiprabhu@gmail.com','55677777777777754'),
('ram.vishnu@gmail.com','444456577778723')
;


create table Viewed(
	email1 varchar(100) not null,
	articleid varchar(100) not null,
	ViewTime DATETIME,
	primary key(email1,articleid),
	foreign key(email1) references users(email),
	foreign key(articleid) references Article(articleid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Viewed
VALUES 
('shubhi@gmail.com','122223333333333333','20/09/17 13:05'),
('akhilanthony@gmail.com','12222222444444','28/09/17 13:01'),
('ram.vishnu@gmail.com','22222244444442','20/06/17 19:01'),
('rameshdutta1234@gmail.com','1344444343333333','20/01/17 13:41'),
('sarah@gmail.com','3333222277777777','22/09/17 09:01'),
('jyotiprabhu@gmail.com','55677777777777754','20/09/17 11:01'),
('ram.vishnu@gmail.com','444456577778723','29/11/16 03:29')
;

create table CommentedOn(
	email1 varchar(100) not null,
	articleid varchar(100) not null,
	CommentTime DATETIME,
	Comment varchar(200) not null,
	primary key(email1,articleid,CommentTime),
	foreign key(email1) references users(email),
	foreign key(articleid) references Article(articleid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO CommentedOn 
VALUES 
('shubhi@gmail.com','123222222222333','20/09/17 13:01','Hows life there?'),
('akhilanthony@gmail.com','12222234546454','15/02/17 15:11','Met Raja today. Missed you!'),
('sharma_s@gmail.com','819283779239','20/08/17 01:39','Finally got my ticket to US.'),
('rameshdutta1234@gmail.com','134532432243334','29/01/17 19:48','Meet me someone asap.'),
('jyotiprabhu@gmail.com','34555555555555533333','22/05/17 14:07','Its too early.'),
('monika_jain@gmail.com','5555555555444444422','12/07/17 08:55','Come join us!'),
('ram.vishnu@gmail.com','5645344444444','19/01/17 14:51','Life sucks here!!!')
;

create table Settings(
	email1 varchar(100) not null,
	email2 varchar(100) not null,
	enablefollow INT(1),
	sendNotifications INT(1),
	enableTextMessages INT(1),
	enableTagging INT(1),
	primary key(email1,email2),
	foreign key(email1) references users(email),
	foreign key(email2) references users(email2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO Settings
VALUES 
('sarah@gmail.com','shubhi@gmail.com',1,1,1,1),
('shubhi@gmail.com','akhilanthony@gmail.com',1,0,1,1),
('sharma_s@gmail.com','ram.vishnu@gmail.com',1,1,0,0),
('rameshdutta1234@gmail.com','jyotiprabhu@gmail.com',1,0,1,1),
('jyotiprabhu@gmail.com','akhilanthony@gmail.com',1,1,1,0),
('monika_jain@gmail.com', 'jyotiprabhu@gmail.com',1,0,0,0),
('akhilanthony@gmail.com','ram.vishnu@gmail.com',1,1,1,1)
;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-07 15:47:46
