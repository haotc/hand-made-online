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
INSERT INTO `category` VALUES (1,'trang-tri-noi-that','Trang trí nội thất',NULL),(2,'trang-tri-su-kien','Trang trí sự kiện',NULL),(3,'qua-tang-do-choi','Quà tặng, đồ chơi',NULL),(4,'vat-lieu-hand-made','Vật liệu handmade',NULL),(5,'thiep','Thiệp','1'),(6,'vi-tui-xach','Ví, túi xách','2'),(7,'giay_dep','Giày, dép','2'),(8,'trang-suc','Trang sức','2'),(9,'mu_non','Mũ nón','1'),(10,'moc-khoa','Móc khóa','2');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Móc khoá hình quái vật','- Chất liệu: vải<br/>- Độ rộng cánh: 4.38cm<br/>- Hãng: EK Success<br/>- Lưu ý: Các bạn có thể tuỳ chỉnh màu sắc để có được sản phẩm mình mong muốn. Vì là hàng handmade theo yêu cầu nên hàng không có sẵn. ',10000,0,'http://www.lola.vn/data/201336/resize_612x410_mk169901.png','image desc','status',10,5,'Sản phẩm giảm giá',1),(2,1,'Nhà búp bê','Xem thêm tại FB : thế giới thu nhỏ của bạn',100000,0,'http://www.lola.vn/data/201331/9965534163799651463381093225494n2149.jpg','image desc','status',10,5,'Sản phẩm hot nhất hiện nay',2),(3,2,'Dụng cụ bấm giấy hình bươm bướm 4.38 cm','Vòng đeo chân detail desc',25000,0,'http://www.lola.vn/data/201335/marthastewart3in1butterflypunchproject12275.jpg','image desc','status',10,5,'Dành cho các bạn gay',3),(4,2,'Móc Khóa','Móc khóa handmade nhập từ Trung Quốc =.=',50000,0,'http://www.lola.vn/data/201339/photo13747621.jpg','image desc','status',10,5,'Sản phẩm chất lượng dành cho người thiếu tiền',4),(5,3,'Vòng tay handmade 14','Vòng tay handmade làm từ sợi len tổng hợp',70000,0,'http://www.lola.vn/data/201338/vt146379.jpg','image desc','status',10,5,'short desc',5),(6,3,'Gấu len đựng kẹo','Gấu len đựng kẹo',65000,0,'http://www.lola.vn/data/201337/resize_612x537_gungko20cm65199133776.jpg','image desc','status',10,5,'short desc',6),(7,4,'Cườm tam giác','Cườm tam giác',10000,0,'http://www.lola.vn/data/201339/dsc0133013879.jpg','image desc','status',10,5,'short desc',7),(8,4,'Cặp đôi hoàn hảo','Cặp đôi hoàn hảo',10000,0,'http://www.lola.vn/data/201339/resize_612x612_119109.jpg','image desc','status',10,5,'short desc',8),(9,5,'Móc khóa Apple','Móc khóa Apple',10000,0,'http://www.lola.vn/data/201339/resize_612x410_v0115k4612.jpg','image desc','status',10,5,'short desc',9),(10,5,'Ba chú gấu con','Ba chú gấu con',10000,0,'http://www.lola.vn/data/201339/resize_612x359_32244.jpg','image desc','status',10,5,'short desc',0),(11,6,'Bộ sưu tập cute 2','Bộ sưu tập cute 2',10000,0,'http://www.lola.vn/data//resize_612x494_128444.jpg','image desc','status',10,5,'Bộ sưu tập cute 2',2),(12,6,'Bát sứ ngộ nghĩnh','Bát sứ ngộ nghĩnh',25000,0,'http://www.lola.vn/data/201337/resize_612x460_555383415488261888555226309861n3002.jpg','image desc','status',10,5,'Bát sứ ngộ nghĩnh',3),(13,7,'Khung Hình Gấu','Khung hình gấu đốm đáng yêu. chất liệu: vải nỉ. kích thước: 10x10cm (không tính phần tai)',15000,0,'http://www.lola.vn/data/201335/resize_612x744_sp143459.jpg','image desc','status',10,5,'short desc',4),(14,7,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',5),(15,8,'Vòng da đơn giản','Vòng da đơn giản',100000,0,'http://www.lola.vn/data/201335/resize_612x460_hnh09216486.jpg',NULL,NULL,25,5,'Vòng da đơn giản',6),(16,8,'Móc khóa','Móc khóa',5000,0,'http://www.lola.vn/data/201335/resize_612x460_hnh08080011429.jpg',NULL,NULL,20,15,'Móc khóa',7),(17,9,'Móc khoá hình quái vật','- Chất liệu: vải<br/>- Độ rộng cánh: 4.38cm<br/>- Hãng: EK Success<br/>- Lưu ý: Các bạn có thể tuỳ chỉnh màu sắc để có được sản phẩm mình mong muốn. Vì là hàng handmade theo yêu cầu nên hàng không có sẵn. ',10000,0,'http://www.lola.vn/data/201336/resize_612x410_mk169901.png','image desc','status',10,5,'Sản phẩm giảm giá',8),(18,9,'Nhà búp bê','Xem thêm tại FB : thế giới thu nhỏ của bạn',100000,0,'http://www.lola.vn/data/201331/9965534163799651463381093225494n2149.jpg','image desc','status',10,5,'Sản phẩm hot nhất hiện nay',9),(19,1,'Dụng cụ bấm giấy hình bươm bướm 4.38 cm','Vòng đeo chân detail desc',25000,0,'http://www.lola.vn/data/201335/marthastewart3in1butterflypunchproject12275.jpg','image desc','status',10,5,'Dành cho các bạn gay',10),(20,1,'Móc Khóa','Móc khóa handmade nhập từ Trung Quốc =.=',50000,0,'http://www.lola.vn/data/201339/photo13747621.jpg','image desc','status',10,5,'Sản phẩm chất lượng dành cho người thiếu tiền',3),(21,2,'Vòng tay handmade 14','Vòng tay handmade làm từ sợi len tổng hợp',70000,0,'http://www.lola.vn/data/201338/vt146379.jpg','image desc','status',10,5,'short desc',4),(22,2,'Gấu len đựng kẹo','Gấu len đựng kẹo',65000,0,'http://www.lola.vn/data/201337/resize_612x537_gungko20cm65199133776.jpg','image desc','status',10,5,'short desc',5),(23,4,'Cườm tam giác','Cườm tam giác',10000,0,'http://www.lola.vn/data/201339/dsc0133013879.jpg','image desc','status',10,5,'short desc',6),(24,4,'Cặp đôi hoàn hảo','Cặp đôi hoàn hảo',10000,0,'http://www.lola.vn/data/201339/resize_612x612_119109.jpg','image desc','status',10,5,'short desc',7),(25,5,'Móc khóa Apple','Móc khóa Apple',10000,0,'http://www.lola.vn/data/201339/resize_612x410_v0115k4612.jpg','image desc','status',10,5,'short desc',8),(26,5,'Ba chú gấu con','Ba chú gấu con',10000,0,'http://www.lola.vn/data/201339/resize_612x359_32244.jpg','image desc','status',10,5,'short desc',9),(27,6,'Bộ sưu tập cute 2','Bộ sưu tập cute 2',10000,0,'http://www.lola.vn/data//resize_612x494_128444.jpg','image desc','status',10,5,'Bộ sưu tập cute 2',10),(28,6,'Bát sứ ngộ nghĩnh','Bát sứ ngộ nghĩnh',25000,0,'http://www.lola.vn/data/201337/resize_612x460_555383415488261888555226309861n3002.jpg','image desc','status',10,5,'Bát sứ ngộ nghĩnh',4),(29,7,'Khung Hình Gấu','Khung hình gấu đốm đáng yêu. chất liệu: vải nỉ. kích thước: 10x10cm (không tính phần tai)',15000,0,'http://www.lola.vn/data/201335/resize_612x744_sp143459.jpg','image desc','status',10,5,'short desc',5),(30,7,'Vòng đeo tay','Vòng đeo tay detail desc',10000,0,'https://lh3.googleusercontent.com/9x_Zdxi1WFlQuX9QYROl0DHsJ8R0KENPgIgHHeDMR3w2i6aX6HsH5e73FFKsn0-oETRPoe-__w=s220-h140-e365-rw','image desc','status',10,5,'short desc',6),(31,8,'Vòng da đơn giản','Vòng da đơn giản',100000,0,'http://www.lola.vn/data/201335/resize_612x460_hnh09216486.jpg',NULL,NULL,25,5,'Vòng da đơn giản',7),(32,8,'Móc khóa','Móc khóa',5000,0,'http://www.lola.vn/data/201335/resize_612x460_hnh08080011429.jpg',NULL,NULL,20,15,'Móc khóa',8),(33,9,'Dụng cụ bấm giấy hình bươm bướm 4.38 cm','Vòng đeo chân detail desc',25000,0,'http://www.lola.vn/data/201335/marthastewart3in1butterflypunchproject12275.jpg','image desc','status',10,5,'Dành cho các bạn gay',9),(34,9,'Móc Khóa','Móc khóa handmade nhập từ Trung Quốc =.=',50000,0,'http://www.lola.vn/data/201339/photo13747621.jpg','image desc','status',10,5,'Sản phẩm chất lượng dành cho người thiếu tiền',10),(35,3,'Vòng tay handmade 14','Vòng tay handmade làm từ sợi len tổng hợp',70000,0,'http://www.lola.vn/data/201338/vt146379.jpg','image desc','status',10,5,'short desc',6),(36,3,'Gấu len đựng kẹo','Gấu len đựng kẹo',65000,0,'http://www.lola.vn/data/201337/resize_612x537_gungko20cm65199133776.jpg','image desc','status',10,5,'short desc',7),(37,10,'Cườm tam giác','Cườm tam giác',10000,0,'http://www.lola.vn/data/201339/dsc0133013879.jpg','image desc','status',10,5,'short desc',8),(38,10,'Cặp đôi hoàn hảo','Cặp đôi hoàn hảo',10000,0,'http://www.lola.vn/data/201339/resize_612x612_119109.jpg','image desc','status',10,5,'short desc',9),(40,6,'test1','detail1',100001,0,NULL,NULL,NULL,NULL,21,'short1',11);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_login` varchar(100) DEFAULT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  `billing_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_order`
--

LOCK TABLES `customer_order` WRITE;
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
INSERT INTO `customer_order` VALUES (7,'haotc1',6,NULL,'2013-10-16 19:54:57','unchecked'),(8,'haotc1',7,NULL,'2013-10-16 19:59:07','unchecked');
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'Tăng','Công Hảo','0123456789','male','1992-01-16'),(2,'Đại','Ka Hảo','0123456789','male','1992-01-16');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,5,2,1,100000,100000),(2,6,5,3,70000,210000),(3,7,2,2,100000,200000),(4,7,7,3,10000,30000),(5,8,2,1,100000,100000);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login` (
  `login` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login`
--

LOCK TABLES `user_login` WRITE;
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
INSERT INTO `user_login` VALUES ('haotc','123456','haotcse60777@yahoo.com',1,'admin'),('haotc1','123456','haotcse60777@yahoo.com',2,'customer');
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_address`
--

DROP TABLE IF EXISTS `shipping_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_address`
--

LOCK TABLES `shipping_address` WRITE;
/*!40000 ALTER TABLE `shipping_address` DISABLE KEYS */;
INSERT INTO `shipping_address` VALUES (6,'Tăng Công Hảo','i.am_not_handsome@yahoo.com','1234567890','Tô Ký'),(7,'aadsf','asdf@sdffsa.com','a','a');
/*!40000 ALTER TABLE `shipping_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-17  8:29:14
