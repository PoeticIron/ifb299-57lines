-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: rango
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
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
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,2,'add_permission','Can add permission'),(5,2,'change_permission','Can change permission'),(6,2,'delete_permission','Can delete permission'),(7,3,'add_group','Can add group'),(8,3,'change_group','Can change group'),(9,3,'delete_group','Can delete group'),(10,4,'add_user','Can add user'),(11,4,'change_user','Can change user'),(12,4,'delete_user','Can delete user'),(13,5,'add_contenttype','Can add content type'),(14,5,'change_contenttype','Can change content type'),(15,5,'delete_contenttype','Can delete content type'),(16,6,'add_session','Can add session'),(17,6,'change_session','Can change session'),(18,6,'delete_session','Can delete session'),(19,7,'add_colleges','Can add colleges'),(20,7,'change_colleges','Can change colleges'),(21,7,'delete_colleges','Can delete colleges'),(22,8,'add_libraries','Can add libraries'),(23,8,'change_libraries','Can change libraries'),(24,8,'delete_libraries','Can delete libraries'),(25,9,'add_industries','Can add industries'),(26,9,'change_industries','Can change industries'),(27,9,'delete_industries','Can delete industries'),(28,10,'add_hotels','Can add hotels'),(29,10,'change_hotels','Can change hotels'),(30,10,'delete_hotels','Can delete hotels'),(31,11,'add_parks','Can add parks'),(32,11,'change_parks','Can change parks'),(33,11,'delete_parks','Can delete parks'),(34,12,'add_zoos','Can add zoos'),(35,12,'change_zoos','Can change zoos'),(36,12,'delete_zoos','Can delete zoos'),(37,13,'add_museums','Can add museums'),(38,13,'change_museums','Can change museums'),(39,13,'delete_museums','Can delete museums'),(40,14,'add_restaurants','Can add restaurants'),(41,14,'change_restaurants','Can change restaurants'),(42,14,'delete_restaurants','Can delete restaurants'),(43,15,'add_malls','Can add malls'),(44,15,'change_malls','Can change malls'),(45,15,'delete_malls','Can delete malls'),(46,16,'add_profile','Can add profile'),(47,16,'change_profile','Can change profile'),(48,16,'delete_profile','Can delete profile');
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
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `username` varchar(150) NOT NULL,
  `userType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$mkWNhdnJhxFW$glpLrIG6Kzml4jYlrohYi0QoupRY5j011ed2SHoQBM8=','2017-10-13 00:22:24',0,'','','bill@bob.com',0,1,'2017-10-11 01:50:29','BillyBob',1),(2,'pbkdf2_sha256$36000$YytGM1JsV8Cw$pEjqi0I36RX+dbr8BekGB1KtaT9aQPAw3kq9/WY9ccs=',NULL,0,'','','TT@tt.com',0,1,'2017-10-18 01:06:22','Timmy Turner',1),(3,'pbkdf2_sha256$36000$YGZ7ohe3bYaD$2GHzqN5GSSeNqDNCW66Tdqm1ZZ19gD9XA5+P+mNLxYY=','2017-10-18 04:42:49',0,'','','Jimmy@jimmy.com',0,1,'2017-10-18 01:07:24','Jimmy',1),(4,'pbkdf2_sha256$36000$lYpwQEZDqPQU$vYFPBWin0qfsicEsGYZqIRegthO//tEiqDqc1nwRdmY=','2017-10-18 01:14:53',0,'','','yaboi@yaboi.com',0,1,'2017-10-18 01:14:06','ya boi',1),(5,'pbkdf2_sha256$36000$9OmIEHZ0d0mO$zsUevgUV5ndCLKTO46TURTiL2J7jrkkKCIRTdb8cDGg=','2017-10-18 04:16:59',0,'','','TT@tt.com',0,1,'2017-10-18 04:16:49','Timmy',1),(6,'pbkdf2_sha256$36000$kDjyr6F3bjaH$EAnR4LYHTAz3MSQGyCGD3pZxIPPpQyEImkeqTY2WByE=','2017-10-18 04:26:04',0,'','','lukeh@thebomb.com',0,1,'2017-10-18 04:25:38','minecraft lets play',1),(7,'pbkdf2_sha256$36000$wmRZxy4A7kxK$uRHXwAQ3bYB5JEvgxjCTLMdNuCVFfaNBsLwLV4MMQGs=','2017-10-18 04:29:25',0,'','','sandali@ymail.com',0,1,'2017-10-18 04:27:49','Sandali_D',1),(8,'pbkdf2_sha256$36000$hW6Fh0UFbrfy$lMWsOyrFt5NoS+pc+y25xMYVrSigU5jHimeH6A1hwQ8=',NULL,0,'','','Timmy@timmy.com',0,1,'2017-10-27 08:13:55','Timmy2',NULL),(9,'pbkdf2_sha256$36000$Z98Ad4fKv61y$fhPgnjCsxEq+/fi4iXrPPuTmL5WXKr5KfEDoT6KPr7M=',NULL,0,'','','Timmy@timmy.com',0,1,'2017-10-27 08:15:52','Timmy3',NULL),(10,'pbkdf2_sha256$36000$DxiFZdtgRmf5$8DxLg5vo/Nt8Hm4Lq24ej3HbZuxNb2qeFkrM+a+rUIo=',NULL,0,'','','Timmy@timmy.com',0,1,'2017-10-27 08:18:56','Timmy44',NULL),(11,'pbkdf2_sha256$36000$9fJepvhpIJJU$6+cE+IRATVsIBOCVGz2scsTJYeBr3rL+FOLZ9Eyfy54=','2017-10-27 08:20:51',0,'','','Timmy@timmy.com',0,1,'2017-10-27 08:20:42','Timmy444',NULL),(12,'pbkdf2_sha256$36000$TAxB9attvM3d$HbRH5lZxAcfZUvsNMBsZzdkiG3hJnPmOd65XPkKhPK4=','2017-10-27 08:21:22',0,'','','Timmy@timmy.com',0,1,'2017-10-27 08:21:16','Timmy66',NULL),(13,'pbkdf2_sha256$36000$rX4XfC8ToMYH$+59iK5ivAXt6B+PIac5su45kvtuX5UDQf6wi3qZHi0A=',NULL,0,'','','Timmy@timmy.com',0,1,'2017-10-27 08:23:43','Timmy123',NULL),(14,'pbkdf2_sha256$36000$bxPCs4ln5qcB$KDkH1BfE3jeUBSqeOxJm4ZG2BrSlNUTmudAbIxM38LY=','2017-10-27 08:28:02',0,'','','Timmy@timmy.com',0,1,'2017-10-27 08:25:40','Timmy1234',NULL),(15,'pbkdf2_sha256$36000$2ymYwP7Nwtfd$JEjCgRs6JqxE5goCoDFNGRvGaAtl8mzBdgEyIBGfKsA=',NULL,0,'','','Jimbo@somethin.com',0,1,'2017-10-27 08:33:51','Jimbo',NULL),(18,'pbkdf2_sha256$36000$NVJwv5yd89Ie$K4mBIHTj7ei1bW1wsTAAxDPMgm+kvDOc08RA46Rnz8A=','2017-11-01 04:07:47',1,'','','susan@example.com',1,1,'2017-10-30 06:30:03','susan',NULL),(19,'pbkdf2_sha256$36000$XabhsGg3scdB$ZS8ZfKGQN2+pSxFF2LYMil34SWlcmrI1/sm5I3fjX50=','2017-10-30 10:21:04',0,'','','Sandali@gmail.com',0,1,'2017-10-30 10:06:31','n9878831',NULL),(20,'pbkdf2_sha256$36000$XElybwAOGthy$h3etWxWNVl3kbZ0b6N/x6lqQmXrJfP14geUd9zXcWos=','2017-10-31 04:10:18',0,'','','n11111111@qut.edu.au',0,1,'2017-10-31 03:59:36','n11111111student',NULL),(21,'pbkdf2_sha256$36000$tRTQ1rLX5GPC$qPUYme9b9DcrINBlheLFy+Ornqf5AYC/NT8cdePNYz0=','2017-11-01 05:11:06',1,'','','super@user.com',1,1,'2017-10-31 04:29:13','superuser',NULL),(22,'pbkdf2_sha256$36000$UanFd9PiiPQg$1U04AnzVYypDjFyavx5W1xQ4kM5wXmwl2V4xe0nBKLc=',NULL,0,'','','lukeh@thing.com',0,1,'2017-10-31 12:33:15','luke',NULL),(23,'pbkdf2_sha256$36000$dyBJ8AYOOLeh$AQ1lBbEEyashqzaEY5DHvnj0ETE8NpzHg/b2ffiY1Lw=',NULL,0,'','','lukeh@example.com',0,1,'2017-10-31 12:34:48','lukeh',NULL),(24,'pbkdf2_sha256$36000$ExPNJYkadZjw$YzEp3t5bAvXkjJ4Im/qNL4RYBzyOZvhlyLhUNIkrHYc=',NULL,0,'','','san@gmail.com',0,1,'2017-10-31 13:26:25','Sandali_Dee',NULL),(25,'pbkdf2_sha256$36000$EmaNdgPlldjy$uyb8ERQ3gfrxLsOuJVz73EPjX+8JS418PdJJLbFUZlw=',NULL,0,'','','san@gmail.com',0,1,'2017-10-31 13:27:17','nishi_sandali',NULL),(27,'pbkdf2_sha256$36000$g9e7nIbVWTXt$pDmDkCyFT8M4DFrh4uN2CXZHnwPS5iRVf1d7zY5hHjg=',NULL,0,'','','nishi_94@gmail.com',0,1,'2017-10-31 13:40:12','sandy',NULL),(28,'pbkdf2_sha256$36000$PLEMWLgUZleQ$gDiALOO7IQmiZ2zF8bDUfUqfXtU9CFYdxHMaf1J9iyw=','2017-11-01 05:18:49',0,'','','User@student.com',0,1,'2017-10-31 13:42:28','UserStudent',NULL),(29,'pbkdf2_sha256$36000$5sZLYedBs2xj$gV0twLLv+CFOKRWQM/EKOw6Aph5H+u64+nrqjQ3+4ig=','2017-10-31 13:53:56',0,'','','sand@gmail.com',0,1,'2017-10-31 13:53:48','nishi_94',NULL),(30,'pbkdf2_sha256$36000$XmcQlHbGZs7g$q0MscJmgnnm77B/ue36EkDVDd50+N0br1RHpYIngzlc=','2017-11-01 03:27:05',0,'','','datboi@example.com',0,1,'2017-10-31 14:14:34','datboi',NULL),(31,'pbkdf2_sha256$36000$eJvHnLOmCyll$xc+fHh2zhfLc50L11YzZL2FZ626VYLoNPdSOOEpWvaE=','2017-11-01 04:13:28',0,'Bruh','Bruh','Bruh@gmail.com',0,1,'2017-11-01 02:30:16','Bruh',NULL),(44,'pbkdf2_sha256$36000$8idoE9uHpHCO$Vz0pMdHdmiPyjVaKOxwhnNfLXV2uMZ75N1f/M3pvYEw=',NULL,0,'','','',0,1,'2017-11-01 05:02:27','newUser1Nov',NULL);
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
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_groups_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
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
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
-- Table structure for table `dbview_colleges`
--

DROP TABLE IF EXISTS `dbview_colleges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbview_colleges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `departments` varchar(300) NOT NULL,
  `email` varchar(254) NOT NULL,
  `Lat` varchar(30) NOT NULL,
  `Lon` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbview_colleges`
--

LOCK TABLES `dbview_colleges` WRITE;
/*!40000 ALTER TABLE `dbview_colleges` DISABLE KEYS */;
INSERT INTO `dbview_colleges` VALUES (1,'QUT','2 George St, Brisbane City QLD 4000','','askqut@qut.edu.au','-27.477525','153.028462'),(2,'UQ','St Lucia, QLD 4072','','askus@library.uq.edu.au','-27.4954','153.012'),(3,'James Cook University','349 Queen Street','','enquiries@jcu.edu.au','-19.3264','146.7573'),(4,'CQUniversity','160 Ann St','','ssc@cqu.edu.au','-23.3218','150.5197'),(5,'Charles Sturt University','119 Charlotte St','','N/A','-27.470989','153.027481'),(6,'Federation University','333 Ann St','','N/A','-27.464926','153.028387'),(7,'Learning Sciences Institute','229 Elizabeth St','','Isia@acu.edu.au','-27.4687','153.0284'),(8,'UQ Business School','Colin Clark, 39 Blair Dr, St Lucia QLD 4067','','info@business.uq.edu.au','-27.494749','153.014257'),(9,'Kaplan Business School','252 St Pauls Terrace','','N/A','-27.45707','153.030261'),(10,'Torrens University','90 Bowen Terrace','','N/A','-27.461183','153.036119'),(11,'UQ School of Dentistry','288 Herston Rd','','dentistry@enquire.uq.edu.au','-27.4484','153.0246'),(12,'Queensland College of Art','226 Grey St','','N/A','-27.481731','153.024078'),(13,'Shafston College','46 Thorn St, Kangaroo Point QLD 4000','','N/A','-27.4777','153.0404'),(14,'Griffith University','170 Kessels Rd, Nathan QLD 4111','','N/A','-27.5551','153.0533'),(15,'Endeavour College of Natural Health','269 Wickem St, Brisbane City QLD 4006','','info@endeavour.edu.au','-27.456526','153.034884'),(16,'Brisbane School of Theology','1 Cross St, Toowong QLD 4066','','info@bst.qld.edu.au','-27.4807','152.9778'),(17,'ACU','1100 Nudgee Rd, Banyo QLD 4014','','N/A','-27.377898','153.089317'),(18,'Australian College of Rural and Remote Medicine','410 Queen St, Brisbane City QLD 4000','','N/A','-27.4656','153.0299'),(19,'American College','180 Logan Rd, Woolloongabba QLD 4102','','admin@americancollege.edu.au','-27.4936','153.0416'),(20,'Nazarene Theological College','40 Woodlands Dr, Thornlands QLD 4164','Theology','info@nbc.edu','-27.5715','153.251');
/*!40000 ALTER TABLE `dbview_colleges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbview_hotels`
--

DROP TABLE IF EXISTS `dbview_hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbview_hotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `Lat` varchar(300) NOT NULL,
  `Lon` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbview_hotels`
--

LOCK TABLES `dbview_hotels` WRITE;
/*!40000 ALTER TABLE `dbview_hotels` DISABLE KEYS */;
INSERT INTO `dbview_hotels` VALUES (1,'Holiday Inn Express Brisbane Central','168 Wharf Street, Spring Hill, Brisbane City QLD 4000','07 3833 8888','info@hiexbrisbane.com.au','-27.4628','153.0271'),(2,'Gambaro Hotel','33 Caxton St, Petrie Terrace QLD 4000','07 3369 9500','reservations@gambarohotel.com.au','-27.4642','153.0128'),(3,'ibis Styles Brisbane Elizabeth Street','40 Elizabeth St, Brisbane City QLD 4000','07 3337 9000','inquiries@accor.com','-27.4714','153.0245'),(4,'The Great Southern Hotel Brisbane','103 George St, Brisbane City QLD 4000','07 3221 6044','reservations103g@greatsouthernhotel.com.au','-27.4728','153.0257'),(5,'Prince of Wales Hotel','1154 Sandgate Rd, Nundah QLD 4012','07 3266 8077','prince.of.wales.hotel@alhgroup.com.au','-27.4037','153.0601'),(6,'Oakwood Hotel & Apartments Brisbane','15 Ivory Ln, Brisbane City QLD 4000','07 3218 5800','reservations.oabr@oakwoodasia.com','-27.4615','153.0351'),(7,'Hotel Grand Chancellor Brisbane','23 Leichhardt St, Brisbane City QLD 4000','07 3831 4055','reservations@hgcbrisbane.com.au ','-27.4622','153.0218'),(8,'Meriton Suites','485 Adelaide St, Brisbane City QLD 4000','07 3171 5100','stay@meriton.net.au','-27.4623','153.0326'),(9,'Best Western Astor Metropole Hotel & Apartments','193-197 Wickham Terrace, Brisbane City QLD 4000','07 3144 4000','res@astorhotel.com.au','-27.4649','153.0240'),(10,'Mercure Brisbane','85-87 N Quay, Brisbane City QLD 4000','07 3237 2300','N/A','-27.4696','153.0212'),(11,'Rydges South Bank Brisbane','9 Glenelg St, South Brisbane QLD 4101','07 3364 0800','reservations_rydgessouthbank@evt.com','-27.4771','153.0203'),(12,'George Williams Hotel','317-325 George St, Brisbane City QLD 4000','07 3308 0700','reservations@georgewilliamshotel.com.au','-27.4689','153.0217'),(13,'Mantra on Mary','70 Mary St, Brisbane City QLD 4000','07 3503 8000','mary.res@mantra.com.au','-27.4720','153.0268'),(14,'The Sebel','Albert St & Charlotte St, Brisbane City QLD 4000','07 3224 3500','H8778@accor.com','-27.4710','153.0271'),(15,'Hilton Brisbane','190 Elizabeth St, Brisbane City QLD 4000','07 3234 2000','brisbane.info@hilton.com','-27.4692','153.0268'),(16,'Hotel Urban Brisbane','345 Wickham Terrace, Spring Hill QLD 4000','1800 777 789','N/A','-27.4642','153.0213'),(17,'Four Points by Sheraton Brisbane','99 Mary St, Brisbane City QLD 4000','07 3164 4000','fourpoints.brisbane@fourpoints.com','-27.4719','153.0282'),(18,'Novotel Brisbane','200 Creek St, Brisbane City QLD 4000','07 3309 3309','h1749@accor.com','-27.4636','153.0267'),(19,'Mantra Terrace Hotel','52 Astor Terrace, Brisbane City QLD 4000','07 3009 3400','terrace.res@mantra.com.au','-27.4632','153.0258'),(20,'Pullman Brisbane King George Square','Ann St & Roma St, Brisbane City QLD 4000','07 3229 9111','h8784@accor.com','-27.4682','153.0228');
/*!40000 ALTER TABLE `dbview_hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbview_industries`
--

DROP TABLE IF EXISTS `dbview_industries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbview_industries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `Lat` varchar(300) NOT NULL,
  `Lon` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbview_industries`
--

LOCK TABLES `dbview_industries` WRITE;
/*!40000 ALTER TABLE `dbview_industries` DISABLE KEYS */;
INSERT INTO `dbview_industries` VALUES (1,'Woolworths','259 Queen Street, Brisbane, QLD, 4000','0736484357','newshoponline@woolworths.com.au','-27.4688','153.0277'),(2,'Ultra Tune South Brisbane','30 Merivale St, South Brisbane QLD 4101','0738444153','ultraho@ultratune.com.au','-27.4746','153.0160'),(3,'McDonalds Central Station QLD','Ann Street Shop 3 The Concourse, Brisbane City QLD 4000','0732114153','NA','-27.4659','153.0258'),(4,'Deloitte Australia','123 Eagle St, Brisbane City QLD 4000','0733087000','NA','-27.4672','153.0302'),(5,'Nicet Industries','6/135 Wickham Terrace, Brisbane City QLD 4000','0731142755','NA','-27.4643','153.0253'),(6,'All Cool Industries','10/239 George St, Brisbane City QLD 4000','0732893005','NA','-27.4702','153.0233'),(7,'SPP Industries Pty. Ltd.','137 Melbourne St, South Brisbane QLD 4101','0735055906','spp@gmail.com','-27.4755','153.0149'),(8,'Techloc Industries PTY Ltd.','57 Wellington Rd, East Brisbane QLD 4169','0733240788','techloc@hotmail.com','-27.4868','153.0403'),(9,'Langford Metal Industries Pty Ltd','44 Curtin Ave W, Eagle Farm QLD 4009','0736069000','NA','-27.4379','153.0737'),(10,'Vital Chemical','304 Brisbane Terrace, Goodna QLD 4300','0732883500','vital@ymail.com','-27.5980','152.8857'),(11,'Ashden Industries','Unit1/13 Deakin St, Brendale, Brisbane QLD 4500','0732051366','ashden.com.au','-27.3242','152.9914'),(12,'Pertronic Industries','Unit 3 43/49 Sandgate Rd, Albion QLD 4010','032552222','NA','-27.4390','153.0433'),(13,'Wild Industries','35A Manton St, Morningside QLD 4170','0738496666','NA','-27.4533','153.0764'),(14,'Magic Door Industires Pty LTD','4 Devlan St, Mansfield QLD 4122','0733765552','magicdoor.com.au','-27.5326','153.0969'),(15,'Comtech Industries','76 Ebbern St, Brisbane QLD 4076','0733765552','www.comtech-industries.com','-27.5667','152.9488'),(16,'Palmer Steel Industries','429 Creek Rd, Mount Gravatt QLD 4122','0733499111','NA','-27.5276','153.0962'),(17,'Rodney Industries Pty Ltd','19 Valente Cl, Chermside QLD 4032','0736240300','www.rodneyind.com.au','-27.3935','153.0251'),(18,'Premier Sign Industries Pty Ltd','1/31 Brecknock St, Archerfield QLD 4108','0732775799','www.premiersignindustries.com.au','-27.5618','153.0180'),(19,'Rogers Industries','1284 Lytton Rd, Hemmant QLD 4174','0733904022','www.rogersindustries.com.au','-27.4439','153.1215'),(20,'Trailer Industries PTY LTD','49 Macbarry Pl, Rocklea QLD 4106','0732773944','NA','-27.5494','153.0022');
/*!40000 ALTER TABLE `dbview_industries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbview_libraries`
--

DROP TABLE IF EXISTS `dbview_libraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbview_libraries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `Lat` varchar(300) NOT NULL,
  `Lon` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbview_libraries`
--

LOCK TABLES `dbview_libraries` WRITE;
/*!40000 ALTER TABLE `dbview_libraries` DISABLE KEYS */;
INSERT INTO `dbview_libraries` VALUES (1,'Brisbane Square Library','266 George St','07 3403 4166','N/A','-27.4708','153.0225'),(2,'Supreme Court of Queensland Library','415 George St','07 3247 4373','librarian@sclqld.org.au','-27.4676','153.0207'),(3,'QUT Law Library','2 George St','07 3138 2000','askqut@qut.edu.au','-27.4518','153.0167'),(4,'State Library of Queensland','Stanley Pl','07 3840 7666','N/A','-27.4712','153.0181'),(5,'UQ/Mater McAuley Library','Mater Health Sciences, South Brisbane QLD 4101','(07) 3163 1689','web.library.uq.edu.au','-27.4866','153.0275'),(6,'Herston Health Sciences Library','Block 6, Herston Rd, Brisbane City QLD 4029','(07) 3365 5353','web.library.uq.edu.au','-27.4488','153.0277'),(7,'Mathew Hale Public Library','160 Vulture St, South Brisbane QLD 4101','0411 271 787','www.mathewhalepubliclibrary.com','-27.4819','153.0192'),(8,'Brisbane City Council - New Farm Library','135 Sydney St, New Farm QLD 4005','(07) 3403 8888','www.brisbane.qld.gov.au','-27.4673','153.0495'),(9,'Chermside Library','375 Hamilton Rd, Chermside QLD 4032','(07) 3403 7200','www.brisbane.qld.gov.a','-27.3862','153.0349'),(10,'Toowong Municipal Library Building','Toowon Village Shopping Centre, Sherwood Road, Toowong QLD 4066','(07) 3403 8888','www.brisbane.qld.gov.au','-27.4851','152.9925'),(11,'Corinda Library','641 Oxley Rd, Brisbane QLD 4075','(07) 3407 7701','www.brisbane.qld.gov.au','-27.5389','152.9815'),(12,'Brisbane City Council - Annerley Library','450 Ipswich Rd, Annerley QLD 4103','(07) 3403 1735','www.brisbane.qld.gov.au','-27.5094','153.0333'),(13,'Brisbane City Council - Grange Library','79 Evelyn St, Grange QLD 4051','(07) 3407 2523','www.brisbane.qld.gov.au','-27.4251','153.0175'),(14,'Queensland Conservatorium Griffith University','S01, 140 Grey St, South Brisbane QLD 4101','(07) 3735 5555','www.griffith.edu.au','-27.4762','153.0202'),(15,'Brisbane City Council - Ashgrove Library','87 Amarina Ave, Ashgrove QLD 4060','(07) 3407 1940','www.brisbane.qld.gov.au','-27.4439','152.9871'),(16,'Noah\'s Ark Educational Resource Library','20 Norman St, East Brisbane QLD 4169','1300 497 437','noahsarkinc.org.au','-27.4873','153.0457'),(17,'Brisbane City Council Libraries','Fairfield Gardens Shopping Ctr, Fairfield Road, Fairfield QLD 4103','(07) 3403 8888','www.brisbane.qld.gov.au','-27.5091','153.0267'),(18,'Brisbane City Council - Carina Library','Mayfield Rd & Nyrang St, Carina QLD 4152','(07) 3407 1873','www.brisbane.qld.gov.au','-27.4933','153.0900'),(19,'Brisbane City Council - Nundah Library','1 Bage St, Nundah QLD 4012','(07) 3403 8888','www.brisbane.qld.gov.au','-27.4012','153.0583'),(20,'QUT Gardens Point Library','V Block, Gardens Point Campus, 2 George St, Brisbane City QLD 4001','(07) 3138 2000','askqut@qut.edu.au','-27.4770','153.0283');
/*!40000 ALTER TABLE `dbview_libraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbview_malls`
--

DROP TABLE IF EXISTS `dbview_malls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbview_malls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `Lat` varchar(300) NOT NULL,
  `Lon` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbview_malls`
--

LOCK TABLES `dbview_malls` WRITE;
/*!40000 ALTER TABLE `dbview_malls` DISABLE KEYS */;
INSERT INTO `dbview_malls` VALUES (1,'Queens Street Mall','Queens Street Mall, Queens Street, Brisbane City, QLD, 4000','07 3006 6920','N/A','-27.4696','153.0253'),(2,'Queens Plaza','226 Queen Street, Brisbane City, QLD, 4000','07 3234 3900','QueensPlaza.CustomerService@vicinity.com.au','-27.4682','153.0262'),(3,'Brisbane Arcade','160 Queen St, Brisbane City QLD 4000','07 3231 9777','info@bne.mcgees.com.au','-27.4690','153.0254'),(4,'Wintergarden','171-209 Queen St, Brisbane City QLD 4000','07 3229 9755','N/A','-27.4694','153.0265'),(5,'The Myer Centre','91 Queen St, Brisbane City QLD 4000','07 3223 6900','Brisbane.MyerCentre@vicinity.com.au','-27.4708','153.0246'),(6,'MacArthur Central','255 Queen St, Brisbane City QLD 4000','07 3007 2300','info@macarthurcentral.com','-27.4685','153.0277'),(7,'Tattersail\'s Arcade','215 Queen St, Brisbane City QLD 4000','07 3331 8888','N/A','-27.4687','153.0271'),(8,'The Gap Village Shopping Centre','1000 Waterworks Rd, Brisbane QLD 4061','07 3300 3377','N/A','-27.4459','152.9525'),(9,'Skygate','11 The Circuit, Brisbane Airport QLD 4008','07 3406 3000','N/A','-27.4149','153.0812'),(10,'Indooroopilly Shopping Centre','322 Moggill Rd, Indooroopilly QLD 4068','07 3378 4022','info@indooroopillyshopping.com.au','-27.4996','152.9726'),(11,'Brunswick Street Mall','230 Brunswick St, Fortitude Valley QLD 4006','0433 341 161','N/A','-27.4562','153.0336'),(12,'Chinatown','33 Duncan St, Fortitude Valley QLD 4006','07 3006 6251','N/A','-27.4565','153.0345'),(13,'Merthyr Village Shopping Centre','85 Merthyr Rd, New Farm QLD 4005','0409 477 787','info@merthyrvillage.com.au','-27.4668','153.0473'),(14,'Westfield Chermside','Gympie Rd & Hamilton Rd, Chermside QLD 4032','07 3117 5300','chermside@scentregroup.com. ','-27.3847','153.0321'),(15,'Westfield Carindale','1151 Creek Rd, Carindale QLD 4152','07 3120 5400','carindale@scentregroup.com. ','-27.5030','153.1016'),(16,'Lutwyche City','543 Lutwyche Rd, Lutwyche QLD 4030','07 3857 5035','info@lutwychecity.com.au','-27.4222','153.0348'),(17,'Toowong Village','9 Sherwood Rd, Toowong QLD 4066','07 3870 7177','toowongvillage@retailfirst.com.au','-27.4850','152.9929'),(18,'Fairfield Gardens Shopping Centre','180 Fairfield Rd, Fairfield QLD 4103','07 3844 9831','fairfieldgardens@retailfirst.com.au','-27.5091','153.0260'),(19,'Brookside Shopping Centre','159 Osborne Rd, Mitchelton QLD 4053','07 3355 5211','brookside@retailfirst.com.au','-27.4092','152.9794'),(20,'DFO','Corner and The Circuit, Skygate, 18th Avenue, Brisbane Airport QLD 4008','07 3305 9250','DFOBrisbane.Reception@vicinity.com.au','-27.4162','153.0801');
/*!40000 ALTER TABLE `dbview_malls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbview_museums`
--

DROP TABLE IF EXISTS `dbview_museums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbview_museums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `Lat` varchar(300) NOT NULL,
  `Lon` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbview_museums`
--

LOCK TABLES `dbview_museums` WRITE;
/*!40000 ALTER TABLE `dbview_museums` DISABLE KEYS */;
INSERT INTO `dbview_museums` VALUES (1,'Museum of Brisbane','City Hall, 64 Adelaide St, Brisbane City QLD 4000','(07) 3339 0800','info@museumofbrisbane.com.au','-27.4688','153.0236'),(2,'Queensland Museum & Science Centre','Grey St & Melbourne St, South Brisbane QLD 4101','(07) 3840 7555','NA','-27.4731','153.0183'),(3,'MacArthur Museum Brisbane','MacArthur Chambers, 201 Edward St, Brisbane City QLD 4000','(07) 3211 7052','www.mmb.org.au','-27.4685','153.0273'),(4,'Queensland Police Museum','200 Roma St, Brisbane City QLD 4000','(07) 3364 6432','www.police.qld.gov.au','-27.4668','153.0180'),(5,'Queensland Art Gallery','Stanley Pl, South Brisbane QLD 4101','(07) 3840 7303','www.qagoma.qld.gov.au','-27.4726','153.0187'),(6,'Commissariat Store, Brisbane','115 William St, Brisbane City QLD 4000','(07) 3221 4198','www.commissariatstore.org.au','-27.4733','153.0242'),(7,'QUT Art Museum','2 George St, Brisbane City QLD 4000','(07) 3138 5370','www.artmuseum.qut.edu.au','-27.4766','153.0289'),(8,'Queensland Maritime Museum','412 Stanley St, South Brisbane QLD 4101','(07) 3844 5361','maritimemuseum.com.au','-27.4818','153.0256'),(9,'Brisbane Tramway Museum','50 Tramway St, Ferny Grove QLD 4055','(07) 3351 1776','brisbanetramwaymuseum.org','-27.4073','152.9378'),(10,'Sir Thomas Brisbane Planetarium','Mount Coot Tha Rd, Toowong QLD 4066','(07) 3403 2578','brisbane.qld.gov.au','-27.4757','152.9769'),(11,'UQ Anthropology Museum','Level 1, Michie Building (Building #9), University of Queensland, Chancellors Place, St Lucia QLD 4067','(07) 3365 3111','anthropologymuseum.uq.edu.au','-27.4973','153.0118'),(12,'Newstead House','Newstead Park Cnr Breakfast Creek Rd & Newstead Ave, Breakfast Creek Rd, Brisbane City QLD 4006','(07) 3216 1846','newsteadhouse.com.au','-27.4427','153.0460'),(13,'Brisbane Opal Museum','190/180 Albion Rd, Windsor QLD 4030','(07) 3857 7740','brisbaneopalmuseum.com.au','-27.4294','153.0328'),(14,'Griffith University Art Museum','Queensland College of Art, 226 Grey St, South Brisbane QLD 4101','(07) 3735 3140','griffith.edu.au','-27.4815','153.0243'),(15,'Customs House','399 Queen St, Brisbane City QLD 4000','(07) 3365 8999','customshouse.com.au','-27.4654','153.0311'),(16,'Brisbane Powerhouse','119 Lamington St, New Farm QLD 4005','(07) 3358 8600','brisbanepowerhouse.org','-27.4687','153.0539'),(17,'Hanworth House','109 Lytton Rd, East Brisbane QLD 4169','(07) 3391 7311','hanworthhouse.com.au','-27.4793','153.0476'),(18,'Old Petrie Town','901 Dayboro Rd, Whiteside QLD 4503','(07) 3285 5934','tompetrie.com.au','-27.2612','152.9536'),(19,'History Alive','Fort Lytton National Park, Lytton Road & South Street, Brisbane QLD 4178','(07) 3393 4647','historyalive.org.au','-27.4103','153.1514'),(20,'Old Government House','Qut Gardens Point Campus, Main Drive;, 2 George St, Brisbane City QLD 4000','(07) 3138 8005','ogh.qut.edu.au','-27.4773','153.0291');
/*!40000 ALTER TABLE `dbview_museums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbview_parks`
--

DROP TABLE IF EXISTS `dbview_parks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbview_parks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `Lat` varchar(300) NOT NULL,
  `Lon` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbview_parks`
--

LOCK TABLES `dbview_parks` WRITE;
/*!40000 ALTER TABLE `dbview_parks` DISABLE KEYS */;
INSERT INTO `dbview_parks` VALUES (1,'King Edward Park','224 Turbot St, Brisbane City QLD 4000','(07) 3403 8888','info@brisbanekids.com.au.','-27.4660','153.0240'),(2,'Kurilpa Point Park','1 Montague Rd, South Brisbane QLD 4101','(07) 3403 8888','info@brisbanekids.com.au.','-27.4699','153.0166'),(3,'Roma Street Parkland','1 Parkland Blvd, Brisbane City QLD 4000','1300 137 468','NA','-27.4637','153.0203'),(4,'Kalinga Park','31 Kalinga St, Clayfield QLD 4011','(07) 3403 8888','info@brisbanekids.com.au.','-27.4087','153.0541'),(5,'Wharf Park','39 Waterloo St, Newstead QLD 4006','(07) 3403 8888','info@brisbanekids.com.au.','-27.4476','153.0468'),(6,'Brisbane Parkour Park','455 Gregory Terrace, Fortitude Valley QLD 4006','0422 417 715','contact@brisbaneparkour.com.au','-27.4528','153.0280'),(7,'Heath Park','East Brisbane QLD 4169','(07) 3403 8888','info@brisbanekids.com.au.','-27.4786','153.0527'),(8,'Emma Miller Place','Brisbane City QLD 4000','(07) 3403 8888','info@brisbanekids.com.au.','-27.4670','153.0222'),(9,'Mowbray Park','60 Lytton Rd, East Brisbane QLD 4169','(07) 3403 8888','info@brisbanekids.com.au.','-27.4786','153.0441'),(10,'Real Park- Brisbane City Council','33 Heath St, East Brisbane QLD 4169','(07) 3403 8888','info@brisbanekids.com.au.','-27.4806','153.0489'),(11,'Brisbane City Botanic Gardens','Alice St, Brisbane City QLD 4000','(07) 3403 8888','info@brisbanekids.com.au.','-27.4745','153.0293'),(12,'South Brisbane War Memorial Park','459 Stanley St, South Brisbane QLD 4101','(07) 3403 8888','info@brisbanekids.com.au.','-27.4825','153.0252'),(13,'Musgrave Park','121 Cordelia St, South Brisbane QLD 4101','(07) 3846 5700','mpffdoperations@gmail.com','-27.4797','153.0177'),(14,'Clark Lane Park','518 Queen St, Brisbane City QLD 4000','(07) 3846 5700','info@brisbanekids.com.au.','-27.4635','153.0311'),(15,'Admiralty Towers II Park','501 Queen St, Brisbane City QLD 4000','(07) 3403 8888','info@brisbanekids.com.au.','-27.4644','153.0317'),(16,'Brisbane Corso Reserve Park','323 Brisbane Corso, Yeronga QLD 4104','(07) 3403 8888','info@brisbanekids.com.au.','-27.5058','153.0141'),(17,'Queens Gardens','144 George St, Brisbane City QLD 4000','(07) 3403 8888','info@brisbanekids.com.au.','-27.4723','153.0242'),(18,'Jolly Place Park','53 Grey St, South Brisbane QLD 4101','(07) 3403 8888','info@brisbanekids.com.au.','-27.4719','153.0168'),(19,'Woolloongabba Rotary Park (Buranda Park, Fisher Street Playground, Tristram Playground)','19 Camberwell St, East Brisbane QLD 4169','(07) 3403 8888','info@brisbanekids.com.au.','-27.4902','153.0427'),(20,'Moora Park','65 Park Parade, Shorncliffe QLD 4017','(07) 3403 8888','info@brisbanekids.com.au.','-27.3245','153.0849');
/*!40000 ALTER TABLE `dbview_parks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbview_restaurants`
--

DROP TABLE IF EXISTS `dbview_restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbview_restaurants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `Lat` varchar(300) NOT NULL,
  `Lon` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbview_restaurants`
--

LOCK TABLES `dbview_restaurants` WRITE;
/*!40000 ALTER TABLE `dbview_restaurants` DISABLE KEYS */;
INSERT INTO `dbview_restaurants` VALUES (1,'Jellyfish','123 Eagle St, Brisbane City QLD 4000','(07) 3220 2202','reservations@jellyfishrestaurant.com.au','-27.4672','153.0302'),(2,'Saké Restaurant & Bar','45 Eagle St, Brisbane City QLD 4000','(07) 3015 0557','reservations@sakerestaurant.com.au','-27.4690','153.0305'),(3,'Urbane Restaurant','181 Mary St, Brisbane City QLD 4000','(07) 3229 2271','reservations@urbanerestaurant.com','-27.4704','153.0295'),(4,'Va Bene Restaurant','Bryden St, Brisbane City QLD 4030','(07) 3357 3456','windsor@brisbaneinternationalhotels.com.au','-27.4386','153.0316'),(5,'e\'cco bistro','100 Boundary St, Brisbane QLD 4000','(07) 3831 8344','mail@eccobistro.com','-27.4621','153.0322'),(6,'Customs House','399 Queen St, Brisbane City QLD 4000','07) 3365 8999','info@customshouse.com.au','-27.4654','153.0311'),(7,'Alchemy Restaurant & Bar','175 Eagle St, Brisbane City QLD 4000','(07) 3229 3175','mail@alchemyrestaurant.com.au','-27.4658','153.0309'),(8,'Blackbird Bar & Grill','Riverside Centre, 123 Eagle St, Brisbane City QLD 4000','(07) 3229 1200','info@blackbirdbrisbane.com.au','-27.4671','153.0304'),(9,'Esquire','145 Eagle St, Brisbane City QLD 4000','(07) 3220 2123','eat@esquire.net.au','-27.4665','153.0305'),(10,'Kingsleys Brisbane','71 Eagle St, Brisbane City QLD 4000','(07) 3051 7650','admin@kingsleysbrisbane.com.au','-27.4680','153.0305'),(11,'Prive249','Sofitel Brisbane Central, 249 Turbot St, Brisbane City QLD 4000','(07) 3835 3535','H5992@sofitel.com','-27.4657','153.0260'),(12,'Thyme2 Restaurant','249 Turbot St, Brisbane City QLD 4000','(07) 3835 3535','H5992@sofitel.com','-27.4657','153.0259'),(13,'Jamie\'s Italian Brisbane','237 Edward St, Brisbane City QLD 4000','(07) 3144 3000','NA','-27.4677','153.0266'),(14,'George\'s Paragon Seafood Restaurant Brisbane','1/10 Eagle St, Brisbane City QLD 4000','(07) 3211 8111','info@georgeseaglestreet.com.au','-27.4696','153.0307'),(15,'Malt Dining','28 Market St, Brisbane City QLD 4000','(07) 3236 4855','enquiries@maltdining.com.au','-27.4693','153.0294'),(16,'Indian Mehfil Brisbane','10 Felix St, Brisbane City QLD 4000','(07) 3211 7354','cbd@mehfil.com.au','-27.4710','153.0302'),(17,'Moo Moo The Wine Bar + Grill Brisbane','39 Edward St, Brisbane City QLD 4000','(07) 3236 4500','NA','-27.4713','153.0302'),(18,'Moda Restaurant','12 Edward St, Brisbane City QLD 4000','(07) 3221 7655','NA','-27.4720','153.0301'),(19,'Gambaro Seafood Restauran','33 Caxton St, Brisbane City QLD 4000','(07) 3369 9500','restaurant@gambaros.com.au','-27.4642','153.0127'),(20,'Fat Noodle Asian Restaurant','Treasury Casino, George St & Queen St, Brisbane City QLD 4000','(07) 3306 8888','brtcswitchboard@star.com.au','-27.4713','153.0236');
/*!40000 ALTER TABLE `dbview_restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbview_zoos`
--

DROP TABLE IF EXISTS `dbview_zoos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbview_zoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `Lat` varchar(300) NOT NULL,
  `Lon` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbview_zoos`
--

LOCK TABLES `dbview_zoos` WRITE;
/*!40000 ALTER TABLE `dbview_zoos` DISABLE KEYS */;
INSERT INTO `dbview_zoos` VALUES (1,'Alma Park Zoo Brisbane','Alma Road, Dakabin, QLD, 4503','(07) 3204 6566','NA','-27.1336','152.5857'),(2,'Brisbane Forest Park','60 Mt Nebo Road, THE GAP, QLD 4061','(07) 3300 4855','brisbaneforestpark@epa.qld.gov.au','-27.437693249','152.916807999'),(3,'Lone Pine Koala Sanctuary','708 Jesmond Rd, Fig Tree Pocket QLD 4069','(07) 3378 1366','service@koala.net','-27.53343','152.96899'),(4,'Animal Welfare League Qld','523 Telegraph Rd, Bracken Ridge QLD 4018','(07) 3631 6800','info@awlqld.com.au','-27.3324','153.0430'),(5,'The Cavy Cottage','2b 2/6 Railway Pde, Geebung QLD 4034','0433 656 596','NA','-27.3694','153.0476'),(6,'RSPCA Brisbane Animal Care Campus','139 Wacol Station Rd, Wacol QLD 4076','(07) 3426 9999','admin@rspcaqld.org.au','-27.5681','152.9920'),(7,'Cat Cuddle Café','4/160 Musgrave Rd, Red Hill QLD 4059','(07) 3189 2426','contact@catcuddlecafe.com','-27.4549','153.0066'),(8,'Peninsula Animal Aid','313 Duffield Rd, Clontarf QLD 4019','(07) 3284 1927','paa@peninsulaanimalaid.com.au','-27.2416','153.0773'),(9,'GC Pet Resorts Arundel','5/352 Brisbane Rd, Arundel QLD 4214','(07) 5534 2292','goldcoastpetresorts@outlook.com.au','-27.9322','153.3732'),(10,'RSPCA Dakabin','Goodwin Rd, Dakabin QLD 4503','(07) 3886 0357','admin@rspcaqld.org.au','-27.2205','152.9942'),(11,'Farm Animal Rescue','1713 Dayboro Rd, Dayboro QLD 4521','0477 651 597','NA','-27.1965','152.8407'),(12,'Brisbane Snake Catcher','Brisbane QLD','0434 146 109','info@brisbane-snake-catcher.com.au','-27.5568','152.9426'),(13,'Best Friends West Ipswich','339 Brisbane St, West Ipswich QLD 4305','(07) 3432 5200','info@bfpets.com.au','-27.6195','152.7481'),(14,'Hanrob Pet Hotels Brisbane','69 Backhouse Place, Eagle Farm QLD 4009','1300 426 762','NA','-27.4258','153.0903'),(15,'SnakeOut','89 Almeida St, Indooroopilly QLD 4068','0456 880 903','info@snakeoutbrisbane.com.au','-27.5149','152.9552'),(16,'Brisbane Bird Vet','248 Hamilton Rd, Chermside QLD 4032','(07) 3359 2233','contactus@brisbanebirdvet.com.au','-27.3878','153.0403'),(17,'Goat Veterinary Consultancies- goatvetoz','22 Lesina St, Brisbane QLD 4054','(07) 3355 6404','goatvetoz@gmail.com','-27.4043','152.9622'),(18,'Brisbane Bird & Exotics Veterinary Service','191 Cornwall St, Greenslopes QLD 4120','(07) 3217 3533','NA','-27.5020','153.0387'),(19,'The Cat Clinic','318 Junction Rd, Clayfield QLD 4011','(07) 3357 9902','NA','-27.4149','153.0136'),(20,'The Ark Veterinary Surgery','589 Robinson Rd W, Aspley QLD 4034','(07) 3263 9977','info@arkvet.net.au','-27.3648','153.0227');
/*!40000 ALTER TABLE `dbview_zoos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` text,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` text NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `content_type_id` (`content_type_id`),
  CONSTRAINT `django_admin_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_ibfk_2` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'20','Nazarene Theological College',2,'[{\"changed\": {\"fields\": [\"departments\"]}}]',7,21,'2017-11-01 03:41:22'),(2,'44','newUser1Nov',1,'[{\"added\": {}}]',4,21,'2017-11-01 05:02:27'),(3,'45','Google',1,'[{\"added\": {}}]',4,21,'2017-11-01 05:13:53'),(4,'45','Google',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',4,21,'2017-11-01 05:14:23'),(5,'45','Google',3,'',4,21,'2017-11-01 05:17:06');
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
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'dbview','colleges'),(10,'dbview','hotels'),(9,'dbview','industries'),(8,'dbview','libraries'),(15,'dbview','malls'),(13,'dbview','museums'),(11,'dbview','parks'),(14,'dbview','restaurants'),(12,'dbview','zoos'),(16,'registerpage','profile'),(6,'sessions','session');
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
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-09-18 06:29:56'),(2,'auth','0001_initial','2017-09-18 06:29:56'),(3,'admin','0001_initial','2017-09-18 06:29:56'),(4,'contenttypes','0002_remove_content_type_name','2017-09-18 06:29:56'),(5,'auth','0002_alter_permission_name_max_length','2017-09-18 06:29:56'),(6,'auth','0003_alter_user_email_max_length','2017-09-18 06:29:56'),(7,'auth','0004_alter_user_username_opts','2017-09-18 06:29:56'),(8,'auth','0005_alter_user_last_login_null','2017-09-18 06:29:56'),(9,'auth','0006_require_contenttypes_0002','2017-09-18 06:29:56'),(10,'dbview','0001_initial','2017-09-18 06:29:56'),(11,'mainpage','0001_initial','2017-09-18 06:29:56'),(12,'mainpage','0002_delete_colleges','2017-09-18 06:29:56'),(13,'sessions','0001_initial','2017-09-18 06:29:56'),(14,'dbview','0002_hotels_industries_libraries_malls_museums_parks_restaurants_zoos','2017-09-19 08:13:09'),(15,'admin','0002_logentry_remove_auto_add','2017-10-18 00:29:54'),(16,'auth','0007_alter_validators_add_error_messages','2017-10-18 00:29:55'),(17,'auth','0008_alter_user_username_max_length','2017-10-18 00:29:55'),(18,'registerpage','0001_initial','2017-10-27 08:19:26'),(19,'registerpage','0002_auto_20171028_1056','2017-10-28 00:56:44'),(20,'dbview','0003_auto_20171028_1056','2017-10-28 00:57:01'),(21,'dbview','0004_auto_20171028_1058','2017-10-28 00:58:10'),(22,'dbview','0005_auto_20171028_1059','2017-10-28 00:59:53'),(23,'dbview','0006_auto_20171030_1946','2017-10-30 09:46:46'),(24,'dbview','0007_auto_20171030_1947','2017-10-30 09:47:33'),(25,'dbview','0008_auto_20171030_1950','2017-10-30 09:50:21'),(26,'dbview','0009_auto_20171030_2034','2017-10-30 10:34:34'),(27,'dbview','0010_auto_20171030_2035','2017-10-30 10:35:09'),(28,'dbview','0011_auto_20171030_2038','2017-10-30 10:38:15'),(29,'dbview','0012_auto_20171030_2112','2017-10-30 11:12:51'),(30,'dbview','0013_auto_20171030_2119','2017-10-30 11:19:52'),(31,'dbview','0014_auto_20171030_2120','2017-10-30 11:20:40');
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
  `session_data` text NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0gamf1c9lmm4w9s4s33tixrcc32632iz','ZGQwMDFjODBkNzk4MTkyZDA0YzY2YjYzMjZhNDgzM2IwMjAxYzQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImRmZTlmMWMyOGQ3OGJjMDdhOThlMzFjOTI5MDQzYWEyNjkxZGZjODQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNyJ9','2017-11-12 04:28:14'),('7vmgrm0je1223lpssjyozz6uyyhxqchq','MzE1OWZlZTc4NzM4NjI4OGJjYzg5YWFiYzk2MjY4MjE5ZDczYjk1ODp7fQ==','2017-11-14 04:09:14'),('ajs86p6018a2ezhua2nmu17vgxfnjlas','M2EzZjIzZDFhZmViZDZhMGZiY2JkN2ZlOWJiZGFlMzk3MjczMDNkNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjhjMzY1ZjRmZjRiZWUyMzFmMjQ0YWNiMTg5ZGQ4ODZlMTE4OTBkMDMiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-11-01 04:35:14'),('eij3orsiz0az9y3ou9esa0js22ecm5rj','MzE1OWZlZTc4NzM4NjI4OGJjYzg5YWFiYzk2MjY4MjE5ZDczYjk1ODp7fQ==','2017-11-14 04:21:17'),('eo2d05plkc9fe7f0682if6b2tonvtvdh','ZmU0MGE2NTFiOWYyY2QwMWYzN2ViNDQ0MDEzNzAzMTgyM2M0ZTkwMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjdmMzQwMGNmYTAxYTY4NTVkYjZkNTQ4MzllOWQwZTI3YjQxZGVmMDgiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-11-01 01:14:54'),('h45qwd2ir6lu89j8h316g30tp2ts4af5','M2EzZjIzZDFhZmViZDZhMGZiY2JkN2ZlOWJiZGFlMzk3MjczMDNkNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjhjMzY1ZjRmZjRiZWUyMzFmMjQ0YWNiMTg5ZGQ4ODZlMTE4OTBkMDMiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-11-01 04:42:49'),('iy3tbq9p26zte44w3rzvb08mxp7kfs47','ZDRjODQ5YzBkZWFjNzIzMjlhYmVjZDgyNDAzOWVlZWQ0NGQzMmY0MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZTBhZGVkY2FiZTdmZGEzYjQ1MjZkOTY1MTVlMDYxYzQ1YTQ0Mjc5In0=','2017-10-27 00:22:24'),('jeez15yu603qpraf3c2gnuceakzjo1bz','MzczNGVjNTViZjNlMjIyMmNhNmJkZmFmOWY4M2YxZmQ5NzQ4Yzk3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjZhZDE1Y2U0NzVkZjg4Yjk2YjQ4NjQ1MjE1OWIwNjZhODFlZDI5MmYiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-11-01 04:26:04'),('p1rgzm068iaedt4uvre1kwhrt5bxwfv1','MzE1OWZlZTc4NzM4NjI4OGJjYzg5YWFiYzk2MjY4MjE5ZDczYjk1ODp7fQ==','2017-11-15 04:07:47'),('pyz8wztoku8fbeiwo76tlydys2zyhskc','MzE1OWZlZTc4NzM4NjI4OGJjYzg5YWFiYzk2MjY4MjE5ZDczYjk1ODp7fQ==','2017-11-14 04:14:18'),('q3vt0mjwkqwm03sdpw70rkewlgq7o5ei','NmFmMzliMzQ0MGQxZGJjNmE0OWNkZTI3NzYzZGYxNTA4Y2JhOTg0MDp7Il9hdXRoX3VzZXJfaWQiOiIyOSIsIl9hdXRoX3VzZXJfaGFzaCI6IjIzMDRlZTA1ZmM5OWQ0ZGJjMzk2MGQwMTM4NTAxYzZkOGYyZTA3MDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2017-11-14 13:53:56'),('uzpfycdxve0kmaf8fv9x80gxnk3ublzk','MzE1OWZlZTc4NzM4NjI4OGJjYzg5YWFiYzk2MjY4MjE5ZDczYjk1ODp7fQ==','2017-11-14 04:17:14'),('y600uapt7s58mflr1awrmulwndd3hec9','YmY4OTE2NTA5YWQ4NTRmMTRhOTQ2MGUzNzBmNDMzOGE0MDExYjgwMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDY0ZDk4M2I4NjNiODc4YmJlMjk2MTBkZDJjOGYwOGJkODJhNjM2ZiIsIl9hdXRoX3VzZXJfaWQiOiIyMSJ9','2017-11-15 03:30:13');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registerpage_profile`
--

DROP TABLE IF EXISTS `registerpage_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registerpage_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `userType` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `registerpage_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registerpage_profile`
--

LOCK TABLES `registerpage_profile` WRITE;
/*!40000 ALTER TABLE `registerpage_profile` DISABLE KEYS */;
INSERT INTO `registerpage_profile` VALUES (1,11,1),(2,12,1),(3,13,1),(4,14,3),(5,15,1),(6,19,1),(7,20,1),(8,21,1),(9,22,1),(10,23,1),(11,24,1),(12,25,1),(14,27,2),(15,28,1),(16,29,1),(17,30,2),(18,31,1),(26,44,1);
/*!40000 ALTER TABLE `registerpage_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-01 19:19:26
