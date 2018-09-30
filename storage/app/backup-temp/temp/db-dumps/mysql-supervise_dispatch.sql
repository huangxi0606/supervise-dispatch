
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'Index','fa-bar-chart','/',NULL,NULL),(2,0,2,'Admin','fa-tasks','',NULL,NULL),(3,2,3,'用户管理','fa-users','auth/users',NULL,'2018-07-24 06:14:38'),(4,2,4,'角色管理','fa-user','auth/roles',NULL,'2018-07-24 06:14:50'),(5,2,5,'Permission','fa-ban','auth/permissions',NULL,NULL),(6,2,6,'菜单管理','fa-bars','auth/menu',NULL,'2018-07-24 06:15:01'),(7,2,7,'操作日志','fa-history','auth/logs',NULL,'2018-07-24 06:15:14'),(9,0,0,'Category','fa-bars',NULL,'2018-07-20 09:49:38','2018-07-20 09:58:05'),(10,9,0,'类型管理','fa-bars','/category','2018-07-20 09:50:29','2018-07-24 06:14:15'),(11,9,0,'物品管理','fa-bars','/goods','2018-07-21 03:49:00','2018-07-24 06:14:25'),(12,0,8,'Log viewer','fa-database','logs','2018-07-24 06:48:06','2018-07-24 06:48:06'),(13,9,0,'数据查看','fa-bars','/links','2018-07-25 02:23:43','2018-07-25 02:23:43');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-24 06:21:20','2018-07-24 06:21:20'),(2,1,'admin/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-24 06:21:22','2018-07-24 06:21:22'),(3,1,'admin/goods','POST','127.0.0.1','{\"name\":\"task_dispatch\",\"\\u4f4d\\u7f6e\":\"\\u516c\\u53f8\",\"\\u6301\\u6709\\u4eba\":\"\\u674e\\u56db\",\"\\u6570\\u91cf\":\"2\",\"\\u578b\\u53f7\":\"6\",\"_token\":\"W40wI23RGZ9qywfs1ls7caV0YoRHTGkEQvJcD4GX\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/goods\"}','2018-07-24 06:21:34','2018-07-24 06:21:34'),(4,1,'admin/goods','GET','127.0.0.1','[]','2018-07-24 06:21:34','2018-07-24 06:21:34'),(5,1,'admin/goods','GET','127.0.0.1','[]','2018-07-24 08:36:24','2018-07-24 08:36:24'),(6,1,'admin/goods','GET','127.0.0.1','[]','2018-07-24 08:36:37','2018-07-24 08:36:37'),(7,1,'admin/goods','GET','127.0.0.1','{\"id\":null,\"name\":\"hhc\",\"_pjax\":\"#pjax-container\"}','2018-07-24 08:36:43','2018-07-24 08:36:43'),(8,1,'admin/goods','GET','127.0.0.1','{\"id\":null,\"name\":\"hhc\"}','2018-07-24 10:09:22','2018-07-24 10:09:22'),(9,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-07-25 02:23:17','2018-07-25 02:23:17'),(10,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"9\",\"title\":\"\\u6570\\u636e\\u67e5\\u770b\",\"icon\":\"fa-bars\",\"uri\":\"\\/links\",\"roles\":[\"1\",null],\"_token\":\"wDvxljjDpI5s5v5lFn5zsf1mAoQHiSwaSqpo7CHg\"}','2018-07-25 02:23:43','2018-07-25 02:23:43'),(11,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-07-25 02:23:43','2018-07-25 02:23:43'),(12,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-07-25 02:23:46','2018-07-25 02:23:46'),(13,1,'admin/links','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-25 02:23:48','2018-07-25 02:23:48'),(14,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 02:24:20','2018-07-25 02:24:20'),(15,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 02:25:38','2018-07-25 02:25:38'),(16,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 02:36:57','2018-07-25 02:36:57'),(17,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 02:46:29','2018-07-25 02:46:29'),(18,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 02:46:45','2018-07-25 02:46:45'),(19,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:00:32','2018-07-25 03:00:32'),(20,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:08:36','2018-07-25 03:08:36'),(21,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:08:57','2018-07-25 03:08:57'),(22,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:09:44','2018-07-25 03:09:44'),(23,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:09:56','2018-07-25 03:09:56'),(24,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:11:06','2018-07-25 03:11:06'),(25,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:13:46','2018-07-25 03:13:46'),(26,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:14:39','2018-07-25 03:14:39'),(27,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:15:07','2018-07-25 03:15:07'),(28,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:15:39','2018-07-25 03:15:39'),(29,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:16:17','2018-07-25 03:16:17'),(30,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:16:36','2018-07-25 03:16:36'),(31,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:17:03','2018-07-25 03:17:03'),(32,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:17:05','2018-07-25 03:17:05'),(33,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:17:14','2018-07-25 03:17:14'),(34,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:19:54','2018-07-25 03:19:54'),(35,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:21:37','2018-07-25 03:21:37'),(36,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:22:24','2018-07-25 03:22:24'),(37,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:24:20','2018-07-25 03:24:20'),(38,1,'admin/links','GET','127.0.0.1','{\"\\u516c\\u53f8\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:24:21','2018-07-25 03:24:21'),(39,1,'admin/links','GET','127.0.0.1','{\"\\u516c\\u53f8\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:24:23','2018-07-25 03:24:23'),(40,1,'admin/links','GET','127.0.0.1','{\"\\u516c\\u53f8\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:24:24','2018-07-25 03:24:24'),(41,1,'admin/links','GET','127.0.0.1','{\"1\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:24:26','2018-07-25 03:24:26'),(42,1,'admin/links','GET','127.0.0.1','{\"1\":null}','2018-07-25 03:24:48','2018-07-25 03:24:48'),(43,1,'admin/links','GET','127.0.0.1','{\"2\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:24:52','2018-07-25 03:24:52'),(44,1,'admin/links','GET','127.0.0.1','{\"2\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:24:53','2018-07-25 03:24:53'),(45,1,'admin/links','GET','127.0.0.1','{\"2\":null}','2018-07-25 03:25:34','2018-07-25 03:25:34'),(46,1,'admin/links','GET','127.0.0.1','{\"2\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:25:50','2018-07-25 03:25:50'),(47,1,'admin/links','GET','127.0.0.1','{\"2\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:26:00','2018-07-25 03:26:00'),(48,1,'admin/links','GET','127.0.0.1','{\"2\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:26:02','2018-07-25 03:26:02'),(49,1,'admin/links','GET','127.0.0.1','{\"2\":null}','2018-07-25 03:27:10','2018-07-25 03:27:10'),(50,1,'admin/links','GET','127.0.0.1','{\"2\":null}','2018-07-25 03:27:24','2018-07-25 03:27:24'),(51,1,'admin/links','GET','127.0.0.1','{\"2\":null}','2018-07-25 03:27:27','2018-07-25 03:27:27'),(52,1,'admin/links','GET','127.0.0.1','{\"2\":null}','2018-07-25 03:27:35','2018-07-25 03:27:35'),(53,1,'admin/links','GET','127.0.0.1','{\"2\":null}','2018-07-25 03:27:37','2018-07-25 03:27:37'),(54,1,'admin/links','GET','127.0.0.1','{\"2\":null}','2018-07-25 03:27:49','2018-07-25 03:27:49'),(55,1,'admin/links','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-25 03:27:52','2018-07-25 03:27:52'),(56,1,'admin/links','GET','127.0.0.1','[]','2018-07-25 03:28:02','2018-07-25 03:28:02'),(57,1,'admin/links','GET','127.0.0.1','{\"2\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:28:03','2018-07-25 03:28:03'),(58,1,'admin/links','GET','127.0.0.1','{\"2\":null}','2018-07-25 03:28:15','2018-07-25 03:28:15'),(59,1,'admin/links','GET','127.0.0.1','{\"2\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:28:18','2018-07-25 03:28:18'),(60,1,'admin/links','GET','127.0.0.1','{\"2\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:28:22','2018-07-25 03:28:22'),(61,1,'admin/links','GET','127.0.0.1','{\"2\":null}','2018-07-25 03:28:30','2018-07-25 03:28:30'),(62,1,'admin/links','GET','127.0.0.1','{\"2\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:28:33','2018-07-25 03:28:33'),(63,1,'admin/links','GET','127.0.0.1','{\"2\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:28:35','2018-07-25 03:28:35'),(64,1,'admin/links','GET','127.0.0.1','{\"2\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:28:36','2018-07-25 03:28:36'),(65,1,'admin/links','GET','127.0.0.1','{\"2\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:28:37','2018-07-25 03:28:37'),(66,1,'admin/links','GET','127.0.0.1','{\"2\":null,\"_pjax\":\"#pjax-container\"}','2018-07-25 03:28:38','2018-07-25 03:28:38'),(67,1,'admin/links','GET','127.0.0.1','{\"2\":null}','2018-07-25 03:30:21','2018-07-25 03:30:21'),(68,1,'admin/links','GET','127.0.0.1','{\"2\":null}','2018-07-25 03:30:36','2018-07-25 03:30:36'),(69,1,'admin/links','GET','127.0.0.1','{\"data\":\"\\u674e\\u56db\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:30:41','2018-07-25 03:30:41'),(70,1,'admin/links','GET','127.0.0.1','{\"data\":\"\\u5bb6\\u91cc\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:30:44','2018-07-25 03:30:44'),(71,1,'admin/links','GET','127.0.0.1','{\"data\":\"\\u516c\\u53f8\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:30:46','2018-07-25 03:30:46'),(72,1,'admin/links','GET','127.0.0.1','{\"data\":\"\\u5f20\\u4e09\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:30:48','2018-07-25 03:30:48'),(73,1,'admin/links','GET','127.0.0.1','{\"data\":\"2\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:30:50','2018-07-25 03:30:50'),(74,1,'admin/links','GET','127.0.0.1','{\"data\":\"\\u516c\\u53f8\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:31:11','2018-07-25 03:31:11'),(75,1,'admin/links','GET','127.0.0.1','{\"data\":\"\\u516c\\u53f8\"}','2018-07-25 03:32:48','2018-07-25 03:32:48'),(76,1,'admin/links','GET','127.0.0.1','{\"data\":\"\\u516c\\u53f8\"}','2018-07-25 03:41:35','2018-07-25 03:41:35'),(77,1,'admin/links','GET','127.0.0.1','{\"data\":\"\\u516c\\u53f8\"}','2018-07-25 03:43:09','2018-07-25 03:43:09'),(78,1,'admin/goods','GET','127.0.0.1','{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:43:11','2018-07-25 03:43:11'),(79,1,'admin/links','GET','127.0.0.1','{\"data\":\"\\u516c\\u53f8\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:43:20','2018-07-25 03:43:20'),(80,1,'admin/links','GET','127.0.0.1','{\"data\":\"1\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:43:25','2018-07-25 03:43:25'),(81,1,'admin/goods','GET','127.0.0.1','{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:43:27','2018-07-25 03:43:27'),(82,1,'admin/links','GET','127.0.0.1','{\"data\":\"1\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:43:29','2018-07-25 03:43:29'),(83,1,'admin/links','GET','127.0.0.1','{\"data\":\"6\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:43:31','2018-07-25 03:43:31'),(84,1,'admin/goods','GET','127.0.0.1','{\"id\":\"4\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:43:33','2018-07-25 03:43:33'),(85,1,'admin/links','GET','127.0.0.1','{\"data\":\"6\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:43:35','2018-07-25 03:43:35'),(86,1,'admin/links','GET','127.0.0.1','{\"data\":\"6\"}','2018-07-25 03:43:53','2018-07-25 03:43:53'),(87,1,'admin/links','GET','127.0.0.1','{\"data\":\"\\u516c\\u53f8\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:44:07','2018-07-25 03:44:07'),(88,1,'admin/links','GET','127.0.0.1','{\"data\":\"\\u516c\\u53f8\"}','2018-07-25 03:44:24','2018-07-25 03:44:24'),(89,1,'admin/links','GET','127.0.0.1','{\"id\":null,\"data\":\"\\u516c\\u53f8\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:45:03','2018-07-25 03:45:03'),(90,1,'admin/links','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"id\":null,\"data\":\"2\"}','2018-07-25 03:45:15','2018-07-25 03:45:15'),(91,1,'admin/links','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"id\":null,\"data\":\"9\"}','2018-07-25 03:45:22','2018-07-25 03:45:22'),(92,1,'admin/links','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"id\":null,\"data\":\"\\u5f20\\u4e09\"}','2018-07-25 03:45:33','2018-07-25 03:45:33'),(93,1,'admin/goods','GET','127.0.0.1','{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}','2018-07-25 03:45:40','2018-07-25 03:45:40'),(94,1,'admin','GET','127.0.0.1','[]','2018-07-26 08:40:54','2018-07-26 08:40:54'),(95,1,'admin/goods','GET','127.0.0.1','[]','2018-07-26 08:40:55','2018-07-26 08:40:55'),(96,1,'admin/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-26 08:42:11','2018-07-26 08:42:11'),(97,1,'admin/goods','GET','127.0.0.1','[]','2018-07-26 08:42:11','2018-07-26 08:42:11'),(98,1,'admin/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-26 08:42:33','2018-07-26 08:42:33'),(99,1,'admin/goods','GET','127.0.0.1','[]','2018-07-26 08:42:33','2018-07-26 08:42:33'),(100,1,'admin/goods','GET','127.0.0.1','[]','2018-07-26 08:42:59','2018-07-26 08:42:59'),(101,1,'admin/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-26 08:43:05','2018-07-26 08:43:05'),(102,1,'admin/category','GET','127.0.0.1','[]','2018-07-26 08:43:37','2018-07-26 08:43:37'),(103,1,'admin/category','GET','127.0.0.1','[]','2018-07-26 08:43:47','2018-07-26 08:43:47'),(104,1,'admin/category','GET','127.0.0.1','[]','2018-07-26 08:44:06','2018-07-26 08:44:06'),(105,1,'admin/category','GET','127.0.0.1','[]','2018-07-26 08:44:25','2018-07-26 08:44:25'),(106,1,'admin/category','GET','127.0.0.1','[]','2018-07-26 08:44:54','2018-07-26 08:44:54'),(107,1,'admin','GET','127.0.0.1','[]','2018-07-27 03:37:50','2018-07-27 03:37:50'),(108,1,'admin/goods','GET','127.0.0.1','[]','2018-07-27 03:37:50','2018-07-27 03:37:50'),(109,1,'admin/goods/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:38:00','2018-07-27 03:38:00'),(110,1,'admin/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:38:05','2018-07-27 03:38:05'),(111,1,'admin/goods/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:38:16','2018-07-27 03:38:16'),(112,1,'admin/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:38:20','2018-07-27 03:38:20'),(113,1,'admin/goods/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:38:22','2018-07-27 03:38:22'),(114,1,'admin/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:38:24','2018-07-27 03:38:24'),(115,1,'admin/goods/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:38:56','2018-07-27 03:38:56'),(116,1,'admin/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:39:01','2018-07-27 03:39:01'),(117,1,'admin/goods/4/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:39:03','2018-07-27 03:39:03'),(118,1,'admin/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:39:05','2018-07-27 03:39:05'),(119,1,'admin/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:39:07','2018-07-27 03:39:07'),(120,1,'admin/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:39:11','2018-07-27 03:39:11'),(121,1,'admin/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:39:21','2018-07-27 03:39:21'),(122,1,'admin/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:39:23','2018-07-27 03:39:23'),(123,1,'admin/category','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u989c\\u8272\",\"_token\":\"AeF6wmJFG0qv74VqUGiEvMlSj3hhOUyFtU39cmDm\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}','2018-07-27 03:39:28','2018-07-27 03:39:28'),(124,1,'admin/category','GET','127.0.0.1','[]','2018-07-27 03:39:29','2018-07-27 03:39:29'),(125,1,'admin/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:39:30','2018-07-27 03:39:30'),(126,1,'admin/category','POST','127.0.0.1','{\"parent_id\":\"12\",\"title\":\"\\u9ec4\\u8272\",\"_token\":\"AeF6wmJFG0qv74VqUGiEvMlSj3hhOUyFtU39cmDm\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}','2018-07-27 03:39:37','2018-07-27 03:39:37'),(127,1,'admin/category','GET','127.0.0.1','[]','2018-07-27 03:39:37','2018-07-27 03:39:37'),(128,1,'admin/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:39:39','2018-07-27 03:39:39'),(129,1,'admin/category','POST','127.0.0.1','{\"parent_id\":\"12\",\"title\":\"\\u7ea2\\u8272\",\"_token\":\"AeF6wmJFG0qv74VqUGiEvMlSj3hhOUyFtU39cmDm\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}','2018-07-27 03:39:46','2018-07-27 03:39:46'),(130,1,'admin/category','GET','127.0.0.1','[]','2018-07-27 03:39:47','2018-07-27 03:39:47'),(131,1,'admin/links','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:39:54','2018-07-27 03:39:54'),(132,1,'admin/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:39:57','2018-07-27 03:39:57'),(133,1,'admin/goods/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:40:00','2018-07-27 03:40:00'),(134,1,'admin/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:40:02','2018-07-27 03:40:02'),(135,1,'admin/goods/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:40:04','2018-07-27 03:40:04'),(136,1,'admin/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 03:40:06','2018-07-27 03:40:06'),(137,1,'admin/goods/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-27 05:39:03','2018-07-27 05:39:03');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'Logs','ext.log-viewer',NULL,'/logs*','2018-07-24 06:48:06','2018-07-24 06:48:06');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL),(1,9,NULL,NULL),(1,10,NULL,NULL),(1,11,NULL,NULL),(1,13,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2018-07-20 00:50:14','2018-07-20 00:50:14');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$TMWevx/dibnyMsFN8iY5COViYaGnyt/GF8KAPUABUBz9LMU7K2nfO','Administrator',NULL,NULL,'2018-07-20 00:50:14','2018-07-20 00:50:14');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,0,0,'位置','2018-07-21 04:15:34','2018-07-21 04:15:34'),(2,1,0,'家里','2018-07-21 04:15:55','2018-07-21 04:15:55'),(3,1,0,'公司','2018-07-21 04:16:06','2018-07-21 04:16:06'),(4,0,0,'持有人','2018-07-21 04:16:16','2018-07-21 04:16:16'),(5,4,0,'张三','2018-07-21 04:16:25','2018-07-21 04:16:25'),(6,4,0,'李四','2018-07-21 04:16:35','2018-07-21 04:16:35'),(7,0,0,'数量','2018-07-21 04:42:09','2018-07-21 04:42:09'),(8,7,0,'1','2018-07-21 04:42:23','2018-07-21 04:42:23'),(9,7,0,'2','2018-07-21 04:42:33','2018-07-21 04:42:33'),(10,0,0,'型号','2018-07-23 07:26:13','2018-07-23 07:26:13'),(11,10,0,'6','2018-07-23 07:29:11','2018-07-23 07:29:11'),(12,0,0,'颜色','2018-07-27 03:39:29','2018-07-27 03:39:29'),(13,12,0,'黄色','2018-07-27 03:39:37','2018-07-27 03:39:37'),(14,12,0,'红色','2018-07-27 03:39:46','2018-07-27 03:39:46');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cate_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'位置','2018-07-21 04:15:34','2018-07-21 04:15:34',1),(2,'持有人','2018-07-21 04:16:16','2018-07-21 04:16:16',4),(3,'数量','2018-07-21 04:42:09','2018-07-21 04:42:09',7),(4,'型号','2018-07-23 07:26:13','2018-07-23 07:26:13',10),(5,'颜色','2018-07-27 03:39:29','2018-07-27 03:39:29',12);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'hhc','2018-07-23 07:54:25','2018-07-23 07:54:25'),(3,'hhc','2018-07-24 03:28:00','2018-07-24 03:28:00'),(4,'task_dispatch','2018-07-24 06:21:34','2018-07-24 06:21:34');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `cate` varchar(50) NOT NULL DEFAULT '0',
  `data` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
INSERT INTO `link` VALUES (1,1,'位置','公司','2018-07-23 07:54:26','2018-07-23 07:54:26'),(2,1,'持有人','张三','2018-07-23 07:54:26','2018-07-23 09:59:39'),(3,1,'数量','1','2018-07-23 07:54:26','2018-07-23 07:54:51'),(4,1,'型号','6','2018-07-23 07:54:26','2018-07-23 07:54:26'),(9,1,'位置',NULL,'2018-07-24 03:28:00','2018-07-24 03:28:00'),(10,1,'持有人',NULL,'2018-07-24 03:28:00','2018-07-24 03:28:00'),(11,1,'数量',NULL,'2018-07-24 03:28:00','2018-07-24 03:28:00'),(12,1,'型号',NULL,'2018-07-24 03:28:00','2018-07-24 03:28:00'),(13,4,'位置','公司','2018-07-24 06:21:34','2018-07-24 06:21:34'),(14,4,'持有人','李四','2018-07-24 06:21:34','2018-07-24 06:21:34'),(15,4,'数量','2','2018-07-24 06:21:34','2018-07-24 06:21:34'),(16,4,'型号','6','2018-07-24 06:21:34','2018-07-24 06:21:34');
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_04_173148_create_admin_tables',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

