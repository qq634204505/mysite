-- MySQL dump 10.13  Distrib 5.7.14, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.14-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add blog',7,'add_blog'),(20,'Can change blog',7,'change_blog'),(21,'Can delete blog',7,'delete_blog'),(22,'Can add blog type',8,'add_blogtype'),(23,'Can change blog type',8,'change_blogtype'),(24,'Can delete blog type',8,'delete_blogtype'),(25,'Can add read num',9,'add_readnum'),(26,'Can change read num',9,'change_readnum'),(27,'Can delete read num',9,'delete_readnum'),(28,'Can add read num',10,'add_readnum'),(29,'Can change read num',10,'change_readnum'),(30,'Can delete read num',10,'delete_readnum'),(31,'Can add read detail',11,'add_readdetail'),(32,'Can change read detail',11,'change_readdetail'),(33,'Can delete read detail',11,'delete_readdetail'),(34,'Can add comment',12,'add_comment'),(35,'Can change comment',12,'change_comment'),(36,'Can delete comment',12,'delete_comment'),(37,'Can add like count',13,'add_likecount'),(38,'Can change like count',13,'change_likecount'),(39,'Can delete like count',13,'delete_likecount'),(40,'Can add like record',14,'add_likerecord'),(41,'Can change like record',14,'change_likerecord'),(42,'Can delete like record',14,'delete_likerecord'),(43,'Can add profile',15,'add_profile'),(44,'Can change profile',15,'change_profile'),(45,'Can delete profile',15,'delete_profile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$rcSHLKTzTCCg$Bbw/Wnnh+uwt7KhLmceKbwfz2vXcHrmh6mkC7Rbd4IA=','2018-11-20 13:16:33.994394',1,'xiangzi','','','634204505@qq.com',1,1,'2018-11-08 14:32:00.000000'),(2,'pbkdf2_sha256$36000$YsPwkrcw2uFp$7aa21g/B+v0p/6oqPY7UuWa1Mq0vekIvZg9BBN19fcM=','2018-11-19 01:40:52.228919',0,'dukang','','','123@00.com',0,1,'2018-11-13 07:57:18.266559'),(3,'pbkdf2_sha256$36000$QR3n5XpRTzXT$bgqwM9P8XzIrfB+zhtC+jv1uKSDarH+hXms9P0B9uOI=','2018-11-20 12:18:02.005802',0,'liuyang','','','',0,1,'2018-11-19 13:48:00.000000'),(4,'pbkdf2_sha256$36000$G4nntFIj3oV0$gVipmM5FkoU5ejKK7Ly/FPvYo+stleVp2PKs5BkzCn4=','2018-11-20 11:09:17.789491',0,'huoxin','','','97589579@qq.com',0,1,'2018-11-20 11:09:17.515321');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_updated_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `blog_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`),
  KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (3,'长博客','按时打卡暖按时打卡暖<br>按时打卡<br>暖按时打卡暖按时打卡暖按时打卡暖按时打卡暖按时打卡暖按时打卡暖按时打卡暖按时打卡暖按时打卡暖按时打卡暖按时打卡暖按时打卡暖按时打卡暖按时打卡暖按时打卡暖按时打卡暖按时打<br>卡暖按时打卡暖按时打卡暖按时打卡暖按','2018-11-08 17:21:31.262215','2018-11-10 14:27:57.532554',1,2),(4,'django','ddddddddddddddddddd','2018-11-09 02:39:50.921353','2018-11-09 02:39:50.921353',1,1),(5,'ad','asdasdasdasd','2018-11-10 09:27:24.599277','2018-11-10 09:27:24.599277',1,2),(6,'dfgsaefds','fdgafddfz','2018-11-10 09:27:33.559314','2018-11-10 09:27:33.560314',1,2),(7,'gyyhd','fhdghtfgh','2018-11-10 09:27:45.720718','2018-11-10 09:27:45.720718',1,3),(8,'ghdtyhfg','hsgdfgz','2018-11-10 09:27:53.744783','2018-11-10 09:27:53.745783',1,1),(9,'iukuydhfgh','ghdfhsfgb','2018-11-10 09:28:00.913303','2018-11-10 09:28:00.913303',1,3),(10,'图片','<p><img alt=\"\" src=\"/media/upload/2018/11/10/ap.jpg\" style=\"height:1200px; width:1200px\" /></p>','2018-11-10 15:00:45.130516','2018-11-10 18:34:08.826959',1,2),(11,'aaa','<p>saa</p>','2018-11-19 01:25:55.194729','2018-11-19 01:25:55.194729',2,2),(12,'sss','<p>saasas</p>','2018-11-19 01:26:04.867924','2018-11-19 01:26:04.867924',1,3),(13,'ssssa','<p>ssa</p>','2018-11-19 01:26:19.309080','2018-11-19 01:26:19.309080',2,2),(14,'sadasdasd','<p>asdsadsa</p>','2018-11-19 01:26:28.868148','2018-11-19 01:26:28.868148',2,2),(15,'xzczczxc','<p>zxczxc</p>','2018-11-19 01:26:35.690594','2018-11-19 01:26:35.690594',1,2),(16,'czxczxc','<p>zxczcxzc</p>','2018-11-19 01:26:47.198519','2018-11-19 01:26:47.198519',2,2),(17,'xzczxczxc','<p>xzczxczxc</p>','2018-11-19 01:26:56.105100','2018-11-19 01:26:56.105100',2,1),(18,'asdadd','<p>asdasda</p>','2018-11-19 01:27:03.018619','2018-11-19 01:27:03.018619',2,2),(19,'asdasdas','<p>asdasdasd</p>','2018-11-19 01:27:09.286634','2018-11-19 01:27:09.286634',2,1),(20,'adasdsadasd','<p>asdad</p>','2018-11-19 01:27:16.751364','2018-11-19 01:27:16.751364',2,1),(21,'asdasd','<p>adsada</p>','2018-11-19 01:27:25.033487','2018-11-19 01:27:25.033487',2,2),(22,'asdas','<p>asdasdasda</p>','2018-11-19 01:27:32.250216','2018-11-19 01:27:32.250743',2,2),(23,'dasdasdasd','<p>dsadasd</p>','2018-11-19 01:27:39.328302','2018-11-19 01:27:39.328302',2,2),(24,'dasdwfs','<p>sdfsdf</p>','2018-11-19 01:27:45.435241','2018-11-19 01:27:45.435737',2,3),(25,'daggdgsf','<p>sdfsdf</p>','2018-11-19 01:28:14.921652','2018-11-19 01:28:14.921652',1,3),(26,'sdfsd','<p>dsfsdf</p>','2018-11-19 01:28:20.537871','2018-11-19 01:28:20.537871',1,2),(27,'dhgfhfbb','<p>bfdbd</p>','2018-11-19 01:28:27.720568','2018-11-19 01:28:27.720568',1,1),(28,'dfgdg','<p>fdvdgsdv</p>','2018-11-19 01:28:34.280320','2018-11-19 01:28:34.280320',2,3),(29,'fvccvf','<p>cvbcvb</p>','2018-11-19 01:28:43.000199','2018-11-19 01:28:43.000199',2,2),(30,'cbfggh','<p>fgfb</p>','2018-11-19 01:28:50.182816','2018-11-19 01:28:50.182816',2,2),(31,'vbnbn','<p>vbvn</p>','2018-11-19 01:28:57.742305','2018-11-19 01:29:00.968915',2,1),(32,'vnb','<p>gfbgfb</p>','2018-11-19 01:29:07.056735','2018-11-19 01:29:07.056735',2,2),(33,'vbvb','<p>cbcb</p>','2018-11-19 01:29:13.087783','2018-11-19 01:29:13.087783',2,2);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogtype`
--

DROP TABLE IF EXISTS `blog_blogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogtype`
--

LOCK TABLES `blog_blogtype` WRITE;
/*!40000 ALTER TABLE `blog_blogtype` DISABLE KEYS */;
INSERT INTO `blog_blogtype` VALUES (1,'Django'),(2,'随笔'),(3,'感悟');
/*!40000 ALTER TABLE `blog_blogtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment`
--

DROP TABLE IF EXISTS `comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `text` longtext NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `reply_to_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment`
--

LOCK TABLES `comment_comment` WRITE;
/*!40000 ALTER TABLE `comment_comment` DISABLE KEYS */;
INSERT INTO `comment_comment` VALUES (2,9,'123','2018-11-12 20:10:31.227408',7,1,NULL,NULL,NULL),(3,9,'111','2018-11-12 20:20:26.102922',7,1,NULL,NULL,NULL),(4,9,'啊','2018-11-12 20:34:40.298899',7,1,NULL,NULL,NULL),(5,9,'哈哈哈','2018-11-12 20:42:01.826487',7,1,NULL,NULL,NULL),(6,9,'一人我饮酒醉','2018-11-13 07:58:01.803777',7,2,NULL,NULL,NULL),(7,9,'..','2018-11-13 08:34:02.837899',7,2,NULL,NULL,NULL),(8,9,'<p>666</p>','2018-11-13 10:51:04.390578',7,2,NULL,NULL,NULL),(10,9,'<p>262</p>','2018-11-13 11:17:51.700737',7,2,NULL,NULL,NULL),(11,9,'<p>333</p>','2018-11-13 11:18:05.577713',7,2,NULL,NULL,NULL),(12,9,'<p>0.0</p>','2018-11-13 11:29:46.713089',7,2,NULL,NULL,NULL),(13,9,'<p>&copy;</p>','2018-11-13 11:35:49.882374',7,2,NULL,NULL,NULL),(14,9,'<p>a</p>','2018-11-13 11:45:34.931837',7,2,NULL,NULL,NULL),(19,9,'<p>aaa</p>','2018-11-13 12:16:27.204547',7,2,NULL,NULL,NULL),(20,9,'<p>xingbuxing</p>','2018-11-13 12:24:38.768336',7,2,NULL,NULL,NULL),(23,9,'<p>daodi</p>','2018-11-13 12:27:46.778972',7,2,NULL,NULL,NULL),(24,9,'<p>en</p>','2018-11-13 14:15:43.789845',7,1,23,2,23),(25,9,'<p>a</p>','2018-11-13 14:32:13.834715',7,1,24,1,23),(26,9,'<p>aaa</p>','2018-11-13 14:32:20.520870',7,1,24,1,23),(27,9,'<p>123</p>','2018-11-13 14:52:22.836412',7,1,26,1,23),(28,9,'<p>xing</p>','2018-11-13 14:55:54.707247',7,1,20,2,20),(29,9,'<p>3</p>','2018-11-13 15:01:59.714348',7,1,19,2,19),(30,9,'<p>？</p>','2018-11-14 06:08:42.287277',7,1,5,1,5),(31,9,'<p>3333</p>','2018-11-14 06:39:25.252440',7,1,NULL,NULL,NULL),(32,9,'<p>3333</p>','2018-11-14 06:39:27.955897',7,1,NULL,NULL,NULL),(33,9,'<p>3333</p>','2018-11-14 06:39:28.210243',7,1,NULL,NULL,NULL),(34,9,'<p>3333</p>','2018-11-14 06:39:28.420231',7,1,NULL,NULL,NULL),(35,9,'<p>3333</p>','2018-11-14 06:39:28.693078',7,1,NULL,NULL,NULL),(36,9,'<p>abc</p>','2018-11-14 06:47:43.573670',7,1,NULL,NULL,NULL),(37,9,'<p>z</p>','2018-11-14 06:48:22.674611',7,1,36,1,36),(38,9,'<p>333</p>','2018-11-14 07:20:20.657254',7,1,37,1,36),(39,9,'<p>zxcvbn</p>','2018-11-14 07:20:50.163445',7,1,NULL,NULL,NULL),(40,9,'<p>zxc</p>','2018-11-14 07:20:56.250842',7,1,39,1,39),(41,9,'<p>vbn</p>','2018-11-14 07:21:59.543901',7,1,40,1,39),(42,10,'<p>暂无</p>','2018-11-14 09:12:45.566432',7,1,NULL,NULL,NULL),(43,10,'<p>阿达</p>','2018-11-14 09:13:32.430839',7,1,42,1,42),(44,10,'<p>啊</p>','2018-11-14 10:14:29.925114',7,1,43,1,42),(45,10,'<p>啊</p>','2018-11-14 10:14:33.026815',7,1,43,1,42),(46,10,'<p>啊</p>','2018-11-14 10:14:38.954954',7,1,43,1,42),(47,10,'<p>啊</p>','2018-11-14 10:14:39.224232',7,1,43,1,42),(48,10,'<p>啊</p>','2018-11-14 10:14:39.419710',7,1,43,1,42),(49,10,'<p>啊</p>','2018-11-14 10:14:39.594242',7,1,43,1,42),(50,10,'<p>啊</p>','2018-11-14 10:14:39.788756',7,1,43,1,42),(51,10,'<p>啊</p>','2018-11-14 10:14:39.916379',7,1,43,1,42),(52,10,'<p>啊</p>','2018-11-14 10:14:40.082957',7,1,43,1,42),(53,10,'<p>啊</p>','2018-11-14 10:14:40.260458',7,1,43,1,42),(54,10,'<p>啊</p>','2018-11-14 10:14:40.458958',7,1,43,1,42),(55,10,'<p>啊</p>','2018-11-14 10:14:40.642470',7,1,43,1,42),(56,10,'<p>11</p>','2018-11-14 10:15:35.334121',7,1,NULL,NULL,NULL),(57,10,'<p>2</p>','2018-11-14 10:15:39.739306',7,1,56,1,56),(58,10,'<p>3</p>','2018-11-14 10:20:29.464043',7,1,57,1,56),(59,10,'<p>4</p>','2018-11-14 10:28:17.085416',7,1,58,1,56),(60,10,'<p>q</p>','2018-11-14 10:28:29.381536',7,1,NULL,NULL,NULL),(61,10,'<p>w</p>','2018-11-14 10:31:54.464448',7,1,NULL,NULL,NULL),(62,5,'<p>啊</p>','2018-11-14 10:52:36.771808',7,1,NULL,NULL,NULL),(63,5,'<p>.</p>','2018-11-14 10:56:10.836445',7,1,NULL,NULL,NULL),(64,5,'<p>22</p>\r\n\r\n<p>&nbsp;</p>','2018-11-14 10:56:17.996254',7,1,63,1,63),(65,9,'<p>asda</p>','2018-11-14 15:42:33.035834',7,1,NULL,NULL,NULL),(66,8,'<p>aa</p>','2018-11-15 12:28:29.507810',7,1,NULL,NULL,NULL),(67,8,'<p>aaa</p>','2018-11-15 12:28:37.885364',7,1,66,1,66),(68,9,'<p>......</p>','2018-11-15 12:30:52.092489',7,1,65,1,65),(69,33,'<p>评论</p>','2018-11-20 13:57:36.048309',7,1,NULL,NULL,NULL),(70,33,'<p>评论</p>','2018-11-20 13:57:39.556511',7,1,NULL,NULL,NULL),(71,33,'<p>回复</p>','2018-11-20 13:57:52.518647',7,1,70,1,70),(72,33,'<p>啧啧啧啧啧啧做做做做做做</p>','2018-11-20 14:20:28.382630',7,1,NULL,NULL,NULL),(73,33,'<p>啊啊啊啊啊啊啊啊</p>','2018-11-20 14:20:39.636605',7,1,72,1,72),(74,33,'<p>什么啊</p>','2018-11-20 14:40:32.610867',7,1,73,1,72),(75,33,'<p>啊锤子</p>','2018-11-20 14:47:20.656263',7,1,73,1,72);
/*!40000 ALTER TABLE `comment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-11-08 14:32:59.665906','1','BlogType object',1,'[{\"added\": {}}]',8,1),(2,'2018-11-08 14:33:01.996571','2','BlogType object',1,'[{\"added\": {}}]',8,1),(3,'2018-11-08 14:33:04.863315','3','BlogType object',1,'[{\"added\": {}}]',8,1),(4,'2018-11-08 14:36:08.335497','1','Blog: 地一篇博客',1,'[{\"added\": {}}]',7,1),(5,'2018-11-08 15:38:42.938951','2','Blog: 地二篇博客',1,'[{\"added\": {}}]',7,1),(6,'2018-11-08 15:39:05.548901','2','Blog: 地二篇博客',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(7,'2018-11-08 15:45:26.313608','2','Blog: 地二篇博客',3,'',7,1),(8,'2018-11-08 15:45:29.019214','1','Blog: 地一篇博客',3,'',7,1),(9,'2018-11-08 17:21:31.264211','3','Blog: 长博客',1,'[{\"added\": {}}]',7,1),(10,'2018-11-09 02:39:50.925340','4','Blog: django',1,'[{\"added\": {}}]',7,1),(11,'2018-11-10 09:27:24.600249','5','Blog: ad',1,'[{\"added\": {}}]',7,1),(12,'2018-11-10 09:27:33.561310','6','Blog: dfgsaefds',1,'[{\"added\": {}}]',7,1),(13,'2018-11-10 09:27:45.721689','7','Blog: gyyhd',1,'[{\"added\": {}}]',7,1),(14,'2018-11-10 09:27:53.746780','8','Blog: ghdtyhfg',1,'[{\"added\": {}}]',7,1),(15,'2018-11-10 09:28:00.916295','9','Blog: iukuydhfgh',1,'[{\"added\": {}}]',7,1),(16,'2018-11-10 14:27:57.533552','3','Blog: 长博客',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(17,'2018-11-10 15:00:45.138499','10','Blog: 图片',1,'[{\"added\": {}}]',7,1),(18,'2018-11-12 20:10:55.902194','1','Comment object',3,'',12,1),(19,'2018-11-13 12:37:40.917877','22','Comment object',3,'',12,1),(20,'2018-11-13 12:37:40.921867','21','Comment object',3,'',12,1),(21,'2018-11-13 12:37:40.923861','18','Comment object',3,'',12,1),(22,'2018-11-13 12:37:40.926853','17','Comment object',3,'',12,1),(23,'2018-11-13 12:37:40.934834','16','Comment object',3,'',12,1),(24,'2018-11-13 12:37:40.938821','15','Comment object',3,'',12,1),(25,'2018-11-13 12:37:47.999488','9','Comment object',3,'',12,1),(26,'2018-11-15 09:21:53.926044','1','<Profile: 祥子 for xiangzi>',1,'[{\"added\": {}}]',15,1),(27,'2018-11-19 01:25:55.196688','11','Blog: aaa',1,'[{\"added\": {}}]',7,1),(28,'2018-11-19 01:26:04.868429','12','Blog: sss',1,'[{\"added\": {}}]',7,1),(29,'2018-11-19 01:26:19.309589','13','Blog: ssssa',1,'[{\"added\": {}}]',7,1),(30,'2018-11-19 01:26:28.869607','14','Blog: sadasdasd',1,'[{\"added\": {}}]',7,1),(31,'2018-11-19 01:26:35.691555','15','Blog: xzczczxc',1,'[{\"added\": {}}]',7,1),(32,'2018-11-19 01:26:47.200503','16','Blog: czxczxc',1,'[{\"added\": {}}]',7,1),(33,'2018-11-19 01:26:56.105577','17','Blog: xzczxczxc',1,'[{\"added\": {}}]',7,1),(34,'2018-11-19 01:27:03.020105','18','Blog: asdadd',1,'[{\"added\": {}}]',7,1),(35,'2018-11-19 01:27:09.287607','19','Blog: asdasdas',1,'[{\"added\": {}}]',7,1),(36,'2018-11-19 01:27:16.752379','20','Blog: adasdsadasd',1,'[{\"added\": {}}]',7,1),(37,'2018-11-19 01:27:25.034511','21','Blog: asdasd',1,'[{\"added\": {}}]',7,1),(38,'2018-11-19 01:27:32.251735','22','Blog: asdas',1,'[{\"added\": {}}]',7,1),(39,'2018-11-19 01:27:39.329293','23','Blog: dasdasdasd',1,'[{\"added\": {}}]',7,1),(40,'2018-11-19 01:27:45.437224','24','Blog: dasdwfs',1,'[{\"added\": {}}]',7,1),(41,'2018-11-19 01:28:14.922629','25','Blog: daggdgsf',1,'[{\"added\": {}}]',7,1),(42,'2018-11-19 01:28:20.538902','26','Blog: sdfsd',1,'[{\"added\": {}}]',7,1),(43,'2018-11-19 01:28:27.721561','27','Blog: dhgfhfbb',1,'[{\"added\": {}}]',7,1),(44,'2018-11-19 01:28:34.281311','28','Blog: dfgdg',1,'[{\"added\": {}}]',7,1),(45,'2018-11-19 01:28:43.001190','29','Blog: fvccvf',1,'[{\"added\": {}}]',7,1),(46,'2018-11-19 01:28:50.183807','30','Blog: cbfggh',1,'[{\"added\": {}}]',7,1),(47,'2018-11-19 01:28:57.743296','31','Blog: vbnbn',1,'[{\"added\": {}}]',7,1),(48,'2018-11-19 01:29:00.975859','31','Blog: vbnbn',2,'[]',7,1),(49,'2018-11-19 01:29:07.057723','32','Blog: vnb',1,'[{\"added\": {}}]',7,1),(50,'2018-11-19 01:29:13.089271','33','Blog: vbvb',1,'[{\"added\": {}}]',7,1),(51,'2018-11-20 03:05:46.334573','3','liuyang',2,'[{\"changed\": {\"fields\": [\"email\", \"last_login\"]}}]',4,1),(52,'2018-11-20 03:06:02.762483','1','xiangzi',2,'[{\"changed\": {\"fields\": [\"email\", \"last_login\"]}}]',4,1),(53,'2018-11-20 03:13:35.074255','1','xiangzi',2,'[{\"changed\": {\"fields\": [\"email\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'blog','blog'),(8,'blog','blogtype'),(9,'blog','readnum'),(12,'comment','comment'),(5,'contenttypes','contenttype'),(13,'likes','likecount'),(14,'likes','likerecord'),(11,'read_statistics','readdetail'),(10,'read_statistics','readnum'),(6,'sessions','session'),(15,'user','profile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-11-08 14:32:07.523207'),(2,'auth','0001_initial','2018-11-08 14:32:08.684251'),(3,'admin','0001_initial','2018-11-08 14:32:08.944375'),(4,'admin','0002_logentry_remove_auto_add','2018-11-08 14:32:08.994555'),(5,'contenttypes','0002_remove_content_type_name','2018-11-08 14:32:09.159404'),(6,'auth','0002_alter_permission_name_max_length','2018-11-08 14:32:09.330225'),(7,'auth','0003_alter_user_email_max_length','2018-11-08 14:32:09.446682'),(8,'auth','0004_alter_user_username_opts','2018-11-08 14:32:09.466078'),(9,'auth','0005_alter_user_last_login_null','2018-11-08 14:32:09.557765'),(10,'auth','0006_require_contenttypes_0002','2018-11-08 14:32:09.567127'),(11,'auth','0007_alter_validators_add_error_messages','2018-11-08 14:32:09.587985'),(12,'auth','0008_alter_user_username_max_length','2018-11-08 14:32:09.822849'),(13,'blog','0001_initial','2018-11-08 14:32:10.195883'),(14,'sessions','0001_initial','2018-11-08 14:32:10.313030'),(15,'blog','0002_auto_20181110_1644','2018-11-10 08:45:02.683749'),(16,'blog','0003_auto_20181110_2236','2018-11-10 14:37:03.669828'),(17,'blog','0004_auto_20181110_2259','2018-11-10 14:59:53.373295'),(18,'blog','0005_blog_readed_num','2018-11-10 18:18:38.975869'),(19,'blog','0006_auto_20181112_0509','2018-11-11 21:09:15.468824'),(20,'blog','0007_auto_20181112_1223','2018-11-12 04:24:01.283250'),(21,'read_statistics','0001_initial','2018-11-12 04:24:01.593275'),(22,'read_statistics','0002_readdetail','2018-11-12 06:08:56.279485'),(23,'comment','0001_initial','2018-11-12 18:27:06.877760'),(24,'comment','0002_auto_20181113_2035','2018-11-13 12:36:04.488944'),(25,'comment','0003_auto_20181113_2043','2018-11-13 12:43:15.406999'),(26,'comment','0004_auto_20181113_2104','2018-11-13 13:04:18.394538'),(27,'comment','0005_auto_20181113_2106','2018-11-13 13:07:02.890989'),(28,'blog','0008_auto_20181114_2123','2018-11-14 13:23:15.397467'),(29,'comment','0006_auto_20181114_2123','2018-11-14 13:23:17.038930'),(30,'likes','0001_initial','2018-11-14 13:23:17.862545'),(31,'read_statistics','0003_auto_20181114_2123','2018-11-14 13:23:18.472697'),(32,'user','0001_initial','2018-11-15 09:15:53.733342');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1e619yobqor3lag4vursy5tdw05ta800','ZDdmNGY5Y2Q5MWVhMjE3OTNlMzVmYWJkMWU1MDFhNWQwNWZjNmZkNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2Yzg0NDQyNmM0Yzc2ZDcxNWI4MjUwNTZmMTMzNjljYWU0OTFiZjg5In0=','2018-11-22 14:32:51.288028'),('2851pvcr03zx50p8xipt91tzm0hji85u','NjU5NzUwNjhlMDM5MjY1MTEwNTQzNGViYzQ4OTU5OTVmNzI2NDJiODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTlmMjliZDU5MjBiNWZlMmVlOTY3ZTU4ZWZlZDg1OGJjNTYwN2M0In0=','2018-12-04 13:16:34.000347'),('w63dsva9911rpebcblnruo7nptm79yqb','ZDdmNGY5Y2Q5MWVhMjE3OTNlMzVmYWJkMWU1MDFhNWQwNWZjNmZkNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2Yzg0NDQyNmM0Yzc2ZDcxNWI4MjUwNTZmMTMzNjljYWU0OTFiZjg5In0=','2018-12-03 02:15:31.962946'),('zqnhxfputg9l9rimmidg1292t47hhk1b','ZDdmNGY5Y2Q5MWVhMjE3OTNlMzVmYWJkMWU1MDFhNWQwNWZjNmZkNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2Yzg0NDQyNmM0Yzc2ZDcxNWI4MjUwNTZmMTMzNjljYWU0OTFiZjg5In0=','2018-11-30 05:31:39.589478');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likecount`
--

DROP TABLE IF EXISTS `likes_likecount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes_likecount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `liked_num` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likecount_content_type_id_a33eb91e_fk_django_co` (`content_type_id`),
  CONSTRAINT `likes_likecount_content_type_id_a33eb91e_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likecount`
--

LOCK TABLES `likes_likecount` WRITE;
/*!40000 ALTER TABLE `likes_likecount` DISABLE KEYS */;
INSERT INTO `likes_likecount` VALUES (1,9,0,7),(2,39,0,12),(3,40,0,12),(4,41,0,12),(5,36,0,12),(6,37,0,12),(7,38,0,12),(8,35,0,12),(9,34,0,12),(10,33,0,12),(11,32,0,12),(12,31,0,12),(13,23,0,12),(14,24,0,12),(15,25,0,12),(16,26,0,12),(17,27,0,12),(18,20,0,12),(19,28,0,12),(20,19,0,12),(21,29,0,12),(22,14,0,12),(23,13,0,12),(24,12,0,12),(25,11,0,12),(26,10,0,12),(27,8,0,12),(28,7,0,12),(29,6,0,12),(30,5,0,12),(31,30,0,12),(32,4,0,12),(33,3,0,12),(34,2,0,12),(35,10,0,7),(36,8,0,7),(37,7,0,7),(38,6,0,7),(39,5,0,7),(40,4,0,7),(41,65,0,12),(42,66,0,12),(43,67,0,12),(44,68,0,12),(45,61,0,12),(46,60,0,12),(47,56,0,12),(48,57,0,12),(49,58,0,12),(50,59,0,12),(51,42,0,12),(52,43,0,12),(53,44,0,12),(54,45,0,12),(55,46,0,12),(56,47,0,12),(57,48,0,12),(58,49,0,12),(59,50,0,12),(60,51,0,12),(61,52,0,12),(62,53,0,12),(63,54,0,12),(64,55,0,12),(65,3,0,7),(66,24,0,7),(67,23,0,7),(68,22,0,7),(69,21,0,7),(70,20,0,7),(71,19,0,7),(72,18,0,7),(73,33,0,7),(74,32,0,7),(75,31,0,7),(76,30,0,7),(77,29,0,7),(78,28,0,7),(79,27,0,7),(80,26,0,7),(81,25,0,7),(82,12,0,7),(83,11,0,7),(84,17,0,7),(85,16,0,7),(86,15,0,7),(87,14,0,7),(88,13,0,7),(89,70,0,12),(90,71,0,12),(91,69,0,12),(92,72,0,12),(93,73,0,12),(94,74,0,12);
/*!40000 ALTER TABLE `likes_likecount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likerecord`
--

DROP TABLE IF EXISTS `likes_likerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes_likerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `liked_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likerecord_content_type_id_4e35de35_fk_django_co` (`content_type_id`),
  KEY `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` (`user_id`),
  CONSTRAINT `likes_likerecord_content_type_id_4e35de35_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likerecord`
--

LOCK TABLES `likes_likerecord` WRITE;
/*!40000 ALTER TABLE `likes_likerecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes_likerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_cache_table`
--

DROP TABLE IF EXISTS `my_cache_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_cache_table`
--

LOCK TABLES `my_cache_table` WRITE;
/*!40000 ALTER TABLE `my_cache_table` DISABLE KEYS */;
INSERT INTO `my_cache_table` VALUES (':1:hot_blogs_for_7_days','gASVXwoAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwFbW9kZWyUjAtibG9nLm1vZGVsc5SMBEJsb2eUk5SMA19kYpROjAZfaGludHOUfZSMBXF1ZXJ5lIwaZGphbmdvLmRiLm1vZGVscy5zcWwucXVlcnmUjAVRdWVyeZSTlCmBlH2UKGgFaAiMDmFsaWFzX3JlZmNvdW50lH2UKIwJYmxvZ19ibG9nlEsEjBpyZWFkX3N0YXRpc3RpY3NfcmVhZGRldGFpbJRLA3WMCWFsaWFzX21hcJSMC2NvbGxlY3Rpb25zlIwLT3JkZXJlZERpY3SUk5QpUpQoaBSMI2RqYW5nby5kYi5tb2RlbHMuc3FsLmRhdGFzdHJ1Y3R1cmVzlIwJQmFzZVRhYmxllJOUKYGUfZQojAp0YWJsZV9uYW1llGgUjAt0YWJsZV9hbGlhc5RoFHViaBVoG4wESm9pbpSTlCmBlH2UKGggaBWMDHBhcmVudF9hbGlhc5RoFGghaBWMCWpvaW5fdHlwZZSMCklOTkVSIEpPSU6UjAlqb2luX2NvbHOUjAJpZJSMCW9iamVjdF9pZJSGlIWUjApqb2luX2ZpZWxklIwiZGphbmdvLmNvbnRyaWIuY29udGVudHR5cGVzLmZpZWxkc5SMCkdlbmVyaWNSZWyUk5QpgZR9lCiMBWZpZWxklIwXZGphbmdvLmRiLm1vZGVscy5maWVsZHOUjAtfbG9hZF9maWVsZJSTlIwEYmxvZ5RoB4wMcmVhZF9kZXRhaWxzlIeUUpRoBYwWcmVhZF9zdGF0aXN0aWNzLm1vZGVsc5SMClJlYWREZXRhaWyUk5SMDHJlbGF0ZWRfbmFtZZSMASuUjBJyZWxhdGVkX3F1ZXJ5X25hbWWUTowQbGltaXRfY2hvaWNlc190b5R9lIwLcGFyZW50X2xpbmuUiYwJb25fZGVsZXRllIwZZGphbmdvLmRiLm1vZGVscy5kZWxldGlvbpSMCkRPX05PVEhJTkeUk5SMC3N5bW1ldHJpY2FslImMCG11bHRpcGxllIh1YowIbnVsbGFibGWUiHVidYwQZXh0ZXJuYWxfYWxpYXNlc5SPlIwJdGFibGVfbWFwlH2UKGgUXZRoFGFoFV2UaBVhdYwMZGVmYXVsdF9jb2xzlImMEGRlZmF1bHRfb3JkZXJpbmeUiIwRc3RhbmRhcmRfb3JkZXJpbmeUiIwGc2VsZWN0lF2UKIwcZGphbmdvLmRiLm1vZGVscy5leHByZXNzaW9uc5SMA0NvbJSTlCmBlH2UKIwNX291dHB1dF9maWVsZJRoN2g4aAdoKoeUUpSMBWFsaWFzlGgUjAZ0YXJnZXSUaF6MFV9vdXRwdXRfZmllbGRfb3Jfbm9uZZRoXowMb3V0cHV0X2ZpZWxklGhedWJoWSmBlH2UKGhcaDdoOGgHjAV0aXRsZZSHlFKUaF9oFGhgaGdoYWhnaGJoZ3ViZYwGdGFibGVzlF2UKGgUaBVljAV3aGVyZZSMGmRqYW5nby5kYi5tb2RlbHMuc3FsLndoZXJllIwJV2hlcmVOb2RllJOUKYGUfZQojAhjaGlsZHJlbpRdlCiMGGRqYW5nby5kYi5tb2RlbHMubG9va3Vwc5SMCExlc3NUaGFulJOUKYGUfZQojANsaHOUaFkpgZR9lChoXGg3jA9yZWFkX3N0YXRpc3RpY3OUaD2MBGRhdGWUh5RSlGhfaBVoYGh9aGFofWhiaH2MEmNvbnRhaW5zX2FnZ3JlZ2F0ZZSJdWKMA3Joc5SMCGRhdGV0aW1llIwEZGF0ZZSTlEMEB+ILFZSFlFKUjBRiaWxhdGVyYWxfdHJhbnNmb3Jtc5RdlGh+iXViaHKMEkdyZWF0ZXJUaGFuT3JFcXVhbJSTlCmBlH2UKGh3aHhof2iCQwQH4gsOlIWUUpRohl2UaH6JdWJljAljb25uZWN0b3KUjANBTkSUjAduZWdhdGVklIlofol1YowLd2hlcmVfY2xhc3OUaG2MCGdyb3VwX2J5lF2UKGhaaGNljAhvcmRlcl9ieZRdlIwNLXJlYWRfbnVtX3N1bZRhjAhsb3dfbWFya5RLAIwJaGlnaF9tYXJrlEsHjAhkaXN0aW5jdJSJjA9kaXN0aW5jdF9maWVsZHOUXZSMEXNlbGVjdF9mb3JfdXBkYXRllImMGHNlbGVjdF9mb3JfdXBkYXRlX25vd2FpdJSJjB1zZWxlY3RfZm9yX3VwZGF0ZV9za2lwX2xvY2tlZJSJjA5zZWxlY3RfcmVsYXRlZJSJjA12YWx1ZXNfc2VsZWN0lF2UKGgqaGVljAxfYW5ub3RhdGlvbnOUaBkpUpSMDHJlYWRfbnVtX3N1bZSMG2RqYW5nby5kYi5tb2RlbHMuYWdncmVnYXRlc5SMA1N1bZSTlCmBlH2UKIwSc291cmNlX2V4cHJlc3Npb25zlF2UaFkpgZR9lChoXGg3aHpoPYwIcmVhZF9udW2Uh5RSlGhfaBVoYGiyaGFosmh+iXViYYwFZXh0cmGUfZSMBmNvcGllZJSIjAppc19zdW1tYXJ5lIloXGiyaGFosmhiaLJ1YnOMFmFubm90YXRpb25fc2VsZWN0X21hc2uUj5QoaKaQjBhfYW5ub3RhdGlvbl9zZWxlY3RfY2FjaGWUaBkpUpRopmiqc4wJbWF4X2RlcHRolEsFjApjb21iaW5hdG9ylE6MDmNvbWJpbmF0b3JfYWxslImMEGNvbWJpbmVkX3F1ZXJpZXOUKYwGX2V4dHJhlE6MEWV4dHJhX3NlbGVjdF9tYXNrlI+UjBNfZXh0cmFfc2VsZWN0X2NhY2hllE6MDGV4dHJhX3RhYmxlc5QpjA5leHRyYV9vcmRlcl9ieZQpjBBkZWZlcnJlZF9sb2FkaW5nlI+UiIaUjAx1c2VkX2FsaWFzZXOUj5SMEGZpbHRlcl9pc19zdGlja3mUiYwIc3VicXVlcnmUiYwHY29udGV4dJR9lIwKX2ZvcmNlZF9wa5SJdWKMDV9yZXN1bHRfY2FjaGWUXZQofZQoaCpLCWhljAppdWt1eWRoZmdolGimSwd1fZQoaCpLCmhljAblm77niYeUaKZLA3V9lChoKkshaGWMBHZidmKUaKZLAnV9lChoKksfaGWMBXZibmJulGimSwF1fZQoaCpLBWhljAJhZJRopksBdX2UKGgqSyBoZYwDdm5ilGimSwF1fZQoaCpLCGhljAhnaGR0eWhmZ5RopksBdWWMDl9zdGlja3lfZmlsdGVylImMCl9mb3Jfd3JpdGWUiYwZX3ByZWZldGNoX3JlbGF0ZWRfbG9va3Vwc5QpjA5fcHJlZmV0Y2hfZG9uZZSJjBZfa25vd25fcmVsYXRlZF9vYmplY3RzlH2UjA9faXRlcmFibGVfY2xhc3OUaACMDlZhbHVlc0l0ZXJhYmxllJOUjAdfZmllbGRzlGgqaGWGlIwPX2RqYW5nb192ZXJzaW9ulIwHMS4xMS4xMJR1Yi4=','2018-11-21 07:07:50.000000');
/*!40000 ALTER TABLE `my_cache_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readdetail`
--

DROP TABLE IF EXISTS `read_statistics_readdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `read_statistics_readdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_589c7d92_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_589c7d92_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readdetail`
--

LOCK TABLES `read_statistics_readdetail` WRITE;
/*!40000 ALTER TABLE `read_statistics_readdetail` DISABLE KEYS */;
INSERT INTO `read_statistics_readdetail` VALUES (1,'2018-11-12',4,9,7),(2,'2018-11-12',1,10,7),(3,'2018-11-13',1,10,7),(4,'2018-11-13',1,9,7),(5,'2018-11-14',2,9,7),(6,'2018-11-14',2,10,7),(7,'2018-11-14',1,5,7),(8,'2018-11-15',3,9,7),(9,'2018-11-15',1,8,7),(10,'2018-11-16',1,10,7),(11,'2018-11-16',1,9,7),(12,'2018-11-19',1,9,7),(13,'2018-11-19',1,33,7),(14,'2018-11-19',1,32,7),(15,'2018-11-19',1,31,7),(16,'2018-11-20',1,33,7);
/*!40000 ALTER TABLE `read_statistics_readdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readnum`
--

DROP TABLE IF EXISTS `read_statistics_readnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `read_statistics_readnum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_560f0f39_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_560f0f39_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readnum`
--

LOCK TABLES `read_statistics_readnum` WRITE;
/*!40000 ALTER TABLE `read_statistics_readnum` DISABLE KEYS */;
INSERT INTO `read_statistics_readnum` VALUES (1,6,10,7),(2,12,9,7),(3,1,5,7),(4,1,8,7),(5,2,33,7),(6,1,32,7),(7,1,31,7);
/*!40000 ALTER TABLE `read_statistics_readnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'祥子',1);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-21 17:03:08
