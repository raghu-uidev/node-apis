-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ecomdb
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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` varchar(255) DEFAULT NULL,
  `product_id` int unsigned DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (2,'0b175e6b-5688-4c4a-a5ba-1b04d31c85b3',2,21,'2022-09-25 04:28:23'),(3,'0b175e6b-5688-4c4a-a5ba-1b04d31c85b3',12,2,'2022-09-25 04:50:23');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `img_src` varchar(500) NOT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,2,'https://dummyjson.com/image/i/products/1/1.jpg','2022-09-24 20:37:11'),(2,2,'https://dummyjson.com/image/i/products/1/2.jpg','2022-09-24 20:37:12'),(3,2,'https://dummyjson.com/image/i/products/1/3.jpg','2022-09-24 20:37:12'),(4,2,'https://dummyjson.com/image/i/products/1/4.jpg','2022-09-24 20:37:12'),(5,2,'https://dummyjson.com/image/i/products/1/thumbnail.jpg','2022-09-24 20:37:12'),(6,3,'https://dummyjson.com/image/i/products/2/1.jpg','2022-09-24 20:37:12'),(7,3,'https://dummyjson.com/image/i/products/2/2.jpg','2022-09-24 20:37:12'),(8,3,'https://dummyjson.com/image/i/products/2/3.jpg','2022-09-24 20:37:12'),(9,3,'https://dummyjson.com/image/i/products/2/thumbnail.jpg','2022-09-24 20:37:12'),(10,4,'https://dummyjson.com/image/i/products/3/1.jpg','2022-09-24 20:37:12'),(11,5,'https://dummyjson.com/image/i/products/4/1.jpg','2022-09-24 20:37:12'),(12,5,'https://dummyjson.com/image/i/products/4/2.jpg','2022-09-24 20:37:12'),(13,5,'https://dummyjson.com/image/i/products/4/3.jpg','2022-09-24 20:37:12'),(14,5,'https://dummyjson.com/image/i/products/4/4.jpg','2022-09-24 20:37:12'),(15,5,'https://dummyjson.com/image/i/products/4/thumbnail.jpg','2022-09-24 20:37:12'),(16,6,'https://dummyjson.com/image/i/products/5/1.jpg','2022-09-24 20:37:12'),(17,6,'https://dummyjson.com/image/i/products/5/2.jpg','2022-09-24 20:37:12'),(18,6,'https://dummyjson.com/image/i/products/5/3.jpg','2022-09-24 20:37:12'),(19,7,'https://dummyjson.com/image/i/products/6/1.png','2022-09-24 20:37:12'),(20,7,'https://dummyjson.com/image/i/products/6/2.jpg','2022-09-24 20:37:12'),(21,7,'https://dummyjson.com/image/i/products/6/3.png','2022-09-24 20:37:12'),(22,7,'https://dummyjson.com/image/i/products/6/4.jpg','2022-09-24 20:37:12'),(23,8,'https://dummyjson.com/image/i/products/7/1.jpg','2022-09-24 20:37:12'),(24,8,'https://dummyjson.com/image/i/products/7/2.jpg','2022-09-24 20:37:13'),(25,8,'https://dummyjson.com/image/i/products/7/3.jpg','2022-09-24 20:37:13'),(26,8,'https://dummyjson.com/image/i/products/7/thumbnail.jpg','2022-09-24 20:37:13'),(27,9,'https://dummyjson.com/image/i/products/8/1.jpg','2022-09-24 20:37:13'),(28,9,'https://dummyjson.com/image/i/products/8/2.jpg','2022-09-24 20:37:13'),(29,9,'https://dummyjson.com/image/i/products/8/3.jpg','2022-09-24 20:37:13'),(30,9,'https://dummyjson.com/image/i/products/8/4.jpg','2022-09-24 20:37:13'),(31,9,'https://dummyjson.com/image/i/products/8/thumbnail.jpg','2022-09-24 20:37:13'),(32,10,'https://dummyjson.com/image/i/products/9/1.jpg','2022-09-24 20:37:13'),(33,10,'https://dummyjson.com/image/i/products/9/2.png','2022-09-24 20:37:14'),(34,10,'https://dummyjson.com/image/i/products/9/3.png','2022-09-24 20:37:14'),(35,10,'https://dummyjson.com/image/i/products/9/4.jpg','2022-09-24 20:37:14'),(36,10,'https://dummyjson.com/image/i/products/9/thumbnail.jpg','2022-09-24 20:37:14'),(37,11,'https://dummyjson.com/image/i/products/10/1.jpg','2022-09-24 20:37:14'),(38,11,'https://dummyjson.com/image/i/products/10/2.jpg','2022-09-24 20:37:14'),(39,11,'https://dummyjson.com/image/i/products/10/3.jpg','2022-09-24 20:37:14'),(40,11,'https://dummyjson.com/image/i/products/10/thumbnail.jpeg','2022-09-24 20:37:14'),(41,12,'https://dummyjson.com/image/i/products/11/1.jpg','2022-09-24 20:37:14'),(42,12,'https://dummyjson.com/image/i/products/11/2.jpg','2022-09-24 20:37:14'),(43,12,'https://dummyjson.com/image/i/products/11/3.jpg','2022-09-24 20:37:14'),(44,12,'https://dummyjson.com/image/i/products/11/thumbnail.jpg','2022-09-24 20:37:14'),(45,13,'https://dummyjson.com/image/i/products/12/1.jpg','2022-09-24 20:37:14'),(46,13,'https://dummyjson.com/image/i/products/12/2.jpg','2022-09-24 20:37:14'),(47,13,'https://dummyjson.com/image/i/products/12/3.png','2022-09-24 20:37:14'),(48,13,'https://dummyjson.com/image/i/products/12/4.jpg','2022-09-24 20:37:14'),(49,13,'https://dummyjson.com/image/i/products/12/thumbnail.jpg','2022-09-24 20:37:14'),(50,14,'https://dummyjson.com/image/i/products/13/1.jpg','2022-09-24 20:37:14'),(51,14,'https://dummyjson.com/image/i/products/13/2.png','2022-09-24 20:37:14'),(52,14,'https://dummyjson.com/image/i/products/13/3.jpg','2022-09-24 20:37:14'),(53,14,'https://dummyjson.com/image/i/products/13/4.jpg','2022-09-24 20:37:14'),(54,14,'https://dummyjson.com/image/i/products/13/thumbnail.webp','2022-09-24 20:37:14'),(55,15,'https://dummyjson.com/image/i/products/14/1.jpg','2022-09-24 20:37:14'),(56,15,'https://dummyjson.com/image/i/products/14/2.jpg','2022-09-24 20:37:14'),(57,15,'https://dummyjson.com/image/i/products/14/3.jpg','2022-09-24 20:37:14'),(58,15,'https://dummyjson.com/image/i/products/14/thumbnail.jpg','2022-09-24 20:37:14'),(59,16,'https://dummyjson.com/image/i/products/15/1.jpg','2022-09-24 20:37:14'),(60,16,'https://dummyjson.com/image/i/products/15/2.jpg','2022-09-24 20:37:14'),(61,16,'https://dummyjson.com/image/i/products/15/3.jpg','2022-09-24 20:37:14'),(62,16,'https://dummyjson.com/image/i/products/15/4.jpg','2022-09-24 20:37:14'),(63,16,'https://dummyjson.com/image/i/products/15/thumbnail.jpg','2022-09-24 20:37:14'),(64,17,'https://dummyjson.com/image/i/products/16/1.png','2022-09-24 20:37:14'),(65,17,'https://dummyjson.com/image/i/products/16/2.webp','2022-09-24 20:37:14'),(66,17,'https://dummyjson.com/image/i/products/16/3.jpg','2022-09-24 20:37:15'),(67,17,'https://dummyjson.com/image/i/products/16/4.jpg','2022-09-24 20:37:15'),(68,17,'https://dummyjson.com/image/i/products/16/thumbnail.jpg','2022-09-24 20:37:15'),(69,18,'https://dummyjson.com/image/i/products/17/1.jpg','2022-09-24 20:37:15'),(70,18,'https://dummyjson.com/image/i/products/17/2.jpg','2022-09-24 20:37:15'),(71,18,'https://dummyjson.com/image/i/products/17/3.jpg','2022-09-24 20:37:15'),(72,18,'https://dummyjson.com/image/i/products/17/thumbnail.jpg','2022-09-24 20:37:15'),(73,19,'https://dummyjson.com/image/i/products/18/1.jpg','2022-09-24 20:37:15'),(74,19,'https://dummyjson.com/image/i/products/18/2.jpg','2022-09-24 20:37:15'),(75,19,'https://dummyjson.com/image/i/products/18/3.jpg','2022-09-24 20:37:15'),(76,19,'https://dummyjson.com/image/i/products/18/4.jpg','2022-09-24 20:37:15'),(77,19,'https://dummyjson.com/image/i/products/18/thumbnail.jpg','2022-09-24 20:37:15'),(78,20,'https://dummyjson.com/image/i/products/19/1.jpg','2022-09-24 20:37:15'),(79,20,'https://dummyjson.com/image/i/products/19/2.jpg','2022-09-24 20:37:15'),(80,20,'https://dummyjson.com/image/i/products/19/3.png','2022-09-24 20:37:15'),(81,20,'https://dummyjson.com/image/i/products/19/thumbnail.jpg','2022-09-24 20:37:15'),(82,21,'https://dummyjson.com/image/i/products/20/1.jpg','2022-09-24 20:37:15'),(83,21,'https://dummyjson.com/image/i/products/20/2.jpg','2022-09-24 20:37:15'),(84,21,'https://dummyjson.com/image/i/products/20/3.jpg','2022-09-24 20:37:15'),(85,21,'https://dummyjson.com/image/i/products/20/4.jpg','2022-09-24 20:37:15'),(86,21,'https://dummyjson.com/image/i/products/20/thumbnail.jpg','2022-09-24 20:37:15'),(87,22,'https://dummyjson.com/image/i/products/21/1.png','2022-09-24 20:37:15'),(88,22,'https://dummyjson.com/image/i/products/21/2.jpg','2022-09-24 20:37:15'),(89,22,'https://dummyjson.com/image/i/products/21/3.jpg','2022-09-24 20:37:15'),(90,23,'https://dummyjson.com/image/i/products/22/1.jpg','2022-09-24 20:37:15'),(91,23,'https://dummyjson.com/image/i/products/22/2.jpg','2022-09-24 20:37:15'),(92,23,'https://dummyjson.com/image/i/products/22/3.jpg','2022-09-24 20:37:15'),(93,24,'https://dummyjson.com/image/i/products/23/1.jpg','2022-09-24 20:37:15'),(94,24,'https://dummyjson.com/image/i/products/23/2.jpg','2022-09-24 20:37:15'),(95,24,'https://dummyjson.com/image/i/products/23/3.jpg','2022-09-24 20:37:15'),(96,24,'https://dummyjson.com/image/i/products/23/4.jpg','2022-09-24 20:37:15'),(97,24,'https://dummyjson.com/image/i/products/23/thumbnail.jpg','2022-09-24 20:37:15'),(98,25,'https://dummyjson.com/image/i/products/24/1.jpg','2022-09-24 20:37:15'),(99,25,'https://dummyjson.com/image/i/products/24/2.jpg','2022-09-24 20:37:15'),(100,25,'https://dummyjson.com/image/i/products/24/3.jpg','2022-09-24 20:37:15'),(101,25,'https://dummyjson.com/image/i/products/24/4.jpg','2022-09-24 20:37:15'),(102,25,'https://dummyjson.com/image/i/products/24/thumbnail.jpg','2022-09-24 20:37:16'),(103,26,'https://dummyjson.com/image/i/products/25/1.png','2022-09-24 20:37:16'),(104,26,'https://dummyjson.com/image/i/products/25/2.jpg','2022-09-24 20:37:16'),(105,26,'https://dummyjson.com/image/i/products/25/3.png','2022-09-24 20:37:16'),(106,26,'https://dummyjson.com/image/i/products/25/4.jpg','2022-09-24 20:37:16'),(107,26,'https://dummyjson.com/image/i/products/25/thumbnail.jpg','2022-09-24 20:37:16'),(108,27,'https://dummyjson.com/image/i/products/26/1.jpg','2022-09-24 20:37:16'),(109,27,'https://dummyjson.com/image/i/products/26/2.jpg','2022-09-24 20:37:16'),(110,27,'https://dummyjson.com/image/i/products/26/3.jpg','2022-09-24 20:37:16'),(111,27,'https://dummyjson.com/image/i/products/26/4.jpg','2022-09-24 20:37:16'),(112,27,'https://dummyjson.com/image/i/products/26/5.jpg','2022-09-24 20:37:16'),(113,27,'https://dummyjson.com/image/i/products/26/thumbnail.jpg','2022-09-24 20:37:16'),(114,28,'https://dummyjson.com/image/i/products/27/1.jpg','2022-09-24 20:37:16'),(115,28,'https://dummyjson.com/image/i/products/27/2.jpg','2022-09-24 20:37:16'),(116,28,'https://dummyjson.com/image/i/products/27/3.jpg','2022-09-24 20:37:16'),(117,28,'https://dummyjson.com/image/i/products/27/4.jpg','2022-09-24 20:37:16'),(118,28,'https://dummyjson.com/image/i/products/27/thumbnail.webp','2022-09-24 20:37:16'),(119,29,'https://dummyjson.com/image/i/products/28/1.jpg','2022-09-24 20:37:16'),(120,29,'https://dummyjson.com/image/i/products/28/2.jpg','2022-09-24 20:37:16'),(121,29,'https://dummyjson.com/image/i/products/28/3.png','2022-09-24 20:37:16'),(122,29,'https://dummyjson.com/image/i/products/28/4.jpg','2022-09-24 20:37:16'),(123,29,'https://dummyjson.com/image/i/products/28/thumbnail.jpg','2022-09-24 20:37:16'),(124,30,'https://dummyjson.com/image/i/products/29/1.jpg','2022-09-24 20:37:16'),(125,30,'https://dummyjson.com/image/i/products/29/2.jpg','2022-09-24 20:37:16'),(126,30,'https://dummyjson.com/image/i/products/29/3.webp','2022-09-24 20:37:16'),(127,30,'https://dummyjson.com/image/i/products/29/4.webp','2022-09-24 20:37:16'),(128,30,'https://dummyjson.com/image/i/products/29/thumbnail.webp','2022-09-24 20:37:16'),(129,31,'https://dummyjson.com/image/i/products/30/1.jpg','2022-09-24 20:37:16'),(130,31,'https://dummyjson.com/image/i/products/30/2.jpg','2022-09-24 20:37:16'),(131,31,'https://dummyjson.com/image/i/products/30/3.jpg','2022-09-24 20:37:16'),(132,31,'https://dummyjson.com/image/i/products/30/thumbnail.jpg','2022-09-24 20:37:16');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  `createdOn` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'iPhone 9','An apple mobile which is nothing like apple',549,'2022-09-24 19:30:02'),(3,'iPhone X','SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...',899,'2022-09-24 19:30:02'),(4,'Samsung Universe 9','Samsung\'s new variant which goes beyond Galaxy to the Universe',1249,'2022-09-24 19:30:02'),(5,'OPPOF19','OPPO F19 is officially announced on April 2021.',280,'2022-09-24 19:30:02'),(6,'Huawei P30','Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.',499,'2022-09-24 19:30:02'),(7,'MacBook Pro','MacBook Pro 2021 with mini-LED display may launch between September, November',1749,'2022-09-24 19:30:02'),(8,'Samsung Galaxy Book','Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched',1499,'2022-09-24 19:30:02'),(9,'Microsoft Surface Laptop 4','Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.',1499,'2022-09-24 19:30:02'),(10,'Infinix INBOOK','Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey – 1 Year Warranty',1099,'2022-09-24 19:30:02'),(11,'HP Pavilion 15-DK1056WM','HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10',1099,'2022-09-24 19:30:02'),(12,'perfume Oil','Mega Discount, Impression of Acqua Di Gio by GiorgioArmani concentrated attar perfume Oil',13,'2022-09-24 19:30:03'),(13,'Brown Perfume','Royal_Mirage Sport Brown Perfume for Men & Women - 120ml',40,'2022-09-24 19:30:03'),(14,'Fog Scent Xpressio Perfume','Product details of Best Fog Scent Xpressio Perfume 100ml For Men cool long lasting perfumes for Men',13,'2022-09-24 19:30:03'),(15,'Non-Alcoholic Concentrated Perfume Oil','Original Al Munakh® by Mahal Al Musk | Our Impression of Climate | 6ml Non-Alcoholic Concentrated Perfume Oil',120,'2022-09-24 19:30:03'),(16,'Eau De Perfume Spray','Genuine  Al-Rehab spray perfume from UAE/Saudi Arabia/Yemen High Quality',30,'2022-09-24 19:30:03'),(17,'Hyaluronic Acid Serum','L\'OrÃ©al Paris introduces Hyaluron Expert Replumping Serum formulated with 1.5% Hyaluronic Acid',19,'2022-09-24 19:30:03'),(18,'Tree Oil 30ml','Tea tree oil contains a number of compounds, including terpinen-4-ol, that have been shown to kill certain bacteria,',12,'2022-09-24 19:30:03'),(19,'Oil Free Moisturizer 100ml','Dermive Oil Free Moisturizer with SPF 20 is specifically formulated with ceramides, hyaluronic acid & sunscreen.',40,'2022-09-24 19:30:03'),(20,'Skin Beauty Serum.','Product name: rorec collagen hyaluronic acid white face serum riceNet weight: 15 m',46,'2022-09-24 19:30:03'),(21,'Freckle Treatment Cream- 15gm','Fair & Clear is Pakistan\'s only pure Freckle cream which helpsfade Freckles, Darkspots and pigments. Mercury level is 0%, so there are no side effects.',70,'2022-09-24 19:30:03'),(22,'- Daal Masoor 500 grams','Fine quality Branded Product Keep in a cool and dry place',20,'2022-09-24 19:30:03'),(23,'Elbow Macaroni - 400 gm','Product details of Bake Parlor Big Elbow Macaroni - 400 gm',14,'2022-09-24 19:30:03'),(24,'Orange Essence Food Flavou','Specifications of Orange Essence Food Flavour For Cakes and Baking Food Item',14,'2022-09-24 19:30:03'),(25,'cereals muesli fruit nuts','original fauji cereal muesli 250gm box pack original fauji cereals muesli fruit nuts flakes breakfast cereal break fast faujicereals cerels cerel foji fouji',46,'2022-09-24 19:30:03'),(26,'Gulab Powder 50 Gram','Dry Rose Flower Powder Gulab Powder 50 Gram • Treats Wounds',70,'2022-09-24 19:30:03'),(27,'Plant Hanger For Home','Boho Decor Plant Hanger For Home Wall Decoration Macrame Wall Hanging Shelf',41,'2022-09-24 19:30:03'),(28,'Flying Wooden Bird','Package Include 6 Birds with Adhesive Tape Shape: 3D Shaped Wooden Birds Material: Wooden MDF, Laminated 3.5mm',51,'2022-09-24 19:30:03'),(29,'3D Embellishment Art Lamp','3D led lamp sticker Wall sticker 3d wall art light on/off button  cell operated (included)',20,'2022-09-24 19:30:03'),(30,'Handcraft Chinese style','Handcraft Chinese style art luxury palace hotel villa mansion home decor ceramic vase with brass fruit plate',60,'2022-09-24 19:30:03'),(31,'Key Holder','Attractive DesignMetallic materialFour key hooksReliable & DurablePremium Quality',30,'2022-09-24 19:30:03');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `cart_id` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'d81c9a28-fcf8-4a76-85e2-7012d532ba55','prem@gmail.com','$2b$10$L/2DtbBz0Y3rXpjPcG2et.lXsSlzP0qLOjoBBIUzUxPrQdQHF0GC.','0b175e6b-5688-4c4a-a5ba-1b04d31c85b3','2022-09-25 02:44:29','Prem');
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

-- Dump completed on 2022-09-25  5:10:03
