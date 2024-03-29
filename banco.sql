-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: apostasb_laravel
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB

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

--
-- Table structure for table `auto_messages`
--

DROP TABLE IF EXISTS `auto_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `identificador` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destinatario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_messages`
--

LOCK TABLES `auto_messages` WRITE;
/*!40000 ALTER TABLE `auto_messages` DISABLE KEYS */;
INSERT INTO `auto_messages` (`id`, `identificador`, `descricao`, `destinatario`, `msg`, `created_at`, `updated_at`) VALUES (1,'compra-admin','Compra Realizada','admin','','2023-08-23 22:03:11','2023-08-23 22:03:11'),(2,'compra-cliente','Compra Realizada','cliente','','2023-08-23 22:03:11','2023-08-23 22:03:11'),(3,'recebido-admin','Pagamento Confirmado','admin','','2023-08-23 22:03:11','2023-08-23 22:03:11'),(4,'recebido-cliente','Pagamento Confirmado','cliente','','2023-08-23 22:03:11','2023-08-23 22:03:11');
/*!40000 ALTER TABLE `auto_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras_automaticas`
--

DROP TABLE IF EXISTS `compras_automaticas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compras_automaticas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `qtd` int(11) NOT NULL,
  `popular` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `compras_automaticas_product_id_foreign` (`product_id`),
  CONSTRAINT `compras_automaticas_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras_automaticas`
--

LOCK TABLES `compras_automaticas` WRITE;
/*!40000 ALTER TABLE `compras_automaticas` DISABLE KEYS */;
INSERT INTO `compras_automaticas` (`id`, `product_id`, `qtd`, `popular`, `created_at`, `updated_at`) VALUES (103,46,5,0,'2023-09-11 12:58:38','2023-11-25 20:40:31'),(104,46,10,0,'2023-09-11 12:58:38','2023-11-25 20:40:31'),(105,46,30,0,'2023-09-11 12:58:38','2023-11-25 20:40:31'),(106,46,50,1,'2023-09-11 12:58:38','2023-11-25 20:40:31'),(107,46,0,0,'2023-09-11 12:58:38','2023-11-25 20:40:31'),(108,46,0,0,'2023-09-11 12:58:38','2023-11-25 20:40:31');
/*!40000 ALTER TABLE `compras_automaticas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulting_environments`
--

DROP TABLE IF EXISTS `consulting_environments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consulting_environments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tema` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light',
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_api_wpp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_pix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_pix_public` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paggue_client_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paggue_client_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_asaas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pixel` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_domain_fb` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_whats` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pixel_head` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pixel_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `consulting_environments_user_id_foreign` (`user_id`),
  CONSTRAINT `consulting_environments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulting_environments`
--

LOCK TABLES `consulting_environments` WRITE;
/*!40000 ALTER TABLE `consulting_environments` DISABLE KEYS */;
INSERT INTO `consulting_environments` (`id`, `name`, `tema`, `facebook`, `instagram`, `token_api_wpp`, `key_pix`, `key_pix_public`, `paggue_client_secret`, `paggue_client_key`, `token_asaas`, `pixel`, `verify_domain_fb`, `group_whats`, `logo`, `footer`, `user_id`, `created_at`, `updated_at`, `pixel_head`, `pixel_body`) VALUES (1,'Reidoscript','light','Reidoscriptbr','Reidoscript',NULL,'APP_USR-4638355852297439-101719-313e384a8d0904a05a4e2699dffbb497-50209960',NULL,NULL,NULL,NULL,NULL,NULL,'https://chat.whatsapp.com/13jgCQoPhPqyx8z','1700944038.png','Marquinhos do paredão resultado pela loteria federal 🍀',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `consulting_environments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copies`
--

DROP TABLE IF EXISTS `copies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `copy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copies`
--

LOCK TABLES `copies` WRITE;
/*!40000 ALTER TABLE `copies` DISABLE KEYS */;
/*!40000 ALTER TABLE `copies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1395 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`id`, `nome`, `telephone`, `email`, `cpf`, `created_at`, `updated_at`) VALUES (1388,'f dsff ds','(11) 98288-9012',NULL,NULL,'2023-10-27 19:15:24','2023-10-27 19:15:24'),(1389,'fdf d fdsffd','(56) 45454-5454',NULL,NULL,'2023-10-27 22:11:50','2023-10-27 22:11:50'),(1390,'fegege geg','(43) 43432-4324',NULL,NULL,'2023-10-27 22:14:21','2023-10-27 22:14:21'),(1391,'fef efef','(43) 43434-3434',NULL,NULL,'2023-10-27 22:20:51','2023-10-27 22:20:51'),(1392,'Kdkdjd djejd','(33) 43333-3333',NULL,NULL,'2023-11-25 20:45:13','2023-11-25 20:45:13'),(1393,'Chaves Rifas','(41) 99856-3721',NULL,NULL,'2023-12-07 16:53:13','2023-12-07 16:53:13'),(1394,'Rafael da Luz Rodrigues','(44) 99757-5489',NULL,NULL,'2023-12-07 19:56:53','2023-12-07 19:56:53');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drop_participants`
--

DROP TABLE IF EXISTS `drop_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drop_participants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `participant_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raffles_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drop_participants`
--

LOCK TABLES `drop_participants` WRITE;
/*!40000 ALTER TABLE `drop_participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `drop_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drop_payment_pix`
--

DROP TABLE IF EXISTS `drop_payment_pix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drop_payment_pix` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key_pix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `participant_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drop_payment_pix`
--

LOCK TABLES `drop_payment_pix` WRITE;
/*!40000 ALTER TABLE `drop_payment_pix` DISABLE KEYS */;
/*!40000 ALTER TABLE `drop_payment_pix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ganhos_afiliados`
--

DROP TABLE IF EXISTS `ganhos_afiliados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ganhos_afiliados` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `participante_id` int(10) unsigned DEFAULT NULL,
  `solicitacao_id` int(10) unsigned DEFAULT NULL,
  `afiliado_id` int(10) unsigned DEFAULT NULL,
  `valor` double(8,2) NOT NULL,
  `pago` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ganhos_afiliados_product_id_foreign` (`product_id`),
  KEY `ganhos_afiliados_participante_id_foreign` (`participante_id`),
  KEY `ganhos_afiliados_afiliado_id_foreign` (`afiliado_id`),
  CONSTRAINT `ganhos_afiliados_afiliado_id_foreign` FOREIGN KEY (`afiliado_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ganhos_afiliados_participante_id_foreign` FOREIGN KEY (`participante_id`) REFERENCES `participant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ganhos_afiliados_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ganhos_afiliados`
--

LOCK TABLES `ganhos_afiliados` WRITE;
/*!40000 ALTER TABLE `ganhos_afiliados` DISABLE KEYS */;
INSERT INTO `ganhos_afiliados` (`id`, `product_id`, `participante_id`, `solicitacao_id`, `afiliado_id`, `valor`, `pago`, `created_at`, `updated_at`) VALUES (1,46,16203,1,11,0.04,1,'2023-10-27 22:20:52','2023-11-28 16:56:53');
/*!40000 ALTER TABLE `ganhos_afiliados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2022_02_13_175251_create_products_table',1),(4,'2022_02_13_204521_create_raffles_table',1),(5,'2022_02_17_141954_create_products_images_table',1),(6,'2022_02_17_161330_create_participant_table',1),(7,'2022_02_18_012225_create_product_description_table',1),(8,'2022_02_19_024705_create_consulting_environments_table',1),(9,'2022_02_23_132922_create_messages_table',1),(10,'2022_03_04_234043_table_drop_participants_table',1),(11,'2022_03_06_201602_create_payment_pix_table',1),(12,'2022_03_19_164423_table_column_product_description_table',1),(13,'2022_05_15_183244_create_drop_payment_pix_table',1),(14,'2022_05_15_223125_create_column_participant_id_drop_participant_table',1),(15,'2022_05_18_103947_create_column_subname_products_table',1),(16,'2022_05_18_191053_create_column_winner_products_table',1),(17,'2022_05_20_185141_create_column_pix_copia_e_cola_payment_pix_table',1),(18,'2022_06_13_133444_create_column_visible_products_table',1),(19,'2022_06_27_211903_create_column_draw_prediction_products_table',1),(20,'2022_08_02_210010_create_column_product_products_table',1),(21,'2022_08_02_233232_create_order_table',1),(22,'2022_08_03_025849_create_column_slug_products_table',1),(23,'2023_01_12_160159_create_column_pixel_consulting_environments_table',1),(24,'2023_01_12_160938_create_column_verify_domain_consulting_environments_table',1),(25,'2023_01_13_123531_create_column_key_pix_public_consulting_environments_table',1),(26,'2023_03_30_160851_create_participant_id_on_raffles',1),(27,'2023_03_31_124645_create_promocaos_table',1),(28,'2023_04_05_202735_update_products_add_expiracao',1),(29,'2023_04_11_105801_add_qtd_ranking',1),(30,'2023_04_13_122729_update_products_add_parcial',1),(31,'2023_04_17_213126_update_environment_add_footer',1),(32,'2023_04_18_104740_create_premios_table',1),(33,'2023_04_20_104539_update_participante_add_valor',1),(34,'2023_04_24_081311_create_whatsapp_mensagems_table',1),(35,'2023_05_03_221447_update_products_add_gateway',1),(36,'2023_05_03_222357_update_environment_add_token_assas',1),(37,'2023_05_16_085820_update_products_add_zeros',1),(38,'2023_05_23_075958_update_profile_add_paggue_credentials',1),(39,'2023_05_26_114056_update_promocao_add_porcentagem',1),(40,'2023_05_29_091005_update_environment_add_tema',1),(41,'2023_05_29_162948_update_premios_add_foto_ganhador',1),(42,'2023_06_02_214004_create_videos_table',1),(43,'2023_06_03_131425_create_sessions_web_table',1),(44,'2023_06_03_211045_update_participante_add_numbers',1),(45,'2023_06_23_205332_update_prod_add_numbers',1),(46,'2023_06_27_210541_update_users_add_afiliados',1),(47,'2023_06_28_193815_udpate_products_add_percent_afiliado',1),(48,'2023_06_28_195202_create_rifa_afiliados_table',1),(49,'2023_06_28_195423_create_ganhos_afiliados_table',1),(50,'2023_07_04_082630_update_participante_add_conferido',1),(51,'2023_07_07_141710_update_premio_add_participant',1),(52,'2023_07_09_163713_update_ganho_afiliado_add_afiliado_id',1),(53,'2023_07_09_165706_create_solicitacao_afiliados_table',1),(54,'2023_07_09_170121_update_ganhos_add_solicitacao_id',1),(55,'2023_07_25_145450_create_auto_messages_table',2),(56,'2023_07_25_152323_update_environment_add_token_api_whats',2),(57,'2023_08_04_155407_create_compra_automaticas_table',2),(58,'2023_08_11_140318_create_customers_table',2),(59,'2023_08_11_140510_update_participantes_add_customer_id',2),(60,'2023_08_24_154938_update_participan_add_confirmacao_msg',3),(61,'2023_09_05_202755_create_copies_table',4),(62,'2023_09_07_232430_update_environment_add_pixels',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key_pix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` double(8,2) NOT NULL,
  `participant_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dados` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_participant_id_foreign` (`participant_id`),
  CONSTRAINT `order_participant_id_foreign` FOREIGN KEY (`participant_id`) REFERENCES `participant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15944 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`id`, `key_pix`, `valor`, `participant_id`, `created_at`, `updated_at`, `dados`) VALUES (15936,'1392387237',2.00,16198,'2023-10-27 19:15:24','2023-10-27 19:15:24','{\"participant_id\":16198,\"participant\":\"f dsff ds\",\"cpf\":null,\"email\":null,\"telephone\":\"(11) 98288-9012\",\"price\":\"2,00\",\"product\":\"A\\u00c7\\u00c2O 300 NO PIX\",\"productID\":\"46\",\"drawdate\":null,\"image\":\"01694447917.jpg\",\"PIX\":\"2.00\",\"countRaffles\":10,\"priceUnic\":\"0.71\",\"codePIX\":\"00020126480014br.gov.bcb.pix0126mspremiosoficial@gmail.com52040000530398654042.005802BR5913MSPREMIOS20236009Sao Paulo62240520mpqrinter65816896677630423F9\",\"qrCode\":\"iVBORw0KGgoAAAANSUhEUgAABRQAAAUUAQAAAACGnaNFAAANaUlEQVR4Xu3YTXbkuBFFYfaolsGlMpeaS\\/CwRoI7Ih6CAZBZx9aB2kr53oEN4fejRqXe2rfvX9s88\\/3CuCaMa8K4JoxrwrgmjGvCuCaMa8K4JoxrwrgmjGvCuCaMa8K4JoxrwrgmjGvCuCaMa8K4JoxrwrgmjGvCuCaMa8K4JoxrwrgmjGvCuCaMa8K4JoxrwrgmjGvCuCaMa8K4JoxrwrgmjGvCuCaMa8K4JoxrwrgmjGvCuKb3M\\/7exvaYOdrz7\\/\\/9q7XH3zOtfcTiLzvxyL2e9vy2Qfv71K\\/YPJzSwCs3D\\/nxHkaMEcYNo4WxhBFjhHHDaGEsvaOxLuZrecHR98SSt0+bjaZHZqOJXhp1jzUyMGL0MHoYMWJsGOdFjB5GjD\\/B+PDT9ZzN+N3DlYkdS36I1PyteY81fzRG34wRI8YNI0aMCiNGjP+Pxo9+brO7LZ+ROpdsMG6OXr6fn1gG854I44YR4\\/kWRowljBtGjOdbGDGWfozxaM84noPS8Gzt8Dk\\/rh6bvmy451csYcSI0ecwYjz3YfQwWhj7cfXYMHoYf5gxG4zzTVbSfPCsM1s\\/9RFb50ERefGWwojRw1gHGDHqOEbNbBgzjBgzjNk7Gsfspr867YsHQxg\\/PRjC+OnBEMZPD4YwfnowhPHTgyGMnx4MYfz0YAjjpwdDb258kd2kgf1jX+mDtBQzuluDZ39NAzueg3LPILqGEeMQRowYM4wYhzBixJi9o9H\\/C726u\\/K5lf\\/6njO+ee9qdVRa\\/qf6bN6cPTd9WQ\\/jhrFhxIixYcRYwogR408z+j\\/b87V4RPkjR98T5Yw2F4i+Q0abaRfsuKcM9PU9jBvGDeN1TxlgfPG+zTSMFkaMPqPNL9+3mYbRwojRZ7T55fs20xYZvTDm3bpSNIP4nvmmnCmDvSUkP7HQtvJlsaTKr8HC2DBi7GHEiBFjDyNGjLrGe3tj0qZd\\/aaoLsXmuXw27yk3b4VmX697lJ2awogRI0YLY\\/xcw4gRI0YLY\\/xce1PjIPplP8cFdSke8aViLM\\/K6N1\\/h9LmzG4efw0YFUaMnjZnGDFmGG\\/T5gwjxgzjbdqcYfwnjXGlRL794adzydv7GWEj8XNz2SO+bi6b8\\/fh5defYax7MGLEGGG0MNY9GDFijDBab2qMdM6352uD0QdH3xyDcbMd11LZrD35+7hWGBZGjBgxYlQYx80YMWLE2Ht7o5eQo2n7H2iR71Fxyps3D4Pco3vKAKOWXmweBhjrsxFGjBjP1zBibBhLGDGer30\\/o579ZWOjeTmwdMFz878DsuOcKaf0iflHg+3xnpu+LL++PIoRo8KI8dyBESPGGkaM5w6MP8Po2\\/O141wY7vb2+Dn4180jXzeXmefmxuyx6Tvy5jOMkS1h9DA2jBgjjJEtYfQwNowYozc1lvaWfxn4lQ+f1UxR+5I2h7qVZ0O0lcH15vyyoxmj8jFifHHTw2cxNowYFUaMGDEOSxiztzHaTfm+D+J93e1\\/GeQjD58dv0ObD10qdWKrKC7UnvLEEMYII0aMPsBYwhhhxIjRBxhLb2qcICrV5ZE68+h74rXkb4H1mYGmPXvLt+bv6GGMDr8Zo4fRZzBixBgdfjNGD6PPYMT4fkYvXsvtt+WSDWZ+Eam93qyBd\\/TNgb0PY9++15s18I6+GSNGC2PfvtebNfCOvhkjRgtj377XmzXwjr4ZI0YLY9++15s18I6++b80Wr\\/Pux2rmaIelqqobFb2\\/jxj6YPK3wqe3ZNLFsYI494wKowYFcYI494wKowY1TsatV3PzjQb6M+IpA17Ruz8Z8QjFgo2i6WBlmHEePO+Bhjvwojx5n0NMN6FEePN+xpgvAvjVxj1rF3pJVY06\\/qs1INoK1+WlW\\/VW4+\\/n9AvxsKIsf6EESNGjBh7GGOQYcT4k43a\\/rsfz4qo3m2v5WbtyQtViLxnnPpPljBixNiukD8sYcSIsV0hf1jCiBFju0L+sITxS4xKu+LZxFb10WfibsfmZjvupVp77JRXPmhY0j1TGG8hDWMMNow2M4TxFtIwxmDDaDNDGG8hDWMMNow2M4TxFtIWGB9b+YMgscpmdLcemf96yMGg\\/hU361TsUeWj82b9PiKMGDFitJm8SWHEiBEjRow\\/yZh3Z2n09+0mn1E5Y42n4oOG18ZPzD1jGDFmGDHG0tEwjks9jH2Q2YyHEWNd6mHsg8xmPIz\\/e2ML0fjscS5Zunv8g+APp2Jz63uy+TvK12O8OYVxfq1cgBHjzSmM82vlAowYb05hnF8rF2DEeHPqK43Dlf5IvmZJNLxfTx31\\/ZJ\\/WYGMn\\/ioSxHG+TUPY8OI8fYUxvk1CyNGjB7G+TUPY\\/s2Rnu2XKDX0qj25q8dPquB1Dpl+d8TiX34nAZamk\\/dfBlGjJdzGM9TGOfXLIzzOYznKYzzaxbG+RzG8xTG+TXrC4x5d2m88jktvTrl7fH+Yyui8kG5Z0ynzjBiPMOIMZZenfIwljBijKVXpzyMJYwYY+nVKe\\/rjAZJkQ\\/Ka3llmclnNXhuhZ97Wsf6wGZ0s7K3cmkII0aMGDHm0hBGjBgxYsyloXc0JsQHdmU1RsnPfI\\/ej9ek1gfpnjxlN\\/t3xMDT1w+fGGHEiNFuxogRI8YeRowYo59l1PaSXpvL1\\/YmowZH2dSzZ\\/N9Hwy\\/j1wSrfw+LIy9pOUAo8KI8cVm0XKAUWHE+GKzaDnAqDBifLFZtBx83pgJu235t4Igw0yzR6y8W41\\/YcSebTK+uDDuwTjuwagwehgbxh5GjLoVY\\/yAsWHsvZ\\/RH7m7aa+DZs\\/q\\/TgliL9mp\\/KenPHj00Dpy\\/abpQgjxhhYGBtGjCWMGGNgYWwYMZbe1miNNHu\\/Bc0LoyD6W8FEKp\\/VYDieF+qJsln35B8fEUaMGGMGI8YNo8K4YbTjGDH+IKP36BfE+7Uys7fyHX4q1WlMWoqU3ZNL+Yk+sJn81ggjRowYc2ZvGEsYMWLEmDN7w1h6P6P+ta5BXODtdVeW35Gb87W5EXu0fOu5jbT4VjEijGcYvb3uyjBmGM8wenvdlWHMMJ5h9Pa6K8OYYTxbZ\\/RnQ5Tve5qxQbk7l1p5P8pndc+4lMdj6fb4GUaMGDFixHjzSM5g1E0YMeZSu3skZzDqpm9l\\/N3PXR\\/Ju3Xl3sp31KXyvpVfVmcGWkk0\\/Rp6GGMPRowNI0aMns34PRZGjBjt\\/zC+vXG8wNJ2m\\/HX8qZnjMsH7XHi0ffEwDNjzowXDvz7MPYwYtTShhFjhLGHEaOWNowYozc12jnPrvSbjr4Ug0wfpPaYsfwTTS2aLY2n7OuVNmc6dYYRo2XnMNbNGUaMGcbzFMYSxgwjRsvOfUej94zN9r4bI39tuHKc2Vt+oh55xsHhO0Z1njqaqeuFZxjjIEaM9dTRMGLEiPG8GyPGm5m9YRwrd39bY27f+88FmyJBbLMgL7FZ7slys918fwrj\\/BpGjDHEuGHEiBFjXBV7MGLM3tH4Ya+Vgd7XIK5s\\/RG\\/Sc\\/md8TmXPKZZxzOpfzEvGf6aIwYPYx9CeMe2\\/JujBFGjBgx7rEt78YYvZ+xLH7Etf7IMPDsWac9fCmPq7K5PltoNhjb+y3P81SEccM40zBuGDFaGDeMMw3jhhGj9Y7Grb\\/\\/YYO8OyHlAn2QzeQppXus8R7RYinzD9rHuRLGhhFj3xhh1EyeUhjzNYx9Y4RRM3lKYczXMPaNEUbN5Cn1lUbPRJlj7QK\\/O2dS9PA5fYcGtjn5+Yk65R1N3zF0\\/TVEGM8ljBhrGDFiPJcwYqxhxPh+Rp27e0Tnhhlv4LcwejFIWsWWzWraM4SxYbyKrjMeRgtjw3gVXWc8jBbGhvEqus54GC2M7euMLy8Ioyo3+bMF68UplRe68ehvDXvyCYw1jBgxNowYMWI8f8C4YSx7fo7x2qiOC\\/wRDYL2l72vQZ46fJibWzfOlVMaTGFsGBVGDyPGDGPDqDB6GDFm72dMkbJnlUR6pIieMW0Q\\/8d+LNWZ2DO\\/P35ZnoqGzRhjBiNGjBjnzRhjBiNGjBjnze9orIt2rvQRzxajpz2Peree1ZcVvjpiW9k8DKYwYrQwZhg97Yn3MXoYMXoY62AKI0brGxvztTQOr7nxbvM1+w5\\/tnxZXnh3ql54hhEjxocvX09hnF\\/zMGJ8eQrj\\/JqHEePLUxjn17x\\/2jheefQTscf5Q5rRhcKWQXlC36GuMxgxYsTogw3jPIMRI0aMPtgwzjM\\/xxhLoumC4Z\\/\\/H92uPcWo9KeGevSZrarzQozagxGjL\\/kpjBgx9mwPRoy+5KcwYvxBxiy2+7Mm0pVa0pWG9Y6W35H83FO+Pk9dl8o9GDG2eRHjdancgxFjmxcxXpfKPRgxtnkR43Wp3IPxHzCO7TGdWEtYDQo\\/s83+yLPOZFWUT0zfinHDiDHD6GHEeIYRo8LoYfwZxu8ZxjVhXBPGNWFcE8Y1YVwTxjVhXBPGNWFcE8Y1YVwTxjVhXBPGNWFcE8Y1YVwTxjVhXBPGNWFcE8Y1YVwTxjVhXBPGNWFcE8Y1YVwTxjVhXBPGNWFcE8Y1YVwTxjVhXBPGNWFcE8Y1YVwTxjVhXBPGNWFcE8Y1YVwTxjVhXNO\\/\\/g1AY9OsJO+tPgAAAABJRU5ErkJggg==\",\"codePIXID\":65816896677}'),(15938,'1574752824',0.40,16202,'2023-10-27 22:14:22','2023-10-27 22:14:22','{\"participant_id\":16202,\"participant\":\"fegege geg\",\"cpf\":null,\"email\":null,\"telephone\":\"(43) 43432-4324\",\"price\":\"0,40\",\"product\":\"A\\u00c7\\u00c2O 300 NO PIX\",\"productID\":\"46\",\"drawdate\":null,\"image\":\"01694447917.jpg\",\"PIX\":\"0.40\",\"countRaffles\":2,\"priceUnic\":\"0.71\",\"codePIX\":\"00020126410014br.gov.bcb.pix0119felipesita@live.com52040000530398654040.405802BR5911VELOZIMPOTS6008So Paulo62240520mpqrinter6599926226463041459\",\"qrCode\":\"iVBORw0KGgoAAAANSUhEUgAABRQAAAUUAQAAAACGnaNFAAANLklEQVR4Xu3XXZIbOa+EYe1g9r9L70AnDCGZAEg5vujgaWum37yQi4UfPtV3fjw\\/Pr8e883nBeOdYLwTjHeC8U4w3gnGO8F4JxjvBOOdYLwTjHeC8U4w3gnGO8F4JxjvBOOdYLwTjHeC8U4w3gnGO8F4JxjvBOOdYLwTjHeC8U4w3gnGO8F4JxjvBOOdYLwTjHeC8U4w3gnGO8F4J9X4mPnn97t\\/VlVHN\\/ye14+3uC9mf23NPuZTjI3oXowY3YZRTzE2ghHj3oZRTzE2ghHj3oZRTzE2ghHj3vZ5Rr9vx5g5FwZ5tEgxvm+01KOCsbZgbMczQE\\/LsbdgbMczQE\\/LsbdgbMczQE\\/LsbdgbMczQE\\/LsbdgbMczQE\\/LsbdgbMczQE\\/LsbdgbMczQE\\/LsbdgbMczQE\\/Lsbf8YOPYuRVUzcLj9xWi5NNeHT8j2x3tcox+h3ErqJqFB8YIRr3DuBVUzcIDYwSj3mHcCqpm4YExglHvMG4FVbPw+AhjLI6q18WTr93fnb6qXut4wenybFmPb9owYsSIEeO5DSNGjBgxntsw\\/hSj351aKmqkjWXGF4w\\/wX75GluPxzaMevfcNmPMYGxtGPXuuW3GmMHY2jDq3XPbjDGDsbVh1Lvnthlj5v\\/TOI71skbJlshwj8Lp7iYbT9sRI0YdMWLEiHHNuoAR47pjPG1HjBh1xPhfNY74iu\\/42S\\/H+JWf\\/XKMX\\/nZL8f4lZ\\/9coxf+dkvx\\/iVn\\/1yjF\\/52S\\/H+JWf\\/XKMX\\/nZL8f4lZ\\/98n+p8Rz992g8jXX+ifyhEE9aUN+9DcZTASPG98F4KmDE+D4YTwWMGN8H46mA8TOM4+5YEjLzntuN7huplLbF0Gyxe3xLBCNGBSPG8uS+EYwORozlyX0jGB2MGMuT+0YwOp9mrKNZ1BWq5ot4Ms\\/No9A+7Q9GNddgxIgR46p6HuMDI0aMr5b4F6PnMT4wYqxL1DbWZbUVIi5Ym++i2j78tGr8CWowxruoYsSIEWMNxngXVYwYMWKswRjvovrjjBXVCvHvqVqNzjBGtN5dWYi+pq3B2KoYMaoPoy7z3RhPCozqw6jLfDfGkwKj+jDqMt+N8aT4IGPOjd7wxPbY2e7Z8JHxfc+tWmdPPyMYFYwY3\\/yMYFQwYnzzM4JRwYjxzc8IRgXjhxpjPosTVXmjxe8Uf6SNpy35NG6rX7UeMa53+5Z8wogRI0YVMWI8tPidgnEVMWI8tPidgnEVP84YqZ7TEh3HtRXaUJlRjZjSPtJPa7aenhhbH8YsYWyz9fTE2PowZgljm62nJ8bWhzFLGNtsPT0xtj6MWforRg\\/455wGqJdF2pg\\/rTa3wvjcw\\/f5GWNrbgWMHsPoZ4ytuRUwegyjnzG25lbA6DGMfsbYmlsBo8e+1ei2OjDIzVOf3KexM0rHfGoLMG73YMS4jvnUFmDc7sGIcR3zqS3AuN2DEeM65lNbgHG7B+PnGiNvduY7x7xnfl8+aXabiLQviDfb3yEE9e+wHjGuYIx3DkaMa3abiGCMdw5GjGt2m4hgjHcORoxrdpuIYIx3zl8xrlftija6teiD6mLN+t16MT8y3zX3oa+e8hXGuiXfYcSovnrKVxjrlnyHEaP66ilfYaxb8h1GjOqrp3yFsW7Jdxj\\/nrF6nnlFPjXK2O6WDTqelG2iNWcw6rLtSdkmMGIcwdizTWDEOIKxZ5vAiHEEY882gfEbjVaMH19b12nnH68o8R3jq+o7FTIYIxgxYsSIEaNz4mGcd2DE6Jx4GOcd\\/3rjuddX7GTLcoGyfZCe6jEyqrHF35ctfj4BML621GpswahgxIjxgRHjq5ALFIwYMT4w\\/reMY1N4lK0v4sURTdTm9gUujK\\/3qkiFYowCRowYyxHjKxijgBEjxnLE+ArGKPxU4+nJbh3rkxW6zMlSpG1xdSyovAjGaHEwYsSIMYMxWhyMGDFizGCMFueHGCPZ5nhKV1SZtTG7P+XRioj3OV4\\/glHBiBFjuSeSs\\/tTHjFiLMH42GR+yiNGjCUYH5vMT3nE+GlGdWxLhPIXaGQD1IKO9YO84O3n+l0Eo44YXcCoqgoYa0FHjC5gVFUFjLWgI0YXMKqqAsZa0BGjC59ifFZFzZCNxc3o5FsX2pbzRY86lsGo5AuMGHs8lsGo5AuMGHs8lsGo5AuMGHs8lsGo5AuMn2U8XfuHwq9O2bXZolkXzh8ZLfrJYHQLxgdGjFHA+ApGt2B8YMQYBYyvYHTLjzOOtlhmSh7VZ8A267Tj2HIacyGDMYIR48p22wjGCEaMK9ttIxgjGDGubLeNYIxg\\/Ejjr7UzAM\\/DZb5x7NRsjrUvyD6v17E2x1Pry2DEiHEda3M8tb4MRowY17E2x1Pry2DEiHEda3M8tb4MRoyfaqyAltXbdvqolm1MPB\\/HllpXolqDEWPL6sWYiWoNRowtqxdjJqo1GDG2rF6MmajWYMTYsno\\/xOjF3llRusITtXlsiWpbmsfo01gt+DYHI0bNY8RYJmrz2IJR8xgxlonaPLZg1DxGjGWiNo8tGDX\\/acaxeA3vUKU2jyval2YGzwtUdaEGo2cjGDGuqgs1GD0bwYhxVV2owejZCEaMq+pCDUbPRjB+kPG52kxp7iycKIoXGDVSC+1bTvswYsSI8XXEOPdhxIgR4+uIce7D+FON9dqGqrzo8xLtzAk9bVUX9q83DyNGP2NUASNGjK9gVDCqgBEjxlcwtmweaX3Vn++pV7S+0ZJ9b4\\/1S9fjKxj\\/hBpHjNGian3CiPF4xBgtqtYnjBiPR4zRomp9wojxeMQYLarWpwtGt43L1tzkjW85V3e3m7e\\/iO7AuFUxxlGFWs1RjNmP8bQKY63mKMbsx3hahbFWcxRj9mM8rcJYqzn6V4x6X5dE\\/unV2BQZqKjuffVGHQe0NuvKDEb1YfTA6W6MCkb1YfTA6W6MCkb1YfTA6W6MCkb1YfTA6e7vN+Y9ljnaGYcqe24f5C1ZdRrUPB\\/j30NfP2H00JrAqGCMQj9h9NCawKhgjEI\\/YfTQmsCoYIxCP2H00JrAqHyrsSqyWJ7GaPbZoxYvGHhXfRx\\/ljrmYMSYRYxZxYhRwYgxixizihGjgvGnGpU6JWi9sT1tfS2e9TFz2jxaIhijoFkfM6fNoyWCMQqa9TFz2jxaIhijoFkfM6fNoyWCMQqa9TFz2jxaIhijoFkfM6fNoyWCMQqa9TFz2jxaIhijoFkfM6fNoyWCMQqa9TFz2jxaIhijoFkfM6fNoyXybzOe2sZ85rTzTUstxLtY+jh8veO\\/Qx5LbV77xIgRI8YSjDGvYMS4N79pwRjBiHFvftOCMfK5xujwTySPyobSO99dx+qNszqOB3I\\/KRh7dRwxYlwnBWOvjiNGjOukYOzVccSIcZ0UjL06jhi\\/wVhlcaNzWux3kmX8VXarzy2uOjmGMYIRI0aMTo5hjGDEiBGjk2MYIxg1mjFF99QWfVAWPOF47PE\\/fXP2tSpGjBmMKxgxKhgxRjCuYMSoYPzBxtob79pUlhrvVKgtsa9tjpw+fKzKYMTYBjBiLBkFjBhLMGLEWAoYMZb8x41jsY\\/ZMuYjp7vbl459p8+oE7ptzfoZ4+PEw1iDEePr6Jadh7EGI8bX0S07D2MNRoyvo1t2HsaabzU6TeF3+aMM\\/NiS027Zeb6oPnk2gjGCcRQwYlwtY0tOYxwFjBhXy9iS0xhHASPG1TK25DTGUfgE40hO\\/Vo36rJ88jGaRzTrqsfq5vbNkZzwXwkjxidGjBGMrwmMEYwKxlcVI0aMCsYWLzmjxmVavE34q\\/TNtbk9jVUYMToY1YwR4ysYMSoY1YwR4ysYf6ZxDZcl9clHvauzbfvQerZCT+tjrP0xMNalGP2EEeNrFqOSA85pSavWWYxKDjinJa1aZzEqOeCclrRqncWo5IBzWtKqdRajkgPOaUmr1lmMSg44pyWtWme\\/y3i6ti32fG73FXoa1XrcP3L7oP0dxkg9YsSIsVymp1GtR4wYMZbL9DSq9YgRI8ZymZ5GtR4xfpZxmx+x22OnxBW\\/6ht\\/pKunBbUlghEjRowY3YcxgzGCESNG92HMYIzYuK9z86ZoOb3zhI+b1rxs8TNGBWO0aDvGFoz7O4zZou0YWzDu7zBmi7ZjbMG4v8OYLdr+UUaty6e4wn16559a0NIq2z3j77AFo5ZizMVR1RUY92DUUoy5OKq6AuMejFqKMRdHVVdg3INRSzHm4qjqir9uHEfdt9Y9+iaTNbsdY8Kf4TEVaosW1GCMY0xgdDBinCiMGDG+ghHjRGHE+HOMI2\\/IXlz7pNhislvaF4zN9VsiGCMYMb6WuuWB8Xcdo6KlKxhfS93ywPi7jlHR0hWMr6VueWD8XceoaOnKBxo\\/NRjvBOOdYLwTjHeC8U4w3gnGO8F4JxjvBOOdYLwTjHeC8U4w3gnGO8F4JxjvBOOdYLwTjHeC8U4w3gnGO8F4JxjvBOOdYLwTjHeC8U4w3gnGO8F4JxjvBOOdYLwTjHeC8U4w3gnGO\\/lXGP8PXmyz8NjI4nUAAAAASUVORK5CYII=\",\"codePIXID\":65999262264}'),(15939,'1403572873',0.40,16203,'2023-10-27 22:20:52','2023-10-27 22:20:52','{\"participant_id\":16203,\"participant\":\"fef efef\",\"cpf\":null,\"email\":null,\"telephone\":\"(43) 43434-3434\",\"price\":\"0,40\",\"product\":\"A\\u00c7\\u00c2O 300 NO PIX\",\"productID\":\"46\",\"drawdate\":null,\"image\":\"01694447917.jpg\",\"PIX\":\"0.40\",\"countRaffles\":2,\"priceUnic\":\"0.71\",\"codePIX\":\"00020126410014br.gov.bcb.pix0119felipesita@live.com52040000530398654040.405802BR5911VELOZIMPOTS6008So Paulo62240520mpqrinter6582808231363042D4D\",\"qrCode\":\"iVBORw0KGgoAAAANSUhEUgAABRQAAAUUAQAAAACGnaNFAAAN40lEQVR4Xu3XW3IkOQ5E0dhB73+XvYMYExKg48HQjMk4Uqrq+kcWSYDgCf3Vdb99\\/r36yfsF45lgPBOMZ4LxTDCeCcYzwXgmGM8E45lgPBOMZ4LxTDCeCcYzwXgmGM8E45lgPBOMZ4LxTDCeCcYzwXgmGM8E45lgPBOMZ4LxTDCeCcYzwXgmGM8E45lgPBOMZ4LxTDCeCcYzwXgm2Xj1\\/ONnuSXOvPDv+mkt8WPV1qytr+xai921YMQYbfZvbsGYghHjbLN\\/cwvGFIwYZ5v9m1swpmDEONvs39zy40adl227ld9u5EjjZXf0qSVvIxhHiwWjreKdXMCIsbdYMNoq3skFjBh7iwWjreKdXMCIsbdYMNoq3smFnzO2mSrsXvQnopCbbWVn0dKaFV3zg\\/I4Rj\\/DiHFF1\\/wAo5ptZWcYMa7omh9gVLOt7AwjxhVd8wOMaraVnWH8dcY8LuLPxlmuapS2elbRgIfHMapvPKtgtC3GaFnL5zaMGDGmlrV8bsOIEWNqWcvnNowY38QYb+wn+RP\\/qmulfJVHzVJgxIjxFYylzbfXfhJGXVvLbZtvr\\/0kjLq2lts23177SRh1bS23bb699pMw6tpabtt8e+0nYdS1tdy2+fbaT8Koa2u5bfPttZ\\/0Q8a2zY8VirdYmrsVdm8XWVuNLUaMscWIESPGdVcFjBjXG201thgxxhbjn2ps0RPf8TMfx\\/iVn\\/k4xq\\/8zMcxfuVnPo7xKz\\/zcYxf+ZmPY\\/zKz3wc41d+5uMYv\\/IzH8f4lZ\\/5+C817hP\\/PWqrNk4\\/lk8KtooB+ewxGHcFjBifg3FXwIjxORh3BYwYn4NxV8D4Hsb2tg0xmXj3eFF9LZlSpgjqLXK3b7FgxBjBiDGt1NeCUcGIMa3U14JRwYgxrdTXglF5N2N+0YvxRKn6atesJ6xQPu0TYzTnYLRmK2D04iutijGC0ZqtgNGLr7QqxghGa7YCRi++0qoYIxit2QoYvfhKq\\/6kcR2ltjbOGlrB4gXlUfswqv0JcjDGGUaMGDF667pR93aU3sGIEaO3rht1b0fpHYwYMXrrulH3dpTeeVOjRTPLNpMjrohVe0dV\\/yBRVLC+os3BWKoYMUYfxnhMb2P0YFzxgvVhjMf0NkYPxhUvWB\\/GeExvY\\/S8tVGK7LGtzZS2bXWtvJ2rljZq99OCMYIR48NPC8YIRowPPy0YIxgxPvy0YIxgfD9j3B+8fxyl6EZelSeyTGeWmKez8Vr+qrW0XQQjxhXdyCuMvotgxLiiG3mF0XcRjBhXdCOvMPoughHjim7k1TcY71wcQ1SNSZ7yaVopqx6KaMnzrBrN+TbGyKpjxLiq0ZxvY4ysOkaMqxrN+TbGyKpjxLiq0ZxvY4ysOsY3MQ6AxkXsTDeUgYoB7YY+Q4X2Z2mjMGLEiLG\\/qGDUGmMqtFEYFYxaY0yFNgqjglHrX2OUJ1+Y4zzxQdY6ULvqnbe+iub8B1Iw7qo3RowYMWLcVm+MGDFixLit3n+B0WIzm6zE28tMDdbd3KxIMT\\/c75R5GHOzgjHi7RgxYuwdGDG+ghEjxt6B8Y81rqNosydE0f0o5JRP01Y3LOMhO9utcl\\/e+dGFsTxkZ7tV7ss7P7owlofsbLfKfXnnRxfG8pCd7Va5L+\\/86MJYHrKz3Sr35Z0fXRjLQ3a2W+W+vPOjC2N5yM52q9yXd350YSwP2dlulfvyzo8ujOUhO9utcl\\/e+dGFsTxkZ7tV7ss7P7p+jVFpt0TxH0usWjUbi9bSbrRmD8b5rK8i7QZGjGupo9JxYyw3MGJcSx2VjhtjuYER41rqqHTcGMsNjN9q9Lb5k1EaFzPbmW9ViOiN9lXjDQWjChG9gREjxnSGcccb9zFixLiy4437GDFiXNnxxv2fM+57yxOjJa75Klp2A8bW0qpl3mrRegAwvoJxzlTLbsDYWjDOmWrZDRhbC8Y5Uy27AWNrwThnqmU3YGwtGOdMtewGjK0F45yplt2AsbVgnDPVshswthaMc6ZadgPG1vJHGtsk80RGn0WDLfqCSPuCXNLXt6+yZk3BaAWMGDGmLcboW0uMGD2jz4Ix+tYSI0bP6LNgjL61\\/E3G3Uru2OaVFPGY4iVLmaJqG9A+EqO3KBgxYsTowWgtCkaMGDF6MFqL8pcYLd6m6FY8kWXS2t258u1OYaMUjW\\/BGME4ZmLsZ15oBxgxWi9GjEOmlW8xYkzBeA2ZVr7F+G7G6BhDAqUviCu5eRRELi1eePxcnVkwxhajChjLAIytEFuMKmAsAzC2QmwxqoCxDMDYCrHFqMK7GO+syGmyNjjGpQsf8VMV9JHlc1t0zYMx4gcYMdbomgdjxA8wYqzRNQ\\/GiB9gxFijax6MET\\/A+F7G3bOfFP79pJpboqrC\\/iPLF3gwqgXj9YkCYwSjWjBenygwRjCqBeP1iQJjBKNaMF6fKH7I2NpsWK7GVk8MxaRo06Zo1O41D0YLxnkrv4MxBaMF47yV38GYgtGCcd7K72BMwWjBOG\\/ld37IWN6xaPoO4LxIvla+QM2ZEnfba+rzYMSIsd7FiDGCESPGehcjxgjGv9PYADkabH3\\/Q8HOgqdtk+V6ZHkiGDG2PFIeC3aGseWR8liwM4wtj5THgp1hbHmkPBbsDGPLI+WxYGcYWx4pjwU7w9jySHks2BnGlkfKY8HO\\/mKjBmtcnt7O7FoM9mc1pW0tttW1VohrORgxxv3VhnEVMNoK4z3GDQ9GjK9mW2G8x7jhwYjx1WwrjPcYNzzvYGyD1+UEGNAoeJ+eKF\\/qabxyN09pwagzC8YbY1RVyMGoMwvGG2NUVcjBqDMLxhtjVFXIwagzC8b7fYx3fswP9GxsdwC\\/u9POtHm60eatlry7MUYwjkkYoyXvbowRjGMSxmjJuxtjBOOYhDFa8u7GGME4Jn230a\\/G9LzVEOuLbU7wdoBc2H198DBi1BpjFDBixPgKxgjGKGDEiPEVjCVtUpvu9x\\/eVnxY8TSF9z1u85eu5SsY+91PthgvjBgxYtxuMV4YMWLEuN3+XuO+t2T\\/rN0tn7ZDqZC\\/av5FcsFvrCVGjDl7hd3FGPFZapvZK+wuxojPUtvMXmF3MUZ8ltpm9gq7izHis9Q2s1fYXYwRn6W2mb3C7mKM+Cy1zewVdhdjxGepbWavsLsYI3buA3PHa6uz3NJQVi197UzbBs3NGm\\/BeI0zbTHmFoyvYLzGmbYYcwvGVzBe40xbjLkF4ysYr3GmLcbc8v3GKPpKiZm2yTK7psdUFVkpUPG0tX83fVprUpqbzjBixIgxD7WMt8sZRowY01DLeLucYcSIMQ21jLfLGcZvNUrhxbRqV71PnmjRgIbPX99k+j5dUzBi9CJGr2LEqBatMaYqRsX7MEaL1hhTFaPifRijRevfYYz8txfLSjfaFC\\/EXW3zp0W1QXMwWiHuaosRY7qRg9EKcVdbjBjTjRyMVoi72mLEmG7kYLRC3NUW448bLX6hbeO+ZzfzoSUXYvL+6xX9HXybah\\/BmIbaibY5GBWMGNdQO9E2B6OCEeMaaifa5mBUMGJcQ+1E2xyMyv\\/NqJlliEVnXmioOPOfdi2\\/2KttuyHXHcaPzGrbYsS4dhg\\/MqttixHj2mH8yKy2LUaMa4fxI7Pathi\\/y5hfvNeF3WCd6dMs8YRPKX1qUVXxaxgtGB8vYFzxaxgtGB8vYFzxaxgtGB8vYFzxaxgtGB8vvJHx9qseUeIdnfk7xbOZHteu\\/JGP3+x9pYoRowfjCkaMEYwYLRhXMGKMYPw7jerQzHbLS4XniWuq5i8oCkv7cD+zrUXjMWIsFzBiLMEY0dV2ASPGEowRXW0XMGIswRjR1XbhrYwabOPKtuE9Ucg3rKU1l3njM9r4wK+7WmOM6vwZ4zFivMetT4YoGOOu1hijOn\\/GeIwY73HrkyEKxrirNcaozp8xHiPG26d77Oos7Ma1at5a4sUdTw\\/lle5aMFowzgLGWOmuBaMF4yxgjJXuWjBaMM4CxljprgWjBeMs\\/LixxW8Vz\\/7HUni666PKgDzZoCV+Q38ljBhvjBh3PxaMD8EYNzBixPgKxgjGuPHnGy0aoq2vNFOPlWr7gmy0qLms2iiMGBWM0YzRChgxYlzBGM0YrYAR419qXJfTkLG6MsqvffZEG5Chbbyu6dMsGDUUY1tdGDHGCqNfUDD28RgxYkxDMbbVhfHPMMZgbfPgWcgzmzuSt+VLh0yTyxlGv6stRowYMXow2l1tMWLEiNGD0e5q+zcZx\\/0S74uVtiMNf60v1bfEh6dbqw+jB6MFI8ZXX6y0HcFowYjx1RcrbUcwWjBifPXFStsRjJbfZSyP5cFRUHLBEs05Ise2Dc0DvEVrjOlMzbuhGHPBghHjat4NxZgLFowYV\\/NuKMZcsGDEuJp3QzHmguW7jHrbVvaE+uIse9RSPjI3x7zd3wHjmhktGDGueRi9L84wao2xNMc8jN4XZxi1xliaYx5G74szjFr\\/GmPb+iSNuxbFUjxje+dPy4rIHo8R4z2KGF\\/B6MH4CsYbI8YIRg\\/GVzDef6mx5YHc3hHPO2e1tbQvaJPzKAvGqGLMVYwfwYhRa431YHyt1HJh\\/KhjjGisB+NrpZYL40cdY0RjPW9ofNdgPBOMZ4LxTDCeCcYzwXgmGM8E45lgPBOMZ4LxTDCeCcYzwXgmGM8E45lgPBOMZ4LxTDCeCcYzwXgmGM8E45lgPBOMZ4LxTDCeCcYzwXgmGM8E45lgPBOMZ4LxTDCeCcYzwXgmGM\\/kVxj\\/AwlYRJxaKn\\/wAAAAAElFTkSuQmCC\",\"codePIXID\":65828082313}'),(15943,'-373272590',0.40,16207,'2023-12-07 20:44:28','2023-12-07 20:44:28','{\"participant_id\":16207,\"participant\":\"Rafael da Luz Rodrigues\",\"cpf\":null,\"email\":null,\"telephone\":\"(44) 99757-5489\",\"price\":\"0,40\",\"product\":\"A\\u00c7\\u00c2O 300 NO PIX\",\"productID\":\"46\",\"drawdate\":null,\"image\":\"01700944671.png\",\"PIX\":\"0.40\",\"countRaffles\":2,\"priceUnic\":\"0.71\",\"codePIX\":\"00020126410014br.gov.bcb.pix0119felipesita@live.com52040000530398654040.405802BR5911VELOZIMPOTS6008So Paulo62240520mpqrinter683462041466304AB52\",\"qrCode\":\"iVBORw0KGgoAAAANSUhEUgAABRQAAAUUAQAAAACGnaNFAAAMvElEQVR4Xu3XXXIbOQyF0d5B9r\\/L2YFmjAZ4QQBKqlyMR7a++6DwBwBP+y3X4+Xzz1VPXi8YzwTjmWA8E4xngvFMMJ4JxjPBeCYYzwTjmWA8E4xngvFMMJ4JxjPBeCYYzwTjmWA8E4xngvFMMJ4JxjPBeCYYzwTjmWA8E4xngvFMMJ4JxjPBeCYYzwTjmWA8E4xngvFMMJ4JxjPJxqvm112Rtvrx\\/HfrP5FWFwNUrK2vrK0kv7GWT8ow3itrK8GIcSrDeK+srQQjxqkM472ythKMGKcyjPfK2kow\\/l2jzmNbUEN\\/bAvFivsHFXwpVjBinMow1mIFI8apDGMtVjBinMow1mIFI8ap7CWNUmhbSjTYz7YSnZV5uvDVNn563IMRI8Z7hREjxv0MI8aKKluM5Qwjxooq2x9pNM80zqGh9ds4y6Ms5VlFA6bHvWQtn5RhxIgRI8a5DCNGjBgxzmUY38e43WZAm7SlXPR57SOfPo5RF30eRoy9GKMu+jyMGHsxRl30eRgx9mKMuujzMP7vxraNSblVnqkjVlaQb2Obp2wdCkathPKz2GLEmIJRK6H8LLYYMaZg1EooP4stRowpGLUSys9ii\\/EFjCWB+pqf\\/jjGz\\/z0xzF+5qc\\/jvEzP\\/1xjJ\\/56Y9j\\/MxPfxzjZ3764xg\\/89Mfx\\/iZn\\/44xs\\/89Me\\/qfE30X+yrvXfKPvP2MOn+yoG+1m06Uzxypjym2DEWILxD8GIsQTjH4IRYwnGPwQjxpIXMmqmrbYXdTGdWbHO1NtG2ap\\/n9LOMGooxkfzTGcY992dNjiC8U47w6ihGB\\/NM51h3Hd32uAIxjvtDKOGYnw0z3SGUevh8o7fSmGr2ObichEUldi\\/paSsPPkj1xKjl9i\\/GNWP8cKI0WsVjKukrDwYMVqtgnGVlJUHI0arVV7QaFGFl2nwFj8TKmbmlUWfVtq2M32kStbFWt7xPozDGUaMdrGWd7wP43CGEaNdrOUd78M4nGHEaBdrecf7MA5nGL\\/e6LXWarzYTmkl8bYu8rwt+fsifhV\\/lrXNOz+KBowYV1oJxnwUDRgxrrQSjPkoGjBiXGklGPNRNGDEuNJK\\/rrRC3\\/d52nV3FGcb63YUp54OMXT\\/wTtpwRjBCPGJz8lGCMYMT75KcEYwYjxyU8JxgjGVzNOAJueZ9qtncWPOlRcvq+U5EwfWYIR44VRwYgxBSPGC6OCEWMKxvc0+pArU\\/IQS397+rTSpnl5Wy62b87BiNG2GOsFRowYMd5bjPUCI0aMb2sMgB7LEU8p2jibv+WxQ\\/VpIcsPKRj7LUaMcauHFIz9FiPGuNVDCsZ+ixFj3OohBWO\\/xfgaRuX3k6TQT5ZZcTymKcVdBhTZ\\/lq6WMGIMdKfwJguVjBijPQnMKaLFYwYI\\/0JjOliBSPGSH\\/iS42a6Qcxcxqco7pILhZ0G5\\/dlu2hdbaWdzBixNhew6gTjFMXxvoaRp1gnLow1tcw6gTj1PVCxlymceI9PXvs7vJBkXUfJXYmlM5yXd75Eca9xM4wYoy6vPMjjHuJnWHEGHV550cY9xI7w4gx6vLOjzDuJXaG8auNZaafWTZeyzZdUNvogwrFi2LV\\/gQKxgsjRowYU4eC8cKIESPG1KFgvN7UGHm6zavtxemJ4tGfYCrJiY\\/0YOye6QwjxgjG7pnOMGKMYOye6QwjxgjG7pnOMP4fxjIkfkpreUfRK2orq7y1lFubgjGCESPGCyPGlFVZZVphxIgxZVVWmVYYMf4kozcUSqz8x6Lt9EF6on+fSvKAxyBTMGJ8tH6MGO82jPsujcOIsT+BESPGj2D80UY\\/qi\\/qHW1Lk5dE\\/Kx3TLf5SYtWvs07P8LYbjEqXhLxs94x3WJUvCTiZ71jusWoeEnEz3rHdItR8ZKIn\\/WO6Raj4iURP+sd0y1GxUsiftY7pluMipdE\\/Kx3TLcYFS+J+FnvmG5\\/pDGjLNOkwPvqGgCx8q0Vx0WepxRovigHGDFaLUaMTaaVbzFiTMF4NZlWvsWIMQXj1WRa+Rbjaxm9P1IAnuC1b7HIHSg9q45WoluVKBijw\\/7FqBKMGCMYH+1FjFuJbjFaMD7aixi3Et1itGB8tBe\\/g9GzTcrueNvSyF2rNqVsFU3GiDEHI0aMmowRYw5GjBg1GeO7GtfR1QY\\/vehQ3eaS6NXF\\/BlW0v4s+96Otq4LI0a7wHgHo0owXhgx2gXGOxhVgvHC+AONpas05NZ4dh2kYlH8wlYqFjkupt79tbXEiHG\\/tWC8gxEjxr1XF1MvRowYMW63Fox3vrmxVORV5Pc8FZfVlKmtnGEsqylTG0aMXoFxyNSGEaNXYBwytWHE6BUYh0xtGL\\/YWGINIbOTto2VYiVlm9uevGa3ORgxlmDcY7c5GDGWYNxjtzkYMZZg3GO3ORgxlryM0eKtgfJoayurs3FxlreRto02TfFseEsuwYgRI0aMOsGotG20YcSIESPGfRttP9yYHyvbeMwv+mp6os2z5Le3DqvbHvJgxFi2GNctxvYiRs3EWDusDiPGSJuJsXZYHUaMkTbzBY0W1bYzS1z4rEgrtsfk2VKg6sDYijGqoZxZMGKsxRjVUM4sGDHWYoxqKGcWjBhrMUY1lDPLaxh\\/LcC2Ur+e8JKNopJ8G4DStiamoe37MGKMrtyPESNGjBjVlfsxYsSI8V2NueHymb5SSfmCTevZ2lpHv3i69WCcOvrF060H49TRL55uPRinjn7xdOvBOHX0i6dbD8apo1883XowTh394unWg3Hq6BdPtx6MU0e\\/eLr1YJw6+sXTreebGu1S7\\/yza20bxXkbbT4s2ry3fIHe2No0FKMPw4gRY9pGMUZ1rCVGP8aYt1GMUR1ridGPMeZtFGNUx1p+C6PitVptQ9RfPihnQ3nxlUfllaJPy2d5F\\/FxWmFMwViC8YERY2wxYtyC8YERY2wxfn+jDc7P6h1LnAmSAdHrVzFl+j7vjWib2xSMGDHevRFtMWLUGiPGCMY1BSNGC8Z3MkbWZVoVstdJsX2Bl+hzLeULLOq99jYFI0a\\/xOi3GDGqROsYhTFWHoxWhzFKtI5RGGPlwWh1GKNE6xj12kYbEhXqkja\\/Y7ebzBOy0qvtVKfHCwNj6dV2qsOI0UrWsl7aHF9j\\/AhGjFaylvXS5vga40cwYrSStayXNsfXGD+C8euNeWX9MXMqmX7U5nXqlcwS35cfwogxghHjnalk+sGIEeOdqWT6wYgR452pZPrB+G2MmlRq8+2V8eVMvNy2ydoq0ootGNWGEeOeVmzBqDaMGPe0YgtGtWHEuKcVWzCqDeOrGRUrC4XfbkZFvXnK9s70zTndvX\\/VWmLEiNGC8cLoZ2uJESNGC8YLo5+tJcb3M048JW5VonGZco2P3cX5Dc3bSnIwxpkHo4IR412H8YHRglHBiPGuw\\/jAaHkT4zq6YxtfxZB8sU3ynq5tgEgeWr7Kkj9tLXUUQx4YMdoKI8Z1i7E0YMSYUgZjxJiC0VcYv7GxDC5P5Elxm0v0Y8XxYrktFzkxT9tVt5YYMWJUMGLEeAcjRowYtV11a4nxrYxbw\\/S26nytb3l6u6VcqMOzjfJgxIgR46rzNcY7GDFixLjqfI3xDsb3NJYImsf9WorAlzqPPtLarmcdMU\\/RQx6MGB8YMWL8iB7yYMT4wIgR40f0kAcjxoj32ST92KR4MVNisNoyPj\\/bydG2iiIYMUY0HWNqW0URjBgjmo4xta2iCEaMEU3HmNpWUQQjxoimv4ZxzYpoZi9pvOh4+hm6KCXtT1DexYjRgnGVYMQYwYjRgnGVYMQYwfiuxu1yekwl\\/pjesUy32sqo7YaazjD6rbYYMWJct57pVluMGDGuW890qy1GjBjXrWe61RbjaxlLvy4KpY3TbS8p3zcPVdvln+bBiBHjOFRtF8a5BKMuMG5tF8a5BKMuMG5tF8a5BKMuXteobovqbLo3ahUpxb4Njxdt3+xT9KNgtBVGjBgxtnkYbYURI0aMbR5GW2HUdLu1lQ3e8G1wlGho5kWdH8RD+SJ6PRhjKEYfbLfxBEaMGO9g3IpjHkavizOMWmPcimMeRq+LM4xafxtj2eYhiqD9M9p2+\\/D2QRZ91QTFaMGIMQUjxrhdy0rBiPGBESPGOxjv1XsYS6KrrOzOO2JSXvXb8raXSLtNHv4iWnuFghHjR7wDY\\/Rq7RUKRowf8Q6M0au1VygYMX7EOzBGr9ZeoWDE+BHv+GrjqwbjmWA8E4xngvFMMJ4JxjPBeCYYzwTjmWA8E4xngvFMMJ4JxjPBeCYYzwTjmWA8E4xngvFMMJ4JxjPBeCYYzwTjmWA8E4xngvFMMJ4JxjPBeCYYzwTjmWA8E4xngvFMMJ4JxjPBeCbfwvgvgos\\/4sKB1SAAAAAASUVORK5CYII=\",\"codePIXID\":68346204146}');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conferido` tinyint(1) NOT NULL DEFAULT 1,
  `msg_pago_enviada` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raffles_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `valor` double(8,2) NOT NULL DEFAULT 0.00,
  `numbers` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pagos` int(11) NOT NULL DEFAULT 0,
  `reservados` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `participant_raffles_id_foreign` (`raffles_id`),
  KEY `participant_product_id_foreign` (`product_id`),
  KEY `participant_customer_id_foreign` (`customer_id`),
  CONSTRAINT `participant_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `participant_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `participant_raffles_id_foreign` FOREIGN KEY (`raffles_id`) REFERENCES `raffles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant`
--

LOCK TABLES `participant` WRITE;
/*!40000 ALTER TABLE `participant` DISABLE KEYS */;
INSERT INTO `participant` (`id`, `customer_id`, `name`, `telephone`, `conferido`, `msg_pago_enviada`, `email`, `cpf`, `raffles_id`, `product_id`, `valor`, `numbers`, `pagos`, `reservados`, `created_at`, `updated_at`) VALUES (16198,1388,'f dsff ds','(11) 98288-9012',1,0,'','',NULL,46,2.00,'[]',0,0,'2023-10-27 19:15:24','2023-10-27 19:48:03'),(16200,NULL,'FEfef','(15) 54545-4545',1,0,'','',NULL,46,60000.00,'[]',0,0,'2023-10-27 19:23:26','2023-10-27 19:48:03'),(16202,1390,'fegege geg','(43) 43432-4324',1,0,'','',NULL,46,0.40,'[\"3620\",\"0616\"]',2,0,'2023-10-27 22:14:21','2023-10-27 22:14:55'),(16203,1391,'fef efef','(43) 43434-3434',1,0,'','',NULL,46,0.40,'[\"4688\",\"4413\"]',2,0,'2023-10-27 22:20:51','2023-10-27 22:21:15'),(16207,1394,'Rafael da Luz Rodrigues','(44) 99757-5489',1,0,'','',NULL,46,0.40,'[\"3706\",\"3705\"]',2,0,'2023-12-07 20:44:27','2023-12-07 20:45:03');
/*!40000 ALTER TABLE `participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_pix`
--

DROP TABLE IF EXISTS `payment_pix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_pix` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key_pix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_pix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `participant_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_pix`
--

LOCK TABLES `payment_pix` WRITE;
/*!40000 ALTER TABLE `payment_pix` DISABLE KEYS */;
INSERT INTO `payment_pix` (`id`, `key_pix`, `full_pix`, `status`, `participant_id`, `created_at`, `updated_at`) VALUES (1,'1392387237','00020126480014br.gov.bcb.pix0126mspremiosoficial@gmail.com52040000530398654042.005802BR5913MSPREMIOS20236009Sao Paulo62240520mpqrinter65816896677630423F9','Aprovado',16198,'2023-10-27 19:15:24','2023-10-27 19:15:24'),(3,'1574752824','00020126410014br.gov.bcb.pix0119felipesita@live.com52040000530398654040.405802BR5911VELOZIMPOTS6008So Paulo62240520mpqrinter6599926226463041459','Aprovado',16202,'2023-10-27 22:14:22','2023-10-27 22:14:22'),(4,'1403572873','00020126410014br.gov.bcb.pix0119felipesita@live.com52040000530398654040.405802BR5911VELOZIMPOTS6008So Paulo62240520mpqrinter6582808231363042D4D','Aprovado',16203,'2023-10-27 22:20:52','2023-10-27 22:20:52'),(8,'-373272590','00020126410014br.gov.bcb.pix0119felipesita@live.com52040000530398654040.405802BR5911VELOZIMPOTS6008So Paulo62240520mpqrinter683462041466304AB52','Aprovado',16207,'2023-12-07 20:44:28','2023-12-07 20:44:28');
/*!40000 ALTER TABLE `payment_pix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premios`
--

DROP TABLE IF EXISTS `premios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `premios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `participant_id` int(10) unsigned DEFAULT NULL,
  `ordem` int(11) NOT NULL,
  `descricao` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ganhador` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cota` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `premios_product_id_foreign` (`product_id`),
  KEY `premios_participant_id_foreign` (`participant_id`),
  CONSTRAINT `premios_participant_id_foreign` FOREIGN KEY (`participant_id`) REFERENCES `participant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `premios_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premios`
--

LOCK TABLES `premios` WRITE;
/*!40000 ALTER TABLE `premios` DISABLE KEYS */;
INSERT INTO `premios` (`id`, `product_id`, `participant_id`, `ordem`, `descricao`, `ganhador`, `foto`, `telefone`, `cota`, `created_at`, `updated_at`) VALUES (451,46,NULL,1,'500','',NULL,NULL,'','2023-09-11 12:58:37','2023-11-25 20:39:15'),(452,46,NULL,2,NULL,'',NULL,NULL,'','2023-09-11 12:58:37','2023-09-11 12:58:37'),(453,46,NULL,3,NULL,'',NULL,NULL,'','2023-09-11 12:58:37','2023-09-11 12:58:37'),(454,46,NULL,4,NULL,'',NULL,NULL,'','2023-09-11 12:58:37','2023-09-11 12:58:37'),(455,46,NULL,5,NULL,'',NULL,NULL,'','2023-09-11 12:58:37','2023-09-11 12:58:37'),(456,46,NULL,6,NULL,'',NULL,NULL,'','2023-09-11 12:58:37','2023-09-11 12:58:37'),(457,46,NULL,7,NULL,'',NULL,NULL,'','2023-09-11 12:58:37','2023-09-11 12:58:37'),(458,46,NULL,8,NULL,'',NULL,NULL,'','2023-09-11 12:58:37','2023-09-11 12:58:37'),(459,46,NULL,9,NULL,'',NULL,NULL,'','2023-09-11 12:58:37','2023-09-11 12:58:37'),(460,46,NULL,10,NULL,'',NULL,NULL,'','2023-09-11 12:58:37','2023-09-11 12:58:37');
/*!40000 ALTER TABLE `premios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_description`
--

DROP TABLE IF EXISTS `product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_description` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_description_product_id_foreign` (`product_id`),
  CONSTRAINT `product_description_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_description`
--

LOCK TABLES `product_description` WRITE;
/*!40000 ALTER TABLE `product_description` DISABLE KEYS */;
INSERT INTO `product_description` (`id`, `description`, `video`, `product_id`, `created_at`, `updated_at`) VALUES (38,'<p>SORTEIO PELO SORTEADOR.COM.BR</p>',NULL,46,'2023-09-11 12:58:37','2023-09-11 12:58:37');
/*!40000 ALTER TABLE `product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parcial` tinyint(1) NOT NULL DEFAULT 0,
  `expiracao` int(11) NOT NULL DEFAULT 5,
  `qtd_ranking` int(11) NOT NULL DEFAULT 0,
  `qtd_zeros` int(11) DEFAULT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ganho_afiliado` int(11) NOT NULL DEFAULT 0,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qtd` int(11) DEFAULT NULL,
  `numbers` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processado` int(11) NOT NULL DEFAULT 0,
  `type_raffles` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favoritar` tinyint(1) NOT NULL,
  `modo_de_jogo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimo` int(11) NOT NULL,
  `maximo` int(11) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `draw_prediction` datetime DEFAULT NULL,
  `draw_date` datetime DEFAULT NULL,
  `winner` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `gateway` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'mp',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_user_id_foreign` (`user_id`),
  CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `subname`, `parcial`, `expiracao`, `qtd_ranking`, `qtd_zeros`, `product`, `slug`, `price`, `ganho_afiliado`, `status`, `qtd`, `numbers`, `processado`, `type_raffles`, `favoritar`, `modo_de_jogo`, `minimo`, `maximo`, `user_id`, `draw_prediction`, `draw_date`, `winner`, `visible`, `gateway`, `created_at`, `updated_at`) VALUES (46,'AÇÂO 300 NO PIX','SÓ GANHA QUEM JOGA',1,15,4,NULL,NULL,'acao-200-no-pix','0.20',10,'Ativo',5000,'0000,0001,0002,0003,0004,0005,0006,0007,0008,0009,0010,0011,0012,0013,0014,0015,0016,0017,0018,0019,0020,0021,0022,0023,0024,0025,0026,0027,0028,0029,0030,0031,0032,0033,0034,0035,0036,0037,0038,0039,0040,0041,0042,0043,0044,0045,0046,0047,0048,0049,0050,0051,0052,0053,0054,0055,0056,0057,0058,0059,0060,0061,0062,0063,0064,0065,0066,0067,0068,0069,0070,0071,0072,0073,0074,0075,0076,0077,0078,0079,0080,0081,0082,0083,0084,0085,0086,0087,0088,0089,0090,0091,0092,0093,0094,0095,0096,0097,0098,0099,0100,0101,0102,0103,0104,0105,0106,0107,0108,0109,0110,0111,0112,0113,0114,0115,0116,0117,0118,0119,0120,0121,0122,0123,0124,0125,0126,0127,0128,0129,0130,0131,0132,0133,0134,0135,0136,0137,0138,0139,0140,0141,0142,0143,0144,0145,0146,0147,0148,0149,0150,0151,0152,0153,0154,0155,0156,0157,0158,0159,0160,0161,0162,0163,0164,0165,0166,0167,0168,0169,0170,0171,0172,0173,0174,0175,0176,0177,0178,0179,0180,0181,0182,0183,0184,0185,0186,0187,0188,0189,0190,0191,0192,0193,0194,0195,0196,0197,0198,0199,0200,0201,0202,0203,0204,0205,0206,0207,0208,0209,0210,0211,0212,0213,0214,0215,0216,0217,0218,0219,0220,0221,0222,0223,0224,0225,0226,0227,0228,0229,0230,0231,0232,0233,0234,0235,0236,0237,0238,0239,0240,0241,0242,0243,0244,0245,0246,0247,0248,0249,0250,0251,0252,0253,0254,0255,0256,0257,0258,0259,0260,0261,0262,0263,0264,0265,0266,0267,0268,0269,0270,0271,0272,0273,0274,0275,0276,0277,0278,0279,0280,0281,0282,0283,0284,0285,0286,0287,0288,0289,0290,0291,0292,0293,0294,0295,0296,0297,0298,0299,0300,0301,0302,0303,0304,0305,0306,0307,0308,0309,0310,0311,0312,0313,0314,0315,0316,0317,0318,0319,0320,0321,0322,0323,0324,0325,0326,0327,0328,0329,0330,0331,0332,0333,0334,0335,0336,0337,0338,0339,0340,0341,0342,0343,0344,0345,0346,0347,0348,0349,0350,0351,0352,0353,0354,0355,0356,0357,0358,0359,0360,0361,0362,0363,0364,0365,0366,0367,0368,0369,0370,0371,0372,0373,0374,0375,0376,0377,0378,0379,0380,0381,0382,0383,0384,0385,0386,0387,0388,0389,0390,0391,0392,0393,0394,0395,0396,0397,0398,0399,0400,0401,0402,0403,0404,0405,0406,0407,0408,0409,0410,0411,0412,0413,0414,0415,0416,0417,0418,0419,0420,0421,0422,0423,0424,0425,0426,0427,0428,0429,0430,0431,0432,0433,0434,0435,0436,0437,0438,0439,0440,0441,0442,0443,0444,0445,0446,0447,0448,0449,0450,0451,0452,0453,0454,0455,0456,0457,0458,0459,0460,0461,0462,0463,0464,0465,0466,0467,0468,0469,0470,0471,0472,0473,0474,0475,0476,0477,0478,0479,0480,0481,0482,0483,0484,0485,0486,0487,0488,0489,0490,0491,0492,0493,0494,0495,0496,0497,0498,0499,0500,0501,0502,0503,0504,0505,0506,0507,0508,0509,0510,0511,0512,0513,0514,0515,0516,0517,0518,0519,0520,0521,0522,0523,0524,0525,0526,0527,0528,0529,0530,0531,0532,0533,0534,0535,0536,0537,0538,0539,0540,0541,0542,0543,0544,0545,0546,0547,0548,0549,0550,0551,0552,0553,0554,0555,0556,0557,0558,0559,0560,0561,0562,0563,0564,0565,0566,0567,0568,0569,0570,0571,0572,0573,0574,0575,0576,0577,0578,0579,0580,0581,0582,0583,0584,0585,0586,0587,0588,0589,0590,0591,0592,0593,0594,0595,0596,0597,0598,0599,0600,0601,0602,0603,0604,0605,0606,0607,0608,0609,0610,0611,0612,0613,0614,0615,0617,0618,0619,0620,0621,0622,0623,0624,0625,0626,0627,0628,0629,0630,0631,0632,0633,0634,0635,0636,0637,0638,0639,0640,0641,0642,0643,0644,0645,0646,0647,0648,0649,0650,0651,0652,0653,0654,0655,0656,0657,0658,0659,0660,0661,0662,0663,0664,0665,0666,0667,0668,0669,0670,0671,0672,0673,0674,0675,0676,0677,0678,0679,0680,0681,0682,0683,0684,0685,0686,0687,0688,0689,0690,0691,0692,0693,0694,0695,0696,0697,0698,0699,0700,0701,0702,0703,0704,0705,0706,0707,0708,0709,0710,0711,0712,0713,0714,0715,0716,0717,0718,0719,0720,0721,0722,0723,0724,0725,0726,0727,0728,0729,0730,0731,0732,0733,0734,0735,0736,0737,0738,0739,0740,0741,0742,0743,0744,0745,0746,0747,0748,0749,0750,0751,0752,0753,0754,0755,0756,0757,0758,0759,0760,0761,0762,0763,0764,0765,0766,0767,0768,0769,0770,0771,0772,0773,0774,0775,0776,0777,0778,0779,0780,0781,0782,0783,0784,0785,0786,0787,0788,0789,0790,0791,0792,0793,0794,0795,0796,0797,0798,0799,0800,0801,0802,0803,0804,0805,0806,0807,0808,0809,0810,0811,0812,0813,0814,0815,0816,0817,0818,0819,0820,0821,0822,0823,0824,0825,0826,0827,0828,0829,0830,0831,0832,0833,0834,0835,0836,0837,0838,0839,0840,0841,0842,0843,0844,0845,0846,0847,0848,0849,0850,0851,0852,0853,0854,0855,0856,0857,0858,0859,0860,0861,0862,0863,0864,0865,0866,0867,0868,0869,0870,0871,0872,0873,0874,0875,0876,0877,0878,0879,0880,0881,0882,0883,0884,0885,0886,0887,0888,0889,0890,0891,0892,0893,0894,0895,0896,0897,0898,0899,0900,0901,0902,0903,0904,0905,0906,0907,0908,0909,0910,0911,0912,0913,0914,0915,0916,0917,0918,0919,0920,0921,0922,0923,0924,0925,0926,0927,0928,0929,0930,0931,0932,0933,0934,0935,0936,0937,0938,0939,0940,0941,0942,0943,0944,0945,0946,0947,0948,0949,0950,0951,0952,0953,0954,0955,0956,0957,0958,0959,0960,0961,0962,0963,0964,0965,0966,0967,0968,0969,0970,0971,0972,0973,0974,0975,0976,0977,0978,0979,0980,0981,0982,0983,0984,0985,0986,0987,0988,0989,0990,0991,0992,0993,0994,0995,0996,0997,0998,0999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1454,1455,1456,1457,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1469,1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,1600,1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1772,1773,1774,1775,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,1853,1854,1855,1856,1857,1858,1859,1860,1861,1862,1863,1864,1865,1866,1867,1868,1869,1870,1871,1872,1873,1874,1875,1876,1877,1878,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1889,1890,1891,1892,1893,1894,1895,1896,1897,1898,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1911,1912,1913,1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2050,2051,2052,2053,2054,2055,2056,2057,2058,2059,2060,2061,2062,2063,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2082,2083,2084,2085,2086,2087,2088,2089,2090,2091,2092,2093,2094,2095,2096,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2119,2120,2121,2122,2123,2124,2125,2126,2127,2128,2129,2130,2131,2132,2133,2134,2135,2136,2137,2138,2139,2140,2141,2142,2143,2144,2145,2146,2147,2148,2149,2150,2151,2152,2153,2154,2155,2156,2157,2158,2159,2160,2161,2162,2163,2164,2165,2166,2167,2168,2169,2170,2171,2172,2173,2174,2175,2176,2177,2178,2179,2180,2181,2182,2183,2184,2185,2186,2187,2188,2189,2190,2191,2192,2193,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2212,2213,2214,2215,2216,2217,2218,2219,2220,2221,2222,2223,2224,2225,2226,2227,2228,2229,2230,2231,2232,2233,2234,2235,2236,2237,2238,2239,2240,2241,2242,2243,2244,2245,2246,2247,2248,2249,2250,2251,2252,2253,2254,2255,2256,2257,2258,2259,2260,2261,2262,2263,2264,2265,2266,2267,2268,2269,2270,2271,2272,2273,2274,2275,2276,2277,2278,2279,2280,2281,2282,2283,2284,2285,2286,2287,2288,2289,2290,2291,2292,2293,2294,2295,2296,2297,2298,2299,2300,2301,2302,2303,2304,2305,2306,2307,2308,2309,2310,2311,2312,2313,2314,2315,2316,2317,2318,2319,2320,2321,2322,2323,2324,2325,2326,2327,2328,2329,2330,2331,2332,2333,2334,2335,2336,2337,2338,2339,2340,2341,2342,2343,2344,2345,2346,2347,2348,2349,2350,2351,2352,2353,2354,2355,2356,2357,2358,2359,2360,2361,2362,2363,2364,2365,2366,2367,2368,2369,2370,2371,2372,2373,2374,2375,2376,2377,2378,2379,2380,2381,2382,2383,2384,2385,2386,2387,2388,2389,2390,2391,2392,2393,2394,2395,2396,2397,2398,2399,2400,2401,2402,2403,2404,2405,2406,2407,2408,2409,2410,2411,2412,2413,2414,2415,2416,2417,2418,2419,2420,2421,2422,2423,2424,2425,2426,2427,2428,2429,2430,2431,2432,2433,2434,2435,2436,2437,2438,2439,2440,2441,2442,2443,2444,2445,2446,2447,2448,2449,2450,2451,2452,2453,2454,2455,2456,2457,2458,2459,2460,2461,2462,2463,2464,2465,2466,2467,2468,2469,2470,2471,2472,2473,2474,2475,2476,2477,2478,2479,2480,2481,2482,2483,2484,2485,2486,2487,2488,2489,2490,2491,2492,2493,2494,2495,2496,2497,2498,2499,2500,2501,2502,2503,2504,2505,2506,2507,2508,2509,2510,2511,2512,2513,2514,2515,2516,2517,2518,2519,2520,2521,2522,2523,2524,2525,2526,2527,2528,2529,2530,2531,2532,2533,2534,2535,2536,2537,2538,2539,2540,2541,2542,2543,2544,2545,2546,2547,2548,2549,2550,2551,2552,2553,2554,2555,2556,2557,2558,2559,2560,2561,2562,2563,2564,2565,2566,2567,2568,2569,2570,2571,2572,2573,2574,2575,2576,2577,2578,2579,2580,2581,2582,2583,2584,2585,2586,2587,2588,2589,2590,2591,2592,2593,2594,2595,2596,2597,2598,2599,2600,2601,2602,2603,2604,2605,2606,2607,2608,2609,2610,2611,2612,2613,2614,2615,2616,2617,2618,2619,2620,2621,2622,2623,2624,2625,2626,2627,2628,2629,2630,2631,2632,2633,2634,2635,2636,2637,2638,2639,2640,2641,2642,2643,2644,2645,2646,2647,2648,2649,2650,2651,2652,2653,2654,2655,2656,2657,2658,2659,2660,2661,2662,2663,2664,2665,2666,2667,2668,2669,2670,2671,2672,2673,2674,2675,2676,2677,2678,2679,2680,2681,2682,2683,2684,2685,2686,2687,2688,2689,2690,2691,2692,2693,2694,2695,2696,2697,2698,2699,2700,2701,2702,2703,2704,2705,2706,2707,2708,2709,2710,2711,2712,2713,2714,2715,2716,2717,2718,2719,2720,2721,2722,2723,2724,2725,2726,2727,2728,2729,2730,2731,2732,2733,2734,2735,2736,2737,2738,2739,2740,2741,2742,2743,2744,2745,2746,2747,2748,2749,2750,2751,2752,2753,2754,2755,2756,2757,2758,2759,2760,2761,2762,2763,2764,2765,2766,2767,2768,2769,2770,2771,2772,2773,2774,2775,2776,2777,2778,2779,2780,2781,2782,2783,2784,2785,2786,2787,2788,2789,2790,2791,2792,2793,2794,2795,2796,2797,2798,2799,2800,2801,2802,2803,2804,2805,2806,2807,2808,2809,2810,2811,2812,2813,2814,2815,2816,2817,2818,2819,2820,2821,2822,2823,2824,2825,2826,2827,2828,2829,2830,2831,2832,2833,2834,2835,2836,2837,2838,2839,2840,2841,2842,2843,2844,2845,2846,2847,2848,2849,2850,2851,2852,2853,2854,2855,2856,2857,2858,2859,2860,2861,2862,2863,2864,2865,2866,2867,2868,2869,2870,2871,2872,2873,2874,2875,2876,2877,2878,2879,2880,2881,2882,2883,2884,2885,2886,2887,2888,2889,2890,2891,2892,2893,2894,2895,2896,2897,2898,2899,2900,2901,2902,2903,2904,2905,2906,2907,2908,2909,2910,2911,2912,2913,2914,2915,2916,2917,2918,2919,2920,2921,2922,2923,2924,2925,2926,2927,2928,2929,2930,2931,2932,2933,2934,2935,2936,2937,2938,2939,2940,2941,2942,2943,2944,2945,2946,2947,2948,2949,2950,2951,2952,2953,2954,2955,2956,2957,2958,2959,2960,2961,2962,2963,2964,2965,2966,2967,2968,2969,2970,2971,2972,2973,2974,2975,2976,2977,2978,2979,2980,2981,2982,2983,2984,2985,2986,2987,2988,2989,2990,2991,2992,2993,2994,2995,2996,2997,2998,2999,3000,3001,3002,3003,3004,3005,3006,3007,3008,3009,3010,3011,3012,3013,3014,3015,3016,3017,3018,3019,3020,3021,3022,3023,3024,3025,3026,3027,3028,3029,3030,3031,3032,3033,3034,3035,3036,3037,3038,3039,3040,3041,3042,3043,3044,3045,3046,3047,3048,3049,3050,3051,3052,3053,3054,3055,3056,3057,3058,3059,3060,3061,3062,3063,3064,3065,3066,3067,3068,3069,3070,3071,3072,3073,3074,3075,3076,3077,3078,3079,3080,3081,3082,3083,3084,3085,3086,3087,3088,3089,3090,3091,3092,3093,3094,3095,3096,3097,3098,3099,3100,3101,3102,3103,3104,3105,3106,3107,3108,3109,3110,3111,3112,3113,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,3127,3128,3129,3130,3131,3132,3133,3134,3135,3136,3137,3138,3139,3140,3141,3142,3143,3144,3145,3146,3147,3148,3149,3150,3151,3152,3153,3154,3155,3156,3157,3158,3159,3160,3161,3162,3163,3164,3165,3166,3167,3168,3169,3170,3171,3172,3173,3174,3175,3176,3177,3178,3179,3180,3181,3182,3183,3184,3185,3186,3187,3188,3189,3190,3191,3192,3193,3194,3195,3196,3197,3198,3199,3200,3201,3202,3203,3204,3205,3206,3207,3208,3209,3210,3211,3212,3213,3214,3215,3216,3217,3218,3219,3220,3221,3222,3223,3224,3225,3226,3227,3228,3229,3230,3231,3232,3233,3234,3235,3236,3237,3238,3239,3240,3241,3242,3243,3244,3245,3246,3247,3248,3249,3250,3251,3252,3253,3254,3255,3256,3257,3258,3259,3260,3261,3262,3263,3264,3265,3266,3267,3268,3269,3270,3271,3272,3273,3274,3275,3276,3277,3278,3279,3280,3281,3282,3283,3284,3285,3286,3287,3288,3289,3290,3291,3292,3293,3294,3295,3296,3297,3298,3299,3300,3301,3302,3303,3304,3305,3306,3307,3308,3309,3310,3311,3312,3313,3314,3315,3316,3317,3318,3319,3320,3321,3322,3323,3324,3325,3326,3327,3328,3329,3330,3331,3332,3333,3334,3335,3336,3337,3338,3339,3340,3341,3342,3343,3344,3345,3346,3347,3348,3349,3350,3351,3352,3353,3354,3355,3356,3357,3358,3359,3360,3361,3362,3363,3364,3365,3366,3367,3368,3369,3370,3371,3372,3373,3374,3375,3376,3377,3378,3379,3380,3381,3382,3383,3384,3385,3386,3387,3388,3389,3390,3391,3392,3393,3394,3395,3396,3397,3398,3399,3400,3401,3402,3403,3404,3405,3406,3407,3408,3409,3410,3411,3412,3413,3414,3415,3416,3417,3418,3419,3420,3421,3422,3423,3424,3425,3426,3427,3428,3429,3430,3431,3432,3433,3434,3435,3436,3437,3438,3439,3440,3441,3442,3443,3444,3445,3446,3447,3448,3449,3450,3451,3452,3453,3454,3455,3456,3457,3458,3459,3460,3461,3462,3463,3464,3465,3466,3467,3468,3469,3470,3471,3472,3473,3474,3475,3476,3477,3478,3479,3480,3481,3482,3483,3484,3485,3486,3487,3488,3489,3490,3491,3492,3493,3494,3495,3496,3497,3498,3499,3500,3501,3502,3503,3504,3505,3506,3507,3508,3509,3510,3511,3512,3513,3514,3515,3516,3517,3518,3519,3520,3521,3522,3523,3524,3525,3526,3527,3528,3529,3530,3531,3532,3533,3534,3535,3536,3537,3538,3539,3540,3541,3542,3543,3544,3545,3546,3547,3548,3549,3550,3551,3552,3553,3554,3555,3556,3557,3558,3559,3560,3561,3562,3563,3564,3565,3566,3567,3568,3569,3570,3571,3572,3573,3574,3575,3576,3577,3578,3579,3580,3581,3582,3583,3584,3585,3586,3587,3588,3589,3590,3591,3592,3593,3594,3595,3596,3597,3598,3599,3600,3601,3602,3603,3604,3605,3606,3607,3608,3609,3610,3611,3612,3613,3614,3615,3616,3617,3618,3619,3621,3622,3623,3624,3625,3626,3627,3628,3629,3630,3631,3632,3633,3634,3635,3636,3637,3638,3639,3640,3641,3642,3643,3644,3645,3646,3647,3648,3649,3650,3651,3652,3653,3654,3655,3656,3657,3658,3659,3660,3661,3662,3663,3664,3665,3666,3667,3668,3669,3670,3671,3672,3673,3674,3675,3676,3677,3678,3679,3680,3681,3682,3683,3684,3685,3686,3687,3688,3689,3690,3691,3692,3693,3694,3695,3696,3697,3698,3699,3700,3701,3702,3703,3704,3707,3708,3709,3710,3711,3712,3713,3714,3715,3716,3717,3718,3719,3720,3721,3722,3723,3724,3725,3726,3727,3728,3729,3730,3731,3732,3733,3734,3735,3736,3737,3738,3739,3740,3741,3742,3743,3744,3745,3746,3747,3748,3749,3750,3751,3752,3753,3754,3755,3756,3757,3758,3759,3760,3761,3762,3763,3764,3765,3766,3767,3768,3769,3770,3771,3772,3773,3774,3775,3776,3777,3778,3779,3780,3781,3782,3783,3784,3785,3786,3787,3788,3789,3790,3791,3792,3793,3794,3795,3796,3797,3798,3799,3800,3801,3802,3803,3804,3805,3806,3807,3808,3809,3810,3811,3812,3813,3814,3815,3816,3817,3818,3819,3820,3821,3822,3823,3824,3825,3826,3827,3828,3829,3830,3831,3832,3833,3834,3835,3836,3837,3838,3839,3840,3841,3842,3843,3844,3845,3846,3847,3848,3849,3850,3851,3852,3853,3854,3855,3856,3857,3858,3859,3860,3861,3862,3863,3864,3865,3866,3867,3868,3869,3870,3871,3872,3873,3874,3875,3876,3877,3878,3879,3880,3881,3882,3883,3884,3885,3886,3887,3888,3889,3890,3891,3892,3893,3894,3895,3896,3897,3898,3899,3900,3901,3902,3903,3904,3905,3906,3907,3908,3909,3910,3911,3912,3913,3914,3915,3916,3917,3918,3919,3920,3921,3922,3923,3924,3925,3926,3927,3928,3929,3930,3931,3932,3933,3934,3935,3936,3937,3938,3939,3940,3941,3942,3943,3944,3945,3946,3947,3948,3949,3950,3951,3952,3953,3954,3955,3956,3957,3958,3959,3960,3961,3962,3963,3964,3965,3966,3967,3968,3969,3970,3971,3972,3973,3974,3975,3976,3977,3978,3979,3980,3981,3982,3983,3984,3985,3986,3987,3988,3989,3990,3991,3992,3993,3994,3995,3996,3997,3998,3999,4000,4001,4002,4003,4004,4005,4006,4007,4008,4009,4010,4011,4012,4013,4014,4015,4016,4017,4018,4019,4020,4021,4022,4023,4024,4025,4026,4027,4028,4029,4030,4031,4032,4033,4034,4035,4036,4037,4038,4039,4040,4041,4042,4043,4044,4045,4046,4047,4048,4049,4050,4051,4052,4053,4054,4055,4056,4057,4058,4059,4060,4061,4062,4063,4064,4065,4066,4067,4068,4069,4070,4071,4072,4073,4074,4075,4076,4077,4078,4079,4080,4081,4082,4083,4084,4085,4086,4087,4088,4089,4090,4091,4092,4093,4094,4095,4096,4097,4098,4099,4100,4101,4102,4103,4104,4105,4106,4107,4108,4109,4110,4111,4112,4113,4114,4115,4116,4117,4118,4119,4120,4121,4122,4123,4124,4125,4126,4127,4128,4129,4130,4131,4132,4133,4134,4135,4136,4137,4138,4139,4140,4141,4142,4143,4144,4145,4146,4147,4148,4149,4150,4151,4152,4153,4154,4155,4156,4157,4158,4159,4160,4161,4162,4163,4164,4165,4166,4167,4168,4169,4170,4171,4172,4173,4174,4175,4176,4177,4178,4179,4180,4181,4182,4183,4184,4185,4186,4187,4188,4189,4190,4191,4192,4193,4194,4195,4196,4197,4198,4199,4200,4201,4202,4203,4204,4205,4206,4207,4208,4209,4210,4211,4212,4213,4214,4215,4216,4217,4218,4219,4220,4221,4222,4223,4224,4225,4226,4227,4228,4229,4230,4231,4232,4233,4234,4235,4236,4237,4238,4239,4240,4241,4242,4243,4244,4245,4246,4247,4248,4249,4250,4251,4252,4253,4254,4255,4256,4257,4258,4259,4260,4261,4262,4263,4264,4265,4266,4267,4268,4269,4270,4271,4272,4273,4274,4275,4276,4277,4278,4279,4280,4281,4282,4283,4284,4285,4286,4287,4288,4289,4290,4291,4292,4293,4294,4295,4296,4297,4298,4299,4300,4301,4302,4303,4304,4305,4306,4307,4308,4309,4310,4311,4312,4313,4314,4315,4316,4317,4318,4319,4320,4321,4322,4323,4324,4325,4326,4327,4328,4329,4330,4331,4332,4333,4334,4335,4336,4337,4338,4339,4340,4341,4342,4343,4344,4345,4346,4347,4348,4349,4350,4351,4352,4353,4354,4355,4356,4357,4358,4359,4360,4361,4362,4363,4364,4365,4366,4367,4368,4369,4370,4371,4372,4373,4374,4375,4376,4377,4378,4379,4380,4381,4382,4383,4384,4385,4386,4387,4388,4389,4390,4391,4392,4393,4394,4395,4396,4397,4398,4399,4400,4401,4402,4403,4404,4405,4406,4407,4408,4409,4410,4411,4412,4414,4415,4416,4417,4418,4419,4420,4421,4422,4423,4424,4425,4426,4427,4428,4429,4430,4431,4432,4433,4434,4435,4436,4437,4438,4439,4440,4441,4442,4443,4444,4445,4446,4447,4448,4449,4450,4451,4452,4453,4454,4455,4456,4457,4458,4459,4460,4461,4462,4463,4464,4465,4466,4467,4468,4469,4470,4471,4472,4473,4474,4475,4476,4477,4478,4479,4480,4481,4482,4483,4484,4485,4486,4487,4488,4489,4490,4491,4492,4493,4494,4495,4496,4497,4498,4499,4500,4501,4502,4503,4504,4505,4506,4507,4508,4509,4510,4511,4512,4513,4514,4515,4516,4517,4518,4519,4520,4521,4522,4523,4524,4525,4526,4527,4528,4529,4530,4531,4532,4533,4534,4535,4536,4537,4538,4539,4540,4541,4542,4543,4544,4545,4546,4547,4548,4549,4550,4551,4552,4553,4554,4555,4556,4557,4558,4559,4560,4561,4562,4563,4564,4565,4566,4567,4568,4569,4570,4571,4572,4573,4574,4575,4576,4577,4578,4579,4580,4581,4582,4583,4584,4585,4586,4587,4588,4589,4590,4591,4592,4593,4594,4595,4596,4597,4598,4599,4600,4601,4602,4603,4604,4605,4606,4607,4608,4609,4610,4611,4612,4613,4614,4615,4616,4617,4618,4619,4620,4621,4622,4623,4624,4625,4626,4627,4628,4629,4630,4631,4632,4633,4634,4635,4636,4637,4638,4639,4640,4641,4642,4643,4644,4645,4646,4647,4648,4649,4650,4651,4652,4653,4654,4655,4656,4657,4658,4659,4660,4661,4662,4663,4664,4665,4666,4667,4668,4669,4670,4671,4672,4673,4674,4675,4676,4677,4678,4679,4680,4681,4682,4683,4684,4685,4686,4687,4689,4690,4691,4692,4693,4694,4695,4696,4697,4698,4699,4700,4701,4702,4703,4704,4705,4706,4707,4708,4709,4710,4711,4712,4713,4714,4715,4716,4717,4718,4719,4720,4721,4722,4723,4724,4725,4726,4727,4728,4729,4730,4731,4732,4733,4734,4735,4736,4737,4738,4739,4740,4741,4742,4743,4744,4745,4746,4747,4748,4749,4750,4751,4752,4753,4754,4755,4756,4757,4758,4759,4760,4761,4762,4763,4764,4765,4766,4767,4768,4769,4770,4771,4772,4773,4774,4775,4776,4777,4778,4779,4780,4781,4782,4783,4784,4785,4786,4787,4788,4789,4790,4791,4792,4793,4794,4795,4796,4797,4798,4799,4800,4801,4802,4803,4804,4805,4806,4807,4808,4809,4810,4811,4812,4813,4814,4815,4816,4817,4818,4819,4820,4821,4822,4823,4824,4825,4826,4827,4828,4829,4830,4831,4832,4833,4834,4835,4836,4837,4838,4839,4840,4841,4842,4843,4844,4845,4846,4847,4848,4849,4850,4851,4852,4853,4854,4855,4856,4857,4858,4859,4860,4861,4862,4863,4864,4865,4866,4867,4868,4869,4870,4871,4872,4873,4874,4875,4876,4877,4878,4879,4880,4881,4882,4883,4884,4885,4886,4887,4888,4889,4890,4891,4892,4893,4894,4895,4896,4897,4898,4899,4900,4901,4902,4903,4904,4905,4906,4907,4908,4909,4910,4911,4912,4913,4914,4915,4916,4917,4918,4919,4920,4921,4922,4923,4924,4925,4926,4927,4928,4929,4930,4931,4932,4933,4934,4935,4936,4937,4938,4939,4940,4941,4942,4943,4944,4945,4946,4947,4948,4949,4950,4951,4952,4953,4954,4955,4956,4957,4958,4959,4960,4961,4962,4963,4964,4965,4966,4967,4968,4969,4970,4971,4972,4973,4974,4975,4976,4977,4978,4979,4980,4981,4982,4983,4984,4985,4986,4987,4988,4989,4990,4991,4992,4993,4994,4995,4996,4997,4998,4999',1,'automatico',1,'numeros',2,500000,1,NULL,NULL,NULL,1,'mp','2023-09-11 12:58:37','2023-12-07 20:44:27');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_images`
--

DROP TABLE IF EXISTS `products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_images_product_id_foreign` (`product_id`),
  CONSTRAINT `products_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_images`
--

LOCK TABLES `products_images` WRITE;
/*!40000 ALTER TABLE `products_images` DISABLE KEYS */;
INSERT INTO `products_images` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES (79,'01700944671.png',46,'2023-11-25 20:37:51','2023-11-25 20:37:51'),(80,'01700944698.png',46,'2023-11-25 20:38:18','2023-11-25 20:38:18');
/*!40000 ALTER TABLE `products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocoes`
--

DROP TABLE IF EXISTS `promocoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promocoes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qtdNumeros` int(11) NOT NULL DEFAULT 0,
  `ordem` int(11) NOT NULL,
  `desconto` double(8,2) NOT NULL DEFAULT 0.00,
  `valor` double(8,2) NOT NULL DEFAULT 0.00,
  `product_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `promocoes_product_id_foreign` (`product_id`),
  CONSTRAINT `promocoes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocoes`
--

LOCK TABLES `promocoes` WRITE;
/*!40000 ALTER TABLE `promocoes` DISABLE KEYS */;
INSERT INTO `promocoes` (`id`, `qtdNumeros`, `ordem`, `desconto`, `valor`, `product_id`, `created_at`, `updated_at`) VALUES (181,100,1,2.00,19.60,46,'2023-09-11 12:58:37','2023-11-25 20:40:31'),(182,200,2,3.00,38.80,46,'2023-09-11 12:58:37','2023-11-25 20:40:31'),(183,300,3,4.00,57.60,46,'2023-09-11 12:58:37','2023-11-25 20:40:31'),(184,400,4,5.00,76.00,46,'2023-09-11 12:58:37','2023-11-25 20:40:31');
/*!40000 ALTER TABLE `promocoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raffles`
--

DROP TABLE IF EXISTS `raffles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raffles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `participant_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `raffles_product_id_foreign` (`product_id`),
  KEY `raffles_participant_id_foreign` (`participant_id`),
  CONSTRAINT `raffles_participant_id_foreign` FOREIGN KEY (`participant_id`) REFERENCES `participant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `raffles_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raffles`
--

LOCK TABLES `raffles` WRITE;
/*!40000 ALTER TABLE `raffles` DISABLE KEYS */;
/*!40000 ALTER TABLE `raffles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rifa_afiliados`
--

DROP TABLE IF EXISTS `rifa_afiliados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rifa_afiliados` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `afiliado_id` int(10) unsigned DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rifa_afiliados_product_id_foreign` (`product_id`),
  KEY `rifa_afiliados_afiliado_id_foreign` (`afiliado_id`),
  CONSTRAINT `rifa_afiliados_afiliado_id_foreign` FOREIGN KEY (`afiliado_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rifa_afiliados_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rifa_afiliados`
--

LOCK TABLES `rifa_afiliados` WRITE;
/*!40000 ALTER TABLE `rifa_afiliados` DISABLE KEYS */;
INSERT INTO `rifa_afiliados` (`id`, `product_id`, `afiliado_id`, `token`, `created_at`, `updated_at`) VALUES (1,46,11,'653c3747e54f9','2023-10-27 22:18:47','2023-10-27 22:18:47');
/*!40000 ALTER TABLE `rifa_afiliados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
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
-- Table structure for table `solicitacao_afiliados`
--

DROP TABLE IF EXISTS `solicitacao_afiliados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitacao_afiliados` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `afiliado_id` int(10) unsigned DEFAULT NULL,
  `pago` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `solicitacao_afiliados_afiliado_id_foreign` (`afiliado_id`),
  CONSTRAINT `solicitacao_afiliados_afiliado_id_foreign` FOREIGN KEY (`afiliado_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitacao_afiliados`
--

LOCK TABLES `solicitacao_afiliados` WRITE;
/*!40000 ALTER TABLE `solicitacao_afiliados` DISABLE KEYS */;
INSERT INTO `solicitacao_afiliados` (`id`, `afiliado_id`, `pago`, `created_at`, `updated_at`) VALUES (1,11,1,'2023-10-27 22:21:40','2023-11-28 16:56:53');
/*!40000 ALTER TABLE `solicitacao_afiliados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `afiliado` tinyint(1) NOT NULL DEFAULT 0,
  `pix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `telephone`, `status`, `email`, `password`, `afiliado`, `pix`, `cpf`, `remember_token`, `created_at`, `updated_at`) VALUES (1,'Reidoscript.com','11982889012',1,'admin@gmail.com','$2y$10$8gOBwD5CqoX69a9HLqEd5epQWeenX3TsLU8WeMEprJRwnJQJZNrSW',0,NULL,NULL,NULL,'2023-07-10 23:44:33','2023-10-27 19:43:10'),(11,'Felipe feife','',1,'felipe@live.com','$2y$10$ve0TOyxZJSbWHv7fr1oYqO8acro31W1HvnHay9aZ1YoTdidK/Oyzm',1,'151515151515','5458789898999',NULL,'2023-10-27 19:17:48','2023-10-27 19:17:48'),(12,'Jdjd djsjd','',1,'fjsie@jsjs.com','$2y$10$CssLXJJf.9GjhZrC7ncrn.1nu6eGm9xNHZI1B4cqjy.702Ir9pyFS',1,'11982889013','16631476801',NULL,'2023-11-25 19:55:11','2023-11-25 19:55:11'),(13,'Reidoscript','',1,'afiliadodemo@reidoscript.com','$2y$10$Prmul3FmyOT0kW..okaVD.df5F0y8GcjE1NcSsYJ5ZMPspcoF2kN6',1,'11982889012','42084886898',NULL,'2023-11-28 16:58:33','2023-11-28 16:58:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whatsapp_mensagems`
--

DROP TABLE IF EXISTS `whatsapp_mensagems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whatsapp_mensagems` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whatsapp_mensagems`
--

LOCK TABLES `whatsapp_mensagems` WRITE;
/*!40000 ALTER TABLE `whatsapp_mensagems` DISABLE KEYS */;
INSERT INTO `whatsapp_mensagems` (`id`, `titulo`, `msg`, `created_at`, `updated_at`) VALUES (1,'','','2023-07-12 02:26:02','2023-08-21 01:32:19'),(2,'','','2023-07-12 02:26:02','2023-08-21 01:32:19'),(3,'','','2023-07-12 02:26:02','2023-08-21 01:32:19'),(4,'','','2023-07-12 02:26:02','2023-08-21 01:32:19'),(5,'','','2023-07-12 02:26:02','2023-08-21 01:32:19'),(6,'','','2023-07-12 02:26:02','2023-08-21 01:32:19');
/*!40000 ALTER TABLE `whatsapp_mensagems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'apostasb_laravel'
--

--
-- Dumping routines for database 'apostasb_laravel'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-07 20:18:06
