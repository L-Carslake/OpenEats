-- MySQL dump 10.14  Distrib 5.5.64-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: openeats
-- ------------------------------------------------------
-- Server version	5.5.64-MariaDB-1~trusty

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add user',2,'add_user'),(5,'Can change user',2,'change_user'),(6,'Can delete user',2,'delete_user'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add Token',8,'add_token'),(23,'Can change Token',8,'change_token'),(24,'Can delete Token',8,'delete_token'),(25,'Can add recipe',9,'add_recipe'),(26,'Can change recipe',9,'change_recipe'),(27,'Can delete recipe',9,'delete_recipe'),(28,'Can add sub recipe',10,'add_subrecipe'),(29,'Can change sub recipe',10,'change_subrecipe'),(30,'Can delete sub recipe',10,'delete_subrecipe'),(31,'Can add tag',11,'add_tag'),(32,'Can change tag',11,'change_tag'),(33,'Can delete tag',11,'delete_tag'),(34,'Can add cuisine',12,'add_cuisine'),(35,'Can change cuisine',12,'change_cuisine'),(36,'Can delete cuisine',12,'delete_cuisine'),(37,'Can add course',13,'add_course'),(38,'Can change course',13,'change_course'),(39,'Can delete course',13,'delete_course'),(40,'Can add ingredient group',14,'add_ingredientgroup'),(41,'Can change ingredient group',14,'change_ingredientgroup'),(42,'Can delete ingredient group',14,'delete_ingredientgroup'),(43,'Can add ingredient',15,'add_ingredient'),(44,'Can change ingredient',15,'change_ingredient'),(45,'Can delete ingredient',15,'delete_ingredient'),(46,'Can add news',16,'add_news'),(47,'Can change news',16,'change_news'),(48,'Can delete news',16,'delete_news'),(49,'Can add grocery shared',17,'add_groceryshared'),(50,'Can change grocery shared',17,'change_groceryshared'),(51,'Can delete grocery shared',17,'delete_groceryshared'),(52,'Can add grocery list',18,'add_grocerylist'),(53,'Can change grocery list',18,'change_grocerylist'),(54,'Can delete grocery list',18,'delete_grocerylist'),(55,'Can add grocery recipe',19,'add_groceryrecipe'),(56,'Can change grocery recipe',19,'change_groceryrecipe'),(57,'Can delete grocery recipe',19,'delete_groceryrecipe'),(58,'Can add grocery item',20,'add_groceryitem'),(59,'Can change grocery item',20,'change_groceryitem'),(60,'Can delete grocery item',20,'delete_groceryitem'),(61,'Can add cors model',21,'add_corsmodel'),(62,'Can change cors model',21,'change_corsmodel'),(63,'Can delete cors model',21,'delete_corsmodel');
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
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'admin','logentry'),(3,'auth','group'),(1,'auth','permission'),(2,'auth','user'),(8,'authtoken','token'),(4,'contenttypes','contenttype'),(21,'corsheaders','corsmodel'),(15,'ingredient','ingredient'),(14,'ingredient','ingredientgroup'),(20,'list','groceryitem'),(18,'list','grocerylist'),(19,'list','groceryrecipe'),(17,'list','groceryshared'),(16,'news','news'),(9,'recipe','recipe'),(10,'recipe','subrecipe'),(13,'recipe_groups','course'),(12,'recipe_groups','cuisine'),(11,'recipe_groups','tag'),(5,'sessions','session'),(6,'sites','site');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-04-12 11:16:39'),(2,'auth','0001_initial','2020-04-12 11:16:40'),(3,'admin','0001_initial','2020-04-12 11:16:40'),(4,'admin','0002_logentry_remove_auto_add','2020-04-12 11:16:40'),(5,'contenttypes','0002_remove_content_type_name','2020-04-12 11:16:40'),(6,'auth','0002_alter_permission_name_max_length','2020-04-12 11:16:40'),(7,'auth','0003_alter_user_email_max_length','2020-04-12 11:16:40'),(8,'auth','0004_alter_user_username_opts','2020-04-12 11:16:40'),(9,'auth','0005_alter_user_last_login_null','2020-04-12 11:16:40'),(10,'auth','0006_require_contenttypes_0002','2020-04-12 11:16:40'),(11,'auth','0007_alter_validators_add_error_messages','2020-04-12 11:16:40'),(12,'auth','0008_alter_user_username_max_length','2020-04-12 11:16:40'),(13,'authtoken','0001_initial','2020-04-12 11:16:40'),(14,'authtoken','0002_auto_20160226_1747','2020-04-12 11:16:41'),(15,'recipe_groups','0001_initial','2020-04-12 11:16:41'),(16,'recipe','0001_initial','2020-04-12 11:16:43'),(17,'recipe','0002_remove_recipe_directions','2020-04-12 11:16:43'),(18,'recipe','0003_auto_20161111_1122','2020-04-12 11:16:44'),(19,'recipe','0004_auto_20161126_1758','2020-04-12 11:16:44'),(20,'recipe','0005_recipe_source','2020-04-12 11:16:45'),(21,'recipe','0006_auto_20170127_0905','2020-04-12 11:16:45'),(22,'recipe','0007_auto_20170723_2046','2020-04-12 11:16:45'),(23,'ingredient','0001_initial','2020-04-12 11:16:45'),(24,'ingredient','0002_auto_20170127_2104','2020-04-12 11:16:45'),(25,'ingredient','0003_auto_20170723_2050','2020-04-12 11:16:46'),(26,'ingredient','0004_auto_20170723_2101','2020-04-12 11:16:46'),(27,'ingredient','0005_auto_20170725_1950','2020-04-12 11:16:46'),(28,'ingredient','0006_auto_20170725_1951','2020-04-12 11:16:46'),(29,'ingredient','0007_remove_ingredient_recipe','2020-04-12 11:16:46'),(30,'list','0001_initial','2020-04-12 11:16:47'),(31,'list','0002_groceryitem_complete','2020-04-12 11:16:47'),(32,'list','0003_auto_20170128_2118','2020-04-12 11:16:47'),(33,'list','0004_auto_20170203_1045','2020-04-12 11:16:48'),(34,'list','0005_auto_20170728_2230','2020-04-12 11:16:48'),(35,'list','0006_auto_20170826_0059','2020-04-12 11:16:48'),(36,'news','0001_initial','2020-04-12 11:16:49'),(37,'news','0002_auto_20161125_0846','2020-04-12 11:16:49'),(38,'recipe','0008_auto_20170806_2059','2020-04-12 11:16:49'),(39,'recipe','0009_auto_20171114_1443','2020-04-12 11:16:49'),(40,'recipe','0010_auto_20171114_1443','2020-04-12 11:16:49'),(41,'recipe','0011_auto_20171114_1543','2020-04-12 11:16:49'),(42,'recipe','0012_auto_20180106_1113','2020-04-12 11:16:49'),(43,'recipe_groups','0002_remove_tag_author','2020-04-12 11:16:50'),(44,'sessions','0001_initial','2020-04-12 11:16:50'),(45,'sites','0001_initial','2020-04-12 11:16:50'),(46,'sites','0002_alter_domain_unique','2020-04-12 11:16:50');
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
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient_ingredient`
--

DROP TABLE IF EXISTS `ingredient_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient_ingredient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `quantity` double NOT NULL,
  `measurement` varchar(200) DEFAULT NULL,
  `ingredient_group_id` int(11),
  PRIMARY KEY (`id`),
  KEY `ingredient_ingredient_815452e0` (`ingredient_group_id`),
  CONSTRAINT `in_ingredient_group_id_42a585aa_fk_ingredient_ingredientgroup_id` FOREIGN KEY (`ingredient_group_id`) REFERENCES `ingredient_ingredientgroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient_ingredient`
--

LOCK TABLES `ingredient_ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient_ingredient` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingredient_ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient_ingredientgroup`
--

DROP TABLE IF EXISTS `ingredient_ingredientgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient_ingredientgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `recipe_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ingredient_ingredientgroup_title_368426d7_uniq` (`title`,`recipe_id`),
  KEY `ingredient_ingredientgrou_recipe_id_ad054d9e_fk_recipe_recipe_id` (`recipe_id`),
  CONSTRAINT `ingredient_ingredientgrou_recipe_id_ad054d9e_fk_recipe_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipe_recipe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient_ingredientgroup`
--

LOCK TABLES `ingredient_ingredientgroup` WRITE;
/*!40000 ALTER TABLE `ingredient_ingredientgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingredient_ingredientgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_groceryitem`
--

DROP TABLE IF EXISTS `list_groceryitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_groceryitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `title` varchar(550) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `list_groceryitem_4da3e820` (`list_id`),
  CONSTRAINT `list_groceryitem_list_id_391cb674_fk_list_grocerylist_id` FOREIGN KEY (`list_id`) REFERENCES `list_grocerylist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_groceryitem`
--

LOCK TABLES `list_groceryitem` WRITE;
/*!40000 ALTER TABLE `list_groceryitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_groceryitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_grocerylist`
--

DROP TABLE IF EXISTS `list_grocerylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_grocerylist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `pub_date` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `list_grocerylist_author_id_edd4c434_fk_auth_user_id` (`author_id`),
  KEY `list_grocerylist_2dbcba41` (`slug`),
  CONSTRAINT `list_grocerylist_author_id_edd4c434_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_grocerylist`
--

LOCK TABLES `list_grocerylist` WRITE;
/*!40000 ALTER TABLE `list_grocerylist` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_grocerylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_groceryrecipe`
--

DROP TABLE IF EXISTS `list_groceryrecipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_groceryrecipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `list_groceryrecipe_list_id_7b8a3ea3_fk_list_grocerylist_id` (`list_id`),
  KEY `list_groceryrecipe_recipe_id_108fdb46_fk_recipe_recipe_id` (`recipe_id`),
  CONSTRAINT `list_groceryrecipe_list_id_7b8a3ea3_fk_list_grocerylist_id` FOREIGN KEY (`list_id`) REFERENCES `list_grocerylist` (`id`),
  CONSTRAINT `list_groceryrecipe_recipe_id_108fdb46_fk_recipe_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipe_recipe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_groceryrecipe`
--

LOCK TABLES `list_groceryrecipe` WRITE;
/*!40000 ALTER TABLE `list_groceryrecipe` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_groceryrecipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_groceryshared`
--

DROP TABLE IF EXISTS `list_groceryshared`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_groceryshared` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `shared_by_id` int(11) NOT NULL,
  `shared_to_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `list_groceryshared_list_id_47feb2f7_fk_list_grocerylist_id` (`list_id`),
  KEY `list_groceryshared_shared_by_id_b214e597_fk_auth_user_id` (`shared_by_id`),
  KEY `list_groceryshared_shared_to_id_1d668c2f_fk_auth_user_id` (`shared_to_id`),
  CONSTRAINT `list_groceryshared_list_id_47feb2f7_fk_list_grocerylist_id` FOREIGN KEY (`list_id`) REFERENCES `list_grocerylist` (`id`),
  CONSTRAINT `list_groceryshared_shared_by_id_b214e597_fk_auth_user_id` FOREIGN KEY (`shared_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `list_groceryshared_shared_to_id_1d668c2f_fk_auth_user_id` FOREIGN KEY (`shared_to_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_groceryshared`
--

LOCK TABLES `list_groceryshared` WRITE;
/*!40000 ALTER TABLE `list_groceryshared` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_groceryshared` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_news`
--

DROP TABLE IF EXISTS `news_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `frontpage` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `pub_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_news`
--

LOCK TABLES `news_news` WRITE;
/*!40000 ALTER TABLE `news_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_groups_course`
--

DROP TABLE IF EXISTS `recipe_groups_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_groups_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`),
  KEY `recipe_groups_course_author_id_e2d6c656_fk_auth_user_id` (`author_id`),
  CONSTRAINT `recipe_groups_course_author_id_e2d6c656_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_groups_course`
--

LOCK TABLES `recipe_groups_course` WRITE;
/*!40000 ALTER TABLE `recipe_groups_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe_groups_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_groups_cuisine`
--

DROP TABLE IF EXISTS `recipe_groups_cuisine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_groups_cuisine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`),
  KEY `recipe_groups_cuisine_author_id_704782fa_fk_auth_user_id` (`author_id`),
  CONSTRAINT `recipe_groups_cuisine_author_id_704782fa_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_groups_cuisine`
--

LOCK TABLES `recipe_groups_cuisine` WRITE;
/*!40000 ALTER TABLE `recipe_groups_cuisine` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe_groups_cuisine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_groups_tag`
--

DROP TABLE IF EXISTS `recipe_groups_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_groups_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_groups_tag`
--

LOCK TABLES `recipe_groups_tag` WRITE;
/*!40000 ALTER TABLE `recipe_groups_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe_groups_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_recipe`
--

DROP TABLE IF EXISTS `recipe_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `info` longtext NOT NULL,
  `prep_time` int(11) NOT NULL,
  `cook_time` int(11) NOT NULL,
  `servings` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `pub_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `author_id` int(11),
  `course_id` int(11) NOT NULL,
  `cuisine_id` int(11) NOT NULL,
  `source` varchar(200) NOT NULL,
  `directions` longtext NOT NULL,
  `public` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `recipe_recipe_4f331e2f` (`author_id`),
  KEY `recipe_recipe_ea134da7` (`course_id`),
  KEY `recipe_recipe_539e91ee` (`cuisine_id`),
  CONSTRAINT `recipe_recipe_author_id_76879012_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `recipe_recipe_course_id_36ea1d30_fk_recipe_groups_course_id` FOREIGN KEY (`course_id`) REFERENCES `recipe_groups_course` (`id`),
  CONSTRAINT `recipe_recipe_cuisine_id_74ec31bb_fk_recipe_groups_cuisine_id` FOREIGN KEY (`cuisine_id`) REFERENCES `recipe_groups_cuisine` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_recipe`
--

LOCK TABLES `recipe_recipe` WRITE;
/*!40000 ALTER TABLE `recipe_recipe` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe_recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_recipe_tags`
--

DROP TABLE IF EXISTS `recipe_recipe_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_recipe_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recipe_recipe_tags_recipe_id_d5aaba5b_uniq` (`recipe_id`,`tag_id`),
  KEY `recipe_recipe_tags_tag_id_ee78e406_fk_recipe_groups_tag_id` (`tag_id`),
  CONSTRAINT `recipe_recipe_tags_recipe_id_01e493ee_fk_recipe_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipe_recipe` (`id`),
  CONSTRAINT `recipe_recipe_tags_tag_id_ee78e406_fk_recipe_groups_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `recipe_groups_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_recipe_tags`
--

LOCK TABLES `recipe_recipe_tags` WRITE;
/*!40000 ALTER TABLE `recipe_recipe_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe_recipe_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_subrecipe`
--

DROP TABLE IF EXISTS `recipe_subrecipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_subrecipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `measurement` longtext,
  `child_recipe_id` int(11) DEFAULT NULL,
  `parent_recipe_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipe_subrecipe_child_recipe_id_8fd69499_fk_recipe_recipe_id` (`child_recipe_id`),
  KEY `recipe_subrecipe_parent_recipe_id_13084b48_fk_recipe_recipe_id` (`parent_recipe_id`),
  CONSTRAINT `recipe_subrecipe_child_recipe_id_8fd69499_fk_recipe_recipe_id` FOREIGN KEY (`child_recipe_id`) REFERENCES `recipe_recipe` (`id`),
  CONSTRAINT `recipe_subrecipe_parent_recipe_id_13084b48_fk_recipe_recipe_id` FOREIGN KEY (`parent_recipe_id`) REFERENCES `recipe_recipe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_subrecipe`
--

LOCK TABLES `recipe_subrecipe` WRITE;
/*!40000 ALTER TABLE `recipe_subrecipe` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe_subrecipe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-12 11:48:11
