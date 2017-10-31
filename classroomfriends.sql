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
INSERT INTO `users` VALUES ('Sarah Cruiz','sarah@gmail.com','iitr','631132200000','Male','Roorkee','Australia'),('Shubham Madheysia','submiitr07@gmail.com','iitr','773519400000','Male','GORAKHPUR','India');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



create table Interests (
     `Interest` VARCHAR(60) NOT NULL ,
     `email` VARCHAR(100) NOT NULL,
     primary key(Interest,email),
     foreign key(email) references users(email)
     ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
    
create table Friends (
    `email1` VARCHAR(100) NOT NULL,
    `email2` VARCHAR(100) NOT NULL,
    `friendsSince` DATETIME ,
    primary key(email1,email2),
    foreign key (email1) references users(email),
    foreign key (email2) references users(email)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table Album(
    `pictureURL` VARCHAR(200) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    primary key(pictureURL,email),
    foreign key (email) references users(email)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
    
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
    
    
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-07 15:47:46
