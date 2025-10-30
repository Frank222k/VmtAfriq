-- MySQL dump 10.13  Distrib 8.4.4, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: martfury
-- ------------------------------------------------------
-- Server version	8.4.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'uKPzLhFu3UFzqBUjJ0RBDq3VRsppu8ll',1,'2025-09-25 01:22:17','2025-09-25 01:22:17','2025-09-25 01:22:17');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2030-09-25 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2025-09-25 01:22:19','2025-09-25 01:22:19',1,NULL,NULL,NULL,NULL),(2,'Top Slider Image 2','2030-09-25 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2025-09-25 01:22:19','2025-09-25 01:22:19',1,NULL,NULL,NULL,NULL),(3,'Homepage middle 1','2030-09-25 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2025-09-25 01:22:19','2025-09-25 01:22:19',1,NULL,NULL,NULL,NULL),(4,'Homepage middle 2','2030-09-25 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2025-09-25 01:22:19','2025-09-25 01:22:19',1,NULL,NULL,NULL,NULL),(5,'Homepage middle 3','2030-09-25 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2025-09-25 01:22:19','2025-09-25 01:22:19',1,NULL,NULL,NULL,NULL),(6,'Homepage big 1','2030-09-25 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2025-09-25 01:22:19','2025-09-25 01:22:19',1,NULL,NULL,NULL,NULL),(7,'Homepage bottom small','2030-09-25 00:00:00','not_set','2GSC6ZQXYUZ8','promotion/7.jpg','/products',0,7,'published','2025-09-25 01:22:19','2025-09-25 01:22:19',1,NULL,NULL,NULL,NULL),(8,'Product sidebar','2030-09-25 00:00:00','product-sidebar','TFWJTPJKMVWR','promotion/8.jpg','/products',0,8,'published','2025-09-25 01:22:19','2025-09-25 01:22:19',1,NULL,NULL,NULL,NULL),(9,'Homepage big 2','2030-09-25 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2025-09-25 01:22:19','2025-09-25 01:22:19',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` bigint unsigned NOT NULL,
  `actor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Tenetur quibusdam possimus in neque quidem et. Sit placeat officiis velit quis aliquam. Est illo cupiditate quas nihil.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2025-09-25 01:22:18','2025-09-25 01:22:18'),(2,'Fashion',0,'Beatae voluptas qui aut dolor. Aut corrupti corporis et minima quas optio. Et qui quia ullam ea provident unde ut rerum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-25 01:22:18','2025-09-25 01:22:18'),(3,'Electronic',0,'Omnis sit facere in maxime recusandae. Ut quas iure quia. Maiores id et earum. Eum et corrupti quisquam cum quis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-25 01:22:18','2025-09-25 01:22:18'),(4,'Commercial',0,'In quis temporibus inventore voluptatem non dolores. Nam eum mollitia occaecati et. Explicabo qui eum inventore velit. Quo saepe consequatur repellat cum exercitationem aut ducimus.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-25 01:22:18','2025-09-25 01:22:18');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`),
  KEY `idx_cities_name` (`name`),
  KEY `idx_cities_state_status` (`state_id`,`status`),
  KEY `idx_cities_status` (`status`),
  KEY `idx_cities_state_id` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`),
  KEY `idx_cities_trans_city_lang` (`cities_id`,`lang_code`),
  KEY `idx_cities_trans_name` (`name`),
  KEY `idx_cities_trans_cities_id` (`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Ellen Hudson','reinger.merlin@example.org','+1-862-244-1630','714 Novella Creek Suite 954\nJayceburgh, TX 99662-9518','Nulla sed asperiores earum eaque sequi molestiae.','Quia optio blanditiis maiores nemo illum eligendi ut facere. Aut minus numquam facilis eveniet. In corrupti veniam aliquam debitis est. Doloribus quis odio vitae est sapiente. Iure dolore dolor molestias est consequatur modi. Aspernatur adipisci aut nesciunt reprehenderit. Distinctio veniam inventore voluptas sed. Et et distinctio blanditiis molestiae voluptates placeat voluptatem iste. Mollitia aut temporibus sint aut dolorem recusandae et. Est soluta et sapiente eum id.',NULL,'unread','2025-09-25 01:22:16','2025-09-25 01:22:16'),(2,'Janie Hilpert','griffin73@example.net','(360) 805-6145','792 Bahringer Ways Apt. 799\nSouth Freeda, DC 86264','At impedit rerum dolorem eum earum quia qui.','Consequatur nemo sed consequatur deleniti perferendis. Perspiciatis deserunt enim saepe velit vel officia et. Et laudantium occaecati in inventore officia. Quas at laboriosam eius aperiam sed. Accusamus beatae vitae inventore rerum qui quia. Iste nihil rerum corrupti. Quidem quia quas deserunt dolorem repellat nulla. Quaerat provident mollitia repellendus sed dolorem quo.',NULL,'read','2025-09-25 01:22:16','2025-09-25 01:22:16'),(3,'Ulices Schulist','abraham53@example.com','+1-281-798-9481','768 Ziemann Freeway Suite 579\nXanderland, FL 86544','Enim perspiciatis tenetur aliquam enim.','Quisquam delectus recusandae perspiciatis cumque. Ad quo sed dolor repudiandae nihil quos. Molestiae consequatur vitae ullam similique eveniet. Officiis dolores quo est eligendi aliquam. Nam explicabo ut repellendus cum consectetur quas optio. Error dolorum qui non et et reiciendis eum. Et id atque officia deserunt. Et soluta sed aperiam in ut neque. Qui quo voluptas quos vero sed nihil deleniti. Voluptates sunt rerum aut est et consectetur reprehenderit.',NULL,'read','2025-09-25 01:22:16','2025-09-25 01:22:16'),(4,'Emmalee Smith','ian.christiansen@example.org','+1 (802) 747-9838','9674 Towne Place\nLake Madonna, MS 95758-4460','Rerum provident nisi alias blanditiis ullam.','Cum tenetur qui doloribus id blanditiis. Qui totam est temporibus quo voluptatem voluptates quod mollitia. Autem non sequi aliquam facere. At vero aut quia aliquid molestiae cum deleniti vel. Inventore nostrum dolores velit. Eius amet qui accusantium aliquam adipisci enim. Doloremque ut deserunt culpa laudantium reiciendis. Qui quia atque sint accusantium ducimus.',NULL,'read','2025-09-25 01:22:16','2025-09-25 01:22:16'),(5,'Lewis Bernhard','damian39@example.org','716-927-0995','581 Amara Loaf Suite 796\nNew Alana, NJ 36727','Eos non distinctio autem.','Similique numquam soluta animi ipsa quibusdam natus numquam. Minima et et quos quasi dolore. Omnis et hic saepe officiis similique porro. Voluptatem alias quis iusto doloremque est voluptatum. Laboriosam alias alias corporis soluta. Enim occaecati dolores aut impedit. Ea harum omnis facere pariatur dignissimos quasi itaque eius. Minus voluptatem est odit deleniti facilis ex sit. Tenetur rerum animi nostrum doloribus animi similique laudantium. Magnam consequatur voluptatem laudantium qui.',NULL,'read','2025-09-25 01:22:16','2025-09-25 01:22:16'),(6,'Dr. Fay Moen','konopelski.aiyana@example.com','779-563-1335','9316 Augustus Camp\nPort Francisfort, IA 58766','Omnis pariatur qui sunt voluptas quisquam in ad.','Voluptate nemo rerum quia quia. Cum sed a qui quisquam dolor. Rem dolor omnis architecto ab voluptatibus laborum. Quo adipisci cum omnis praesentium. Commodi quidem est autem quidem dolores molestiae ab quae. Omnis eos qui expedita provident repellat. Tempore ad tempore aliquam illo molestiae aut inventore facere. Illo qui at delectus consequatur aut. Esse omnis dolor omnis ipsum qui sit rerum.',NULL,'read','2025-09-25 01:22:16','2025-09-25 01:22:16'),(7,'Ms. Angie Roberts','perry13@example.org','+1.820.774.2040','34006 Braun Extensions Apt. 330\nNew Bridgetside, NY 84670-4553','Sed hic vero voluptas dolor.','Repellat earum architecto veritatis culpa quis optio. Necessitatibus sed cumque qui earum minus eveniet nihil. Error repellat sint ducimus id similique minima. Eligendi nihil magni beatae inventore natus quisquam. Aut eaque accusantium doloribus quas voluptate voluptatem aut sed. Dolorem quis hic impedit sit qui. Tenetur ex necessitatibus et vel et rerum. Repudiandae temporibus ad dolorem tempore repellat illum.',NULL,'unread','2025-09-25 01:22:16','2025-09-25 01:22:16'),(8,'Concepcion Harris','beaulah41@example.net','+1 (272) 232-7813','257 Yundt Plaza Suite 753\nNorth Mollymouth, AL 08045-6273','Corrupti ipsum et et laudantium.','Sint est dolor modi occaecati illo voluptas. Consequatur vero aspernatur vitae sequi. Rerum rerum voluptatibus reprehenderit ut voluptas. Inventore quis eos aut culpa quo. Doloribus quasi doloribus odit dolores non nihil. Sunt praesentium aut alias praesentium corrupti dolor necessitatibus. Omnis qui corrupti consequuntur reprehenderit magnam ea. Est velit repudiandae iure. Molestias est rerum et.',NULL,'read','2025-09-25 01:22:16','2025-09-25 01:22:16'),(9,'Ms. Ona Pollich Jr.','purdy.jessyca@example.com','(678) 594-3779','570 Liana Meadows Suite 054\nEast Eulah, NY 78915','Incidunt ut eius nesciunt qui.','Consequatur nisi tempora nemo ut dolorem dignissimos. Veritatis adipisci ipsa vitae quis. Adipisci neque est in rem. Recusandae sunt magnam sed minima porro. Nostrum dolor recusandae nostrum natus. Similique non autem tenetur eum officiis ea ipsam. Laborum iure aut cupiditate inventore excepturi. Deserunt at omnis quae rerum harum exercitationem.',NULL,'read','2025-09-25 01:22:16','2025-09-25 01:22:16'),(10,'Ismael Ondricka','randall.heller@example.com','+1-281-855-8113','7726 Kihn Alley Apt. 462\nDooleyberg, IN 56592','Et at et dolorem ab aspernatur quos quod ipsum.','Temporibus repellendus magni ab soluta qui inventore aliquid. Nostrum adipisci a nam incidunt possimus. Cupiditate id sed cumque sit magni vel. Doloribus incidunt itaque fugiat ut at voluptatem reiciendis. Qui voluptatem optio iste expedita consequatur consectetur earum. Et cum velit nihil earum ducimus aperiam. Ut sequi doloremque perspiciatis aliquid fuga soluta cupiditate. Sunt et at tempora saepe repudiandae blanditiis. Quae rerum et laboriosam.',NULL,'read','2025-09-25 01:22:16','2025-09-25 01:22:16');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_countries_name` (`name`),
  KEY `idx_countries_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`),
  KEY `idx_countries_trans_country_lang` (`countries_id`,`lang_code`),
  KEY `idx_countries_trans_name` (`name`),
  KEY `idx_countries_trans_countries_id` (`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_tokens_token_unique` (`token`),
  KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  KEY `device_tokens_is_active_index` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_tokens`
--

LOCK TABLES `device_tokens` WRITE;
/*!40000 ALTER TABLE `device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_abandoned_carts`
--

DROP TABLE IF EXISTS `ec_abandoned_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_abandoned_carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_data` json NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `items_count` int NOT NULL DEFAULT '0',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abandoned_at` timestamp NULL DEFAULT NULL,
  `reminder_sent_at` timestamp NULL DEFAULT NULL,
  `reminders_sent` int NOT NULL DEFAULT '0',
  `is_recovered` tinyint(1) NOT NULL DEFAULT '0',
  `recovered_at` timestamp NULL DEFAULT NULL,
  `recovered_order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_abandoned_carts_abandoned_at_is_recovered_index` (`abandoned_at`,`is_recovered`),
  KEY `ec_abandoned_carts_created_at_is_recovered_index` (`created_at`,`is_recovered`),
  KEY `ec_abandoned_carts_customer_id_index` (`customer_id`),
  KEY `ec_abandoned_carts_session_id_index` (`session_id`),
  KEY `ec_abandoned_carts_email_index` (`email`),
  KEY `ec_abandoned_carts_recovered_order_id_index` (`recovered_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_abandoned_carts`
--

LOCK TABLES `ec_abandoned_carts` WRITE;
/*!40000 ALTER TABLE `ec_abandoned_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_abandoned_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2025-09-25 01:21:45','2025-09-25 01:21:45'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2025-09-25 01:21:45','2025-09-25 01:21:45'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2025-09-25 01:21:45','2025-09-25 01:21:45'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2025-09-25 01:21:45','2025-09-25 01:21:45'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2025-09-25 01:21:45','2025-09-25 01:21:45'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2025-09-25 01:21:45','2025-09-25 01:21:45'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2025-09-25 01:21:45','2025-09-25 01:21:45');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2025-09-25 01:21:45','2025-09-25 01:21:45'),(2,'EUR','€',0,2,1,0,0.84,'2025-09-25 01:21:45','2025-09-25 01:21:45'),(3,'VND','₫',0,0,2,0,23203,'2025-09-25 01:21:45','2025-09-25 01:21:45'),(4,'NGN','₦',1,2,2,0,895.52,'2025-09-25 01:21:45','2025-09-25 01:21:45');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Bradford Wilkinson','customer@botble.com','+19494378807','PY','Utah','Doviemouth','2295 Karley Causeway Apt. 270',1,1,'2025-09-25 01:22:13','2025-09-25 01:22:13','75749-3094'),(2,'Bradford Wilkinson','customer@botble.com','+14343318850','BN','California','South Yvonne','4297 Allan Squares Apt. 300',1,0,'2025-09-25 01:22:13','2025-09-25 01:22:13','50348-1814'),(3,'Joelle Russel','vendor@botble.com','+17147616501','BA','New York','New Tremaynemouth','319 Rosemarie Underpass Apt. 886',2,1,'2025-09-25 01:22:14','2025-09-25 01:22:14','56132-7245'),(4,'Joelle Russel','vendor@botble.com','+19254617078','SG','Delaware','Vinceshire','19244 Haley Branch Apt. 317',2,0,'2025-09-25 01:22:14','2025-09-25 01:22:14','81605-1109'),(5,'Allen Friesen','mauricio.gusikowski@example.com','+18576760115','MD','New York','Lake Jacky','57629 Evans Course Suite 265',3,1,'2025-09-25 01:22:14','2025-09-25 01:22:14','79902-5654'),(6,'Gerard Crooks','trevion.emard@example.org','+18654438591','KP','Nebraska','North Jordynton','5341 Harmon Isle',4,1,'2025-09-25 01:22:14','2025-09-25 01:22:14','04358'),(7,'Anissa Kutch','jeanne13@example.com','+15746623990','AU','Tennessee','Boganborough','28596 Wunsch Underpass',5,1,'2025-09-25 01:22:14','2025-09-25 01:22:14','57161-7146'),(8,'Keyon Thiel','zoey48@example.org','+12707700788','TK','New Mexico','Lake Boris','575 Leannon Walk Apt. 467',6,1,'2025-09-25 01:22:15','2025-09-25 01:22:15','63790'),(9,'Prof. Jarrod Stehr','dangelo.mertz@example.net','+14803480829','VC','Washington','East Dayneborough','451 Audie Parkway Suite 254',7,1,'2025-09-25 01:22:15','2025-09-25 01:22:15','08099-1267'),(10,'Prof. Hailie Roob','herman16@example.com','+13074553242','BF','Minnesota','North Barry','98784 Schmitt Shores Suite 835',8,1,'2025-09-25 01:22:15','2025-09-25 01:22:15','06765-3841'),(11,'Willis Wilkinson','rfeil@example.org','+16519830098','AQ','South Dakota','Jaylenbury','6398 Stanton Glens',9,1,'2025-09-25 01:22:16','2025-09-25 01:22:16','63305-2204'),(12,'Brigitte Denesik DVM','brekke.omer@example.net','+13512165343','DK','Michigan','East Aaronburgh','4195 Wilson Ridge',10,1,'2025-09-25 01:22:16','2025-09-25 01:22:16','96175');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `block_reason` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `stripe_account_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_account_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Bradford Wilkinson','customer@botble.com','$2y$12$Xjvb6feLUZH2Jg0aeimO5OeqCAmsp4w70JGobstozEhB2FI.mjT.u','customers/1.jpg','1985-09-05','+13603426103',NULL,'2025-09-25 01:22:13','2025-09-25 01:22:13','2025-09-25 08:22:13',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(2,'Joelle Russel','vendor@botble.com','$2y$12$29Gi0y4XvmuPSZAFzTnsduSKLsXJLo0lMMXLpqu7LA0ggxIder0vy','customers/9.jpg','2004-09-17','+14843168655',NULL,'2025-09-25 01:22:14','2025-09-25 01:22:25','2025-09-25 08:22:14',NULL,'activated',NULL,NULL,1,'2025-09-25 08:22:25',NULL,0),(3,'Allen Friesen','mauricio.gusikowski@example.com','$2y$12$PP/97v82qtnPXmYdTdM1eOGGR/M87AJtK1c6XTofO/KVSfgywMSyG','customers/1.jpg','1985-09-06','+13175686746',NULL,'2025-09-25 01:22:14','2025-09-25 01:22:25','2025-09-25 08:22:14',NULL,'activated',NULL,NULL,1,'2025-09-25 08:22:25',NULL,0),(4,'Gerard Crooks','trevion.emard@example.org','$2y$12$z0qBcBeiDaG4RXD4MCEPm.d9h1nXkfQA0BNulshIyxrTRXqwgCIC2','customers/2.jpg','1975-09-11','+19472418001',NULL,'2025-09-25 01:22:14','2025-09-25 01:22:26','2025-09-25 08:22:14',NULL,'activated',NULL,NULL,1,'2025-09-25 08:22:25',NULL,0),(5,'Anissa Kutch','jeanne13@example.com','$2y$12$qSQI4xpN75BTGKaKnh9LBe7yep4NvkZvO.8ZV/FLTZFG8RAllYFG.','customers/3.jpg','1997-09-23','+17194109413',NULL,'2025-09-25 01:22:14','2025-09-25 01:22:26','2025-09-25 08:22:14',NULL,'activated',NULL,NULL,1,'2025-09-25 08:22:25',NULL,0),(6,'Keyon Thiel','zoey48@example.org','$2y$12$3U0dr3icTYM3aor.lIsD6.8FzMc0lKGPYEK9Ar25OUhIIRSPwpuva','customers/4.jpg','1981-09-12','+14588132914',NULL,'2025-09-25 01:22:15','2025-09-25 01:22:26','2025-09-25 08:22:15',NULL,'activated',NULL,NULL,1,'2025-09-25 08:22:25',NULL,0),(7,'Prof. Jarrod Stehr','dangelo.mertz@example.net','$2y$12$S/3O9Ep9Yi7lZuWXsinBXeEuUN2GbO8.TkLddiHkJ7ocEtGTzQhAG','customers/5.jpg','1980-08-26','+13394641767',NULL,'2025-09-25 01:22:15','2025-09-25 01:22:27','2025-09-25 08:22:15',NULL,'activated',NULL,NULL,1,'2025-09-25 08:22:25',NULL,0),(8,'Prof. Hailie Roob','herman16@example.com','$2y$12$ExZYRbpgeyDCloESkPYADuhxLRrYM/o34cNSKUGnl92zOGdN1Lbjq','customers/6.jpg','1980-09-01','+12799555574',NULL,'2025-09-25 01:22:15','2025-09-25 01:22:27','2025-09-25 08:22:15',NULL,'activated',NULL,NULL,1,'2025-09-25 08:22:25',NULL,0),(9,'Willis Wilkinson','rfeil@example.org','$2y$12$6zkccLIey2.ZIQjBN9nfYu3YE3MC4qcdI9/z/2/4fwHUZvsvo776i','customers/7.jpg','1994-08-30','+17578372897',NULL,'2025-09-25 01:22:16','2025-09-25 01:22:27','2025-09-25 08:22:16',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(10,'Brigitte Denesik DVM','brekke.omer@example.net','$2y$12$eMXS26jHiQHMX5ILDt3cNuOBK.SycWGqk2V381hCZGk5ST1RMn246','customers/8.jpg','1978-09-03','+19107726660',NULL,'2025-09-25 01:22:16','2025-09-25 01:22:27','2025-09-25 08:22:16',NULL,'activated',NULL,NULL,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','P4APBFZVKN7U','2025-09-24 08:22:16','2025-10-02 08:22:16',NULL,0,53,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-09-25 01:22:16','2025-09-25 01:22:16',NULL,NULL),(2,'Discount 2','8FEQOZHGJBLG','2025-09-24 08:22:16','2025-10-01 08:22:16',NULL,0,4,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-09-25 01:22:16','2025-09-25 01:22:16',NULL,NULL),(3,'Discount 3','U7ANGYQXI8LI','2025-09-24 08:22:16',NULL,NULL,0,522,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-09-25 01:22:16','2025-09-25 01:22:16',NULL,NULL),(4,'Discount 4','PVXPMJKGXZXJ','2025-09-24 08:22:16','2025-10-10 08:22:16',NULL,0,462,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-09-25 01:22:16','2025-09-25 01:22:16',NULL,NULL),(5,'Discount 5','V8RWT10V4VZ0','2025-09-24 08:22:16',NULL,NULL,0,71,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-09-25 01:22:16','2025-09-25 01:22:16',NULL,NULL),(6,'Discount 6','QGOFSVRVGVOP','2025-09-24 08:22:16',NULL,NULL,0,21,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-09-25 01:22:16','2025-09-25 01:22:16',NULL,NULL),(7,'Discount 7','SWK9AX9HP5XV','2025-09-24 08:22:16',NULL,NULL,0,662,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-09-25 01:22:16','2025-09-25 01:22:16',NULL,NULL),(8,'Discount 8','NOPO0HM6BPIG','2025-09-24 08:22:16','2025-10-09 08:22:16',NULL,0,199,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-09-25 01:22:16','2025-09-25 01:22:16',NULL,NULL),(9,'Discount 9','RWVZARN4VMW9','2025-09-24 08:22:16','2025-10-19 08:22:16',NULL,0,934,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-09-25 01:22:16','2025-09-25 01:22:16',NULL,NULL),(10,'Discount 10','JY7WWZSUXT0B','2025-09-24 08:22:16',NULL,NULL,0,995,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-09-25 01:22:16','2025-09-25 01:22:16',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,85.6842,8,4),(1,2,87.0408,13,4),(1,3,382.1298,18,1),(1,4,419.8,11,4),(1,5,505.56,10,3),(1,6,543.808,16,2),(1,7,772.83,8,3),(1,8,1045.945416,16,1),(1,9,424.619,19,3),(1,10,432.0792,20,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2025-10-25 00:00:00','published','2025-09-25 01:22:16','2025-09-25 01:22:16');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2025-09-25 01:22:24','2025-09-25 01:22:24'),(2,1,'2 Year',10,9999,0,'2025-09-25 01:22:24','2025-09-25 01:22:24'),(3,1,'3 Year',20,9999,0,'2025-09-25 01:22:24','2025-09-25 01:22:24'),(4,2,'4GB',0,9999,0,'2025-09-25 01:22:24','2025-09-25 01:22:24'),(5,2,'8GB',10,9999,0,'2025-09-25 01:22:24','2025-09-25 01:22:24'),(6,2,'16GB',20,9999,0,'2025-09-25 01:22:24','2025-09-25 01:22:24'),(7,3,'Core i5',0,9999,0,'2025-09-25 01:22:24','2025-09-25 01:22:24'),(8,3,'Core i7',10,9999,0,'2025-09-25 01:22:24','2025-09-25 01:22:24'),(9,3,'Core i9',20,9999,0,'2025-09-25 01:22:24','2025-09-25 01:22:24'),(10,4,'128GB',0,9999,0,'2025-09-25 01:22:24','2025-09-25 01:22:24'),(11,4,'256GB',10,9999,0,'2025-09-25 01:22:24','2025-09-25 01:22:24'),(12,4,'512GB',20,9999,0,'2025-09-25 01:22:24','2025-09-25 01:22:24');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-09-25 01:22:24','2025-09-25 01:22:24'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-09-25 01:22:24','2025-09-25 01:22:24'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-09-25 01:22:24','2025-09-25 01:22:24'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2025-09-25 01:22:24','2025-09-25 01:22:24');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address_line` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double DEFAULT '0',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` text COLLATE utf8mb4_unicode_ci,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2025-09-25 01:21:46','2025-09-25 01:21:46',0),(2,'Size','size','text',1,1,1,'published',1,'2025-09-25 01:21:46','2025-09-25 01:21:46',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`),
  KEY `idx_attribute_set_id` (`attribute_set_id`),
  KEY `idx_attribute_set_order_id` (`attribute_set_id`,`order`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2025-09-25 01:21:46','2025-09-25 01:21:46'),(2,1,'Blue','blue','#333333',NULL,0,2,'2025-09-25 01:21:46','2025-09-25 01:21:46'),(3,1,'Red','red','#DA323F',NULL,0,3,'2025-09-25 01:21:46','2025-09-25 01:21:46'),(4,1,'Black','black','#2F366C',NULL,0,4,'2025-09-25 01:21:46','2025-09-25 01:21:46'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2025-09-25 01:21:46','2025-09-25 01:21:46'),(6,2,'S','s',NULL,NULL,1,1,'2025-09-25 01:21:46','2025-09-25 01:21:46'),(7,2,'M','m',NULL,NULL,0,2,'2025-09-25 01:21:46','2025-09-25 01:21:46'),(8,2,'L','l',NULL,NULL,0,3,'2025-09-25 01:21:46','2025-09-25 01:21:46'),(9,2,'XL','xl',NULL,NULL,0,4,'2025-09-25 01:21:46','2025-09-25 01:21:46'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2025-09-25 01:21:46','2025-09-25 01:21:46');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`),
  KEY `idx_categories_status_order` (`status`,`order`),
  KEY `idx_categories_order` (`order`),
  KEY `ec_product_categories_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions','hot-promotions',0,NULL,'published',0,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46','icon-star',NULL),(2,'Electronics','electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2025-09-25 01:21:46','2025-09-25 01:21:46','icon-laundry',NULL),(3,'Consumer Electronic','consumer-electronic',2,NULL,'published',0,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(4,'Home Audio & Theaters','home-audio-theaters',3,NULL,'published',0,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(5,'TV & Videos','tv-videos',3,NULL,'published',1,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(6,'Camera, Photos & Videos','camera-photos-videos',3,NULL,'published',2,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(7,'Cellphones & Accessories','cellphones-accessories',3,NULL,'published',3,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(8,'Headphones','headphones',3,NULL,'published',4,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(9,'Videos games','videos-games',3,NULL,'published',5,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(10,'Wireless Speakers','wireless-speakers',3,NULL,'published',6,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(11,'Office Electronic','office-electronic',3,NULL,'published',7,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(12,'Accessories & Parts','accessories-parts',2,NULL,'published',1,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(13,'Digital Cables','digital-cables',12,NULL,'published',0,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(14,'Audio & Video Cables','audio-video-cables',12,NULL,'published',1,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(15,'Batteries','batteries',12,NULL,'published',2,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(16,'Clothing','clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2025-09-25 01:21:46','2025-09-25 01:21:46','icon-shirt',NULL),(17,'Computers','computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2025-09-25 01:21:46','2025-09-25 01:21:46','icon-desktop',NULL),(18,'Computer & Technologies','computer-technologies',17,NULL,'published',0,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(19,'Computer & Tablets','computer-tablets',18,NULL,'published',0,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(20,'Laptop','laptop',18,NULL,'published',1,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(21,'Monitors','monitors',18,NULL,'published',2,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(22,'Computer Components','computer-components',18,NULL,'published',3,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(23,'Networking','networking',17,NULL,'published',1,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(24,'Drive & Storages','drive-storages',23,NULL,'published',0,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(25,'Gaming Laptop','gaming-laptop',23,NULL,'published',1,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(26,'Security & Protection','security-protection',23,NULL,'published',2,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(27,'Accessories','accessories',23,NULL,'published',3,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,NULL),(28,'Home & Kitchen','home-kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2025-09-25 01:21:46','2025-09-25 01:21:46','icon-lampshade',NULL),(29,'Health & Beauty','health-beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2025-09-25 01:21:46','2025-09-25 01:21:46','icon-heart-pulse',NULL),(30,'Jewelry & Watch','jewelry-watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2025-09-25 01:21:46','2025-09-25 01:21:46','icon-diamond2',NULL),(31,'Technology Toys','technology-toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2025-09-25 01:21:46','2025-09-25 01:21:46','icon-desktop',NULL),(32,'Phones','phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2025-09-25 01:21:46','2025-09-25 01:21:46','icon-smartphone',NULL),(33,'Babies & Moms','babies-moms',0,NULL,'published',9,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46','icon-baby-bottle',NULL),(34,'Sport & Outdoor','sport-outdoor',0,NULL,'published',10,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46','icon-baseball',NULL),(35,'Books & Office','books-office',0,NULL,'published',11,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46','icon-book2',NULL),(36,'Cars & Motorcycles','cars-motorcycles',0,NULL,'published',12,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46','icon-car-siren',NULL),(37,'Home Improvements','home-improvements',0,NULL,'published',13,NULL,0,'2025-09-25 01:21:46','2025-09-25 01:21:46','icon-wrench',NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`),
  KEY `idx_product_category` (`product_id`,`category_id`),
  KEY `idx_product_category_composite` (`product_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,18),(1,24),(1,35),(1,42),(1,50),(2,1),(2,15),(2,28),(2,30),(2,34),(2,48),(2,49),(2,53),(3,3),(3,10),(3,20),(3,34),(3,35),(3,38),(3,51),(4,6),(4,13),(4,27),(4,29),(4,35),(4,47),(5,21),(5,41),(5,44),(6,2),(6,8),(6,32),(6,36),(7,7),(7,15),(7,22),(7,27),(7,43),(8,7),(8,8),(8,10),(8,23),(8,40),(8,41),(8,45),(8,51),(9,9),(9,16),(9,17),(9,36),(9,37),(9,38),(9,39),(9,40),(9,42),(10,3),(10,4),(10,10),(10,32),(10,49),(10,52),(11,9),(11,14),(11,16),(11,20),(11,36),(11,37),(11,45),(12,13),(12,44),(12,49),(13,4),(13,15),(13,27),(13,54),(14,5),(14,14),(14,22),(14,24),(14,30),(14,45),(14,47),(14,54),(15,5),(15,8),(15,9),(15,15),(15,19),(15,43),(15,44),(15,51),(16,6),(16,11),(16,29),(16,42),(16,48),(17,2),(17,12),(17,25),(17,30),(17,39),(18,17),(18,28),(18,29),(18,31),(19,18),(19,23),(19,25),(20,6),(20,24),(20,27),(20,41),(21,1),(21,6),(21,19),(21,25),(21,31),(21,46),(21,52),(22,18),(22,31),(22,37),(22,47),(22,48),(23,5),(23,7),(23,38),(23,41),(23,46),(23,52),(24,12),(24,38),(24,39),(24,50),(25,2),(25,4),(25,8),(25,11),(25,14),(25,17),(25,33),(25,37),(25,47),(25,53),(26,1),(26,4),(26,13),(26,16),(26,20),(26,23),(26,26),(26,29),(26,30),(27,12),(27,35),(27,43),(27,46),(28,3),(28,11),(28,19),(28,23),(28,26),(28,28),(28,33),(28,34),(28,40),(28,44),(28,46),(29,2),(29,3),(29,31),(29,32),(29,52),(30,13),(30,21),(30,34),(30,45),(30,54),(31,16),(31,21),(31,51),(32,5),(32,28),(32,42),(32,54),(33,10),(33,49),(33,53),(34,22),(34,26),(34,33),(34,36),(34,40),(34,43),(34,48),(35,1),(35,12),(35,21),(35,22),(35,25),(35,32),(35,39),(35,50),(36,7),(36,14),(36,18),(36,19),(36,20),(36,24),(36,26),(36,50),(37,9),(37,11),(37,17),(37,33),(37,53);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,4),(1,5),(1,8),(1,12),(1,21),(1,22),(1,25),(1,26),(1,29),(1,32),(1,34),(1,36),(1,37),(1,38),(1,41),(1,43),(1,49),(2,1),(2,6),(2,7),(2,9),(2,15),(2,16),(2,19),(2,24),(2,30),(2,33),(2,39),(2,44),(2,45),(2,46),(2,50),(2,53),(2,54),(3,2),(3,3),(3,10),(3,11),(3,13),(3,14),(3,17),(3,18),(3,20),(3,23),(3,27),(3,28),(3,31),(3,35),(3,40),(3,42),(3,47),(3,48),(3,51),(3,52);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2025-09-25 01:21:46','2025-09-25 01:21:46',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2025-09-25 01:21:46','2025-09-25 01:21:46',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2025-09-25 01:21:46','2025-09-25 01:21:46',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`),
  KEY `idx_product_cross_sale` (`from_product_id`,`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,7,0,0.00,'fixed',1),(1,24,0,0.00,'fixed',1),(1,25,0,0.00,'fixed',1),(1,35,0,0.00,'fixed',1),(1,49,0,0.00,'fixed',1),(2,5,0,0.00,'fixed',1),(2,7,0,0.00,'fixed',1),(2,25,0,0.00,'fixed',1),(2,31,0,0.00,'fixed',1),(2,35,0,0.00,'fixed',1),(2,39,0,0.00,'fixed',1),(3,2,0,0.00,'fixed',1),(3,19,0,0.00,'fixed',1),(3,35,0,0.00,'fixed',1),(3,37,0,0.00,'fixed',1),(3,41,0,0.00,'fixed',1),(3,52,0,0.00,'fixed',1),(4,9,0,0.00,'fixed',1),(4,12,0,0.00,'fixed',1),(4,15,0,0.00,'fixed',1),(4,21,0,0.00,'fixed',1),(4,40,0,0.00,'fixed',1),(4,48,0,0.00,'fixed',1),(4,54,0,0.00,'fixed',1),(5,8,0,0.00,'fixed',1),(5,10,0,0.00,'fixed',1),(5,13,0,0.00,'fixed',1),(5,29,0,0.00,'fixed',1),(5,30,0,0.00,'fixed',1),(5,45,0,0.00,'fixed',1),(5,53,0,0.00,'fixed',1),(6,4,0,0.00,'fixed',1),(6,9,0,0.00,'fixed',1),(6,13,0,0.00,'fixed',1),(6,28,0,0.00,'fixed',1),(6,31,0,0.00,'fixed',1),(6,34,0,0.00,'fixed',1),(6,42,0,0.00,'fixed',1),(7,8,0,0.00,'fixed',1),(7,34,0,0.00,'fixed',1),(7,37,0,0.00,'fixed',1),(7,41,0,0.00,'fixed',1),(7,43,0,0.00,'fixed',1),(7,44,0,0.00,'fixed',1),(7,51,0,0.00,'fixed',1),(8,4,0,0.00,'fixed',1),(8,7,0,0.00,'fixed',1),(8,23,0,0.00,'fixed',1),(8,30,0,0.00,'fixed',1),(8,37,0,0.00,'fixed',1),(8,49,0,0.00,'fixed',1),(9,8,0,0.00,'fixed',1),(9,45,0,0.00,'fixed',1),(9,50,0,0.00,'fixed',1),(9,52,0,0.00,'fixed',1),(10,8,0,0.00,'fixed',1),(10,14,0,0.00,'fixed',1),(10,17,0,0.00,'fixed',1),(10,31,0,0.00,'fixed',1),(10,50,0,0.00,'fixed',1),(10,51,0,0.00,'fixed',1),(10,53,0,0.00,'fixed',1),(11,14,0,0.00,'fixed',1),(11,17,0,0.00,'fixed',1),(11,18,0,0.00,'fixed',1),(11,19,0,0.00,'fixed',1),(11,27,0,0.00,'fixed',1),(11,37,0,0.00,'fixed',1),(11,51,0,0.00,'fixed',1),(12,8,0,0.00,'fixed',1),(12,10,0,0.00,'fixed',1),(12,25,0,0.00,'fixed',1),(12,32,0,0.00,'fixed',1),(12,43,0,0.00,'fixed',1),(12,48,0,0.00,'fixed',1),(12,54,0,0.00,'fixed',1),(13,1,0,0.00,'fixed',1),(13,11,0,0.00,'fixed',1),(13,18,0,0.00,'fixed',1),(13,19,0,0.00,'fixed',1),(13,43,0,0.00,'fixed',1),(13,50,0,0.00,'fixed',1),(14,8,0,0.00,'fixed',1),(14,11,0,0.00,'fixed',1),(14,20,0,0.00,'fixed',1),(14,27,0,0.00,'fixed',1),(14,46,0,0.00,'fixed',1),(14,47,0,0.00,'fixed',1),(15,3,0,0.00,'fixed',1),(15,9,0,0.00,'fixed',1),(15,12,0,0.00,'fixed',1),(15,19,0,0.00,'fixed',1),(15,37,0,0.00,'fixed',1),(15,43,0,0.00,'fixed',1),(15,51,0,0.00,'fixed',1),(16,4,0,0.00,'fixed',1),(16,7,0,0.00,'fixed',1),(16,9,0,0.00,'fixed',1),(16,12,0,0.00,'fixed',1),(16,29,0,0.00,'fixed',1),(16,46,0,0.00,'fixed',1),(16,50,0,0.00,'fixed',1),(17,10,0,0.00,'fixed',1),(17,23,0,0.00,'fixed',1),(17,34,0,0.00,'fixed',1),(17,43,0,0.00,'fixed',1),(17,44,0,0.00,'fixed',1),(17,50,0,0.00,'fixed',1),(17,52,0,0.00,'fixed',1),(18,5,0,0.00,'fixed',1),(18,21,0,0.00,'fixed',1),(18,22,0,0.00,'fixed',1),(18,23,0,0.00,'fixed',1),(18,24,0,0.00,'fixed',1),(18,30,0,0.00,'fixed',1),(18,39,0,0.00,'fixed',1),(19,18,0,0.00,'fixed',1),(19,23,0,0.00,'fixed',1),(19,38,0,0.00,'fixed',1),(19,49,0,0.00,'fixed',1),(19,51,0,0.00,'fixed',1),(20,7,0,0.00,'fixed',1),(20,9,0,0.00,'fixed',1),(20,41,0,0.00,'fixed',1),(20,42,0,0.00,'fixed',1),(20,45,0,0.00,'fixed',1),(21,6,0,0.00,'fixed',1),(21,14,0,0.00,'fixed',1),(21,19,0,0.00,'fixed',1),(21,27,0,0.00,'fixed',1),(21,28,0,0.00,'fixed',1),(21,38,0,0.00,'fixed',1),(21,42,0,0.00,'fixed',1),(22,9,0,0.00,'fixed',1),(22,14,0,0.00,'fixed',1),(22,19,0,0.00,'fixed',1),(22,36,0,0.00,'fixed',1),(22,37,0,0.00,'fixed',1),(22,40,0,0.00,'fixed',1),(22,48,0,0.00,'fixed',1),(23,7,0,0.00,'fixed',1),(23,14,0,0.00,'fixed',1),(23,29,0,0.00,'fixed',1),(23,34,0,0.00,'fixed',1),(23,39,0,0.00,'fixed',1),(23,44,0,0.00,'fixed',1),(23,48,0,0.00,'fixed',1),(24,11,0,0.00,'fixed',1),(24,25,0,0.00,'fixed',1),(24,38,0,0.00,'fixed',1),(24,42,0,0.00,'fixed',1),(24,43,0,0.00,'fixed',1),(24,48,0,0.00,'fixed',1),(25,15,0,0.00,'fixed',1),(25,17,0,0.00,'fixed',1),(25,20,0,0.00,'fixed',1),(25,30,0,0.00,'fixed',1),(25,40,0,0.00,'fixed',1),(25,44,0,0.00,'fixed',1),(25,52,0,0.00,'fixed',1),(26,1,0,0.00,'fixed',1),(26,12,0,0.00,'fixed',1),(26,14,0,0.00,'fixed',1),(26,20,0,0.00,'fixed',1),(26,30,0,0.00,'fixed',1),(26,36,0,0.00,'fixed',1),(26,37,0,0.00,'fixed',1),(27,3,0,0.00,'fixed',1),(27,14,0,0.00,'fixed',1),(27,21,0,0.00,'fixed',1),(27,34,0,0.00,'fixed',1),(27,35,0,0.00,'fixed',1),(27,41,0,0.00,'fixed',1),(28,10,0,0.00,'fixed',1),(28,11,0,0.00,'fixed',1),(28,18,0,0.00,'fixed',1),(28,20,0,0.00,'fixed',1),(28,21,0,0.00,'fixed',1),(28,33,0,0.00,'fixed',1),(28,53,0,0.00,'fixed',1),(29,10,0,0.00,'fixed',1),(29,18,0,0.00,'fixed',1),(29,24,0,0.00,'fixed',1),(29,25,0,0.00,'fixed',1),(29,33,0,0.00,'fixed',1),(29,38,0,0.00,'fixed',1),(29,47,0,0.00,'fixed',1),(30,2,0,0.00,'fixed',1),(30,12,0,0.00,'fixed',1),(30,17,0,0.00,'fixed',1),(30,19,0,0.00,'fixed',1),(30,29,0,0.00,'fixed',1),(30,38,0,0.00,'fixed',1),(30,47,0,0.00,'fixed',1),(31,1,0,0.00,'fixed',1),(31,2,0,0.00,'fixed',1),(31,4,0,0.00,'fixed',1),(31,12,0,0.00,'fixed',1),(31,20,0,0.00,'fixed',1),(31,24,0,0.00,'fixed',1),(31,44,0,0.00,'fixed',1),(32,2,0,0.00,'fixed',1),(32,5,0,0.00,'fixed',1),(32,7,0,0.00,'fixed',1),(32,13,0,0.00,'fixed',1),(32,44,0,0.00,'fixed',1),(32,45,0,0.00,'fixed',1),(32,52,0,0.00,'fixed',1),(33,1,0,0.00,'fixed',1),(33,11,0,0.00,'fixed',1),(33,19,0,0.00,'fixed',1),(33,25,0,0.00,'fixed',1),(33,27,0,0.00,'fixed',1),(33,32,0,0.00,'fixed',1),(33,44,0,0.00,'fixed',1),(34,4,0,0.00,'fixed',1),(34,22,0,0.00,'fixed',1),(34,26,0,0.00,'fixed',1),(34,30,0,0.00,'fixed',1),(34,32,0,0.00,'fixed',1),(34,36,0,0.00,'fixed',1),(34,43,0,0.00,'fixed',1),(35,18,0,0.00,'fixed',1),(35,30,0,0.00,'fixed',1),(35,36,0,0.00,'fixed',1),(35,45,0,0.00,'fixed',1),(35,46,0,0.00,'fixed',1),(35,53,0,0.00,'fixed',1),(35,54,0,0.00,'fixed',1),(36,4,0,0.00,'fixed',1),(36,26,0,0.00,'fixed',1),(36,31,0,0.00,'fixed',1),(36,34,0,0.00,'fixed',1),(36,38,0,0.00,'fixed',1),(36,39,0,0.00,'fixed',1),(36,40,0,0.00,'fixed',1),(37,8,0,0.00,'fixed',1),(37,10,0,0.00,'fixed',1),(37,24,0,0.00,'fixed',1),(37,29,0,0.00,'fixed',1),(37,30,0,0.00,'fixed',1),(37,44,0,0.00,'fixed',1),(38,1,0,0.00,'fixed',1),(38,11,0,0.00,'fixed',1),(38,25,0,0.00,'fixed',1),(38,29,0,0.00,'fixed',1),(38,37,0,0.00,'fixed',1),(38,44,0,0.00,'fixed',1),(39,9,0,0.00,'fixed',1),(39,14,0,0.00,'fixed',1),(39,21,0,0.00,'fixed',1),(39,31,0,0.00,'fixed',1),(39,33,0,0.00,'fixed',1),(39,35,0,0.00,'fixed',1),(39,44,0,0.00,'fixed',1),(40,1,0,0.00,'fixed',1),(40,21,0,0.00,'fixed',1),(40,22,0,0.00,'fixed',1),(40,32,0,0.00,'fixed',1),(40,33,0,0.00,'fixed',1),(40,35,0,0.00,'fixed',1),(40,36,0,0.00,'fixed',1),(41,8,0,0.00,'fixed',1),(41,10,0,0.00,'fixed',1),(41,16,0,0.00,'fixed',1),(41,23,0,0.00,'fixed',1),(41,30,0,0.00,'fixed',1),(41,38,0,0.00,'fixed',1),(41,46,0,0.00,'fixed',1),(42,3,0,0.00,'fixed',1),(42,5,0,0.00,'fixed',1),(42,17,0,0.00,'fixed',1),(42,18,0,0.00,'fixed',1),(42,20,0,0.00,'fixed',1),(42,38,0,0.00,'fixed',1),(42,46,0,0.00,'fixed',1),(43,6,0,0.00,'fixed',1),(43,9,0,0.00,'fixed',1),(43,10,0,0.00,'fixed',1),(43,13,0,0.00,'fixed',1),(43,20,0,0.00,'fixed',1),(43,24,0,0.00,'fixed',1),(43,41,0,0.00,'fixed',1),(44,3,0,0.00,'fixed',1),(44,5,0,0.00,'fixed',1),(44,27,0,0.00,'fixed',1),(44,38,0,0.00,'fixed',1),(44,42,0,0.00,'fixed',1),(44,49,0,0.00,'fixed',1),(44,53,0,0.00,'fixed',1),(45,14,0,0.00,'fixed',1),(45,33,0,0.00,'fixed',1),(45,36,0,0.00,'fixed',1),(45,38,0,0.00,'fixed',1),(45,42,0,0.00,'fixed',1),(45,44,0,0.00,'fixed',1),(45,48,0,0.00,'fixed',1),(46,2,0,0.00,'fixed',1),(46,5,0,0.00,'fixed',1),(46,11,0,0.00,'fixed',1),(46,20,0,0.00,'fixed',1),(46,23,0,0.00,'fixed',1),(46,29,0,0.00,'fixed',1),(46,48,0,0.00,'fixed',1),(47,1,0,0.00,'fixed',1),(47,3,0,0.00,'fixed',1),(47,5,0,0.00,'fixed',1),(47,11,0,0.00,'fixed',1),(47,26,0,0.00,'fixed',1),(47,30,0,0.00,'fixed',1),(47,52,0,0.00,'fixed',1),(48,4,0,0.00,'fixed',1),(48,5,0,0.00,'fixed',1),(48,25,0,0.00,'fixed',1),(48,26,0,0.00,'fixed',1),(48,34,0,0.00,'fixed',1),(48,43,0,0.00,'fixed',1),(48,49,0,0.00,'fixed',1),(49,16,0,0.00,'fixed',1),(49,36,0,0.00,'fixed',1),(49,37,0,0.00,'fixed',1),(49,47,0,0.00,'fixed',1),(49,53,0,0.00,'fixed',1),(50,5,0,0.00,'fixed',1),(50,14,0,0.00,'fixed',1),(50,15,0,0.00,'fixed',1),(50,20,0,0.00,'fixed',1),(50,21,0,0.00,'fixed',1),(50,24,0,0.00,'fixed',1),(50,38,0,0.00,'fixed',1),(51,1,0,0.00,'fixed',1),(51,4,0,0.00,'fixed',1),(51,12,0,0.00,'fixed',1),(51,14,0,0.00,'fixed',1),(51,34,0,0.00,'fixed',1),(51,45,0,0.00,'fixed',1),(51,53,0,0.00,'fixed',1),(52,13,0,0.00,'fixed',1),(52,19,0,0.00,'fixed',1),(52,32,0,0.00,'fixed',1),(52,39,0,0.00,'fixed',1),(52,47,0,0.00,'fixed',1),(52,54,0,0.00,'fixed',1),(53,2,0,0.00,'fixed',1),(53,4,0,0.00,'fixed',1),(53,7,0,0.00,'fixed',1),(53,18,0,0.00,'fixed',1),(53,41,0,0.00,'fixed',1),(53,50,0,0.00,'fixed',1),(54,2,0,0.00,'fixed',1),(54,15,0,0.00,'fixed',1),(54,26,0,0.00,'fixed',1),(54,32,0,0.00,'fixed',1),(54,39,0,0.00,'fixed',1),(54,53,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/4-1.jpg','{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"4-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(2,4,'ecommerce/digital-product-files/4-2.jpg','{\"filename\":\"4-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"4-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(3,8,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(4,8,'ecommerce/digital-product-files/8-2.jpg','{\"filename\":\"8-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"8-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(5,12,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(6,12,'ecommerce/digital-product-files/12-2.jpg','{\"filename\":\"12-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"12-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(7,16,'ecommerce/digital-product-files/16-1.jpg','{\"filename\":\"16-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"16-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(8,16,'ecommerce/digital-product-files/16-2.jpg','{\"filename\":\"16-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"16-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(9,20,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(10,20,'ecommerce/digital-product-files/20-2.jpg','{\"filename\":\"20-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"20-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(11,24,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(12,24,'ecommerce/digital-product-files/24-2.jpg','{\"filename\":\"24-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"24-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(13,28,'ecommerce/digital-product-files/28-1.jpg','{\"filename\":\"28-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"28-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(14,28,'ecommerce/digital-product-files/28-2.jpg','{\"filename\":\"28-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"28-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(15,32,'ecommerce/digital-product-files/32-1.jpg','{\"filename\":\"32-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"32-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(16,32,'ecommerce/digital-product-files/32-2.jpg','{\"filename\":\"32-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"32-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(17,36,'ecommerce/digital-product-files/36-1.jpg','{\"filename\":\"36-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"36-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(18,36,'ecommerce/digital-product-files/36-2.jpg','{\"filename\":\"36-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"36-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(19,40,'ecommerce/digital-product-files/40-1.jpg','{\"filename\":\"40-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"40-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(20,40,'ecommerce/digital-product-files/40-2.jpg','{\"filename\":\"40-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"40-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(21,44,'ecommerce/digital-product-files/44-1.jpg','{\"filename\":\"44-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"44-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(22,44,'ecommerce/digital-product-files/44-2.jpg','{\"filename\":\"44-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"44-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(23,48,'ecommerce/digital-product-files/48-1.jpg','{\"filename\":\"48-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"48-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(24,48,'ecommerce/digital-product-files/48-2.jpg','{\"filename\":\"48-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"48-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(25,52,'ecommerce/digital-product-files/52-1.jpg','{\"filename\":\"52-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"52-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(26,52,'ecommerce/digital-product-files/52-2.jpg','{\"filename\":\"52-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"52-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(27,66,'ecommerce/digital-product-files/8-2.jpg','{\"filename\":\"8-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"8-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(28,67,'ecommerce/digital-product-files/8-3.jpg','{\"filename\":\"8-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"8-3\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(29,68,'ecommerce/digital-product-files/8-4.jpg','{\"filename\":\"8-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"8-4\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(30,69,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(31,70,'ecommerce/digital-product-files/12-2.jpg','{\"filename\":\"12-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"12-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(32,71,'ecommerce/digital-product-files/12-3.jpg','{\"filename\":\"12-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"12-3\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(33,79,'ecommerce/digital-product-files/20-2.jpg','{\"filename\":\"20-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"20-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(34,80,'ecommerce/digital-product-files/20-3.jpg','{\"filename\":\"20-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"20-3\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(35,81,'ecommerce/digital-product-files/20-4.jpg','{\"filename\":\"20-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"20-4\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(36,94,'ecommerce/digital-product-files/28-2.jpg','{\"filename\":\"28-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"28-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(37,95,'ecommerce/digital-product-files/28-3.jpg','{\"filename\":\"28-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"28-3\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(38,100,'ecommerce/digital-product-files/32-2.jpg','{\"filename\":\"32-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"32-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(39,101,'ecommerce/digital-product-files/32-3.jpg','{\"filename\":\"32-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"32-3\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(40,102,'ecommerce/digital-product-files/32-4.jpg','{\"filename\":\"32-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"32-4\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(41,103,'ecommerce/digital-product-files/32-1.jpg','{\"filename\":\"32-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"32-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(42,107,'ecommerce/digital-product-files/40-2.jpg','{\"filename\":\"40-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"40-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(43,112,'ecommerce/digital-product-files/44-2.jpg','{\"filename\":\"44-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"44-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(44,124,'ecommerce/digital-product-files/52-2.jpg','{\"filename\":\"52-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"52-2\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(45,125,'ecommerce/digital-product-files/52-3.jpg','{\"filename\":\"52-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"52-3\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(46,126,'ecommerce/digital-product-files/52-1.jpg','{\"filename\":\"52-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"52-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(47,127,'ecommerce/digital-product-files/52-1.jpg','{\"filename\":\"52-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"52-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12'),(48,128,'ecommerce/digital-product-files/52-1.jpg','{\"filename\":\"52-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-25 08:22:12\",\"name\":\"52-1\",\"extension\":\"jpg\"}','2025-09-25 01:22:12','2025-09-25 01:22:12');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,9),(1,15),(1,18),(1,30),(1,39),(2,6),(2,21),(2,24),(2,27),(2,33),(2,48),(2,54),(3,12),(3,36),(3,42),(3,45),(3,51);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2025-09-25 01:21:46','2025-09-25 01:21:46',NULL),(2,'New','#02856e','published','2025-09-25 01:21:46','2025-09-25 01:21:46',NULL),(3,'Sale','#fe9931','published','2025-09-25 01:21:46','2025-09-25 01:21:46',NULL);
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_license_codes`
--

DROP TABLE IF EXISTS `ec_product_license_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_license_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `license_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `assigned_order_product_id` bigint unsigned DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_license_codes_product_id_status_index` (`product_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_license_codes`
--

LOCK TABLES `ec_product_license_codes` WRITE;
/*!40000 ALTER TABLE `ec_product_license_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_license_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,6,'59.93 cm',0,0),(1,7,'45.79 cm',0,0),(1,8,'2560x1440',0,0),(2,6,'25.83 cm',0,0),(2,7,'56.07 cm',0,0),(2,8,'2560x1440',0,0),(3,1,'17.99 cm',0,0),(3,2,'45.75 cm',0,0),(3,3,'72.5 cm',0,0),(3,4,'53.05 cm',0,0),(3,5,'62.84 cm',0,0),(4,6,'34.88 cm',0,0),(4,7,'59.46 cm',0,0),(4,8,'3840x2160',0,0),(5,1,'80.19 cm',0,0),(5,2,'43.16 cm',0,0),(5,3,'59.54 cm',0,0),(5,4,'4.11 cm',0,0),(5,5,'13.19 cm',0,0),(6,6,'1.51 cm',0,0),(6,7,'11.79 cm',0,0),(6,8,'1920x1080',0,0),(7,6,'35.9 cm',0,0),(7,7,'22.77 cm',0,0),(7,8,'3840x2160',0,0),(8,1,'35.68 cm',0,0),(8,2,'80.01 cm',0,0),(8,3,'80.56 cm',0,0),(8,4,'67.53 cm',0,0),(8,5,'59.45 cm',0,0),(9,1,'85.67 cm',0,0),(9,2,'27.99 cm',0,0),(9,3,'58.98 cm',0,0),(9,4,'2.7 cm',0,0),(9,5,'41.65 cm',0,0),(10,6,'41.58 cm',0,0),(10,7,'94.7 cm',0,0),(10,8,'3840x2160',0,0),(11,6,'61.57 cm',0,0),(11,7,'18.55 cm',0,0),(11,8,'3840x2160',0,0),(12,1,'46.22 cm',0,0),(12,2,'44.82 cm',0,0),(12,3,'47.53 cm',0,0),(12,4,'14.33 cm',0,0),(12,5,'79.92 cm',0,0),(13,6,'62.69 cm',0,0),(13,7,'70.85 cm',0,0),(13,8,'2560x1440',0,0),(14,6,'3.18 cm',0,0),(14,7,'97.49 cm',0,0),(14,8,'1920x1080',0,0),(15,1,'13.65 cm',0,0),(15,2,'43.81 cm',0,0),(15,3,'27.26 cm',0,0),(15,4,'27.42 cm',0,0),(15,5,'21.43 cm',0,0),(16,1,'89.72 cm',0,0),(16,2,'49.7 cm',0,0),(16,3,'96.51 cm',0,0),(16,4,'77.35 cm',0,0),(16,5,'71.8 cm',0,0),(17,6,'63.85 cm',0,0),(17,7,'32.12 cm',0,0),(17,8,'1920x1080',0,0),(18,6,'39.14 cm',0,0),(18,7,'44.7 cm',0,0),(18,8,'3840x2160',0,0),(19,1,'13.68 cm',0,0),(19,2,'88.99 cm',0,0),(19,3,'56.42 cm',0,0),(19,4,'45.39 cm',0,0),(19,5,'19.61 cm',0,0),(20,6,'38.17 cm',0,0),(20,7,'90.89 cm',0,0),(20,8,'3840x2160',0,0),(21,6,'47.4 cm',0,0),(21,7,'11.81 cm',0,0),(21,8,'3840x2160',0,0),(22,1,'25.89 cm',0,0),(22,2,'39.48 cm',0,0),(22,3,'58.26 cm',0,0),(22,4,'68.12 cm',0,0),(22,5,'91.29 cm',0,0),(23,6,'91.92 cm',0,0),(23,7,'99.95 cm',0,0),(23,8,'3840x2160',0,0),(24,1,'92.98 cm',0,0),(24,2,'15.15 cm',0,0),(24,3,'29.64 cm',0,0),(24,4,'64.77 cm',0,0),(24,5,'44.24 cm',0,0),(25,1,'59.27 cm',0,0),(25,2,'90.21 cm',0,0),(25,3,'20.78 cm',0,0),(25,4,'17.31 cm',0,0),(25,5,'4.2 cm',0,0),(26,6,'64.49 cm',0,0),(26,7,'95.57 cm',0,0),(26,8,'3840x2160',0,0),(27,6,'30.62 cm',0,0),(27,7,'21.11 cm',0,0),(27,8,'1920x1080',0,0),(28,6,'32.03 cm',0,0),(28,7,'12.18 cm',0,0),(28,8,'3840x2160',0,0),(29,6,'96.77 cm',0,0),(29,7,'42.47 cm',0,0),(29,8,'3840x2160',0,0),(30,1,'97.84 cm',0,0),(30,2,'39.56 cm',0,0),(30,3,'72.47 cm',0,0),(30,4,'85.15 cm',0,0),(30,5,'80.05 cm',0,0),(31,6,'81.73 cm',0,0),(31,7,'66.09 cm',0,0),(31,8,'1920x1080',0,0),(32,6,'35.14 cm',0,0),(32,7,'77.24 cm',0,0),(32,8,'1920x1080',0,0),(33,6,'46.09 cm',0,0),(33,7,'48.89 cm',0,0),(33,8,'1920x1080',0,0),(34,6,'4.73 cm',0,0),(34,7,'96.48 cm',0,0),(34,8,'2560x1440',0,0),(35,6,'13.85 cm',0,0),(35,7,'99.44 cm',0,0),(35,8,'1920x1080',0,0),(36,6,'16.25 cm',0,0),(36,7,'42.35 cm',0,0),(36,8,'1920x1080',0,0),(37,1,'74.37 cm',0,0),(37,2,'84.62 cm',0,0),(37,3,'96.34 cm',0,0),(37,4,'76.08 cm',0,0),(37,5,'29.59 cm',0,0),(38,1,'22.76 cm',0,0),(38,2,'36.22 cm',0,0),(38,3,'89.55 cm',0,0),(38,4,'16.65 cm',0,0),(38,5,'25.09 cm',0,0),(39,1,'38.59 cm',0,0),(39,2,'10.26 cm',0,0),(39,3,'68.74 cm',0,0),(39,4,'84.69 cm',0,0),(39,5,'57.92 cm',0,0),(40,6,'16.19 cm',0,0),(40,7,'13.99 cm',0,0),(40,8,'1920x1080',0,0),(41,1,'43.07 cm',0,0),(41,2,'40.48 cm',0,0),(41,3,'6.45 cm',0,0),(41,4,'32 cm',0,0),(41,5,'71.48 cm',0,0),(42,1,'83.4 cm',0,0),(42,2,'68.92 cm',0,0),(42,3,'51.52 cm',0,0),(42,4,'36.37 cm',0,0),(42,5,'49.94 cm',0,0),(43,1,'54.9 cm',0,0),(43,2,'48.56 cm',0,0),(43,3,'61.17 cm',0,0),(43,4,'21.15 cm',0,0),(43,5,'25.45 cm',0,0),(44,1,'41.4 cm',0,0),(44,2,'91.7 cm',0,0),(44,3,'50.16 cm',0,0),(44,4,'27.01 cm',0,0),(44,5,'75.74 cm',0,0),(45,1,'73.46 cm',0,0),(45,2,'85.39 cm',0,0),(45,3,'44.52 cm',0,0),(45,4,'11.14 cm',0,0),(45,5,'89.82 cm',0,0),(46,6,'92.67 cm',0,0),(46,7,'64.24 cm',0,0),(46,8,'3840x2160',0,0),(47,1,'72.64 cm',0,0),(47,2,'56.25 cm',0,0),(47,3,'57.36 cm',0,0),(47,4,'18.77 cm',0,0),(47,5,'74.34 cm',0,0),(48,6,'10.13 cm',0,0),(48,7,'59 cm',0,0),(48,8,'2560x1440',0,0),(49,6,'49.87 cm',0,0),(49,7,'55.48 cm',0,0),(49,8,'3840x2160',0,0),(50,6,'24.72 cm',0,0),(50,7,'18.77 cm',0,0),(50,8,'1920x1080',0,0),(51,6,'57.35 cm',0,0),(51,7,'66.38 cm',0,0),(51,8,'2560x1440',0,0),(52,6,'92.91 cm',0,0),(52,7,'95.5 cm',0,0),(52,8,'2560x1440',0,0),(53,6,'24.07 cm',0,0),(53,7,'84.4 cm',0,0),(53,8,'2560x1440',0,0),(54,1,'98.91 cm',0,0),(54,2,'15.28 cm',0,0),(54,3,'91.34 cm',0,0),(54,4,'7.58 cm',0,0),(54,5,'70.11 cm',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute_translations`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `psat_unique` (`product_id`,`attribute_id`,`lang_code`),
  KEY `psat_product_attribute_index` (`product_id`,`attribute_id`),
  KEY `psat_product_id_index` (`product_id`),
  KEY `psat_attribute_id_index` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute_translations`
--

LOCK TABLES `ec_product_specification_attribute_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_specification_attribute_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2025-09-25 01:22:16','2025-09-25 01:22:16'),(2,'Mobile',NULL,'published','2025-09-25 01:22:16','2025-09-25 01:22:16'),(3,'Iphone',NULL,'published','2025-09-25 01:22:16','2025-09-25 01:22:16'),(4,'Printer',NULL,'published','2025-09-25 01:22:16','2025-09-25 01:22:16'),(5,'Office',NULL,'published','2025-09-25 01:22:16','2025-09-25 01:22:16'),(6,'IT',NULL,'published','2025-09-25 01:22:16','2025-09-25 01:22:16');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`),
  KEY `idx_variation_id` (`variation_id`),
  KEY `idx_variation_attribute_covering` (`variation_id`,`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (11,1,6),(13,1,7),(29,1,15),(33,1,17),(37,1,19),(57,1,29),(67,1,34),(69,1,35),(79,1,40),(107,1,54),(119,1,60),(137,1,69),(139,1,70),(23,2,12),(59,2,30),(75,2,38),(83,2,42),(89,2,45),(93,2,47),(109,2,55),(131,2,66),(145,2,73),(1,3,1),(9,3,5),(21,3,11),(27,3,14),(39,3,20),(49,3,25),(51,3,26),(55,3,28),(65,3,33),(85,3,43),(95,3,48),(101,3,51),(117,3,59),(129,3,65),(3,4,2),(15,4,8),(25,4,13),(35,4,18),(41,4,21),(53,4,27),(63,4,32),(71,4,36),(73,4,37),(77,4,39),(87,4,44),(111,4,56),(123,4,62),(125,4,63),(141,4,71),(147,4,74),(149,4,75),(5,5,3),(7,5,4),(17,5,9),(19,5,10),(31,5,16),(43,5,22),(45,5,23),(47,5,24),(61,5,31),(81,5,41),(91,5,46),(97,5,49),(99,5,50),(103,5,52),(105,5,53),(113,5,57),(115,5,58),(121,5,61),(127,5,64),(133,5,67),(135,5,68),(143,5,72),(151,5,76),(153,5,77),(2,6,1),(12,6,6),(22,6,11),(32,6,16),(36,6,18),(38,6,19),(40,6,20),(44,6,22),(54,6,27),(60,6,30),(80,6,40),(82,6,41),(84,6,42),(88,6,44),(104,6,52),(118,6,59),(120,6,60),(128,6,64),(132,6,66),(138,6,69),(140,6,70),(14,7,7),(52,7,26),(64,7,32),(72,7,36),(92,7,46),(94,7,47),(108,7,54),(114,7,57),(152,7,76),(4,8,2),(10,8,5),(16,8,8),(30,8,15),(66,8,33),(70,8,35),(74,8,37),(78,8,39),(90,8,45),(96,8,48),(116,8,58),(124,8,62),(136,8,68),(142,8,71),(146,8,73),(148,8,74),(8,9,4),(18,9,9),(24,9,12),(26,9,13),(34,9,17),(42,9,21),(46,9,23),(48,9,24),(58,9,29),(68,9,34),(76,9,38),(110,9,55),(122,9,61),(126,9,63),(130,9,65),(144,9,72),(154,9,77),(6,10,3),(20,10,10),(28,10,14),(50,10,25),(56,10,28),(62,10,31),(86,10,43),(98,10,49),(100,10,50),(102,10,51),(106,10,53),(112,10,56),(134,10,67),(150,10,75);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`),
  KEY `idx_configurable_product_id` (`configurable_product_id`),
  KEY `idx_product_variations_config` (`configurable_product_id`,`is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,55,1,1),(2,56,1,0),(3,57,2,1),(4,58,2,0),(5,59,2,0),(6,60,5,1),(7,61,5,0),(8,62,5,0),(9,63,5,0),(10,64,6,1),(11,65,6,0),(12,66,8,1),(13,67,8,0),(14,68,8,0),(15,69,8,0),(16,70,12,1),(17,71,12,0),(18,72,15,1),(19,73,15,0),(20,74,15,0),(21,75,18,1),(22,76,18,0),(23,77,18,0),(24,78,18,0),(25,79,20,1),(26,80,20,0),(27,81,20,0),(28,82,21,1),(29,83,21,0),(30,84,22,1),(31,85,22,0),(32,86,22,0),(33,87,23,1),(34,88,23,0),(35,89,25,1),(36,90,26,1),(37,91,26,0),(38,92,26,0),(39,93,27,1),(40,94,28,1),(41,95,28,0),(42,96,30,1),(43,97,30,0),(44,98,30,0),(45,99,31,1),(46,100,32,1),(47,101,32,0),(48,102,32,0),(49,103,32,0),(50,104,34,1),(51,105,34,0),(52,106,39,1),(53,107,40,1),(54,108,41,1),(55,109,41,0),(56,110,43,1),(57,111,43,0),(58,112,44,1),(59,113,45,1),(60,114,45,0),(61,115,45,0),(62,116,46,1),(63,117,46,0),(64,118,47,1),(65,119,47,0),(66,120,47,0),(67,121,49,1),(68,122,50,1),(69,123,50,0),(70,124,52,1),(71,125,52,0),(72,126,52,0),(73,127,52,0),(74,128,52,0),(75,129,54,1),(76,130,54,0),(77,131,54,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2025-09-25',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,8,0),(2,8,0),(1,12,0),(2,12,0),(1,15,0),(2,15,0),(1,18,0),(2,18,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,25,0),(2,25,0),(1,26,0),(2,26,0),(1,27,0),(2,27,0),(1,28,0),(2,28,0),(1,30,0),(2,30,0),(1,31,0),(2,31,0),(1,32,0),(2,32,0),(1,34,0),(2,34,0),(1,39,0),(2,39,0),(1,40,0),(2,40,0),(1,41,0),(2,41,0),(1,43,0),(2,43,0),(1,44,0),(2,44,0),(1,45,0),(2,45,0),(1,46,0),(2,46,0),(1,47,0),(2,47,0),(1,49,0),(2,49,0),(1,50,0),(2,50,0),(1,52,0),(2,52,0),(1,54,0),(2,54,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `variations_count` int unsigned NOT NULL DEFAULT '0',
  `reviews_count` int unsigned NOT NULL DEFAULT '0',
  `reviews_avg` decimal(3,2) NOT NULL DEFAULT '0.00',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `license_code_type` enum('auto_generate','pick_from_list') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto_generate',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`),
  KEY `idx_products_export` (`id`,`is_variation`),
  KEY `idx_variation_name_id` (`is_variation`,`name`,`id`),
  KEY `ec_products_variations_count_index` (`variations_count`),
  KEY `ec_products_slug_index` (`slug`),
  KEY `idx_products_status_variation` (`status`,`is_variation`,`id`),
  KEY `idx_products_price_sale` (`sale_type`,`sale_price`,`price`),
  KEY `idx_products_order_created` (`order`,`created_at`),
  KEY `idx_products_stock` (`with_storehouse_management`,`stock_status`,`quantity`),
  KEY `ec_products_reviews_count_index` (`reviews_count`),
  KEY `ec_products_reviews_avg_index` (`reviews_avg`),
  KEY `idx_store_variation_status` (`store_id`,`is_variation`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Smart Home Speaker','smart-home-speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\",\"products\\/1-4.jpg\"]',NULL,'EF-181-A1',0,20,0,1,'in_stock',0,5,0,2,10,3.70,0,204.01,NULL,NULL,NULL,10,20,17,668,NULL,83118,'2025-09-25 01:22:07','2025-09-25 01:22:27',0,'Botble\\ACL\\Models\\User',NULL,'physical','7190050594222',NULL,0,'auto_generate',0,0,0,2,8,0),(2,'Headphone Ultra Bass','headphone-ultra-bass','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\",\"products\\/2-4.jpg\"]',NULL,'YT-160-A1',0,20,0,1,'in_stock',0,5,0,3,9,2.89,0,197.82,NULL,NULL,NULL,20,16,11,701,NULL,108535,'2025-09-25 01:22:07','2025-09-25 01:22:27',0,'Botble\\ACL\\Models\\User',NULL,'physical','2059720628603',NULL,0,'auto_generate',0,0,0,2,2,0),(3,'Boxed - Bluetooth Headphone','boxed-bluetooth-headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\",\"products\\/3-4.jpg\"]',NULL,'8E-112',0,13,0,1,'in_stock',0,5,0,0,8,2.13,0,1389.91,489.91,NULL,NULL,11,10,18,787,NULL,56828,'2025-09-25 01:22:07','2025-09-25 01:22:27',0,'Botble\\ACL\\Models\\User',NULL,'physical','1692849322475',NULL,0,'auto_generate',0,0,0,1,6,0),(4,'Camera Samsung SS-24 (Digital)','camera-samsung-ss-24','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\",\"products\\/4-4.jpg\"]',NULL,'I2-192',0,12,0,1,'in_stock',0,3,0,0,6,3.83,0,856.75,524.75,NULL,NULL,19,11,10,546,NULL,186499,'2025-09-25 01:22:07','2025-09-25 01:22:27',0,'Botble\\ACL\\Models\\User',NULL,'digital','6587647359547',NULL,0,'auto_generate',0,0,0,2,1,0),(5,'Macbook Pro 2015','macbook-pro-2015','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\",\"products\\/5-4.jpg\"]',NULL,'S6-159-A1',0,16,0,1,'in_stock',0,4,0,4,9,3.11,0,1685.2,NULL,NULL,NULL,13,12,10,571,NULL,58048,'2025-09-25 01:22:07','2025-09-25 01:22:27',0,'Botble\\ACL\\Models\\User',NULL,'physical','7948765766744',NULL,0,'auto_generate',0,0,0,1,3,0),(6,'Apple Watch Serial 7','apple-watch-serial-7','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6-1.jpg\",\"products\\/6-2.jpg\",\"products\\/6-3.jpg\",\"products\\/6-4.jpg\"]',NULL,'RJ-160-A1',0,12,0,1,'in_stock',0,7,0,2,8,2.88,0,679.76,NULL,NULL,NULL,11,19,13,640,NULL,69324,'2025-09-25 01:22:07','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','4661238796255',NULL,0,'auto_generate',0,0,0,2,1,0),(7,'Macbook Pro 13 inch','macbook-pro-13-inch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7-1.jpg\",\"products\\/7-2.jpg\",\"products\\/7-3.jpg\"]',NULL,'MG-152',0,10,0,1,'in_stock',0,7,0,0,8,2.25,0,1942.4,1717.4,NULL,NULL,10,20,10,899,NULL,184842,'2025-09-25 01:22:07','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','8448348458022',NULL,0,'auto_generate',0,0,0,2,8,0),(8,'Apple Keyboard (Digital)','apple-keyboard','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\",\"products\\/8-4.jpg\"]',NULL,'3H-188-A1',0,19,0,1,'in_stock',0,1,0,4,8,2.63,0,1465.32,1216.2156,NULL,NULL,17,13,11,889,NULL,42970,'2025-09-25 01:22:07','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','5305110714003',NULL,0,'auto_generate',0,0,0,1,3,0),(9,'MacSafe 80W','macsafe-80w','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9-1.jpg\",\"products\\/9-2.jpg\",\"products\\/9-3.jpg\"]',NULL,'XK-120',0,12,0,1,'in_stock',0,5,0,0,9,2.89,0,860.1,477.1,NULL,NULL,15,16,19,585,NULL,125165,'2025-09-25 01:22:07','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','2060936564197',NULL,0,'auto_generate',0,0,0,1,7,0),(10,'Hand playstation','hand-playstation','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10-1.jpg\",\"products\\/10-2.jpg\",\"products\\/10-3.jpg\",\"products\\/10-4.jpg\"]',NULL,'QF-165',0,18,0,1,'in_stock',0,3,0,0,10,3.00,0,1144.38,514.38,NULL,NULL,10,17,18,791,NULL,74320,'2025-09-25 01:22:07','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','0293514532574',NULL,0,'auto_generate',0,0,0,2,3,0),(11,'Apple Airpods Serial 3','apple-airpods-serial-3','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\",\"products\\/11-4.jpg\"]',NULL,'UH-127',0,14,0,1,'in_stock',1,4,0,0,8,3.25,0,643.55,547.0175,NULL,NULL,19,18,13,563,NULL,86044,'2025-09-25 01:22:07','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','7248774385029',NULL,0,'auto_generate',0,0,0,2,7,0),(12,'Cool Smart Watches (Digital)','cool-smart-watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\",\"products\\/12-4.jpg\"]',NULL,'IX-128-A1',0,10,0,1,'in_stock',0,1,0,2,10,2.40,0,1227.34,1006.4188,NULL,NULL,15,18,14,780,NULL,75099,'2025-09-25 01:22:07','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','6667243601841',NULL,0,'auto_generate',0,0,0,1,2,0),(13,'Black Smart Watches','black-smart-watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13-1.jpg\",\"products\\/13-2.jpg\",\"products\\/13-3.jpg\",\"products\\/13-4.jpg\"]',NULL,'O2-182',0,15,0,1,'in_stock',0,6,0,0,10,2.10,0,349.23,258.4302,NULL,NULL,16,16,15,611,NULL,117067,'2025-09-25 01:22:07','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','4968773398471',NULL,0,'auto_generate',0,0,0,2,9,0),(14,'Leather Watch In Black','leather-watch-in-black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14-1.jpg\",\"products\\/14-2.jpg\",\"products\\/14-3.jpg\",\"products\\/14-4.jpg\"]',NULL,'BI-126',0,13,0,1,'in_stock',0,7,0,0,8,3.25,0,856.37,271.37,NULL,NULL,14,11,16,776,NULL,69137,'2025-09-25 01:22:07','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','6068388852578',NULL,0,'auto_generate',0,0,0,2,5,0),(15,'Macbook Pro 2015 13 inch','macbook-pro-2015-13-inch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15-1.jpg\",\"products\\/15-2.jpg\",\"products\\/15-3.jpg\",\"products\\/15-4.jpg\"]',NULL,'6V-137-A1',0,12,0,1,'in_stock',0,5,0,3,9,3.00,0,241.12,NULL,NULL,NULL,13,19,13,639,NULL,135874,'2025-09-25 01:22:07','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','2213218915761',NULL,0,'auto_generate',0,0,0,1,6,0),(16,'Historic Alarm Clock (Digital)','historic-alarm-clock','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\"]',NULL,'Q2-130',0,15,0,1,'in_stock',0,2,0,0,7,3.29,0,1334,1255,NULL,NULL,14,18,19,610,NULL,48297,'2025-09-25 01:22:07','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','6022924176306',NULL,0,'auto_generate',0,0,0,1,8,0),(17,'Black Glasses','black-glasses','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\",\"products\\/17-4.jpg\"]',NULL,'S2-170',0,11,0,1,'in_stock',0,2,0,0,8,3.88,0,1070.62,181.62,NULL,NULL,14,18,15,683,NULL,198674,'2025-09-25 01:22:07','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','0037487019034',NULL,0,'auto_generate',0,0,0,2,6,0),(18,'Phillips Mouse','phillips-mouse','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\",\"products\\/18-4.jpg\"]',NULL,'RT-143-A1',0,20,0,1,'in_stock',0,1,0,4,6,3.00,0,1880.29,NULL,NULL,NULL,16,17,12,818,NULL,95906,'2025-09-25 01:22:07','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','6882943926944',NULL,0,'auto_generate',0,0,0,2,4,0),(19,'Gaming Keyboard','gaming-keyboard','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\",\"products\\/19-4.jpg\"]',NULL,'HU-171',0,19,0,1,'in_stock',0,2,0,0,9,2.56,0,1193.05,314.05,NULL,NULL,13,13,14,704,NULL,32446,'2025-09-25 01:22:07','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','0368043890379',NULL,0,'auto_generate',0,0,0,1,5,0),(20,'Wireless Keyboard (Digital)','wireless-keyboard','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\",\"products\\/20-4.jpg\"]',NULL,'BA-134-A1',0,11,0,1,'in_stock',0,5,0,3,8,2.88,0,1122.71,842.0325,NULL,NULL,10,16,17,652,NULL,76034,'2025-09-25 01:22:07','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','1271218820660',NULL,0,'auto_generate',0,0,0,2,4,0),(21,'Black Smart Watches','black-smart-watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21-1.jpg\",\"products\\/21-2.jpg\",\"products\\/21-3.jpg\",\"products\\/21-4.jpg\"]',NULL,'H7-178-A1',0,13,0,1,'in_stock',0,6,0,2,7,3.57,0,985.46,NULL,NULL,NULL,16,13,13,574,NULL,135689,'2025-09-25 01:22:07','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','4720563487525',NULL,0,'auto_generate',0,0,0,2,3,0),(22,'Smart Home Speaker','smart-home-speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\",\"products\\/22-4.jpg\"]',NULL,'UM-175-A1',0,12,0,1,'in_stock',1,4,0,3,9,3.11,0,1094.17,NULL,NULL,NULL,17,13,19,603,NULL,187243,'2025-09-25 01:22:08','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','4993202704479',NULL,0,'auto_generate',0,0,0,1,7,0),(23,'Headphone Ultra Bass','headphone-ultra-bass','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\",\"products\\/23-4.jpg\"]',NULL,'TT-161-A1',0,10,0,1,'in_stock',0,2,0,2,8,2.88,0,1275.09,NULL,NULL,NULL,13,14,19,889,NULL,188909,'2025-09-25 01:22:08','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','1823017366766',NULL,0,'auto_generate',0,0,0,2,9,0),(24,'Boxed - Bluetooth Headphone (Digital)','boxed-bluetooth-headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24-1.jpg\",\"products\\/24-2.jpg\",\"products\\/24-3.jpg\",\"products\\/24-4.jpg\"]',NULL,'JJ-155',0,20,0,1,'in_stock',0,7,0,0,9,2.67,0,798.58,698.58,NULL,NULL,14,17,10,695,NULL,125549,'2025-09-25 01:22:08','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','4523194551364',NULL,0,'auto_generate',0,0,0,1,6,0),(25,'Camera Samsung SS-24','camera-samsung-ss-24','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/25-1.jpg\",\"products\\/25-2.jpg\",\"products\\/25-3.jpg\",\"products\\/25-4.jpg\"]',NULL,'Q5-194-A1',0,14,0,1,'in_stock',0,4,0,1,10,2.70,0,511.72,NULL,NULL,NULL,13,19,17,647,NULL,75053,'2025-09-25 01:22:08','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','9789532707434',NULL,0,'auto_generate',0,0,0,1,9,0),(26,'Leather Watch In Black','leather-watch-in-black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/26-1.jpg\",\"products\\/26-2.jpg\",\"products\\/26-3.jpg\",\"products\\/26-4.jpg\"]',NULL,'3J-144-A1',0,18,0,1,'in_stock',0,1,0,3,8,3.13,0,1615.96,NULL,NULL,NULL,20,18,18,690,NULL,101455,'2025-09-25 01:22:08','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','3239777927815',NULL,0,'auto_generate',0,0,0,2,5,0),(27,'Apple iPhone 13 Plus','apple-iphone-13-plus','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/27-1.jpg\",\"products\\/27-2.jpg\",\"products\\/27-3.jpg\",\"products\\/27-4.jpg\"]',NULL,'YV-165-A1',0,12,0,1,'in_stock',0,4,0,1,9,2.89,0,1784.09,NULL,NULL,NULL,15,16,20,781,NULL,40298,'2025-09-25 01:22:08','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','1922170268471',NULL,0,'auto_generate',0,0,0,2,4,0),(28,'Macbook Pro 2015 (Digital)','macbook-pro-2015','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/28-1.jpg\",\"products\\/28-2.jpg\",\"products\\/28-3.jpg\",\"products\\/28-4.jpg\"]',NULL,'F3-166-A1',0,19,0,1,'in_stock',0,5,0,2,9,3.33,0,1987.79,1709.4994,NULL,NULL,11,10,19,602,NULL,188647,'2025-09-25 01:22:08','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','9411376300631',NULL,0,'auto_generate',0,0,0,2,1,0),(29,'Apple Watch Serial 7','apple-watch-serial-7','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/29-1.jpg\",\"products\\/29-2.jpg\",\"products\\/29-3.jpg\"]',NULL,'ET-123',0,12,0,1,'in_stock',0,3,0,0,8,3.38,0,783.92,511.92,NULL,NULL,14,20,17,848,NULL,190031,'2025-09-25 01:22:08','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','3790936136306',NULL,0,'auto_generate',0,0,0,2,4,0),(30,'Macbook Pro 13 inch','macbook-pro-13-inch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/30-1.jpg\",\"products\\/30-2.jpg\",\"products\\/30-3.jpg\",\"products\\/30-4.jpg\"]',NULL,'W1-195-A1',0,19,0,1,'in_stock',0,7,0,3,8,2.88,0,1977.23,NULL,NULL,NULL,17,18,11,527,NULL,112125,'2025-09-25 01:22:08','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','0373229623146',NULL,0,'auto_generate',0,0,0,1,5,0),(31,'Apple Keyboard','apple-keyboard','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/31-1.jpg\",\"products\\/31-2.jpg\",\"products\\/31-3.jpg\",\"products\\/31-4.jpg\"]',NULL,'JG-182-A1',0,11,0,1,'in_stock',0,3,0,1,9,4.33,0,396.83,NULL,NULL,NULL,19,18,17,800,NULL,158151,'2025-09-25 01:22:08','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','0243598064355',NULL,0,'auto_generate',0,0,0,2,8,0),(32,'MacSafe 80W (Digital)','macsafe-80w','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/32-1.jpg\",\"products\\/32-2.jpg\",\"products\\/32-3.jpg\",\"products\\/32-4.jpg\"]',NULL,'AQ-111-A1',0,19,0,1,'in_stock',0,3,0,4,10,3.20,0,180.64,140.8992,NULL,NULL,17,15,10,658,NULL,125646,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','0893039408585',NULL,0,'auto_generate',0,0,0,2,7,0),(33,'Hand playstation','hand-playstation','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/33-1.jpg\",\"products\\/33-2.jpg\",\"products\\/33-3.jpg\",\"products\\/33-4.jpg\"]',NULL,'YM-169',0,15,0,1,'in_stock',0,3,0,0,8,2.63,0,364.33,250.33,NULL,NULL,13,10,17,689,NULL,32398,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','1394372814082',NULL,0,'auto_generate',0,0,0,2,7,0),(34,'Apple Airpods Serial 3','apple-airpods-serial-3','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/34-1.jpg\",\"products\\/34-2.jpg\",\"products\\/34-3.jpg\",\"products\\/34-4.jpg\"]',NULL,'Z0-175-A1',0,20,0,1,'in_stock',1,1,0,2,7,2.43,0,917.83,NULL,NULL,NULL,18,16,20,511,NULL,45126,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','7940300799149',NULL,0,'auto_generate',0,0,0,2,1,0),(35,'Cool Smart Watches','cool-smart-watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/35-1.jpg\",\"products\\/35-2.jpg\",\"products\\/35-3.jpg\",\"products\\/35-4.jpg\"]',NULL,'7M-200',0,20,0,1,'in_stock',0,4,0,0,9,3.78,0,451.23,75.23,NULL,NULL,12,19,12,596,NULL,39212,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','9012888077150',NULL,0,'auto_generate',0,0,0,2,8,0),(36,'Black Smart Watches (Digital)','black-smart-watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/36-1.jpg\",\"products\\/36-2.jpg\",\"products\\/36-3.jpg\"]',NULL,'1Q-169',0,13,0,1,'in_stock',0,4,0,0,8,3.13,0,338.91,184.91,NULL,NULL,13,18,11,774,NULL,55728,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','5855025131834',NULL,0,'auto_generate',0,0,0,2,8,0),(37,'Leather Watch In Black','leather-watch-in-black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/37-1.jpg\",\"products\\/37-2.jpg\",\"products\\/37-3.jpg\"]',NULL,'F1-100',0,16,0,1,'in_stock',0,2,0,0,7,2.29,0,455.11,342.11,NULL,NULL,14,20,14,873,NULL,111766,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','7188230433355',NULL,0,'auto_generate',0,0,0,1,2,0),(38,'Macbook Pro 2015 13 inch','macbook-pro-2015-13-inch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/38-1.jpg\",\"products\\/38-2.jpg\",\"products\\/38-3.jpg\",\"products\\/38-4.jpg\"]',NULL,'5E-153',0,13,0,1,'in_stock',0,5,0,0,8,2.88,0,1034.16,315.16,NULL,NULL,18,11,15,715,NULL,122373,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','5717869079331',NULL,0,'auto_generate',0,0,0,1,4,0),(39,'Sony WH-1000XM4 Wireless Headphones','sony-wh-1000xm4-wireless-headphones','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/39-1.jpg\",\"products\\/39-2.jpg\",\"products\\/39-3.jpg\",\"products\\/39-4.jpg\"]',NULL,'2G-180-A1',0,18,0,1,'in_stock',0,5,0,1,9,3.44,0,1388.29,NULL,NULL,NULL,19,16,16,659,NULL,165098,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','0301015890007',NULL,0,'auto_generate',0,0,0,1,3,0),(40,'Samsung Galaxy S22 Ultra (Digital)','samsung-galaxy-s22-ultra','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/40-1.jpg\",\"products\\/40-2.jpg\",\"products\\/40-3.jpg\",\"products\\/40-4.jpg\"]',NULL,'ZO-174-A1',0,20,0,1,'in_stock',0,1,0,1,8,1.88,0,1638.57,1376.3988,NULL,NULL,15,12,13,638,NULL,161841,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','5906912367772',NULL,0,'auto_generate',0,0,0,2,8,0),(41,'Dell XPS 15 Laptop','dell-xps-15-laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/41-1.jpg\",\"products\\/41-2.jpg\",\"products\\/41-3.jpg\",\"products\\/41-4.jpg\"]',NULL,'TY-187-A1',0,17,0,1,'in_stock',0,3,0,2,9,2.56,0,368.23,NULL,NULL,NULL,16,20,11,811,NULL,137355,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','3362639366979',NULL,0,'auto_generate',0,0,0,1,5,0),(42,'iPad Pro 12.9-inch','ipad-pro-129-inch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/42-1.jpg\",\"products\\/42-2.jpg\",\"products\\/42-3.jpg\"]',NULL,'WY-179',0,14,0,1,'in_stock',0,7,0,0,9,2.78,0,99.1,18.1,NULL,NULL,15,11,18,500,NULL,115273,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','3561550006753',NULL,0,'auto_generate',0,0,0,1,4,0),(43,'Bose QuietComfort Earbuds','bose-quietcomfort-earbuds','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/43-1.jpg\",\"products\\/43-2.jpg\",\"products\\/43-3.jpg\"]',NULL,'IE-191-A1',0,16,0,1,'in_stock',1,3,0,2,9,3.44,0,1379.96,NULL,NULL,NULL,13,16,10,707,NULL,70317,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','4960412529604',NULL,0,'auto_generate',0,0,0,1,8,0),(44,'LG OLED C1 Series TV (Digital)','lg-oled-c1-series-tv','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/44-1.jpg\",\"products\\/44-2.jpg\",\"products\\/44-3.jpg\"]',NULL,'KA-181-A1',0,12,0,1,'in_stock',1,5,0,1,10,3.20,0,1774.02,1454.6964,NULL,NULL,14,10,14,541,NULL,99760,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','9971011610766',NULL,0,'auto_generate',0,0,0,1,6,0),(45,'Dyson V11 Vacuum Cleaner','dyson-v11-vacuum-cleaner','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/45-1.jpg\",\"products\\/45-2.jpg\",\"products\\/45-3.jpg\",\"products\\/45-4.jpg\"]',NULL,'NE-135-A1',0,12,0,1,'in_stock',0,5,0,3,10,2.50,0,1923.41,NULL,NULL,NULL,15,10,16,886,NULL,63441,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','1204607481104',NULL,0,'auto_generate',0,0,0,1,3,0),(46,'Nintendo Switch OLED Model','nintendo-switch-oled-model','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/46-1.jpg\",\"products\\/46-2.jpg\",\"products\\/46-3.jpg\",\"products\\/46-4.jpg\"]',NULL,'XQ-119-A1',0,18,0,1,'in_stock',0,6,0,2,10,2.70,0,1092.22,NULL,NULL,NULL,10,10,19,611,NULL,70882,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','7817095210220',NULL,0,'auto_generate',0,0,0,2,2,0),(47,'Canon EOS R5 Camera','canon-eos-r5-camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/47-1.jpg\",\"products\\/47-2.jpg\",\"products\\/47-3.jpg\"]',NULL,'28-165-A1',0,14,0,1,'in_stock',0,7,0,3,9,4.11,0,462.59,NULL,NULL,NULL,11,16,12,657,NULL,44653,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','3447158216902',NULL,0,'auto_generate',0,0,0,1,7,0),(48,'Fitbit Sense Smartwatch (Digital)','fitbit-sense-smartwatch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/48-1.jpg\",\"products\\/48-2.jpg\",\"products\\/48-3.jpg\",\"products\\/48-4.jpg\"]',NULL,'YI-160',0,17,0,1,'in_stock',0,1,0,0,8,3.00,0,1178.15,966.083,NULL,NULL,18,17,13,663,NULL,153854,'2025-09-25 01:22:08','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','1973569941178',NULL,0,'auto_generate',0,0,0,2,9,0),(49,'Sonos Beam Soundbar','sonos-beam-soundbar','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/49-1.jpg\",\"products\\/49-2.jpg\",\"products\\/49-3.jpg\",\"products\\/49-4.jpg\"]',NULL,'9J-133-A1',0,14,0,1,'in_stock',1,1,0,1,9,1.78,0,1644.99,NULL,NULL,NULL,19,16,11,803,NULL,125932,'2025-09-25 01:22:09','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','5983118425338',NULL,0,'auto_generate',0,0,0,2,6,0),(50,'Logitech MX Master 3 Mouse','logitech-mx-master-3-mouse','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/50-1.jpg\",\"products\\/50-2.jpg\",\"products\\/50-3.jpg\",\"products\\/50-4.jpg\"]',NULL,'KH-173-A1',0,17,0,1,'in_stock',0,6,0,2,9,3.44,0,112.49,NULL,NULL,NULL,10,14,13,629,NULL,190619,'2025-09-25 01:22:09','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','6808377179770',NULL,0,'auto_generate',0,0,0,2,8,0),(51,'Kindle Paperwhite E-reader','kindle-paperwhite-e-reader','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/51-1.jpg\",\"products\\/51-2.jpg\",\"products\\/51-3.jpg\",\"products\\/51-4.jpg\"]',NULL,'51-104',0,17,0,1,'in_stock',0,2,0,0,7,3.43,0,1881.51,1618.0986,NULL,NULL,17,16,14,770,NULL,142737,'2025-09-25 01:22:09','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','1980538870032',NULL,0,'auto_generate',0,0,0,2,6,0),(52,'GoPro HERO10 Black (Digital)','gopro-hero10-black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/52-1.jpg\",\"products\\/52-2.jpg\",\"products\\/52-3.jpg\"]',NULL,'LL-122-A1',0,19,0,1,'in_stock',0,3,0,5,9,3.33,0,1128.15,812.268,NULL,NULL,16,10,18,627,NULL,116460,'2025-09-25 01:22:09','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','4841113584140',NULL,0,'auto_generate',0,0,0,2,8,0),(53,'Anker PowerCore Power Bank','anker-powercore-power-bank','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/53-1.jpg\",\"products\\/53-2.jpg\",\"products\\/53-3.jpg\",\"products\\/53-4.jpg\"]',NULL,'A8-173',0,17,0,1,'in_stock',0,3,0,0,10,2.20,0,787.16,254.16,NULL,NULL,16,18,12,559,NULL,105369,'2025-09-25 01:22:09','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','2910044732776',NULL,0,'auto_generate',0,0,0,2,2,0),(54,'Product 54','product-54','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/54-1.jpg\",\"products\\/54-2.jpg\",\"products\\/54-3.jpg\"]',NULL,'8S-148-A1',0,14,0,1,'in_stock',1,5,0,3,10,2.70,0,1078.33,NULL,NULL,NULL,19,19,13,829,NULL,65470,'2025-09-25 01:22:09','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','8308264812950',NULL,0,'auto_generate',0,0,0,1,7,0),(55,'Smart Home Speaker',NULL,NULL,NULL,'published','[\"products\\/1-2.jpg\"]',NULL,'EF-181-A1',0,20,0,1,'in_stock',0,5,1,0,0,0.00,0,204.01,NULL,NULL,NULL,10,20,17,668,NULL,0,'2025-09-25 01:22:09','2025-09-25 01:22:27',0,'Botble\\ACL\\Models\\User',NULL,'physical','8451531188378',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(56,'Smart Home Speaker',NULL,NULL,NULL,'published','[\"products\\/1-3.jpg\"]',NULL,'EF-181-A1-A2',0,20,0,1,'in_stock',0,5,1,0,0,0.00,0,204.01,NULL,NULL,NULL,10,20,17,668,NULL,0,'2025-09-25 01:22:09','2025-09-25 01:22:27',0,'Botble\\ACL\\Models\\User',NULL,'physical','4037575778276',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(57,'Headphone Ultra Bass',NULL,NULL,NULL,'published','[\"products\\/2-2.jpg\"]',NULL,'YT-160-A1',0,20,0,1,'in_stock',0,5,1,0,0,0.00,0,197.82,NULL,NULL,NULL,20,16,11,701,NULL,0,'2025-09-25 01:22:09','2025-09-25 01:22:27',0,'Botble\\ACL\\Models\\User',NULL,'physical','6599660672626',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(58,'Headphone Ultra Bass',NULL,NULL,NULL,'published','[\"products\\/2-3.jpg\"]',NULL,'YT-160-A1-A2',0,20,0,1,'in_stock',0,5,1,0,0,0.00,0,197.82,NULL,NULL,NULL,20,16,11,701,NULL,0,'2025-09-25 01:22:09','2025-09-25 01:22:27',0,'Botble\\ACL\\Models\\User',NULL,'physical','2732124949931',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(59,'Headphone Ultra Bass',NULL,NULL,NULL,'published','[\"products\\/2-4.jpg\"]',NULL,'YT-160-A1-A3',0,20,0,1,'in_stock',0,5,1,0,0,0.00,0,197.82,NULL,NULL,NULL,20,16,11,701,NULL,0,'2025-09-25 01:22:09','2025-09-25 01:22:27',0,'Botble\\ACL\\Models\\User',NULL,'physical','2084885762800',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(60,'Macbook Pro 2015',NULL,NULL,NULL,'published','[\"products\\/5-2.jpg\"]',NULL,'S6-159-A1',0,16,0,1,'in_stock',0,4,1,0,0,0.00,0,1685.2,NULL,NULL,NULL,13,12,10,571,NULL,0,'2025-09-25 01:22:09','2025-09-25 01:22:27',0,'Botble\\ACL\\Models\\User',NULL,'physical','0874531285324',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(61,'Macbook Pro 2015',NULL,NULL,NULL,'published','[\"products\\/5-3.jpg\"]',NULL,'S6-159-A1-A2',0,16,0,1,'in_stock',0,4,1,0,0,0.00,0,1685.2,NULL,NULL,NULL,13,12,10,571,NULL,0,'2025-09-25 01:22:09','2025-09-25 01:22:27',0,'Botble\\ACL\\Models\\User',NULL,'physical','8099056850488',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(62,'Macbook Pro 2015',NULL,NULL,NULL,'published','[\"products\\/5-4.jpg\"]',NULL,'S6-159-A1-A3',0,16,0,1,'in_stock',0,4,1,0,0,0.00,0,1685.2,NULL,NULL,NULL,13,12,10,571,NULL,0,'2025-09-25 01:22:09','2025-09-25 01:22:27',0,'Botble\\ACL\\Models\\User',NULL,'physical','8289002751239',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(63,'Macbook Pro 2015',NULL,NULL,NULL,'published','[\"products\\/5-1.jpg\"]',NULL,'S6-159-A1-A4',0,16,0,1,'in_stock',0,4,1,0,0,0.00,0,1685.2,NULL,NULL,NULL,13,12,10,571,NULL,0,'2025-09-25 01:22:09','2025-09-25 01:22:27',0,'Botble\\ACL\\Models\\User',NULL,'physical','8714317599028',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(64,'Apple Watch Serial 7',NULL,NULL,NULL,'published','[\"products\\/6-2.jpg\"]',NULL,'RJ-160-A1',0,12,0,1,'in_stock',0,7,1,0,0,0.00,0,679.76,NULL,NULL,NULL,11,19,13,640,NULL,0,'2025-09-25 01:22:09','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','5547627918394',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(65,'Apple Watch Serial 7',NULL,NULL,NULL,'published','[\"products\\/6-3.jpg\"]',NULL,'RJ-160-A1-A2',0,12,0,1,'in_stock',0,7,1,0,0,0.00,0,679.76,NULL,NULL,NULL,11,19,13,640,NULL,0,'2025-09-25 01:22:09','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','9800556510999',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(66,'Apple Keyboard (Digital)',NULL,NULL,NULL,'published','[\"products\\/8-2.jpg\"]',NULL,'3H-188-A1',0,19,0,1,'in_stock',0,1,1,0,0,0.00,0,1465.32,1216.2156,NULL,NULL,17,13,11,889,NULL,0,'2025-09-25 01:22:09','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','1811237159503',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(67,'Apple Keyboard (Digital)',NULL,NULL,NULL,'published','[\"products\\/8-3.jpg\"]',NULL,'3H-188-A1-A2',0,19,0,1,'in_stock',0,1,1,0,0,0.00,0,1465.32,1055.0304,NULL,NULL,17,13,11,889,NULL,0,'2025-09-25 01:22:09','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','8466738643933',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(68,'Apple Keyboard (Digital)',NULL,NULL,NULL,'published','[\"products\\/8-4.jpg\"]',NULL,'3H-188-A1-A3',0,19,0,1,'in_stock',0,1,1,0,0,0.00,0,1465.32,1157.6028,NULL,NULL,17,13,11,889,NULL,0,'2025-09-25 01:22:09','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','3664320803603',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(69,'Apple Keyboard (Digital)',NULL,NULL,NULL,'published','[\"products\\/8-1.jpg\"]',NULL,'3H-188-A1-A4',0,19,0,1,'in_stock',0,1,1,0,0,0.00,0,1465.32,1069.6836,NULL,NULL,17,13,11,889,NULL,0,'2025-09-25 01:22:09','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','0577152938708',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(70,'Cool Smart Watches (Digital)',NULL,NULL,NULL,'published','[\"products\\/12-2.jpg\"]',NULL,'IX-128-A1',0,10,0,1,'in_stock',0,1,1,0,0,0.00,0,1227.34,1006.4188,NULL,NULL,15,18,14,780,NULL,0,'2025-09-25 01:22:09','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','9537115624933',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(71,'Cool Smart Watches (Digital)',NULL,NULL,NULL,'published','[\"products\\/12-3.jpg\"]',NULL,'IX-128-A1-A2',0,10,0,1,'in_stock',0,1,1,0,0,0.00,0,1227.34,1043.239,NULL,NULL,15,18,14,780,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','4335756261198',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(72,'Macbook Pro 2015 13 inch',NULL,NULL,NULL,'published','[\"products\\/15-2.jpg\"]',NULL,'6V-137-A1',0,12,0,1,'in_stock',0,5,1,0,0,0.00,0,241.12,NULL,NULL,NULL,13,19,13,639,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','1138094407487',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(73,'Macbook Pro 2015 13 inch',NULL,NULL,NULL,'published','[\"products\\/15-3.jpg\"]',NULL,'6V-137-A1-A2',0,12,0,1,'in_stock',0,5,1,0,0,0.00,0,241.12,NULL,NULL,NULL,13,19,13,639,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','5721188222484',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(74,'Macbook Pro 2015 13 inch',NULL,NULL,NULL,'published','[\"products\\/15-4.jpg\"]',NULL,'6V-137-A1-A3',0,12,0,1,'in_stock',0,5,1,0,0,0.00,0,241.12,NULL,NULL,NULL,13,19,13,639,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','8136762101111',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(75,'Phillips Mouse',NULL,NULL,NULL,'published','[\"products\\/18-2.jpg\"]',NULL,'RT-143-A1',0,20,0,1,'in_stock',0,1,1,0,0,0.00,0,1880.29,NULL,NULL,NULL,16,17,12,818,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','3310393900649',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(76,'Phillips Mouse',NULL,NULL,NULL,'published','[\"products\\/18-3.jpg\"]',NULL,'RT-143-A1-A2',0,20,0,1,'in_stock',0,1,1,0,0,0.00,0,1880.29,NULL,NULL,NULL,16,17,12,818,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','9317895242868',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(77,'Phillips Mouse',NULL,NULL,NULL,'published','[\"products\\/18-4.jpg\"]',NULL,'RT-143-A1-A3',0,20,0,1,'in_stock',0,1,1,0,0,0.00,0,1880.29,NULL,NULL,NULL,16,17,12,818,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','3230220892551',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(78,'Phillips Mouse',NULL,NULL,NULL,'published','[\"products\\/18-1.jpg\"]',NULL,'RT-143-A1-A4',0,20,0,1,'in_stock',0,1,1,0,0,0.00,0,1880.29,NULL,NULL,NULL,16,17,12,818,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','8438498124380',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(79,'Wireless Keyboard (Digital)',NULL,NULL,NULL,'published','[\"products\\/20-2.jpg\"]',NULL,'BA-134-A1',0,11,0,1,'in_stock',0,5,1,0,0,0.00,0,1122.71,842.0325,NULL,NULL,10,16,17,652,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','9588163399359',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(80,'Wireless Keyboard (Digital)',NULL,NULL,NULL,'published','[\"products\\/20-3.jpg\"]',NULL,'BA-134-A1-A2',0,11,0,1,'in_stock',0,5,1,0,0,0.00,0,1122.71,909.3951,NULL,NULL,10,16,17,652,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','2780607135593',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(81,'Wireless Keyboard (Digital)',NULL,NULL,NULL,'published','[\"products\\/20-4.jpg\"]',NULL,'BA-134-A1-A3',0,11,0,1,'in_stock',0,5,1,0,0,0.00,0,1122.71,808.3512,NULL,NULL,10,16,17,652,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','3692701098775',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(82,'Black Smart Watches',NULL,NULL,NULL,'published','[\"products\\/21-2.jpg\"]',NULL,'H7-178-A1',0,13,0,1,'in_stock',0,6,1,0,0,0.00,0,985.46,NULL,NULL,NULL,16,13,13,574,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','7583719465832',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(83,'Black Smart Watches',NULL,NULL,NULL,'published','[\"products\\/21-3.jpg\"]',NULL,'H7-178-A1-A2',0,13,0,1,'in_stock',0,6,1,0,0,0.00,0,985.46,NULL,NULL,NULL,16,13,13,574,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','8885174975970',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(84,'Smart Home Speaker',NULL,NULL,NULL,'published','[\"products\\/22-2.jpg\"]',NULL,'UM-175-A1',0,12,0,1,'in_stock',0,4,1,0,0,0.00,0,1094.17,NULL,NULL,NULL,17,13,19,603,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','4627938884883',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(85,'Smart Home Speaker',NULL,NULL,NULL,'published','[\"products\\/22-3.jpg\"]',NULL,'UM-175-A1-A2',0,12,0,1,'in_stock',0,4,1,0,0,0.00,0,1094.17,NULL,NULL,NULL,17,13,19,603,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','6824062777861',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(86,'Smart Home Speaker',NULL,NULL,NULL,'published','[\"products\\/22-4.jpg\"]',NULL,'UM-175-A1-A3',0,12,0,1,'in_stock',0,4,1,0,0,0.00,0,1094.17,NULL,NULL,NULL,17,13,19,603,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','1849153586660',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(87,'Headphone Ultra Bass',NULL,NULL,NULL,'published','[\"products\\/23-2.jpg\"]',NULL,'TT-161-A1',0,10,0,1,'in_stock',0,2,1,0,0,0.00,0,1275.09,NULL,NULL,NULL,13,14,19,889,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','6738995699896',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(88,'Headphone Ultra Bass',NULL,NULL,NULL,'published','[\"products\\/23-3.jpg\"]',NULL,'TT-161-A1-A2',0,10,0,1,'in_stock',0,2,1,0,0,0.00,0,1275.09,NULL,NULL,NULL,13,14,19,889,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','7532372677144',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(89,'Camera Samsung SS-24',NULL,NULL,NULL,'published','[\"products\\/25-2.jpg\"]',NULL,'Q5-194-A1',0,14,0,1,'in_stock',0,4,1,0,0,0.00,0,511.72,NULL,NULL,NULL,13,19,17,647,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','9171563430786',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(90,'Leather Watch In Black',NULL,NULL,NULL,'published','[\"products\\/26-2.jpg\"]',NULL,'3J-144-A1',0,18,0,1,'in_stock',0,1,1,0,0,0.00,0,1615.96,NULL,NULL,NULL,20,18,18,690,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','2657593120882',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(91,'Leather Watch In Black',NULL,NULL,NULL,'published','[\"products\\/26-3.jpg\"]',NULL,'3J-144-A1-A2',0,18,0,1,'in_stock',0,1,1,0,0,0.00,0,1615.96,NULL,NULL,NULL,20,18,18,690,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','4146085645999',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(92,'Leather Watch In Black',NULL,NULL,NULL,'published','[\"products\\/26-4.jpg\"]',NULL,'3J-144-A1-A3',0,18,0,1,'in_stock',0,1,1,0,0,0.00,0,1615.96,NULL,NULL,NULL,20,18,18,690,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','2745054889901',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(93,'Apple iPhone 13 Plus',NULL,NULL,NULL,'published','[\"products\\/27-2.jpg\"]',NULL,'YV-165-A1',0,12,0,1,'in_stock',0,4,1,0,0,0.00,0,1784.09,NULL,NULL,NULL,15,16,20,781,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','8937089102696',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(94,'Macbook Pro 2015 (Digital)',NULL,NULL,NULL,'published','[\"products\\/28-2.jpg\"]',NULL,'F3-166-A1',0,19,0,1,'in_stock',0,5,1,0,0,0.00,0,1987.79,1709.4994,NULL,NULL,11,10,19,602,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','8835667644029',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(95,'Macbook Pro 2015 (Digital)',NULL,NULL,NULL,'published','[\"products\\/28-3.jpg\"]',NULL,'F3-166-A1-A2',0,19,0,1,'in_stock',0,5,1,0,0,0.00,0,1987.79,1669.7436,NULL,NULL,11,10,19,602,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'digital','9019959812467',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(96,'Macbook Pro 13 inch',NULL,NULL,NULL,'published','[\"products\\/30-2.jpg\"]',NULL,'W1-195-A1',0,19,0,1,'in_stock',0,7,1,0,0,0.00,0,1977.23,NULL,NULL,NULL,17,18,11,527,NULL,0,'2025-09-25 01:22:10','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','4754825354416',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(97,'Macbook Pro 13 inch',NULL,NULL,NULL,'published','[\"products\\/30-3.jpg\"]',NULL,'W1-195-A1-A2',0,19,0,1,'in_stock',0,7,1,0,0,0.00,0,1977.23,NULL,NULL,NULL,17,18,11,527,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','9167112787463',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(98,'Macbook Pro 13 inch',NULL,NULL,NULL,'published','[\"products\\/30-4.jpg\"]',NULL,'W1-195-A1-A3',0,19,0,1,'in_stock',0,7,1,0,0,0.00,0,1977.23,NULL,NULL,NULL,17,18,11,527,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','8279550971999',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(99,'Apple Keyboard',NULL,NULL,NULL,'published','[\"products\\/31-2.jpg\"]',NULL,'JG-182-A1',0,11,0,1,'in_stock',0,3,1,0,0,0.00,0,396.83,NULL,NULL,NULL,19,18,17,800,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:28',0,'Botble\\ACL\\Models\\User',NULL,'physical','8044121249803',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(100,'MacSafe 80W (Digital)',NULL,NULL,NULL,'published','[\"products\\/32-2.jpg\"]',NULL,'AQ-111-A1',0,19,0,1,'in_stock',0,3,1,0,0,0.00,0,180.64,140.8992,NULL,NULL,17,15,10,658,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','8916948325223',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(101,'MacSafe 80W (Digital)',NULL,NULL,NULL,'published','[\"products\\/32-3.jpg\"]',NULL,'AQ-111-A1-A2',0,19,0,1,'in_stock',0,3,1,0,0,0.00,0,180.64,131.8672,NULL,NULL,17,15,10,658,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','1551277338239',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(102,'MacSafe 80W (Digital)',NULL,NULL,NULL,'published','[\"products\\/32-4.jpg\"]',NULL,'AQ-111-A1-A3',0,19,0,1,'in_stock',0,3,1,0,0,0.00,0,180.64,160.7696,NULL,NULL,17,15,10,658,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','4067250040251',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(103,'MacSafe 80W (Digital)',NULL,NULL,NULL,'published','[\"products\\/32-1.jpg\"]',NULL,'AQ-111-A1-A4',0,19,0,1,'in_stock',0,3,1,0,0,0.00,0,180.64,140.8992,NULL,NULL,17,15,10,658,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','0206159442702',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(104,'Apple Airpods Serial 3',NULL,NULL,NULL,'published','[\"products\\/34-2.jpg\"]',NULL,'Z0-175-A1',0,20,0,1,'in_stock',0,1,1,0,0,0.00,0,917.83,NULL,NULL,NULL,18,16,20,511,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','8228805558720',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(105,'Apple Airpods Serial 3',NULL,NULL,NULL,'published','[\"products\\/34-3.jpg\"]',NULL,'Z0-175-A1-A2',0,20,0,1,'in_stock',0,1,1,0,0,0.00,0,917.83,NULL,NULL,NULL,18,16,20,511,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','8337390319552',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(106,'Sony WH-1000XM4 Wireless Headphones',NULL,NULL,NULL,'published','[\"products\\/39-2.jpg\"]',NULL,'2G-180-A1',0,18,0,1,'in_stock',0,5,1,0,0,0.00,0,1388.29,NULL,NULL,NULL,19,16,16,659,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','9095825800240',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(107,'Samsung Galaxy S22 Ultra (Digital)',NULL,NULL,NULL,'published','[\"products\\/40-2.jpg\"]',NULL,'ZO-174-A1',0,20,0,1,'in_stock',0,1,1,0,0,0.00,0,1638.57,1376.3988,NULL,NULL,15,12,13,638,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','4229935717951',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(108,'Dell XPS 15 Laptop',NULL,NULL,NULL,'published','[\"products\\/41-2.jpg\"]',NULL,'TY-187-A1',0,17,0,1,'in_stock',0,3,1,0,0,0.00,0,368.23,NULL,NULL,NULL,16,20,11,811,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','3921823396309',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(109,'Dell XPS 15 Laptop',NULL,NULL,NULL,'published','[\"products\\/41-3.jpg\"]',NULL,'TY-187-A1-A2',0,17,0,1,'in_stock',0,3,1,0,0,0.00,0,368.23,NULL,NULL,NULL,16,20,11,811,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','1458333367755',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(110,'Bose QuietComfort Earbuds',NULL,NULL,NULL,'published','[\"products\\/43-2.jpg\"]',NULL,'IE-191-A1',0,16,0,1,'in_stock',0,3,1,0,0,0.00,0,1379.96,NULL,NULL,NULL,13,16,10,707,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','2636047425650',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(111,'Bose QuietComfort Earbuds',NULL,NULL,NULL,'published','[\"products\\/43-3.jpg\"]',NULL,'IE-191-A1-A2',0,16,0,1,'in_stock',0,3,1,0,0,0.00,0,1379.96,NULL,NULL,NULL,13,16,10,707,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','9511432726549',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(112,'LG OLED C1 Series TV (Digital)',NULL,NULL,NULL,'published','[\"products\\/44-2.jpg\"]',NULL,'KA-181-A1',0,12,0,1,'in_stock',0,5,1,0,0,0.00,0,1774.02,1454.6964,NULL,NULL,14,10,14,541,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','6389662490539',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(113,'Dyson V11 Vacuum Cleaner',NULL,NULL,NULL,'published','[\"products\\/45-2.jpg\"]',NULL,'NE-135-A1',0,12,0,1,'in_stock',0,5,1,0,0,0.00,0,1923.41,NULL,NULL,NULL,15,10,16,886,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','1075837257216',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(114,'Dyson V11 Vacuum Cleaner',NULL,NULL,NULL,'published','[\"products\\/45-3.jpg\"]',NULL,'NE-135-A1-A2',0,12,0,1,'in_stock',0,5,1,0,0,0.00,0,1923.41,NULL,NULL,NULL,15,10,16,886,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','1185207425128',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(115,'Dyson V11 Vacuum Cleaner',NULL,NULL,NULL,'published','[\"products\\/45-4.jpg\"]',NULL,'NE-135-A1-A3',0,12,0,1,'in_stock',0,5,1,0,0,0.00,0,1923.41,NULL,NULL,NULL,15,10,16,886,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','6624957895331',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(116,'Nintendo Switch OLED Model',NULL,NULL,NULL,'published','[\"products\\/46-2.jpg\"]',NULL,'XQ-119-A1',0,18,0,1,'in_stock',0,6,1,0,0,0.00,0,1092.22,NULL,NULL,NULL,10,10,19,611,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','3545339003904',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(117,'Nintendo Switch OLED Model',NULL,NULL,NULL,'published','[\"products\\/46-3.jpg\"]',NULL,'XQ-119-A1-A2',0,18,0,1,'in_stock',0,6,1,0,0,0.00,0,1092.22,NULL,NULL,NULL,10,10,19,611,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','4215449708110',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(118,'Canon EOS R5 Camera',NULL,NULL,NULL,'published','[\"products\\/47-2.jpg\"]',NULL,'28-165-A1',0,14,0,1,'in_stock',0,7,1,0,0,0.00,0,462.59,NULL,NULL,NULL,11,16,12,657,NULL,0,'2025-09-25 01:22:11','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','3554871129836',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(119,'Canon EOS R5 Camera',NULL,NULL,NULL,'published','[\"products\\/47-3.jpg\"]',NULL,'28-165-A1-A2',0,14,0,1,'in_stock',0,7,1,0,0,0.00,0,462.59,NULL,NULL,NULL,11,16,12,657,NULL,0,'2025-09-25 01:22:12','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','9884767586806',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(120,'Canon EOS R5 Camera',NULL,NULL,NULL,'published','[\"products\\/47-1.jpg\"]',NULL,'28-165-A1-A3',0,14,0,1,'in_stock',0,7,1,0,0,0.00,0,462.59,NULL,NULL,NULL,11,16,12,657,NULL,0,'2025-09-25 01:22:12','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','8896471928941',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(121,'Sonos Beam Soundbar',NULL,NULL,NULL,'published','[\"products\\/49-2.jpg\"]',NULL,'9J-133-A1',0,14,0,1,'in_stock',0,1,1,0,0,0.00,0,1644.99,NULL,NULL,NULL,19,16,11,803,NULL,0,'2025-09-25 01:22:12','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','0402188703481',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(122,'Logitech MX Master 3 Mouse',NULL,NULL,NULL,'published','[\"products\\/50-2.jpg\"]',NULL,'KH-173-A1',0,17,0,1,'in_stock',0,6,1,0,0,0.00,0,112.49,NULL,NULL,NULL,10,14,13,629,NULL,0,'2025-09-25 01:22:12','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','7429013681090',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(123,'Logitech MX Master 3 Mouse',NULL,NULL,NULL,'published','[\"products\\/50-3.jpg\"]',NULL,'KH-173-A1-A2',0,17,0,1,'in_stock',0,6,1,0,0,0.00,0,112.49,NULL,NULL,NULL,10,14,13,629,NULL,0,'2025-09-25 01:22:12','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','4319376904154',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(124,'GoPro HERO10 Black (Digital)',NULL,NULL,NULL,'published','[\"products\\/52-2.jpg\"]',NULL,'LL-122-A1',0,19,0,1,'in_stock',0,3,1,0,0,0.00,0,1128.15,812.268,NULL,NULL,16,10,18,627,NULL,0,'2025-09-25 01:22:12','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','7811184687153',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(125,'GoPro HERO10 Black (Digital)',NULL,NULL,NULL,'published','[\"products\\/52-3.jpg\"]',NULL,'LL-122-A1-A2',0,19,0,1,'in_stock',0,3,1,0,0,0.00,0,1128.15,936.3645,NULL,NULL,16,10,18,627,NULL,0,'2025-09-25 01:22:12','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','1957206697741',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(126,'GoPro HERO10 Black (Digital)',NULL,NULL,NULL,'published','[\"products\\/52-1.jpg\"]',NULL,'LL-122-A1-A3',0,19,0,1,'in_stock',0,3,1,0,0,0.00,0,1128.15,981.4905,NULL,NULL,16,10,18,627,NULL,0,'2025-09-25 01:22:12','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','6034611516128',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(127,'GoPro HERO10 Black (Digital)',NULL,NULL,NULL,'published','[\"products\\/52-1.jpg\"]',NULL,'LL-122-A1-A4',0,19,0,1,'in_stock',0,3,1,0,0,0.00,0,1128.15,958.9275,NULL,NULL,16,10,18,627,NULL,0,'2025-09-25 01:22:12','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','2869971999519',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(128,'GoPro HERO10 Black (Digital)',NULL,NULL,NULL,'published','[\"products\\/52-1.jpg\"]',NULL,'LL-122-A1-A5',0,19,0,1,'in_stock',0,3,1,0,0,0.00,0,1128.15,800.9865,NULL,NULL,16,10,18,627,NULL,0,'2025-09-25 01:22:12','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'digital','9254424527822',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(129,'Product 54',NULL,NULL,NULL,'published','[\"products\\/54-2.jpg\"]',NULL,'8S-148-A1',0,14,0,1,'in_stock',0,5,1,0,0,0.00,0,1078.33,NULL,NULL,NULL,19,19,13,829,NULL,0,'2025-09-25 01:22:12','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','1035007227746',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(130,'Product 54',NULL,NULL,NULL,'published','[\"products\\/54-3.jpg\"]',NULL,'8S-148-A1-A2',0,14,0,1,'in_stock',0,5,1,0,0,0.00,0,1078.33,NULL,NULL,NULL,19,19,13,829,NULL,0,'2025-09-25 01:22:12','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','5502072962361',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(131,'Product 54',NULL,NULL,NULL,'published','[\"products\\/54-1.jpg\"]',NULL,'8S-148-A1-A3',0,14,0,1,'in_stock',0,5,1,0,0,0.00,0,1078.33,NULL,NULL,NULL,19,19,13,829,NULL,0,'2025-09-25 01:22:12','2025-09-25 01:22:29',0,'Botble\\ACL\\Models\\User',NULL,'physical','8513305332810',NULL,0,'auto_generate',0,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,7,NULL,NULL,16,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/27-1.jpg\",\"products\\/33-1.jpg\"]'),(2,4,NULL,NULL,13,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/41-2.jpg\",\"products\\/43-3.jpg\"]'),(3,3,NULL,NULL,51,5,'Good app, good backup service and support. Good documentation.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/33-3.jpg\"]'),(4,2,NULL,NULL,41,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/23-4.jpg\"]'),(5,9,NULL,NULL,12,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/15-1.jpg\",\"products\\/25-1.jpg\",\"products\\/29-2.jpg\",\"products\\/33-1.jpg\"]'),(6,5,NULL,NULL,46,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-1.jpg\",\"products\\/10-1.jpg\"]'),(7,9,NULL,NULL,53,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/32-1.jpg\",\"products\\/35-1.jpg\",\"products\\/35-3.jpg\"]'),(8,4,NULL,NULL,2,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/13-1.jpg\"]'),(9,7,NULL,NULL,12,2,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/37-3.jpg\"]'),(10,2,NULL,NULL,8,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/7-3.jpg\",\"products\\/8-2.jpg\",\"products\\/36-3.jpg\"]'),(11,6,NULL,NULL,17,3,'Good app, good backup service and support. Good documentation.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-1.jpg\",\"products\\/26-4.jpg\",\"products\\/31-4.jpg\",\"products\\/54-1.jpg\"]'),(12,5,NULL,NULL,35,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/29-2.jpg\"]'),(13,6,NULL,NULL,32,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-1.jpg\",\"products\\/19-4.jpg\",\"products\\/32-4.jpg\",\"products\\/46-4.jpg\"]'),(14,4,NULL,NULL,42,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/22-2.jpg\",\"products\\/30-1.jpg\",\"products\\/33-2.jpg\",\"products\\/33-3.jpg\"]'),(15,2,NULL,NULL,6,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/22-1.jpg\",\"products\\/25-1.jpg\",\"products\\/34-3.jpg\",\"products\\/54-3.jpg\"]'),(16,10,NULL,NULL,12,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/22-2.jpg\",\"products\\/29-1.jpg\",\"products\\/32-1.jpg\",\"products\\/41-1.jpg\"]'),(17,8,NULL,NULL,6,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/21-3.jpg\"]'),(18,6,NULL,NULL,7,1,'Good app, good backup service and support. Good documentation.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-2.jpg\",\"products\\/20-1.jpg\"]'),(20,2,NULL,NULL,38,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-1.jpg\",\"products\\/11-3.jpg\",\"products\\/11-4.jpg\",\"products\\/13-1.jpg\"]'),(21,10,NULL,NULL,32,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-2.jpg\",\"products\\/12-4.jpg\",\"products\\/39-2.jpg\",\"products\\/49-3.jpg\"]'),(22,10,NULL,NULL,36,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/49-1.jpg\",\"products\\/49-4.jpg\"]'),(23,10,NULL,NULL,29,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/35-1.jpg\",\"products\\/38-4.jpg\",\"products\\/40-2.jpg\"]'),(24,7,NULL,NULL,13,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-2.jpg\",\"products\\/4-3.jpg\",\"products\\/5-3.jpg\"]'),(25,7,NULL,NULL,2,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/44-2.jpg\",\"products\\/50-2.jpg\",\"products\\/51-4.jpg\"]'),(26,7,NULL,NULL,51,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/15-4.jpg\",\"products\\/34-1.jpg\",\"products\\/42-1.jpg\",\"products\\/44-3.jpg\"]'),(27,2,NULL,NULL,42,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-2.jpg\",\"products\\/10-1.jpg\",\"products\\/10-3.jpg\",\"products\\/37-2.jpg\"]'),(28,8,NULL,NULL,51,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/8-2.jpg\",\"products\\/13-2.jpg\",\"products\\/14-3.jpg\",\"products\\/31-1.jpg\"]'),(29,8,NULL,NULL,13,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/29-1.jpg\",\"products\\/37-1.jpg\",\"products\\/37-2.jpg\"]'),(30,7,NULL,NULL,22,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/15-3.jpg\",\"products\\/44-3.jpg\",\"products\\/51-4.jpg\"]'),(31,5,NULL,NULL,40,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-3.jpg\",\"products\\/36-1.jpg\",\"products\\/45-2.jpg\"]'),(32,7,NULL,NULL,5,3,'Good app, good backup service and support. Good documentation.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/38-2.jpg\"]'),(33,3,NULL,NULL,46,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/24-4.jpg\",\"products\\/35-1.jpg\",\"products\\/49-3.jpg\"]'),(34,8,NULL,NULL,10,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/38-2.jpg\"]'),(35,2,NULL,NULL,25,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-2.jpg\"]'),(36,6,NULL,NULL,11,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/31-4.jpg\"]'),(37,4,NULL,NULL,17,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-1.jpg\",\"products\\/21-1.jpg\"]'),(38,6,NULL,NULL,36,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-4.jpg\",\"products\\/12-2.jpg\",\"products\\/30-3.jpg\",\"products\\/42-1.jpg\"]'),(39,3,NULL,NULL,2,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/35-1.jpg\",\"products\\/46-1.jpg\"]'),(40,10,NULL,NULL,9,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-1.jpg\",\"products\\/28-4.jpg\",\"products\\/44-2.jpg\",\"products\\/45-1.jpg\"]'),(41,9,NULL,NULL,22,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/28-2.jpg\",\"products\\/29-1.jpg\",\"products\\/46-3.jpg\"]'),(42,3,NULL,NULL,13,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/25-3.jpg\"]'),(43,1,NULL,NULL,3,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/28-3.jpg\",\"products\\/43-3.jpg\"]'),(44,2,NULL,NULL,48,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/17-3.jpg\",\"products\\/24-1.jpg\",\"products\\/35-2.jpg\"]'),(45,6,NULL,NULL,43,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/11-2.jpg\",\"products\\/11-4.jpg\",\"products\\/29-1.jpg\",\"products\\/32-2.jpg\"]'),(46,2,NULL,NULL,44,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-2.jpg\",\"products\\/51-1.jpg\"]'),(47,4,NULL,NULL,7,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-2.jpg\",\"products\\/15-2.jpg\",\"products\\/28-3.jpg\",\"products\\/43-2.jpg\"]'),(48,1,NULL,NULL,53,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-2.jpg\",\"products\\/18-3.jpg\",\"products\\/33-4.jpg\"]'),(49,9,NULL,NULL,14,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/19-4.jpg\",\"products\\/21-3.jpg\",\"products\\/43-2.jpg\"]'),(50,1,NULL,NULL,40,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/54-2.jpg\"]'),(51,3,NULL,NULL,29,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/8-4.jpg\"]'),(52,4,NULL,NULL,32,5,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/31-4.jpg\"]'),(53,6,NULL,NULL,8,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/8-2.jpg\",\"products\\/23-2.jpg\"]'),(54,3,NULL,NULL,20,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-4.jpg\",\"products\\/20-4.jpg\",\"products\\/31-1.jpg\"]'),(55,10,NULL,NULL,28,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-3.jpg\",\"products\\/15-1.jpg\"]'),(56,3,NULL,NULL,26,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-1.jpg\",\"products\\/17-3.jpg\"]'),(57,5,NULL,NULL,3,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-1.jpg\",\"products\\/16-2.jpg\",\"products\\/28-1.jpg\",\"products\\/30-2.jpg\"]'),(59,5,NULL,NULL,1,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/28-3.jpg\",\"products\\/34-4.jpg\",\"products\\/41-3.jpg\",\"products\\/50-3.jpg\"]'),(60,3,NULL,NULL,15,1,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/20-2.jpg\",\"products\\/26-1.jpg\",\"products\\/37-2.jpg\",\"products\\/42-1.jpg\"]'),(61,3,NULL,NULL,16,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/20-4.jpg\"]'),(62,10,NULL,NULL,54,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/22-1.jpg\",\"products\\/47-1.jpg\"]'),(63,2,NULL,NULL,28,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/28-1.jpg\",\"products\\/40-4.jpg\",\"products\\/42-2.jpg\"]'),(64,1,NULL,NULL,22,1,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-1.jpg\",\"products\\/31-2.jpg\",\"products\\/49-2.jpg\"]'),(65,3,NULL,NULL,44,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/13-2.jpg\",\"products\\/19-2.jpg\",\"products\\/20-2.jpg\",\"products\\/46-2.jpg\"]'),(66,10,NULL,NULL,15,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/9-1.jpg\",\"products\\/11-1.jpg\",\"products\\/12-3.jpg\"]'),(67,3,NULL,NULL,1,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/19-2.jpg\",\"products\\/31-3.jpg\",\"products\\/45-2.jpg\"]'),(68,8,NULL,NULL,48,4,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/13-1.jpg\",\"products\\/21-4.jpg\",\"products\\/40-1.jpg\"]'),(69,5,NULL,NULL,48,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-3.jpg\",\"products\\/41-4.jpg\"]'),(70,5,NULL,NULL,34,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/15-2.jpg\",\"products\\/19-3.jpg\",\"products\\/43-2.jpg\"]'),(71,10,NULL,NULL,2,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-4.jpg\",\"products\\/21-4.jpg\",\"products\\/50-4.jpg\"]'),(73,3,NULL,NULL,50,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/34-2.jpg\",\"products\\/42-2.jpg\",\"products\\/54-2.jpg\"]'),(74,9,NULL,NULL,28,2,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-2.jpg\"]'),(76,8,NULL,NULL,4,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/40-3.jpg\",\"products\\/45-4.jpg\",\"products\\/48-2.jpg\"]'),(77,9,NULL,NULL,52,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-2.jpg\",\"products\\/25-2.jpg\",\"products\\/48-3.jpg\"]'),(78,1,NULL,NULL,12,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-4.jpg\"]'),(80,4,NULL,NULL,28,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-2.jpg\",\"products\\/28-4.jpg\"]'),(81,10,NULL,NULL,8,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/11-2.jpg\",\"products\\/46-2.jpg\"]'),(82,7,NULL,NULL,46,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-4.jpg\"]'),(83,3,NULL,NULL,6,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/26-4.jpg\",\"products\\/36-2.jpg\",\"products\\/54-1.jpg\",\"products\\/54-3.jpg\"]'),(84,2,NULL,NULL,2,1,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-1.jpg\"]'),(85,2,NULL,NULL,46,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/15-1.jpg\"]'),(86,1,NULL,NULL,32,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/13-4.jpg\",\"products\\/18-3.jpg\",\"products\\/48-1.jpg\",\"products\\/54-2.jpg\"]'),(89,1,NULL,NULL,15,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/25-3.jpg\"]'),(90,8,NULL,NULL,39,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/25-3.jpg\",\"products\\/31-1.jpg\",\"products\\/41-2.jpg\",\"products\\/45-2.jpg\"]'),(91,4,NULL,NULL,33,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-1.jpg\",\"products\\/34-1.jpg\",\"products\\/50-3.jpg\",\"products\\/54-1.jpg\"]'),(92,1,NULL,NULL,11,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-4.jpg\",\"products\\/38-3.jpg\",\"products\\/40-2.jpg\"]'),(93,8,NULL,NULL,9,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/45-3.jpg\",\"products\\/47-1.jpg\"]'),(94,2,NULL,NULL,1,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/6-1.jpg\",\"products\\/11-3.jpg\",\"products\\/18-1.jpg\"]'),(95,4,NULL,NULL,53,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-2.jpg\",\"products\\/5-3.jpg\",\"products\\/20-4.jpg\",\"products\\/53-4.jpg\"]'),(96,5,NULL,NULL,33,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/19-1.jpg\",\"products\\/27-4.jpg\",\"products\\/51-1.jpg\"]'),(98,2,NULL,NULL,45,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-2.jpg\",\"products\\/39-1.jpg\",\"products\\/43-2.jpg\",\"products\\/48-2.jpg\"]'),(99,2,NULL,NULL,54,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/6-1.jpg\",\"products\\/27-4.jpg\",\"products\\/51-1.jpg\"]'),(100,1,NULL,NULL,49,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-4.jpg\",\"products\\/14-2.jpg\",\"products\\/50-4.jpg\"]'),(101,10,NULL,NULL,51,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/11-1.jpg\",\"products\\/26-4.jpg\",\"products\\/32-2.jpg\"]'),(102,1,NULL,NULL,46,1,'Good app, good backup service and support. Good documentation.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/6-2.jpg\",\"products\\/36-1.jpg\",\"products\\/39-4.jpg\",\"products\\/42-3.jpg\"]'),(103,1,NULL,NULL,35,3,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/34-3.jpg\",\"products\\/39-4.jpg\"]'),(104,6,NULL,NULL,6,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/24-4.jpg\",\"products\\/37-2.jpg\",\"products\\/48-4.jpg\"]'),(105,7,NULL,NULL,33,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/11-2.jpg\",\"products\\/18-4.jpg\",\"products\\/24-3.jpg\",\"products\\/48-2.jpg\"]'),(106,2,NULL,NULL,33,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/38-3.jpg\"]'),(107,5,NULL,NULL,2,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/31-2.jpg\",\"products\\/41-1.jpg\",\"products\\/48-4.jpg\",\"products\\/49-4.jpg\"]'),(108,7,NULL,NULL,49,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-2.jpg\",\"products\\/7-2.jpg\",\"products\\/17-2.jpg\",\"products\\/34-3.jpg\"]'),(109,9,NULL,NULL,33,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-4.jpg\",\"products\\/24-4.jpg\",\"products\\/36-1.jpg\",\"products\\/47-2.jpg\"]'),(110,2,NULL,NULL,7,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/23-3.jpg\"]'),(111,8,NULL,NULL,44,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-3.jpg\",\"products\\/14-3.jpg\",\"products\\/49-1.jpg\"]'),(112,3,NULL,NULL,11,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/6-4.jpg\",\"products\\/36-1.jpg\"]'),(113,4,NULL,NULL,29,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-1.jpg\",\"products\\/46-3.jpg\"]'),(115,1,NULL,NULL,17,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/9-2.jpg\",\"products\\/12-1.jpg\",\"products\\/46-1.jpg\"]'),(116,7,NULL,NULL,4,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/13-4.jpg\",\"products\\/41-3.jpg\",\"products\\/52-2.jpg\"]'),(117,5,NULL,NULL,17,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-2.jpg\",\"products\\/18-3.jpg\",\"products\\/28-3.jpg\",\"products\\/50-3.jpg\"]'),(118,8,NULL,NULL,49,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/20-3.jpg\",\"products\\/41-4.jpg\"]'),(119,7,NULL,NULL,17,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/27-1.jpg\"]'),(120,3,NULL,NULL,36,3,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/11-2.jpg\",\"products\\/24-1.jpg\",\"products\\/30-4.jpg\",\"products\\/36-1.jpg\"]'),(121,1,NULL,NULL,19,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-3.jpg\",\"products\\/4-2.jpg\",\"products\\/16-2.jpg\",\"products\\/17-1.jpg\"]'),(122,7,NULL,NULL,39,4,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/26-4.jpg\"]'),(123,6,NULL,NULL,27,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/29-2.jpg\"]'),(124,9,NULL,NULL,41,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/27-4.jpg\",\"products\\/31-3.jpg\",\"products\\/43-1.jpg\"]'),(125,1,NULL,NULL,13,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/22-1.jpg\"]'),(126,10,NULL,NULL,40,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/22-3.jpg\",\"products\\/29-2.jpg\",\"products\\/37-3.jpg\",\"products\\/41-3.jpg\"]'),(127,9,NULL,NULL,26,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/46-3.jpg\",\"products\\/52-1.jpg\"]'),(128,1,NULL,NULL,29,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-3.jpg\",\"products\\/13-2.jpg\",\"products\\/36-3.jpg\",\"products\\/48-1.jpg\"]'),(129,9,NULL,NULL,35,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/34-1.jpg\"]'),(130,6,NULL,NULL,5,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/11-3.jpg\",\"products\\/14-4.jpg\",\"products\\/17-5.jpg\",\"products\\/21-2.jpg\"]'),(131,1,NULL,NULL,44,1,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/7-3.jpg\"]'),(133,5,NULL,NULL,38,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-2.jpg\"]'),(134,3,NULL,NULL,10,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/26-3.jpg\",\"products\\/50-2.jpg\"]'),(135,7,NULL,NULL,38,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-2.jpg\",\"products\\/15-4.jpg\"]'),(136,7,NULL,NULL,54,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-1.jpg\"]'),(137,8,NULL,NULL,19,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-2.jpg\",\"products\\/11-1.jpg\",\"products\\/13-3.jpg\"]'),(139,4,NULL,NULL,31,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/17-1.jpg\",\"products\\/17-4.jpg\"]'),(140,7,NULL,NULL,52,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/23-1.jpg\"]'),(141,6,NULL,NULL,53,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/26-1.jpg\",\"products\\/28-4.jpg\"]'),(142,2,NULL,NULL,11,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/15-2.jpg\"]'),(144,6,NULL,NULL,16,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/39-1.jpg\"]'),(146,8,NULL,NULL,38,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/18-3.jpg\",\"products\\/27-2.jpg\",\"products\\/43-1.jpg\"]'),(147,9,NULL,NULL,4,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/27-4.jpg\",\"products\\/35-3.jpg\",\"products\\/42-1.jpg\"]'),(149,7,NULL,NULL,25,2,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-1.jpg\",\"products\\/20-4.jpg\"]'),(151,9,NULL,NULL,10,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-2.jpg\",\"products\\/23-4.jpg\",\"products\\/49-4.jpg\",\"products\\/50-4.jpg\"]'),(154,6,NULL,NULL,14,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/19-3.jpg\",\"products\\/22-3.jpg\",\"products\\/33-3.jpg\",\"products\\/41-3.jpg\"]'),(155,2,NULL,NULL,13,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-4.jpg\",\"products\\/45-2.jpg\",\"products\\/48-1.jpg\"]'),(156,8,NULL,NULL,8,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/34-3.jpg\"]'),(157,9,NULL,NULL,20,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/41-4.jpg\"]'),(158,10,NULL,NULL,26,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/45-3.jpg\"]'),(160,3,NULL,NULL,31,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/11-4.jpg\",\"products\\/19-4.jpg\",\"products\\/33-4.jpg\"]'),(161,8,NULL,NULL,53,2,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-1.jpg\",\"products\\/2-4.jpg\",\"products\\/17-4.jpg\",\"products\\/28-2.jpg\"]'),(162,6,NULL,NULL,38,5,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-4.jpg\",\"products\\/27-4.jpg\",\"products\\/38-3.jpg\"]'),(163,7,NULL,NULL,19,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-3.jpg\",\"products\\/14-4.jpg\",\"products\\/46-3.jpg\"]'),(164,3,NULL,NULL,35,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/15-2.jpg\",\"products\\/16-4.jpg\",\"products\\/27-4.jpg\",\"products\\/47-2.jpg\"]'),(166,4,NULL,NULL,4,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-2.jpg\",\"products\\/5-4.jpg\"]'),(168,4,NULL,NULL,50,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-2.jpg\",\"products\\/11-2.jpg\",\"products\\/37-1.jpg\",\"products\\/40-4.jpg\"]'),(169,6,NULL,NULL,46,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/33-1.jpg\"]'),(172,6,NULL,NULL,13,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/24-1.jpg\",\"products\\/27-3.jpg\"]'),(173,5,NULL,NULL,51,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/32-4.jpg\",\"products\\/34-1.jpg\"]'),(174,3,NULL,NULL,38,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/16-2.jpg\"]'),(175,4,NULL,NULL,41,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/54-2.jpg\"]'),(176,9,NULL,NULL,21,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/48-3.jpg\"]'),(177,9,NULL,NULL,45,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/38-4.jpg\"]'),(178,8,NULL,NULL,45,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-2.jpg\"]'),(179,8,NULL,NULL,43,5,'Good app, good backup service and support. Good documentation.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-1.jpg\",\"products\\/16-4.jpg\",\"products\\/26-3.jpg\",\"products\\/32-1.jpg\"]'),(180,7,NULL,NULL,43,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/21-1.jpg\",\"products\\/53-3.jpg\"]'),(181,4,NULL,NULL,40,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/49-1.jpg\"]'),(184,7,NULL,NULL,18,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/28-3.jpg\",\"products\\/41-3.jpg\"]'),(185,8,NULL,NULL,47,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-2.jpg\",\"products\\/40-2.jpg\",\"products\\/41-4.jpg\"]'),(186,3,NULL,NULL,49,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/7-2.jpg\",\"products\\/10-4.jpg\",\"products\\/38-1.jpg\"]'),(187,9,NULL,NULL,15,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/17-2.jpg\",\"products\\/25-3.jpg\"]'),(188,6,NULL,NULL,41,2,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-1.jpg\"]'),(189,2,NULL,NULL,21,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/9-1.jpg\",\"products\\/17-2.jpg\"]'),(192,6,NULL,NULL,1,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/24-4.jpg\"]'),(193,1,NULL,NULL,31,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/15-1.jpg\",\"products\\/33-4.jpg\",\"products\\/36-2.jpg\"]'),(194,4,NULL,NULL,23,4,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-4.jpg\",\"products\\/14-3.jpg\",\"products\\/34-3.jpg\",\"products\\/35-3.jpg\"]'),(196,3,NULL,NULL,14,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/38-1.jpg\",\"products\\/41-3.jpg\",\"products\\/46-3.jpg\",\"products\\/54-1.jpg\"]'),(200,2,NULL,NULL,24,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/16-2.jpg\",\"products\\/42-1.jpg\",\"products\\/50-3.jpg\"]'),(201,6,NULL,NULL,29,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/8-1.jpg\",\"products\\/24-3.jpg\",\"products\\/29-1.jpg\",\"products\\/30-4.jpg\"]'),(202,4,NULL,NULL,49,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-2.jpg\",\"products\\/6-2.jpg\",\"products\\/24-4.jpg\",\"products\\/28-2.jpg\"]'),(203,4,NULL,NULL,48,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/17-4.jpg\",\"products\\/36-2.jpg\",\"products\\/38-4.jpg\",\"products\\/50-4.jpg\"]'),(204,3,NULL,NULL,32,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/6-3.jpg\",\"products\\/15-2.jpg\",\"products\\/37-2.jpg\",\"products\\/42-1.jpg\"]'),(205,5,NULL,NULL,6,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/25-3.jpg\"]'),(206,8,NULL,NULL,42,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/53-2.jpg\"]'),(207,9,NULL,NULL,40,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-4.jpg\"]'),(208,8,NULL,NULL,5,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-3.jpg\",\"products\\/38-4.jpg\",\"products\\/39-4.jpg\",\"products\\/54-3.jpg\"]'),(210,2,NULL,NULL,30,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/19-2.jpg\",\"products\\/46-1.jpg\",\"products\\/49-3.jpg\"]'),(213,9,NULL,NULL,25,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-4.jpg\",\"products\\/49-2.jpg\",\"products\\/49-3.jpg\",\"products\\/53-3.jpg\"]'),(214,1,NULL,NULL,10,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-4.jpg\",\"products\\/36-2.jpg\"]'),(215,5,NULL,NULL,21,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/13-2.jpg\",\"products\\/28-1.jpg\",\"products\\/49-3.jpg\",\"products\\/51-2.jpg\"]'),(216,5,NULL,NULL,25,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/31-1.jpg\"]'),(218,8,NULL,NULL,26,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-3.jpg\",\"products\\/19-3.jpg\",\"products\\/39-2.jpg\",\"products\\/50-4.jpg\"]'),(219,3,NULL,NULL,52,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-2.jpg\",\"products\\/32-2.jpg\",\"products\\/41-2.jpg\"]'),(220,6,NULL,NULL,37,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/15-2.jpg\",\"products\\/33-1.jpg\"]'),(222,4,NULL,NULL,3,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/15-4.jpg\",\"products\\/39-2.jpg\"]'),(223,7,NULL,NULL,47,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/18-2.jpg\",\"products\\/38-1.jpg\",\"products\\/53-3.jpg\"]'),(224,1,NULL,NULL,47,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/44-1.jpg\"]'),(225,4,NULL,NULL,9,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/34-3.jpg\",\"products\\/42-1.jpg\"]'),(226,8,NULL,NULL,46,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/42-1.jpg\"]'),(227,2,NULL,NULL,37,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/27-2.jpg\",\"products\\/30-1.jpg\"]'),(230,5,NULL,NULL,16,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/24-3.jpg\",\"products\\/32-4.jpg\",\"products\\/52-1.jpg\"]'),(231,6,NULL,NULL,10,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/19-2.jpg\"]'),(232,9,NULL,NULL,39,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-3.jpg\",\"products\\/19-2.jpg\",\"products\\/46-4.jpg\",\"products\\/54-3.jpg\"]'),(233,6,NULL,NULL,44,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/33-1.jpg\",\"products\\/35-2.jpg\",\"products\\/46-1.jpg\",\"products\\/48-1.jpg\"]'),(234,1,NULL,NULL,14,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-2.jpg\",\"products\\/10-4.jpg\",\"products\\/20-1.jpg\",\"products\\/45-3.jpg\"]'),(235,9,NULL,NULL,37,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-1.jpg\",\"products\\/7-2.jpg\",\"products\\/14-2.jpg\",\"products\\/49-3.jpg\"]'),(236,4,NULL,NULL,22,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-3.jpg\",\"products\\/29-1.jpg\",\"products\\/33-3.jpg\",\"products\\/45-3.jpg\"]'),(237,8,NULL,NULL,32,2,'Good app, good backup service and support. Good documentation.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/7-3.jpg\",\"products\\/9-1.jpg\",\"products\\/10-2.jpg\",\"products\\/24-3.jpg\"]'),(238,2,NULL,NULL,36,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-4.jpg\",\"products\\/16-3.jpg\",\"products\\/35-2.jpg\",\"products\\/51-4.jpg\"]'),(239,3,NULL,NULL,24,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-2.jpg\",\"products\\/19-2.jpg\"]'),(240,1,NULL,NULL,33,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/40-3.jpg\"]'),(241,5,NULL,NULL,18,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/7-1.jpg\",\"products\\/19-4.jpg\",\"products\\/20-1.jpg\"]'),(242,10,NULL,NULL,10,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/43-1.jpg\",\"products\\/53-4.jpg\"]'),(243,5,NULL,NULL,19,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-1.jpg\",\"products\\/42-1.jpg\",\"products\\/50-3.jpg\",\"products\\/52-3.jpg\"]'),(244,8,NULL,NULL,7,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/27-4.jpg\",\"products\\/39-1.jpg\",\"products\\/43-1.jpg\",\"products\\/48-4.jpg\"]'),(246,9,NULL,NULL,47,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/40-3.jpg\"]'),(251,8,NULL,NULL,2,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/9-2.jpg\",\"products\\/32-4.jpg\",\"products\\/52-1.jpg\"]'),(252,7,NULL,NULL,20,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/23-1.jpg\"]'),(255,8,NULL,NULL,21,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/30-2.jpg\"]'),(257,4,NULL,NULL,34,5,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/20-2.jpg\",\"products\\/32-3.jpg\",\"products\\/47-3.jpg\"]'),(259,7,NULL,NULL,41,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-4.jpg\",\"products\\/14-2.jpg\"]'),(261,10,NULL,NULL,41,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/11-1.jpg\",\"products\\/39-3.jpg\"]'),(263,2,NULL,NULL,32,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-4.jpg\",\"products\\/31-2.jpg\",\"products\\/48-2.jpg\"]'),(266,8,NULL,NULL,33,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/36-3.jpg\",\"products\\/50-4.jpg\"]'),(268,5,NULL,NULL,41,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/24-2.jpg\"]'),(269,5,NULL,NULL,39,5,'Good app, good backup service and support. Good documentation.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/24-3.jpg\"]'),(270,9,NULL,NULL,17,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/30-3.jpg\",\"products\\/32-2.jpg\"]'),(271,1,NULL,NULL,18,5,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-2.jpg\",\"products\\/24-4.jpg\",\"products\\/47-3.jpg\",\"products\\/48-3.jpg\"]'),(272,5,NULL,NULL,54,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-3.jpg\",\"products\\/15-4.jpg\",\"products\\/27-4.jpg\"]'),(273,9,NULL,NULL,5,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-4.jpg\",\"products\\/27-1.jpg\",\"products\\/30-1.jpg\",\"products\\/48-4.jpg\"]'),(274,4,NULL,NULL,12,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-2.jpg\",\"products\\/32-1.jpg\",\"products\\/40-4.jpg\",\"products\\/50-3.jpg\"]'),(276,1,NULL,NULL,54,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-4.jpg\",\"products\\/51-3.jpg\",\"products\\/53-4.jpg\"]'),(278,9,NULL,NULL,50,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/39-4.jpg\",\"products\\/54-1.jpg\"]'),(280,5,NULL,NULL,50,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/8-3.jpg\",\"products\\/19-4.jpg\",\"products\\/36-1.jpg\"]'),(283,6,NULL,NULL,3,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-3.jpg\",\"products\\/12-1.jpg\",\"products\\/34-3.jpg\",\"products\\/38-1.jpg\"]'),(286,1,NULL,NULL,45,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/15-1.jpg\"]'),(287,1,NULL,NULL,23,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-3.jpg\",\"products\\/5-2.jpg\",\"products\\/7-1.jpg\",\"products\\/54-1.jpg\"]'),(291,5,NULL,NULL,53,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/7-1.jpg\",\"products\\/32-4.jpg\",\"products\\/33-1.jpg\"]'),(293,5,NULL,NULL,43,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/15-4.jpg\"]'),(297,7,NULL,NULL,32,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/42-2.jpg\"]'),(299,3,NULL,NULL,25,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-4.jpg\",\"products\\/20-1.jpg\",\"products\\/40-1.jpg\",\"products\\/53-4.jpg\"]'),(300,2,NULL,NULL,4,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-1.jpg\",\"products\\/25-2.jpg\"]'),(301,4,NULL,NULL,37,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-2.jpg\",\"products\\/19-1.jpg\",\"products\\/39-3.jpg\"]'),(303,6,NULL,NULL,30,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-4.jpg\",\"products\\/18-1.jpg\",\"products\\/34-4.jpg\",\"products\\/43-2.jpg\"]'),(304,8,NULL,NULL,29,3,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/21-1.jpg\",\"products\\/46-2.jpg\",\"products\\/52-1.jpg\"]'),(305,10,NULL,NULL,16,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-2.jpg\",\"products\\/10-4.jpg\",\"products\\/24-2.jpg\",\"products\\/27-2.jpg\"]'),(306,9,NULL,NULL,29,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-4.jpg\",\"products\\/16-2.jpg\",\"products\\/18-3.jpg\"]'),(307,9,NULL,NULL,44,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-2.jpg\",\"products\\/31-1.jpg\",\"products\\/42-1.jpg\"]'),(309,1,NULL,NULL,25,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/6-2.jpg\",\"products\\/15-2.jpg\",\"products\\/29-1.jpg\"]'),(310,5,NULL,NULL,28,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-2.jpg\",\"products\\/10-1.jpg\",\"products\\/40-3.jpg\",\"products\\/41-3.jpg\"]'),(312,3,NULL,NULL,5,1,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-2.jpg\",\"products\\/20-3.jpg\"]'),(315,5,NULL,NULL,44,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/11-4.jpg\",\"products\\/26-4.jpg\",\"products\\/52-2.jpg\"]'),(319,7,NULL,NULL,53,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/20-3.jpg\",\"products\\/28-2.jpg\",\"products\\/32-4.jpg\",\"products\\/41-1.jpg\"]'),(320,9,NULL,NULL,48,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/8-1.jpg\"]'),(324,7,NULL,NULL,40,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-2.jpg\",\"products\\/19-3.jpg\",\"products\\/20-3.jpg\"]'),(325,10,NULL,NULL,38,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-2.jpg\",\"products\\/18-3.jpg\",\"products\\/36-2.jpg\"]'),(327,8,NULL,NULL,11,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/6-2.jpg\",\"products\\/45-2.jpg\"]'),(328,4,NULL,NULL,46,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/9-1.jpg\",\"products\\/35-2.jpg\",\"products\\/51-4.jpg\"]'),(330,2,NULL,NULL,49,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-3.jpg\",\"products\\/19-2.jpg\",\"products\\/29-3.jpg\",\"products\\/44-2.jpg\"]'),(333,4,NULL,NULL,43,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/22-1.jpg\"]'),(336,3,NULL,NULL,42,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-4.jpg\",\"products\\/19-4.jpg\",\"products\\/25-2.jpg\"]'),(337,2,NULL,NULL,10,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-4.jpg\",\"products\\/13-3.jpg\",\"products\\/36-3.jpg\"]'),(338,2,NULL,NULL,9,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/22-3.jpg\",\"products\\/47-2.jpg\"]'),(339,1,NULL,NULL,8,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/13-4.jpg\"]'),(340,4,NULL,NULL,54,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-4.jpg\",\"products\\/12-2.jpg\",\"products\\/25-3.jpg\",\"products\\/44-3.jpg\"]'),(342,2,NULL,NULL,20,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-1.jpg\",\"products\\/22-4.jpg\",\"products\\/40-1.jpg\"]'),(344,6,NULL,NULL,45,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-2.jpg\",\"products\\/12-1.jpg\",\"products\\/17-2.jpg\"]'),(347,4,NULL,NULL,8,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/17-1.jpg\",\"products\\/44-3.jpg\"]'),(350,3,NULL,NULL,54,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/40-1.jpg\",\"products\\/48-2.jpg\",\"products\\/53-2.jpg\"]'),(352,5,NULL,NULL,36,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/29-3.jpg\",\"products\\/37-2.jpg\"]'),(353,2,NULL,NULL,43,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-1.jpg\",\"products\\/45-4.jpg\"]'),(355,4,NULL,NULL,44,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/29-3.jpg\"]'),(358,5,NULL,NULL,27,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/28-2.jpg\",\"products\\/33-3.jpg\",\"products\\/34-3.jpg\",\"products\\/35-3.jpg\"]'),(359,2,NULL,NULL,47,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/21-4.jpg\",\"products\\/27-1.jpg\",\"products\\/36-2.jpg\",\"products\\/52-2.jpg\"]'),(365,4,NULL,NULL,11,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/8-2.jpg\",\"products\\/27-2.jpg\"]'),(367,10,NULL,NULL,24,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-1.jpg\",\"products\\/15-3.jpg\",\"products\\/36-3.jpg\",\"products\\/54-1.jpg\"]'),(368,7,NULL,NULL,50,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/9-2.jpg\",\"products\\/24-3.jpg\",\"products\\/38-2.jpg\"]'),(370,10,NULL,NULL,50,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/8-3.jpg\",\"products\\/20-3.jpg\",\"products\\/24-4.jpg\"]'),(371,9,NULL,NULL,34,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-1.jpg\",\"products\\/6-2.jpg\",\"products\\/45-2.jpg\",\"products\\/52-1.jpg\"]'),(372,7,NULL,NULL,1,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/6-2.jpg\"]'),(375,6,NULL,NULL,39,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/17-2.jpg\",\"products\\/39-1.jpg\"]'),(377,10,NULL,NULL,3,1,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-2.jpg\",\"products\\/15-3.jpg\",\"products\\/39-4.jpg\",\"products\\/47-3.jpg\"]'),(378,1,NULL,NULL,2,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/26-3.jpg\",\"products\\/47-2.jpg\"]'),(381,9,NULL,NULL,1,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-2.jpg\",\"products\\/26-3.jpg\",\"products\\/53-1.jpg\"]'),(383,10,NULL,NULL,43,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-2.jpg\",\"products\\/43-1.jpg\"]'),(385,9,NULL,NULL,3,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-4.jpg\",\"products\\/8-2.jpg\",\"products\\/25-4.jpg\",\"products\\/53-4.jpg\"]'),(387,2,NULL,NULL,53,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/9-3.jpg\",\"products\\/17-3.jpg\"]'),(388,7,NULL,NULL,7,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/17-5.jpg\",\"products\\/37-2.jpg\"]'),(389,5,NULL,NULL,24,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/6-4.jpg\",\"products\\/14-4.jpg\",\"products\\/18-4.jpg\",\"products\\/33-1.jpg\"]'),(392,4,NULL,NULL,39,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-3.jpg\",\"products\\/6-3.jpg\",\"products\\/47-1.jpg\"]'),(393,8,NULL,NULL,22,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/18-2.jpg\",\"products\\/35-4.jpg\",\"products\\/52-1.jpg\"]'),(398,4,NULL,NULL,45,4,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/16-3.jpg\",\"products\\/26-1.jpg\",\"products\\/26-2.jpg\",\"products\\/47-2.jpg\"]'),(399,7,NULL,NULL,30,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/9-1.jpg\",\"products\\/29-1.jpg\",\"products\\/29-3.jpg\",\"products\\/41-3.jpg\"]'),(400,4,NULL,NULL,10,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-1.jpg\",\"products\\/41-2.jpg\",\"products\\/48-1.jpg\",\"products\\/53-4.jpg\"]'),(404,2,NULL,NULL,17,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/7-1.jpg\",\"products\\/15-4.jpg\",\"products\\/45-2.jpg\"]'),(405,2,NULL,NULL,39,3,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/39-2.jpg\"]'),(406,7,NULL,NULL,45,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-2.jpg\",\"products\\/6-4.jpg\",\"products\\/16-1.jpg\",\"products\\/34-1.jpg\"]'),(407,10,NULL,NULL,44,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-2.jpg\",\"products\\/47-3.jpg\",\"products\\/50-1.jpg\",\"products\\/52-2.jpg\"]'),(408,3,NULL,NULL,18,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/23-1.jpg\",\"products\\/23-2.jpg\"]'),(410,3,NULL,NULL,47,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/39-4.jpg\"]'),(411,10,NULL,NULL,19,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/7-3.jpg\"]'),(412,3,NULL,NULL,43,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/24-3.jpg\",\"products\\/35-1.jpg\",\"products\\/42-3.jpg\"]'),(413,9,NULL,NULL,16,1,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-4.jpg\",\"products\\/6-3.jpg\",\"products\\/52-1.jpg\"]'),(415,4,NULL,NULL,47,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/6-4.jpg\",\"products\\/22-2.jpg\"]'),(417,3,NULL,NULL,8,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/6-1.jpg\"]'),(420,3,NULL,NULL,28,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/13-1.jpg\",\"products\\/15-1.jpg\",\"products\\/24-1.jpg\"]'),(421,2,NULL,NULL,31,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/33-4.jpg\"]'),(422,5,NULL,NULL,22,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-1.jpg\",\"products\\/33-2.jpg\"]'),(424,6,NULL,NULL,52,5,'Good app, good backup service and support. Good documentation.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/11-4.jpg\",\"products\\/49-4.jpg\"]'),(425,10,NULL,NULL,45,2,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-3.jpg\",\"products\\/8-3.jpg\",\"products\\/14-1.jpg\",\"products\\/38-1.jpg\"]'),(429,1,NULL,NULL,38,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-2.jpg\",\"products\\/11-2.jpg\",\"products\\/24-3.jpg\",\"products\\/48-3.jpg\"]'),(434,9,NULL,NULL,31,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/21-4.jpg\",\"products\\/22-4.jpg\",\"products\\/49-3.jpg\"]'),(435,2,NULL,NULL,40,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/19-4.jpg\",\"products\\/22-1.jpg\",\"products\\/28-3.jpg\",\"products\\/31-2.jpg\"]'),(436,10,NULL,NULL,53,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/22-4.jpg\",\"products\\/41-3.jpg\",\"products\\/51-4.jpg\"]'),(440,4,NULL,NULL,19,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/17-5.jpg\",\"products\\/25-2.jpg\",\"products\\/36-2.jpg\",\"products\\/48-3.jpg\"]'),(442,4,NULL,NULL,25,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/13-2.jpg\"]'),(444,10,NULL,NULL,6,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-2.jpg\",\"products\\/8-1.jpg\",\"products\\/20-4.jpg\"]'),(449,10,NULL,NULL,11,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-3.jpg\",\"products\\/14-3.jpg\",\"products\\/50-3.jpg\"]'),(455,10,NULL,NULL,34,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/21-1.jpg\",\"products\\/27-3.jpg\"]'),(456,7,NULL,NULL,36,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/11-3.jpg\"]'),(457,7,NULL,NULL,31,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-2.jpg\",\"products\\/28-2.jpg\",\"products\\/52-1.jpg\"]'),(458,1,NULL,NULL,36,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-1.jpg\",\"products\\/33-4.jpg\",\"products\\/36-3.jpg\",\"products\\/46-1.jpg\"]'),(460,4,NULL,NULL,26,2,'Good app, good backup service and support. Good documentation.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-1.jpg\",\"products\\/11-3.jpg\",\"products\\/31-4.jpg\",\"products\\/36-1.jpg\"]'),(462,7,NULL,NULL,28,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/39-2.jpg\",\"products\\/46-2.jpg\"]'),(467,1,NULL,NULL,24,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/18-1.jpg\",\"products\\/34-3.jpg\",\"products\\/39-4.jpg\"]'),(468,5,NULL,NULL,5,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-1.jpg\",\"products\\/13-2.jpg\",\"products\\/40-1.jpg\",\"products\\/51-4.jpg\"]'),(470,9,NULL,NULL,36,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/33-2.jpg\"]'),(471,8,NULL,NULL,50,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-3.jpg\",\"products\\/16-1.jpg\",\"products\\/18-1.jpg\"]'),(475,4,NULL,NULL,27,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/25-3.jpg\"]'),(483,6,NULL,NULL,9,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/33-2.jpg\"]'),(484,3,NULL,NULL,3,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/25-4.jpg\"]'),(485,8,NULL,NULL,35,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-2.jpg\",\"products\\/18-3.jpg\",\"products\\/45-4.jpg\"]'),(486,6,NULL,NULL,21,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-4.jpg\",\"products\\/22-2.jpg\",\"products\\/27-2.jpg\"]'),(487,5,NULL,NULL,23,4,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-2.jpg\",\"products\\/6-4.jpg\",\"products\\/20-2.jpg\",\"products\\/50-4.jpg\"]'),(490,2,NULL,NULL,34,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/30-2.jpg\"]'),(494,10,NULL,NULL,27,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/7-3.jpg\",\"products\\/18-1.jpg\",\"products\\/20-2.jpg\",\"products\\/39-2.jpg\"]'),(495,2,NULL,NULL,15,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-3.jpg\",\"products\\/8-3.jpg\",\"products\\/14-4.jpg\"]'),(499,10,NULL,NULL,23,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/46-2.jpg\"]'),(505,9,NULL,NULL,13,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/33-3.jpg\"]'),(507,10,NULL,NULL,46,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-4.jpg\",\"products\\/49-1.jpg\"]'),(508,3,NULL,NULL,53,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/8-1.jpg\"]'),(509,7,NULL,NULL,6,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-3.jpg\",\"products\\/32-2.jpg\"]'),(511,9,NULL,NULL,11,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-2.jpg\",\"products\\/50-2.jpg\"]'),(513,6,NULL,NULL,48,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/19-4.jpg\",\"products\\/28-3.jpg\",\"products\\/42-2.jpg\"]'),(521,9,NULL,NULL,9,4,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/23-1.jpg\"]'),(524,7,NULL,NULL,35,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/37-1.jpg\",\"products\\/45-3.jpg\"]'),(525,9,NULL,NULL,27,2,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-4.jpg\",\"products\\/37-3.jpg\"]'),(526,8,NULL,NULL,54,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/20-4.jpg\",\"products\\/22-1.jpg\",\"products\\/30-4.jpg\"]'),(527,1,NULL,NULL,9,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-3.jpg\",\"products\\/30-3.jpg\"]'),(528,8,NULL,NULL,30,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/9-3.jpg\",\"products\\/43-1.jpg\",\"products\\/49-1.jpg\"]'),(533,4,NULL,NULL,52,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/11-2.jpg\"]'),(534,6,NULL,NULL,47,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-4.jpg\",\"products\\/25-4.jpg\",\"products\\/32-4.jpg\",\"products\\/49-4.jpg\"]'),(539,3,NULL,NULL,40,1,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-4.jpg\",\"products\\/8-3.jpg\",\"products\\/17-1.jpg\",\"products\\/26-3.jpg\"]'),(545,6,NULL,NULL,22,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/41-1.jpg\"]'),(549,6,NULL,NULL,31,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-2.jpg\",\"products\\/22-1.jpg\",\"products\\/38-4.jpg\",\"products\\/41-4.jpg\"]'),(553,5,NULL,NULL,52,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-1.jpg\",\"products\\/7-1.jpg\",\"products\\/27-2.jpg\",\"products\\/48-2.jpg\"]'),(558,10,NULL,NULL,31,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/37-2.jpg\",\"products\\/46-2.jpg\"]'),(559,10,NULL,NULL,48,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/29-1.jpg\",\"products\\/46-4.jpg\",\"products\\/48-2.jpg\"]'),(560,10,NULL,NULL,13,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-1.jpg\",\"products\\/4-4.jpg\"]'),(565,3,NULL,NULL,12,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/23-2.jpg\"]'),(567,8,NULL,NULL,12,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/6-1.jpg\",\"products\\/14-1.jpg\",\"products\\/39-4.jpg\"]'),(576,9,NULL,NULL,54,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/17-4.jpg\"]'),(581,5,NULL,NULL,9,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/21-3.jpg\",\"products\\/35-4.jpg\",\"products\\/41-2.jpg\",\"products\\/47-1.jpg\"]'),(582,10,NULL,NULL,49,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-2.jpg\",\"products\\/5-1.jpg\",\"products\\/25-4.jpg\",\"products\\/35-3.jpg\"]'),(584,6,NULL,NULL,15,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/28-4.jpg\",\"products\\/32-3.jpg\",\"products\\/39-3.jpg\"]'),(586,2,NULL,NULL,19,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-1.jpg\",\"products\\/35-3.jpg\"]'),(589,3,NULL,NULL,39,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/23-1.jpg\",\"products\\/32-4.jpg\",\"products\\/41-2.jpg\"]'),(590,5,NULL,NULL,37,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/33-4.jpg\",\"products\\/35-1.jpg\"]'),(592,1,NULL,NULL,27,4,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/19-3.jpg\",\"products\\/49-1.jpg\"]'),(597,2,NULL,NULL,29,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/42-2.jpg\"]'),(604,5,NULL,NULL,42,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/21-3.jpg\",\"products\\/30-1.jpg\"]'),(605,3,NULL,NULL,7,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-1.jpg\",\"products\\/17-1.jpg\"]'),(606,3,NULL,NULL,19,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-1.jpg\",\"products\\/15-1.jpg\",\"products\\/40-3.jpg\",\"products\\/51-1.jpg\"]'),(614,1,NULL,NULL,42,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/32-1.jpg\",\"products\\/35-2.jpg\",\"products\\/36-3.jpg\"]'),(615,7,NULL,NULL,44,2,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/17-1.jpg\",\"products\\/36-2.jpg\",\"products\\/39-3.jpg\",\"products\\/52-2.jpg\"]'),(616,9,NULL,NULL,7,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/31-4.jpg\"]'),(617,5,NULL,NULL,8,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/32-3.jpg\",\"products\\/40-2.jpg\",\"products\\/51-2.jpg\"]'),(622,3,NULL,NULL,30,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/24-1.jpg\",\"products\\/36-1.jpg\",\"products\\/37-2.jpg\"]'),(623,5,NULL,NULL,45,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/45-1.jpg\",\"products\\/49-1.jpg\",\"products\\/52-3.jpg\",\"products\\/54-3.jpg\"]'),(625,8,NULL,NULL,14,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-2.jpg\",\"products\\/8-2.jpg\",\"products\\/26-3.jpg\",\"products\\/48-2.jpg\"]'),(628,4,NULL,NULL,5,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/6-3.jpg\",\"products\\/15-2.jpg\",\"products\\/18-3.jpg\",\"products\\/46-3.jpg\"]'),(629,6,NULL,NULL,42,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-1.jpg\",\"products\\/48-2.jpg\",\"products\\/48-4.jpg\"]'),(631,4,NULL,NULL,15,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/34-3.jpg\",\"products\\/38-4.jpg\",\"products\\/44-1.jpg\"]'),(634,9,NULL,NULL,24,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/9-1.jpg\",\"products\\/19-2.jpg\",\"products\\/45-4.jpg\"]'),(638,4,NULL,NULL,18,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/26-3.jpg\",\"products\\/33-4.jpg\",\"products\\/35-3.jpg\",\"products\\/53-4.jpg\"]'),(639,9,NULL,NULL,46,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-3.jpg\",\"products\\/40-2.jpg\"]'),(640,10,NULL,NULL,20,1,'Good app, good backup service and support. Good documentation.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/47-3.jpg\"]'),(642,1,NULL,NULL,51,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/23-2.jpg\",\"products\\/27-4.jpg\",\"products\\/30-1.jpg\"]'),(643,5,NULL,NULL,10,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-2.jpg\",\"products\\/27-3.jpg\",\"products\\/30-3.jpg\",\"products\\/50-2.jpg\"]'),(644,6,NULL,NULL,25,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/40-2.jpg\",\"products\\/41-1.jpg\"]'),(645,8,NULL,NULL,1,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/54-1.jpg\"]'),(649,3,NULL,NULL,33,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/31-3.jpg\"]'),(652,1,NULL,NULL,41,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-1.jpg\",\"products\\/26-1.jpg\",\"products\\/27-1.jpg\",\"products\\/49-2.jpg\"]'),(656,10,NULL,NULL,30,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-3.jpg\",\"products\\/33-1.jpg\",\"products\\/41-3.jpg\",\"products\\/51-3.jpg\"]'),(663,1,NULL,NULL,37,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/23-3.jpg\",\"products\\/42-2.jpg\",\"products\\/46-4.jpg\"]'),(665,6,NULL,NULL,18,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/9-1.jpg\",\"products\\/31-4.jpg\",\"products\\/35-1.jpg\"]'),(669,7,NULL,NULL,14,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/22-1.jpg\",\"products\\/22-3.jpg\",\"products\\/50-2.jpg\"]'),(671,5,NULL,NULL,14,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/40-2.jpg\"]'),(674,7,NULL,NULL,15,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-3.jpg\",\"products\\/8-2.jpg\",\"products\\/10-4.jpg\",\"products\\/36-2.jpg\"]'),(683,7,NULL,NULL,9,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/29-2.jpg\",\"products\\/31-4.jpg\",\"products\\/36-2.jpg\",\"products\\/47-3.jpg\"]'),(686,4,NULL,NULL,24,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/20-3.jpg\",\"products\\/30-2.jpg\"]'),(692,8,NULL,NULL,31,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/16-2.jpg\",\"products\\/32-1.jpg\",\"products\\/38-4.jpg\"]'),(693,8,NULL,NULL,34,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/11-1.jpg\",\"products\\/15-3.jpg\",\"products\\/19-2.jpg\",\"products\\/26-1.jpg\"]'),(698,10,NULL,NULL,37,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/52-3.jpg\"]'),(701,4,NULL,NULL,21,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-1.jpg\",\"products\\/18-3.jpg\"]'),(705,7,NULL,NULL,3,4,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/6-2.jpg\",\"products\\/10-2.jpg\"]'),(711,8,NULL,NULL,27,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/15-1.jpg\",\"products\\/19-4.jpg\",\"products\\/48-1.jpg\"]'),(713,2,NULL,NULL,27,5,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/48-4.jpg\"]'),(715,5,NULL,NULL,20,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/26-3.jpg\",\"products\\/32-4.jpg\"]'),(716,1,NULL,NULL,4,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/23-2.jpg\"]'),(717,10,NULL,NULL,52,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/20-2.jpg\",\"products\\/26-3.jpg\",\"products\\/36-3.jpg\"]'),(718,8,NULL,NULL,16,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/33-2.jpg\"]'),(726,3,NULL,NULL,27,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-3.jpg\",\"products\\/31-4.jpg\",\"products\\/41-4.jpg\"]'),(728,5,NULL,NULL,13,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/25-4.jpg\",\"products\\/45-4.jpg\",\"products\\/52-1.jpg\",\"products\\/54-1.jpg\"]'),(734,10,NULL,NULL,14,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/22-1.jpg\"]'),(747,1,NULL,NULL,5,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/16-3.jpg\",\"products\\/18-4.jpg\",\"products\\/31-2.jpg\"]'),(749,9,NULL,NULL,42,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-3.jpg\",\"products\\/14-1.jpg\",\"products\\/27-1.jpg\",\"products\\/33-2.jpg\"]'),(759,6,NULL,NULL,12,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/14-1.jpg\",\"products\\/52-1.jpg\"]'),(760,5,NULL,NULL,12,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/15-4.jpg\",\"products\\/39-3.jpg\"]'),(765,3,NULL,NULL,48,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-4.jpg\",\"products\\/26-2.jpg\",\"products\\/50-3.jpg\"]'),(767,2,NULL,NULL,51,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/30-3.jpg\",\"products\\/46-3.jpg\",\"products\\/49-1.jpg\"]'),(777,4,NULL,NULL,35,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-1.jpg\",\"products\\/8-4.jpg\",\"products\\/13-3.jpg\",\"products\\/48-4.jpg\"]'),(779,6,NULL,NULL,23,2,'Clean & perfect source code','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/34-1.jpg\",\"products\\/49-1.jpg\",\"products\\/52-3.jpg\"]'),(782,1,NULL,NULL,1,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/22-3.jpg\"]'),(784,10,NULL,NULL,1,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-1.jpg\",\"products\\/28-4.jpg\"]'),(793,4,NULL,NULL,6,5,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-4.jpg\",\"products\\/39-4.jpg\"]'),(796,2,NULL,NULL,22,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-3.jpg\",\"products\\/9-3.jpg\",\"products\\/14-3.jpg\",\"products\\/36-1.jpg\"]'),(804,5,NULL,NULL,26,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/11-4.jpg\"]'),(805,5,NULL,NULL,32,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/28-1.jpg\",\"products\\/54-1.jpg\"]'),(806,7,NULL,NULL,24,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/20-2.jpg\",\"products\\/39-1.jpg\"]'),(810,9,NULL,NULL,32,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/19-2.jpg\"]'),(812,2,NULL,NULL,26,2,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/10-2.jpg\",\"products\\/25-4.jpg\",\"products\\/28-1.jpg\",\"products\\/31-2.jpg\"]'),(821,9,NULL,NULL,23,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/35-3.jpg\",\"products\\/40-3.jpg\"]'),(824,8,NULL,NULL,25,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/5-4.jpg\",\"products\\/10-4.jpg\",\"products\\/13-3.jpg\",\"products\\/22-2.jpg\"]'),(828,1,NULL,NULL,21,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/26-2.jpg\",\"products\\/27-3.jpg\"]'),(830,1,NULL,NULL,20,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/31-4.jpg\",\"products\\/34-2.jpg\",\"products\\/45-2.jpg\",\"products\\/49-3.jpg\"]'),(832,10,NULL,NULL,7,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/13-1.jpg\",\"products\\/16-3.jpg\",\"products\\/23-4.jpg\",\"products\\/27-3.jpg\"]'),(834,4,NULL,NULL,30,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/25-3.jpg\"]'),(844,10,NULL,NULL,25,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/48-4.jpg\"]'),(846,1,NULL,NULL,50,5,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/12-2.jpg\",\"products\\/30-3.jpg\",\"products\\/44-1.jpg\"]'),(847,6,NULL,NULL,28,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/28-2.jpg\",\"products\\/33-2.jpg\"]'),(856,6,NULL,NULL,26,1,'Good app, good backup service and support. Good documentation.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/1-3.jpg\",\"products\\/5-1.jpg\",\"products\\/18-2.jpg\",\"products\\/35-2.jpg\"]'),(858,8,NULL,NULL,41,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/23-3.jpg\",\"products\\/33-2.jpg\",\"products\\/40-4.jpg\"]'),(859,8,NULL,NULL,17,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/27-4.jpg\",\"products\\/32-3.jpg\"]'),(866,2,NULL,NULL,12,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/18-2.jpg\"]'),(867,1,NULL,NULL,39,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/27-1.jpg\",\"products\\/35-4.jpg\",\"products\\/40-4.jpg\"]'),(871,2,NULL,NULL,35,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-3.jpg\",\"products\\/15-2.jpg\",\"products\\/26-4.jpg\",\"products\\/47-3.jpg\"]'),(872,1,NULL,NULL,43,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-3.jpg\",\"products\\/11-2.jpg\",\"products\\/25-2.jpg\",\"products\\/48-4.jpg\"]'),(874,4,NULL,NULL,1,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/28-3.jpg\",\"products\\/42-1.jpg\"]'),(876,8,NULL,NULL,52,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/7-3.jpg\",\"products\\/10-3.jpg\",\"products\\/25-4.jpg\"]'),(881,10,NULL,NULL,42,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-4.jpg\",\"products\\/6-2.jpg\",\"products\\/51-4.jpg\",\"products\\/52-2.jpg\"]'),(884,8,NULL,NULL,15,4,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/2-3.jpg\",\"products\\/23-4.jpg\",\"products\\/27-2.jpg\",\"products\\/37-3.jpg\"]'),(895,1,NULL,NULL,30,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/35-4.jpg\"]'),(898,5,NULL,NULL,49,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/13-1.jpg\",\"products\\/24-1.jpg\",\"products\\/32-3.jpg\",\"products\\/40-2.jpg\"]'),(905,6,NULL,NULL,50,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-1.jpg\",\"products\\/32-2.jpg\",\"products\\/39-2.jpg\",\"products\\/52-3.jpg\"]'),(923,3,NULL,NULL,45,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-1.jpg\",\"products\\/10-1.jpg\"]'),(924,10,NULL,NULL,47,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/52-3.jpg\"]'),(926,6,NULL,NULL,49,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-1.jpg\",\"products\\/35-3.jpg\",\"products\\/50-3.jpg\"]'),(934,6,NULL,NULL,34,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/3-2.jpg\",\"products\\/29-2.jpg\"]'),(936,9,NULL,NULL,19,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/4-2.jpg\",\"products\\/4-4.jpg\",\"products\\/21-1.jpg\",\"products\\/49-2.jpg\"]'),(937,7,NULL,NULL,23,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/20-1.jpg\",\"products\\/40-1.jpg\"]'),(941,8,NULL,NULL,28,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/32-4.jpg\",\"products\\/33-1.jpg\",\"products\\/41-2.jpg\"]'),(946,6,NULL,NULL,2,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/38-1.jpg\"]'),(951,8,NULL,NULL,23,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/7-1.jpg\",\"products\\/23-2.jpg\"]'),(955,7,NULL,NULL,10,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/18-4.jpg\",\"products\\/25-3.jpg\",\"products\\/30-4.jpg\"]'),(962,1,NULL,NULL,52,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/20-1.jpg\",\"products\\/33-1.jpg\",\"products\\/51-1.jpg\"]'),(973,2,NULL,NULL,5,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/35-4.jpg\",\"products\\/40-1.jpg\"]'),(984,3,NULL,NULL,22,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/19-3.jpg\",\"products\\/38-1.jpg\"]'),(986,6,NULL,NULL,54,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/23-2.jpg\",\"products\\/27-3.jpg\",\"products\\/36-1.jpg\",\"products\\/40-1.jpg\"]'),(991,6,NULL,NULL,35,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/17-2.jpg\"]'),(994,6,NULL,NULL,20,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/6-2.jpg\",\"products\\/9-1.jpg\",\"products\\/23-4.jpg\",\"products\\/50-3.jpg\"]'),(997,6,NULL,NULL,24,2,'Best ecommerce CMS online store!','published','2025-09-25 01:22:16','2025-09-25 01:22:16','[\"products\\/28-2.jpg\",\"products\\/33-2.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double DEFAULT '0',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2025-09-25 01:22:16','2025-09-25 01:22:16');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2025-09-25 01:22:16','2025-09-25 01:22:16'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2025-09-25 01:22:16','2025-09-25 01:22:16'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2025-09-25 01:22:16','2025-09-25 01:22:16');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,NULL),(2,'Performance',NULL,'2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,NULL),(3,'Battery',NULL,'2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,NULL),(4,'Display',NULL,'2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups_translations`
--

DROP TABLE IF EXISTS `ec_specification_groups_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_groups_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_groups_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups_translations`
--

LOCK TABLES `ec_specification_groups_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_groups_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,NULL),(2,'Technical Specification',NULL,'2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables_translations`
--

DROP TABLE IF EXISTS `ec_specification_tables_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_tables_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_tables_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables_translations`
--

LOCK TABLES `ec_specification_tables_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_tables_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2025-09-25 01:22:23','2025-09-25 01:22:23',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10,1,'published','2025-09-25 01:22:16','2025-09-25 01:22:16'),(2,'None',0,2,'published','2025-09-25 01:22:16','2025-09-25 01:22:16'),(3,'Import Tax',15,3,'published','2025-09-25 01:22:16','2025-09-25 01:22:16');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes_translations`
--

DROP TABLE IF EXISTS `ec_taxes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_taxes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_taxes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes_translations`
--

LOCK TABLES `ec_taxes_translations` WRITE;
/*!40000 ALTER TABLE `ec_taxes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_taxes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2025-09-25 01:22:19','2025-09-25 01:22:19',NULL),(2,'PAYMENT',1,'published','2025-09-25 01:22:19','2025-09-25 01:22:19',NULL),(3,'ORDER &amp; RETURNS',2,'published','2025-09-25 01:22:19','2025-09-25 01:22:19',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2025-09-25 01:22:19','2025-09-25 01:22:19');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','ee9189e27c71c72213314411502959ac',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','6ede37820a0ab4b731d3ddc99c8d3c6e',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','3d7b79872bba8a869b5855c4067a6ab8',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','087851c52a1975d89d35d1a17011e932',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','0cddd0a91e18f06a26ffcd5fee4a5418',3,'Botble\\Menu\\Models\\Menu'),(6,'en_US','fda762294d4d1eaf7b2bf2efe7dba7e8',4,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',1613,'brands/1.jpg','[]','2025-09-25 01:21:45','2025-09-25 01:21:45',NULL,'public'),(2,0,'2','2',1,'image/jpeg',1613,'brands/2.jpg','[]','2025-09-25 01:21:45','2025-09-25 01:21:45',NULL,'public'),(3,0,'3','3',1,'image/jpeg',1613,'brands/3.jpg','[]','2025-09-25 01:21:45','2025-09-25 01:21:45',NULL,'public'),(4,0,'4','4',1,'image/jpeg',1613,'brands/4.jpg','[]','2025-09-25 01:21:45','2025-09-25 01:21:45',NULL,'public'),(5,0,'5','5',1,'image/jpeg',1613,'brands/5.jpg','[]','2025-09-25 01:21:45','2025-09-25 01:21:45',NULL,'public'),(6,0,'6','6',1,'image/jpeg',1613,'brands/6.jpg','[]','2025-09-25 01:21:45','2025-09-25 01:21:45',NULL,'public'),(7,0,'7','7',1,'image/jpeg',1613,'brands/7.jpg','[]','2025-09-25 01:21:45','2025-09-25 01:21:45',NULL,'public'),(8,0,'1','1',2,'image/jpeg',9803,'product-categories/1.jpg','[]','2025-09-25 01:21:45','2025-09-25 01:21:45',NULL,'public'),(9,0,'2','2',2,'image/jpeg',9803,'product-categories/2.jpg','[]','2025-09-25 01:21:45','2025-09-25 01:21:45',NULL,'public'),(10,0,'3','3',2,'image/jpeg',9803,'product-categories/3.jpg','[]','2025-09-25 01:21:45','2025-09-25 01:21:45',NULL,'public'),(11,0,'4','4',2,'image/jpeg',9803,'product-categories/4.jpg','[]','2025-09-25 01:21:45','2025-09-25 01:21:45',NULL,'public'),(12,0,'5','5',2,'image/jpeg',9803,'product-categories/5.jpg','[]','2025-09-25 01:21:45','2025-09-25 01:21:45',NULL,'public'),(13,0,'6','6',2,'image/jpeg',9803,'product-categories/6.jpg','[]','2025-09-25 01:21:45','2025-09-25 01:21:45',NULL,'public'),(14,0,'7','7',2,'image/jpeg',9803,'product-categories/7.jpg','[]','2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,'public'),(15,0,'8','8',2,'image/jpeg',9803,'product-categories/8.jpg','[]','2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,'public'),(16,0,'1-1','1-1',3,'image/jpeg',9803,'products/1-1.jpg','[]','2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,'public'),(17,0,'1-2','1-2',3,'image/jpeg',9803,'products/1-2.jpg','[]','2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,'public'),(18,0,'1-3','1-3',3,'image/jpeg',9803,'products/1-3.jpg','[]','2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,'public'),(19,0,'1-4','1-4',3,'image/jpeg',9803,'products/1-4.jpg','[]','2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,'public'),(20,0,'10-1','10-1',3,'image/jpeg',9803,'products/10-1.jpg','[]','2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,'public'),(21,0,'10-2','10-2',3,'image/jpeg',9803,'products/10-2.jpg','[]','2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,'public'),(22,0,'10-3','10-3',3,'image/jpeg',9803,'products/10-3.jpg','[]','2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,'public'),(23,0,'10-4','10-4',3,'image/jpeg',9803,'products/10-4.jpg','[]','2025-09-25 01:21:46','2025-09-25 01:21:46',NULL,'public'),(24,0,'11-1','11-1',3,'image/jpeg',9803,'products/11-1.jpg','[]','2025-09-25 01:21:47','2025-09-25 01:21:47',NULL,'public'),(25,0,'11-2','11-2',3,'image/jpeg',9803,'products/11-2.jpg','[]','2025-09-25 01:21:47','2025-09-25 01:21:47',NULL,'public'),(26,0,'11-3','11-3',3,'image/jpeg',9803,'products/11-3.jpg','[]','2025-09-25 01:21:47','2025-09-25 01:21:47',NULL,'public'),(27,0,'11-4','11-4',3,'image/jpeg',9803,'products/11-4.jpg','[]','2025-09-25 01:21:47','2025-09-25 01:21:47',NULL,'public'),(28,0,'12-1','12-1',3,'image/jpeg',9803,'products/12-1.jpg','[]','2025-09-25 01:21:47','2025-09-25 01:21:47',NULL,'public'),(29,0,'12-2','12-2',3,'image/jpeg',9803,'products/12-2.jpg','[]','2025-09-25 01:21:47','2025-09-25 01:21:47',NULL,'public'),(30,0,'12-3','12-3',3,'image/jpeg',9803,'products/12-3.jpg','[]','2025-09-25 01:21:47','2025-09-25 01:21:47',NULL,'public'),(31,0,'12-4','12-4',3,'image/jpeg',9803,'products/12-4.jpg','[]','2025-09-25 01:21:47','2025-09-25 01:21:47',NULL,'public'),(32,0,'13-1','13-1',3,'image/jpeg',9803,'products/13-1.jpg','[]','2025-09-25 01:21:47','2025-09-25 01:21:47',NULL,'public'),(33,0,'13-2','13-2',3,'image/jpeg',9803,'products/13-2.jpg','[]','2025-09-25 01:21:47','2025-09-25 01:21:47',NULL,'public'),(34,0,'13-3','13-3',3,'image/jpeg',9803,'products/13-3.jpg','[]','2025-09-25 01:21:47','2025-09-25 01:21:47',NULL,'public'),(35,0,'13-4','13-4',3,'image/jpeg',9803,'products/13-4.jpg','[]','2025-09-25 01:21:47','2025-09-25 01:21:47',NULL,'public'),(36,0,'14-1','14-1',3,'image/jpeg',9803,'products/14-1.jpg','[]','2025-09-25 01:21:47','2025-09-25 01:21:47',NULL,'public'),(37,0,'14-2','14-2',3,'image/jpeg',9803,'products/14-2.jpg','[]','2025-09-25 01:21:47','2025-09-25 01:21:47',NULL,'public'),(38,0,'14-3','14-3',3,'image/jpeg',9803,'products/14-3.jpg','[]','2025-09-25 01:21:48','2025-09-25 01:21:48',NULL,'public'),(39,0,'14-4','14-4',3,'image/jpeg',9803,'products/14-4.jpg','[]','2025-09-25 01:21:48','2025-09-25 01:21:48',NULL,'public'),(40,0,'15-1','15-1',3,'image/jpeg',9803,'products/15-1.jpg','[]','2025-09-25 01:21:48','2025-09-25 01:21:48',NULL,'public'),(41,0,'15-2','15-2',3,'image/jpeg',9803,'products/15-2.jpg','[]','2025-09-25 01:21:48','2025-09-25 01:21:48',NULL,'public'),(42,0,'15-3','15-3',3,'image/jpeg',9803,'products/15-3.jpg','[]','2025-09-25 01:21:48','2025-09-25 01:21:48',NULL,'public'),(43,0,'15-4','15-4',3,'image/jpeg',9803,'products/15-4.jpg','[]','2025-09-25 01:21:48','2025-09-25 01:21:48',NULL,'public'),(44,0,'16-1','16-1',3,'image/jpeg',9803,'products/16-1.jpg','[]','2025-09-25 01:21:48','2025-09-25 01:21:48',NULL,'public'),(45,0,'16-2','16-2',3,'image/jpeg',9803,'products/16-2.jpg','[]','2025-09-25 01:21:48','2025-09-25 01:21:48',NULL,'public'),(46,0,'16-3','16-3',3,'image/jpeg',9803,'products/16-3.jpg','[]','2025-09-25 01:21:48','2025-09-25 01:21:48',NULL,'public'),(47,0,'16-4','16-4',3,'image/jpeg',9803,'products/16-4.jpg','[]','2025-09-25 01:21:48','2025-09-25 01:21:48',NULL,'public'),(48,0,'17-1','17-1',3,'image/jpeg',9803,'products/17-1.jpg','[]','2025-09-25 01:21:48','2025-09-25 01:21:48',NULL,'public'),(49,0,'17-2','17-2',3,'image/jpeg',9803,'products/17-2.jpg','[]','2025-09-25 01:21:48','2025-09-25 01:21:48',NULL,'public'),(50,0,'17-3','17-3',3,'image/jpeg',9803,'products/17-3.jpg','[]','2025-09-25 01:21:49','2025-09-25 01:21:49',NULL,'public'),(51,0,'17-4','17-4',3,'image/jpeg',9803,'products/17-4.jpg','[]','2025-09-25 01:21:49','2025-09-25 01:21:49',NULL,'public'),(52,0,'17-5','17-5',3,'image/jpeg',9803,'products/17-5.jpg','[]','2025-09-25 01:21:49','2025-09-25 01:21:49',NULL,'public'),(53,0,'18-1','18-1',3,'image/jpeg',9803,'products/18-1.jpg','[]','2025-09-25 01:21:49','2025-09-25 01:21:49',NULL,'public'),(54,0,'18-2','18-2',3,'image/jpeg',9803,'products/18-2.jpg','[]','2025-09-25 01:21:49','2025-09-25 01:21:49',NULL,'public'),(55,0,'18-3','18-3',3,'image/jpeg',9803,'products/18-3.jpg','[]','2025-09-25 01:21:49','2025-09-25 01:21:49',NULL,'public'),(56,0,'18-4','18-4',3,'image/jpeg',9803,'products/18-4.jpg','[]','2025-09-25 01:21:49','2025-09-25 01:21:49',NULL,'public'),(57,0,'19-1','19-1',3,'image/jpeg',9803,'products/19-1.jpg','[]','2025-09-25 01:21:49','2025-09-25 01:21:49',NULL,'public'),(58,0,'19-2','19-2',3,'image/jpeg',9803,'products/19-2.jpg','[]','2025-09-25 01:21:49','2025-09-25 01:21:49',NULL,'public'),(59,0,'19-3','19-3',3,'image/jpeg',9803,'products/19-3.jpg','[]','2025-09-25 01:21:49','2025-09-25 01:21:49',NULL,'public'),(60,0,'19-4','19-4',3,'image/jpeg',9803,'products/19-4.jpg','[]','2025-09-25 01:21:49','2025-09-25 01:21:49',NULL,'public'),(61,0,'2-1','2-1',3,'image/jpeg',9803,'products/2-1.jpg','[]','2025-09-25 01:21:49','2025-09-25 01:21:49',NULL,'public'),(62,0,'2-2','2-2',3,'image/jpeg',9803,'products/2-2.jpg','[]','2025-09-25 01:21:50','2025-09-25 01:21:50',NULL,'public'),(63,0,'2-3','2-3',3,'image/jpeg',9803,'products/2-3.jpg','[]','2025-09-25 01:21:50','2025-09-25 01:21:50',NULL,'public'),(64,0,'2-4','2-4',3,'image/jpeg',9803,'products/2-4.jpg','[]','2025-09-25 01:21:50','2025-09-25 01:21:50',NULL,'public'),(65,0,'20-1','20-1',3,'image/jpeg',9803,'products/20-1.jpg','[]','2025-09-25 01:21:50','2025-09-25 01:21:50',NULL,'public'),(66,0,'20-2','20-2',3,'image/jpeg',9803,'products/20-2.jpg','[]','2025-09-25 01:21:50','2025-09-25 01:21:50',NULL,'public'),(67,0,'20-3','20-3',3,'image/jpeg',9803,'products/20-3.jpg','[]','2025-09-25 01:21:50','2025-09-25 01:21:50',NULL,'public'),(68,0,'20-4','20-4',3,'image/jpeg',9803,'products/20-4.jpg','[]','2025-09-25 01:21:50','2025-09-25 01:21:50',NULL,'public'),(69,0,'21-1','21-1',3,'image/jpeg',9803,'products/21-1.jpg','[]','2025-09-25 01:21:50','2025-09-25 01:21:50',NULL,'public'),(70,0,'21-2','21-2',3,'image/jpeg',9803,'products/21-2.jpg','[]','2025-09-25 01:21:50','2025-09-25 01:21:50',NULL,'public'),(71,0,'21-3','21-3',3,'image/jpeg',9803,'products/21-3.jpg','[]','2025-09-25 01:21:50','2025-09-25 01:21:50',NULL,'public'),(72,0,'21-4','21-4',3,'image/jpeg',9803,'products/21-4.jpg','[]','2025-09-25 01:21:50','2025-09-25 01:21:50',NULL,'public'),(73,0,'22-1','22-1',3,'image/jpeg',9803,'products/22-1.jpg','[]','2025-09-25 01:21:50','2025-09-25 01:21:50',NULL,'public'),(74,0,'22-2','22-2',3,'image/jpeg',9803,'products/22-2.jpg','[]','2025-09-25 01:21:51','2025-09-25 01:21:51',NULL,'public'),(75,0,'22-3','22-3',3,'image/jpeg',9803,'products/22-3.jpg','[]','2025-09-25 01:21:51','2025-09-25 01:21:51',NULL,'public'),(76,0,'22-4','22-4',3,'image/jpeg',9803,'products/22-4.jpg','[]','2025-09-25 01:21:51','2025-09-25 01:21:51',NULL,'public'),(77,0,'23-1','23-1',3,'image/jpeg',9803,'products/23-1.jpg','[]','2025-09-25 01:21:51','2025-09-25 01:21:51',NULL,'public'),(78,0,'23-2','23-2',3,'image/jpeg',9803,'products/23-2.jpg','[]','2025-09-25 01:21:51','2025-09-25 01:21:51',NULL,'public'),(79,0,'23-3','23-3',3,'image/jpeg',9803,'products/23-3.jpg','[]','2025-09-25 01:21:51','2025-09-25 01:21:51',NULL,'public'),(80,0,'23-4','23-4',3,'image/jpeg',9803,'products/23-4.jpg','[]','2025-09-25 01:21:51','2025-09-25 01:21:51',NULL,'public'),(81,0,'24-1','24-1',3,'image/jpeg',9803,'products/24-1.jpg','[]','2025-09-25 01:21:51','2025-09-25 01:21:51',NULL,'public'),(82,0,'24-2','24-2',3,'image/jpeg',9803,'products/24-2.jpg','[]','2025-09-25 01:21:51','2025-09-25 01:21:51',NULL,'public'),(83,0,'24-3','24-3',3,'image/jpeg',9803,'products/24-3.jpg','[]','2025-09-25 01:21:51','2025-09-25 01:21:51',NULL,'public'),(84,0,'24-4','24-4',3,'image/jpeg',9803,'products/24-4.jpg','[]','2025-09-25 01:21:51','2025-09-25 01:21:51',NULL,'public'),(85,0,'25-1','25-1',3,'image/jpeg',9803,'products/25-1.jpg','[]','2025-09-25 01:21:51','2025-09-25 01:21:51',NULL,'public'),(86,0,'25-2','25-2',3,'image/jpeg',9803,'products/25-2.jpg','[]','2025-09-25 01:21:51','2025-09-25 01:21:51',NULL,'public'),(87,0,'25-3','25-3',3,'image/jpeg',9803,'products/25-3.jpg','[]','2025-09-25 01:21:52','2025-09-25 01:21:52',NULL,'public'),(88,0,'25-4','25-4',3,'image/jpeg',9803,'products/25-4.jpg','[]','2025-09-25 01:21:52','2025-09-25 01:21:52',NULL,'public'),(89,0,'26-1','26-1',3,'image/jpeg',9803,'products/26-1.jpg','[]','2025-09-25 01:21:52','2025-09-25 01:21:52',NULL,'public'),(90,0,'26-2','26-2',3,'image/jpeg',9803,'products/26-2.jpg','[]','2025-09-25 01:21:52','2025-09-25 01:21:52',NULL,'public'),(91,0,'26-3','26-3',3,'image/jpeg',9803,'products/26-3.jpg','[]','2025-09-25 01:21:52','2025-09-25 01:21:52',NULL,'public'),(92,0,'26-4','26-4',3,'image/jpeg',9803,'products/26-4.jpg','[]','2025-09-25 01:21:52','2025-09-25 01:21:52',NULL,'public'),(93,0,'27-1','27-1',3,'image/jpeg',9803,'products/27-1.jpg','[]','2025-09-25 01:21:52','2025-09-25 01:21:52',NULL,'public'),(94,0,'27-2','27-2',3,'image/jpeg',9803,'products/27-2.jpg','[]','2025-09-25 01:21:52','2025-09-25 01:21:52',NULL,'public'),(95,0,'27-3','27-3',3,'image/jpeg',9803,'products/27-3.jpg','[]','2025-09-25 01:21:52','2025-09-25 01:21:52',NULL,'public'),(96,0,'27-4','27-4',3,'image/jpeg',9803,'products/27-4.jpg','[]','2025-09-25 01:21:52','2025-09-25 01:21:52',NULL,'public'),(97,0,'28-1','28-1',3,'image/jpeg',9803,'products/28-1.jpg','[]','2025-09-25 01:21:52','2025-09-25 01:21:52',NULL,'public'),(98,0,'28-2','28-2',3,'image/jpeg',9803,'products/28-2.jpg','[]','2025-09-25 01:21:52','2025-09-25 01:21:52',NULL,'public'),(99,0,'28-3','28-3',3,'image/jpeg',9803,'products/28-3.jpg','[]','2025-09-25 01:21:52','2025-09-25 01:21:52',NULL,'public'),(100,0,'28-4','28-4',3,'image/jpeg',9803,'products/28-4.jpg','[]','2025-09-25 01:21:53','2025-09-25 01:21:53',NULL,'public'),(101,0,'29-1','29-1',3,'image/jpeg',9803,'products/29-1.jpg','[]','2025-09-25 01:21:53','2025-09-25 01:21:53',NULL,'public'),(102,0,'29-2','29-2',3,'image/jpeg',9803,'products/29-2.jpg','[]','2025-09-25 01:21:53','2025-09-25 01:21:53',NULL,'public'),(103,0,'29-3','29-3',3,'image/jpeg',9803,'products/29-3.jpg','[]','2025-09-25 01:21:53','2025-09-25 01:21:53',NULL,'public'),(104,0,'3-1','3-1',3,'image/jpeg',9803,'products/3-1.jpg','[]','2025-09-25 01:21:53','2025-09-25 01:21:53',NULL,'public'),(105,0,'3-2','3-2',3,'image/jpeg',9803,'products/3-2.jpg','[]','2025-09-25 01:21:53','2025-09-25 01:21:53',NULL,'public'),(106,0,'3-3','3-3',3,'image/jpeg',9803,'products/3-3.jpg','[]','2025-09-25 01:21:53','2025-09-25 01:21:53',NULL,'public'),(107,0,'3-4','3-4',3,'image/jpeg',9803,'products/3-4.jpg','[]','2025-09-25 01:21:53','2025-09-25 01:21:53',NULL,'public'),(108,0,'30-1','30-1',3,'image/jpeg',9803,'products/30-1.jpg','[]','2025-09-25 01:21:53','2025-09-25 01:21:53',NULL,'public'),(109,0,'30-2','30-2',3,'image/jpeg',9803,'products/30-2.jpg','[]','2025-09-25 01:21:53','2025-09-25 01:21:53',NULL,'public'),(110,0,'30-3','30-3',3,'image/jpeg',9803,'products/30-3.jpg','[]','2025-09-25 01:21:53','2025-09-25 01:21:53',NULL,'public'),(111,0,'30-4','30-4',3,'image/jpeg',9803,'products/30-4.jpg','[]','2025-09-25 01:21:54','2025-09-25 01:21:54',NULL,'public'),(112,0,'31-1','31-1',3,'image/jpeg',9803,'products/31-1.jpg','[]','2025-09-25 01:21:54','2025-09-25 01:21:54',NULL,'public'),(113,0,'31-2','31-2',3,'image/jpeg',9803,'products/31-2.jpg','[]','2025-09-25 01:21:54','2025-09-25 01:21:54',NULL,'public'),(114,0,'31-3','31-3',3,'image/jpeg',9803,'products/31-3.jpg','[]','2025-09-25 01:21:54','2025-09-25 01:21:54',NULL,'public'),(115,0,'31-4','31-4',3,'image/jpeg',9803,'products/31-4.jpg','[]','2025-09-25 01:21:54','2025-09-25 01:21:54',NULL,'public'),(116,0,'32-1','32-1',3,'image/jpeg',9803,'products/32-1.jpg','[]','2025-09-25 01:21:54','2025-09-25 01:21:54',NULL,'public'),(117,0,'32-2','32-2',3,'image/jpeg',9803,'products/32-2.jpg','[]','2025-09-25 01:21:54','2025-09-25 01:21:54',NULL,'public'),(118,0,'32-3','32-3',3,'image/jpeg',9803,'products/32-3.jpg','[]','2025-09-25 01:21:54','2025-09-25 01:21:54',NULL,'public'),(119,0,'32-4','32-4',3,'image/jpeg',9803,'products/32-4.jpg','[]','2025-09-25 01:21:54','2025-09-25 01:21:54',NULL,'public'),(120,0,'33-1','33-1',3,'image/jpeg',9803,'products/33-1.jpg','[]','2025-09-25 01:21:54','2025-09-25 01:21:54',NULL,'public'),(121,0,'33-2','33-2',3,'image/jpeg',9803,'products/33-2.jpg','[]','2025-09-25 01:21:55','2025-09-25 01:21:55',NULL,'public'),(122,0,'33-3','33-3',3,'image/jpeg',9803,'products/33-3.jpg','[]','2025-09-25 01:21:55','2025-09-25 01:21:55',NULL,'public'),(123,0,'33-4','33-4',3,'image/jpeg',9803,'products/33-4.jpg','[]','2025-09-25 01:21:55','2025-09-25 01:21:55',NULL,'public'),(124,0,'34-1','34-1',3,'image/jpeg',9803,'products/34-1.jpg','[]','2025-09-25 01:21:55','2025-09-25 01:21:55',NULL,'public'),(125,0,'34-2','34-2',3,'image/jpeg',9803,'products/34-2.jpg','[]','2025-09-25 01:21:55','2025-09-25 01:21:55',NULL,'public'),(126,0,'34-3','34-3',3,'image/jpeg',9803,'products/34-3.jpg','[]','2025-09-25 01:21:55','2025-09-25 01:21:55',NULL,'public'),(127,0,'34-4','34-4',3,'image/jpeg',9803,'products/34-4.jpg','[]','2025-09-25 01:21:55','2025-09-25 01:21:55',NULL,'public'),(128,0,'35-1','35-1',3,'image/jpeg',9803,'products/35-1.jpg','[]','2025-09-25 01:21:56','2025-09-25 01:21:56',NULL,'public'),(129,0,'35-2','35-2',3,'image/jpeg',9803,'products/35-2.jpg','[]','2025-09-25 01:21:56','2025-09-25 01:21:56',NULL,'public'),(130,0,'35-3','35-3',3,'image/jpeg',9803,'products/35-3.jpg','[]','2025-09-25 01:21:56','2025-09-25 01:21:56',NULL,'public'),(131,0,'35-4','35-4',3,'image/jpeg',9803,'products/35-4.jpg','[]','2025-09-25 01:21:56','2025-09-25 01:21:56',NULL,'public'),(132,0,'36-1','36-1',3,'image/jpeg',9803,'products/36-1.jpg','[]','2025-09-25 01:21:56','2025-09-25 01:21:56',NULL,'public'),(133,0,'36-2','36-2',3,'image/jpeg',9803,'products/36-2.jpg','[]','2025-09-25 01:21:56','2025-09-25 01:21:56',NULL,'public'),(134,0,'36-3','36-3',3,'image/jpeg',9803,'products/36-3.jpg','[]','2025-09-25 01:21:56','2025-09-25 01:21:56',NULL,'public'),(135,0,'37-1','37-1',3,'image/jpeg',9803,'products/37-1.jpg','[]','2025-09-25 01:21:56','2025-09-25 01:21:56',NULL,'public'),(136,0,'37-2','37-2',3,'image/jpeg',9803,'products/37-2.jpg','[]','2025-09-25 01:21:57','2025-09-25 01:21:57',NULL,'public'),(137,0,'37-3','37-3',3,'image/jpeg',9803,'products/37-3.jpg','[]','2025-09-25 01:21:57','2025-09-25 01:21:57',NULL,'public'),(138,0,'38-1','38-1',3,'image/jpeg',9803,'products/38-1.jpg','[]','2025-09-25 01:21:57','2025-09-25 01:21:57',NULL,'public'),(139,0,'38-2','38-2',3,'image/jpeg',9803,'products/38-2.jpg','[]','2025-09-25 01:21:57','2025-09-25 01:21:57',NULL,'public'),(140,0,'38-3','38-3',3,'image/jpeg',9803,'products/38-3.jpg','[]','2025-09-25 01:21:57','2025-09-25 01:21:57',NULL,'public'),(141,0,'38-4','38-4',3,'image/jpeg',9803,'products/38-4.jpg','[]','2025-09-25 01:21:57','2025-09-25 01:21:57',NULL,'public'),(142,0,'39-1','39-1',3,'image/jpeg',9803,'products/39-1.jpg','[]','2025-09-25 01:21:57','2025-09-25 01:21:57',NULL,'public'),(143,0,'39-2','39-2',3,'image/jpeg',9803,'products/39-2.jpg','[]','2025-09-25 01:21:57','2025-09-25 01:21:57',NULL,'public'),(144,0,'39-3','39-3',3,'image/jpeg',9803,'products/39-3.jpg','[]','2025-09-25 01:21:58','2025-09-25 01:21:58',NULL,'public'),(145,0,'39-4','39-4',3,'image/jpeg',9803,'products/39-4.jpg','[]','2025-09-25 01:21:58','2025-09-25 01:21:58',NULL,'public'),(146,0,'4-1','4-1',3,'image/jpeg',9803,'products/4-1.jpg','[]','2025-09-25 01:21:58','2025-09-25 01:21:58',NULL,'public'),(147,0,'4-2','4-2',3,'image/jpeg',9803,'products/4-2.jpg','[]','2025-09-25 01:21:58','2025-09-25 01:21:58',NULL,'public'),(148,0,'4-3','4-3',3,'image/jpeg',9803,'products/4-3.jpg','[]','2025-09-25 01:21:58','2025-09-25 01:21:58',NULL,'public'),(149,0,'4-4','4-4',3,'image/jpeg',9803,'products/4-4.jpg','[]','2025-09-25 01:21:58','2025-09-25 01:21:58',NULL,'public'),(150,0,'40-1','40-1',3,'image/jpeg',9803,'products/40-1.jpg','[]','2025-09-25 01:21:58','2025-09-25 01:21:58',NULL,'public'),(151,0,'40-2','40-2',3,'image/jpeg',9803,'products/40-2.jpg','[]','2025-09-25 01:21:58','2025-09-25 01:21:58',NULL,'public'),(152,0,'40-3','40-3',3,'image/jpeg',9803,'products/40-3.jpg','[]','2025-09-25 01:21:58','2025-09-25 01:21:58',NULL,'public'),(153,0,'40-4','40-4',3,'image/jpeg',9803,'products/40-4.jpg','[]','2025-09-25 01:21:59','2025-09-25 01:21:59',NULL,'public'),(154,0,'41-1','41-1',3,'image/jpeg',9803,'products/41-1.jpg','[]','2025-09-25 01:21:59','2025-09-25 01:21:59',NULL,'public'),(155,0,'41-2','41-2',3,'image/jpeg',9803,'products/41-2.jpg','[]','2025-09-25 01:21:59','2025-09-25 01:21:59',NULL,'public'),(156,0,'41-3','41-3',3,'image/jpeg',9803,'products/41-3.jpg','[]','2025-09-25 01:21:59','2025-09-25 01:21:59',NULL,'public'),(157,0,'41-4','41-4',3,'image/jpeg',9803,'products/41-4.jpg','[]','2025-09-25 01:21:59','2025-09-25 01:21:59',NULL,'public'),(158,0,'42-1','42-1',3,'image/jpeg',9803,'products/42-1.jpg','[]','2025-09-25 01:21:59','2025-09-25 01:21:59',NULL,'public'),(159,0,'42-2','42-2',3,'image/jpeg',9803,'products/42-2.jpg','[]','2025-09-25 01:21:59','2025-09-25 01:21:59',NULL,'public'),(160,0,'42-3','42-3',3,'image/jpeg',9803,'products/42-3.jpg','[]','2025-09-25 01:21:59','2025-09-25 01:21:59',NULL,'public'),(161,0,'43-1','43-1',3,'image/jpeg',9803,'products/43-1.jpg','[]','2025-09-25 01:21:59','2025-09-25 01:21:59',NULL,'public'),(162,0,'43-2','43-2',3,'image/jpeg',9803,'products/43-2.jpg','[]','2025-09-25 01:21:59','2025-09-25 01:21:59',NULL,'public'),(163,0,'43-3','43-3',3,'image/jpeg',9803,'products/43-3.jpg','[]','2025-09-25 01:22:00','2025-09-25 01:22:00',NULL,'public'),(164,0,'44-1','44-1',3,'image/jpeg',9803,'products/44-1.jpg','[]','2025-09-25 01:22:00','2025-09-25 01:22:00',NULL,'public'),(165,0,'44-2','44-2',3,'image/jpeg',9803,'products/44-2.jpg','[]','2025-09-25 01:22:00','2025-09-25 01:22:00',NULL,'public'),(166,0,'44-3','44-3',3,'image/jpeg',9803,'products/44-3.jpg','[]','2025-09-25 01:22:00','2025-09-25 01:22:00',NULL,'public'),(167,0,'45-1','45-1',3,'image/jpeg',9803,'products/45-1.jpg','[]','2025-09-25 01:22:00','2025-09-25 01:22:00',NULL,'public'),(168,0,'45-2','45-2',3,'image/jpeg',9803,'products/45-2.jpg','[]','2025-09-25 01:22:00','2025-09-25 01:22:00',NULL,'public'),(169,0,'45-3','45-3',3,'image/jpeg',9803,'products/45-3.jpg','[]','2025-09-25 01:22:00','2025-09-25 01:22:00',NULL,'public'),(170,0,'45-4','45-4',3,'image/jpeg',9803,'products/45-4.jpg','[]','2025-09-25 01:22:01','2025-09-25 01:22:01',NULL,'public'),(171,0,'46-1','46-1',3,'image/jpeg',9803,'products/46-1.jpg','[]','2025-09-25 01:22:01','2025-09-25 01:22:01',NULL,'public'),(172,0,'46-2','46-2',3,'image/jpeg',9803,'products/46-2.jpg','[]','2025-09-25 01:22:01','2025-09-25 01:22:01',NULL,'public'),(173,0,'46-3','46-3',3,'image/jpeg',9803,'products/46-3.jpg','[]','2025-09-25 01:22:01','2025-09-25 01:22:01',NULL,'public'),(174,0,'46-4','46-4',3,'image/jpeg',9803,'products/46-4.jpg','[]','2025-09-25 01:22:02','2025-09-25 01:22:02',NULL,'public'),(175,0,'47-1','47-1',3,'image/jpeg',9803,'products/47-1.jpg','[]','2025-09-25 01:22:02','2025-09-25 01:22:02',NULL,'public'),(176,0,'47-2','47-2',3,'image/jpeg',9803,'products/47-2.jpg','[]','2025-09-25 01:22:02','2025-09-25 01:22:02',NULL,'public'),(177,0,'47-3','47-3',3,'image/jpeg',9803,'products/47-3.jpg','[]','2025-09-25 01:22:02','2025-09-25 01:22:02',NULL,'public'),(178,0,'48-1','48-1',3,'image/jpeg',9803,'products/48-1.jpg','[]','2025-09-25 01:22:02','2025-09-25 01:22:02',NULL,'public'),(179,0,'48-2','48-2',3,'image/jpeg',9803,'products/48-2.jpg','[]','2025-09-25 01:22:02','2025-09-25 01:22:02',NULL,'public'),(180,0,'48-3','48-3',3,'image/jpeg',9803,'products/48-3.jpg','[]','2025-09-25 01:22:02','2025-09-25 01:22:02',NULL,'public'),(181,0,'48-4','48-4',3,'image/jpeg',9803,'products/48-4.jpg','[]','2025-09-25 01:22:03','2025-09-25 01:22:03',NULL,'public'),(182,0,'49-1','49-1',3,'image/jpeg',9803,'products/49-1.jpg','[]','2025-09-25 01:22:03','2025-09-25 01:22:03',NULL,'public'),(183,0,'49-2','49-2',3,'image/jpeg',9803,'products/49-2.jpg','[]','2025-09-25 01:22:03','2025-09-25 01:22:03',NULL,'public'),(184,0,'49-3','49-3',3,'image/jpeg',9803,'products/49-3.jpg','[]','2025-09-25 01:22:03','2025-09-25 01:22:03',NULL,'public'),(185,0,'49-4','49-4',3,'image/jpeg',9803,'products/49-4.jpg','[]','2025-09-25 01:22:03','2025-09-25 01:22:03',NULL,'public'),(186,0,'5-1','5-1',3,'image/jpeg',9803,'products/5-1.jpg','[]','2025-09-25 01:22:03','2025-09-25 01:22:03',NULL,'public'),(187,0,'5-2','5-2',3,'image/jpeg',9803,'products/5-2.jpg','[]','2025-09-25 01:22:03','2025-09-25 01:22:03',NULL,'public'),(188,0,'5-3','5-3',3,'image/jpeg',9803,'products/5-3.jpg','[]','2025-09-25 01:22:04','2025-09-25 01:22:04',NULL,'public'),(189,0,'5-4','5-4',3,'image/jpeg',9803,'products/5-4.jpg','[]','2025-09-25 01:22:04','2025-09-25 01:22:04',NULL,'public'),(190,0,'50-1','50-1',3,'image/jpeg',9803,'products/50-1.jpg','[]','2025-09-25 01:22:04','2025-09-25 01:22:04',NULL,'public'),(191,0,'50-2','50-2',3,'image/jpeg',9803,'products/50-2.jpg','[]','2025-09-25 01:22:04','2025-09-25 01:22:04',NULL,'public'),(192,0,'50-3','50-3',3,'image/jpeg',9803,'products/50-3.jpg','[]','2025-09-25 01:22:04','2025-09-25 01:22:04',NULL,'public'),(193,0,'50-4','50-4',3,'image/jpeg',9803,'products/50-4.jpg','[]','2025-09-25 01:22:04','2025-09-25 01:22:04',NULL,'public'),(194,0,'51-1','51-1',3,'image/jpeg',9803,'products/51-1.jpg','[]','2025-09-25 01:22:04','2025-09-25 01:22:04',NULL,'public'),(195,0,'51-2','51-2',3,'image/jpeg',9803,'products/51-2.jpg','[]','2025-09-25 01:22:04','2025-09-25 01:22:04',NULL,'public'),(196,0,'51-3','51-3',3,'image/jpeg',9803,'products/51-3.jpg','[]','2025-09-25 01:22:05','2025-09-25 01:22:05',NULL,'public'),(197,0,'51-4','51-4',3,'image/jpeg',9803,'products/51-4.jpg','[]','2025-09-25 01:22:05','2025-09-25 01:22:05',NULL,'public'),(198,0,'52-1','52-1',3,'image/jpeg',9803,'products/52-1.jpg','[]','2025-09-25 01:22:05','2025-09-25 01:22:05',NULL,'public'),(199,0,'52-2','52-2',3,'image/jpeg',9803,'products/52-2.jpg','[]','2025-09-25 01:22:05','2025-09-25 01:22:05',NULL,'public'),(200,0,'52-3','52-3',3,'image/jpeg',9803,'products/52-3.jpg','[]','2025-09-25 01:22:05','2025-09-25 01:22:05',NULL,'public'),(201,0,'53-1','53-1',3,'image/jpeg',9803,'products/53-1.jpg','[]','2025-09-25 01:22:05','2025-09-25 01:22:05',NULL,'public'),(202,0,'53-2','53-2',3,'image/jpeg',9803,'products/53-2.jpg','[]','2025-09-25 01:22:05','2025-09-25 01:22:05',NULL,'public'),(203,0,'53-3','53-3',3,'image/jpeg',9803,'products/53-3.jpg','[]','2025-09-25 01:22:05','2025-09-25 01:22:05',NULL,'public'),(204,0,'53-4','53-4',3,'image/jpeg',9803,'products/53-4.jpg','[]','2025-09-25 01:22:05','2025-09-25 01:22:05',NULL,'public'),(205,0,'54-1','54-1',3,'image/jpeg',9803,'products/54-1.jpg','[]','2025-09-25 01:22:05','2025-09-25 01:22:05',NULL,'public'),(206,0,'54-2','54-2',3,'image/jpeg',9803,'products/54-2.jpg','[]','2025-09-25 01:22:05','2025-09-25 01:22:05',NULL,'public'),(207,0,'54-3','54-3',3,'image/jpeg',9803,'products/54-3.jpg','[]','2025-09-25 01:22:06','2025-09-25 01:22:06',NULL,'public'),(208,0,'6-1','6-1',3,'image/jpeg',9803,'products/6-1.jpg','[]','2025-09-25 01:22:06','2025-09-25 01:22:06',NULL,'public'),(209,0,'6-2','6-2',3,'image/jpeg',9803,'products/6-2.jpg','[]','2025-09-25 01:22:06','2025-09-25 01:22:06',NULL,'public'),(210,0,'6-3','6-3',3,'image/jpeg',9803,'products/6-3.jpg','[]','2025-09-25 01:22:06','2025-09-25 01:22:06',NULL,'public'),(211,0,'6-4','6-4',3,'image/jpeg',9803,'products/6-4.jpg','[]','2025-09-25 01:22:06','2025-09-25 01:22:06',NULL,'public'),(212,0,'7-1','7-1',3,'image/jpeg',9803,'products/7-1.jpg','[]','2025-09-25 01:22:06','2025-09-25 01:22:06',NULL,'public'),(213,0,'7-2','7-2',3,'image/jpeg',9803,'products/7-2.jpg','[]','2025-09-25 01:22:06','2025-09-25 01:22:06',NULL,'public'),(214,0,'7-3','7-3',3,'image/jpeg',9803,'products/7-3.jpg','[]','2025-09-25 01:22:06','2025-09-25 01:22:06',NULL,'public'),(215,0,'8-1','8-1',3,'image/jpeg',9803,'products/8-1.jpg','[]','2025-09-25 01:22:06','2025-09-25 01:22:06',NULL,'public'),(216,0,'8-2','8-2',3,'image/jpeg',9803,'products/8-2.jpg','[]','2025-09-25 01:22:06','2025-09-25 01:22:06',NULL,'public'),(217,0,'8-3','8-3',3,'image/jpeg',9803,'products/8-3.jpg','[]','2025-09-25 01:22:06','2025-09-25 01:22:06',NULL,'public'),(218,0,'8-4','8-4',3,'image/jpeg',9803,'products/8-4.jpg','[]','2025-09-25 01:22:06','2025-09-25 01:22:06',NULL,'public'),(219,0,'9-1','9-1',3,'image/jpeg',9803,'products/9-1.jpg','[]','2025-09-25 01:22:07','2025-09-25 01:22:07',NULL,'public'),(220,0,'9-2','9-2',3,'image/jpeg',9803,'products/9-2.jpg','[]','2025-09-25 01:22:07','2025-09-25 01:22:07',NULL,'public'),(221,0,'9-3','9-3',3,'image/jpeg',9803,'products/9-3.jpg','[]','2025-09-25 01:22:07','2025-09-25 01:22:07',NULL,'public'),(222,0,'1','1',4,'image/jpeg',9803,'customers/1.jpg','[]','2025-09-25 01:22:12','2025-09-25 01:22:12',NULL,'public'),(223,0,'10','10',4,'image/jpeg',9803,'customers/10.jpg','[]','2025-09-25 01:22:12','2025-09-25 01:22:12',NULL,'public'),(224,0,'2','2',4,'image/jpeg',9803,'customers/2.jpg','[]','2025-09-25 01:22:12','2025-09-25 01:22:12',NULL,'public'),(225,0,'3','3',4,'image/jpeg',9803,'customers/3.jpg','[]','2025-09-25 01:22:12','2025-09-25 01:22:12',NULL,'public'),(226,0,'4','4',4,'image/jpeg',9803,'customers/4.jpg','[]','2025-09-25 01:22:12','2025-09-25 01:22:12',NULL,'public'),(227,0,'5','5',4,'image/jpeg',9803,'customers/5.jpg','[]','2025-09-25 01:22:13','2025-09-25 01:22:13',NULL,'public'),(228,0,'6','6',4,'image/jpeg',9803,'customers/6.jpg','[]','2025-09-25 01:22:13','2025-09-25 01:22:13',NULL,'public'),(229,0,'7','7',4,'image/jpeg',9803,'customers/7.jpg','[]','2025-09-25 01:22:13','2025-09-25 01:22:13',NULL,'public'),(230,0,'8','8',4,'image/jpeg',9803,'customers/8.jpg','[]','2025-09-25 01:22:13','2025-09-25 01:22:13',NULL,'public'),(231,0,'9','9',4,'image/jpeg',9803,'customers/9.jpg','[]','2025-09-25 01:22:13','2025-09-25 01:22:13',NULL,'public'),(232,0,'1','1',5,'image/jpeg',9803,'news/1.jpg','[]','2025-09-25 01:22:17','2025-09-25 01:22:17',NULL,'public'),(233,0,'10','10',5,'image/jpeg',9803,'news/10.jpg','[]','2025-09-25 01:22:17','2025-09-25 01:22:17',NULL,'public'),(234,0,'11','11',5,'image/jpeg',9803,'news/11.jpg','[]','2025-09-25 01:22:17','2025-09-25 01:22:17',NULL,'public'),(235,0,'2','2',5,'image/jpeg',9803,'news/2.jpg','[]','2025-09-25 01:22:17','2025-09-25 01:22:17',NULL,'public'),(236,0,'3','3',5,'image/jpeg',9803,'news/3.jpg','[]','2025-09-25 01:22:17','2025-09-25 01:22:17',NULL,'public'),(237,0,'4','4',5,'image/jpeg',9803,'news/4.jpg','[]','2025-09-25 01:22:17','2025-09-25 01:22:17',NULL,'public'),(238,0,'5','5',5,'image/jpeg',9803,'news/5.jpg','[]','2025-09-25 01:22:17','2025-09-25 01:22:17',NULL,'public'),(239,0,'6','6',5,'image/jpeg',9803,'news/6.jpg','[]','2025-09-25 01:22:17','2025-09-25 01:22:17',NULL,'public'),(240,0,'7','7',5,'image/jpeg',9803,'news/7.jpg','[]','2025-09-25 01:22:17','2025-09-25 01:22:17',NULL,'public'),(241,0,'8','8',5,'image/jpeg',9803,'news/8.jpg','[]','2025-09-25 01:22:17','2025-09-25 01:22:17',NULL,'public'),(242,0,'9','9',5,'image/jpeg',9803,'news/9.jpg','[]','2025-09-25 01:22:17','2025-09-25 01:22:17',NULL,'public'),(243,0,'1-lg','1-lg',6,'image/jpeg',8828,'sliders/1-lg.jpg','[]','2025-09-25 01:22:18','2025-09-25 01:22:18',NULL,'public'),(244,0,'1-md','1-md',6,'image/jpeg',8828,'sliders/1-md.jpg','[]','2025-09-25 01:22:18','2025-09-25 01:22:18',NULL,'public'),(245,0,'1-sm','1-sm',6,'image/jpeg',8828,'sliders/1-sm.jpg','[]','2025-09-25 01:22:18','2025-09-25 01:22:18',NULL,'public'),(246,0,'2-lg','2-lg',6,'image/jpeg',8828,'sliders/2-lg.jpg','[]','2025-09-25 01:22:18','2025-09-25 01:22:18',NULL,'public'),(247,0,'2-md','2-md',6,'image/jpeg',8828,'sliders/2-md.jpg','[]','2025-09-25 01:22:18','2025-09-25 01:22:18',NULL,'public'),(248,0,'2-sm','2-sm',6,'image/jpeg',8828,'sliders/2-sm.jpg','[]','2025-09-25 01:22:18','2025-09-25 01:22:18',NULL,'public'),(249,0,'3-lg','3-lg',6,'image/jpeg',8828,'sliders/3-lg.jpg','[]','2025-09-25 01:22:18','2025-09-25 01:22:18',NULL,'public'),(250,0,'3-md','3-md',6,'image/jpeg',8828,'sliders/3-md.jpg','[]','2025-09-25 01:22:18','2025-09-25 01:22:18',NULL,'public'),(251,0,'3-sm','3-sm',6,'image/jpeg',8828,'sliders/3-sm.jpg','[]','2025-09-25 01:22:18','2025-09-25 01:22:18',NULL,'public'),(252,0,'1','1',7,'image/jpeg',3613,'promotion/1.jpg','[]','2025-09-25 01:22:19','2025-09-25 01:22:19',NULL,'public'),(253,0,'2','2',7,'image/jpeg',3613,'promotion/2.jpg','[]','2025-09-25 01:22:19','2025-09-25 01:22:19',NULL,'public'),(254,0,'3','3',7,'image/jpeg',5391,'promotion/3.jpg','[]','2025-09-25 01:22:19','2025-09-25 01:22:19',NULL,'public'),(255,0,'4','4',7,'image/jpeg',5391,'promotion/4.jpg','[]','2025-09-25 01:22:19','2025-09-25 01:22:19',NULL,'public'),(256,0,'5','5',7,'image/jpeg',5391,'promotion/5.jpg','[]','2025-09-25 01:22:19','2025-09-25 01:22:19',NULL,'public'),(257,0,'6','6',7,'image/jpeg',5391,'promotion/6.jpg','[]','2025-09-25 01:22:19','2025-09-25 01:22:19',NULL,'public'),(258,0,'7','7',7,'image/jpeg',5391,'promotion/7.jpg','[]','2025-09-25 01:22:19','2025-09-25 01:22:19',NULL,'public'),(259,0,'8','8',7,'image/jpeg',5391,'promotion/8.jpg','[]','2025-09-25 01:22:19','2025-09-25 01:22:19',NULL,'public'),(260,0,'9','9',7,'image/jpeg',5391,'promotion/9.jpg','[]','2025-09-25 01:22:19','2025-09-25 01:22:19',NULL,'public'),(261,0,'cod','cod',8,'image/png',12121,'payments/cod.png','[]','2025-09-25 01:22:19','2025-09-25 01:22:19',NULL,'public'),(262,0,'bank-transfer','bank-transfer',8,'image/png',29089,'payments/bank-transfer.png','[]','2025-09-25 01:22:19','2025-09-25 01:22:19',NULL,'public'),(263,0,'stripe','stripe',8,'image/webp',7516,'payments/stripe.webp','[]','2025-09-25 01:22:19','2025-09-25 01:22:19',NULL,'public'),(264,0,'paypal','paypal',8,'image/png',3001,'payments/paypal.png','[]','2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,'public'),(265,0,'mollie','mollie',8,'image/png',8968,'payments/mollie.png','[]','2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,'public'),(266,0,'paystack','paystack',8,'image/png',31015,'payments/paystack.png','[]','2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,'public'),(267,0,'razorpay','razorpay',8,'image/png',8489,'payments/razorpay.png','[]','2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,'public'),(268,0,'sslcommerz','sslcommerz',8,'image/png',3482,'payments/sslcommerz.png','[]','2025-09-25 01:22:20','2025-09-25 01:22:20',NULL,'public'),(269,0,'app','app',9,'image/png',8667,'general/app.png','[]','2025-09-25 01:22:23','2025-09-25 01:22:23',NULL,'public'),(270,0,'coming-soon','coming-soon',9,'image/jpeg',22253,'general/coming-soon.jpg','[]','2025-09-25 01:22:23','2025-09-25 01:22:23',NULL,'public'),(271,0,'favicon','favicon',9,'image/png',5047,'general/favicon.png','[]','2025-09-25 01:22:23','2025-09-25 01:22:23',NULL,'public'),(272,0,'logo-dark','logo-dark',9,'image/png',1562,'general/logo-dark.png','[]','2025-09-25 01:22:23','2025-09-25 01:22:23',NULL,'public'),(273,0,'logo-light','logo-light',9,'image/png',1529,'general/logo-light.png','[]','2025-09-25 01:22:23','2025-09-25 01:22:23',NULL,'public'),(274,0,'logo','logo',9,'image/png',1441,'general/logo.png','[]','2025-09-25 01:22:23','2025-09-25 01:22:23',NULL,'public'),(275,0,'newsletter','newsletter',9,'image/jpeg',9778,'general/newsletter.jpg','[]','2025-09-25 01:22:23','2025-09-25 01:22:23',NULL,'public'),(276,0,'payment-method-1','payment-method-1',9,'image/jpeg',1128,'general/payment-method-1.jpg','[]','2025-09-25 01:22:23','2025-09-25 01:22:23',NULL,'public'),(277,0,'payment-method-2','payment-method-2',9,'image/jpeg',1184,'general/payment-method-2.jpg','[]','2025-09-25 01:22:23','2025-09-25 01:22:23',NULL,'public'),(278,0,'payment-method-3','payment-method-3',9,'image/jpeg',1109,'general/payment-method-3.jpg','[]','2025-09-25 01:22:23','2025-09-25 01:22:23',NULL,'public'),(279,0,'payment-method-4','payment-method-4',9,'image/jpeg',944,'general/payment-method-4.jpg','[]','2025-09-25 01:22:23','2025-09-25 01:22:23',NULL,'public'),(280,0,'payment-method-5','payment-method-5',9,'image/jpeg',964,'general/payment-method-5.jpg','[]','2025-09-25 01:22:23','2025-09-25 01:22:23',NULL,'public'),(281,0,'placeholder','placeholder',9,'image/png',12344,'general/placeholder.png','[]','2025-09-25 01:22:23','2025-09-25 01:22:23',NULL,'public'),(282,0,'1','1',10,'image/png',9022,'stores/1.png','[]','2025-09-25 01:22:24','2025-09-25 01:22:24',NULL,'public'),(283,0,'10','10',10,'image/png',4384,'stores/10.png','[]','2025-09-25 01:22:24','2025-09-25 01:22:24',NULL,'public'),(284,0,'11','11',10,'image/png',4706,'stores/11.png','[]','2025-09-25 01:22:24','2025-09-25 01:22:24',NULL,'public'),(285,0,'12','12',10,'image/png',5075,'stores/12.png','[]','2025-09-25 01:22:24','2025-09-25 01:22:24',NULL,'public'),(286,0,'13','13',10,'image/png',3700,'stores/13.png','[]','2025-09-25 01:22:24','2025-09-25 01:22:24',NULL,'public'),(287,0,'14','14',10,'image/png',4239,'stores/14.png','[]','2025-09-25 01:22:24','2025-09-25 01:22:24',NULL,'public'),(288,0,'15','15',10,'image/png',5304,'stores/15.png','[]','2025-09-25 01:22:24','2025-09-25 01:22:24',NULL,'public'),(289,0,'16','16',10,'image/png',4796,'stores/16.png','[]','2025-09-25 01:22:24','2025-09-25 01:22:24',NULL,'public'),(290,0,'17','17',10,'image/png',4919,'stores/17.png','[]','2025-09-25 01:22:24','2025-09-25 01:22:24',NULL,'public'),(291,0,'2','2',10,'image/png',8598,'stores/2.png','[]','2025-09-25 01:22:24','2025-09-25 01:22:24',NULL,'public'),(292,0,'3','3',10,'image/png',7888,'stores/3.png','[]','2025-09-25 01:22:24','2025-09-25 01:22:24',NULL,'public'),(293,0,'4','4',10,'image/png',8393,'stores/4.png','[]','2025-09-25 01:22:24','2025-09-25 01:22:24',NULL,'public'),(294,0,'5','5',10,'image/png',10159,'stores/5.png','[]','2025-09-25 01:22:24','2025-09-25 01:22:24',NULL,'public'),(295,0,'6','6',10,'image/png',10312,'stores/6.png','[]','2025-09-25 01:22:25','2025-09-25 01:22:25',NULL,'public'),(296,0,'7','7',10,'image/png',3764,'stores/7.png','[]','2025-09-25 01:22:25','2025-09-25 01:22:25',NULL,'public'),(297,0,'8','8',10,'image/png',4237,'stores/8.png','[]','2025-09-25 01:22:25','2025-09-25 01:22:25',NULL,'public'),(298,0,'9','9',10,'image/png',4096,'stores/9.png','[]','2025-09-25 01:22:25','2025-09-25 01:22:25',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2025-09-25 01:21:45','2025-09-25 01:21:45',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2025-09-25 01:21:45','2025-09-25 01:21:45',NULL),(3,0,'products',NULL,'products',0,'2025-09-25 01:21:46','2025-09-25 01:21:46',NULL),(4,0,'customers',NULL,'customers',0,'2025-09-25 01:22:12','2025-09-25 01:22:12',NULL),(5,0,'news',NULL,'news',0,'2025-09-25 01:22:17','2025-09-25 01:22:17',NULL),(6,0,'sliders',NULL,'sliders',0,'2025-09-25 01:22:18','2025-09-25 01:22:18',NULL),(7,0,'promotion',NULL,'promotion',0,'2025-09-25 01:22:19','2025-09-25 01:22:19',NULL),(8,0,'payments',NULL,'payments',0,'2025-09-25 01:22:19','2025-09-25 01:22:19',NULL),(9,0,'general',NULL,'general',0,'2025-09-25 01:22:23','2025-09-25 01:22:23',NULL),(10,0,'stores',NULL,'stores',0,'2025-09-25 01:22:24','2025-09-25 01:22:24',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-09-25 01:22:23','2025-09-25 01:22:23');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(2,1,0,NULL,NULL,'#',NULL,1,'Pages',NULL,'_self',1,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,1,'Terms Of Use',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,2,'Terms & Conditions',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,3,'Refund Policy',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,4,'Coming soon',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(8,1,0,NULL,NULL,'/products',NULL,2,'Products',NULL,'_self',1,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Products Of Category',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(11,1,8,NULL,NULL,'/products/headphone-ultra-bass',NULL,2,'Product Single',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(12,1,0,NULL,NULL,'/stores',NULL,3,'Stores',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(13,1,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Blog',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(14,1,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,5,'FAQs',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(15,1,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,6,'Contact',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(16,2,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Terms Of Use',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(17,2,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Terms & Conditions',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(18,2,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Refund Policy',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(19,2,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'FAQs',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(20,2,0,NULL,NULL,'/nothing',NULL,4,'404 Page',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(21,3,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About us',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(22,3,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Affiliate',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(23,3,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Career',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(24,3,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Contact us',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(25,4,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Our blog',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(26,4,0,NULL,NULL,'/cart',NULL,1,'Cart',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(27,4,0,NULL,NULL,'/customer/overview',NULL,2,'My account',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23'),(28,4,0,NULL,NULL,'/products',NULL,3,'Shop',NULL,'_self',0,'2025-09-25 01:22:23','2025-09-25 01:22:23');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-09-25 01:22:23','2025-09-25 01:22:23'),(2,'Quick links','quick-links','published','2025-09-25 01:22:23','2025-09-25 01:22:23'),(3,'Company','company','published','2025-09-25 01:22:23','2025-09-25 01:22:23'),(4,'Business','business','published','2025-09-25 01:22:23','2025-09-25 01:22:23');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(2,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(3,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(4,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(5,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(6,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(7,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(8,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(9,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(10,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(11,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(12,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(13,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(14,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:07','2025-09-25 01:22:07'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',25,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',26,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',27,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',28,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',29,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',30,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',31,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',32,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',33,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',34,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',35,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',36,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',37,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',38,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(39,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',39,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',40,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',41,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(42,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',42,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(43,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',43,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(44,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',44,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(45,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',45,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(46,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',46,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(47,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',47,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:08','2025-09-25 01:22:08'),(48,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',48,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:09','2025-09-25 01:22:09'),(49,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',49,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:09','2025-09-25 01:22:09'),(50,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',50,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:09','2025-09-25 01:22:09'),(51,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',51,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:09','2025-09-25 01:22:09'),(52,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',52,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:09','2025-09-25 01:22:09'),(53,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',53,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:09','2025-09-25 01:22:09'),(54,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',54,'Botble\\Ecommerce\\Models\\Product','2025-09-25 01:22:09','2025-09-25 01:22:09'),(55,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-09-25 01:22:19','2025-09-25 01:22:19'),(56,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-09-25 01:22:19','2025-09-25 01:22:19'),(57,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-09-25 01:22:19','2025-09-25 01:22:19'),(58,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-09-25 01:22:19','2025-09-25 01:22:19'),(59,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-09-25 01:22:19','2025-09-25 01:22:19'),(60,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-09-25 01:22:19','2025-09-25 01:22:19');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2021_08_02_084121_fix_old_shortcode',1),(18,'2022_04_20_100851_add_index_to_media_table',1),(19,'2022_04_20_101046_add_index_to_menu_table',1),(20,'2022_07_10_034813_move_lang_folder_to_root',1),(21,'2022_08_04_051940_add_missing_column_expires_at',1),(22,'2022_09_01_000001_create_admin_notifications_tables',1),(23,'2022_10_14_024629_drop_column_is_featured',1),(24,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(25,'2022_12_02_093615_update_slug_index_columns',1),(26,'2023_01_30_024431_add_alt_to_media_table',1),(27,'2023_02_16_042611_drop_table_password_resets',1),(28,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(29,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(30,'2023_08_21_090810_make_page_content_nullable',1),(31,'2023_09_14_021936_update_index_for_slugs_table',1),(32,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(33,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(34,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(35,'2024_05_04_030654_improve_social_links',1),(36,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(37,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(38,'2024_07_12_100000_change_random_hash_for_media',1),(39,'2024_09_30_024515_create_sessions_table',1),(40,'2024_12_19_000001_create_device_tokens_table',1),(41,'2024_12_19_000002_create_push_notifications_table',1),(42,'2024_12_19_000003_create_push_notification_recipients_table',1),(43,'2024_12_30_000001_create_user_settings_table',1),(44,'2025_07_06_030754_add_phone_to_users_table',1),(45,'2025_07_31_add_performance_indexes_to_slugs_table',1),(46,'2020_11_18_150916_ads_create_ads_table',2),(47,'2021_12_02_035301_add_ads_translations_table',2),(48,'2023_04_17_062645_add_open_in_new_tab',2),(49,'2023_11_07_023805_add_tablet_mobile_image',2),(50,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(51,'2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table',2),(52,'2024_04_27_100730_improve_analytics_setting',3),(53,'2015_06_29_025744_create_audit_history',4),(54,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(55,'2025_05_05_000001_add_user_type_to_audit_histories_table',4),(56,'2015_06_18_033822_create_blog_table',5),(57,'2021_02_16_092633_remove_default_value_for_author_type',5),(58,'2021_12_03_030600_create_blog_translations',5),(59,'2022_04_19_113923_add_index_to_table_posts',5),(60,'2023_08_29_074620_make_column_author_id_nullable',5),(61,'2024_07_30_091615_fix_order_column_in_categories_table',5),(62,'2025_01_06_033807_add_default_value_for_categories_author_type',5),(63,'2016_06_17_091537_create_contacts_table',6),(64,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(65,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(66,'2024_03_25_000001_update_captcha_settings_for_contact',6),(67,'2024_04_19_063914_create_custom_fields_table',6),(68,'2020_03_05_041139_create_ecommerce_tables',7),(69,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(70,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(71,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(72,'2021_02_18_073505_update_table_ec_reviews',7),(73,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(74,'2021_03_10_025153_change_column_tax_amount',7),(75,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(76,'2021_04_28_074008_ecommerce_create_product_label_table',7),(77,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(78,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(79,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(80,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(81,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(82,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(83,'2021_11_23_071403_correct_languages_for_product_variations',7),(84,'2021_11_28_031808_add_product_tags_translations',7),(85,'2021_12_01_031123_add_featured_image_to_ec_products',7),(86,'2022_01_01_033107_update_table_ec_shipments',7),(87,'2022_02_16_042457_improve_product_attribute_sets',7),(88,'2022_03_22_075758_correct_product_name',7),(89,'2022_04_19_113334_add_index_to_ec_products',7),(90,'2022_04_28_144405_remove_unused_table',7),(91,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(92,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(93,'2022_06_16_095633_add_index_to_some_tables',7),(94,'2022_06_30_035148_create_order_referrals_table',7),(95,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(96,'2022_08_14_032836_create_ec_order_returns_table',7),(97,'2022_08_14_033554_create_ec_order_return_items_table',7),(98,'2022_08_15_040324_add_billing_address',7),(99,'2022_08_30_091114_support_digital_products_table',7),(100,'2022_09_13_095744_create_options_table',7),(101,'2022_09_13_104347_create_option_value_table',7),(102,'2022_10_05_163518_alter_table_ec_order_product',7),(103,'2022_10_12_041517_create_invoices_table',7),(104,'2022_10_12_142226_update_orders_table',7),(105,'2022_10_13_024916_update_table_order_returns',7),(106,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(107,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(108,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(109,'2022_11_19_041643_add_ec_tax_product_table',7),(110,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(111,'2022_12_17_041532_fix_address_in_order_invoice',7),(112,'2022_12_26_070329_create_ec_product_views_table',7),(113,'2023_01_04_033051_fix_product_categories',7),(114,'2023_01_09_050400_add_ec_global_options_translations_table',7),(115,'2023_01_10_093754_add_missing_option_value_id',7),(116,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(117,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(118,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(119,'2023_02_27_095752_remove_duplicate_reviews',7),(120,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(121,'2023_04_21_082427_create_ec_product_categorizables_table',7),(122,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(123,'2023_05_17_025812_fix_invoice_issue',7),(124,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(125,'2023_05_27_144611_fix_exchange_rate_setting',7),(126,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(127,'2023_06_30_042512_create_ec_order_tax_information_table',7),(128,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(129,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(130,'2023_08_15_064505_create_ec_tax_rules_table',7),(131,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(132,'2023_08_22_094114_drop_unique_for_barcode',7),(133,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(134,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(135,'2023_09_19_024955_create_discount_product_categories_table',7),(136,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(137,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(138,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(139,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(140,'2023_12_25_040604_ec_create_review_replies_table',7),(141,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(142,'2024_01_16_070706_fix_translation_tables',7),(143,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(144,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(145,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(146,'2024_03_29_042242_migrate_old_captcha_settings',7),(147,'2024_03_29_093946_create_ec_order_return_histories_table',7),(148,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(149,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(150,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(151,'2024_05_07_073153_improve_table_wishlist',7),(152,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',7),(153,'2024_05_15_021503_fix_invoice_path',7),(154,'2024_06_20_160724_create_ec_shared_wishlists_table',7),(155,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',7),(156,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',7),(157,'2024_07_14_071826_make_customer_email_nullable',7),(158,'2024_07_15_104916_add_video_media_column_to_ec_products_table',7),(159,'2024_07_26_052530_add_percentage_to_tax_rules_table',7),(160,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',7),(161,'2024_08_19_132849_create_specification_tables',7),(162,'2024_09_07_060744_add_author_column_to_specification_tables',7),(163,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',7),(164,'2024_09_25_073928_remove_wrong_product_slugs',7),(165,'2025_01_10_000000_fix_order_invoice_rounding_issues',7),(166,'2025_01_15_050230_migrate_old_theme_options',7),(167,'2025_01_15_optimize_products_export_index',7),(168,'2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table',7),(169,'2025_01_24_044641_migrate_old_country_data',7),(170,'2025_01_28_233602_add_private_notes_into_ec_orders_table',7),(171,'2025_02_13_021247_add_tax_translations',7),(172,'2025_02_24_152621_add_text_color_to_product_labels_table',7),(173,'2025_04_12_000001_add_payment_fee_to_ec_orders_table',7),(174,'2025_04_12_000002_add_payment_fee_to_ec_invoices_table',7),(175,'2025_05_05_092036_make_user_id_and_tax_amount_nullable',7),(176,'2025_05_15_082342_drop_email_unique_index_in_ec_customers_table',7),(177,'2025_06_07_081731_add_translations_for_specification_groups_and_tables',7),(178,'2025_06_17_091813_increase_note_in_shipments_table',7),(179,'2025_06_24_000001_create_ec_product_license_codes_table',7),(180,'2025_06_24_080427_add_license_code_type_to_products_table',7),(181,'2025_07_06_062402_create_ec_customer_deletion_requests_table',7),(182,'2025_07_07_161729_change_license_code_to_text_in_ec_product_license_codes_table',7),(183,'2025_07_08_162756_increase_license_code_column_size_in_ec_order_product_table',7),(184,'2025_07_09_000001_add_customer_address_fields_to_ec_invoices_table',7),(185,'2025_07_15_090809_create_ec_abandoned_carts_table',7),(186,'2025_07_24_120510_increase_barcode_column_length_in_ec_products_table',7),(187,'2025_07_31_133600_add_performance_indexes_to_ec_product_categories_table',7),(188,'2025_08_01_161205_optimize_product_variation_query_indexes',7),(189,'2025_08_08_145059_correct_tax_amount_in_order_and_invoice_tables',7),(190,'2025_09_05_025247_create_ec_product_specification_attribute_translations_table',7),(191,'2025_09_08_025516_add_variations_count_to_ec_products_table',7),(192,'2025_09_08_080248_add_slug_column_to_ec_product_categories_table',7),(193,'2025_09_08_080330_add_slug_column_to_ec_product_categories_translations_table',7),(194,'2025_09_08_080443_populate_slug_column_for_product_categories',7),(195,'2025_09_08_081216_add_slug_column_to_ec_products_table',7),(196,'2025_09_08_081237_add_slug_column_to_ec_products_translations_table',7),(197,'2025_09_08_081321_populate_slug_column_for_products',7),(198,'2025_09_10_073321_add_performance_indexes_to_ecommerce_tables',7),(199,'2025_09_18_093922_fix_tax_rounding_in_order_products_and_invoices',7),(200,'2025_09_21_030756_add_reviews_cache_to_ec_products_table',7),(201,'2018_07_09_221238_create_faq_table',8),(202,'2021_12_03_082134_create_faq_translations',8),(203,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(204,'2016_10_03_032336_create_languages_table',9),(205,'2023_09_14_022423_add_index_for_language_table',9),(206,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(207,'2021_12_03_075608_create_page_translations',10),(208,'2023_07_06_011444_create_slug_translations_table',10),(209,'2019_11_18_061011_create_country_table',11),(210,'2021_12_03_084118_create_location_translations',11),(211,'2021_12_03_094518_migrate_old_location_data',11),(212,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(213,'2022_01_16_085908_improve_plugin_location',11),(214,'2022_08_04_052122_delete_location_backup_tables',11),(215,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(216,'2023_07_26_041451_add_more_columns_to_location_table',11),(217,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(218,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(219,'2023_10_21_065016_make_state_id_in_table_cities_nullable',11),(220,'2024_08_17_094600_add_image_into_countries',11),(221,'2025_01_08_093652_add_zip_code_to_cities',11),(222,'2025_07_31_083459_add_indexes_for_location_search_performance',11),(223,'2021_07_06_030002_create_marketplace_table',12),(224,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',12),(225,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',12),(226,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',12),(227,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',12),(228,'2021_12_06_031304_update_table_mp_customer_revenues',12),(229,'2022_10_19_152916_add_columns_to_mp_stores_table',12),(230,'2022_10_20_062849_create_mp_category_sale_commissions_table',12),(231,'2022_11_02_071413_add_more_info_for_store',12),(232,'2022_11_02_080444_add_tax_info',12),(233,'2023_02_01_062030_add_store_translations',12),(234,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',12),(235,'2023_02_17_023648_fix_store_prefix',12),(236,'2024_04_03_062451_add_cover_image_to_table_mp_stores',12),(237,'2024_05_07_082630_create_mp_messages_table',12),(238,'2024_07_19_131849_add_documents_to_mp_stores_table',12),(239,'2024_08_18_083119_add_tax_id_column_to_mp_stores_table',12),(240,'2024_08_27_141244_add_block_reason_to_ec_customers_table',12),(241,'2024_09_17_125408_add_square_logo_to_stores_table',12),(242,'2025_07_31_021805_add_indexes_for_vendor_categories_optimization',12),(243,'2025_08_07_073854_add_verification_fields_to_mp_stores_table',12),(244,'2017_10_24_154832_create_newsletter_table',13),(245,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(246,'2017_05_18_080441_create_payment_tables',14),(247,'2021_03_27_144913_add_customer_type_into_table_payments',14),(248,'2021_05_24_034720_make_column_currency_nullable',14),(249,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(250,'2021_10_19_020859_update_metadata_field',14),(251,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(252,'2022_07_07_153354_update_charge_id_in_table_payments',14),(253,'2024_07_04_083133_create_payment_logs_table',14),(254,'2025_04_12_000003_add_payment_fee_to_payments_table',14),(255,'2025_05_22_000001_add_payment_fee_type_to_settings_table',14),(256,'2017_07_11_140018_create_simple_slider_table',15),(257,'2025_04_08_040931_create_social_logins_table',16),(258,'2024_09_14_100108_add_stripe_connect_details_to_ec_customers_table',17),(259,'2016_10_07_193005_create_translations_table',18),(260,'2023_12_12_105220_drop_translations_table',18);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_square` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `verified_at` timestamp NULL DEFAULT NULL,
  `verified_by` bigint unsigned DEFAULT NULL,
  `verification_note` text COLLATE utf8mb4_unicode_ci,
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `government_id_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','cschowalter@example.org','+13035142321','17335 Hertha Mountain Apt. 202','PS','West Virginia','East Pansymouth',2,'stores/1.png',NULL,NULL,'Placeat modi cum porro eum deleniti. Iure dolor aut voluptatem impedit earum dignissimos ullam at. Et et nobis laboriosam. Facilis expedita dolor vero ad et aut. Eligendi doloribus sed aut nihil. Est quaerat eos repellat laborum. Perspiciatis optio nihil qui. Eligendi consectetur quae accusamus similique porro molestiae ut.','Founded in 2002, GoPro has grown into a global brand known for its action cameras and versatile accessories.','published',0,NULL,NULL,NULL,NULL,'2025-09-25 01:22:27','2025-09-25 01:22:27',NULL,NULL,NULL,NULL,NULL),(2,'Global Office','jenkins.osbaldo@example.com','+12813874022','4645 Schneider Drive','LR','Ohio','Millsport',7,'stores/2.png',NULL,NULL,'Adipisci ut ducimus accusantium dolores nihil. Ut saepe inventore quis tenetur neque corrupti. Et eos quia maxime repellat impedit molestiae dolores. Ut ut reiciendis perferendis quos cumque. Ipsa ab totam maxime sequi soluta sit.','Global Office provides high-quality office supplies and equipment for businesses of all sizes.','published',1,'2025-04-17 21:43:24',NULL,'Authentic products and reliable service confirmed',NULL,'2025-09-25 01:22:27','2025-09-25 01:22:27',NULL,NULL,NULL,NULL,NULL),(3,'Young Shop','lgrimes@example.net','+15203343466','730 Leta Islands','DZ','Alabama','Jacobifurt',4,'stores/3.png',NULL,NULL,'Explicabo voluptatem qui quia aut nisi. Accusamus enim sunt nisi aliquam voluptatibus. Ad eius omnis non nobis sequi non. Distinctio tenetur enim et ab quidem omnis expedita. Voluptatum quaerat nihil hic minus consequuntur. Cum quis aspernatur odio qui. Non error est porro adipisci et qui quo.','Young Shop specializes in trendy fashion and accessories for the youth market.','published',1,'2025-04-23 04:18:46',NULL,'Verified business with valid documentation',NULL,'2025-09-25 01:22:27','2025-09-25 01:22:27',NULL,NULL,NULL,NULL,NULL),(4,'Global Store','ava.stokes@example.net','+17376224103','31659 Goodwin Stravenue Apt. 668','BQ','Wyoming','Kenyabury',5,'stores/4.png',NULL,NULL,'Ut autem quaerat dignissimos inventore repellat sunt omnis. Corrupti velit ducimus aliquid accusantium quod itaque distinctio. Reprehenderit quam natus aut quia consequatur officia. Voluptatibus sit sit ipsa. Sit in rerum nulla aut impedit. Placeat omnis eos et doloremque aut eligendi et quia. Ut est perferendis sit.','Global Store offers a wide range of products from electronics to home goods at competitive prices.','published',1,'2025-09-12 17:40:59',NULL,'Established vendor with proven track record',NULL,'2025-09-25 01:22:27','2025-09-25 01:22:27',NULL,NULL,NULL,NULL,NULL),(5,'Robert\'s Store','lyric.stokes@example.net','+19194317715','84044 Prosacco Light','IE','Vermont','West Sabina',7,'stores/5.png',NULL,NULL,'Non est enim ut architecto. Praesentium corporis commodi quia nemo qui. Ipsa voluptatem et voluptatem esse necessitatibus sed. Praesentium consequatur accusantium omnis accusantium perferendis error laboriosam vel.','Robert\'s Store is your destination for premium quality clothing and accessories.','published',1,'2025-05-10 22:50:42',NULL,'Established vendor with proven track record',NULL,'2025-09-25 01:22:27','2025-09-25 01:22:27',NULL,NULL,NULL,NULL,NULL),(6,'Stouffer','johnnie.weimann@example.com','+12404227634','8401 Amaya Ville Apt. 089','NC','Maine','South Myrtice',7,'stores/6.png',NULL,NULL,'Quo sunt nemo ea dolor maiores molestiae et. Inventore aut molestiae consequatur esse necessitatibus error eum. Est et rerum fuga quia laboriosam quis. Necessitatibus fuga accusamus officiis. Nemo est suscipit aliquid reprehenderit occaecati ullam explicabo. Deleniti voluptas eos alias qui asperiores architecto tenetur. Et dolorem sunt sit dolorem nisi ipsum.','Stouffer brings you delicious, ready-to-eat meals that are perfect for busy lifestyles.','published',1,'2025-08-12 14:25:59',NULL,'Verified business with valid documentation',NULL,'2025-09-25 01:22:27','2025-09-25 01:22:27',NULL,NULL,NULL,NULL,NULL),(7,'StarKist','alycia29@example.org','+18488881113','27213 Lueilwitz Hills Suite 902','CO','Massachusetts','Lake Emiliaside',3,'stores/7.png',NULL,NULL,'Qui quos at consequuntur aut. Alias ex a eum est error et ut. Omnis vitae ex doloremque voluptas. Temporibus nesciunt minus voluptas ea voluptatum eius. Nobis doloremque recusandae eius natus rerum aspernatur autem. Minus quo earum nesciunt.','StarKist is committed to providing sustainable seafood products of the highest quality.','published',0,NULL,NULL,NULL,NULL,'2025-09-25 01:22:27','2025-09-25 01:22:27',NULL,NULL,NULL,NULL,NULL),(8,'Old El Paso','mmcglynn@example.com','+19496995892','23073 Walter Fort','PL','Rhode Island','New Cleo',2,'stores/8.png',NULL,NULL,'Consequatur et velit aut corporis. Corporis qui sunt consectetur similique. Voluptas quod ut iste est fugiat officiis. Assumenda fugiat culpa placeat eum quaerat. Enim fuga rerum est. Et ullam esse dolores adipisci repellat distinctio. In delectus occaecati modi enim autem molestias. Eius pariatur in totam.','Old El Paso brings the flavors of Mexico to your table with authentic ingredients and recipes.','published',0,NULL,NULL,NULL,NULL,'2025-09-25 01:22:27','2025-09-25 01:22:27',NULL,NULL,NULL,NULL,NULL),(9,'Tyson','muller.jovan@example.com','+12723504086','50689 Wolff Neck Apt. 213','CW','Virginia','Shannonhaven',3,'stores/9.png',NULL,NULL,'Quae sint aut enim fugiat consequatur eius vero ut. Autem et illo nam. Eligendi tenetur quia harum sint sint fugiat. Magnam eum labore rerum iste adipisci harum. Iste corrupti eum voluptatum. Cum minima nisi quis ipsam veniam blanditiis eveniet necessitatibus. Doloremque et vel minus est animi. Aut voluptates commodi error quaerat minus.','Tyson offers a variety of protein products to help you create delicious meals for your family.','published',1,'2025-05-06 23:59:32',NULL,'Verified through official business registration',NULL,'2025-09-25 01:22:27','2025-09-25 01:22:27',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$E6egPE9amTE/rIOsE4BNLOXhfBl3NmYURTcqj9qBwTDHIrovzew.G','{\"name\":\"Ford Hansen\",\"number\":\"+18789244717\",\"full_name\":\"Daryl Lehner\",\"description\":\"Dr. Kristy Hoeger DVM\"}','2025-09-25 01:22:25','2025-09-25 01:22:25','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$ae4rmyyNBHUXJTsxmpxKtu/nmPmeVv7gTe3hsePYRS/tscHvIxNti','{\"name\":\"Prof. Orion Bins I\",\"number\":\"+19789847574\",\"full_name\":\"Anastasia Reichel\",\"description\":\"Lavern Jakubowski\"}','2025-09-25 01:22:26','2025-09-25 01:22:26','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$4ykuYyvm./mGXiAmzSfZj.YKzG.6psm6mDQblHjNun3deJYKq8Lfq','{\"name\":\"Nicole Johnson\",\"number\":\"+12769200940\",\"full_name\":\"Rick Wiza\",\"description\":\"Aimee Mayert\"}','2025-09-25 01:22:26','2025-09-25 01:22:26','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$Wk5SfohEpxIjvjGhzP4l0uNqVSgClaHRmY/J7GB35GIDH4s4nmJTS','{\"name\":\"Juliet Rice I\",\"number\":\"+15027348917\",\"full_name\":\"Brody Turcotte\",\"description\":\"Roxane Dickinson\"}','2025-09-25 01:22:26','2025-09-25 01:22:26','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$USS2PDc6lyyxD7Uy2xoNb.crv29l5p3zfyjuziFdZrLCXlq3s.QBC','{\"name\":\"Dr. Brook Dickens Jr.\",\"number\":\"+15043121960\",\"full_name\":\"Abelardo Fisher\",\"description\":\"Nicholas Huels\"}','2025-09-25 01:22:27','2025-09-25 01:22:27','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$46taXHVNAL.JxpjfeuvbAury20DfJoRCUhzYPmy9gvzTckzjpf09i','{\"name\":\"Isom Spencer\",\"number\":\"+17263617793\",\"full_name\":\"Damon Jerde PhD\",\"description\":\"Hanna Block\"}','2025-09-25 01:22:27','2025-09-25 01:22:27','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$jK5Flhwq44TAPw1UaSwM4uzLZv4qWUSscjw4lslV3qjHMGjCOriRa','{\"name\":\"Miss Lorna Jaskolski\",\"number\":\"+19286653183\",\"full_name\":\"Prof. Lauriane Veum V\",\"description\":\"Donny Yundt\"}','2025-09-25 01:22:27','2025-09-25 01:22:27','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\" enable_lazy_loading=\"yes\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\" enable_lazy_loading=\"yes\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\" enable_lazy_loading=\"yes\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\" enable_lazy_loading=\"yes\"][/theme-ads]</div><div>[featured-products title=\"Featured products\" enable_lazy_loading=\"yes\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\" enable_lazy_loading=\"yes\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\" enable_lazy_loading=\"yes\"][/product-collections]</div><div>[product-category-products category_id=\"18\" enable_lazy_loading=\"yes\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\" enable_lazy_loading=\"yes\"][/download-app]</div><div>[product-category-products category_id=\"23\" enable_lazy_loading=\"yes\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\" enable_lazy_loading=\"yes\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(2,'About us','<p>Pigeon. \'I can tell you my history, and you\'ll understand why it is all the things being alive; for instance, there\'s the arch I\'ve got to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, to begin at HIS time of life. The King\'s argument was, that if something wasn\'t done about it in time,\' said the Cat in a coaxing tone, and everybody laughed, \'Let the jury eagerly wrote down all three dates on.</p><p>There was no use in talking to herself, \'Why, they\'re only a pack of cards, after all. \"--SAID I COULD NOT SWIM--\" you can\'t think! And oh, my poor little thing sat down with wonder at the door--I do wish I hadn\'t cried so much!\' said Alice, timidly; \'some of the same thing as \"I eat what I say,\' the Mock Turtle in a whisper.) \'That would be four thousand miles down, I think--\' (for, you see, so many out-of-the-way things had happened lately, that Alice said; \'there\'s a large rabbit-hole under.</p><p>Alice remained looking thoughtfully at the righthand bit again, and made a snatch in the flurry of the other side of WHAT?\' thought Alice; \'but a grin without a grin,\' thought Alice; \'I might as well go in at the righthand bit again, and went on in a very short time the Queen said--\' \'Get to your places!\' shouted the Gryphon, with a soldier on each side to guard him; and near the looking-glass. There was no time to hear her try and repeat something now. Tell her to speak first, \'why your cat.</p><p>She did it so quickly that the hedgehog to, and, as they would call after her: the last words out loud, and the Queen added to one of them.\' In another minute the whole pack of cards, after all. I needn\'t be afraid of them!\' \'And who are THESE?\' said the Footman, \'and that for two reasons. First, because I\'m on the English coast you find a thing,\' said the Gryphon, the squeaking of the sort!\' said Alice. \'I\'ve read that in the pool, \'and she sits purring so nicely by the Hatter, and he checked.</p>',1,NULL,'default',NULL,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(3,'Terms Of Use','<p>This time Alice waited till she had never seen such a fall as this, I shall be punished for it now, I suppose, by being drowned in my size; and as it left no mark on the hearth and grinning from ear to ear. \'Please would you tell me,\' said Alice, and she grew no larger: still it was empty: she did not like the look of things at all, as the Rabbit, and had come back again, and the Panther received knife and fork with a yelp of delight, and rushed at the top of her sister, as well say,\' added.</p><p>As they walked off together. Alice laughed so much contradicted in her pocket) till she got used to say.\' \'So he did, so he with his nose, you know?\' \'It\'s the stupidest tea-party I ever was at the great puzzle!\' And she opened the door of which was sitting on the stairs. Alice knew it was sneezing and howling alternately without a porpoise.\' \'Wouldn\'t it really?\' said Alice in a melancholy tone. \'Nobody seems to like her, down here, and I\'m sure I have ordered\'; and she was now, and she.</p><p>Besides, SHE\'S she, and I\'m sure I can\'t see you?\' She was a real Turtle.\' These words were followed by a row of lodging houses, and behind it when she first saw the Mock Turtle would be grand, certainly,\' said Alice, and looking anxiously round to see if she were looking over his shoulder with some severity; \'it\'s very interesting. I never heard it say to this: so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of uglifying!\' it exclaimed. \'You know what a Mock.</p><p>Hatter, \'you wouldn\'t talk about wasting IT. It\'s HIM.\' \'I don\'t know what a Gryphon is, look at it!\' This speech caused a remarkable sensation among the branches, and every now and then dipped suddenly down, so suddenly that Alice quite hungry to look down and saying to her to carry it further. So she went hunting about, and crept a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I shan\'t grow any more--As it is, I can\'t take LESS,\' said the King triumphantly, pointing.</p>',1,NULL,'default',NULL,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(4,'Terms &amp; Conditions','<p>THEIR eyes bright and eager with many a strange tale, perhaps even with the edge of her or of anything else. CHAPTER V. Advice from a bottle marked \'poison,\' it is I hate cats and dogs.\' It was the Hatter. \'You might just as the White Rabbit, \'and that\'s why. Pig!\' She said it to be no doubt that it was over at last, with a melancholy tone. \'Nobody seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not the same, shedding.</p><p>White Rabbit, \'and that\'s the jury, who instantly made a dreadfully ugly child: but it did not notice this question, but hurriedly went on, very much to-night, I should have liked teaching it tricks very much, if--if I\'d only been the right size, that it was labelled \'ORANGE MARMALADE\', but to open her mouth; but she heard a little irritated at the Queen, who were all talking at once, with a sudden burst of tears, \'I do wish they WOULD go with the words \'EAT ME\' were beautifully marked in.</p><p>Mabel after all, and I had our Dinah here, I know THAT well enough; and what does it matter to me whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' the Hatter added as an explanation; \'I\'ve none of them with large eyes like a stalk out of its little eyes, but it did not feel encouraged to ask the question?\' said the King hastily said, and went in. The door led right into it. \'That\'s very curious.\' \'It\'s all about it!\' and he went on, \'I must be Mabel after all, and I never knew.</p><p>Alice, she went on, \'\"--found it advisable to go after that into a large pool all round her at the stick, and made believe to worry it; then Alice, thinking it was very fond of pretending to be two people. \'But it\'s no use in the distance, screaming with passion. She had already heard her voice sounded hoarse and strange, and the words came very queer indeed:-- \'\'Tis the voice of the March Hare meekly replied. \'Yes, but some crumbs must have been a RED rose-tree, and we won\'t talk about her.</p>',1,NULL,'default',NULL,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(5,'Refund Policy','<p>March Hare meekly replied. \'Yes, but I hadn\'t begun my tea--not above a week or so--and what with the Mouse to Alice an excellent plan, no doubt, and very soon finished off the top of her going, though she felt a little timidly, \'why you are very dull!\' \'You ought to be listening, so she set off at once, and ran the faster, while more and more puzzled, but she saw them, they were IN the well,\' Alice said nothing; she had caught the baby joined):-- \'Wow! wow! wow!\' \'Here! you may nurse it a.</p><p>I vote the young Crab, a little girl or a serpent?\' \'It matters a good deal to ME,\' said the Duchess, digging her sharp little chin into Alice\'s shoulder as he could go. Alice took up the conversation dropped, and the poor animal\'s feelings. \'I quite agree with you,\' said the Cat, \'if you don\'t like them raw.\' \'Well, be off, and she had nibbled some more of the officers: but the tops of the Rabbit\'s voice; and Alice looked up, and began by taking the little creature down, and was going to.</p><p>I grow up, I\'ll write one--but I\'m grown up now,\' she added in a tone of great dismay, and began by producing from under his arm a great hurry. An enormous puppy was looking up into the open air. \'IF I don\'t like them raw.\' \'Well, be off, then!\' said the Gryphon. \'Then, you know,\' the Hatter asked triumphantly. Alice did not like to try the thing Mock Turtle is.\' \'It\'s the first minute or two, they began moving about again, and Alice could see, when she looked up, and reduced the answer to.</p><p>I THINK I can guess that,\' she added in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' And then a great hurry. \'You did!\' said the others. \'We must burn the house if it had been. But her sister on the same thing a Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Nothing WHATEVER?\' persisted the King. \'Shan\'t,\' said the March Hare. \'I didn\'t know how to speak good English); \'now I\'m opening out like the right size, that it was in the same words as before, \'It\'s all about for some.</p>',1,NULL,'default',NULL,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',NULL,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(10,'Affiliate','<p>Alice ventured to remark. \'Tut, tut, child!\' said the Caterpillar; and it sat down and looked at each other for some time without hearing anything more: at last the Dodo said, \'EVERYBODY has won, and all her knowledge of history, Alice had no idea how confusing it is to France-- Then turn not pale, beloved snail, but come and join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, this sort of use in knocking,\' said the Cat went on.</p><p>Alice, every now and then said, \'It WAS a narrow escape!\' said Alice, \'but I must be getting somewhere near the door of which was immediately suppressed by the English, who wanted leaders, and had come back again, and all the jurymen on to himself as he could think of anything to say, she simply bowed, and took the hookah into its nest. Alice crouched down among the trees behind him. \'--or next day, maybe,\' the Footman continued in the last words out loud, and the pattern on their hands and.</p><p>I growl when I\'m pleased, and wag my tail when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she kept tossing the baby at her side. She was walking by the Queen furiously, throwing an inkstand at the bottom of a sea of green leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle. \'Very much indeed,\' said Alice. \'It goes on, you know,\' Alice gently remarked; \'they\'d have been a RED rose-tree, and we put a stop to this,\' she said this, she came upon a neat little house.</p><p>Alice did not dare to laugh; and, as she could not help thinking there MUST be more to do that,\' said the Hatter: \'I\'m on the spot.\' This did not quite know what they\'re like.\' \'I believe so,\' Alice replied thoughtfully. \'They have their tails in their mouths; and the other paw, \'lives a Hatter: and in another moment down went Alice after it, \'Mouse dear! Do come back and see that she still held the pieces of mushroom in her pocket, and pulled out a history of the jurymen. \'It isn\'t directed.</p>',1,NULL,'default',NULL,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(11,'Career','<p>March Hare. The Hatter opened his eyes were nearly out of sight: then it watched the White Rabbit cried out, \'Silence in the world! Oh, my dear Dinah! I wonder what was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let this be a queer thing, to be beheaded!\' \'What for?\' said the Pigeon; \'but if you\'ve seen them so shiny?\' Alice looked all round the rosetree; for, you see, as they all crowded round her once more, while the Mock Turtle: \'crumbs would all come.</p><p>Let me see--how IS it to annoy, Because he knows it teases.\' CHORUS. (In which the wretched Hatter trembled so, that Alice could see her after the rest of the guinea-pigs cheered, and was just in time to wash the things get used to say it out to sea. So they went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on at last, more calmly, though still sobbing a little sharp bark just over her head pressing against the door, and the Dormouse fell asleep instantly.</p><p>The Dormouse slowly opened his eyes. He looked at it gloomily: then he dipped it into one of them even when they liked, so that they could not make out what she did, she picked up a little bottle on it, (\'which certainly was not a moment like a stalk out of sight, they were filled with cupboards and book-shelves; here and there was room for YOU, and no one to listen to her. The Cat seemed to be sure, she had not a bit afraid of them!\' \'And who is to give the prizes?\' quite a commotion in the.</p><p>Hatter. \'You MUST remember,\' remarked the King, the Queen, stamping on the spot.\' This did not like to try the whole court was a large arm-chair at one end of the hall: in fact she was not going to leave off this minute!\' She generally gave herself very good height indeed!\' said the last words out loud, and the game began. Alice thought decidedly uncivil. \'But perhaps he can\'t help it,\' said Five, \'and I\'ll tell him--it was for bringing the cook was busily stirring the soup, and seemed not to.</p>',1,NULL,'default',NULL,'published','2025-09-25 01:22:19','2025-09-25 01:22:19'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"2026-09-25 08:22:19\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2025-09-25 01:22:19','2025-09-25 01:22:19');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(3,1),(2,2),(3,2),(2,3),(3,3),(1,4),(4,4),(2,5),(3,5),(1,6),(4,6),(1,7),(4,7),(2,8),(3,8),(1,9),(4,9),(1,10),(3,10),(2,11),(4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1095,NULL,'2025-09-25 01:22:18','2025-09-25 01:22:18'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1160,NULL,'2025-09-25 01:22:18','2025-09-25 01:22:18'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',236,NULL,'2025-09-25 01:22:18','2025-09-25 01:22:18'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',2138,NULL,'2025-09-25 01:22:18','2025-09-25 01:22:18'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',2007,NULL,'2025-09-25 01:22:18','2025-09-25 01:22:18'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2010,NULL,'2025-09-25 01:22:18','2025-09-25 01:22:18'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',2057,NULL,'2025-09-25 01:22:18','2025-09-25 01:22:18'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',2356,NULL,'2025-09-25 01:22:18','2025-09-25 01:22:18'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',845,NULL,'2025-09-25 01:22:18','2025-09-25 01:22:18'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1796,NULL,'2025-09-25 01:22:18','2025-09-25 01:22:18'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1822,NULL,'2025-09-25 01:22:18','2025-09-25 01:22:18');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notification_recipients`
--

DROP TABLE IF EXISTS `push_notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notification_recipients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `push_notification_id` bigint unsigned NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` json DEFAULT NULL,
  `error_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  KEY `pnr_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notification_recipients`
--

LOCK TABLES `push_notification_recipients` WRITE;
/*!40000 ALTER TABLE `push_notification_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notifications`
--

DROP TABLE IF EXISTS `push_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `target_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_count` int NOT NULL DEFAULT '0',
  `failed_count` int NOT NULL DEFAULT '0',
  `delivered_count` int NOT NULL DEFAULT '0',
  `read_count` int NOT NULL DEFAULT '0',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  KEY `push_notifications_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notifications`
--

LOCK TABLES `push_notifications` WRITE;
/*!40000 ALTER TABLE `push_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"marketplace.messages.index\":true,\"marketplace.messages.edit\":true,\"marketplace.messages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-09-25 01:22:17','2025-09-25 01:22:17');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','69eedb3f2c90e13df7b5d7fe1d393337',NULL,'2025-09-25 01:22:24'),(2,'api_enabled','0',NULL,'2025-09-25 01:22:24'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"stripe-connect\",\"translation\"]',NULL,'2025-09-25 01:22:24'),(4,'analytics_dashboard_widgets','0','2025-09-25 01:21:41','2025-09-25 01:21:41'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2025-09-25 01:21:41','2025-09-25 01:21:41'),(6,'api_layer_api_key','',NULL,'2025-09-25 01:22:24'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2025-09-25 01:21:44','2025-09-25 01:21:44'),(10,'payment_cod_fee_type','fixed',NULL,'2025-09-25 01:22:24'),(11,'payment_bank_transfer_fee_type','fixed',NULL,'2025-09-25 01:22:24'),(12,'theme','martfury',NULL,'2025-09-25 01:22:24'),(13,'show_admin_bar','1',NULL,'2025-09-25 01:22:24'),(14,'language_hide_default','1',NULL,'2025-09-25 01:22:24'),(15,'language_switcher_display','dropdown',NULL,'2025-09-25 01:22:24'),(16,'language_display','all',NULL,'2025-09-25 01:22:24'),(17,'language_hide_languages','[]',NULL,'2025-09-25 01:22:24'),(18,'simple_slider_using_assets','0',NULL,NULL),(19,'admin_favicon','general/favicon.png',NULL,'2025-09-25 01:22:24'),(20,'admin_logo','general/logo-light.png',NULL,'2025-09-25 01:22:24'),(21,'payment_cod_status','1',NULL,'2025-09-25 01:22:24'),(22,'payment_bank_transfer_status','1',NULL,'2025-09-25 01:22:24'),(23,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2025-09-25 01:22:24'),(24,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2025-09-25 01:22:24'),(25,'payment_stripe_payment_type','stripe_checkout',NULL,'2025-09-25 01:22:24'),(26,'plugins_ecommerce_customer_new_order_status','0',NULL,'2025-09-25 01:22:24'),(27,'plugins_ecommerce_admin_new_order_status','0',NULL,'2025-09-25 01:22:24'),(28,'ecommerce_is_enabled_support_digital_products','1',NULL,'2025-09-25 01:22:24'),(29,'ecommerce_enable_license_codes_for_digital_products','1',NULL,'2025-09-25 01:22:24'),(30,'ecommerce_auto_complete_digital_orders_after_payment','1',NULL,'2025-09-25 01:22:24'),(31,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2025-09-25 01:22:24'),(32,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2025-09-25 01:22:24'),(33,'ecommerce_store_order_prefix','SF',NULL,'2025-09-25 01:22:24'),(34,'ecommerce_enable_product_specification','1',NULL,'2025-09-25 01:22:24'),(35,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2025-09-25 01:22:24'),(36,'payment_cod_logo','payments/cod.png',NULL,'2025-09-25 01:22:24'),(37,'payment_bank_transfer_logo','payments/bank-transfer.png',NULL,'2025-09-25 01:22:24'),(38,'payment_stripe_logo','payments/stripe.webp',NULL,'2025-09-25 01:22:24'),(39,'payment_paypal_logo','payments/paypal.png',NULL,'2025-09-25 01:22:24'),(40,'payment_mollie_logo','payments/mollie.png',NULL,'2025-09-25 01:22:24'),(41,'payment_paystack_logo','payments/paystack.png',NULL,'2025-09-25 01:22:24'),(42,'payment_razorpay_logo','payments/razorpay.png',NULL,'2025-09-25 01:22:24'),(43,'payment_sslcommerz_logo','payments/sslcommerz.png',NULL,'2025-09-25 01:22:24'),(44,'permalink-botble-blog-models-post','blog',NULL,'2025-09-25 01:22:24'),(45,'permalink-botble-blog-models-category','blog',NULL,'2025-09-25 01:22:24'),(46,'ecommerce_store_name','Martfury',NULL,NULL),(47,'ecommerce_store_phone','1800979769',NULL,NULL),(48,'ecommerce_store_address','502 New Street',NULL,NULL),(49,'ecommerce_store_state','Brighton VIC',NULL,NULL),(50,'ecommerce_store_city','Brighton VIC',NULL,NULL),(51,'ecommerce_store_country','AU',NULL,NULL),(52,'theme-martfury-site_title','MartFury - Laravel Ecommerce system',NULL,NULL),(53,'theme-martfury-seo_description','MartFury is a clean & modern Laravel Ecommerce System for multipurpose online stores. With design clean and trendy, MartFury will make your online store look more impressive and attractive to viewers.',NULL,NULL),(54,'theme-martfury-copyright','© %Y MartFury. All Rights Reserved.',NULL,NULL),(55,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(56,'theme-martfury-logo','general/logo.png',NULL,NULL),(57,'theme-martfury-welcome_message','Welcome to MartFury Online Shopping Store!',NULL,NULL),(58,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(59,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(60,'theme-martfury-email','contact@martfury.co',NULL,NULL),(61,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(62,'theme-martfury-homepage_id','1',NULL,NULL),(63,'theme-martfury-blog_page_id','6',NULL,NULL),(64,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(65,'theme-martfury-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(66,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(67,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(68,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(69,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(70,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(71,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(72,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(73,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(74,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(75,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(76,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(77,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(78,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(79,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(80,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, South bank, Melbourne 10560, Australia',NULL,NULL),(81,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(82,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(83,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(84,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(85,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(86,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(87,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(88,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(89,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(90,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(91,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(92,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(93,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(94,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(95,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(96,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(97,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(98,'theme-martfury-primary_font','Work Sans',NULL,NULL),(99,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(100,'theme-martfury-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(101,'theme-martfury-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(102,'theme-martfury-lazy_load_images','1',NULL,NULL),(103,'theme-martfury-lazy_load_placeholder_image','general/placeholder.png',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2025-09-25 01:22:19','2025-09-25 01:22:19'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2025-09-25 01:22:19','2025-09-25 01:22:19'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2025-09-25 01:22:19','2025-09-25 01:22:19');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2025-09-25 01:22:19','2025-09-25 01:22:19');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`),
  KEY `idx_slugs_reference` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-25 01:21:45','2025-09-25 01:21:45'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-25 01:21:45','2025-09-25 01:21:45'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-25 01:21:45','2025-09-25 01:21:45'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-25 01:21:45','2025-09-25 01:21:45'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-25 01:21:45','2025-09-25 01:21:45'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-25 01:21:45','2025-09-25 01:21:45'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-25 01:21:45','2025-09-25 01:21:45'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-25 01:21:46','2025-09-25 01:21:46'),(45,'smart-home-speaker',1,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:07'),(46,'headphone-ultra-bass',2,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:07'),(47,'boxed-bluetooth-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:07'),(48,'camera-samsung-ss-24-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:29'),(49,'macbook-pro-2015',5,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:07'),(50,'apple-watch-serial-7',6,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:07'),(51,'macbook-pro-13-inch',7,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:07'),(52,'apple-keyboard-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:29'),(53,'macsafe-80w',9,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:07'),(54,'hand-playstation',10,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:07'),(55,'apple-airpods-serial-3',11,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:07'),(56,'cool-smart-watches-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:29'),(57,'black-smart-watches',13,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:07'),(58,'leather-watch-in-black',14,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:07'),(59,'macbook-pro-2015-13-inch',15,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:07'),(60,'historic-alarm-clock-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:29'),(61,'black-glasses',17,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:07'),(62,'phillips-mouse',18,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:07'),(63,'gaming-keyboard',19,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:07'),(64,'wireless-keyboard-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:07','2025-09-25 01:22:29'),(65,'black-smart-watches',21,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(66,'smart-home-speaker',22,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(67,'headphone-ultra-bass',23,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(68,'boxed-bluetooth-headphone-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:29'),(69,'camera-samsung-ss-24',25,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(70,'leather-watch-in-black',26,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(71,'apple-iphone-13-plus',27,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(72,'macbook-pro-2015-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:29'),(73,'apple-watch-serial-7',29,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(74,'macbook-pro-13-inch',30,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(75,'apple-keyboard',31,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(76,'macsafe-80w-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:30'),(77,'hand-playstation',33,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(78,'apple-airpods-serial-3',34,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(79,'cool-smart-watches',35,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(80,'black-smart-watches-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:30'),(81,'leather-watch-in-black',37,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(82,'macbook-pro-2015-13-inch',38,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(83,'sony-wh-1000xm4-wireless-headphones',39,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(84,'samsung-galaxy-s22-ultra-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:30'),(85,'dell-xps-15-laptop',41,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(86,'ipad-pro-129-inch',42,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(87,'bose-quietcomfort-earbuds',43,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(88,'lg-oled-c1-series-tv-digital',44,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:30'),(89,'dyson-v11-vacuum-cleaner',45,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(90,'nintendo-switch-oled-model',46,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(91,'canon-eos-r5-camera',47,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:08','2025-09-25 01:22:08'),(92,'fitbit-sense-smartwatch-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:09','2025-09-25 01:22:30'),(93,'sonos-beam-soundbar',49,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:09','2025-09-25 01:22:09'),(94,'logitech-mx-master-3-mouse',50,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:09','2025-09-25 01:22:09'),(95,'kindle-paperwhite-e-reader',51,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:09','2025-09-25 01:22:09'),(96,'gopro-hero10-black-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:09','2025-09-25 01:22:30'),(97,'anker-powercore-power-bank',53,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:09','2025-09-25 01:22:09'),(98,'product-54',54,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:09','2025-09-25 01:22:09'),(99,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-25 01:22:16','2025-09-25 01:22:16'),(100,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-25 01:22:16','2025-09-25 01:22:16'),(101,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-25 01:22:16','2025-09-25 01:22:16'),(102,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-25 01:22:16','2025-09-25 01:22:16'),(103,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-25 01:22:16','2025-09-25 01:22:16'),(104,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-25 01:22:16','2025-09-25 01:22:16'),(105,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2025-09-25 01:22:18','2025-09-25 01:22:20'),(106,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2025-09-25 01:22:18','2025-09-25 01:22:20'),(107,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2025-09-25 01:22:18','2025-09-25 01:22:20'),(108,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2025-09-25 01:22:18','2025-09-25 01:22:20'),(109,'general',1,'Botble\\Blog\\Models\\Tag','tag','2025-09-25 01:22:18','2025-09-25 01:22:18'),(110,'design',2,'Botble\\Blog\\Models\\Tag','tag','2025-09-25 01:22:18','2025-09-25 01:22:18'),(111,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2025-09-25 01:22:18','2025-09-25 01:22:18'),(112,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2025-09-25 01:22:18','2025-09-25 01:22:18'),(113,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2025-09-25 01:22:18','2025-09-25 01:22:18'),(114,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2025-09-25 01:22:18','2025-09-25 01:22:20'),(115,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2025-09-25 01:22:18','2025-09-25 01:22:20'),(116,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2025-09-25 01:22:18','2025-09-25 01:22:20'),(117,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2025-09-25 01:22:18','2025-09-25 01:22:20'),(118,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2025-09-25 01:22:18','2025-09-25 01:22:20'),(119,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2025-09-25 01:22:18','2025-09-25 01:22:20'),(120,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2025-09-25 01:22:18','2025-09-25 01:22:20'),(121,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2025-09-25 01:22:18','2025-09-25 01:22:20'),(122,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2025-09-25 01:22:18','2025-09-25 01:22:20'),(123,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2025-09-25 01:22:18','2025-09-25 01:22:20'),(124,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2025-09-25 01:22:18','2025-09-25 01:22:20'),(125,'home',1,'Botble\\Page\\Models\\Page','','2025-09-25 01:22:19','2025-09-25 01:22:19'),(126,'about-us',2,'Botble\\Page\\Models\\Page','','2025-09-25 01:22:19','2025-09-25 01:22:19'),(127,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2025-09-25 01:22:19','2025-09-25 01:22:19'),(128,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2025-09-25 01:22:19','2025-09-25 01:22:19'),(129,'refund-policy',5,'Botble\\Page\\Models\\Page','','2025-09-25 01:22:19','2025-09-25 01:22:19'),(130,'blog',6,'Botble\\Page\\Models\\Page','','2025-09-25 01:22:19','2025-09-25 01:22:19'),(131,'faqs',7,'Botble\\Page\\Models\\Page','','2025-09-25 01:22:19','2025-09-25 01:22:19'),(132,'contact',8,'Botble\\Page\\Models\\Page','','2025-09-25 01:22:19','2025-09-25 01:22:19'),(133,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2025-09-25 01:22:19','2025-09-25 01:22:19'),(134,'affiliate',10,'Botble\\Page\\Models\\Page','','2025-09-25 01:22:19','2025-09-25 01:22:19'),(135,'career',11,'Botble\\Page\\Models\\Page','','2025-09-25 01:22:19','2025-09-25 01:22:19'),(136,'coming-soon',12,'Botble\\Page\\Models\\Page','','2025-09-25 01:22:19','2025-09-25 01:22:19'),(137,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2025-09-25 01:22:27','2025-09-25 01:22:27'),(138,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2025-09-25 01:22:27','2025-09-25 01:22:27'),(139,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2025-09-25 01:22:27','2025-09-25 01:22:27'),(140,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2025-09-25 01:22:27','2025-09-25 01:22:27'),(141,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2025-09-25 01:22:27','2025-09-25 01:22:27'),(142,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2025-09-25 01:22:27','2025-09-25 01:22:27'),(143,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2025-09-25 01:22:27','2025-09-25 01:22:27'),(144,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2025-09-25 01:22:27','2025-09-25 01:22:27'),(145,'tyson',9,'Botble\\Marketplace\\Models\\Store','stores','2025-09-25 01:22:27','2025-09-25 01:22:27'),(146,'smart-home-speaker',55,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(147,'smart-home-speaker',56,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(148,'headphone-ultra-bass',57,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(149,'headphone-ultra-bass',58,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(150,'headphone-ultra-bass',59,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(151,'macbook-pro-2015',60,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(152,'macbook-pro-2015',61,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(153,'macbook-pro-2015',62,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(154,'macbook-pro-2015',63,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(155,'apple-watch-serial-7',64,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(156,'apple-watch-serial-7',65,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(157,'apple-keyboard-digital',66,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(158,'apple-keyboard-digital',67,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(159,'apple-keyboard-digital',68,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(160,'apple-keyboard-digital',69,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(161,'cool-smart-watches-digital',70,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(162,'cool-smart-watches-digital',71,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(163,'macbook-pro-2015-13-inch',72,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(164,'macbook-pro-2015-13-inch',73,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(165,'macbook-pro-2015-13-inch',74,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(166,'phillips-mouse',75,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(167,'phillips-mouse',76,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(168,'phillips-mouse',77,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(169,'phillips-mouse',78,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(170,'wireless-keyboard-digital',79,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(171,'wireless-keyboard-digital',80,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(172,'wireless-keyboard-digital',81,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(173,'black-smart-watches',82,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(174,'black-smart-watches',83,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(175,'smart-home-speaker',84,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(176,'smart-home-speaker',85,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(177,'smart-home-speaker',86,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(178,'headphone-ultra-bass',87,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(179,'headphone-ultra-bass',88,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(180,'camera-samsung-ss-24',89,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(181,'leather-watch-in-black',90,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(182,'leather-watch-in-black',91,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(183,'leather-watch-in-black',92,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(184,'apple-iphone-13-plus',93,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(185,'macbook-pro-2015-digital',94,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(186,'macbook-pro-2015-digital',95,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(187,'macbook-pro-13-inch',96,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(188,'macbook-pro-13-inch',97,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(189,'macbook-pro-13-inch',98,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(190,'apple-keyboard',99,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(191,'macsafe-80w-digital',100,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(192,'macsafe-80w-digital',101,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(193,'macsafe-80w-digital',102,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(194,'macsafe-80w-digital',103,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(195,'apple-airpods-serial-3',104,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(196,'apple-airpods-serial-3',105,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(197,'sony-wh-1000xm4-wireless-headphones',106,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(198,'samsung-galaxy-s22-ultra-digital',107,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(199,'dell-xps-15-laptop',108,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(200,'dell-xps-15-laptop',109,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(201,'bose-quietcomfort-earbuds',110,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(202,'bose-quietcomfort-earbuds',111,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(203,'lg-oled-c1-series-tv-digital',112,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(204,'dyson-v11-vacuum-cleaner',113,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(205,'dyson-v11-vacuum-cleaner',114,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(206,'dyson-v11-vacuum-cleaner',115,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(207,'nintendo-switch-oled-model',116,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(208,'nintendo-switch-oled-model',117,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(209,'canon-eos-r5-camera',118,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(210,'canon-eos-r5-camera',119,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(211,'canon-eos-r5-camera',120,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(212,'sonos-beam-soundbar',121,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(213,'logitech-mx-master-3-mouse',122,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(214,'logitech-mx-master-3-mouse',123,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(215,'gopro-hero10-black-digital',124,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(216,'gopro-hero10-black-digital',125,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(217,'gopro-hero10-black-digital',126,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(218,'gopro-hero10-black-digital',127,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(219,'gopro-hero10-black-digital',128,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(220,'product-54',129,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(221,'product-54',130,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30'),(222,'product-54',131,'Botble\\Ecommerce\\Models\\Product','products','2025-09-25 01:22:30','2025-09-25 01:22:30');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `refresh_token` text COLLATE utf8mb4_unicode_ci,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`),
  KEY `idx_states_name` (`name`),
  KEY `idx_states_status` (`status`),
  KEY `idx_states_country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`),
  KEY `idx_states_trans_state_lang` (`states_id`,`lang_code`),
  KEY `idx_states_trans_name` (`name`),
  KEY `idx_states_trans_states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-25 01:22:18','2025-09-25 01:22:18'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-25 01:22:18','2025-09-25 01:22:18'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-25 01:22:18','2025-09-25 01:22:18'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-25 01:22:18','2025-09-25 01:22:18'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-25 01:22:18','2025-09-25 01:22:18');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_settings_user_type_user_id_key_unique` (`user_type`,`user_id`,`key`),
  KEY `user_settings_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `user_settings_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'qkshlerin@strosin.net',NULL,NULL,'$2y$12$wdfBEZGJV11DG0glm9co8.n52psy4Lr4meiXDQML4NWhruZZ09.Ka',NULL,'2025-09-25 01:22:17','2025-09-25 01:22:17','Claire','Hessel','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2025-09-25 01:22:24','2025-09-25 01:22:24'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2025-09-25 01:22:24','2025-09-25 01:22:24'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2025-09-25 01:22:24','2025-09-25 01:22:24'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2025-09-25 01:22:24','2025-09-25 01:22:24'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2025-09-25 01:22:24','2025-09-25 01:22:24'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2025-09-25 01:22:24','2025-09-25 01:22:24'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2025-09-25 01:22:24','2025-09-25 01:22:24'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2025-09-25 01:22:24','2025-09-25 01:22:24'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2025-09-25 01:22:24','2025-09-25 01:22:24'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2025-09-25 01:22:24','2025-09-25 01:22:24'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2025-09-25 01:22:24','2025-09-25 01:22:24'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2025-09-25 01:22:24','2025-09-25 01:22:24');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-25 15:22:31
