-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: classroomfriends
-- ------------------------------------------------------
-- Server version	5.7.9

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `pictureURL` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`pictureURL`,`email`),
  KEY `email` (`email`),
  CONSTRAINT `album_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES ('12inepnfsfd13.jpg','akhilanthony@gmail.com'),('incdcepnd13.jpg','jyotiprabhu@gmail.com'),('12inepnd13aa.jpg','ram.vishnu@gmail.com'),('3rfainepnd13.jpg','ram.vishnu@gmail.com'),('asc12inepnd13.jpg','rameshdutta1234@gmail.com'),('ascfsvfsv1a2.jpg','sarah@gmail.com'),('12inepnd13.jpg','shubhi@gmail.com');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `articleid` varchar(100) NOT NULL,
  `email1` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `timeposted` datetime DEFAULT NULL,
  `imageURL` varchar(200) NOT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES ('122223333333333333','shubhi@gmail.com','In LA!!!','2010-09-17 13:05:00','23dfcwfe3d.jpg'),('12222222444444','akhilanthony@gmail.com','Life goes on.','2018-09-17 13:01:00','23dfcsdwfe3d.jpg'),('22222244444442','ram.vishnu@gmail.com','My new car.','2010-06-17 19:01:00','23dfcsdddddde3d.jpg'),('1344444343333333','rameshdutta1234@gmail.com','NYC streetsss!!!!!','2010-01-17 13:41:00','23dfcsdwfe3dwf.jpg'),('3333222277777777','sarah@gmail.com','Party in LLAAA!!!','2012-09-17 09:01:00','23dfcsddewfe3d.jpg'),('55677777777777754','jyotiprabhu@gmail.com','Love you sooooo much!','2010-09-17 11:01:00','23dfcsdwfsfe3d.jpg'),('11112222223335556','sarah@gmail.com','Enjoying in miami!!!!','2010-10-17 11:01:00','23dfcsdajswfsfe3d.jpg');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articleliked`
--

DROP TABLE IF EXISTS `articleliked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articleliked` (
  `email1` varchar(100) NOT NULL,
  `articleid` varchar(100) NOT NULL,
  PRIMARY KEY (`email1`,`articleid`),
  KEY `articleid` (`articleid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articleliked`
--

LOCK TABLES `articleliked` WRITE;
/*!40000 ALTER TABLE `articleliked` DISABLE KEYS */;
INSERT INTO `articleliked` VALUES ('akhilanthony@gmail.com','12222222444444'),('jyotiprabhu@gmail.com','55677777777777754'),('ram.vishnu@gmail.com','22222244444442'),('ram.vishnu@gmail.com','444456577778723'),('rameshdutta1234@gmail.com','1344444343333333'),('rameshdutta1234@gmail.com','3333222277777777'),('sarah@gmail.com','3333222277777777'),('sharma_s@gmail.com','3333222277777777'),('shubhi@gmail.com','122223333333333333');
/*!40000 ALTER TABLE `articleliked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentedon`
--

DROP TABLE IF EXISTS `commentedon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commentedon` (
  `email` varchar(100) NOT NULL,
  `articleid` varchar(100) NOT NULL,
  `CommentTime` datetime NOT NULL,
  `Comment` varchar(200) NOT NULL,
  PRIMARY KEY (`email`,`articleid`,`CommentTime`),
  KEY `articleid` (`articleid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentedon`
--

LOCK TABLES `commentedon` WRITE;
/*!40000 ALTER TABLE `commentedon` DISABLE KEYS */;
INSERT INTO `commentedon` VALUES ('shubhi@gmail.com','123222222222333','2015-07-17 07:01:00','Hows life there?'),('akhilanthony@gmail.com','12222234546454','2015-02-17 15:11:00','Met Raja today. Missed you!'),('sharma_s@gmail.com','819283779239','2016-08-17 01:39:00','Finally got my ticket to US.'),('rameshdutta1234@gmail.com','134532432243334','2017-01-17 19:48:00','Meet me someone asap.'),('jyotiprabhu@gmail.com','34555555555555533333','2016-05-17 14:07:00','Its too early.'),('monika_jain@gmail.com','5555555555444444422','2012-07-17 08:55:00','Come join us!'),('ram.vishnu@gmail.com','5645344444444','2015-01-17 14:51:00','Life sucks here!!!'),('ram.vishnu@gmail.com','123222222222333','2015-07-17 08:55:00','This is it!!!!'),('sarah@gmail.com','123222222222333','2015-07-17 09:45:00','This is lit!');
/*!40000 ALTER TABLE `commentedon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `email1` varchar(100) NOT NULL,
  `universityName` varchar(100) NOT NULL,
  `st` datetime DEFAULT NULL,
  `en` datetime DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`email1`,`universityName`),
  KEY `universityName` (`universityName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES ('sarah@gmail.com','Indian Institute of Technology Roorkee','2020-09-13 00:00:00','2020-10-17 00:00:00','Civil'),('akhilanthony@gmail.com','Indian Institute of Technology Ropar','2010-09-13 00:00:00','2020-10-17 00:00:00','ECE'),('sharma_s@gmail.com','Indian Institute of Technology Ropar','2000-02-17 00:00:00','2004-02-17 00:00:00','CSE'),('jyotiprabhu@gmail.com','Indian Institute of Technology Bombay','2003-01-15 00:00:00','2024-12-17 00:00:00','Chem'),('monika_jain@gmail.com','Indian Institute of Technology Kanpur','2023-11-12 00:00:00','2024-12-16 00:00:00','CSE'),('rameshdutta1234@gmail.com','Indian Institute of Technology Delhi','2023-11-12 00:00:00','2024-12-16 00:00:00','EE'),('shubhi@gmail.com','Indian Institute of Technology Kanpur','2023-11-14 00:00:00','2024-12-16 00:00:00','MNC'),('sharma_s@gmail.com','MIT','2015-12-17 00:00:00',NULL,'CSE Post-graduate');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `email1` varchar(100) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `friendsSince` datetime DEFAULT NULL,
  PRIMARY KEY (`email1`,`email2`),
  KEY `email2` (`email2`),
  CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`email1`) REFERENCES `users` (`email`),
  CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`email2`) REFERENCES `users` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES ('akhilanthony@gmail.com','ram.vishnu@gmail.com','2006-08-21 08:04:09'),('jyotiprabhu@gmail.com','akhilanthony@gmail.com','2013-08-21 14:07:09'),('monika_jain@gmail.com','jyotiprabhu@gmail.com','2012-08-21 06:01:09'),('rameshdutta1234@gmail.com','jyotiprabhu@gmail.com','2016-08-21 14:03:22'),('sarah@gmail.com','akhilanthony@gmail.com','2012-08-11 00:12:00'),('sarah@gmail.com','shubhi@gmail.com','2011-08-21 14:08:09'),('sharma_s@gmail.com','ram.vishnu@gmail.com','2003-08-21 09:11:53'),('sharma_s@gmail.com','sarah@gmail.com','2013-08-11 00:12:00'),('shubhi@gmail.com','akhilanthony@gmail.com','2009-08-21 14:11:09');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interests` (
  `Interest` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`Interest`,`email`),
  KEY `email` (`email`),
  CONSTRAINT `interests_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interests`
--

LOCK TABLES `interests` WRITE;
/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
INSERT INTO `interests` VALUES ('techie','akhilanthony@gmail.com'),('Beach is life','jyotiprabhu@gmail.com'),('Food','monika_jain@gmail.com'),('Fun loving','ram.vishnu@gmail.com'),('Music Lover','rameshdutta1234@gmail.com'),('Dancing','sarah@gmail.com'),('Daaru pai Charcha!','sharma_s@gmail.com'),('Nature Observing','shubhi@gmail.com'),('Music','sudhanshu@gmail.com');
/*!40000 ALTER TABLE `interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sentmessage`
--

DROP TABLE IF EXISTS `sentmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sentmessage` (
  `messageTimestamp` datetime NOT NULL,
  `email1` varchar(100) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `isSeen` int(1) NOT NULL,
  PRIMARY KEY (`messageTimestamp`,`email1`,`email2`),
  KEY `email1` (`email1`),
  KEY `email2` (`email2`),
  CONSTRAINT `sentmessage_ibfk_1` FOREIGN KEY (`email1`) REFERENCES `users` (`email`),
  CONSTRAINT `sentmessage_ibfk_2` FOREIGN KEY (`email2`) REFERENCES `users` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sentmessage`
--

LOCK TABLES `sentmessage` WRITE;
/*!40000 ALTER TABLE `sentmessage` DISABLE KEYS */;
INSERT INTO `sentmessage` VALUES ('2012-07-17 08:55:00','monika_jain@gmail.com','jyotiprabhu@gmail.com','Come join the party!',0),('2015-02-17 15:11:00','shubhi@gmail.com','akhilanthony@gmail.com','Met Raja today! Great fun!!',0),('2019-01-17 14:51:00','akhilanthony@gmail.com','ram.vishnu@gmail.com','Life sucks!!!',0),('2020-08-17 01:39:00','sharma_s@gmail.com','ram.vishnu@gmail.com','Finally got my ticket to US. Yaayyyy!!',1),('2020-09-17 01:40:00','shubhi@gmail.com','sarah@gmail.com','I am also Good!!!',1),('2020-09-17 01:40:15','sarah@gmail.com','shubhi@gmail.com','I am also Good!!!',1),('2020-09-17 13:01:00','sarah@gmail.com','shubhi@gmail.com','Hows life going?',1),('2022-05-17 14:07:00','jyotiprabhu@gmail.com','akhilanthony@gmail.com','Its too late now. :(',0),('2029-01-17 19:48:00','rameshdutta1234@gmail.com','jyotiprabhu@gmail.com','Meet me asap.',1);
/*!40000 ALTER TABLE `sentmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `email1` varchar(100) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `enablefollow` int(1) DEFAULT NULL,
  `sendNotifications` int(1) DEFAULT NULL,
  `enableTextMessages` int(1) DEFAULT NULL,
  `enableTagging` int(1) DEFAULT NULL,
  PRIMARY KEY (`email1`,`email2`),
  KEY `email2` (`email2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('sarah@gmail.com','shubhi@gmail.com',1,1,0,0),('shubhi@gmail.com','akhilanthony@gmail.com',1,0,1,1),('sharma_s@gmail.com','ram.vishnu@gmail.com',1,1,0,0),('rameshdutta1234@gmail.com','jyotiprabhu@gmail.com',1,0,1,1),('jyotiprabhu@gmail.com','akhilanthony@gmail.com',1,1,1,0),('monika_jain@gmail.com','jyotiprabhu@gmail.com',1,0,0,0),('akhilanthony@gmail.com','ram.vishnu@gmail.com',1,1,1,1),('sarah@gmail.com','akhilanthony@gmail.com',1,1,1,1),('sharma_s@gmail.com','sarah@gmail.com',1,1,1,1);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `university` (
  `universityName` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  PRIMARY KEY (`universityName`,`city`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `university`
--

LOCK TABLES `university` WRITE;
/*!40000 ALTER TABLE `university` DISABLE KEYS */;
INSERT INTO `university` VALUES ('Indian Institute of Technology Bombay','Mumbai'),('Indian Institute of Technology Delhi','Delhi'),('Indian Institute of Technology Kanpur','Kanpur'),('Indian Institute of Technology Roorkee','Roorkee'),('Indian Institute of Technology Ropar','Ropar');
/*!40000 ALTER TABLE `university` ENABLE KEYS */;
UNLOCK TABLES;

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
  `aboutMe` varchar(100) NOT NULL,
  `tagline` varchar(60) NOT NULL,
  `coverPicture` varchar(200) NOT NULL,
  `profilePicture` varchar(200) NOT NULL,
  `isGraduated` int(1) NOT NULL,
  `isActive` int(1) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('akhilanthony@gmail.com','Akhil Anthony','bestrong@akhil','20/10/1991','Male','Pune','India','Software Developer','tagline','123421wwas5.png','dpqwqwasdwd.png',1,1),('hjdvahgv@habsd.com','Raj 265','oppo','05/12/1996','Male','Roorkee','Austria','','','','',1,1),('jyotiprabhu@gmail.com','Jyoti Prabhu','jyotithegreat','31/10/1997','Female','Mumbai','India','Beach is life','tagline','123421wwd5.png','dpqwqwdwd.png',1,1),('monika_jain@gmail.com','Monika Jain','monika.jain','23/3/1990','Female','Mohali','India','Foodie','tagline','123asa421wwd5.png','dpqwsadqwdwd.png',1,1),('ram.vishnu@gmail.com','Ram Vishnu','ramvthegreat','6/7/1993','Male','Ludhiana','India','Eating food whole day','tagline','123421aswwd5.png','daspqwqwdwd.png',1,1),('rameshdutta1234@gmail.com','Ramesh Dutta','thisisme','5/9/1989','Male','Kanpur','India','Music Enthusiast','tagline','1234wwd5.png','dpwdwd.png',1,1),('sarah@gmail.com','Sarah Cruiz','hellopeople','30/12/1999','Male','Roorkee','India','Dancer','tagline','123.png','pewwes.png',0,1),('sharma_s@gmail.com','Shyam Sharma','myworld','15/2/1999','Male','Puri','India','Alcoholic','tagline','12345.png','dp.png',0,1),('shubhi@gmail.com','Subhi Jain','helloworld','3/1/1991','Female','Ropar','India','Nature Lover','tagline','12223.png','pew22wes.png',1,1),('sudhanshu@gmail.com','Sudhanshu Sambharya','hipeople','18/03/1996','Male','Roorkee','India','Dancer','tagline','123.png','pewwes.png',0,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewed`
--

DROP TABLE IF EXISTS `viewed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewed` (
  `email` varchar(100) NOT NULL,
  `articleid` varchar(100) NOT NULL,
  `ViewTime` datetime DEFAULT NULL,
  PRIMARY KEY (`email`,`articleid`),
  KEY `articleid` (`articleid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewed`
--

LOCK TABLES `viewed` WRITE;
/*!40000 ALTER TABLE `viewed` DISABLE KEYS */;
INSERT INTO `viewed` VALUES ('shubhi@gmail.com','123222222222333','2015-09-17 13:05:00'),('akhilanthony@gmail.com','12222222444444','2016-09-17 13:01:00'),('ram.vishnu@gmail.com','22222244444442','2015-06-17 19:01:00'),('rameshdutta1234@gmail.com','1344444343333333','2015-01-17 13:41:00'),('sarah@gmail.com','3333222277777777','2015-09-17 09:01:00'),('jyotiprabhu@gmail.com','55677777777777754','2015-09-17 11:01:00'),('ram.vishnu@gmail.com','444456577778723','2015-11-16 03:29:00'),('ram.vishnu@gmail.com','123222222222333','2015-07-17 08:55:00'),('sarah@gmail.com','123222222222333','2015-07-17 09:45:00');
/*!40000 ALTER TABLE `viewed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work` (
  `designation` varchar(100) NOT NULL,
  `email1` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `st` datetime DEFAULT NULL,
  `en` datetime DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`designation`,`email1`,`company`),
  KEY `email1` (`email1`),
  KEY `company` (`company`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
INSERT INTO `work` VALUES ('Software Developer','sarah@gmail.com','LiveMint','2020-09-16 00:00:00','2020-10-17 00:00:00','Handled major tech part'),('Marketing Head','akhilanthony@gmail.com','Times of India','2010-09-16 00:00:00','2020-10-17 00:00:00','Marketing'),('Tech lead','sharma_s@gmail.com','CityFlow','2030-11-16 00:00:00','2004-02-17 00:00:00','Team leading'),('Testing lead','jyotiprabhu@gmail.com','Entropy Innovations','2003-01-15 00:00:00','2024-12-17 00:00:00','Testing'),('Business Analyst','monika_jain@gmail.com','i3 Consulting','2023-11-12 00:00:00','2024-12-16 00:00:00','Analyst'),('Testing Engineer','rameshdutta1234@gmail.com','Locomotive Ltd.','2023-11-12 00:00:00','2024-12-16 00:00:00','Tester'),('Risk Analyst','shubhi@gmail.com','Citi Bank','2023-11-14 00:00:00','2024-12-16 00:00:00','Risk Analysis');
/*!40000 ALTER TABLE `work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workplace`
--

DROP TABLE IF EXISTS `workplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workplace` (
  `company` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  PRIMARY KEY (`company`,`city`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workplace`
--

LOCK TABLES `workplace` WRITE;
/*!40000 ALTER TABLE `workplace` DISABLE KEYS */;
INSERT INTO `workplace` VALUES ('Apple Inc.','Hyderabad'),('Capgemini','Gurgaon'),('ICICI Lombard','Bangalore'),('Microland','Bangalore'),('Red Hat Inc.','Bangalore');
/*!40000 ALTER TABLE `workplace` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-05 17:49:06
