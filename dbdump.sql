-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: batmax
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'plugin::upload.read',NULL,'{}','[]','2022-08-18 20:55:25.299000','2022-08-18 20:55:25.299000',NULL,NULL),(2,'plugin::upload.assets.create',NULL,'{}','[]','2022-08-18 20:55:25.305000','2022-08-18 20:55:25.305000',NULL,NULL),(3,'plugin::upload.assets.update',NULL,'{}','[]','2022-08-18 20:55:25.310000','2022-08-18 20:55:25.310000',NULL,NULL),(4,'plugin::upload.assets.download',NULL,'{}','[]','2022-08-18 20:55:25.314000','2022-08-18 20:55:25.314000',NULL,NULL),(5,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-08-18 20:55:25.319000','2022-08-18 20:55:25.319000',NULL,NULL),(6,'plugin::upload.read',NULL,'{}','[\"admin::is-creator\"]','2022-08-18 20:55:25.324000','2022-08-18 20:55:25.324000',NULL,NULL),(7,'plugin::upload.assets.create',NULL,'{}','[]','2022-08-18 20:55:25.327000','2022-08-18 20:55:25.327000',NULL,NULL),(8,'plugin::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]','2022-08-18 20:55:25.331000','2022-08-18 20:55:25.331000',NULL,NULL),(9,'plugin::upload.assets.download',NULL,'{}','[]','2022-08-18 20:55:25.334000','2022-08-18 20:55:25.334000',NULL,NULL),(10,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-08-18 20:55:25.338000','2022-08-18 20:55:25.338000',NULL,NULL),(11,'plugin::content-manager.explorer.create','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2022-08-18 20:55:25.358000','2022-08-18 20:55:25.358000',NULL,NULL),(12,'plugin::content-manager.explorer.read','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2022-08-18 20:55:25.362000','2022-08-18 20:55:25.362000',NULL,NULL),(13,'plugin::content-manager.explorer.update','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2022-08-18 20:55:25.366000','2022-08-18 20:55:25.366000',NULL,NULL),(14,'plugin::content-manager.explorer.delete','plugin::users-permissions.user','{}','[]','2022-08-18 20:55:25.370000','2022-08-18 20:55:25.370000',NULL,NULL),(15,'plugin::content-manager.single-types.configure-view',NULL,'{}','[]','2022-08-18 20:55:25.374000','2022-08-18 20:55:25.374000',NULL,NULL),(16,'plugin::content-manager.collection-types.configure-view',NULL,'{}','[]','2022-08-18 20:55:25.378000','2022-08-18 20:55:25.378000',NULL,NULL),(17,'plugin::content-manager.components.configure-layout',NULL,'{}','[]','2022-08-18 20:55:25.384000','2022-08-18 20:55:25.384000',NULL,NULL),(18,'plugin::content-type-builder.read',NULL,'{}','[]','2022-08-18 20:55:25.389000','2022-08-18 20:55:25.389000',NULL,NULL),(19,'plugin::email.settings.read',NULL,'{}','[]','2022-08-18 20:55:25.394000','2022-08-18 20:55:25.394000',NULL,NULL),(20,'plugin::upload.read',NULL,'{}','[]','2022-08-18 20:55:25.398000','2022-08-18 20:55:25.398000',NULL,NULL),(21,'plugin::upload.assets.create',NULL,'{}','[]','2022-08-18 20:55:25.402000','2022-08-18 20:55:25.402000',NULL,NULL),(22,'plugin::upload.assets.update',NULL,'{}','[]','2022-08-18 20:55:25.406000','2022-08-18 20:55:25.406000',NULL,NULL),(23,'plugin::upload.assets.download',NULL,'{}','[]','2022-08-18 20:55:25.409000','2022-08-18 20:55:25.409000',NULL,NULL),(24,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-08-18 20:55:25.413000','2022-08-18 20:55:25.413000',NULL,NULL),(25,'plugin::upload.settings.read',NULL,'{}','[]','2022-08-18 20:55:25.417000','2022-08-18 20:55:25.417000',NULL,NULL),(26,'plugin::users-permissions.roles.create',NULL,'{}','[]','2022-08-18 20:55:25.421000','2022-08-18 20:55:25.421000',NULL,NULL),(27,'plugin::users-permissions.roles.read',NULL,'{}','[]','2022-08-18 20:55:25.424000','2022-08-18 20:55:25.424000',NULL,NULL),(28,'plugin::users-permissions.roles.update',NULL,'{}','[]','2022-08-18 20:55:25.428000','2022-08-18 20:55:25.428000',NULL,NULL),(29,'plugin::users-permissions.roles.delete',NULL,'{}','[]','2022-08-18 20:55:25.432000','2022-08-18 20:55:25.432000',NULL,NULL),(30,'plugin::users-permissions.providers.read',NULL,'{}','[]','2022-08-18 20:55:25.436000','2022-08-18 20:55:25.436000',NULL,NULL),(31,'plugin::users-permissions.providers.update',NULL,'{}','[]','2022-08-18 20:55:25.440000','2022-08-18 20:55:25.440000',NULL,NULL),(32,'plugin::users-permissions.email-templates.read',NULL,'{}','[]','2022-08-18 20:55:25.444000','2022-08-18 20:55:25.444000',NULL,NULL),(33,'plugin::users-permissions.email-templates.update',NULL,'{}','[]','2022-08-18 20:55:25.448000','2022-08-18 20:55:25.448000',NULL,NULL),(34,'plugin::users-permissions.advanced-settings.read',NULL,'{}','[]','2022-08-18 20:55:25.452000','2022-08-18 20:55:25.452000',NULL,NULL),(35,'plugin::users-permissions.advanced-settings.update',NULL,'{}','[]','2022-08-18 20:55:25.456000','2022-08-18 20:55:25.456000',NULL,NULL),(36,'plugin::i18n.locale.create',NULL,'{}','[]','2022-08-18 20:55:25.460000','2022-08-18 20:55:25.460000',NULL,NULL),(37,'plugin::i18n.locale.read',NULL,'{}','[]','2022-08-18 20:55:25.464000','2022-08-18 20:55:25.464000',NULL,NULL),(38,'plugin::i18n.locale.update',NULL,'{}','[]','2022-08-18 20:55:25.468000','2022-08-18 20:55:25.468000',NULL,NULL),(39,'plugin::i18n.locale.delete',NULL,'{}','[]','2022-08-18 20:55:25.471000','2022-08-18 20:55:25.471000',NULL,NULL),(40,'admin::marketplace.read',NULL,'{}','[]','2022-08-18 20:55:25.476000','2022-08-18 20:55:25.476000',NULL,NULL),(41,'admin::marketplace.plugins.install',NULL,'{}','[]','2022-08-18 20:55:25.480000','2022-08-18 20:55:25.480000',NULL,NULL),(42,'admin::marketplace.plugins.uninstall',NULL,'{}','[]','2022-08-18 20:55:25.484000','2022-08-18 20:55:25.484000',NULL,NULL),(43,'admin::webhooks.create',NULL,'{}','[]','2022-08-18 20:55:25.488000','2022-08-18 20:55:25.488000',NULL,NULL),(44,'admin::webhooks.read',NULL,'{}','[]','2022-08-18 20:55:25.492000','2022-08-18 20:55:25.492000',NULL,NULL),(45,'admin::webhooks.update',NULL,'{}','[]','2022-08-18 20:55:25.495000','2022-08-18 20:55:25.495000',NULL,NULL),(46,'admin::webhooks.delete',NULL,'{}','[]','2022-08-18 20:55:25.499000','2022-08-18 20:55:25.499000',NULL,NULL),(47,'admin::users.create',NULL,'{}','[]','2022-08-18 20:55:25.503000','2022-08-18 20:55:25.503000',NULL,NULL),(48,'admin::users.read',NULL,'{}','[]','2022-08-18 20:55:25.507000','2022-08-18 20:55:25.507000',NULL,NULL),(49,'admin::users.update',NULL,'{}','[]','2022-08-18 20:55:25.511000','2022-08-18 20:55:25.511000',NULL,NULL),(50,'admin::users.delete',NULL,'{}','[]','2022-08-18 20:55:25.515000','2022-08-18 20:55:25.515000',NULL,NULL),(51,'admin::roles.create',NULL,'{}','[]','2022-08-18 20:55:25.519000','2022-08-18 20:55:25.519000',NULL,NULL),(52,'admin::roles.read',NULL,'{}','[]','2022-08-18 20:55:25.523000','2022-08-18 20:55:25.523000',NULL,NULL),(53,'admin::roles.update',NULL,'{}','[]','2022-08-18 20:55:25.528000','2022-08-18 20:55:25.528000',NULL,NULL),(54,'admin::roles.delete',NULL,'{}','[]','2022-08-18 20:55:25.532000','2022-08-18 20:55:25.532000',NULL,NULL),(55,'admin::api-tokens.create',NULL,'{}','[]','2022-08-18 20:55:25.535000','2022-08-18 20:55:25.535000',NULL,NULL),(56,'admin::api-tokens.read',NULL,'{}','[]','2022-08-18 20:55:25.540000','2022-08-18 20:55:25.540000',NULL,NULL),(57,'admin::api-tokens.update',NULL,'{}','[]','2022-08-18 20:55:25.543000','2022-08-18 20:55:25.543000',NULL,NULL),(58,'admin::api-tokens.delete',NULL,'{}','[]','2022-08-18 20:55:25.548000','2022-08-18 20:55:25.548000',NULL,NULL),(59,'admin::project-settings.update',NULL,'{}','[]','2022-08-18 20:55:25.552000','2022-08-18 20:55:25.552000',NULL,NULL),(60,'admin::project-settings.read',NULL,'{}','[]','2022-08-18 20:55:25.556000','2022-08-18 20:55:25.556000',NULL,NULL),(69,'plugin::content-manager.explorer.delete','api::global.global','{\"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.696000','2022-08-18 22:00:51.696000',NULL,NULL),(70,'plugin::content-manager.explorer.publish','api::global.global','{\"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.700000','2022-08-18 22:00:51.700000',NULL,NULL),(71,'plugin::content-manager.explorer.create','api::gallery.gallery','{\"fields\": [\"heading\", \"images\", \"cover\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.703000','2022-08-18 22:00:51.703000',NULL,NULL),(72,'plugin::content-manager.explorer.read','api::gallery.gallery','{\"fields\": [\"heading\", \"images\", \"cover\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.706000','2022-08-18 22:00:51.706000',NULL,NULL),(73,'plugin::content-manager.explorer.update','api::gallery.gallery','{\"fields\": [\"heading\", \"images\", \"cover\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.709000','2022-08-18 22:00:51.709000',NULL,NULL),(74,'plugin::content-manager.explorer.delete','api::gallery.gallery','{\"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.712000','2022-08-18 22:00:51.712000',NULL,NULL),(75,'plugin::content-manager.explorer.publish','api::gallery.gallery','{\"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.715000','2022-08-18 22:00:51.715000',NULL,NULL),(76,'plugin::content-manager.explorer.create','api::color.color','{\"fields\": [\"heading\", \"background\", \"categories.heading\", \"categories.colors.img\", \"categories.colors.title\", \"categories.colors.lead\", \"info\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.718000','2022-08-18 22:00:51.718000',NULL,NULL),(77,'plugin::content-manager.explorer.read','api::color.color','{\"fields\": [\"heading\", \"background\", \"categories.heading\", \"categories.colors.img\", \"categories.colors.title\", \"categories.colors.lead\", \"info\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.721000','2022-08-18 22:00:51.721000',NULL,NULL),(78,'plugin::content-manager.explorer.update','api::color.color','{\"fields\": [\"heading\", \"background\", \"categories.heading\", \"categories.colors.img\", \"categories.colors.title\", \"categories.colors.lead\", \"info\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.725000','2022-08-18 22:00:51.725000',NULL,NULL),(79,'plugin::content-manager.explorer.delete','api::color.color','{\"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.728000','2022-08-18 22:00:51.728000',NULL,NULL),(80,'plugin::content-manager.explorer.publish','api::color.color','{\"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.731000','2022-08-18 22:00:51.731000',NULL,NULL),(81,'plugin::content-manager.explorer.create','api::offer-page.offer-page','{\"fields\": [\"heading\", \"background\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.733000','2022-08-18 22:00:51.733000',NULL,NULL),(82,'plugin::content-manager.explorer.read','api::offer-page.offer-page','{\"fields\": [\"heading\", \"background\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.737000','2022-08-18 22:00:51.737000',NULL,NULL),(83,'plugin::content-manager.explorer.update','api::offer-page.offer-page','{\"fields\": [\"heading\", \"background\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.740000','2022-08-18 22:00:51.740000',NULL,NULL),(84,'plugin::content-manager.explorer.delete','api::offer-page.offer-page','{\"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.743000','2022-08-18 22:00:51.743000',NULL,NULL),(85,'plugin::content-manager.explorer.publish','api::offer-page.offer-page','{\"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.745000','2022-08-18 22:00:51.745000',NULL,NULL),(89,'plugin::content-manager.explorer.delete','api::home.home','{\"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.748000','2022-08-18 22:00:51.748000',NULL,NULL),(90,'plugin::content-manager.explorer.publish','api::home.home','{\"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.751000','2022-08-18 22:00:51.751000',NULL,NULL),(91,'plugin::content-manager.explorer.create','api::home.home','{\"fields\": [\"slider.heading\", \"slider.img\", \"slider.lead\", \"slider.buttonLeft\", \"slider.buttonRight\", \"autoplayDelay\", \"splitSection\", \"imgSection.heading\", \"imgSection.list.heading\", \"imgSection.list.lead\", \"imgSection.list.icon\", \"imgSection.img\", \"delivery.heading\", \"delivery.lead\", \"delivery.list.item\", \"garageSubstrate.heading\", \"garageSubstrate.lead\", \"garageSubstrate.list.item\", \"prepareGarage.heading\", \"prepareGarage.lead\", \"prepareGarage.list.heading\", \"prepareGarage.list.lead\", \"prepareGarage.list.icon\", \"prepareGarage.img\", \"infobox.lead\", \"infobox.icon\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.754000','2022-08-18 22:00:51.754000',NULL,NULL),(92,'plugin::content-manager.explorer.read','api::home.home','{\"fields\": [\"slider.heading\", \"slider.img\", \"slider.lead\", \"slider.buttonLeft\", \"slider.buttonRight\", \"autoplayDelay\", \"splitSection\", \"imgSection.heading\", \"imgSection.list.heading\", \"imgSection.list.lead\", \"imgSection.list.icon\", \"imgSection.img\", \"delivery.heading\", \"delivery.lead\", \"delivery.list.item\", \"garageSubstrate.heading\", \"garageSubstrate.lead\", \"garageSubstrate.list.item\", \"prepareGarage.heading\", \"prepareGarage.lead\", \"prepareGarage.list.heading\", \"prepareGarage.list.lead\", \"prepareGarage.list.icon\", \"prepareGarage.img\", \"infobox.lead\", \"infobox.icon\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.756000','2022-08-18 22:00:51.756000',NULL,NULL),(93,'plugin::content-manager.explorer.update','api::home.home','{\"fields\": [\"slider.heading\", \"slider.img\", \"slider.lead\", \"slider.buttonLeft\", \"slider.buttonRight\", \"autoplayDelay\", \"splitSection\", \"imgSection.heading\", \"imgSection.list.heading\", \"imgSection.list.lead\", \"imgSection.list.icon\", \"imgSection.img\", \"delivery.heading\", \"delivery.lead\", \"delivery.list.item\", \"garageSubstrate.heading\", \"garageSubstrate.lead\", \"garageSubstrate.list.item\", \"prepareGarage.heading\", \"prepareGarage.lead\", \"prepareGarage.list.heading\", \"prepareGarage.list.lead\", \"prepareGarage.list.icon\", \"prepareGarage.img\", \"infobox.lead\", \"infobox.icon\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.759000','2022-08-18 22:00:51.759000',NULL,NULL),(97,'plugin::content-manager.explorer.delete','api::category.category','{\"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.763000','2022-08-18 22:00:51.763000',NULL,NULL),(98,'plugin::content-manager.explorer.publish','api::category.category','{\"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.767000','2022-08-18 22:00:51.767000',NULL,NULL),(102,'plugin::content-manager.explorer.delete','api::offer.offer','{\"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.770000','2022-08-18 22:00:51.770000',NULL,NULL),(103,'plugin::content-manager.explorer.publish','api::offer.offer','{\"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.772000','2022-08-18 22:00:51.772000',NULL,NULL),(104,'plugin::content-manager.explorer.create','api::category.category','{\"fields\": [\"name\", \"offers\", \"slug\", \"thumbnail\", \"background\", \"addInfoByCat\", \"description\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.775000','2022-08-18 22:00:51.775000',NULL,NULL),(106,'plugin::content-manager.explorer.read','api::category.category','{\"fields\": [\"name\", \"offers\", \"slug\", \"thumbnail\", \"background\", \"addInfoByCat\", \"description\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.778000','2022-08-18 22:00:51.778000',NULL,NULL),(108,'plugin::content-manager.explorer.update','api::category.category','{\"fields\": [\"name\", \"offers\", \"slug\", \"thumbnail\", \"background\", \"addInfoByCat\", \"description\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.781000','2022-08-18 22:00:51.781000',NULL,NULL),(110,'plugin::content-manager.explorer.create','api::offer.offer','{\"fields\": [\"name\", \"category\", \"slug\", \"images\", \"description\", \"addInfo\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.783000','2022-08-18 22:00:51.783000',NULL,NULL),(111,'plugin::content-manager.explorer.read','api::offer.offer','{\"fields\": [\"name\", \"category\", \"slug\", \"images\", \"description\", \"addInfo\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.786000','2022-08-18 22:00:51.786000',NULL,NULL),(112,'plugin::content-manager.explorer.update','api::offer.offer','{\"fields\": [\"name\", \"category\", \"slug\", \"images\", \"description\", \"addInfo\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.keywords\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-18 22:00:51.789000','2022-08-18 22:00:51.789000',NULL,NULL),(113,'plugin::content-manager.explorer.create','api::global.global','{\"fields\": [\"logo\", \"main_menu.nav_1\", \"main_menu.nav_2\", \"main_menu.nav_3\", \"main_menu.nav_4\", \"main_menu.nav_5\", \"main_menu.nav_6\", \"main_menu.nav_7\", \"footerInfo.title\", \"footerInfo.content\", \"footerInfo.link\", \"footerInfo.type\", \"footerInfo.contentSecond\", \"footerInfo.break\", \"footerForm.heading\", \"footerForm.lead\", \"footerForm.name\", \"footerForm.email\", \"footerForm.phone\", \"footerForm.message\", \"footerForm.button\", \"footerForm.downloadIcon\", \"footerForm.submitMessage\", \"footerForm.errorMessage\", \"footerHeading\", \"companyName\", \"relatedText\", \"categoryText\", \"favicon\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-19 11:39:14.673000','2022-08-19 11:39:14.673000',NULL,NULL),(114,'plugin::content-manager.explorer.read','api::global.global','{\"fields\": [\"logo\", \"main_menu.nav_1\", \"main_menu.nav_2\", \"main_menu.nav_3\", \"main_menu.nav_4\", \"main_menu.nav_5\", \"main_menu.nav_6\", \"main_menu.nav_7\", \"footerInfo.title\", \"footerInfo.content\", \"footerInfo.link\", \"footerInfo.type\", \"footerInfo.contentSecond\", \"footerInfo.break\", \"footerForm.heading\", \"footerForm.lead\", \"footerForm.name\", \"footerForm.email\", \"footerForm.phone\", \"footerForm.message\", \"footerForm.button\", \"footerForm.downloadIcon\", \"footerForm.submitMessage\", \"footerForm.errorMessage\", \"footerHeading\", \"companyName\", \"relatedText\", \"categoryText\", \"favicon\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-19 11:39:14.680000','2022-08-19 11:39:14.680000',NULL,NULL),(115,'plugin::content-manager.explorer.update','api::global.global','{\"fields\": [\"logo\", \"main_menu.nav_1\", \"main_menu.nav_2\", \"main_menu.nav_3\", \"main_menu.nav_4\", \"main_menu.nav_5\", \"main_menu.nav_6\", \"main_menu.nav_7\", \"footerInfo.title\", \"footerInfo.content\", \"footerInfo.link\", \"footerInfo.type\", \"footerInfo.contentSecond\", \"footerInfo.break\", \"footerForm.heading\", \"footerForm.lead\", \"footerForm.name\", \"footerForm.email\", \"footerForm.phone\", \"footerForm.message\", \"footerForm.button\", \"footerForm.downloadIcon\", \"footerForm.submitMessage\", \"footerForm.errorMessage\", \"footerHeading\", \"companyName\", \"relatedText\", \"categoryText\", \"favicon\"], \"locales\": [\"pl-PL\", \"sk-SK\", \"cs-CZ\"]}','[]','2022-08-19 11:39:14.683000','2022-08-19 11:39:14.683000',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions_role_links`
--

DROP TABLE IF EXISTS `admin_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions_role_links` (
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  KEY `admin_permissions_role_links_fk` (`permission_id`),
  KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions_role_links`
--

LOCK TABLES `admin_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `admin_permissions_role_links` DISABLE KEYS */;
INSERT INTO `admin_permissions_role_links` VALUES (1,2),(2,2),(3,2),(4,2),(5,2),(6,3),(7,3),(8,3),(9,3),(10,3),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(89,1),(90,1),(91,1),(92,1),(93,1),(97,1),(98,1),(102,1),(103,1),(104,1),(106,1),(108,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1);
/*!40000 ALTER TABLE `admin_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  KEY `admin_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2022-08-18 20:55:25.286000','2022-08-18 20:55:25.286000',NULL,NULL),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2022-08-18 20:55:25.292000','2022-08-18 20:55:25.292000',NULL,NULL),(3,'Author','strapi-author','Authors can manage the content they have created.','2022-08-18 20:55:25.295000','2022-08-18 20:55:25.295000',NULL,NULL);
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_users_created_by_id_fk` (`created_by_id`),
  KEY `admin_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Przemysław','Majka',NULL,'batmax.web@gmail.com','$2a$10$B8TEkaVEV9Qzf89bry5viu10EeEfEs9SzpNS6s1vWoxGXsiiwX5FS',NULL,NULL,1,0,NULL,'2022-08-18 20:58:37.777000','2022-08-18 20:58:37.777000',NULL,NULL);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users_roles_links`
--

DROP TABLE IF EXISTS `admin_users_roles_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users_roles_links` (
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  KEY `admin_users_roles_links_fk` (`user_id`),
  KEY `admin_users_roles_links_inv_fk` (`role_id`),
  CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users_roles_links`
--

LOCK TABLES `admin_users_roles_links` WRITE;
/*!40000 ALTER TABLE `admin_users_roles_links` DISABLE KEYS */;
INSERT INTO `admin_users_roles_links` VALUES (1,1);
/*!40000 ALTER TABLE `admin_users_roles_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `add_info_by_cat` longtext,
  `description` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_created_by_id_fk` (`created_by_id`),
  KEY `categories_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_components`
--

DROP TABLE IF EXISTS `categories_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `categories_field_index` (`field`),
  KEY `categories_component_type_index` (`component_type`),
  KEY `categories_entity_fk` (`entity_id`),
  CONSTRAINT `categories_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_components`
--

LOCK TABLES `categories_components` WRITE;
/*!40000 ALTER TABLE `categories_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_localizations_links`
--

DROP TABLE IF EXISTS `categories_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_localizations_links` (
  `category_id` int unsigned DEFAULT NULL,
  `inv_category_id` int unsigned DEFAULT NULL,
  KEY `categories_localizations_links_fk` (`category_id`),
  KEY `categories_localizations_links_inv_fk` (`inv_category_id`),
  CONSTRAINT `categories_localizations_links_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `categories_localizations_links_inv_fk` FOREIGN KEY (`inv_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_localizations_links`
--

LOCK TABLES `categories_localizations_links` WRITE;
/*!40000 ALTER TABLE `categories_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `info` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `colors_created_by_id_fk` (`created_by_id`),
  KEY `colors_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `colors_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `colors_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors_components`
--

DROP TABLE IF EXISTS `colors_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `colors_field_index` (`field`),
  KEY `colors_component_type_index` (`component_type`),
  KEY `colors_entity_fk` (`entity_id`),
  CONSTRAINT `colors_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors_components`
--

LOCK TABLES `colors_components` WRITE;
/*!40000 ALTER TABLE `colors_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `colors_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors_localizations_links`
--

DROP TABLE IF EXISTS `colors_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors_localizations_links` (
  `color_id` int unsigned DEFAULT NULL,
  `inv_color_id` int unsigned DEFAULT NULL,
  KEY `colors_localizations_links_fk` (`color_id`),
  KEY `colors_localizations_links_inv_fk` (`inv_color_id`),
  CONSTRAINT `colors_localizations_links_fk` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `colors_localizations_links_inv_fk` FOREIGN KEY (`inv_color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors_localizations_links`
--

LOCK TABLES `colors_localizations_links` WRITE;
/*!40000 ALTER TABLE `colors_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `colors_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_colors_categories`
--

DROP TABLE IF EXISTS `components_colors_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_colors_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_colors_categories`
--

LOCK TABLES `components_colors_categories` WRITE;
/*!40000 ALTER TABLE `components_colors_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_colors_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_colors_categories_components`
--

DROP TABLE IF EXISTS `components_colors_categories_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_colors_categories_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_colors_categories_field_index` (`field`),
  KEY `components_colors_categories_component_type_index` (`component_type`),
  KEY `components_colors_categories_entity_fk` (`entity_id`),
  CONSTRAINT `components_colors_categories_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_colors_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_colors_categories_components`
--

LOCK TABLES `components_colors_categories_components` WRITE;
/*!40000 ALTER TABLE `components_colors_categories_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_colors_categories_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_colors_colors`
--

DROP TABLE IF EXISTS `components_colors_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_colors_colors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `lead` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_colors_colors`
--

LOCK TABLES `components_colors_colors` WRITE;
/*!40000 ALTER TABLE `components_colors_colors` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_colors_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_infos`
--

DROP TABLE IF EXISTS `components_home_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_infos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `lead` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_infos`
--

LOCK TABLES `components_home_infos` WRITE;
/*!40000 ALTER TABLE `components_home_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_home_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_home_sliders`
--

DROP TABLE IF EXISTS `components_home_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_home_sliders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `lead` longtext,
  `button_left` varchar(255) DEFAULT NULL,
  `button_right` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_home_sliders`
--

LOCK TABLES `components_home_sliders` WRITE;
/*!40000 ALTER TABLE `components_home_sliders` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_home_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_menu_menu_glownes`
--

DROP TABLE IF EXISTS `components_menu_menu_glownes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_menu_menu_glownes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nav_1` varchar(255) DEFAULT NULL,
  `nav_2` varchar(255) DEFAULT NULL,
  `nav_3` varchar(255) DEFAULT NULL,
  `nav_4` varchar(255) DEFAULT NULL,
  `nav_5` varchar(255) DEFAULT NULL,
  `nav_6` varchar(255) DEFAULT NULL,
  `nav_7` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_menu_menu_glownes`
--

LOCK TABLES `components_menu_menu_glownes` WRITE;
/*!40000 ALTER TABLE `components_menu_menu_glownes` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_menu_menu_glownes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_footer_forms`
--

DROP TABLE IF EXISTS `components_shared_footer_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_footer_forms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `lead` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `button` varchar(255) DEFAULT NULL,
  `submit_message` varchar(255) DEFAULT NULL,
  `error_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_footer_forms`
--

LOCK TABLES `components_shared_footer_forms` WRITE;
/*!40000 ALTER TABLE `components_shared_footer_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_footer_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_footer_infos`
--

DROP TABLE IF EXISTS `components_shared_footer_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_footer_infos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content_second` varchar(255) DEFAULT NULL,
  `break` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_footer_infos`
--

LOCK TABLES `components_shared_footer_infos` WRITE;
/*!40000 ALTER TABLE `components_shared_footer_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_footer_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_list_heading_icon`
--

DROP TABLE IF EXISTS `components_shared_list_heading_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_list_heading_icon` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `lead` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_list_heading_icon`
--

LOCK TABLES `components_shared_list_heading_icon` WRITE;
/*!40000 ALTER TABLE `components_shared_list_heading_icon` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_list_heading_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_list_heading_icon_components`
--

DROP TABLE IF EXISTS `components_shared_list_heading_icon_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_list_heading_icon_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_shared_list_heading_icon_field_index` (`field`),
  KEY `components_shared_list_heading_icon_component_type_index` (`component_type`),
  KEY `components_shared_list_heading_icon_entity_fk` (`entity_id`),
  CONSTRAINT `components_shared_list_heading_icon_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_shared_list_heading_icon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_list_heading_icon_components`
--

LOCK TABLES `components_shared_list_heading_icon_components` WRITE;
/*!40000 ALTER TABLE `components_shared_list_heading_icon_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_list_heading_icon_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_lista_z_ikonamis`
--

DROP TABLE IF EXISTS `components_shared_lista_z_ikonamis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_lista_z_ikonamis` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `lead` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_lista_z_ikonamis`
--

LOCK TABLES `components_shared_lista_z_ikonamis` WRITE;
/*!40000 ALTER TABLE `components_shared_lista_z_ikonamis` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_lista_z_ikonamis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_lista_z_naglowkiems`
--

DROP TABLE IF EXISTS `components_shared_lista_z_naglowkiems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_lista_z_naglowkiems` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `lead` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_lista_z_naglowkiems`
--

LOCK TABLES `components_shared_lista_z_naglowkiems` WRITE;
/*!40000 ALTER TABLE `components_shared_lista_z_naglowkiems` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_lista_z_naglowkiems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_lista_z_naglowkiems_components`
--

DROP TABLE IF EXISTS `components_shared_lista_z_naglowkiems_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_lista_z_naglowkiems_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_shared_lista_z_naglowkiems_field_index` (`field`),
  KEY `components_shared_lista_z_naglowkiems_component_type_index` (`component_type`),
  KEY `components_shared_lista_z_naglowkiems_entity_fk` (`entity_id`),
  CONSTRAINT `components_shared_lista_z_naglowkiems_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_shared_lista_z_naglowkiems` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_lista_z_naglowkiems_components`
--

LOCK TABLES `components_shared_lista_z_naglowkiems_components` WRITE;
/*!40000 ALTER TABLE `components_shared_lista_z_naglowkiems_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_lista_z_naglowkiems_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_listas`
--

DROP TABLE IF EXISTS `components_shared_listas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_listas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_listas`
--

LOCK TABLES `components_shared_listas` WRITE;
/*!40000 ALTER TABLE `components_shared_listas` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_listas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_sekcja_dzielona_listas`
--

DROP TABLE IF EXISTS `components_shared_sekcja_dzielona_listas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_sekcja_dzielona_listas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_sekcja_dzielona_listas`
--

LOCK TABLES `components_shared_sekcja_dzielona_listas` WRITE;
/*!40000 ALTER TABLE `components_shared_sekcja_dzielona_listas` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_sekcja_dzielona_listas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_sekcja_dzielona_listas_components`
--

DROP TABLE IF EXISTS `components_shared_sekcja_dzielona_listas_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_sekcja_dzielona_listas_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_shared_sekcja_dzielona_listas_field_index` (`field`),
  KEY `components_shared_sekcja_dzielona_listas_component_type_index` (`component_type`),
  KEY `components_shared_sekcja_dzielona_listas_entity_fk` (`entity_id`),
  CONSTRAINT `components_shared_sekcja_dzielona_listas_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_shared_sekcja_dzielona_listas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_sekcja_dzielona_listas_components`
--

LOCK TABLES `components_shared_sekcja_dzielona_listas_components` WRITE;
/*!40000 ALTER TABLE `components_shared_sekcja_dzielona_listas_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_sekcja_dzielona_listas_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_sekcja_dzielona_teksts`
--

DROP TABLE IF EXISTS `components_shared_sekcja_dzielona_teksts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_sekcja_dzielona_teksts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `lead` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_sekcja_dzielona_teksts`
--

LOCK TABLES `components_shared_sekcja_dzielona_teksts` WRITE;
/*!40000 ALTER TABLE `components_shared_sekcja_dzielona_teksts` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_sekcja_dzielona_teksts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_sekcja_ze_zdjeciems`
--

DROP TABLE IF EXISTS `components_shared_sekcja_ze_zdjeciems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_sekcja_ze_zdjeciems` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_sekcja_ze_zdjeciems`
--

LOCK TABLES `components_shared_sekcja_ze_zdjeciems` WRITE;
/*!40000 ALTER TABLE `components_shared_sekcja_ze_zdjeciems` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_sekcja_ze_zdjeciems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_sekcja_ze_zdjeciems_components`
--

DROP TABLE IF EXISTS `components_shared_sekcja_ze_zdjeciems_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_sekcja_ze_zdjeciems_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_shared_sekcja_ze_zdjeciems_field_index` (`field`),
  KEY `components_shared_sekcja_ze_zdjeciems_component_type_index` (`component_type`),
  KEY `components_shared_sekcja_ze_zdjeciems_entity_fk` (`entity_id`),
  CONSTRAINT `components_shared_sekcja_ze_zdjeciems_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_shared_sekcja_ze_zdjeciems` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_sekcja_ze_zdjeciems_components`
--

LOCK TABLES `components_shared_sekcja_ze_zdjeciems_components` WRITE;
/*!40000 ALTER TABLE `components_shared_sekcja_ze_zdjeciems_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_sekcja_ze_zdjeciems_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_seos`
--

DROP TABLE IF EXISTS `components_shared_seos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_seos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_seos`
--

LOCK TABLES `components_shared_seos` WRITE;
/*!40000 ALTER TABLE `components_shared_seos` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_seos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_files_folder_path_index` (`folder_path`),
  KEY `files_created_by_id_fk` (`created_by_id`),
  KEY `files_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_folder_links`
--

DROP TABLE IF EXISTS `files_folder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_folder_links` (
  `file_id` int unsigned DEFAULT NULL,
  `folder_id` int unsigned DEFAULT NULL,
  KEY `files_folder_links_fk` (`file_id`),
  KEY `files_folder_links_inv_fk` (`folder_id`),
  CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_folder_links`
--

LOCK TABLES `files_folder_links` WRITE;
/*!40000 ALTER TABLE `files_folder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_folder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_related_morphs`
--

DROP TABLE IF EXISTS `files_related_morphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_related_morphs` (
  `file_id` int unsigned DEFAULT NULL,
  `related_id` int unsigned DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  KEY `files_related_morphs_fk` (`file_id`),
  CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_related_morphs`
--

LOCK TABLES `files_related_morphs` WRITE;
/*!40000 ALTER TABLE `files_related_morphs` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_related_morphs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_created_by_id_fk` (`created_by_id`),
  KEY `galleries_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `galleries_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `galleries_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_components`
--

DROP TABLE IF EXISTS `galleries_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `galleries_field_index` (`field`),
  KEY `galleries_component_type_index` (`component_type`),
  KEY `galleries_entity_fk` (`entity_id`),
  CONSTRAINT `galleries_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_components`
--

LOCK TABLES `galleries_components` WRITE;
/*!40000 ALTER TABLE `galleries_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_localizations_links`
--

DROP TABLE IF EXISTS `galleries_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_localizations_links` (
  `gallery_id` int unsigned DEFAULT NULL,
  `inv_gallery_id` int unsigned DEFAULT NULL,
  KEY `galleries_localizations_links_fk` (`gallery_id`),
  KEY `galleries_localizations_links_inv_fk` (`inv_gallery_id`),
  CONSTRAINT `galleries_localizations_links_fk` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `galleries_localizations_links_inv_fk` FOREIGN KEY (`inv_gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_localizations_links`
--

LOCK TABLES `galleries_localizations_links` WRITE;
/*!40000 ALTER TABLE `galleries_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globals`
--

DROP TABLE IF EXISTS `globals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `globals` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `footer_heading` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `related_text` varchar(255) DEFAULT NULL,
  `category_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `globals_created_by_id_fk` (`created_by_id`),
  KEY `globals_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `globals_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `globals_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globals`
--

LOCK TABLES `globals` WRITE;
/*!40000 ALTER TABLE `globals` DISABLE KEYS */;
/*!40000 ALTER TABLE `globals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globals_components`
--

DROP TABLE IF EXISTS `globals_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `globals_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `globals_field_index` (`field`),
  KEY `globals_component_type_index` (`component_type`),
  KEY `globals_entity_fk` (`entity_id`),
  CONSTRAINT `globals_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globals_components`
--

LOCK TABLES `globals_components` WRITE;
/*!40000 ALTER TABLE `globals_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `globals_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globals_localizations_links`
--

DROP TABLE IF EXISTS `globals_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `globals_localizations_links` (
  `global_id` int unsigned DEFAULT NULL,
  `inv_global_id` int unsigned DEFAULT NULL,
  KEY `globals_localizations_links_fk` (`global_id`),
  KEY `globals_localizations_links_inv_fk` (`inv_global_id`),
  CONSTRAINT `globals_localizations_links_fk` FOREIGN KEY (`global_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `globals_localizations_links_inv_fk` FOREIGN KEY (`inv_global_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globals_localizations_links`
--

LOCK TABLES `globals_localizations_links` WRITE;
/*!40000 ALTER TABLE `globals_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `globals_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homes`
--

DROP TABLE IF EXISTS `homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `autoplay_delay` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homes_created_by_id_fk` (`created_by_id`),
  KEY `homes_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `homes_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `homes_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homes`
--

LOCK TABLES `homes` WRITE;
/*!40000 ALTER TABLE `homes` DISABLE KEYS */;
/*!40000 ALTER TABLE `homes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homes_components`
--

DROP TABLE IF EXISTS `homes_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homes_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `homes_field_index` (`field`),
  KEY `homes_component_type_index` (`component_type`),
  KEY `homes_entity_fk` (`entity_id`),
  CONSTRAINT `homes_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `homes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homes_components`
--

LOCK TABLES `homes_components` WRITE;
/*!40000 ALTER TABLE `homes_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `homes_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homes_localizations_links`
--

DROP TABLE IF EXISTS `homes_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homes_localizations_links` (
  `home_id` int unsigned DEFAULT NULL,
  `inv_home_id` int unsigned DEFAULT NULL,
  KEY `homes_localizations_links_fk` (`home_id`),
  KEY `homes_localizations_links_inv_fk` (`inv_home_id`),
  CONSTRAINT `homes_localizations_links_fk` FOREIGN KEY (`home_id`) REFERENCES `homes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `homes_localizations_links_inv_fk` FOREIGN KEY (`inv_home_id`) REFERENCES `homes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homes_localizations_links`
--

LOCK TABLES `homes_localizations_links` WRITE;
/*!40000 ALTER TABLE `homes_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `homes_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locale`
--

DROP TABLE IF EXISTS `i18n_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `i18n_locale` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locale`
--

LOCK TABLES `i18n_locale` WRITE;
/*!40000 ALTER TABLE `i18n_locale` DISABLE KEYS */;
INSERT INTO `i18n_locale` VALUES (3,'Polski','pl-PL','2022-08-18 22:00:17.047000','2022-08-18 22:00:17.047000',1,1),(4,'Słowacki','sk-SK','2022-08-18 22:00:40.544000','2022-08-18 22:00:40.544000',1,1),(5,'Czeski','cs-CZ','2022-08-18 22:00:51.593000','2022-08-18 22:00:51.593000',1,1);
/*!40000 ALTER TABLE `i18n_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext,
  `add_info` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `offers_slug_unique` (`slug`),
  KEY `offers_created_by_id_fk` (`created_by_id`),
  KEY `offers_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `offers_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `offers_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers_category_links`
--

DROP TABLE IF EXISTS `offers_category_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers_category_links` (
  `offer_id` int unsigned DEFAULT NULL,
  `category_id` int unsigned DEFAULT NULL,
  KEY `offers_category_links_fk` (`offer_id`),
  KEY `offers_category_links_inv_fk` (`category_id`),
  CONSTRAINT `offers_category_links_fk` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `offers_category_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers_category_links`
--

LOCK TABLES `offers_category_links` WRITE;
/*!40000 ALTER TABLE `offers_category_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers_category_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers_components`
--

DROP TABLE IF EXISTS `offers_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `offers_field_index` (`field`),
  KEY `offers_component_type_index` (`component_type`),
  KEY `offers_entity_fk` (`entity_id`),
  CONSTRAINT `offers_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers_components`
--

LOCK TABLES `offers_components` WRITE;
/*!40000 ALTER TABLE `offers_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers_localizations_links`
--

DROP TABLE IF EXISTS `offers_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers_localizations_links` (
  `offer_id` int unsigned DEFAULT NULL,
  `inv_offer_id` int unsigned DEFAULT NULL,
  KEY `offers_localizations_links_fk` (`offer_id`),
  KEY `offers_localizations_links_inv_fk` (`inv_offer_id`),
  CONSTRAINT `offers_localizations_links_fk` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `offers_localizations_links_inv_fk` FOREIGN KEY (`inv_offer_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers_localizations_links`
--

LOCK TABLES `offers_localizations_links` WRITE;
/*!40000 ALTER TABLE `offers_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers_page`
--

DROP TABLE IF EXISTS `offers_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers_page` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `offers_page_created_by_id_fk` (`created_by_id`),
  KEY `offers_page_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `offers_page_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `offers_page_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers_page`
--

LOCK TABLES `offers_page` WRITE;
/*!40000 ALTER TABLE `offers_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers_page_components`
--

DROP TABLE IF EXISTS `offers_page_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers_page_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `offers_page_field_index` (`field`),
  KEY `offers_page_component_type_index` (`component_type`),
  KEY `offers_page_entity_fk` (`entity_id`),
  CONSTRAINT `offers_page_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `offers_page` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers_page_components`
--

LOCK TABLES `offers_page_components` WRITE;
/*!40000 ALTER TABLE `offers_page_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers_page_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers_page_localizations_links`
--

DROP TABLE IF EXISTS `offers_page_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers_page_localizations_links` (
  `offer_page_id` int unsigned DEFAULT NULL,
  `inv_offer_page_id` int unsigned DEFAULT NULL,
  KEY `offers_page_localizations_links_fk` (`offer_page_id`),
  KEY `offers_page_localizations_links_inv_fk` (`inv_offer_page_id`),
  CONSTRAINT `offers_page_localizations_links_fk` FOREIGN KEY (`offer_page_id`) REFERENCES `offers_page` (`id`) ON DELETE CASCADE,
  CONSTRAINT `offers_page_localizations_links_inv_fk` FOREIGN KEY (`inv_offer_page_id`) REFERENCES `offers_page` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers_page_localizations_links`
--

LOCK TABLES `offers_page_localizations_links` WRITE;
/*!40000 ALTER TABLE `offers_page_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers_page_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_tokens`
--

DROP TABLE IF EXISTS `strapi_api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_tokens`
--

LOCK TABLES `strapi_api_tokens` WRITE;
/*!40000 ALTER TABLE `strapi_api_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_core_store_settings`
--

DROP TABLE IF EXISTS `strapi_core_store_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_core_store_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_core_store_settings`
--

LOCK TABLES `strapi_core_store_settings` WRITE;
/*!40000 ALTER TABLE `strapi_core_store_settings` DISABLE KEYS */;
INSERT INTO `strapi_core_store_settings` VALUES (1,'strapi_content_types_schema','{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Kategorie\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"name\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true},\"offers\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::offer.offer\",\"mappedBy\":\"category\"},\"slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"uid\",\"targetField\":\"name\"},\"thumbnail\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"background\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"required\":true},\"addInfoByCat\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\"},\"description\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\"},\"seo\":{\"type\":\"component\",\"repeatable\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Kategorie\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"name\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true},\"offers\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::offer.offer\",\"mappedBy\":\"category\"},\"slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"uid\",\"targetField\":\"name\"},\"thumbnail\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"background\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"required\":true},\"addInfoByCat\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\"},\"description\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\"},\"seo\":{\"type\":\"component\",\"repeatable\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.seo\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category\",\"connection\":\"default\",\"uid\":\"api::category.category\",\"apiName\":\"category\",\"globalId\":\"Category\",\"actions\":{},\"lifecycles\":{}},\"api::color.color\":{\"kind\":\"singleType\",\"collectionName\":\"colors\",\"info\":{\"singularName\":\"color\",\"pluralName\":\"colors\",\"displayName\":\"Kolory Blach\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"heading\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"background\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"categories\":{\"type\":\"component\",\"repeatable\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"colors.category\"},\"info\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::color.color\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"colors\",\"info\":{\"singularName\":\"color\",\"pluralName\":\"colors\",\"displayName\":\"Kolory Blach\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"heading\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"background\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"categories\":{\"type\":\"component\",\"repeatable\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"colors.category\"},\"info\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.seo\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"color\",\"connection\":\"default\",\"uid\":\"api::color.color\",\"apiName\":\"color\",\"globalId\":\"Color\",\"actions\":{},\"lifecycles\":{}},\"api::gallery.gallery\":{\"kind\":\"singleType\",\"collectionName\":\"galleries\",\"info\":{\"singularName\":\"gallery\",\"pluralName\":\"galleries\",\"displayName\":\"Galeria\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"heading\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"images\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"cover\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"required\":true},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::gallery.gallery\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"galleries\",\"info\":{\"singularName\":\"gallery\",\"pluralName\":\"galleries\",\"displayName\":\"Galeria\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"heading\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"images\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"cover\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"required\":true},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.seo\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"gallery\",\"connection\":\"default\",\"uid\":\"api::gallery.gallery\",\"apiName\":\"gallery\",\"globalId\":\"Gallery\",\"actions\":{},\"lifecycles\":{}},\"api::global.global\":{\"kind\":\"singleType\",\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Globalne\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"logo\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"main_menu\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"menu.menu-glowne\",\"required\":true},\"footerInfo\":{\"type\":\"component\",\"repeatable\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.footer-info\"},\"footerForm\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.footer-form\",\"required\":true},\"footerHeading\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true},\"companyName\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"required\":true},\"relatedText\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"categoryText\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"favicon\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::global.global\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Globalne\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"logo\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"main_menu\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"menu.menu-glowne\",\"required\":true},\"footerInfo\":{\"type\":\"component\",\"repeatable\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.footer-info\"},\"footerForm\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.footer-form\",\"required\":true},\"footerHeading\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true},\"companyName\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"required\":true},\"relatedText\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"categoryText\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"favicon\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"required\":true}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"global\",\"connection\":\"default\",\"uid\":\"api::global.global\",\"apiName\":\"global\",\"globalId\":\"Global\",\"actions\":{},\"lifecycles\":{}},\"api::home.home\":{\"kind\":\"singleType\",\"collectionName\":\"homes\",\"info\":{\"singularName\":\"home\",\"pluralName\":\"homes\",\"displayName\":\"Strona Główna\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"slider\":{\"type\":\"component\",\"repeatable\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"home.slider\"},\"autoplayDelay\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"integer\",\"required\":true},\"splitSection\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"dynamiczone\",\"components\":[\"shared.sekcja-dzielona-lista\",\"shared.sekcja-dzielona-tekst\"]},\"imgSection\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.sekcja-ze-zdjeciem\"},\"delivery\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.lista-z-naglowkiem\"},\"garageSubstrate\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.lista-z-naglowkiem\"},\"prepareGarage\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.lista-z-naglowkiem-i-ikonami\"},\"infobox\":{\"type\":\"component\",\"repeatable\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"home.info\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::home.home\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"homes\",\"info\":{\"singularName\":\"home\",\"pluralName\":\"homes\",\"displayName\":\"Strona Główna\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"slider\":{\"type\":\"component\",\"repeatable\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"home.slider\"},\"autoplayDelay\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"integer\",\"required\":true},\"splitSection\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"dynamiczone\",\"components\":[\"shared.sekcja-dzielona-lista\",\"shared.sekcja-dzielona-tekst\"]},\"imgSection\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.sekcja-ze-zdjeciem\"},\"delivery\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.lista-z-naglowkiem\"},\"garageSubstrate\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.lista-z-naglowkiem\"},\"prepareGarage\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.lista-z-naglowkiem-i-ikonami\"},\"infobox\":{\"type\":\"component\",\"repeatable\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"home.info\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.seo\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"home\",\"connection\":\"default\",\"uid\":\"api::home.home\",\"apiName\":\"home\",\"globalId\":\"Home\",\"actions\":{},\"lifecycles\":{}},\"api::offer.offer\":{\"kind\":\"collectionType\",\"collectionName\":\"offers\",\"info\":{\"singularName\":\"offer\",\"pluralName\":\"offers\",\"displayName\":\"Oferty\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"name\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":true,\"required\":true},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"offers\"},\"slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"uid\",\"targetField\":\"name\"},\"images\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":true,\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"description\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"required\":true},\"addInfo\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\"},\"seo\":{\"type\":\"component\",\"repeatable\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::offer.offer\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"offers\",\"info\":{\"singularName\":\"offer\",\"pluralName\":\"offers\",\"displayName\":\"Oferty\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"name\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":true,\"required\":true},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"offers\"},\"slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"uid\",\"targetField\":\"name\"},\"images\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":true,\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"description\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"required\":true},\"addInfo\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\"},\"seo\":{\"type\":\"component\",\"repeatable\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.seo\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"offer\",\"connection\":\"default\",\"uid\":\"api::offer.offer\",\"apiName\":\"offer\",\"globalId\":\"Offer\",\"actions\":{},\"lifecycles\":{}},\"api::offer-page.offer-page\":{\"kind\":\"singleType\",\"collectionName\":\"offers_page\",\"info\":{\"singularName\":\"offer-page\",\"pluralName\":\"offers-page\",\"displayName\":\"Oferta\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"heading\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"background\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"required\":true},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::offer-page.offer-page\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"offers_page\",\"info\":{\"singularName\":\"offer-page\",\"pluralName\":\"offers-page\",\"displayName\":\"Oferta\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"heading\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"background\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"required\":true},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"shared.seo\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"offer-page\",\"connection\":\"default\",\"uid\":\"api::offer-page.offer-page\",\"apiName\":\"offer-page\",\"globalId\":\"OfferPage\",\"actions\":{},\"lifecycles\":{}}}','object',NULL,NULL),(2,'plugin_content_manager_configuration_content_types::admin::permission','{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object',NULL,NULL),(3,'plugin_content_manager_configuration_content_types::admin::user','{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object',NULL,NULL),(4,'plugin_content_manager_configuration_content_types::admin::role','{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object',NULL,NULL),(5,'plugin_content_manager_configuration_content_types::admin::api-token','{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}]]}}','object',NULL,NULL),(6,'plugin_content_manager_configuration_content_types::plugin::upload.file','{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"folder\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folderPath\",\"size\":6}]]}}','object',NULL,NULL),(7,'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission','{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}]]}}','object',NULL,NULL),(8,'plugin_content_manager_configuration_content_types::plugin::upload.folder','{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"editRelations\":[\"parent\",\"children\",\"files\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"path\",\"size\":6}]]}}','object',NULL,NULL),(9,'plugin_content_manager_configuration_content_types::plugin::users-permissions.role','{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object',NULL,NULL),(10,'plugin_content_manager_configuration_content_types::plugin::users-permissions.user','{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object',NULL,NULL),(11,'plugin_content_manager_configuration_content_types::plugin::i18n.locale','{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object',NULL,NULL),(12,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}','object',NULL,NULL),(13,'plugin_upload_metrics','{\"weeklySchedule\":\"25 0 21 * * 4\",\"lastWeeklyUpdate\":1660849225022}','object',NULL,NULL),(14,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object',NULL,NULL),(15,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object',NULL,NULL),(16,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":false,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":\"\",\"default_role\":\"authenticated\"}','object',NULL,NULL),(17,'plugin_i18n_default_locale','\"pl-PL\"','string',NULL,NULL),(18,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object',NULL,NULL),(20,'plugin_content_manager_configuration_content_types::api::global.global','{\"uid\":\"api::global.global\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}},\"main_menu\":{\"edit\":{\"label\":\"main_menu\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"main_menu\",\"searchable\":false,\"sortable\":false}},\"footerInfo\":{\"edit\":{\"label\":\"footerInfo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"footerInfo\",\"searchable\":false,\"sortable\":false}},\"footerForm\":{\"edit\":{\"label\":\"footerForm\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"footerForm\",\"searchable\":false,\"sortable\":false}},\"footerHeading\":{\"edit\":{\"label\":\"footerHeading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"footerHeading\",\"searchable\":true,\"sortable\":true}},\"companyName\":{\"edit\":{\"label\":\"companyName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"companyName\",\"searchable\":true,\"sortable\":true}},\"relatedText\":{\"edit\":{\"label\":\"relatedText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"relatedText\",\"searchable\":true,\"sortable\":true}},\"categoryText\":{\"edit\":{\"label\":\"categoryText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"categoryText\",\"searchable\":true,\"sortable\":true}},\"favicon\":{\"edit\":{\"label\":\"favicon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"favicon\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"logo\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"logo\",\"size\":6}],[{\"name\":\"main_menu\",\"size\":12}],[{\"name\":\"footerInfo\",\"size\":12}],[{\"name\":\"footerForm\",\"size\":12}],[{\"name\":\"footerHeading\",\"size\":6},{\"name\":\"companyName\",\"size\":6}],[{\"name\":\"relatedText\",\"size\":6},{\"name\":\"categoryText\",\"size\":6}],[{\"name\":\"favicon\",\"size\":6}]],\"editRelations\":[]}}','object',NULL,NULL),(21,'plugin_content_manager_configuration_components::colors.category','{\"uid\":\"colors.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"colors\":{\"edit\":{\"label\":\"colors\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"colors\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"colors\"],\"edit\":[[{\"name\":\"heading\",\"size\":6}],[{\"name\":\"colors\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(22,'plugin_content_manager_configuration_components::colors.colors','{\"uid\":\"colors.colors\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"lead\":{\"edit\":{\"label\":\"lead\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lead\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"img\",\"title\",\"lead\"],\"edit\":[[{\"name\":\"img\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"lead\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(23,'plugin_content_manager_configuration_components::home.info','{\"uid\":\"home.info\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"lead\":{\"edit\":{\"label\":\"lead\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lead\",\"searchable\":false,\"sortable\":false}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"icon\"],\"edit\":[[{\"name\":\"lead\",\"size\":12}],[{\"name\":\"icon\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(24,'plugin_content_manager_configuration_components::home.slider','{\"uid\":\"home.slider\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}},\"lead\":{\"edit\":{\"label\":\"lead\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lead\",\"searchable\":true,\"sortable\":true}},\"buttonLeft\":{\"edit\":{\"label\":\"buttonLeft\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"buttonLeft\",\"searchable\":true,\"sortable\":true}},\"buttonRight\":{\"edit\":{\"label\":\"buttonRight\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"buttonRight\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"img\",\"lead\"],\"edit\":[[{\"name\":\"heading\",\"size\":6},{\"name\":\"img\",\"size\":6}],[{\"name\":\"lead\",\"size\":6},{\"name\":\"buttonLeft\",\"size\":6}],[{\"name\":\"buttonRight\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(25,'plugin_content_manager_configuration_components::menu.menu-glowne','{\"uid\":\"menu.menu-glowne\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nav_1\",\"defaultSortBy\":\"nav_1\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"nav_1\":{\"edit\":{\"label\":\"nav_1\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nav_1\",\"searchable\":true,\"sortable\":true}},\"nav_2\":{\"edit\":{\"label\":\"nav_2\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nav_2\",\"searchable\":true,\"sortable\":true}},\"nav_3\":{\"edit\":{\"label\":\"nav_3\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nav_3\",\"searchable\":true,\"sortable\":true}},\"nav_4\":{\"edit\":{\"label\":\"nav_4\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nav_4\",\"searchable\":true,\"sortable\":true}},\"nav_5\":{\"edit\":{\"label\":\"nav_5\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nav_5\",\"searchable\":true,\"sortable\":true}},\"nav_6\":{\"edit\":{\"label\":\"nav_6\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nav_6\",\"searchable\":true,\"sortable\":true}},\"nav_7\":{\"edit\":{\"label\":\"nav_7\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nav_7\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nav_1\",\"nav_2\",\"nav_3\"],\"edit\":[[{\"name\":\"nav_1\",\"size\":6},{\"name\":\"nav_2\",\"size\":6}],[{\"name\":\"nav_3\",\"size\":6},{\"name\":\"nav_4\",\"size\":6}],[{\"name\":\"nav_5\",\"size\":6},{\"name\":\"nav_6\",\"size\":6}],[{\"name\":\"nav_7\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(26,'plugin_content_manager_configuration_components::shared.lista','{\"uid\":\"shared.lista\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"item\",\"defaultSortBy\":\"item\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"item\":{\"edit\":{\"label\":\"item\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"item\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"item\"],\"edit\":[[{\"name\":\"item\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(27,'plugin_content_manager_configuration_components::shared.sekcja-dzielona-lista','{\"uid\":\"shared.sekcja-dzielona-lista\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"list\":{\"edit\":{\"label\":\"list\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"list\",\"searchable\":false,\"sortable\":false}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"list\",\"heading\",\"img\"],\"edit\":[[{\"name\":\"list\",\"size\":12}],[{\"name\":\"heading\",\"size\":6},{\"name\":\"img\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(28,'plugin_content_manager_configuration_components::shared.sekcja-dzielona-tekst','{\"uid\":\"shared.sekcja-dzielona-tekst\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"lead\":{\"edit\":{\"label\":\"lead\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lead\",\"searchable\":true,\"sortable\":true}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"lead\",\"img\"],\"edit\":[[{\"name\":\"heading\",\"size\":6},{\"name\":\"lead\",\"size\":6}],[{\"name\":\"img\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(29,'plugin_content_manager_configuration_components::shared.footer-form','{\"uid\":\"shared.footer-form\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"lead\":{\"edit\":{\"label\":\"lead\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lead\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"message\":{\"edit\":{\"label\":\"message\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"message\",\"searchable\":true,\"sortable\":true}},\"button\":{\"edit\":{\"label\":\"button\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"button\",\"searchable\":true,\"sortable\":true}},\"downloadIcon\":{\"edit\":{\"label\":\"downloadIcon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"downloadIcon\",\"searchable\":false,\"sortable\":false}},\"submitMessage\":{\"edit\":{\"label\":\"submitMessage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"submitMessage\",\"searchable\":true,\"sortable\":true}},\"errorMessage\":{\"edit\":{\"label\":\"errorMessage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"errorMessage\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"lead\",\"name\"],\"edit\":[[{\"name\":\"heading\",\"size\":6},{\"name\":\"lead\",\"size\":6}],[{\"name\":\"name\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"phone\",\"size\":6},{\"name\":\"message\",\"size\":6}],[{\"name\":\"button\",\"size\":6},{\"name\":\"downloadIcon\",\"size\":6}],[{\"name\":\"submitMessage\",\"size\":6},{\"name\":\"errorMessage\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(30,'plugin_content_manager_configuration_components::shared.footer-info','{\"uid\":\"shared.footer-info\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"link\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"contentSecond\":{\"edit\":{\"label\":\"contentSecond\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentSecond\",\"searchable\":true,\"sortable\":true}},\"break\":{\"edit\":{\"label\":\"break\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"break\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"content\",\"link\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"content\",\"size\":6}],[{\"name\":\"link\",\"size\":6},{\"name\":\"type\",\"size\":6}],[{\"name\":\"contentSecond\",\"size\":6},{\"name\":\"break\",\"size\":4}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(31,'plugin_content_manager_configuration_components::shared.lista-z-ikonami','{\"uid\":\"shared.lista-z-ikonami\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"lead\":{\"edit\":{\"label\":\"lead\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lead\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"lead\",\"icon\"],\"edit\":[[{\"name\":\"heading\",\"size\":6},{\"name\":\"lead\",\"size\":6}],[{\"name\":\"icon\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(32,'plugin_content_manager_configuration_components::shared.lista-z-naglowkiem','{\"uid\":\"shared.lista-z-naglowkiem\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"lead\":{\"edit\":{\"label\":\"lead\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lead\",\"searchable\":true,\"sortable\":true}},\"list\":{\"edit\":{\"label\":\"list\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"list\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"lead\",\"list\"],\"edit\":[[{\"name\":\"heading\",\"size\":6},{\"name\":\"lead\",\"size\":6}],[{\"name\":\"list\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(33,'plugin_content_manager_configuration_components::shared.lista-z-naglowkiem-i-ikonami','{\"uid\":\"shared.lista-z-naglowkiem-i-ikonami\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"lead\":{\"edit\":{\"label\":\"lead\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lead\",\"searchable\":true,\"sortable\":true}},\"list\":{\"edit\":{\"label\":\"list\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"list\",\"searchable\":false,\"sortable\":false}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"lead\",\"list\"],\"edit\":[[{\"name\":\"heading\",\"size\":6},{\"name\":\"lead\",\"size\":6}],[{\"name\":\"list\",\"size\":12}],[{\"name\":\"img\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(34,'plugin_content_manager_configuration_components::shared.seo','{\"uid\":\"shared.seo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitle\",\"defaultSortBy\":\"metaTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"metaTitle\":{\"edit\":{\"label\":\"metaTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaTitle\",\"searchable\":true,\"sortable\":true}},\"metaDescription\":{\"edit\":{\"label\":\"metaDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaDescription\",\"searchable\":true,\"sortable\":true}},\"keywords\":{\"edit\":{\"label\":\"keywords\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keywords\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"metaTitle\",\"metaDescription\",\"keywords\"],\"edit\":[[{\"name\":\"metaTitle\",\"size\":6},{\"name\":\"metaDescription\",\"size\":6}],[{\"name\":\"keywords\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(35,'plugin_content_manager_configuration_content_types::api::gallery.gallery','{\"uid\":\"api::gallery.gallery\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"images\":{\"edit\":{\"label\":\"images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"images\",\"searchable\":false,\"sortable\":false}},\"cover\":{\"edit\":{\"label\":\"cover\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cover\",\"searchable\":false,\"sortable\":false}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"images\",\"cover\"],\"editRelations\":[],\"edit\":[[{\"name\":\"heading\",\"size\":6},{\"name\":\"images\",\"size\":6}],[{\"name\":\"cover\",\"size\":6}],[{\"name\":\"seo\",\"size\":12}]]}}','object',NULL,NULL),(36,'plugin_content_manager_configuration_content_types::api::color.color','{\"uid\":\"api::color.color\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"background\":{\"edit\":{\"label\":\"background\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"background\",\"searchable\":false,\"sortable\":false}},\"categories\":{\"edit\":{\"label\":\"categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"categories\",\"searchable\":false,\"sortable\":false}},\"info\":{\"edit\":{\"label\":\"info\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"info\",\"searchable\":true,\"sortable\":true}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"background\",\"categories\"],\"editRelations\":[],\"edit\":[[{\"name\":\"heading\",\"size\":6},{\"name\":\"background\",\"size\":6}],[{\"name\":\"categories\",\"size\":12}],[{\"name\":\"info\",\"size\":6}],[{\"name\":\"seo\",\"size\":12}]]}}','object',NULL,NULL),(37,'plugin_content_manager_configuration_content_types::api::offer-page.offer-page','{\"uid\":\"api::offer-page.offer-page\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"background\":{\"edit\":{\"label\":\"background\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"background\",\"searchable\":false,\"sortable\":false}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"background\",\"seo\"],\"editRelations\":[],\"edit\":[[{\"name\":\"heading\",\"size\":6},{\"name\":\"background\",\"size\":6}],[{\"name\":\"seo\",\"size\":12}]]}}','object',NULL,NULL),(38,'plugin_content_manager_configuration_content_types::api::home.home','{\"uid\":\"api::home.home\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"slider\":{\"edit\":{\"label\":\"slider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slider\",\"searchable\":false,\"sortable\":false}},\"autoplayDelay\":{\"edit\":{\"label\":\"autoplayDelay\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"autoplayDelay\",\"searchable\":true,\"sortable\":true}},\"splitSection\":{\"edit\":{\"label\":\"splitSection\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"splitSection\",\"searchable\":false,\"sortable\":false}},\"imgSection\":{\"edit\":{\"label\":\"imgSection\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"imgSection\",\"searchable\":false,\"sortable\":false}},\"delivery\":{\"edit\":{\"label\":\"delivery\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"delivery\",\"searchable\":false,\"sortable\":false}},\"garageSubstrate\":{\"edit\":{\"label\":\"garageSubstrate\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"garageSubstrate\",\"searchable\":false,\"sortable\":false}},\"prepareGarage\":{\"edit\":{\"label\":\"prepareGarage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"prepareGarage\",\"searchable\":false,\"sortable\":false}},\"infobox\":{\"edit\":{\"label\":\"infobox\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"infobox\",\"searchable\":false,\"sortable\":false}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"slider\",\"autoplayDelay\",\"createdAt\"],\"edit\":[[{\"name\":\"slider\",\"size\":12}],[{\"name\":\"autoplayDelay\",\"size\":4}],[{\"name\":\"splitSection\",\"size\":12}],[{\"name\":\"imgSection\",\"size\":12}],[{\"name\":\"delivery\",\"size\":12}],[{\"name\":\"garageSubstrate\",\"size\":12}],[{\"name\":\"prepareGarage\",\"size\":12}],[{\"name\":\"infobox\",\"size\":12}],[{\"name\":\"seo\",\"size\":12}]],\"editRelations\":[]}}','object',NULL,NULL),(39,'plugin_content_manager_configuration_components::shared.sekcja-ze-zdjeciem','{\"uid\":\"shared.sekcja-ze-zdjeciem\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"heading\",\"defaultSortBy\":\"heading\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"heading\":{\"edit\":{\"label\":\"heading\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"heading\",\"searchable\":true,\"sortable\":true}},\"list\":{\"edit\":{\"label\":\"list\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"list\",\"searchable\":false,\"sortable\":false}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"heading\",\"list\",\"img\"],\"edit\":[[{\"name\":\"heading\",\"size\":6}],[{\"name\":\"list\",\"size\":12}],[{\"name\":\"img\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(40,'plugin_content_manager_configuration_content_types::api::category.category','{\"uid\":\"api::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"offers\":{\"edit\":{\"label\":\"offers\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"offers\",\"searchable\":false,\"sortable\":false}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"thumbnail\":{\"edit\":{\"label\":\"thumbnail\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"thumbnail\",\"searchable\":false,\"sortable\":false}},\"background\":{\"edit\":{\"label\":\"background\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"background\",\"searchable\":false,\"sortable\":false}},\"addInfoByCat\":{\"edit\":{\"label\":\"addInfoByCat\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"addInfoByCat\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"thumbnail\",\"size\":6},{\"name\":\"background\",\"size\":6}],[{\"name\":\"addInfoByCat\",\"size\":12}],[{\"name\":\"description\",\"size\":12}],[{\"name\":\"seo\",\"size\":12}]],\"editRelations\":[\"offers\"]}}','object',NULL,NULL),(41,'plugin_content_manager_configuration_content_types::api::offer.offer','{\"uid\":\"api::offer.offer\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"images\":{\"edit\":{\"label\":\"images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"images\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"addInfo\":{\"edit\":{\"label\":\"addInfo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"addInfo\",\"searchable\":false,\"sortable\":false}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"images\",\"size\":6}],[{\"name\":\"description\",\"size\":12}],[{\"name\":\"addInfo\",\"size\":12}],[{\"name\":\"seo\",\"size\":12}]],\"editRelations\":[\"category\"]}}','object',NULL,NULL);
/*!40000 ALTER TABLE `strapi_core_store_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_database_schema`
--

DROP TABLE IF EXISTS `strapi_database_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_database_schema` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_database_schema`
--

LOCK TABLES `strapi_database_schema` WRITE;
/*!40000 ALTER TABLE `strapi_database_schema` DISABLE KEYS */;
INSERT INTO `strapi_database_schema` VALUES (29,'{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_files_folder_path_index\", \"type\": null, \"columns\": [\"folder_path\"]}, {\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_path_id_index\", \"type\": \"unique\", \"columns\": [\"path_id\"]}, {\"name\": \"upload_folders_path_index\", \"type\": \"unique\", \"columns\": [\"path\"]}, {\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"add_info_by_cat\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"colors\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"info\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"colors_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"colors_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"colors_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"colors_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"galleries\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"galleries_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"galleries_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"galleries_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"galleries_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"globals\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"footer_heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"company_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"globals_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"globals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"globals_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"globals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"autoplay_delay\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"homes_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"homes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"homes_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"homes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"offers\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"add_info\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"offers_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"offers_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"offers_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"offers_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"offers_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"offers_page\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"offers_page_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"offers_page_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"offers_page_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"offers_page_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_colors_categories\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_colors_colors\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lead\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_infos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"lead\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_home_sliders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"lead\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"button_left\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"button_right\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_menu_menu_glownes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"nav_1\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"nav_2\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"nav_3\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"nav_4\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"nav_5\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"nav_6\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"nav_7\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_footer_forms\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lead\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"phone\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"message\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"button\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"submit_message\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"error_message\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_footer_infos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"content\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"link\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"content_second\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"break\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_lista_z_ikonamis\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"lead\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_list_heading_icon\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"lead\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_lista_z_naglowkiems\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"lead\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_listas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"item\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_sekcja_dzielona_listas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_sekcja_dzielona_teksts\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"lead\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_sekcja_ze_zdjeciems\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_seos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"meta_title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"meta_description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"keywords\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_folder_links\", \"columns\": [{\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"]}], \"foreignKeys\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders_parent_links\", \"columns\": [{\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"categories_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"categories_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"categories_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories_localizations_links\", \"columns\": [{\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_localizations_links_fk\", \"columns\": [\"category_id\"]}, {\"name\": \"categories_localizations_links_inv_fk\", \"columns\": [\"inv_category_id\"]}], \"foreignKeys\": [{\"name\": \"categories_localizations_links_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_localizations_links_inv_fk\", \"columns\": [\"inv_category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"colors_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"colors_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"colors_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"colors_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"colors_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"colors\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"colors_localizations_links\", \"columns\": [{\"args\": [], \"name\": \"color_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_color_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"colors_localizations_links_fk\", \"columns\": [\"color_id\"]}, {\"name\": \"colors_localizations_links_inv_fk\", \"columns\": [\"inv_color_id\"]}], \"foreignKeys\": [{\"name\": \"colors_localizations_links_fk\", \"columns\": [\"color_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"colors\", \"referencedColumns\": [\"id\"]}, {\"name\": \"colors_localizations_links_inv_fk\", \"columns\": [\"inv_color_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"colors\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"galleries_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"galleries_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"galleries_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"galleries_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"galleries_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"galleries\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"galleries_localizations_links\", \"columns\": [{\"args\": [], \"name\": \"gallery_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_gallery_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"galleries_localizations_links_fk\", \"columns\": [\"gallery_id\"]}, {\"name\": \"galleries_localizations_links_inv_fk\", \"columns\": [\"inv_gallery_id\"]}], \"foreignKeys\": [{\"name\": \"galleries_localizations_links_fk\", \"columns\": [\"gallery_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"galleries\", \"referencedColumns\": [\"id\"]}, {\"name\": \"galleries_localizations_links_inv_fk\", \"columns\": [\"inv_gallery_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"galleries\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"globals_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"globals_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"globals_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"globals_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"globals_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"globals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"globals_localizations_links\", \"columns\": [{\"args\": [], \"name\": \"global_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_global_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"globals_localizations_links_fk\", \"columns\": [\"global_id\"]}, {\"name\": \"globals_localizations_links_inv_fk\", \"columns\": [\"inv_global_id\"]}], \"foreignKeys\": [{\"name\": \"globals_localizations_links_fk\", \"columns\": [\"global_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"globals\", \"referencedColumns\": [\"id\"]}, {\"name\": \"globals_localizations_links_inv_fk\", \"columns\": [\"inv_global_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"globals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homes_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"homes_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"homes_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"homes_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"homes_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"homes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homes_localizations_links\", \"columns\": [{\"args\": [], \"name\": \"home_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_home_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"homes_localizations_links_fk\", \"columns\": [\"home_id\"]}, {\"name\": \"homes_localizations_links_inv_fk\", \"columns\": [\"inv_home_id\"]}], \"foreignKeys\": [{\"name\": \"homes_localizations_links_fk\", \"columns\": [\"home_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"homes\", \"referencedColumns\": [\"id\"]}, {\"name\": \"homes_localizations_links_inv_fk\", \"columns\": [\"inv_home_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"homes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"offers_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"offers_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"offers_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"offers_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"offers_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"offers\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"offers_category_links\", \"columns\": [{\"args\": [], \"name\": \"offer_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"offers_category_links_fk\", \"columns\": [\"offer_id\"]}, {\"name\": \"offers_category_links_inv_fk\", \"columns\": [\"category_id\"]}], \"foreignKeys\": [{\"name\": \"offers_category_links_fk\", \"columns\": [\"offer_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"offers\", \"referencedColumns\": [\"id\"]}, {\"name\": \"offers_category_links_inv_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"offers_localizations_links\", \"columns\": [{\"args\": [], \"name\": \"offer_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_offer_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"offers_localizations_links_fk\", \"columns\": [\"offer_id\"]}, {\"name\": \"offers_localizations_links_inv_fk\", \"columns\": [\"inv_offer_id\"]}], \"foreignKeys\": [{\"name\": \"offers_localizations_links_fk\", \"columns\": [\"offer_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"offers\", \"referencedColumns\": [\"id\"]}, {\"name\": \"offers_localizations_links_inv_fk\", \"columns\": [\"inv_offer_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"offers\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"offers_page_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"offers_page_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"offers_page_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"offers_page_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"offers_page_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"offers_page\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"offers_page_localizations_links\", \"columns\": [{\"args\": [], \"name\": \"offer_page_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_offer_page_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"offers_page_localizations_links_fk\", \"columns\": [\"offer_page_id\"]}, {\"name\": \"offers_page_localizations_links_inv_fk\", \"columns\": [\"inv_offer_page_id\"]}], \"foreignKeys\": [{\"name\": \"offers_page_localizations_links_fk\", \"columns\": [\"offer_page_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"offers_page\", \"referencedColumns\": [\"id\"]}, {\"name\": \"offers_page_localizations_links_inv_fk\", \"columns\": [\"inv_offer_page_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"offers_page\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_colors_categories_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_colors_categories_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_colors_categories_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_colors_categories_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"components_colors_categories_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_colors_categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_shared_list_heading_icon_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_shared_list_heading_icon_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_shared_list_heading_icon_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_shared_list_heading_icon_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"components_shared_list_heading_icon_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_shared_list_heading_icon\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_shared_lista_z_naglowkiems_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_shared_lista_z_naglowkiems_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_shared_lista_z_naglowkiems_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_shared_lista_z_naglowkiems_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"components_shared_lista_z_naglowkiems_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_shared_lista_z_naglowkiems\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_shared_sekcja_dzielona_listas_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_shared_sekcja_dzielona_listas_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_shared_sekcja_dzielona_listas_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_shared_sekcja_dzielona_listas_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"components_shared_sekcja_dzielona_listas_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_shared_sekcja_dzielona_listas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_shared_sekcja_ze_zdjeciems_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_shared_sekcja_ze_zdjeciems_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_shared_sekcja_ze_zdjeciems_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_shared_sekcja_ze_zdjeciems_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"components_shared_sekcja_ze_zdjeciems_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_shared_sekcja_ze_zdjeciems\", \"referencedColumns\": [\"id\"]}]}]}','2022-08-19 11:39:14','22b2ae15e727b43287b821e5958daafe');
/*!40000 ALTER TABLE `strapi_database_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_migrations`
--

DROP TABLE IF EXISTS `strapi_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_migrations`
--

LOCK TABLES `strapi_migrations` WRITE;
/*!40000 ALTER TABLE `strapi_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_permissions`
--

DROP TABLE IF EXISTS `up_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  KEY `up_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions`
--

LOCK TABLES `up_permissions` WRITE;
/*!40000 ALTER TABLE `up_permissions` DISABLE KEYS */;
INSERT INTO `up_permissions` VALUES (1,'plugin::users-permissions.user.me','2022-08-18 20:55:25.225000','2022-08-18 20:55:25.225000',NULL,NULL),(2,'plugin::users-permissions.auth.changePassword','2022-08-18 20:55:25.225000','2022-08-18 20:55:25.225000',NULL,NULL),(3,'plugin::users-permissions.auth.callback','2022-08-18 20:55:25.232000','2022-08-18 20:55:25.232000',NULL,NULL),(4,'plugin::users-permissions.auth.connect','2022-08-18 20:55:25.232000','2022-08-18 20:55:25.232000',NULL,NULL),(5,'plugin::users-permissions.auth.forgotPassword','2022-08-18 20:55:25.232000','2022-08-18 20:55:25.232000',NULL,NULL),(6,'plugin::users-permissions.auth.resetPassword','2022-08-18 20:55:25.232000','2022-08-18 20:55:25.232000',NULL,NULL),(7,'plugin::users-permissions.auth.register','2022-08-18 20:55:25.232000','2022-08-18 20:55:25.232000',NULL,NULL),(8,'plugin::users-permissions.auth.emailConfirmation','2022-08-18 20:55:25.232000','2022-08-18 20:55:25.232000',NULL,NULL),(9,'plugin::users-permissions.auth.sendEmailConfirmation','2022-08-18 20:55:25.232000','2022-08-18 20:55:25.232000',NULL,NULL),(10,'api::category.category.find','2022-08-18 22:02:39.856000','2022-08-18 22:02:39.856000',NULL,NULL),(11,'api::category.category.findOne','2022-08-18 22:02:39.856000','2022-08-18 22:02:39.856000',NULL,NULL),(12,'api::color.color.find','2022-08-18 22:02:39.856000','2022-08-18 22:02:39.856000',NULL,NULL),(13,'api::gallery.gallery.find','2022-08-18 22:02:39.856000','2022-08-18 22:02:39.856000',NULL,NULL),(14,'api::global.global.find','2022-08-18 22:02:39.856000','2022-08-18 22:02:39.856000',NULL,NULL),(15,'api::home.home.find','2022-08-18 22:02:39.856000','2022-08-18 22:02:39.856000',NULL,NULL),(16,'api::offer.offer.find','2022-08-18 22:02:39.856000','2022-08-18 22:02:39.856000',NULL,NULL),(17,'api::offer.offer.findOne','2022-08-18 22:02:39.856000','2022-08-18 22:02:39.856000',NULL,NULL),(18,'api::offer-page.offer-page.find','2022-08-18 22:02:39.856000','2022-08-18 22:02:39.856000',NULL,NULL),(19,'plugin::users-permissions.user.me','2022-08-18 22:02:39.856000','2022-08-18 22:02:39.856000',NULL,NULL),(20,'plugin::i18n.locales.listLocales','2022-08-18 22:02:39.856000','2022-08-18 22:02:39.856000',NULL,NULL);
/*!40000 ALTER TABLE `up_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_permissions_role_links`
--

DROP TABLE IF EXISTS `up_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_permissions_role_links` (
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  KEY `up_permissions_role_links_fk` (`permission_id`),
  KEY `up_permissions_role_links_inv_fk` (`role_id`),
  CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions_role_links`
--

LOCK TABLES `up_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `up_permissions_role_links` DISABLE KEYS */;
INSERT INTO `up_permissions_role_links` VALUES (1,1),(2,1),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(16,2),(15,2),(19,2),(18,2),(17,2),(20,2);
/*!40000 ALTER TABLE `up_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_roles`
--

DROP TABLE IF EXISTS `up_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_roles_created_by_id_fk` (`created_by_id`),
  KEY `up_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_roles`
--

LOCK TABLES `up_roles` WRITE;
/*!40000 ALTER TABLE `up_roles` DISABLE KEYS */;
INSERT INTO `up_roles` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated','2022-08-18 20:55:25.215000','2022-08-18 20:55:25.215000',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public','2022-08-18 20:55:25.219000','2022-08-18 22:03:15.303000',NULL,NULL);
/*!40000 ALTER TABLE `up_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users`
--

DROP TABLE IF EXISTS `up_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_users_created_by_id_fk` (`created_by_id`),
  KEY `up_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users`
--

LOCK TABLES `up_users` WRITE;
/*!40000 ALTER TABLE `up_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `up_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users_role_links`
--

DROP TABLE IF EXISTS `up_users_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users_role_links` (
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  KEY `up_users_role_links_fk` (`user_id`),
  KEY `up_users_role_links_inv_fk` (`role_id`),
  CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users_role_links`
--

LOCK TABLES `up_users_role_links` WRITE;
/*!40000 ALTER TABLE `up_users_role_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `up_users_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_folders`
--

DROP TABLE IF EXISTS `upload_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_folders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  UNIQUE KEY `upload_folders_path_index` (`path`),
  KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  KEY `upload_folders_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_folders`
--

LOCK TABLES `upload_folders` WRITE;
/*!40000 ALTER TABLE `upload_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_folders_parent_links`
--

DROP TABLE IF EXISTS `upload_folders_parent_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_folders_parent_links` (
  `folder_id` int unsigned DEFAULT NULL,
  `inv_folder_id` int unsigned DEFAULT NULL,
  KEY `upload_folders_parent_links_fk` (`folder_id`),
  KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_folders_parent_links`
--

LOCK TABLES `upload_folders_parent_links` WRITE;
/*!40000 ALTER TABLE `upload_folders_parent_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_folders_parent_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'batmax'
--

--
-- Dumping routines for database 'batmax'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-19 11:42:36
