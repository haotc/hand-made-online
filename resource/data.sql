CREATE DATABASE  IF NOT EXISTS `handmade_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `handmade_db`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: handmade_db
-- ------------------------------------------------------
-- Server version	5.5.25

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `parent_category_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'do_trang_tri','Đồ trang trí',NULL),(2,'phu_kien','Phụ kiện',NULL),(3,'trang_phuc','Trang phục',NULL),(4,'vat_lieu','Vật liệu handmade',NULL),(5,'chuong','Chuông','1'),(6,'dong_ho','Đồng hồ','2'),(7,'vong_tay','Vòng đeo tay','2'),(8,'tui_xach','Túi xách','2'),(9,'hoa_giay','Hoa giấy','1'),(10,'moc_khoa','Móc khóa','2');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `detail_desc` varchar(250) DEFAULT NULL,
  `unit_price` decimal(10,0) DEFAULT NULL,
  `discount` decimal(10,0) DEFAULT NULL,
  `image_url` varchar(250) DEFAULT NULL,
  `image_desc` varchar(250) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `short_desc` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc'),(2,2,'Vòng đeo cổ','Vòng đeo cổ detail desc',10000,0,'https://lh6.googleusercontent.com/k8q8ablOJ58I_adrmFerataKBAigfWH9D-pvs4pGPZk3RtpNJ_WUcLciXg7232eWEMxzORaWbg=s220-h140-e365-rw','image desc','status',10,5,'short desc'),(3,1,'Vòng đeo chân','Vòng đeo chân detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc'),(4,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc'),(5,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc'),(6,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc'),(7,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc'),(8,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc'),(9,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc'),(10,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_login`
--

DROP TABLE IF EXISTS `customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_login` (
  `login` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_login`
--

LOCK TABLES `customer_login` WRITE;
/*!40000 ALTER TABLE `customer_login` DISABLE KEYS */;
INSERT INTO `customer_login` VALUES ('a','a',NULL,'2013-09-23 22:10:03','2013-09-23 22:10:03'),('b','b',NULL,'2013-09-23 22:25:08','2013-09-23 22:25:08'),('haotc','123456',1,NULL,NULL),('haotc1','123456',NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_login` (
  `login` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `permissions` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` VALUES ('haotc','123456','tangconghao1992@gmail.com',NULL),('haotc1','123456','tangconghao1992@gmail.com',NULL);
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_info`
--

DROP TABLE IF EXISTS `customer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `gener` varchar(45) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_info`
--

LOCK TABLES `customer_info` WRITE;
/*!40000 ALTER TABLE `customer_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  `billing_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-24 10:00:14
