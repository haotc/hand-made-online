CREATE DATABASE  IF NOT EXISTS `handmade_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `handmade_db`;
-- MySQL dump 10.13  Distrib 5.5.25, for Win32 (x86)
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
  `number_of_sold` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Móc khoá hình quái vật','- Chất liệu: vải<br/>- Độ rộng cánh: 4.38cm<br/>- Hãng: EK Success<br/>- Lưu ý: Các bạn có thể tuỳ chỉnh màu sắc để có được sản phẩm mình mong muốn. Vì là hàng handmade theo yêu cầu nên hàng không có sẵn. ',10000,0,'http://www.lola.vn/data/201336/resize_612x410_mk169901.png','image desc','status',10,5,'Sản phẩm giảm giá',20),(2,2,'Nhà búp bê','Xem thêm tại FB : thế giới thu nhỏ của bạn',100000,0,'http://www.lola.vn/data/201331/9965534163799651463381093225494n2149.jpg','image desc','status',10,5,'Sản phẩm hot nhất hiện nay',123),(3,1,'Dụng cụ bấm giấy hình bươm bướm 4.38 cm','Vòng đeo chân detail desc',25000,0,'http://www.lola.vn/data/201335/marthastewart3in1butterflypunchproject12275.jpg','image desc','status',10,5,'Dành cho các bạn gay',32),(4,1,'Móc Khóa','Móc khóa handmade nhập từ Trung Quốc =.=',50000,0,'http://www.lola.vn/data/201339/photo13747621.jpg','image desc','status',10,5,'Sản phẩm chất lượng dành cho người thiếu tiền',45),(5,1,'Vòng tay handmade 14','Vòng tay handmade làm từ sợi len tổng hợp',70000,0,'http://www.lola.vn/data/201338/vt146379.jpg','image desc','status',10,5,'short desc',65),(6,1,'Gấu len đựng kẹo','Gấu len đựng kẹo',65000,0,'http://www.lola.vn/data/201337/resize_612x537_gungko20cm65199133776.jpg','image desc','status',10,5,'short desc',20),(7,1,'Cườm tam giác','Cườm tam giác',10000,0,'http://www.lola.vn/data/201339/dsc0133013879.jpg','image desc','status',10,5,'short desc',35),(8,1,'Cặp đôi hoàn hảo','Cặp đôi hoàn hảo',10000,0,'http://www.lola.vn/data/201339/resize_612x612_119109.jpg','image desc','status',10,5,'short desc',1),(9,1,'Móc khóa Apple','Móc khóa Apple',10000,0,'http://www.lola.vn/data/201339/resize_612x410_v0115k4612.jpg','image desc','status',10,5,'short desc',1),(10,1,'Ba chú gấu con','Ba chú gấu con',10000,0,'http://www.lola.vn/data/201339/resize_612x359_32244.jpg','image desc','status',10,5,'short desc',1),(11,1,'Bộ sưu tập cute 2','Bộ sưu tập cute 2',10000,0,'http://www.lola.vn/data//resize_612x494_128444.jpg','image desc','status',10,5,'Bộ sưu tập cute 2',23),(12,1,'Bát sứ ngộ nghĩnh','Bát sứ ngộ nghĩnh',25000,0,'http://www.lola.vn/data/201337/resize_612x460_555383415488261888555226309861n3002.jpg','image desc','status',10,5,'Bát sứ ngộ nghĩnh',13),(13,1,'Khung Hình Gấu','Khung hình gấu đốm đáng yêu. chất liệu: vải nỉ. kích thước: 10x10cm (không tính phần tai)',15000,0,'http://www.lola.vn/data/201335/resize_612x744_sp143459.jpg','image desc','status',10,5,'short desc',30),(14,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(15,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(16,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(17,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(18,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(19,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(20,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(21,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(22,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(23,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(24,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(25,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(26,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(27,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(28,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(29,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(30,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(31,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(32,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(33,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(34,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(35,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(36,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(37,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(38,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(39,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(40,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(41,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(42,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(43,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(44,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(45,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(46,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1),(47,1,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',1);
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
INSERT INTO `customer_login` VALUES ('haotc','123456',1,NULL,NULL),('haotc1','123456',NULL,NULL,NULL),('haotcse60777','123456',NULL,'2013-09-24 10:35:30','2013-09-24 10:35:30');
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
  `unit_price` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
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

-- Dump completed on 2013-09-25 13:05:56
