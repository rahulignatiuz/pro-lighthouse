-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: lighthousetest
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `attachment`
--

DROP TABLE IF EXISTS `attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FieldName` varchar(100) DEFAULT NULL,
  `OriginalName` varchar(100) DEFAULT NULL,
  `MimeType` varchar(100) DEFAULT NULL,
  `Container` varchar(100) DEFAULT NULL,
  `AzureBlob` varchar(2083) DEFAULT NULL,
  `FileSize` double DEFAULT NULL,
  `Url` varchar(2083) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment`
--

LOCK TABLES `attachment` WRITE;
/*!40000 ALTER TABLE `attachment` DISABLE KEYS */;
INSERT INTO `attachment` VALUES (156,'attachment','Capture.PNG','image/png','lighthouse','image/png/1606383746386_Capture.PNG',304919,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/image/png/1606383746386_Capture.PNG'),(157,'attachment','bulk_upload.xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','lighthouse','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet/1606716847202_bulk_upload.xlsx',11320,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/vnd.openxmlformats-officedocument.spreadsheetml.sheet/1606716847202_bulk_upload.xlsx'),(158,'attachment','bulk_upload.xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','lighthouse','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet/1606719307278_bulk_upload.xlsx',11320,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/vnd.openxmlformats-officedocument.spreadsheetml.sheet/1606719307278_bulk_upload.xlsx'),(159,'attachment','bulk_upload.xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','lighthouse','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet/1607347629204_bulk_upload.xlsx',11317,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/vnd.openxmlformats-officedocument.spreadsheetml.sheet/1607347629204_bulk_upload.xlsx'),(160,'attachment','343816-66-35-126053.pdf','application/pdf','lighthouse','application/pdf/1608119933697_343816-66-35-126053.pdf',15643,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1608119933697_343816-66-35-126053.pdf'),(161,'attachment','bulk_process_project.csv','application/vnd.ms-excel','lighthouse','application/vnd.ms-excel/1608120142884_bulk_process_project.csv',466,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/vnd.ms-excel/1608120142884_bulk_process_project.csv'),(164,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1610004491395_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1610004491395_dummy.pdf'),(165,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1610010430695_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1610010430695_dummy.pdf'),(167,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611136363154_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611136363154_dummy.pdf'),(169,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611136782147_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611136782147_dummy.pdf'),(170,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611211711083_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611211711083_dummy.pdf'),(172,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611212615017_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611212615017_dummy.pdf'),(173,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611213413004_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611213413004_dummy.pdf'),(175,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611215447773_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611215447773_dummy.pdf'),(177,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611215889063_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611215889063_dummy.pdf'),(179,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611215927830_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611215927830_dummy.pdf'),(180,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611232129155_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611232129155_dummy.pdf'),(182,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611232548460_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611232548460_dummy.pdf'),(184,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611232589944_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611232589944_dummy.pdf'),(185,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611293657466_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611293657466_dummy.pdf'),(186,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611297174818_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611297174818_dummy.pdf'),(187,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611297269444_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611297269444_dummy.pdf'),(188,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611297428651_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611297428651_dummy.pdf'),(189,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611297533606_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611297533606_dummy.pdf'),(190,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611297640341_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611297640341_dummy.pdf'),(191,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611297675280_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611297675280_dummy.pdf'),(192,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611298004707_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611298004707_dummy.pdf'),(194,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611298066209_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611298066209_dummy.pdf'),(195,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611298436639_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611298436639_dummy.pdf'),(197,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611298492857_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611298492857_dummy.pdf'),(199,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611298701815_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611298701815_dummy.pdf'),(201,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611298902552_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611298902552_dummy.pdf'),(203,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611298948565_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611298948565_dummy.pdf'),(205,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611299181342_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611299181342_dummy.pdf'),(207,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611299227264_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611299227264_dummy.pdf'),(209,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611299446733_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611299446733_dummy.pdf'),(211,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611299491796_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611299491796_dummy.pdf'),(212,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611305407121_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611305407121_dummy.pdf'),(214,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611305547108_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611305547108_dummy.pdf'),(216,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611305590437_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611305590437_dummy.pdf'),(218,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611305824692_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611305824692_dummy.pdf'),(220,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611305867379_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611305867379_dummy.pdf'),(222,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611306234116_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611306234116_dummy.pdf'),(224,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611306277053_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611306277053_dummy.pdf'),(225,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611726755944_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611726755944_dummy.pdf'),(226,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611727109967_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611727109967_dummy.pdf'),(228,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611727295142_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611727295142_dummy.pdf'),(230,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611727681407_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611727681407_dummy.pdf'),(232,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611727734360_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611727734360_dummy.pdf'),(233,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611728558468_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611728558468_dummy.pdf'),(235,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611728962585_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611728962585_dummy.pdf'),(237,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611729026276_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611729026276_dummy.pdf'),(239,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611732190246_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611732190246_dummy.pdf'),(241,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611732246279_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611732246279_dummy.pdf'),(243,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611812830106_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611812830106_dummy.pdf'),(244,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611812890763_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611812890763_dummy.pdf'),(245,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611813543056_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611813543056_dummy.pdf'),(246,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1611817239237_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1611817239237_dummy.pdf'),(247,'attachment','PHOTO-2020-03-24-11-00-55.jpg','image/jpeg','lighthouse','image/jpeg/1612436699151_PHOTO-2020-03-24-11-00-55.jpg',54534,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/image/jpeg/1612436699151_PHOTO-2020-03-24-11-00-55.jpg'),(248,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1613454622233_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1613454622233_dummy.pdf'),(249,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1613454793692_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1613454793692_dummy.pdf'),(250,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1613455756609_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1613455756609_dummy.pdf'),(251,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1613456837876_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1613456837876_dummy.pdf'),(252,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1613457006878_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1613457006878_dummy.pdf'),(253,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1613539928546_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1613539928546_dummy.pdf'),(254,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1613540081104_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1613540081104_dummy.pdf'),(255,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1613624405040_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1613624405040_dummy.pdf'),(256,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1613624929250_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1613624929250_dummy.pdf'),(257,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1613625134164_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1613625134164_dummy.pdf'),(258,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1614142209639_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614142209639_dummy.pdf'),(261,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1614142704764_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614142704764_dummy.pdf'),(262,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1614143233714_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614143233714_dummy.pdf'),(263,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1614143367590_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614143367590_dummy.pdf'),(264,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1614143789195_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614143789195_dummy.pdf'),(265,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1614144605038_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614144605038_dummy.pdf'),(266,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1614144675964_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614144675964_dummy.pdf'),(267,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1614145950443_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614145950443_dummy.pdf'),(268,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1614152134540_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614152134540_dummy.pdf'),(269,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1614152257036_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614152257036_dummy.pdf'),(271,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1614161985539_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614161985539_dummy.pdf'),(273,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1614163463881_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614163463881_dummy.pdf'),(275,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1614165326136_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614165326136_dummy.pdf'),(277,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1614165437529_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614165437529_dummy.pdf'),(279,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1614336598342_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614336598342_dummy.pdf'),(281,'attachment','dummy.pdf','application/pdf','lighthouse','application/pdf/1614336669998_dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614336669998_dummy.pdf'),(283,'attachment','Dummy.pdf','application/pdf','lighthouse','application/pdf/1614340795277_Dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614340795277_Dummy.pdf'),(285,'attachment','Dummy.pdf','application/pdf','lighthouse','application/pdf/1614340851597_Dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614340851597_Dummy.pdf'),(286,'attachment','Dummy.pdf','application/pdf','lighthouse','application/pdf/1614666966300_Dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614666966300_Dummy.pdf'),(287,'attachment','Dummy.pdf','application/pdf','lighthouse','application/pdf/1614682845607_Dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1614682845607_Dummy.pdf'),(289,'attachment','Dummy.pdf','application/pdf','lighthouse','application/pdf/1615354890081_Dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1615354890081_Dummy.pdf'),(291,'attachment','Dummy.pdf','application/pdf','lighthouse','application/pdf/1615354939951_Dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1615354939951_Dummy.pdf'),(292,'attachment','Dummy.pdf','application/pdf','lighthouse','application/pdf/1615355508583_Dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1615355508583_Dummy.pdf'),(293,'attachment','Dummy.pdf','application/pdf','lighthouse','application/pdf/1615355626843_Dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1615355626843_Dummy.pdf'),(295,'attachment','Dummy.pdf','application/pdf','lighthouse','application/pdf/1616482687761_Dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1616482687761_Dummy.pdf'),(297,'attachment','Dummy.pdf','application/pdf','lighthouse','application/pdf/1616482752673_Dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1616482752673_Dummy.pdf'),(298,'attachment','Dummy.pdf','application/pdf','lighthouse','application/pdf/1616484156802_Dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1616484156802_Dummy.pdf'),(299,'attachment','Dummy.pdf','application/pdf','lighthouse','application/pdf/1616484233363_Dummy.pdf',13264,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1616484233363_Dummy.pdf'),(300,'attachment','Smarticles Assay Performance Criteria - Dev Feedback and Recommendations for Lighthouse.docx','application/vnd.openxmlformats-officedocument.wordprocessingml.document','lighthouse','application/vnd.openxmlformats-officedocument.wordprocessingml.document/1624055397826_Smarticles Assay Performance Criteria - Dev Feedback and Recommendations for Lighthouse.docx',12230,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/vnd.openxmlformats-officedocument.wordprocessingml.document/1624055397826_Smarticles%20Assay%20Performance%20Criteria%20-%20Dev%20Feedback%20and%20Recommendations%20for%20Lighthouse.docx'),(301,'attachment','Agile PDP BP_ Increments Schedule.pdf','application/pdf','lighthouse','application/pdf/1624584019472_Agile PDP BP_ Increments Schedule.pdf',374214,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1624584019472_Agile%20PDP%20BP_%20Increments%20Schedule.pdf'),(302,'attachment','Agile PDP BP_ Documentation across multiple versions.pdf','application/pdf','lighthouse','application/pdf/1624584374759_Agile PDP BP_ Documentation across multiple versions.pdf',259397,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1624584374759_Agile%20PDP%20BP_%20Documentation%20across%20multiple%20versions.pdf'),(303,'attachment','Connect Project Retro (FMI Integration 29 April 2021).pdf','application/pdf','lighthouse','application/pdf/1625264047903_Connect Project Retro (FMI Integration 29 April 2021).pdf',110467,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1625264047903_Connect%20Project%20Retro%20(FMI%20Integration%2029%20April%202021).pdf'),(304,'attachment','Capstone - Connect Retro 1 (Feature Definition) 08 June 2021.pdf','application/pdf','lighthouse','application/pdf/1625264842187_Capstone - Connect Retro 1 (Feature Definition) 08 June 2021.pdf',109055,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/pdf/1625264842187_Capstone%20-%20Connect%20Retro%201%20(Feature%20Definition)%2008%20June%202021.pdf'),(305,'attachment','Copy of cobas prime Lighthouse Input Form_OK edits (002).xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','lighthouse','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet/1644670599908_Copy of cobas prime Lighthouse Input Form_OK edits (002).xlsx',12970,'https://sausdevlhstor1.blob.core.windows.net/lighthouse/application/vnd.openxmlformats-officedocument.spreadsheetml.sheet/1644670599908_Copy%20of%20cobas%20prime%20Lighthouse%20Input%20Form_OK%20edits%20(002).xlsx');
/*!40000 ALTER TABLE `attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulkimport`
--

DROP TABLE IF EXISTS `bulkimport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulkimport` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FileName` varchar(100) DEFAULT NULL,
  `TotalEntry` int DEFAULT NULL,
  `TotalEntryError` int DEFAULT NULL,
  `ErrorFileName` varchar(100) DEFAULT NULL,
  `FilePath` varchar(2083) DEFAULT NULL,
  `ErrorFilePath` varchar(2083) DEFAULT NULL,
  `ImportDate` datetime(6) DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulkimport`
--

LOCK TABLES `bulkimport` WRITE;
/*!40000 ALTER TABLE `bulkimport` DISABLE KEYS */;
INSERT INTO `bulkimport` VALUES (1,'Copy of cobas prime Lighthouse Input Form_OK edits (1)_1645777248760.xlsx',1,6,'error_1645777257049.xlsx','uploads\\Copy of cobas prime Lighthouse Input Form_OK edits (1)_1645777248760.xlsx','uploads/error_1645777257049.xlsx','2022-02-25 13:50:49.000000',157),(2,'Copy of cobas prime Lighthouse Input Form_OK edits (1)_1645777491826.xlsx',1,6,'error_1645777496345.xlsx','uploads\\Copy of cobas prime Lighthouse Input Form_OK edits (1)_1645777491826.xlsx','uploads/error_1645777496345.xlsx','2022-02-25 13:54:52.000000',157),(3,'Copy of cobas prime Lighthouse Input Form_OK edits (1)_1645777550879.xlsx',1,6,'error_1645777556779.xlsx','uploads\\Copy of cobas prime Lighthouse Input Form_OK edits (1)_1645777550879.xlsx','uploads/error_1645777556779.xlsx','2022-02-25 13:55:51.000000',157),(4,'Copy of cobas prime Lighthouse Input Form_OK edits (1)_1645777609819.xlsx',1,6,'error_1645777612569.xlsx','uploads\\Copy of cobas prime Lighthouse Input Form_OK edits (1)_1645777609819.xlsx','uploads/error_1645777612569.xlsx','2022-02-25 13:56:50.000000',157),(5,'Copy of cobas prime Lighthouse Input Form_OK edits (1)_1645777630766.xlsx',1,6,'error_1645777633584.xlsx','uploads\\Copy of cobas prime Lighthouse Input Form_OK edits (1)_1645777630766.xlsx','uploads/error_1645777633584.xlsx','2022-02-25 13:57:11.000000',157),(6,'Copy of cobas prime Lighthouse Input Form_OK edits (1)_1645777682317.xlsx',1,6,'error_1645777685187.xlsx','uploads\\Copy of cobas prime Lighthouse Input Form_OK edits (1)_1645777682317.xlsx','uploads/error_1645777685187.xlsx','2022-02-25 13:58:02.000000',157);
/*!40000 ALTER TABLE `bulkimport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulkimporterrors`
--

DROP TABLE IF EXISTS `bulkimporterrors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulkimporterrors` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ErrorMessage` varchar(200) DEFAULT NULL,
  `ErrorField` varchar(200) DEFAULT NULL,
  `RowField` int DEFAULT NULL,
  `ColumnField` int DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `ProjectType` varchar(200) DEFAULT NULL,
  `ProcessField` varchar(200) DEFAULT NULL,
  `Project` varchar(200) DEFAULT NULL,
  `Phase` varchar(200) DEFAULT NULL,
  `Milestone` varchar(200) DEFAULT NULL,
  `Type` varchar(200) DEFAULT NULL,
  `ImpactCategory` varchar(200) DEFAULT NULL,
  `ImpactLevel` varchar(200) DEFAULT NULL,
  `FunctionField` varchar(200) DEFAULT NULL,
  `Department` varchar(200) DEFAULT NULL,
  `Title` varchar(500) DEFAULT NULL,
  `Description` varchar(2000) DEFAULT NULL,
  `RootCause` varchar(2000) DEFAULT NULL,
  `Recommendation` varchar(2000) DEFAULT NULL,
  `Keywords` varchar(200) DEFAULT NULL,
  `IndexID` int DEFAULT NULL,
  `LifeCycle` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulkimporterrors`
--

LOCK TABLES `bulkimporterrors` WRITE;
/*!40000 ALTER TABLE `bulkimporterrors` DISABLE KEYS */;
INSERT INTO `bulkimporterrors` VALUES (1,'\'Given Project \'cobas prime SW 1.1\' not available  in project type \'Standalone Software\'. Please check once again.\'','cobas prime SW 1.1',3,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(2,'\'Given Project \'cobas prime SW 1.1\' not available  in project type \'Standalone Software\'. Please check once again.\'','cobas prime SW 1.1',3,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(3,'\'Given Phase \'Analysis Phase\' not available in project type \'Standalone Software\'. Please check once again.\'','Analysis Phase',4,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(4,'\'Given Phase \'Analysis Phase\' not available in project type \'Standalone Software\'. Please check once again.\'','Analysis Phase',4,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(5,'\'Given Milestone \'Milestone DG\' not available in project type \'Standalone Software\'. Please check once again.\'','Milestone DG',5,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(6,'\'Given Milestone \'Milestone DG\' not available in project type \'Standalone Software\'. Please check once again.\'','Milestone DG',5,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(7,'\'Given Project \'cobas prime SW 1.1\' not available  in project type \'Standalone Software\'. Please check once again.\'','cobas prime SW 1.1',3,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(8,'\'Given Project \'cobas prime SW 1.1\' not available  in project type \'Standalone Software\'. Please check once again.\'','cobas prime SW 1.1',3,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(9,'\'Given Phase \'Analysis Phase\' not available in project type \'Standalone Software\'. Please check once again.\'','Analysis Phase',4,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(10,'\'Given Phase \'Analysis Phase\' not available in project type \'Standalone Software\'. Please check once again.\'','Analysis Phase',4,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(11,'\'Given Milestone \'Milestone DG\' not available in project type \'Standalone Software\'. Please check once again.\'','Milestone DG',5,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(12,'\'Given Milestone \'Milestone DG\' not available in project type \'Standalone Software\'. Please check once again.\'','Milestone DG',5,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(13,'\'Given Project \'cobas prime SW 1.1\' not available  in project type \'Standalone Software\'. Please check once again.\'','cobas prime SW 1.1',3,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(14,'\'Given Project \'cobas prime SW 1.1\' not available  in project type \'Standalone Software\'. Please check once again.\'','cobas prime SW 1.1',3,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(15,'\'Given Phase \'Analysis Phase\' not available in project type \'Standalone Software\'. Please check once again.\'','Analysis Phase',4,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(16,'\'Given Phase \'Analysis Phase\' not available in project type \'Standalone Software\'. Please check once again.\'','Analysis Phase',4,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(17,'\'Given Milestone \'Milestone DG\' not available in project type \'Standalone Software\'. Please check once again.\'','Milestone DG',5,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(18,'\'Given Milestone \'Milestone DG\' not available in project type \'Standalone Software\'. Please check once again.\'','Milestone DG',5,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(19,'\'Given Project \'cobas prime SW 1.1\' not available  in project type \'Standalone Software\'. Please check once again.\'','cobas prime SW 1.1',3,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(20,'\'Given Project \'cobas prime SW 1.1\' not available  in project type \'Standalone Software\'. Please check once again.\'','cobas prime SW 1.1',3,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(21,'\'Given Phase \'Analysis Phase\' not available in project type \'Standalone Software\'. Please check once again.\'','Analysis Phase',4,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(22,'\'Given Phase \'Analysis Phase\' not available in project type \'Standalone Software\'. Please check once again.\'','Analysis Phase',4,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(23,'\'Given Milestone \'Milestone DG\' not available in project type \'Standalone Software\'. Please check once again.\'','Milestone DG',5,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(24,'\'Given Milestone \'Milestone DG\' not available in project type \'Standalone Software\'. Please check once again.\'','Milestone DG',5,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(25,'\'Given Project \'cobas prime SW 1.1\' not available  in project type \'Standalone Software\'. Please check once again.\'','cobas prime SW 1.1',3,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(26,'\'Given Project \'cobas prime SW 1.1\' not available  in project type \'Standalone Software\'. Please check once again.\'','cobas prime SW 1.1',3,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(27,'\'Given Phase \'Analysis Phase\' not available in project type \'Standalone Software\'. Please check once again.\'','Analysis Phase',4,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(28,'\'Given Phase \'Analysis Phase\' not available in project type \'Standalone Software\'. Please check once again.\'','Analysis Phase',4,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(29,'\'Given Milestone \'Milestone DG\' not available in project type \'Standalone Software\'. Please check once again.\'','Milestone DG',5,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(30,'\'Given Milestone \'Milestone DG\' not available in project type \'Standalone Software\'. Please check once again.\'','Milestone DG',5,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(31,'\'Given Project \'cobas prime SW 1.1\' not available  in project type \'Standalone Software\'. Please check once again.\'','cobas prime SW 1.1',3,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(32,'\'Given Project \'cobas prime SW 1.1\' not available  in project type \'Standalone Software\'. Please check once again.\'','cobas prime SW 1.1',3,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(33,'\'Given Phase \'Analysis Phase\' not available in project type \'Standalone Software\'. Please check once again.\'','Analysis Phase',4,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(34,'\'Given Phase \'Analysis Phase\' not available in project type \'Standalone Software\'. Please check once again.\'','Analysis Phase',4,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)'),(35,'\'Given Milestone \'Milestone DG\' not available in project type \'Standalone Software\'. Please check once again.\'','Milestone DG',5,3,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','High','Research & Development','Systems','Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','null','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.','trustful relationship, external partner',2,'Systems (RMD)'),(36,'\'Given Milestone \'Milestone DG\' not available in project type \'Standalone Software\'. Please check once again.\'','Milestone DG',5,2,'rahul rai','rahul.rai@ignatiuz.com','Standalone Software','null','cobas prime SW 1.1','Analysis Phase','Milestone DG','Best Practice','Culture and Teamwork','Medium','Research & Development','PCR System Development - Product Definition Team','Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','null','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1','PO1.1, PO, Process Optimization, Prime, 1.1',1,'Systems (RMD)');
/*!40000 ALTER TABLE `bulkimporterrors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Indexing` int DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  `UpdatedBy` int NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'PMO','PMO',28,1,1,NULL,NULL,1),(2,'Marketing','Martketing',29,1,1,NULL,NULL,1),(3,'CIT','CIT',4,1,1,NULL,NULL,1),(4,'ID','ID',2,1,1,NULL,NULL,1),(5,'Assay','Assay',3,1,1,NULL,NULL,1),(6,'Software','Software',5,1,1,NULL,NULL,1),(7,'Systems','Medical & Scientific Affairs',6,1,1,NULL,NULL,1),(8,'Development Doc Management','Development Doc Management',27,1,1,NULL,NULL,1),(9,'Design Quality Assurance','Design Quality Assurance',7,1,1,NULL,NULL,1),(10,'Quality Assurance','Quality Assurance',8,1,1,NULL,NULL,1),(11,'Clinical OPS','Clinical OPS',12,1,1,NULL,NULL,1),(12,'External Studies','External Studies',14,1,1,NULL,NULL,1),(13,'Intellectual Property','Intellectual Property',16,1,1,NULL,NULL,1),(14,'Licensing','Licensing',18,1,1,NULL,NULL,1),(15,'Contracts','Contracts',9,1,1,NULL,NULL,1),(16,'Privacy/Compliance','Privacy/Compliance',10,1,1,NULL,NULL,1),(17,'Master Labeling','Master Labeling',11,1,1,NULL,NULL,1),(18,'Master Data','Master Data',1,1,1,NULL,NULL,1),(19,'Planning & Logistics','Planning & Logistics',13,1,1,NULL,NULL,1),(20,'Finance','Finance',15,1,1,NULL,NULL,1),(21,'Critical Materials (ADI) Manufacturing','Critical Materials (ADI) Manufacturing',17,1,1,NULL,NULL,1),(22,'Design Transfer & Technical Support (Val, PM, Tech Transfer, Tech Support)','Design Transfer & Technical Support (Val, PM, Tech Transfer, Tech Support)',19,1,1,NULL,NULL,1),(23,'Engineering Support','Engineering Support',20,1,1,NULL,NULL,1),(24,'Quality Operations','Quality Operations',21,1,1,NULL,NULL,1),(25,'Shipping/ Warehouse','Shipping/ Warehouse',22,1,1,NULL,NULL,1),(26,'Production (Bulk, Fill, Package, Central Weigh)','Production (Bulk, Fill, Package, Central Weigh)',23,1,1,NULL,NULL,1),(27,'Supply Chain','Supply Chain',24,1,1,NULL,NULL,1),(28,'Contract Manufacturer/Supplier','Contract Manufacturer/Supplier',25,1,1,NULL,NULL,1),(29,'Penzberg','Penzberg',26,1,1,NULL,NULL,1),(129,'PCR System Development','',NULL,153,153,NULL,NULL,NULL),(130,'PCR System Development - Product Definition Team','',NULL,153,153,NULL,NULL,NULL);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `functions`
--

DROP TABLE IF EXISTS `functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `functions` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `Indexing` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `UpdatedBy` int DEFAULT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `functions`
--

LOCK TABLES `functions` WRITE;
/*!40000 ALTER TABLE `functions` DISABLE KEYS */;
INSERT INTO `functions` VALUES (19,'Research & Development',NULL,NULL,NULL,NULL,NULL,NULL,1),(20,'Global Operations',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Business Development',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Procurement',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Quality & Regulatory Affairs',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'COBM (Clinical OPS, Biometrics)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Strategy & Lifecycle Services',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'Facilities/Site Services/SHE',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'Finance/Project Management Office',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'Communications',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'IT',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'Legal',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'Medical & Scientific Affairs',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'People & Culture',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'Portfolio Management',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'PCR System Development','',NULL,153,153,NULL,NULL,NULL),(42,'Global Customer Support','',NULL,157,157,NULL,NULL,NULL);
/*!40000 ALTER TABLE `functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `googleuser`
--

DROP TABLE IF EXISTS `googleuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `googleuser` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Sub` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `GivenName` varchar(45) DEFAULT NULL,
  `FamilyName` varchar(45) DEFAULT NULL,
  `Picture` varchar(2083) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `EmailVerified` varchar(10) DEFAULT NULL,
  `Hd` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `googleuser`
--

LOCK TABLES `googleuser` WRITE;
/*!40000 ALTER TABLE `googleuser` DISABLE KEYS */;
INSERT INTO `googleuser` VALUES (143,'112997378385775920645','Rahul Rai','Rahul','Rai','https://lh3.googleusercontent.com/a-/AOh14GhckVYtQGd1r3kjqE5vPNhQmhI2rU873xHT3pwI=s96-c','rahul.rai@ignatiuz.com','true','ignatiuz.com','2021-12-30 15:50:08.000000',1),(164,'103059656847625691494','Rahul Rai','Rahul','Rai','https://lh3.googleusercontent.com/a-/AOh14GgNRxyS2OB5JK-OJoO-_bUWDkeLVoWEEhp4mnl_uw=s96-c','rahulrai9950@gmail.com','true','undefined','2022-02-25 13:59:07.000000',1);
/*!40000 ALTER TABLE `googleuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impactcategory`
--

DROP TABLE IF EXISTS `impactcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `impactcategory` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Indexing` int DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  `UpdatedBy` int NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impactcategory`
--

LOCK TABLES `impactcategory` WRITE;
/*!40000 ALTER TABLE `impactcategory` DISABLE KEYS */;
INSERT INTO `impactcategory` VALUES (1,'Schedule/Time','Schedule/Time',1,1,1,NULL,NULL,1),(2,'Cost/Budget','Cost/Budget',2,1,1,NULL,NULL,1),(3,'Culture and Teamwork','Culture and Teamwork',3,1,1,NULL,NULL,1),(13,'Quality/Compliance/Product Safety','Quality/Compliance/Product Safety',4,1,1,NULL,NULL,1);
/*!40000 ALTER TABLE `impactcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impactlevel`
--

DROP TABLE IF EXISTS `impactlevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `impactlevel` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Indexing` int DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  `UpdatedBy` int NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impactlevel`
--

LOCK TABLES `impactlevel` WRITE;
/*!40000 ALTER TABLE `impactlevel` DISABLE KEYS */;
INSERT INTO `impactlevel` VALUES (1,'Low','Low',2,1,1,NULL,NULL,NULL),(2,'Medium','Medium',4,1,1,NULL,NULL,NULL),(3,'High','High',3,1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `impactlevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyword`
--

DROP TABLE IF EXISTS `keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keyword` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `UpdatedBy` int DEFAULT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=572 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyword`
--

LOCK TABLES `keyword` WRITE;
/*!40000 ALTER TABLE `keyword` DISABLE KEYS */;
INSERT INTO `keyword` VALUES (359,'MVP','MVP',NULL,NULL,NULL,NULL,NULL),(360,'Requirements','Requirements',NULL,NULL,NULL,NULL,NULL),(364,'strategy','strategy',NULL,NULL,NULL,NULL,NULL),(365,'pipeline','pipeline',NULL,NULL,NULL,NULL,NULL),(366,'roadmap','roadmap',NULL,NULL,NULL,NULL,NULL),(369,'project management','project management',NULL,NULL,NULL,NULL,NULL),(370,'kanban','kanban',NULL,NULL,NULL,NULL,NULL),(373,'document management','document management',NULL,NULL,NULL,NULL,NULL),(374,'site closure','site closure',NULL,NULL,NULL,NULL,NULL),(377,'transfer','transfer',NULL,NULL,NULL,NULL,NULL),(379,'service provider','service provider',NULL,NULL,NULL,NULL,NULL),(380,'attrition','attrition',NULL,NULL,NULL,NULL,NULL),(381,'on-boarding','on-boarding',NULL,NULL,NULL,NULL,NULL),(382,'Workshop','Workshop',NULL,NULL,NULL,NULL,NULL),(416,'Projectdelays','Projectdelays',NULL,NULL,NULL,NULL,NULL),(418,'Assay performance criteria','Assay performance criteria',NULL,NULL,NULL,NULL,NULL),(420,' documentation',' documentation',NULL,NULL,NULL,NULL,NULL),(429,'process','process',NULL,NULL,NULL,NULL,NULL),(434,' project management tool',' project management tool',NULL,NULL,NULL,NULL,NULL),(435,'collaboration','collaboration',NULL,NULL,NULL,NULL,NULL),(436,' efficiency',' efficiency',NULL,NULL,NULL,NULL,NULL),(437,'master data','master data',NULL,NULL,NULL,NULL,NULL),(438,' process',' process',NULL,NULL,NULL,NULL,NULL),(439,'Increments','Increments',NULL,NULL,NULL,NULL,NULL),(440,'Incrementation','Incrementation',NULL,NULL,NULL,NULL,NULL),(444,'Documentation','Documentation',NULL,NULL,NULL,NULL,NULL),(445,'Versioning','Versioning',NULL,NULL,NULL,NULL,NULL),(446,'Integration','Integration',NULL,NULL,NULL,NULL,NULL),(447,'Software','Software',NULL,NULL,NULL,NULL,NULL),(448,'Co-development','Co-development',NULL,NULL,NULL,NULL,NULL),(450,'Agile','Agile',NULL,NULL,NULL,NULL,NULL),(451,'Feature Definition','Feature Definition',NULL,NULL,NULL,NULL,NULL),(463,'Design Review','Design Review',NULL,NULL,NULL,NULL,NULL),(464,'asd','asd',NULL,NULL,NULL,NULL,NULL),(465,'Work Package','Work Package',NULL,NULL,NULL,NULL,NULL),(466,'alignment','alignment',NULL,NULL,NULL,NULL,NULL),(467,'CDMA','CDMA',NULL,NULL,NULL,NULL,NULL),(468,'cross-functional','cross-functional',NULL,NULL,NULL,NULL,NULL),(469,'resources','resources',NULL,NULL,NULL,NULL,NULL),(470,'cobm','cobm',NULL,NULL,NULL,NULL,NULL),(471,'study','study',NULL,NULL,NULL,NULL,NULL),(472,'documents','documents',NULL,NULL,NULL,NULL,NULL),(473,'protocols','protocols',NULL,NULL,NULL,NULL,NULL),(474,'communication','communication',NULL,NULL,NULL,NULL,NULL),(475,'study data','study data',NULL,NULL,NULL,NULL,NULL),(476,'review','review',NULL,NULL,NULL,NULL,NULL),(477,'feedback','feedback',NULL,NULL,NULL,NULL,NULL),(479,'team','team',NULL,NULL,NULL,NULL,NULL),(480,'trouble shooting','trouble shooting',NULL,NULL,NULL,NULL,NULL),(481,'system integration','system integration',NULL,NULL,NULL,NULL,NULL),(482,'data analysis','data analysis',NULL,NULL,NULL,NULL,NULL),(483,'IT','IT',NULL,NULL,NULL,NULL,NULL),(484,'ASAP','ASAP',NULL,NULL,NULL,NULL,NULL),(485,'LIS','LIS',NULL,NULL,NULL,NULL,NULL),(486,'TDT','TDT',NULL,NULL,NULL,NULL,NULL),(487,'SW DM','SW DM',NULL,NULL,NULL,NULL,NULL),(488,'Solution testing','Solution testing',NULL,NULL,NULL,NULL,NULL),(489,'Synergy','Synergy',NULL,NULL,NULL,NULL,NULL),(490,'HW System','HW System',NULL,NULL,NULL,NULL,NULL),(491,'Configuration management','Configuration management',NULL,NULL,NULL,NULL,NULL),(492,'dev teams pls rtk','dev teams pls rtk',NULL,NULL,NULL,NULL,NULL),(493,'SI resources','SI resources',NULL,NULL,NULL,NULL,NULL),(494,'SD tasks','SD tasks',NULL,NULL,NULL,NULL,NULL),(495,'Study progress','Study progress',NULL,NULL,NULL,NULL,NULL),(496,'realtime tracking','realtime tracking',NULL,NULL,NULL,NULL,NULL),(497,'clin ops','clin ops',NULL,NULL,NULL,NULL,NULL),(498,'Assay Dev','Assay Dev',NULL,NULL,NULL,NULL,NULL),(499,'meeting','meeting',NULL,NULL,NULL,NULL,NULL),(500,'shipping','shipping',NULL,NULL,NULL,NULL,NULL),(501,'material forecast','material forecast',NULL,NULL,NULL,NULL,NULL),(502,'schedule','schedule',NULL,NULL,NULL,NULL,NULL),(503,'shipment','shipment',NULL,NULL,NULL,NULL,NULL),(504,'export','export',NULL,NULL,NULL,NULL,NULL),(505,'import','import',NULL,NULL,NULL,NULL,NULL),(506,'service patch','service patch',NULL,NULL,NULL,NULL,NULL),(507,'risk management','risk management',NULL,NULL,NULL,NULL,NULL),(508,'product risk','product risk',NULL,NULL,NULL,NULL,NULL),(509,'error handling','error handling',NULL,NULL,NULL,NULL,NULL),(510,'early definition','early definition',NULL,NULL,NULL,NULL,NULL),(511,'implementation','implementation',NULL,NULL,NULL,NULL,NULL),(512,'UI','UI',NULL,NULL,NULL,NULL,NULL),(513,'GCS','GCS',NULL,NULL,NULL,NULL,NULL),(514,'languages','languages',NULL,NULL,NULL,NULL,NULL),(515,'UA','UA',NULL,NULL,NULL,NULL,NULL),(516,'functionality','functionality',NULL,NULL,NULL,NULL,NULL),(517,'testing','testing',NULL,NULL,NULL,NULL,NULL),(518,'Utility channel','Utility channel',NULL,NULL,NULL,NULL,NULL),(519,'limited space','limited space',NULL,NULL,NULL,NULL,NULL),(520,'installation','installation',NULL,NULL,NULL,NULL,NULL),(521,'team spirit','team spirit',NULL,NULL,NULL,NULL,NULL),(522,'motivation','motivation',NULL,NULL,NULL,NULL,NULL),(523,'concept','concept',NULL,NULL,NULL,NULL,NULL),(524,'architecture','architecture',NULL,NULL,NULL,NULL,NULL),(525,'defect board','defect board',NULL,NULL,NULL,NULL,NULL),(526,'late defect load','late defect load',NULL,NULL,NULL,NULL,NULL),(527,'defects','defects',NULL,NULL,NULL,NULL,NULL),(528,'assay','assay',NULL,NULL,NULL,NULL,NULL),(529,'study execution','study execution',NULL,NULL,NULL,NULL,NULL),(530,'migration','migration',NULL,NULL,NULL,NULL,NULL),(531,'assay migration','assay migration',NULL,NULL,NULL,NULL,NULL),(532,'HW dependencies','HW dependencies',NULL,NULL,NULL,NULL,NULL),(533,'interface','interface',NULL,NULL,NULL,NULL,NULL),(534,'product care','product care',NULL,NULL,NULL,NULL,NULL),(535,'changes','changes',NULL,NULL,NULL,NULL,NULL),(536,'Decision making','Decision making',NULL,NULL,NULL,NULL,NULL),(537,'scope','scope',NULL,NULL,NULL,NULL,NULL),(538,'partner','partner',NULL,NULL,NULL,NULL,NULL),(539,' scope',' scope',NULL,NULL,NULL,NULL,NULL),(540,'usage','usage',NULL,NULL,NULL,NULL,NULL),(541,'Instrument','Instrument',NULL,NULL,NULL,NULL,NULL),(542,'confilct','confilct',NULL,NULL,NULL,NULL,NULL),(543,' usage',' usage',NULL,NULL,NULL,NULL,NULL),(544,' confilct',' confilct',NULL,NULL,NULL,NULL,NULL),(545,'know-how loss','know-how loss',NULL,NULL,NULL,NULL,NULL),(546,' ramp-up',' ramp-up',NULL,NULL,NULL,NULL,NULL),(547,' communication',' communication',NULL,NULL,NULL,NULL,NULL),(548,'Tool change','Tool change',NULL,NULL,NULL,NULL,NULL),(549,' Retina',' Retina',NULL,NULL,NULL,NULL,NULL),(550,' in-person',' in-person',NULL,NULL,NULL,NULL,NULL),(551,' workshop',' workshop',NULL,NULL,NULL,NULL,NULL),(552,' Proxy',' Proxy',NULL,NULL,NULL,NULL,NULL),(553,' Distribute work',' Distribute work',NULL,NULL,NULL,NULL,NULL),(554,' alignment',' alignment',NULL,NULL,NULL,NULL,NULL),(555,'Vacation','Vacation',NULL,NULL,NULL,NULL,NULL),(556,' project management',' project management',NULL,NULL,NULL,NULL,NULL),(557,'trustful relationship','trustful relationship',NULL,NULL,NULL,NULL,NULL),(558,' external partner',' external partner',NULL,NULL,NULL,NULL,NULL),(559,'','',NULL,NULL,NULL,NULL,NULL),(560,' vendor',' vendor',NULL,NULL,NULL,NULL,NULL),(561,'feature','feature',NULL,NULL,NULL,NULL,NULL),(562,' definition',' definition',NULL,NULL,NULL,NULL,NULL),(563,' Hamilton',' Hamilton',NULL,NULL,NULL,NULL,NULL),(564,' Kick-off',' Kick-off',NULL,NULL,NULL,NULL,NULL),(565,' key',' key',NULL,NULL,NULL,NULL,NULL),(566,' IP',' IP',NULL,NULL,NULL,NULL,NULL),(567,'PO1.1','PO1.1',NULL,NULL,NULL,NULL,NULL),(568,' PO',' PO',NULL,NULL,NULL,NULL,NULL),(569,' Process Optimization',' Process Optimization',NULL,NULL,NULL,NULL,NULL),(570,' Prime',' Prime',NULL,NULL,NULL,NULL,NULL),(571,' 1.1',' 1.1',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `LessonTypeID` int DEFAULT NULL,
  `ProjectTypeID` int DEFAULT NULL,
  `ProjectID` int DEFAULT NULL,
  `ProcessID` int DEFAULT NULL,
  `PhaseID` int DEFAULT NULL,
  `TypeID` int DEFAULT NULL,
  `ImpactCategoryID` int DEFAULT NULL,
  `ImpactLevelID` int DEFAULT NULL,
  `MilestoneID` int DEFAULT NULL,
  `FunctionID` int DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  `LifeCycleID` int DEFAULT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `IssueDescription` varchar(2000) DEFAULT NULL,
  `RootCause` varchar(2000) DEFAULT NULL,
  `Recommendation` varchar(2000) DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `UpdatedBy` int DEFAULT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UserID_idx` (`UserID`),
  KEY `LessonTypeID_idx` (`LessonTypeID`),
  KEY `ProjectTypeID_idx` (`ProjectTypeID`),
  KEY `ProjectID_idx` (`ProjectID`),
  KEY `ProcessID_idx` (`ProcessID`),
  KEY `PhaseID_idx` (`PhaseID`),
  KEY `ImpactCategoryID_idx` (`ImpactCategoryID`),
  KEY `ImpactLevelID_idx` (`ImpactLevelID`),
  KEY `TypeID_idx` (`TypeID`),
  KEY `LifeCycleID_idx` (`LifeCycleID`),
  CONSTRAINT `ImpactCategoryID` FOREIGN KEY (`ImpactCategoryID`) REFERENCES `impactcategory` (`ID`),
  CONSTRAINT `ImpactLevelID` FOREIGN KEY (`ImpactLevelID`) REFERENCES `impactlevel` (`ID`),
  CONSTRAINT `LessonTypeID` FOREIGN KEY (`LessonTypeID`) REFERENCES `lessontype` (`ID`),
  CONSTRAINT `PhaseID` FOREIGN KEY (`PhaseID`) REFERENCES `phase` (`ID`),
  CONSTRAINT `ProcessID` FOREIGN KEY (`ProcessID`) REFERENCES `process` (`ID`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `ProjectID` FOREIGN KEY (`ProjectID`) REFERENCES `project` (`ID`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `ProjectTypeID` FOREIGN KEY (`ProjectTypeID`) REFERENCES `projecttype` (`ID`),
  CONSTRAINT `TypeID` FOREIGN KEY (`TypeID`) REFERENCES `type` (`ID`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `UserID` FOREIGN KEY (`UserID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson`
--

LOCK TABLES `lesson` WRITE;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` VALUES (2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','undefined','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1',NULL,NULL,'2022-02-25 13:50:48.000000',NULL,1),(3,157,1,1,37,NULL,3,2,2,3,2,21,7,5,'Allow partner to start efficiently','Do workshops to explain scope to partner and give him time to ask questions.\r\nInstall meetings with partner before every planned sprint or release to align on details aand to have the outcome \"first time right\".','undefined','Define scope detailed and think it through before sharing with partner.\r\nA detailed scope for a partners offer helps to reduce unforeseen effort.',157,NULL,'2022-02-25 13:50:48.000000',NULL,1),(4,157,1,1,37,NULL,3,2,2,3,2,21,7,5,'Allow partner to start efficiently','Do workshops to explain scope to partner and give him time to ask questions.\r\nInstall meetings with partner before every planned sprint or release to align on details aand to have the outcome \"first time right\".','undefined','Define scope detailed and think it through before sharing with partner.\r\nA detailed scope for a partners offer helps to reduce unforeseen effort.',157,NULL,'2022-02-25 13:54:51.000000',NULL,1),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','undefined','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1',NULL,NULL,'2022-02-25 13:54:51.000000',NULL,1),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','undefined','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.',NULL,NULL,'2022-02-25 13:54:51.000000',NULL,1),(7,157,1,1,37,NULL,3,2,2,3,2,21,7,5,'Allow partner to start efficiently','Do workshops to explain scope to partner and give him time to ask questions.\r\nInstall meetings with partner before every planned sprint or release to align on details aand to have the outcome \"first time right\".','undefined','Define scope detailed and think it through before sharing with partner.\r\nA detailed scope for a partners offer helps to reduce unforeseen effort.',157,NULL,'2022-02-25 13:55:50.000000',NULL,1),(9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','undefined','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.',NULL,NULL,'2022-02-25 13:55:50.000000',NULL,1),(10,157,1,1,37,NULL,3,2,2,3,2,21,7,5,'Allow partner to start efficiently','Do workshops to explain scope to partner and give him time to ask questions.\r\nInstall meetings with partner before every planned sprint or release to align on details aand to have the outcome \"first time right\".','undefined','Define scope detailed and think it through before sharing with partner.\r\nA detailed scope for a partners offer helps to reduce unforeseen effort.',157,NULL,'2022-02-25 13:56:49.000000',NULL,1),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','undefined','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1',NULL,NULL,'2022-02-25 13:56:49.000000',NULL,1),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','undefined','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.',NULL,NULL,'2022-02-25 13:56:49.000000',NULL,1),(13,157,1,1,37,NULL,3,2,2,3,2,21,7,5,'Allow partner to start efficiently','Do workshops to explain scope to partner and give him time to ask questions.\r\nInstall meetings with partner before every planned sprint or release to align on details aand to have the outcome \"first time right\".','undefined','Define scope detailed and think it through before sharing with partner.\r\nA detailed scope for a partners offer helps to reduce unforeseen effort.',157,NULL,'2022-02-25 13:57:10.000000',NULL,1),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','undefined','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1',NULL,NULL,'2022-02-25 13:57:10.000000',NULL,1),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Team building','Starting a project is always a difficult situation. Teams and relationships needs to be established. Especially if partnering with an external company. F2F meetings with external partner built more trustful relationship than virtual meetings. Conflicts can be more successfully adressed.\r\nsharing scope with partner when internally alignment took place (interative sessions)','undefined','Plan to get in touch with partner on a personal basis as early as possible in the project. Continue doing so to resolve conflicts.',NULL,NULL,'2022-02-25 13:57:10.000000',NULL,1),(16,157,1,1,37,NULL,3,2,2,3,2,21,7,5,'Allow partner to start efficiently','Do workshops to explain scope to partner and give him time to ask questions.\r\nInstall meetings with partner before every planned sprint or release to align on details aand to have the outcome \"first time right\".','undefined','Define scope detailed and think it through before sharing with partner.\r\nA detailed scope for a partners offer helps to reduce unforeseen effort.',157,NULL,'2022-02-25 13:58:02.000000',NULL,1),(17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Close collaboration with Optware for PO 1.1 simulation','During the feature definition phase of Process Optimization 1.1, Optware (External Vendor), Roche Solutions and RMD-SD team had weekly meetings. This helped to bring everyone to same page, clarify the feature in depth, and answer questions faster. There is still additional simulation work to continue.','undefined','Continue the joint weekly meeting and finish the rest of the work related to PO 1.1',NULL,NULL,'2022-02-25 13:58:02.000000',NULL,1);
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessontype`
--

DROP TABLE IF EXISTS `lessontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessontype` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `CreatedBy` int NOT NULL,
  `UpdatedBy` int NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessontype`
--

LOCK TABLES `lessontype` WRITE;
/*!40000 ALTER TABLE `lessontype` DISABLE KEYS */;
INSERT INTO `lessontype` VALUES (1,'Project','project',1,1,NULL,NULL,1),(2,'Process','pro',1,1,NULL,NULL,1);
/*!40000 ALTER TABLE `lessontype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lifecycle`
--

DROP TABLE IF EXISTS `lifecycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lifecycle` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Indexing` int DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  `UpdatedBy` int NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lifecycle`
--

LOCK TABLES `lifecycle` WRITE;
/*!40000 ALTER TABLE `lifecycle` DISABLE KEYS */;
INSERT INTO `lifecycle` VALUES (4,'Virology','',1,42,42,NULL,NULL,NULL),(5,'Systems (RMD)','',2,42,42,NULL,NULL,NULL),(6,'Blood Screening','',3,42,42,NULL,NULL,NULL),(7,'CxCa','',4,42,42,NULL,NULL,NULL),(8,'Smarticles','',5,42,42,NULL,NULL,NULL),(9,'Microbiology','',6,42,42,NULL,NULL,NULL),(10,'NIPT','',7,42,42,NULL,NULL,NULL),(11,'Sample Prep','',8,42,42,NULL,NULL,NULL),(12,'Informatics','',9,42,42,NULL,NULL,NULL),(13,'RSS Systems','',10,42,42,NULL,NULL,NULL),(14,'Disease Area','',11,42,42,NULL,NULL,NULL),(16,'Liat','',12,42,42,NULL,NULL,NULL),(26,'PCS System Development','',NULL,153,153,NULL,NULL,NULL);
/*!40000 ALTER TABLE `lifecycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mappingbulkimportbulkimporterror`
--

DROP TABLE IF EXISTS `mappingbulkimportbulkimporterror`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mappingbulkimportbulkimporterror` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BulkImportID` int DEFAULT NULL,
  `BulkImportErrorID` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mappingbulkimportbulkimporterror`
--

LOCK TABLES `mappingbulkimportbulkimporterror` WRITE;
/*!40000 ALTER TABLE `mappingbulkimportbulkimporterror` DISABLE KEYS */;
INSERT INTO `mappingbulkimportbulkimporterror` VALUES (1,1,6),(2,1,1),(3,1,2),(4,1,3),(5,1,4),(6,1,5),(7,2,8),(8,2,7),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,3,13),(14,3,14),(15,3,15),(16,3,16),(17,3,17),(18,3,18),(19,4,20),(20,4,19),(21,4,21),(22,4,22),(23,4,23),(24,4,24),(25,5,25),(26,5,26),(27,5,27),(28,5,28),(29,5,29),(30,5,30),(31,6,31),(32,6,32),(33,6,33),(34,6,34),(35,6,35),(36,6,36);
/*!40000 ALTER TABLE `mappingbulkimportbulkimporterror` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mappingfunctiondepartment`
--

DROP TABLE IF EXISTS `mappingfunctiondepartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mappingfunctiondepartment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `LessonID` int DEFAULT NULL,
  `FunctionID` int DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mappingfunctiondepartment`
--

LOCK TABLES `mappingfunctiondepartment` WRITE;
/*!40000 ALTER TABLE `mappingfunctiondepartment` DISABLE KEYS */;
INSERT INTO `mappingfunctiondepartment` VALUES (1,82,1,1,1),(2,83,1,2,1),(3,84,1,3,1),(4,85,2,1,1),(5,87,2,2,1),(6,63,2,4,1);
/*!40000 ALTER TABLE `mappingfunctiondepartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mappinglessonattachment`
--

DROP TABLE IF EXISTS `mappinglessonattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mappinglessonattachment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `LessonID` int DEFAULT NULL,
  `AttachmentID` int DEFAULT NULL,
  `IsEnabled` int DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mappinglessonattachment`
--

LOCK TABLES `mappinglessonattachment` WRITE;
/*!40000 ALTER TABLE `mappinglessonattachment` DISABLE KEYS */;
INSERT INTO `mappinglessonattachment` VALUES (91,852,156,1),(92,906,157,1),(93,907,158,1),(94,992,159,1),(95,1189,160,1),(96,1178,161,1),(99,1198,164,1),(100,1199,165,1),(102,1200,167,1),(104,1201,169,1),(105,1202,170,1),(107,1203,172,1),(108,1204,173,1),(110,1205,175,1),(112,1206,177,1),(114,1207,179,1),(115,1208,180,1),(117,1209,182,1),(119,1210,184,1),(120,1211,185,1),(121,1212,186,1),(122,1213,187,1),(123,1214,188,1),(124,1215,189,1),(125,1216,190,1),(126,1217,191,1),(127,1218,192,1),(129,1219,194,1),(130,1220,195,1),(132,1221,197,1),(134,1222,199,1),(136,1223,201,1),(138,1224,203,1),(140,1225,205,1),(142,1226,207,1),(144,1227,209,1),(146,1228,211,1),(147,1229,212,1),(149,1230,214,1),(151,1231,216,1),(153,1232,218,1),(155,1233,220,1),(157,1234,222,1),(159,1235,224,1),(160,1256,225,1),(161,1257,226,1),(163,1258,228,1),(165,1261,230,1),(167,1262,232,1),(168,1265,233,1),(170,1266,235,1),(172,1267,237,1),(174,1270,239,1),(176,1271,241,1),(178,1275,243,1),(179,1276,244,1),(180,1274,245,1),(181,1279,246,1),(182,1280,247,1),(183,1488,248,1),(184,1489,249,1),(185,1492,250,1),(186,1493,251,1),(187,1494,252,1),(188,1495,253,1),(189,1496,254,1),(190,1497,255,1),(191,1498,256,1),(192,1499,257,1),(193,1513,258,1),(196,1514,261,1),(197,1515,263,1),(198,1525,268,1),(200,1537,271,1),(202,1538,273,1),(204,1545,275,1),(206,1546,277,1),(208,1672,279,1),(210,1673,281,1),(212,1684,283,1),(214,1685,285,1),(215,1690,286,1),(216,1691,287,1),(218,1693,289,1),(220,1694,291,1),(221,1697,292,1),(222,1698,293,1),(224,1701,295,1),(226,1702,297,1),(227,1705,298,1),(228,1706,299,1),(229,1920,300,1),(230,1923,301,1),(231,1924,302,1),(232,1926,303,1),(233,1927,304,1),(234,2033,305,1);
/*!40000 ALTER TABLE `mappinglessonattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mappinglessonkeyword`
--

DROP TABLE IF EXISTS `mappinglessonkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mappinglessonkeyword` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `LessonID` int DEFAULT NULL,
  `KeywordID` int DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mappinglessonkeyword`
--

LOCK TABLES `mappinglessonkeyword` WRITE;
/*!40000 ALTER TABLE `mappinglessonkeyword` DISABLE KEYS */;
INSERT INTO `mappinglessonkeyword` VALUES (11239,1896,428,NULL),(11240,1896,430,NULL),(11241,1896,429,NULL),(11269,1920,360,NULL),(11270,1920,418,NULL),(11271,1923,439,NULL),(11272,1923,440,NULL),(11273,1923,441,NULL),(11274,1923,442,NULL),(11275,1924,443,NULL),(11276,1924,445,NULL),(11277,1924,444,NULL),(11296,1926,441,NULL),(11297,1926,446,NULL),(11298,1926,447,NULL),(11308,1753,360,NULL),(11309,1753,418,NULL),(11310,1929,452,NULL),(11323,1927,450,NULL),(11324,1927,451,NULL),(11325,1934,450,NULL),(11326,1934,453,NULL),(11329,1935,453,NULL),(11330,1935,455,NULL),(11331,1935,454,NULL),(11336,1937,457,NULL),(11337,1936,457,NULL),(11365,1942,463,NULL),(11367,1944,465,NULL),(11368,1945,466,NULL),(11369,1945,467,NULL),(11370,1945,468,NULL),(11371,1946,469,NULL),(11372,1946,470,NULL),(11373,1947,471,NULL),(11374,1947,473,NULL),(11375,1947,472,NULL),(11376,1948,471,NULL),(11377,1948,474,NULL),(11378,1949,475,NULL),(11379,1949,477,NULL),(11380,1949,476,NULL),(11381,1949,476,NULL),(11382,1950,480,NULL),(11383,1950,481,NULL),(11384,1950,479,NULL),(11385,1951,482,NULL),(11386,1951,483,NULL),(11387,1952,485,NULL),(11388,1952,487,NULL),(11389,1952,486,NULL),(11390,1952,484,NULL),(11391,1953,485,NULL),(11392,1953,488,NULL),(11393,1953,489,NULL),(11394,1954,490,NULL),(11395,1954,491,NULL),(11396,1955,466,NULL),(11397,1955,492,NULL),(11398,1956,493,NULL),(11399,1956,494,NULL),(11400,1957,495,NULL),(11401,1957,496,NULL),(11402,1957,497,NULL),(11403,1958,468,NULL),(11404,1958,467,NULL),(11405,1958,435,NULL),(11406,1958,498,NULL),(11407,1958,499,NULL),(11408,1959,500,NULL),(11409,1959,501,NULL),(11410,1959,502,NULL),(11411,1960,500,NULL),(11412,1960,503,NULL),(11413,1960,504,NULL),(11414,1960,505,NULL),(11415,1961,506,NULL),(11416,1962,507,NULL),(11417,1962,508,NULL),(11418,1963,488,NULL),(11419,1963,509,NULL),(11420,1963,511,NULL),(11421,1963,510,NULL),(11422,1964,512,NULL),(11423,1964,513,NULL),(11424,1964,514,NULL),(11425,1965,515,NULL),(11426,1965,516,NULL),(11427,1965,517,NULL),(11428,1966,518,NULL),(11429,1967,512,NULL),(11430,1967,519,NULL),(11431,1968,515,NULL),(11432,1968,517,NULL),(11433,1968,520,NULL),(11434,1969,509,NULL),(11435,1970,435,NULL),(11436,1970,521,NULL),(11437,1970,522,NULL),(11438,1971,360,NULL),(11439,1971,523,NULL),(11440,1971,524,NULL),(11441,1972,526,NULL),(11442,1972,527,NULL),(11443,1972,525,NULL),(11444,1973,469,NULL),(11445,1973,528,NULL),(11446,1973,529,NULL),(11447,1974,471,NULL),(11448,1974,530,NULL),(11449,1974,531,NULL),(11450,1975,532,NULL),(11451,1975,533,NULL),(11452,1976,534,NULL),(11453,1976,535,NULL),(11458,2022,536,NULL),(11460,2032,536,NULL),(11471,2040,536,NULL),(11472,2039,538,NULL),(11473,2039,539,NULL),(11474,2049,538,NULL),(11475,2050,536,NULL),(11476,2049,539,NULL),(11477,2053,536,NULL),(11478,2052,538,NULL),(11479,2052,539,NULL),(11491,2061,536,NULL),(11492,2060,538,NULL),(11493,2060,539,NULL),(11494,2063,536,NULL),(11495,2064,539,NULL),(11496,2064,538,NULL),(11497,2067,536,NULL),(11498,2066,539,NULL),(11499,2066,538,NULL),(11505,2071,536,NULL),(11506,2075,536,NULL),(11507,2083,536,NULL),(11508,2082,539,NULL),(11509,2082,538,NULL),(11510,2093,538,NULL),(11511,2094,536,NULL),(11512,2093,539,NULL),(11513,2098,536,NULL),(11514,2097,539,NULL),(11515,2097,538,NULL),(11516,2102,538,NULL),(11517,2102,539,NULL),(11518,2103,536,NULL),(11519,2108,538,NULL),(11520,2108,539,NULL),(11521,2109,536,NULL),(11522,2116,536,NULL),(11523,2115,538,NULL),(11524,2115,539,NULL),(11525,2122,539,NULL),(11526,2122,538,NULL),(11527,2123,536,NULL),(11528,2130,536,NULL),(11529,2129,539,NULL),(11530,2129,538,NULL),(11531,2136,545,NULL),(11532,2136,546,NULL),(11533,2138,536,NULL),(11534,2145,545,NULL),(11535,2137,539,NULL),(11536,2137,538,NULL),(11537,2145,546,NULL),(11538,2150,536,NULL),(11539,2149,539,NULL),(11540,2149,538,NULL),(11541,2157,545,NULL),(11542,2157,546,NULL),(11543,2159,538,NULL),(11544,2166,546,NULL),(11545,2166,545,NULL),(11546,2160,536,NULL),(11547,2159,539,NULL),(11548,2171,538,NULL),(11549,2171,539,NULL),(11550,2172,536,NULL),(11551,2178,545,NULL),(11552,2178,546,NULL),(11553,2182,536,NULL),(11554,2181,539,NULL),(11555,2181,538,NULL),(11556,2188,545,NULL),(11557,2188,546,NULL),(11558,2191,539,NULL),(11559,2191,538,NULL),(11560,2192,536,NULL),(11561,2199,546,NULL),(11562,2199,545,NULL),(11563,2201,538,NULL),(11564,2202,536,NULL),(11565,2201,539,NULL),(11566,2208,545,NULL),(11567,2208,546,NULL),(11568,2211,538,NULL),(11569,2211,539,NULL),(11570,2218,546,NULL),(11571,2218,545,NULL),(11572,2212,536,NULL),(11573,2221,538,NULL),(11574,2221,539,NULL),(11575,2222,536,NULL),(11576,2228,546,NULL),(11577,2228,545,NULL),(11578,2234,536,NULL),(11579,2233,538,NULL),(11580,2233,539,NULL),(11581,2240,546,NULL),(11582,2240,545,NULL),(11583,2246,540,NULL),(11584,2248,536,NULL),(11585,2254,545,NULL),(11586,2254,546,NULL),(11587,2247,539,NULL),(11588,2247,538,NULL),(11589,2261,536,NULL),(11590,2260,539,NULL),(11591,2260,538,NULL),(11592,2267,545,NULL),(11593,2267,546,NULL),(11594,2273,538,NULL),(11595,2274,535,NULL),(11596,2275,536,NULL),(11597,2283,545,NULL),(11598,2283,546,NULL),(11599,2290,536,NULL),(11600,2289,538,NULL),(11601,2289,539,NULL),(11602,2295,545,NULL),(11603,2295,546,NULL),(11604,2302,536,NULL),(11605,2307,545,NULL),(11606,2307,546,NULL),(11607,2303,538,NULL),(11608,2303,539,NULL),(11609,2314,536,NULL),(11610,2313,539,NULL),(11611,2313,538,NULL),(11612,2318,435,NULL),(11613,2317,435,NULL),(11614,2319,435,NULL),(11615,2320,545,NULL),(11616,2318,547,NULL),(11617,2320,546,NULL),(11618,2317,550,NULL),(11619,2322,549,NULL),(11620,2321,553,NULL),(11621,2322,548,NULL),(11622,2317,551,NULL),(11623,2321,555,NULL),(11624,2321,552,NULL),(11625,2319,556,NULL),(11626,2319,554,NULL),(11627,2327,536,NULL),(11628,2331,435,NULL),(11629,2326,539,NULL),(11630,2331,547,NULL),(11631,2326,538,NULL),(11632,2334,553,NULL),(11633,2334,552,NULL),(11634,2334,555,NULL),(11635,2333,546,NULL),(11636,2332,435,NULL),(11637,2330,435,NULL),(11638,2335,549,NULL),(11639,2332,554,NULL),(11640,2333,545,NULL),(11641,2330,551,NULL),(11642,2330,550,NULL),(11643,2335,548,NULL),(11644,2332,556,NULL),(11645,2340,536,NULL),(11646,2339,538,NULL),(11647,2339,539,NULL),(11648,2344,435,NULL),(11649,2345,554,NULL),(11650,2345,556,NULL),(11651,2343,550,NULL),(11652,2346,545,NULL),(11653,2341,543,NULL),(11654,2341,541,NULL),(11655,2344,547,NULL),(11656,2348,548,NULL),(11657,2343,551,NULL),(11658,2347,555,NULL),(11659,2343,435,NULL),(11660,2347,552,NULL),(11661,2346,546,NULL),(11662,2341,544,NULL),(11663,2345,435,NULL),(11664,2341,559,NULL),(11665,2342,558,NULL),(11666,2342,557,NULL),(11667,2347,553,NULL),(11668,2348,549,NULL),(11669,2352,536,NULL),(11670,2360,548,NULL),(11671,2360,549,NULL),(11672,2353,543,NULL),(11673,2353,541,NULL),(11674,2354,558,NULL),(11675,2353,544,NULL),(11676,2359,555,NULL),(11677,2351,538,NULL),(11678,2359,553,NULL),(11679,2353,559,NULL),(11680,2356,435,NULL),(11681,2355,435,NULL),(11682,2362,560,NULL),(11683,2351,539,NULL),(11684,2362,562,NULL),(11685,2359,552,NULL),(11686,2355,551,NULL),(11687,2362,563,NULL),(11688,2356,547,NULL),(11689,2358,545,NULL),(11690,2358,546,NULL),(11691,2354,557,NULL),(11692,2355,550,NULL),(11693,2362,561,NULL),(11694,2357,435,NULL),(11695,2357,554,NULL),(11696,2361,513,NULL),(11697,2361,564,NULL),(11698,2357,556,NULL),(11699,2361,566,NULL),(11700,2361,565,NULL),(11701,2364,536,NULL),(11702,2366,557,NULL),(11703,2363,538,NULL),(11704,2366,558,NULL),(11705,2363,539,NULL),(11706,2365,541,NULL),(11707,2365,559,NULL),(11708,2365,543,NULL),(11709,2367,551,NULL),(11710,2372,548,NULL),(11711,2372,549,NULL),(11712,2369,435,NULL),(11713,2370,546,NULL),(11714,2371,553,NULL),(11715,2365,544,NULL),(11716,2370,545,NULL),(11717,2367,435,NULL),(11718,2369,554,NULL),(11719,2371,555,NULL),(11720,2367,550,NULL),(11721,2368,547,NULL),(11722,2368,435,NULL),(11723,2374,561,NULL),(11724,2373,564,NULL),(11725,2371,552,NULL),(11726,2373,566,NULL),(11727,2373,513,NULL),(11728,2374,563,NULL),(11729,2369,556,NULL),(11730,2374,560,NULL),(11731,2374,562,NULL),(11732,2373,565,NULL),(11733,2375,536,NULL),(11734,2386,561,NULL),(11735,2386,562,NULL),(11736,2386,560,NULL),(11737,2386,563,NULL),(11738,2380,539,NULL),(11739,2380,538,NULL),(11740,2384,549,NULL),(11741,2383,555,NULL),(11742,2384,548,NULL),(11743,2383,553,NULL),(11744,2383,552,NULL),(11745,2381,435,NULL),(11746,2378,550,NULL),(11747,2377,558,NULL),(11748,2382,545,NULL),(11749,2382,546,NULL),(11750,2376,543,NULL),(11751,2378,551,NULL),(11752,2376,541,NULL),(11753,2381,556,NULL),(11754,2376,544,NULL),(11755,2381,554,NULL),(11756,2377,557,NULL),(11757,2376,559,NULL),(11758,2378,435,NULL),(11759,2379,547,NULL),(11760,2379,435,NULL),(11761,2385,565,NULL),(11762,2385,513,NULL),(11763,2385,564,NULL),(11764,2385,566,NULL),(11765,2388,536,NULL),(11766,2399,561,NULL),(11767,2399,562,NULL),(11768,2399,560,NULL),(11769,2391,551,NULL),(11770,2391,550,NULL),(11771,2391,435,NULL),(11772,2399,563,NULL),(11773,2401,536,NULL),(11774,2409,568,NULL),(11775,2409,571,NULL),(11776,2409,567,NULL),(11777,2409,570,NULL),(11778,2409,569,NULL),(11779,2412,562,NULL),(11780,2412,561,NULL),(11781,2412,560,NULL),(11782,2412,563,NULL),(11783,2400,538,NULL),(11784,2400,539,NULL),(11785,2402,541,NULL),(11786,2403,557,NULL),(11787,2402,544,NULL),(11788,2402,543,NULL),(11789,2403,558,NULL),(11790,2414,536,NULL),(11791,2413,538,NULL),(11792,2413,539,NULL),(11793,2421,567,NULL),(11794,2421,569,NULL),(11795,2421,568,NULL),(11796,2421,570,NULL),(11797,2421,571,NULL),(11798,2415,541,NULL),(11799,2415,559,NULL),(11800,2415,543,NULL),(11801,2415,544,NULL),(11802,2416,557,NULL),(11803,2416,558,NULL),(11804,2417,435,NULL),(11805,2418,547,NULL),(11806,2419,552,NULL),(11807,2418,435,NULL),(11808,2419,553,NULL),(11809,2417,551,NULL),(11810,2417,550,NULL),(11811,2419,555,NULL),(11812,2422,435,NULL),(11813,2420,545,NULL),(11814,2425,561,NULL),(11815,2425,563,NULL),(11816,2422,556,NULL),(11817,2422,554,NULL),(11818,2420,546,NULL),(11819,2425,560,NULL),(11820,2424,549,NULL),(11821,2425,562,NULL),(11822,2423,513,NULL),(11823,2423,566,NULL),(11824,2424,548,NULL),(11825,2423,565,NULL),(11826,2423,564,NULL),(11827,2427,536,NULL),(11828,2436,567,NULL),(11829,2436,568,NULL),(11830,2436,569,NULL),(11831,2436,570,NULL),(11832,2436,571,NULL),(11833,2426,538,NULL),(11834,2426,539,NULL),(11835,2431,435,NULL),(11836,2428,559,NULL),(11837,2428,543,NULL),(11838,2428,541,NULL),(11839,2431,547,NULL),(11840,2428,544,NULL),(11841,2432,556,NULL),(11842,2433,545,NULL),(11843,2433,546,NULL),(11844,2432,435,NULL),(11845,2434,553,NULL),(11846,2434,552,NULL),(11847,2435,548,NULL),(11848,2434,555,NULL),(11849,2430,435,NULL),(11850,2432,554,NULL),(11851,2430,550,NULL),(11852,2435,549,NULL),(11853,2430,551,NULL),(11854,2429,557,NULL),(11855,2438,560,NULL),(11856,2437,513,NULL),(11857,2429,558,NULL),(11858,2438,561,NULL),(11859,2438,563,NULL),(11860,2438,562,NULL),(11861,2437,566,NULL),(11862,2437,565,NULL),(11863,2437,564,NULL),(11864,2440,536,NULL),(11865,2442,557,NULL),(11866,2442,558,NULL),(11867,2439,539,NULL),(11868,2443,435,NULL),(11869,2439,538,NULL),(11870,2447,552,NULL),(11871,2448,549,NULL),(11872,2447,555,NULL),(11873,2443,550,NULL),(11874,2441,543,NULL),(11875,2441,559,NULL),(11876,2445,554,NULL),(11877,2441,544,NULL),(11878,2446,545,NULL),(11879,2441,541,NULL),(11880,2446,546,NULL),(11881,2443,551,NULL),(11882,2445,556,NULL),(11883,2447,553,NULL),(11884,2444,547,NULL),(11885,2450,513,NULL),(11886,2444,435,NULL),(11887,2450,564,NULL),(11888,2450,565,NULL),(11889,2450,566,NULL),(11890,2445,435,NULL),(11891,2451,560,NULL),(11892,2448,548,NULL),(11893,2449,569,NULL),(11894,2449,567,NULL),(11895,2451,562,NULL),(11896,2451,561,NULL),(11897,2451,563,NULL),(11898,2449,568,NULL),(11899,2449,571,NULL),(11900,2449,570,NULL),(11926,13,562,NULL),(11928,13,561,NULL),(11931,13,563,NULL),(11933,13,560,NULL),(11943,22,555,NULL),(11944,22,553,NULL),(11945,19,435,NULL),(11946,22,552,NULL),(11949,16,541,NULL),(11950,16,544,NULL),(11951,16,543,NULL),(11952,16,559,NULL),(11954,21,545,NULL),(11956,21,546,NULL),(11957,19,547,NULL),(11958,25,513,NULL),(11959,23,549,NULL),(11961,25,566,NULL),(11965,25,564,NULL),(11967,25,565,NULL),(11968,23,548,NULL),(11975,28,536,NULL),(11976,29,541,NULL),(11977,29,543,NULL),(11978,29,559,NULL),(11979,29,544,NULL),(11980,27,538,NULL),(11981,31,435,NULL),(11982,30,558,NULL),(11983,27,539,NULL),(11984,37,566,NULL),(11985,31,550,NULL),(11986,36,548,NULL),(11987,34,546,NULL),(11988,30,557,NULL),(11989,31,551,NULL),(11990,34,545,NULL),(11991,37,564,NULL),(11992,38,563,NULL),(11993,35,555,NULL),(11994,38,560,NULL),(11995,35,552,NULL),(11996,36,549,NULL),(11997,37,565,NULL),(11998,32,435,NULL),(11999,32,547,NULL),(12000,37,513,NULL),(12001,38,561,NULL),(12002,35,553,NULL),(12003,38,562,NULL),(12004,33,554,NULL),(12005,39,568,NULL),(12006,39,569,NULL),(12007,33,435,NULL),(12008,39,571,NULL),(12009,39,570,NULL),(12010,39,567,NULL),(12011,33,556,NULL),(12014,13,513,NULL),(12016,13,564,NULL),(12018,13,565,NULL),(12019,13,566,NULL),(12049,13,568,NULL),(12051,16,548,NULL),(12052,16,549,NULL),(12053,13,567,NULL),(12055,13,570,NULL),(12063,13,571,NULL),(12067,13,569,NULL),(12073,22,435,NULL),(12074,22,547,NULL),(12075,19,543,NULL),(12076,19,541,NULL),(12077,19,544,NULL),(12078,19,559,NULL),(12081,21,550,NULL),(12082,21,435,NULL),(12083,23,567,NULL),(12084,23,569,NULL),(12085,23,568,NULL),(12086,21,551,NULL),(12087,29,552,NULL),(12088,27,556,NULL),(12089,29,555,NULL),(12090,23,571,NULL),(12092,27,435,NULL),(12093,29,553,NULL),(12094,27,554,NULL),(12095,23,570,NULL),(12097,28,546,NULL),(12098,28,545,NULL),(12099,31,536,NULL),(12100,35,435,NULL),(12101,30,539,NULL),(12102,30,538,NULL),(12103,32,541,NULL),(12104,32,543,NULL),(12105,32,544,NULL),(12106,32,559,NULL),(12107,34,550,NULL),(12108,35,547,NULL),(12109,34,435,NULL),(12110,33,558,NULL),(12111,38,555,NULL),(12112,41,548,NULL),(12113,41,549,NULL),(12114,36,435,NULL),(12115,36,556,NULL),(12116,36,554,NULL),(12117,33,557,NULL),(12118,37,545,NULL),(12119,38,553,NULL),(12120,38,552,NULL),(12121,34,551,NULL),(12122,42,561,NULL),(12123,42,562,NULL),(12124,40,566,NULL),(12125,40,513,NULL),(12126,37,546,NULL),(12127,40,564,NULL),(12128,40,565,NULL),(12129,42,560,NULL),(12130,42,563,NULL),(12131,44,536,NULL),(12190,21,554,NULL),(12191,21,556,NULL),(12192,23,555,NULL),(12193,23,553,NULL),(12194,23,552,NULL),(12195,25,548,NULL),(12196,25,549,NULL),(12197,22,546,NULL),(12198,24,513,NULL),(12199,24,566,NULL),(12200,24,564,NULL),(12201,24,565,NULL),(12202,22,545,NULL),(12205,13,538,NULL),(12206,13,539,NULL),(12209,4,538,NULL),(12210,4,539,NULL),(12213,10,539,NULL),(12214,10,538,NULL),(12215,3,538,NULL),(12216,3,539,NULL),(12217,7,538,NULL),(12218,7,539,NULL),(12219,16,538,NULL),(12220,16,539,NULL);
/*!40000 ALTER TABLE `mappinglessonkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mappingprojectmilestone`
--

DROP TABLE IF EXISTS `mappingprojectmilestone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mappingprojectmilestone` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ProjectID` int DEFAULT NULL,
  `MilestoneID` int DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mappingprojectmilestone`
--

LOCK TABLES `mappingprojectmilestone` WRITE;
/*!40000 ALTER TABLE `mappingprojectmilestone` DISABLE KEYS */;
INSERT INTO `mappingprojectmilestone` VALUES (1,1,1,NULL),(2,2,2,NULL),(3,3,3,NULL),(4,4,4,NULL),(5,5,5,NULL),(6,6,6,NULL),(7,1,7,NULL),(8,2,8,NULL),(9,3,9,NULL),(10,4,10,NULL),(11,5,11,NULL),(12,6,12,NULL),(13,2,13,NULL),(14,3,14,NULL);
/*!40000 ALTER TABLE `mappingprojectmilestone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mappingprojectphase`
--

DROP TABLE IF EXISTS `mappingprojectphase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mappingprojectphase` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ProjecttypeID` int DEFAULT NULL,
  `PhaseID` int DEFAULT NULL,
  `Indexing` int DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mappingprojectphase`
--

LOCK TABLES `mappingprojectphase` WRITE;
/*!40000 ALTER TABLE `mappingprojectphase` DISABLE KEYS */;
INSERT INTO `mappingprojectphase` VALUES (1,1,5,2,1),(2,1,1,1,1),(3,1,3,3,1),(4,1,2,5,1),(5,1,4,4,1),(6,1,6,0,1),(7,2,5,NULL,1),(8,2,1,NULL,1),(9,2,3,NULL,1),(10,2,2,NULL,1),(11,2,4,NULL,1),(12,2,6,NULL,1),(13,3,7,NULL,1),(14,3,1,NULL,1),(15,3,12,NULL,1),(16,3,4,NULL,1),(17,4,8,1,1),(18,4,9,0,1),(19,5,10,NULL,1),(20,5,11,NULL,1),(21,14,13,NULL,NULL),(22,20,14,NULL,NULL),(23,21,15,NULL,NULL),(24,22,16,NULL,NULL),(25,23,17,NULL,NULL),(26,12,32,NULL,NULL),(27,13,33,NULL,NULL),(28,16,34,NULL,NULL),(29,17,35,NULL,NULL),(30,1,36,NULL,NULL),(31,21,37,NULL,NULL),(32,1,38,NULL,NULL);
/*!40000 ALTER TABLE `mappingprojectphase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mappingprojectprojecttype`
--

DROP TABLE IF EXISTS `mappingprojectprojecttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mappingprojectprojecttype` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ProjectID` int NOT NULL,
  `ProjecttypeID` int NOT NULL,
  `Indexing` int DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mappingprojectprojecttype`
--

LOCK TABLES `mappingprojectprojecttype` WRITE;
/*!40000 ALTER TABLE `mappingprojectprojecttype` DISABLE KEYS */;
INSERT INTO `mappingprojectprojecttype` VALUES (1,1,1,3,1),(2,2,1,6,1),(3,3,1,7,1),(4,4,1,5,1),(5,5,2,1,1),(6,6,1,4,1),(7,7,2,3,1),(8,8,2,2,1),(9,9,2,1,1),(10,19,7,1,NULL),(11,9,1,NULL,NULL),(12,10,1,NULL,NULL),(13,11,14,NULL,NULL),(14,12,15,NULL,NULL),(15,13,16,NULL,NULL),(16,14,20,NULL,NULL),(17,15,21,NULL,NULL),(18,16,22,NULL,NULL),(19,17,23,NULL,NULL),(20,23,10,NULL,NULL),(21,24,10,NULL,NULL),(22,25,10,NULL,NULL),(23,26,10,1,NULL),(24,27,10,NULL,NULL),(25,28,12,NULL,NULL),(26,29,13,NULL,NULL),(27,30,15,NULL,NULL),(28,31,16,NULL,NULL),(29,32,17,NULL,NULL),(30,33,1,NULL,NULL),(31,34,21,NULL,NULL),(32,35,3,NULL,NULL),(33,36,1,NULL,NULL),(34,37,1,NULL,NULL);
/*!40000 ALTER TABLE `mappingprojectprojecttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mappingprojecttypemilestones`
--

DROP TABLE IF EXISTS `mappingprojecttypemilestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mappingprojecttypemilestones` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ProjecttypeID` int DEFAULT NULL,
  `MilestoneID` int DEFAULT NULL,
  `Indexing` int DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mappingprojecttypemilestones`
--

LOCK TABLES `mappingprojecttypemilestones` WRITE;
/*!40000 ALTER TABLE `mappingprojecttypemilestones` DISABLE KEYS */;
INSERT INTO `mappingprojecttypemilestones` VALUES (1,1,1,0,1),(2,1,2,2,1),(3,1,3,3,1),(4,1,4,4,1),(5,1,5,5,1),(6,1,6,6,1),(7,2,1,NULL,1),(8,2,2,NULL,1),(9,2,3,NULL,1),(10,2,4,NULL,1),(11,2,5,NULL,1),(12,2,6,NULL,1),(13,3,1,NULL,1),(14,3,7,NULL,1),(15,3,8,NULL,1),(16,3,9,NULL,1),(17,3,6,NULL,1),(18,4,1,1,1),(19,4,10,2,1),(20,4,11,3,1),(21,4,12,4,1),(22,5,13,NULL,1),(23,5,14,NULL,1),(24,5,15,NULL,1),(25,14,16,NULL,NULL),(26,21,17,NULL,NULL),(27,22,18,NULL,NULL),(28,23,19,NULL,NULL),(29,NULL,NULL,NULL,NULL),(30,NULL,NULL,NULL,NULL),(31,NULL,NULL,NULL,NULL),(32,NULL,NULL,NULL,NULL),(33,NULL,NULL,NULL,NULL),(34,NULL,NULL,NULL,NULL),(35,NULL,NULL,NULL,NULL),(36,NULL,NULL,NULL,NULL),(37,NULL,NULL,NULL,NULL),(38,NULL,NULL,NULL,NULL),(39,NULL,NULL,NULL,NULL),(40,NULL,NULL,NULL,NULL),(41,1,53,1,NULL),(42,5,54,NULL,NULL),(43,4,55,0,NULL),(44,21,56,NULL,NULL),(45,3,57,NULL,NULL),(46,3,58,NULL,NULL);
/*!40000 ALTER TABLE `mappingprojecttypemilestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mappinguserrole`
--

DROP TABLE IF EXISTS `mappinguserrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mappinguserrole` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `RoleID` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mappinguserrole`
--

LOCK TABLES `mappinguserrole` WRITE;
/*!40000 ALTER TABLE `mappinguserrole` DISABLE KEYS */;
INSERT INTO `mappinguserrole` VALUES (9,13,3),(11,15,3),(12,16,3),(13,17,3),(16,20,0),(17,21,0),(18,22,0),(19,23,0),(20,24,0),(21,25,1),(22,26,1),(23,27,3),(24,28,0),(25,29,0),(26,30,1),(27,31,1),(28,32,1),(29,33,1),(30,34,1),(37,41,1),(38,42,1),(40,44,1),(42,46,1),(43,47,1),(44,48,1),(45,49,2),(46,50,1),(47,51,1),(48,52,1),(77,81,1),(99,103,1),(102,106,1),(108,112,1),(109,113,2),(110,114,1),(111,115,1),(118,122,1),(119,123,2),(120,124,2),(121,125,2),(126,130,1),(127,131,3),(131,135,2),(132,136,2),(133,137,3),(134,138,2),(135,139,3),(136,140,3),(137,141,2),(138,142,2),(139,143,2),(140,144,2),(141,145,3),(142,146,3),(143,147,2),(144,148,2),(145,149,1),(146,150,2),(147,151,1),(148,152,2),(149,153,1),(150,154,2),(151,155,1),(152,156,1),(153,157,1),(154,158,2),(155,159,2),(156,160,3),(157,161,3),(158,162,3),(159,163,3),(160,164,3),(161,165,3),(162,166,3),(163,167,3),(164,168,2),(165,169,2),(173,177,1),(179,186,2);
/*!40000 ALTER TABLE `mappinguserrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestone`
--

DROP TABLE IF EXISTS `milestone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `milestone` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Indexing` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `UpdatedBy` int DEFAULT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestone`
--

LOCK TABLES `milestone` WRITE;
/*!40000 ALTER TABLE `milestone` DISABLE KEYS */;
INSERT INTO `milestone` VALUES (1,'Project Start','Project Start',NULL,NULL,NULL,NULL,NULL,1),(2,'Milestone DG','Milestone DG',NULL,NULL,NULL,NULL,NULL,1),(3,'Milestone DI','Milestone DI',NULL,NULL,NULL,NULL,NULL,1),(4,'Milestone DO','Milestone DO',NULL,NULL,NULL,NULL,NULL,1),(5,'Milestone LD','Milestone LD',NULL,NULL,NULL,NULL,NULL,1),(6,'Post Launch Review or Post Market Surveillance','Post Launch Review or Post Market Surveillance',NULL,NULL,NULL,NULL,NULL,1),(7,'Program Output 1 (PO1)','Program Output 1 (PO1)',NULL,NULL,NULL,NULL,NULL,1),(8,'Program Output 2 (PO2)','Program Output 2 (PO2)',NULL,NULL,NULL,NULL,NULL,1),(9,'Program Launch','Program Launch',NULL,NULL,NULL,NULL,NULL,1),(10,'Stage 1 Approval','Stage 1 Approval',NULL,NULL,NULL,NULL,NULL,1),(11,'Stage 2 Approval','Stage 2 Approval',NULL,NULL,NULL,NULL,NULL,1),(12,'IA/EUA Approval','IA/EUA Approval',NULL,NULL,NULL,NULL,NULL,1),(13,'Category A','Category A',NULL,NULL,NULL,NULL,NULL,1),(14,'Category B','Category B',NULL,NULL,NULL,NULL,NULL,1),(15,'Category C','Category C',NULL,NULL,NULL,NULL,NULL,1),(57,'Program Increment Review','',NULL,47,47,NULL,NULL,NULL),(58,'Program Increment Planning','',NULL,47,47,NULL,NULL,NULL);
/*!40000 ALTER TABLE `milestone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `ProjectTypeID` int DEFAULT NULL,
  `ProjectID` int DEFAULT NULL,
  `ProcessID` int DEFAULT NULL,
  `PhaseID` int DEFAULT NULL,
  `ImpactCategoryID` int DEFAULT NULL,
  `ImpactLevelID` int DEFAULT NULL,
  `MilestoneID` int DEFAULT NULL,
  `FunctionID` int DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  `LifeCycleID` int DEFAULT NULL,
  `Frequency` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `UpdatedBy` int DEFAULT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (2,5,1,2,NULL,1,0,2,4,4,28,2,3,5,NULL,'2021-01-11 10:42:20.000000',NULL,1),(3,79,1,1,NULL,6,2,1,1,9,18,1,1,79,NULL,'2021-01-20 05:14:39.000000',NULL,1),(4,5,1,10,0,1,3,4,2,9,11,1,1,5,NULL,'2021-01-21 05:48:39.000000',NULL,1),(5,42,1,0,0,1,0,0,0,0,0,0,1,42,NULL,'2021-01-21 09:34:37.000000',NULL,1),(44,44,1,1,0,3,0,0,1,0,11,2,2,44,NULL,'2021-02-08 06:21:43.000000','2021-02-08 06:21:59.000000',1),(45,44,0,0,1,0,1,2,0,13,0,2,1,44,NULL,'2021-02-08 06:22:29.000000',NULL,1),(48,42,1,10,0,6,1,1,1,3,18,4,1,42,NULL,'2021-02-19 22:49:23.000000',NULL,1),(49,42,1,10,0,6,1,1,1,3,18,4,1,42,NULL,'2021-02-19 22:49:27.000000',NULL,1),(50,42,1,10,0,6,1,1,1,3,18,4,1,42,NULL,'2021-02-19 22:49:30.000000',NULL,1),(52,42,1,10,0,6,1,1,1,3,18,4,1,42,NULL,'2021-02-19 22:49:31.000000',NULL,1),(55,42,1,10,0,6,1,1,1,3,18,4,1,42,NULL,'2021-02-19 22:49:32.000000',NULL,1),(78,42,2,5,0,5,1,1,1,3,18,4,1,42,NULL,'2021-02-19 22:53:19.000000',NULL,1),(79,44,1,3,0,5,1,1,3,3,18,3,1,44,NULL,'2021-02-23 07:40:57.000000','2021-02-23 07:42:05.000000',1),(80,41,1,3,0,5,1,1,3,3,18,3,1,41,NULL,'2021-02-23 07:42:47.000000',NULL,1),(83,5,1,10,0,6,1,1,1,3,18,3,1,5,NULL,'2021-02-23 12:07:24.000000',NULL,1),(84,42,1,1,0,6,2,1,1,9,5,6,1,42,NULL,'2021-02-23 13:20:46.000000',NULL,1),(90,52,1,2,0,1,1,1,2,3,6,4,1,52,NULL,'2021-02-24 08:11:27.000000',NULL,1),(91,52,2,5,0,5,0,0,0,0,0,0,1,52,NULL,'2021-02-24 08:18:02.000000',NULL,1),(92,52,0,0,1,0,3,1,0,3,18,4,1,52,NULL,'2021-02-24 08:20:00.000000',NULL,1),(93,52,0,0,3,0,0,0,0,0,0,6,1,52,NULL,'2021-02-24 08:22:54.000000',NULL,1),(95,42,1,10,0,0,1,1,0,9,12,6,1,42,NULL,'2021-02-25 12:00:20.000000','2021-02-25 12:00:40.000000',1),(98,5,0,0,0,0,0,0,0,0,0,0,1,5,NULL,'2021-03-01 12:37:03.000000',NULL,1),(99,127,1,1,0,5,3,3,2,20,1,10,1,127,NULL,'2021-03-02 13:03:27.000000',NULL,1),(100,127,1,1,0,5,3,3,2,20,1,10,1,127,NULL,'2021-03-02 13:11:26.000000',NULL,1),(101,127,1,1,0,5,3,3,2,20,1,10,1,127,NULL,'2021-03-02 13:21:30.000000',NULL,1),(102,127,2,5,0,1,2,1,5,29,20,16,2,127,NULL,'2021-03-02 13:26:15.000000','2021-03-02 13:26:31.000000',1),(103,127,1,1,0,1,1,0,3,21,16,4,1,127,NULL,'2021-03-02 13:29:26.000000','2021-03-02 13:42:50.000000',1),(104,127,1,1,0,5,3,3,2,20,1,10,1,127,NULL,'2021-03-02 13:34:43.000000',NULL,1),(105,127,1,1,0,5,3,3,2,20,1,10,1,127,NULL,'2021-03-02 13:39:17.000000',NULL,1),(107,52,0,0,1,0,0,0,0,0,0,0,2,52,NULL,'2021-03-10 06:14:13.000000',NULL,1),(108,52,0,0,1,0,0,0,0,0,0,0,3,52,NULL,'2021-03-10 06:14:45.000000',NULL,1),(109,52,21,34,0,37,1,0,56,0,0,0,1,52,NULL,'2021-03-23 07:27:18.000000',NULL,1),(110,153,0,0,0,0,0,0,0,0,0,0,2,153,NULL,'2021-11-08 00:18:31.000000',NULL,1);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationrepeat`
--

DROP TABLE IF EXISTS `notificationrepeat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificationrepeat` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationrepeat`
--

LOCK TABLES `notificationrepeat` WRITE;
/*!40000 ALTER TABLE `notificationrepeat` DISABLE KEYS */;
INSERT INTO `notificationrepeat` VALUES (1,'Daily'),(2,'Weekly'),(3,'Monthly');
/*!40000 ALTER TABLE `notificationrepeat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `originatingsite`
--

DROP TABLE IF EXISTS `originatingsite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `originatingsite` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `CreatedBy` int NOT NULL,
  `UpdatedBy` int NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `originatingsite`
--

LOCK TABLES `originatingsite` WRITE;
/*!40000 ALTER TABLE `originatingsite` DISABLE KEYS */;
INSERT INTO `originatingsite` VALUES (1,'originatingsite1','os',1,1,NULL,NULL,NULL),(2,'originatingsite2','os',1,1,NULL,NULL,NULL),(3,'originatingsite3','os',1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `originatingsite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owningarea`
--

DROP TABLE IF EXISTS `owningarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owningarea` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `CreatedBy` int NOT NULL,
  `UpdatedBy` int NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owningarea`
--

LOCK TABLES `owningarea` WRITE;
/*!40000 ALTER TABLE `owningarea` DISABLE KEYS */;
INSERT INTO `owningarea` VALUES (1,'Owning Area1','dd',1,1,NULL,NULL,NULL),(2,'Owning Area2','ss',1,1,NULL,NULL,NULL),(3,'Owning Area3','ss',1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `owningarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phase`
--

DROP TABLE IF EXISTS `phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phase` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Indexing` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `UpdatedBy` int DEFAULT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phase`
--

LOCK TABLES `phase` WRITE;
/*!40000 ALTER TABLE `phase` DISABLE KEYS */;
INSERT INTO `phase` VALUES (1,'PI Planning','Analysis',NULL,NULL,NULL,NULL,NULL,1),(2,'Development Phase','Development',NULL,NULL,NULL,NULL,NULL,1),(3,'Feasibility Phase','Feasibility',NULL,NULL,NULL,NULL,NULL,1),(4,'Verification & Validation','Implementation',NULL,NULL,NULL,NULL,NULL,1),(5,'Pre-DCC','Pre-DCC',NULL,NULL,NULL,NULL,NULL,1),(6,'Routine Manufacturing and Sales','Routine Manufacturing and Sales',NULL,NULL,NULL,NULL,NULL,1),(7,'Project Start','Program Initiation',NULL,NULL,NULL,NULL,NULL,1),(8,'Stage 1','Stage 1',NULL,NULL,NULL,NULL,NULL,1),(9,'Stage 2','Stage 2',NULL,NULL,NULL,NULL,NULL,1),(10,'Build ','Build ',NULL,NULL,NULL,NULL,NULL,1),(11,'Implement','Implement',NULL,NULL,NULL,NULL,NULL,1),(12,'Active Development','Feasibility and Development',NULL,NULL,NULL,NULL,NULL,1),(38,'Analysis Phase','',NULL,157,157,NULL,NULL,NULL);
/*!40000 ALTER TABLE `phase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process`
--

DROP TABLE IF EXISTS `process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `process` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Indexing` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `UpdatedBy` int DEFAULT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process`
--

LOCK TABLES `process` WRITE;
/*!40000 ALTER TABLE `process` DISABLE KEYS */;
INSERT INTO `process` VALUES (74,'Contract Manufacturing Development','',2,42,42,NULL,NULL,NULL),(80,'Packaging cell line transfer from Research','Transfer of Reference Cell Banks to RMSCC/BSM and Master Cell Banks to BBG',1,142,142,NULL,NULL,NULL),(81,'Agile Increment Scheduling','',NULL,106,106,NULL,NULL,NULL),(82,'Agile Documentation Across Versions and Regulatory Statuses','',NULL,106,106,NULL,NULL,NULL),(83,'Process1','',NULL,153,153,NULL,NULL,NULL);
/*!40000 ALTER TABLE `process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `LPN` varchar(50) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `Indexing` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `UpdatedBy` int DEFAULT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'cobas 6800 8800 Babesia Whole Blood','04699.01','cobas 6800 8800 Babesia Whole Blood',NULL,NULL,NULL,NULL,NULL,1),(2,'cobas 6800 8800 EBV','02198.03','cobas 6800 8800 EBV',NULL,NULL,NULL,NULL,NULL,1),(3,'cobas 6800 8800 BK','04543.01','cobas 6800 8800 BK',NULL,NULL,NULL,NULL,NULL,1),(4,'TaqScreen MPX v2 Dual Target','00450.09','shotgunPETE',NULL,NULL,NULL,NULL,NULL,1),(5,'shotgunPETE','04779.02','MPX version 2.5',NULL,NULL,NULL,NULL,NULL,1),(6,'Smarticles vivoDx MRSA','04295.01','Smarticles vivoDx MRSA',NULL,NULL,NULL,NULL,NULL,1),(10,'vivoDx MRSA','3879.05','Smarticle LCT - MRSA project',NULL,46,46,NULL,NULL,NULL),(30,'HR Workshop','7656','',NULL,42,42,NULL,NULL,NULL),(33,'vivoDx CRE','4344.01','',NULL,46,46,NULL,NULL,NULL),(35,'AVENIO Connect','4774.01','',NULL,47,47,NULL,NULL,NULL),(36,'STING/cobas 5800','3378.33','STING -cobas low volume solution - cobas 5800',NULL,150,150,NULL,NULL,NULL),(37,'cobas prime SW 1.1','12345','',NULL,153,153,NULL,NULL,NULL);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projecttype`
--

DROP TABLE IF EXISTS `projecttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projecttype` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Indexing` int DEFAULT NULL,
  `CreatedBy` int NOT NULL,
  `UpdatedBy` int NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projecttype`
--

LOCK TABLES `projecttype` WRITE;
/*!40000 ALTER TABLE `projecttype` DISABLE KEYS */;
INSERT INTO `projecttype` VALUES (1,'IVD','IVD',3,1,1,NULL,NULL,1),(2,'Low Risk','Low Risk',4,1,1,NULL,NULL,1),(3,'Standalone Software','Standalone Software',1,1,1,NULL,NULL,1),(4,'IA/EUA','IA/EUA',2,1,1,NULL,NULL,1),(5,'Product Care Project','Product Care Project',5,1,1,NULL,NULL,1);
/*!40000 ALTER TABLE `projecttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `CreatedBy` int NOT NULL,
  `UpdatedBy` int NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Super Admin','admin access',1,1,NULL,NULL,1),(2,'Project Manager','project manager access',1,1,NULL,NULL,1),(3,'User','restricated',1,1,NULL,NULL,1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sortby`
--

DROP TABLE IF EXISTS `sortby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sortby` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `CreatedBy` int NOT NULL,
  `UpdatedBy` int NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sortby`
--

LOCK TABLES `sortby` WRITE;
/*!40000 ALTER TABLE `sortby` DISABLE KEYS */;
/*!40000 ALTER TABLE `sortby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `CreatedBy` int NOT NULL,
  `UpdatedBy` int NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Issue','issues',1,1,NULL,NULL,NULL),(2,'Best Practice','practise',1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `EmailNotification` tinyint(1) DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `UpdatedBy` int DEFAULT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `IsEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (157,'Rahul','Rai','rahul.rai@ignatiuz.com',1,42,157,'2021-12-30 15:45:28.000000','2022-02-25 11:09:16.000000',1),(186,'Rahul','Rai','rahulrai9950@gmail.com',0,157,NULL,'2022-02-25 13:59:27.000000',NULL,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlike`
--

DROP TABLE IF EXISTS `userlike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlike` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `LessonID` int DEFAULT NULL,
  `Likes` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlike`
--

LOCK TABLES `userlike` WRITE;
/*!40000 ALTER TABLE `userlike` DISABLE KEYS */;
INSERT INTO `userlike` VALUES (181,3,257,1),(182,3,248,1),(183,3,256,1),(185,4,256,1),(186,4,248,1),(187,4,257,1),(188,4,253,1),(189,3,249,1),(190,3,264,1),(191,5,907,1),(192,46,993,1),(193,41,1196,1),(194,41,1197,1),(197,46,1178,1),(198,46,1176,1),(199,46,1179,1),(201,77,1179,1),(202,79,1201,1),(203,79,1200,1),(205,52,1279,1),(206,41,1293,1),(207,52,1293,1),(208,42,1472,1),(211,52,1191,1),(212,52,1502,1),(213,52,1524,1),(214,42,1667,1),(215,42,1639,1),(216,42,1653,1),(220,127,1691,1),(221,131,1705,1),(222,131,1706,1),(223,47,1927,1),(224,153,1942,1);
/*!40000 ALTER TABLE `userlike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userusefullesson`
--

DROP TABLE IF EXISTS `userusefullesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userusefullesson` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `LessonID` int DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=624 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userusefullesson`
--

LOCK TABLES `userusefullesson` WRITE;
/*!40000 ALTER TABLE `userusefullesson` DISABLE KEYS */;
INSERT INTO `userusefullesson` VALUES (1,4,255,'abc',NULL),(34,44,1884,'',0),(35,44,1885,'',0),(36,41,1886,'',0),(37,44,1887,'',0),(38,44,1888,'',0),(39,41,1889,'',0),(40,44,1890,'',0),(41,44,1891,'',0),(42,5,1892,'',0),(43,5,1893,'',0),(44,106,1896,'',0),(45,42,1897,'',0),(46,41,1919,'',0),(47,142,1920,'',0),(48,44,1925,'',0),(49,47,1926,'',0),(50,47,1927,'Updated practices between project teams.',1),(51,47,1927,'',0),(52,44,1928,'',0),(53,44,1929,'',0),(54,41,1930,'',0),(55,41,1931,'',0),(56,41,1932,'',0),(57,41,1933,'',0),(58,41,1934,'',0),(59,41,1935,'',0),(60,41,1936,'',0),(61,44,1937,'',0),(62,44,1938,'',0),(63,44,1939,'',0),(64,44,1940,'',0),(65,41,1941,'',0),(66,150,1942,'',0),(67,153,1943,'',0),(68,150,1944,'',0),(69,150,1945,'',0),(70,150,1946,'',0),(71,150,1947,'',0),(72,150,1948,'',0),(73,150,1949,'',0),(74,150,1950,'',0),(75,150,1951,'',0),(76,150,1952,'',0),(77,150,1953,'',0),(78,150,1954,'',0),(79,150,1955,'',0),(80,150,1956,'',0),(81,150,1957,'',0),(82,150,1958,'',0),(83,150,1959,'',0),(84,150,1960,'',0),(85,150,1961,'',0),(86,150,1962,'',0),(87,150,1963,'',0),(88,150,1964,'',0),(89,150,1965,'',0),(90,150,1966,'',0),(91,150,1967,'',0),(92,150,1968,'',0),(93,150,1969,'',0),(94,150,1970,'',0),(95,150,1971,'',0),(96,150,1972,'',0),(97,150,1973,'',0),(98,150,1974,'',0),(99,150,1975,'',0),(100,150,1976,'',0),(101,157,2031,'',0),(102,157,2033,'',0),(103,157,2034,'',0),(104,157,2035,'',0),(105,157,2038,'',0),(106,157,2056,'',0),(107,157,2057,'',0),(108,157,2058,'',0),(109,157,2059,'',0),(110,157,2069,'',0),(111,157,2246,'',0),(112,157,2248,'',0),(113,157,2250,'',0),(114,157,2256,'',0),(115,157,2254,'',0),(116,157,2251,'',0),(117,157,2252,'',0),(118,157,2253,'',0),(119,157,2255,'',0),(120,157,2247,'',0),(121,157,2258,'',0),(122,157,2257,'',0),(123,157,2249,'',0),(124,157,2259,'',0),(125,157,2260,'',0),(126,157,2264,'',0),(127,157,2261,'',0),(128,157,2262,'',0),(129,157,2265,'',0),(130,157,2263,'',0),(131,157,2266,'',0),(132,157,2267,'',0),(133,157,2268,'',0),(134,157,2269,'',0),(135,157,2270,'',0),(136,157,2271,'',0),(137,157,2272,'',0),(138,157,2273,'',0),(139,157,2274,'',0),(140,157,2275,'',0),(141,157,2276,'',0),(142,157,2277,'',0),(143,157,2278,'',0),(144,157,2279,'',0),(145,157,2280,'',0),(146,157,2281,'',0),(147,157,2282,'',0),(148,157,2283,'',0),(149,157,2284,'',0),(150,157,2285,'',0),(151,157,2286,'',0),(152,157,2287,'',0),(153,157,2288,'',0),(154,157,2289,'',0),(155,157,2290,'',0),(156,157,2292,'',0),(157,157,2291,'',0),(158,157,2294,'',0),(159,157,2293,'',0),(160,157,2296,'',0),(161,157,2295,'',0),(162,157,2297,'',0),(163,157,2298,'',0),(164,157,2299,'',0),(165,157,2306,'',0),(166,157,2300,'',0),(167,157,2302,'',0),(168,157,2308,'',0),(169,157,2307,'',0),(170,157,2309,'',0),(171,157,2304,'',0),(172,157,2303,'',0),(173,157,2305,'',0),(174,157,2301,'',0),(175,157,2310,'',0),(176,157,2311,'',0),(177,157,2312,'',0),(178,157,2313,'',0),(179,157,2314,'',0),(180,157,2316,'',0),(181,157,2315,'',0),(182,157,2318,'',0),(183,157,2321,'',0),(184,157,2320,'',0),(185,157,2319,'',0),(186,157,2317,'',0),(187,157,2322,'',0),(188,157,2323,'',0),(189,157,2324,'',0),(190,157,2325,'',0),(191,157,2326,'',0),(192,157,2329,'',0),(193,157,2327,'',0),(194,157,2331,'',0),(195,157,2334,'',0),(196,157,2328,'',0),(197,157,2332,'',0),(198,157,2330,'',0),(199,157,2335,'',0),(200,157,2333,'',0),(201,157,2336,'',0),(202,157,2337,'',0),(203,157,2338,'',0),(204,157,2339,'',0),(205,157,2343,'',0),(206,157,2342,'',0),(207,157,2345,'',0),(208,157,2341,'',0),(209,157,2344,'',0),(210,157,2346,'',0),(211,157,2340,'',0),(212,157,2347,'',0),(213,157,2348,'',0),(214,157,2350,'',0),(215,157,2349,'',0),(216,157,2351,'',0),(217,157,2353,'',0),(218,157,2354,'',0),(219,157,2352,'',0),(220,157,2356,'',0),(221,157,2360,'',0),(222,157,2357,'',0),(223,157,2361,'',0),(224,157,2358,'',0),(225,157,2359,'',0),(226,157,2355,'',0),(227,157,2362,'',0),(228,157,2363,'',0),(229,157,2366,'',0),(230,157,2369,'',0),(231,157,2365,'',0),(232,157,2364,'',0),(233,157,2370,'',0),(234,157,2367,'',0),(235,157,2372,'',0),(236,157,2368,'',0),(237,157,2373,'',0),(238,157,2371,'',0),(239,157,2374,'',0),(240,157,2382,'',0),(241,157,2381,'',0),(242,157,2376,'',0),(243,157,2377,'',0),(244,157,2380,'',0),(245,157,2375,'',0),(246,157,2383,'',0),(247,157,2384,'',0),(248,157,2378,'',0),(249,157,2379,'',0),(250,157,2385,'',0),(251,157,2386,'',0),(252,157,2387,'',0),(253,157,2389,'',0),(254,157,2391,'',0),(255,157,2388,'',0),(256,157,2390,'',0),(257,157,2392,'',0),(258,157,2393,'',0),(259,157,2396,'',0),(260,157,2394,'',0),(261,157,2395,'',0),(262,157,2398,'',0),(263,157,2399,'',0),(264,157,2397,'',0),(265,157,2400,'',0),(266,157,2401,'',0),(267,157,2403,'',0),(268,157,2404,'',0),(269,157,2402,'',0),(270,157,2405,'',0),(271,157,2406,'',0),(272,157,2407,'',0),(273,157,2408,'',0),(274,157,2409,'',0),(275,157,2410,'',0),(276,157,2411,'',0),(277,157,2412,'',0),(278,157,2413,'',0),(279,157,2415,'',0),(280,157,2414,'',0),(281,157,2417,'',0),(282,157,2416,'',0),(283,157,2418,'',0),(284,157,2419,'',0),(285,157,2420,'',0),(286,157,2421,'',0),(287,157,2422,'',0),(288,157,2423,'',0),(289,157,2425,'',0),(290,157,2424,'',0),(291,157,2426,'',0),(292,157,2427,'',0),(293,157,2428,'',0),(294,157,2431,'',0),(295,157,2432,'',0),(296,157,2434,'',0),(297,157,2433,'',0),(298,157,2435,'',0),(299,157,2436,'',0),(300,157,2429,'',0),(301,157,2430,'',0),(302,157,2437,'',0),(303,157,2438,'',0),(304,157,2439,'',0),(305,157,2441,'',0),(306,157,2440,'',0),(307,157,2442,'',0),(308,157,2445,'',0),(309,157,2447,'',0),(310,157,2444,'',0),(311,157,2443,'',0),(312,157,2448,'',0),(313,157,2446,'',0),(314,157,2449,'',0),(315,157,2450,'',0),(316,157,2451,'',0),(317,157,1,'',0),(318,157,2,'',0),(319,157,4,'',0),(320,157,6,'',0),(321,157,3,'',0),(322,157,10,'',0),(323,157,5,'',0),(324,157,7,'',0),(325,157,9,'',0),(326,157,11,'',0),(327,157,12,'',0),(328,157,8,'',0),(329,157,13,'',0),(330,157,2,'',0),(331,157,6,'',0),(332,157,3,'',0),(333,157,5,'',0),(334,157,7,'',0),(335,157,10,'',0),(336,157,1,'',0),(337,157,8,'',0),(338,157,9,'',0),(339,157,4,'',0),(340,157,11,'',0),(341,157,12,'',0),(342,157,13,'',0),(343,157,14,'',0),(344,157,15,'',0),(345,157,19,'',0),(346,157,17,'',0),(347,157,21,'',0),(348,157,20,'',0),(349,157,22,'',0),(350,157,23,'',0),(351,157,16,'',0),(352,157,24,'',0),(353,157,18,'',0),(354,157,26,'',0),(355,157,25,'',0),(356,157,27,'',0),(357,157,29,'',0),(358,157,30,'',0),(359,157,28,'',0),(360,157,36,'',0),(361,157,31,'',0),(362,157,34,'',0),(363,157,35,'',0),(364,157,32,'',0),(365,157,33,'',0),(366,157,37,'',0),(367,157,39,'',0),(368,157,38,'',0),(369,157,1,'',0),(370,157,7,'',0),(371,157,5,'',0),(372,157,9,'',0),(373,157,10,'',0),(374,157,4,'',0),(375,157,3,'',0),(376,157,6,'',0),(377,157,8,'',0),(378,157,2,'',0),(379,157,13,'',0),(380,157,11,'',0),(381,157,12,'',0),(382,157,1,'',0),(383,157,7,'',0),(384,157,8,'',0),(385,157,9,'',0),(386,157,4,'',0),(387,157,3,'',0),(388,157,5,'',0),(389,157,10,'',0),(390,157,6,'',0),(391,157,2,'',0),(392,157,11,'',0),(393,157,12,'',0),(394,157,13,'',0),(395,157,2,'',0),(396,157,3,'',0),(397,157,7,'',0),(398,157,10,'',0),(399,157,6,'',0),(400,157,4,'',0),(401,157,1,'',0),(402,157,8,'',0),(403,157,9,'',0),(404,157,5,'',0),(405,157,11,'',0),(406,157,12,'',0),(407,157,13,'',0),(408,157,1,'',0),(409,157,1,'',0),(410,157,1,'',0),(411,157,1,'',0),(412,157,1,'',0),(413,157,2,'',0),(414,157,1,'',0),(415,157,1,'',0),(416,157,1,'',0),(417,157,1,'',0),(418,157,2,'',0),(419,157,3,'',0),(420,157,4,'',0),(421,157,1,'',0),(422,157,2,'',0),(423,157,3,'',0),(424,157,1,'',0),(425,157,2,'',0),(426,157,3,'',0),(427,157,1,'',0),(428,157,3,'',0),(429,157,2,'',0),(430,157,2,'',0),(431,157,3,'',0),(432,157,1,'',0),(433,157,1,'',0),(434,157,3,'',0),(435,157,2,'',0),(436,157,4,'',0),(437,157,6,'',0),(438,157,7,'',0),(439,157,5,'',0),(440,157,8,'',0),(441,157,10,'',0),(442,157,9,'',0),(443,157,11,'',0),(444,157,12,'',0),(445,157,13,'',0),(446,157,14,'',0),(447,157,15,'',0),(448,157,16,'',0),(449,157,17,'',0),(450,157,18,'',0),(451,157,19,'',0),(452,157,20,'',0),(453,157,21,'',0),(454,157,22,'',0),(455,157,23,'',0),(456,157,26,'',0),(457,157,25,'',0),(458,157,24,'',0),(459,157,27,'',0),(460,157,28,'',0),(461,157,29,'',0),(462,157,30,'',0),(463,157,31,'',0),(464,157,34,'',0),(465,157,32,'',0),(466,157,35,'',0),(467,157,33,'',0),(468,157,36,'',0),(469,157,37,'',0),(470,157,38,'',0),(471,157,39,'',0),(472,157,40,'',0),(473,157,41,'',0),(474,157,42,'',0),(475,157,43,'',0),(476,157,45,'',0),(477,157,44,'',0),(478,157,1,'',0),(479,157,2,'',0),(480,157,3,'',0),(481,157,4,'',0),(482,157,5,'',0),(483,157,6,'',0),(484,157,1,'',0),(485,157,2,'',0),(486,157,3,'',0),(487,157,4,'',0),(488,157,5,'',0),(489,157,6,'',0),(490,157,1,'',0),(491,157,2,'',0),(492,157,3,'',0),(493,157,4,'',0),(494,157,1,'',0),(495,157,3,'',0),(496,157,2,'',0),(497,157,4,'',0),(498,157,6,'',0),(499,157,5,'',0),(500,157,7,'',0),(501,157,8,'',0),(502,157,9,'',0),(503,157,10,'',0),(504,157,11,'',0),(505,157,12,'',0),(506,157,13,'',0),(507,157,14,'',0),(508,157,18,'',0),(509,157,17,'',0),(510,157,15,'',0),(511,157,20,'',0),(512,157,22,'',0),(513,157,23,'',0),(514,157,21,'',0),(515,157,16,'',0),(516,157,24,'',0),(517,157,19,'',0),(518,157,25,'',0),(519,157,26,'',0),(520,157,2,'',0),(521,157,4,'',0),(522,157,3,'',0),(523,157,6,'',0),(524,157,1,'',0),(525,157,5,'',0),(526,157,7,'',0),(527,157,8,'',0),(528,157,9,'',0),(529,157,10,'',0),(530,157,11,'',0),(531,157,13,'',0),(532,157,12,'',0),(533,157,1,'',0),(534,157,2,'',0),(535,157,4,'',0),(536,157,3,'',0),(537,157,11,'',0),(538,157,7,'',0),(539,157,10,'',0),(540,157,12,'',0),(541,157,5,'',0),(542,157,8,'',0),(543,157,6,'',0),(544,157,13,'',0),(545,157,9,'',0),(546,157,14,'',0),(547,157,15,'',0),(548,157,16,'',0),(549,157,17,'',0),(550,157,18,'',0),(551,157,19,'',0),(552,157,20,'',0),(553,157,21,'',0),(554,157,22,'',0),(555,157,23,'',0),(556,157,24,'',0),(557,157,26,'',0),(558,157,25,'',0),(559,157,2,'',0),(560,157,1,'',0),(561,157,1,'',0),(562,157,3,'',0),(563,157,2,'',0),(564,157,2,'',0),(565,157,1,'',0),(566,157,3,'',0),(567,157,4,'',0),(568,157,6,'',0),(569,157,5,'',0),(570,157,1,'',0),(571,157,3,'',0),(572,157,2,'',0),(573,157,4,'',0),(574,157,5,'',0),(575,157,6,'',0),(576,157,7,'',0),(577,157,9,'',0),(578,157,8,'',0),(579,157,10,'',0),(580,157,11,'',0),(581,157,12,'',0),(582,157,13,'',0),(583,157,14,'',0),(584,157,15,'',0),(585,157,1,'',0),(586,157,2,'',0),(587,157,3,'',0),(588,157,4,'',0),(589,157,5,'',0),(590,157,6,'',0),(591,157,1,'',0),(592,157,2,'',0),(593,157,3,'',0),(594,157,4,'',0),(595,157,6,'',0),(596,157,5,'',0),(597,157,7,'',0),(598,157,9,'',0),(599,157,8,'',0),(600,157,10,'',0),(601,157,12,'',0),(602,157,11,'',0),(603,157,13,'',0),(604,157,15,'',0),(605,157,14,'',0),(606,157,1,'',0),(607,157,3,'',0),(608,157,2,'',0),(609,157,4,'',0),(610,157,5,'',0),(611,157,6,'',0),(612,157,7,'',0),(613,157,9,'',0),(614,157,8,'',0),(615,157,10,'',0),(616,157,12,'',0),(617,157,11,'',0),(618,157,14,'',0),(619,157,15,'',0),(620,157,13,'',0),(621,157,16,'',0),(622,157,18,'',0),(623,157,17,'',0);
/*!40000 ALTER TABLE `userusefullesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lighthouse'
--

--
-- Dumping routines for database 'lighthouse'
--
/*!50003 DROP PROCEDURE IF EXISTS `addAllAttachmentSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAllAttachmentSQL`(in a_fieldname VARCHAR(100), in a_originalname VARCHAR(100), in a_mimetype VARCHAR(100), in a_container VARCHAR(100), in a_blob VARCHAR(2083), in a_size DOUBLE, in a_url VARCHAR(2083), out LID int(10))
BEGIN
INSERT INTO  attachment(FieldName,OriginalName,MimeType,Container,AzureBlob,FileSize,Url) 
        VALUES( a_fieldname,a_originalname,a_mimetype,a_container,a_blob,a_size,a_url);
SET LID = LAST_INSERT_ID();  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAllDepartmentsSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAllDepartmentsSQL`(in d_Name VARCHAR(100), in d_Description VARCHAR(100), in d_CreatedBy int(10), in d_UpdatedBy int(10), out LID int(10))
BEGIN
INSERT INTO  department(Name,Description,CreatedBy,UpdatedBy) VALUES( d_Name,d_Description,d_CreatedBy,d_UpdatedBy);
SET LID = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAllfunctionsSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAllfunctionsSQL`(in p_Name varchar(100),in p_Description varchar(250), in p_CreatedBy int, in p_UpdatedBy int, out LID int(10))
BEGIN
INSERT INTO  lighthousetest.functions(Name,Description,CreatedBy,UpdatedBy) 
        VALUES( p_Name,p_Description,p_CreatedBy,p_UpdatedBy);
SET LID = LAST_INSERT_ID(); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAllimpactcategorySQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAllimpactcategorySQL`(in p_Name varchar(100),in p_Description varchar(250), in p_CreatedBy int, in p_UpdatedBy int, out LID int(10))
BEGIN
INSERT INTO  lighthousetest.impactcategory(Name,Description,CreatedBy,UpdatedBy) 
        VALUES( p_Name,p_Description,p_CreatedBy,p_UpdatedBy);
SET LID = LAST_INSERT_ID(); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAllimpactlevelSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAllimpactlevelSQL`(in p_Name varchar(100),in p_Description varchar(250), in p_CreatedBy int, in p_UpdatedBy int, out LID int(10))
BEGIN
INSERT INTO  lighthousetest.impactlevel(Name,Description,CreatedBy,UpdatedBy) 
        VALUES( p_Name,p_Description,p_CreatedBy,p_UpdatedBy);
SET LID = LAST_INSERT_ID(); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAllKeywordsSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAllKeywordsSQL`(in a_Name VARCHAR(50), in a_Description VARCHAR(500), in a_CreatedBy int, in u_UpdatedBy int, out LID int(10))
BEGIN
INSERT INTO  lighthousetest.keyword(Name,Description,CreatedBy,UpdatedBy) 
        VALUES( a_Name,a_Description,a_CreatedBy,u_UpdatedBy);
SET LID = LAST_INSERT_ID();  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAlllifecycleSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAlllifecycleSQL`(in p_Name varchar(100),in p_Description varchar(250), in p_CreatedBy int, in p_UpdatedBy int, out LID int(10))
BEGIN
INSERT INTO  lighthousetest.lifecycle(Name,Description,CreatedBy,UpdatedBy) 
        VALUES( p_Name,p_Description,p_CreatedBy,p_UpdatedBy);
SET LID = LAST_INSERT_ID(); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAllmappingprojectprojecttypeSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAllmappingprojectprojecttypeSQL`(in p_ProjectID int,in p_ProjecttypeID int, out LID int(10))
BEGIN
INSERT INTO  lighthousetest.mappingprojectprojecttype(ProjectID,ProjecttypeID) 
        VALUES( p_ProjectID,p_ProjecttypeID);
SET LID = LAST_INSERT_ID();  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAllmappingprojecttypemilstonesSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAllmappingprojecttypemilstonesSQL`(in p_ProjecttypeID int,in p_MilestoneID int, out LID int(10))
BEGIN
INSERT INTO  lighthousetest.mappingprojecttypemilestones(ProjecttypeID,MilestoneID) 
        VALUES( p_ProjecttypeID,p_MilestoneID);
SET LID = LAST_INSERT_ID();  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAllmappingprojectypephaseSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAllmappingprojectypephaseSQL`(in p_ProjecttypeID int,in p_PhaseID int, out LID int(10))
BEGIN
INSERT INTO  lighthousetest.mappingprojectphase(ProjecttypeID,PhaseID)  VALUES( p_ProjecttypeID,p_PhaseID);
SET LID = LAST_INSERT_ID();  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAllmilestoneSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAllmilestoneSQL`(in p_Name varchar(100),in p_Description varchar(250), in p_CreatedBy int, in p_UpdatedBy int, out LID int(10))
BEGIN
INSERT INTO  lighthousetest.milestone(Name,Description,CreatedBy,UpdatedBy) 
        VALUES( p_Name,p_Description,p_CreatedBy,p_UpdatedBy);
SET LID = LAST_INSERT_ID();  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAllphasesSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAllphasesSQL`(in p_Name varchar(100),in p_Description varchar(250), in p_CreatedBy int, in p_UpdatedBy int, out LID int(10))
BEGIN
INSERT INTO  lighthousetest.phase(Name,Description,CreatedBy,UpdatedBy) 
        VALUES( p_Name,p_Description,p_CreatedBy,p_UpdatedBy);
SET LID = LAST_INSERT_ID();  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAllprocessSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAllprocessSQL`(in p_Name varchar(100),in p_Description varchar(250), in p_CreatedBy int, in p_UpdatedBy int, out LID int(10))
BEGIN
INSERT INTO  lighthousetest.process(Name,Description,CreatedBy,UpdatedBy) 
        VALUES( p_Name,p_Description,p_CreatedBy,p_UpdatedBy);
SET LID = LAST_INSERT_ID(); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAllProjectsSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAllProjectsSQL`(in p_Name varchar(100),in p_LPN varchar(50), in p_Description varchar(250), in p_CreatedBy int,in p_UpdatedBy int, out LID int(10))
BEGIN
INSERT INTO  lighthousetest.project(Name,LPN,Description,CreatedBy,UpdatedBy) 
        VALUES( p_Name,p_LPN,p_Description,p_CreatedBy,p_UpdatedBy);
SET LID = LAST_INSERT_ID(); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAllProjecttypeSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAllProjecttypeSQL`(in p_Name varchar(100),in p_Description varchar(250), in p_CreatedBy int, in p_UpdatedBy int, out LID int(10))
BEGIN
INSERT INTO  lighthousetest.projecttype(Name,Description,CreatedBy,UpdatedBy) 
        VALUES( p_Name,p_Description,p_CreatedBy,p_UpdatedBy);
SET LID = LAST_INSERT_ID(); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAlluserlikeSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAlluserlikeSQL`(in l_UserID int, in l_LessonID int, in l_Likes int, out LID int(10))
BEGIN
INSERT INTO lighthousetest.userlike ( UserID,LessonID,Likes) 
        VALUES( l_UserID,l_LessonID,l_Likes);
SET LID = LAST_INSERT_ID(); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addBulkErrorImportSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addBulkErrorImportSQL`(in p_ErrorMessage VARCHAR(200),in p_ErrorField VARCHAR(200),in p_RowField int, in p_ColumnField int,in p_Name VARCHAR(200),in p_Email VARCHAR(200), in p_ProjectType VARCHAR(200),in p_ProcessField VARCHAR(200), in p_Project VARCHAR(200),in p_Phase VARCHAR(200), in p_Milestone VARCHAR(200), in p_Type VARCHAR(200), in p_ImpactCategory VARCHAR(200), in p_ImpactLevel VARCHAR(200), in p_FunctionField VARCHAR(200), in p_Department VARCHAR(200), in p_Title VARCHAR(500), in p_Description VARCHAR(2000), in p_RootCause VARCHAR(2000), in p_Recommendation VARCHAR(2000), in p_Keywords VARCHAR(200), in p_LifeCycle VARCHAR(200), in p_IndexID int, out LID int(10))
BEGIN
INSERT INTO lighthousetest.bulkimporterrors (ErrorMessage,ErrorField,RowField,ColumnField,Name,Email,ProjectType,ProcessField,Project,Phase,Milestone,Type,ImpactCategory,ImpactLevel,FunctionField,Department,Title,Description,RootCause,Recommendation,Keywords,LifeCycle,IndexID) VALUES 
            (p_ErrorMessage,p_ErrorField,p_RowField,p_ColumnField,p_Name,p_Email,p_ProjectType,p_ProcessField,p_Project,p_Phase,p_Milestone,p_Type,p_ImpactCategory,p_ImpactLevel,p_FunctionField,p_Department,p_Title,p_Description,p_RootCause,p_Recommendation,p_Keywords,p_LifeCycle,p_IndexID);
SET LID = LAST_INSERT_ID(); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addBulkImportSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addBulkImportSQL`(in p_FileName VARCHAR(100),in p_TotalEntry int,in p_TotalEntryError int,in p_FilePath VARCHAR(2083),in p_CreatedBy int, out LID int(10))
BEGIN
INSERT INTO lighthousetest.bulkimport (FileName,TotalEntry,TotalEntryError,FilePath,ImportDate,CreatedBy) VALUES 
            (p_FileName,p_TotalEntry,p_TotalEntryError,p_FilePath,now(),p_CreatedBy);
SET LID = LAST_INSERT_ID();  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addKaywordsByMappingLessonSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addKaywordsByMappingLessonSQL`(in lessonID int(10), in kaywordID int(10), out LID int(10))
BEGIN
INSERT INTO lighthousetest.mappinglessonkeyword ( LessonID,KeywordID) VALUES( lessonID,kaywordID);
SET LID = LAST_INSERT_ID();   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addKaywordsBySQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addKaywordsBySQL`(in value VARCHAR(50), out LID int(10))
BEGIN
INSERT INTO keyword ( Name,Description)  VALUES( value,value);
SET LID = LAST_INSERT_ID();  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addKeywordsByMappingLessonSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addKeywordsByMappingLessonSQL`(in s_lessonID int(10), in s_keywordID int(10), out LID int(10))
BEGIN
	IF (SELECT count(*) FROM lighthousetest.mappinglessonkeyword WHERE LessonID = s_lessonID and KeywordID = s_keywordID) > 0 THEN
    BEGIN
    SELECT ID into LID  FROM lighthousetest.mappinglessonkeyword WHERE LessonID = s_lessonID and KeywordID = s_keywordID;
    END;
    ELSE 
    BEGIN
      INSERT INTO lighthousetest.mappinglessonkeyword ( LessonID,KeywordID) VALUES( s_lessonID,s_keywordID);
      SET LID = LAST_INSERT_ID(); 
    END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addKeywordsBySQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addKeywordsBySQL`(in value VARCHAR(50), out LID int(10))
BEGIN
	IF (SELECT count(*) FROM keyword WHERE Name = value)>0 THEN
    BEGIN
	 SELECT ID into LID  FROM keyword where Name = value;
    END;
    ELSE 
    BEGIN
     INSERT INTO keyword ( Name,Description)  VALUES( value,value);
     SET LID = LAST_INSERT_ID(); 
    END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addLessonSQLBulk` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addLessonSQLBulk`(in l_Title VARCHAR(500), in l_IssueDescription VARCHAR(2000), in l_RootCause VARCHAR(2000),in l_Recommendation VARCHAR(2000), in l_IsEnabled int, out LID int(10))
BEGIN
INSERT INTO lighthousetest.lesson (Title,IssueDescription,RootCause,Recommendation,CreatedDate,IsEnabled) VALUES (l_Title,l_IssueDescription,l_RootCause,l_Recommendation,now(),l_IsEnabled);
SET LID = LAST_INSERT_ID();  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addMappingLessonAttachmentSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addMappingLessonAttachmentSQL`(in m_lessonID int, in a_attachmentID int, out LID int(10))
BEGIN
INSERT INTO  mappinglessonattachment(LessonID,AttachmentID)  VALUES( m_lessonID,a_attachmentID);
SET LID = LAST_INSERT_ID();  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addNotification` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addNotification`(in p_UserID int,in p_ProjectTypeID int,in p_ProjectID int,in p_PhaseID int,in p_ProcessID int,in p_ImpactCategoryID int,in p_ImpactLevelID int,in p_MilestoneID int,in p_FunctionID int, in p_DepartmentID int,in p_LifeCycleID int,in p_Frequency int, in p_CreatedBy int, in p_IsEnabled int, out LID int(10))
BEGIN
INSERT INTO lighthousetest.notification (UserID,ProjectTypeID,ProjectID,PhaseID,ProcessID,ImpactCategoryID,ImpactLevelID,MilestoneID,FunctionID, DepartmentID,LifeCycleID,Frequency,CreatedBy,CreatedDate, IsEnabled) VALUES 
        (p_UserID,p_ProjectTypeID,p_ProjectID,p_PhaseID,p_ProcessID,p_ImpactCategoryID,p_ImpactLevelID,p_MilestoneID,p_FunctionID,p_DepartmentID,p_LifeCycleID,p_Frequency,p_CreatedBy,now(),p_IsEnabled);
SET LID = LAST_INSERT_ID(); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addProcessLessonSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addProcessLessonSQL`(in l_UserID INT(10), in l_LessonTypeID INT(10), in l_ProcessID INT(10), in l_TypeID INT(10), in l_ImpactCategoryID INT(10), in l_ImpactLevelID INT(10), in l_FunctionID INT(10), in l_LifeCycleID INT(10), in l_DepartmentID INT(10), in l_Title VARCHAR(250),  in l_IssueDescription VARCHAR(2000),  in l_RootCause VARCHAR(2000),  in l_Recommendation VARCHAR(2000), in l_CreatedBy INT(10), in l_IsEnabled INT(10), out LID int(10))
BEGIN
INSERT INTO lighthousetest.lesson (UserID,LessonTypeID,ProcessID,TypeID,ImpactCategoryID,ImpactLevelID,FunctionID,LifeCycleID,DepartmentID,Title,IssueDescription,RootCause,Recommendation,CreatedBy,CreatedDate,IsEnabled) VALUES 
            (l_UserID,l_LessonTypeID,l_ProcessID,l_TypeID,l_ImpactCategoryID,l_ImpactLevelID,l_FunctionID,l_LifeCycleID,l_DepartmentID,l_Title,l_IssueDescription,l_RootCause,l_Recommendation,l_CreatedBy,now(),l_IsEnabled);
SET LID = LAST_INSERT_ID();            
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addProjectLessonSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addProjectLessonSQL`(in l_UserID INT(10), in l_LessonTypeID INT(10), in l_ProjectTypeID INT(10), in l_ProjectID INT(10), in l_PhaseID INT(10), in l_TypeID INT(10), in l_ImpactCategoryID INT(10), in l_ImpactLevelID INT(10), in l_MilestoneID INT(10), in l_FunctionID INT(10), in l_LifeCycleID INT(10), in l_DepartmentID INT(10), in l_Title VARCHAR(250),  in l_IssueDescription VARCHAR(2000),  in l_RootCause VARCHAR(2000),  in l_Recommendation VARCHAR(2000), in l_CreatedBy INT(10), in l_IsEnabled INT(10), out LID int(10))
BEGIN
INSERT INTO lighthousetest.lesson (UserID,LessonTypeID,ProjectTypeID,ProjectID,PhaseID,TypeID,ImpactCategoryID,ImpactLevelID,MilestoneID,FunctionID,LifeCycleID,DepartmentID,Title,IssueDescription,RootCause,Recommendation,CreatedBy,CreatedDate,IsEnabled) VALUES(l_UserID,l_LessonTypeID,l_ProjectTypeID,l_ProjectID,l_PhaseID,l_TypeID,l_ImpactCategoryID,l_ImpactLevelID,l_MilestoneID,l_FunctionID,l_LifeCycleID,l_DepartmentID,l_Title,l_IssueDescription,l_RootCause,l_Recommendation,l_CreatedBy,now(),l_IsEnabled);
SET LID = LAST_INSERT_ID();   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addUserusefullessonsSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addUserusefullessonsSQL`(in p_UserID int, in p_LessonID int, in p_Description VARCHAR(250), in p_flag int, out LID int(10))
BEGIN
INSERT INTO  lighthousetest.userusefullesson(UserID,LessonID,Description,flag) 
        VALUES( p_UserID,p_LessonID,p_Description,p_flag);
SET LID = LAST_INSERT_ID();  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `authUserByEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `authUserByEmail`(in p_Email varchar(200))
BEGIN
SELECT ul.ID,ul.FirstName,ul.LastName,ul.Email,ul.IsEnabled,murl.roleid FROM User ul 
        INNER JOIN MappingUserRole murl on ul.ID = murl.userid  WHERE ul.Email = p_Email;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkAlluserlikeSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkAlluserlikeSQL`(in u_UserID int , in u_LessonID int)
BEGIN
SELECT * FROM lighthousetest.userlike where UserID=u_UserID and LessonID=u_LessonID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkKeywordIDByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkKeywordIDByName`(in p_Name varchar(200))
BEGIN
SELECT ID, Name FROM lighthousetest.keyword WHERE Name = p_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkMappingProjectProjectType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkMappingProjectProjectType`(in p_projectId int, in p_projecttypeid int)
BEGIN
SELECT ID FROM lighthousetest.mappingprojectprojecttype where ProjectID = p_projectId and ProjecttypeID = p_projecttypeid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkMilestoneProjecttypeCallback` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkMilestoneProjecttypeCallback`(in p_projecttypeID int, in p_milestoneID int)
BEGIN
SELECT ID FROM lighthousetest.mappingprojecttypemilestones where ProjecttypeID = p_projecttypeID and MilestoneID = p_milestoneID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkPhaseProjecttypeCallback` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkPhaseProjecttypeCallback`(in p_projecttypeID int, in p_phaseID int)
BEGIN
SELECT ID FROM lighthousetest.mappingprojectphase where ProjecttypeID = p_projecttypeID and PhaseID = p_phaseID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteAllKaywordsByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteAllKaywordsByID`(in k_ID int)
BEGIN
DELETE FROM lighthousetest.mappinglessonkeyword where LessonID =k_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteAllKeywordsByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteAllKeywordsByID`(in k_ID int)
BEGIN
DELETE FROM lighthousetest.mappinglessonkeyword where LessonID =k_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteAlluserlikeSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteAlluserlikeSQL`(in p_ID int)
BEGIN
DELETE From lighthousetest.userlike where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteAttachmnetSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteAttachmnetSQL`(in a_ID int)
BEGIN
DELETE mla, att from lighthousetest.mappinglessonattachment mla INNER JOIN lighthousetest.attachment att  on mla.AttachmentID = att.ID where mla.LessonID=a_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteGoogleUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteGoogleUser`(in g_Email varchar(200))
BEGIN
DELETE from lighthousetest.googleuser where Email = g_Email;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deletelessonsSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletelessonsSQL`(in l_ID int)
BEGIN
delete lesson,mappinglessonkeyword
from lesson 
inner join mappinglessonkeyword  on mappinglessonkeyword.LessonID = lesson.ID where lesson.ID = l_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteMappingUserRolesSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteMappingUserRolesSQL`(in u_ID int)
BEGIN
DELETE from lighthousetest.mappinguserrole where UserID=u_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteMultiLessons` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteMultiLessons`(in p_ID int)
BEGIN
DELETE from lighthousetest.lesson where ID IN (p_ID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteNotification` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteNotification`(in n_ID int)
BEGIN
DELETE from lighthousetest.notification where ID=n_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteUserSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteUserSQL`(in u_ID int)
BEGIN
DELETE from lighthousetest.user where ID=u_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editNotification` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `editNotification`(in n_ProjectType int,in n_Projectname int,in n_ProjectPhase int,in n_Process int,in n_Impectcategory int,in n_Impectlevel int,in n_Projectphasemilestone int,in n_Function int,in n_Department int,in n_Lifecycle int,in n_Frequency int,in n_ID int)
BEGIN
update lighthousetest.notification SET ProjectTypeID = n_ProjectType,ProjectID=n_Projectname,PhaseID=n_ProjectPhase,ProcessID=n_Process,ImpactCategoryID=n_Impectcategory,ImpactLevelID=n_Impectlevel,MilestoneID=n_Projectphasemilestone,FunctionID=n_Function, DepartmentID=n_Department,LifeCycleID=n_Lifecycle,Frequency=n_Frequency,UpdatedDate=now() where ID=n_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getallbulkSql` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getallbulkSql`()
BEGIN
SELECT bi.ID,bi.FileName,bi.TotalEntry,bi.TotalEntryError,bi.ErrorFileName,bi.FilePath,bi.ErrorFilePath,bi.ImportDate,ur.FirstName,ur.LastName
        FROM lighthousetest.bulkimport bi
        INNER JOIN user ur on ur.ID = bi.CreatedBy
        order by bi.ImportDate DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getallcountuserusefulSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getallcountuserusefulSQL`(in u_ID int)
BEGIN
select count(userusefullesson.flag) as total, (select count(ID) from lesson)as totallesson from userusefullesson WHERE userusefullesson.flag=u_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllDepartmentsSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllDepartmentsSQL`()
BEGIN
SELECT ID,Name,Description,Indexing FROM lighthousetest.department order by Indexing ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllFunctionsSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllFunctionsSQL`()
BEGIN
SELECT ID,Name,Description,Indexing FROM lighthousetest.functions order by Indexing ASC ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllimpactcategorySQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllimpactcategorySQL`()
BEGIN
SELECT ID,Name,Description,Indexing FROM lighthousetest.impactcategory order by Indexing ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllimpactlevelSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllimpactlevelSQL`()
BEGIN
SELECT ID,Name,Description,Indexing FROM lighthousetest.impactlevel order by Indexing ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllKeywordsByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllKeywordsByID`(in k_ID int)
BEGIN
SELECT keywd.ID, keywd.Name
        FROM lighthousetest.mappinglessonkeyword mlk
        INNER JOIN keyword keywd on mlk.KeywordID = keywd.ID where LessonID = k_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllKeywordsSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllKeywordsSQL`()
BEGIN
SELECT ID,Name,Description FROM lighthousetest.keyword order by ID DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllLessonProcessSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllLessonProcessSQL`()
BEGIN
select COUNT(ul.Likes) as likes, les.ID,les.Title,les.CreatedDate,les.Recommendation,les.RootCause,les.IssueDescription,lt.Name as lessontypeName,
        im.Name as impactlevel,imp.Name as impactcategory,t.Name as Type,f.Name as functions,d.Name as department, proc.Name as Name,lf.Name as lifecycle
        from lesson les
        Inner join lessontype lt on lt.ID =les.LessonTypeID
        Inner join user us on us.ID = les.UserID
        Inner join process proc on proc.ID =les.ProcessID
        Inner join impactlevel im on im.ID =les.ImpactLevelID
        inner join impactcategory imp on imp.ID =les.ImpactCategoryID
        Inner join type t on t.ID =les.TypeID 
        Inner join department d on d.ID =les.DepartmentID
        Inner Join functions f on f.ID =les.FunctionID
        Inner join lifecycle lf on lf.ID = les.LifeCycleID
		left Join userlike ul on ul.lessonID = les.ID where les.LessonTypeID = 2
        group by les.ID order by CreatedDate desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllLessonProjectSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllLessonProjectSQL`()
BEGIN
select COUNT(ul.Likes) as likes, les.ID,les.Title,les.CreatedDate,les.Recommendation,les.RootCause,les.IssueDescription,lt.Name as lessontypeName,pr.LPN,pr.Name,p.Name as phase,
        im.Name as impactlevel,mil.Name as milestone,imp.Name as impactcategory,t.Name as Type,f.Name as functions,d.Name as department,lf.Name as lifecycle
        from lesson les
        Inner join lessontype lt on lt.ID =les.LessonTypeID
        Inner join project pr on pr.ID =les.ProjectID
        Inner join user us on us.ID = les.UserID
        Inner join phase p on p.ID =les.PhaseID
        Inner join impactlevel im on im.ID =les.ImpactLevelID
        Inner join milestone mil on mil.ID = les.MilestoneID
        inner join impactcategory imp on imp.ID =les.ImpactCategoryID
        Inner join type t on t.ID =les.TypeID 
        Inner join department d on d.ID =les.DepartmentID
        Inner Join functions f on f.ID =les.FunctionID
        Inner join lifecycle lf on lf.ID = les.LifeCycleID
		left Join userlike ul on ul.lessonID = les.ID where les.LessonTypeID = 1
        group by les.ID order by CreatedDate desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllLifecycleSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllLifecycleSQL`()
BEGIN
SELECT ID,Name,Description,Indexing FROM lighthousetest.lifecycle order by Indexing ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllMappingprojectmilestonesSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllMappingprojectmilestonesSQL`(in p_ProjecttypeID int)
BEGIN
SELECT mil.ID, map.ProjectID,map.MilestoneID,mil.Name
    FROM  mappingprojectmilestone map
    INNER JOIN project pr on pr.ID = map.ProjectID
    INNER JOIN milestone mil on mil.ID =map.MilestoneID where projectID=p_ProjecttypeID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllMappingprojectphaseSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllMappingprojectphaseSQL`(in p_ProjecttypeID int)
BEGIN
SELECT ph.ID,map.phaseID,ph.Name,map.Indexing,map.ID as mid,pr.Name as projecttype
    FROM  mappingprojectphase map
    INNER JOIN projecttype pr on pr.ID = map.ProjecttypeID
    INNER JOIN phase ph on ph.ID =map.PhaseID where ProjecttypeID=p_ProjecttypeID order by Indexing ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllMappingprojectprojectypeSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllMappingprojectprojectypeSQL`(in p_ProjecttypeID int)
BEGIN
SELECT pr.ID,map.projectID,pr.Name,pr.LPN,map.Indexing
    FROM  mappingprojectprojecttype map
    INNER JOIN project  pr on pr.ID = map.ProjectID
    INNER JOIN projecttype pro on pro.ID =map.ProjecttypeID where ProjecttypeID=p_ProjecttypeID order by Indexing ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllMappingprojecttypemilestonesSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllMappingprojecttypemilestonesSQL`(in p_ProjecttypeID int)
BEGIN
SELECT mil.ID,map.MilestoneID,mil.Name,map.Indexing,map.ID as mid
    FROM  mappingprojecttypemilestones map
    INNER JOIN projecttype pr on pr.ID = map.ProjecttypeID
    INNER JOIN milestone mil on mil.ID =map.MilestoneID where ProjecttypeID=p_ProjecttypeID order by Indexing ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllMilestonesSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllMilestonesSQL`()
BEGIN
SELECT ID,Name,Description,Indexing FROM lighthousetest.milestone order by Indexing ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllNotification` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllNotification`(in n_user int)
BEGIN
SELECT ntf.ID, us.Email as email, pro.Name as ProjectType, pro.ID as ProjectTypeID, pr.Name as ProjectName, proc.ID as ProcessID, proc.Name as ProcessName, pr.ID as ProjectNameID, p.Name as Phase, p.ID as PhaseID,imp.Name as ImpactCategory,imp.ID as ImpactCategoryID, im.Name as ImpactLevel, im.ID as ImpactLevelID, mil.Name as Milestone, mil.ID as MilestoneID, f.Name as Functions, f.ID as FunctionsID, d.Name as Department, d.ID as DepartmentID, lf.Name as LifeCycle, lf.ID as LifeCycleID, ntr.Name as Frequency, ntr.ID as FrequencyID
        FROM lighthousetest.notification ntf
        left join project pr on pr.ID =ntf.ProjectID
        left join projecttype pro on pro.ID =ntf.ProjectTypeID
        left join process proc on proc.ID =ntf.ProcessID
        left join user us on us.ID = ntf.UserID
        left join phase p on p.ID =ntf.PhaseID
        left join impactlevel im on im.ID =ntf.ImpactLevelID
        left join milestone mil on mil.ID = ntf.MilestoneID
        left join department d on d.ID =ntf.DepartmentID
        left Join functions f on f.ID =ntf.FunctionID
        left join lifecycle lf on lf.ID = ntf.LifeCycleID
        left join impactcategory imp on imp.ID =ntf.ImpactCategoryID
        left join notificationrepeat ntr on ntr.ID =ntf.Frequency
        WHERE ntf.IsEnabled = 1 and UserID = n_user order by ntf.CreatedDate DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllNotificationByData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllNotificationByData`(in p_frequency int)
BEGIN
SELECT ID,UserID,ProjectTypeID,ProjectID,PhaseID,ImpactCategoryID,ProcessID,ImpactLevelID,MilestoneID,FunctionID,DepartmentID,LifeCycleID FROM lighthousetest.notification where Frequency=p_frequency;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllPendingUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllPendingUser`()
BEGIN
SELECT ID, Name, GivenName, FamilyName, Picture, Email, CreatedDate  FROM lighthousetest.googleuser WHERE IsEnabled = 0 order by CreatedDate DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllphaseSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllphaseSQL`()
BEGIN
SELECT ID,Name,Description,Indexing FROM lighthousetest.phase order by Indexing ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllProcessSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllProcessSQL`()
BEGIN
SELECT ID,Name,Description,Indexing FROM lighthousetest.process order by Indexing ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllProjectsSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllProjectsSQL`()
BEGIN
SELECT ID,Name,LPN,Description,Indexing FROM lighthousetest.project order by Indexing ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllProjecttypeSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllProjecttypeSQL`()
BEGIN
SELECT ID,Name,Description,Indexing FROM lighthousetest.projecttype order by Indexing ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getalltypeoflessonSql` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getalltypeoflessonSql`()
BEGIN
SELECT ID,Name,Description FROM lighthousetest.type;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllUser`()
BEGIN
SELECT ul.ID,ul.FirstName,ul.LastName,ul.EmailNotification,ul.CreatedDate,ul.IsEnabled,ul.Email,murl.roleid, gu.Picture FROM User ul 
        INNER JOIN MappingUserRole murl on ul.ID = murl.userid
        LEFT JOIN googleuser gu on ul.Email = gu.Email;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAlluserlikeSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAlluserlikeSQL`(in u_LessonID int)
BEGIN
SELECT COUNT('Likes') FROM lighthousetest.userlike where LessonID=u_LessonID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllUserOrderByDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllUserOrderByDate`(in l_sort varchar(50))
BEGIN
SELECT ul.ID,ul.FirstName,ul.LastName,ul.EmailNotification,ul.CreatedDate,ul.IsEnabled,ul.Email,murl.roleid, gu.Picture 
        FROM User ul 
        INNER JOIN MappingUserRole murl on ul.ID = murl.userid
        LEFT JOIN googleuser gu on ul.Email = gu.Email
        ORDER BY
                 case when l_sort = 'ASC' 
                 then ul.CreatedDate end asc, 
                 case when l_sort = 'DESC' 
                 then ul.CreatedDate end desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllUserOrderByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllUserOrderByName`(in l_sort varchar(50))
BEGIN
SELECT ul.ID,ul.FirstName,ul.LastName,ul.EmailNotification,ul.CreatedDate,ul.IsEnabled,ul.Email,murl.roleid, gu.Picture 
        FROM User ul 
        INNER JOIN MappingUserRole murl on ul.ID = murl.userid
        LEFT JOIN googleuser gu on ul.Email = gu.Email
        ORDER BY
                 case when l_sort = 'ASC' 
                 then ul.FirstName end asc, 
                 case when l_sort = 'DESC' 
                 then ul.FirstName end desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllUserOrderByRole` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllUserOrderByRole`(in l_sort varchar(50))
BEGIN
SELECT ul.ID,ul.FirstName,ul.LastName,ul.EmailNotification,ul.CreatedDate,ul.IsEnabled,ul.Email,murl.roleid, gu.Picture 
        FROM User ul 
        INNER JOIN MappingUserRole murl on ul.ID = murl.userid
        LEFT JOIN googleuser gu on ul.Email = gu.Email
        ORDER BY
                 case when l_sort = 'ASC' 
                 then murl.roleid end asc, 
                 case when l_sort = 'DESC' 
                 then murl.roleid end desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllUserOrderByStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllUserOrderByStatus`(in l_sort varchar(50))
BEGIN
SELECT ul.ID,ul.FirstName,ul.LastName,ul.EmailNotification,ul.CreatedDate,ul.IsEnabled,ul.Email,murl.roleid, gu.Picture 
        FROM User ul 
        INNER JOIN MappingUserRole murl on ul.ID = murl.userid
        LEFT JOIN googleuser gu on ul.Email = gu.Email
        ORDER BY
                 case when l_sort = 'ASC' 
                 then ul.IsEnabled end asc, 
                 case when l_sort = 'DESC' 
                 then ul.IsEnabled end desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllUserOrderByURE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllUserOrderByURE`(in l_sort varchar(50))
BEGIN
SELECT ul.ID,ul.FirstName,ul.LastName,ul.EmailNotification,ul.CreatedDate,ul.IsEnabled,ul.Email,murl.roleid, gu.Picture 
        FROM User ul 
        INNER JOIN MappingUserRole murl on ul.ID = murl.userid
        LEFT JOIN googleuser gu on ul.Email = gu.Email
        ORDER BY
                 case when l_sort = 'ASC' 
                 then ul.EmailNotification end asc, 
                 case when l_sort = 'DESC' 
                 then ul.EmailNotification end desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllUserusefulllessonsSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllUserusefulllessonsSQL`()
BEGIN
select ID,UserID,LessonID,Description,flag from lighthousetest.userusefullesson;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAttachmentNameByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAttachmentNameByID`(in a_LessonID int)
BEGIN
SELECT att.OriginalName, att.Url FROM lighthousetest.attachment as att Inner join mappinglessonattachment mla on mla.AttachmentID = att.ID where mla.LessonID = a_LessonID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getBulkImportErrorData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getBulkImportErrorData`(in p_ID int)
BEGIN
select bie.ErrorMessage,bie.ErrorField,bie.RowField,bie.ColumnField,bie.Name,bie.Email,bie.ProjectType,bie.ProcessField,bie.Project,bie.Phase,bie.Milestone,bie.Type,bie.ImpactCategory,
        bie.ImpactLevel,bie.FunctionField,bie.Department,bie.Title,bie.Description,bie.RootCause,bie.Recommendation,bie.Keywords,bie.LifeCycle
        from lighthousetest.bulkimporterrors  bie
        Inner join mappingbulkimportbulkimporterror mbibie on bie.ID =mbibie.BulkImportErrorID where  mbibie.BulkImportID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCountimpactlevelforhighSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCountimpactlevelforhighSQL`()
BEGIN
SELECT COUNT( lesson.ImpactLevelID ) as "TotalNumber" FROM lighthousetest.lesson WHERE lesson.ImpactLevelID=3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCountimpactlevelformediumSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCountimpactlevelformediumSQL`()
BEGIN
SELECT COUNT( lesson.ImpactLevelID ) as "TotalNumber" FROM lighthousetest.lesson WHERE lesson.ImpactLevelID=2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCountimpactlevelSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCountimpactlevelSQL`(in c_ID int)
BEGIN
SELECT COUNT( lesson.ImpactLevelID ) as "TotalNumber" FROM lighthousetest.lesson WHERE lesson.ImpactLevelID=c_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getcountlessonbymonth` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcountlessonbymonth`()
BEGIN
SELECT count(ID) as lastthreemonth,(select count(ID) 
        FROM lighthousetest.lesson
        WHERE CreatedDate >=DATE_ADD(NOW(), INTERVAL -30 DAY)) as currentmonth ,(select count(ID) 
        FROM lighthousetest.lesson
        WHERE CreatedDate >=DATE_ADD(NOW(), INTERVAL -150 DAY)) as lastfivemonth,(select count(ID) 
        FROM lighthousetest.lesson
        WHERE CreatedDate >=DATE_ADD(NOW(), INTERVAL -300 DAY)) as lasttenmonth
        FROM lighthousetest.lesson 
        WHERE CreatedDate >=DATE_ADD(NOW(), INTERVAL -90 DAY);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getcountlessontype` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcountlessontype`(in p_ID int)
BEGIN
select count(lesson.LessonTypeID)as total, (select count(ID) from lesson)as totallesson  from lesson where LessonTypeID =p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getcounttype` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcounttype`(in p_ID int)
BEGIN
select count(lesson.TypeID)as total, (select count(ID) from lesson)as totallesson  from lesson where TypeID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getdepartmentBybarchartSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getdepartmentBybarchartSQL`()
BEGIN
select dp.Name as deprt,COUNT(DepartmentID) as total,(select count(ID) from lesson) as totallesson
    FROM lesson les 
    Inner join department dp on dp.ID = les.DepartmentID 
    GROUP BY  DepartmentID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getdepartmentBybarSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getdepartmentBybarSQL`()
BEGIN
SELECT Name as deprt FROM lighthousetest.department;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDepartmentIDByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDepartmentIDByName`(in p_Name varchar(200))
BEGIN
SELECT ID FROM lighthousetest.department WHERE Name = p_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getdepartmentsbyid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getdepartmentsbyid`(in p_ID int)
BEGIN
select ID,Name,Description,Indexing from lighthousetest.department  where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getfreesearchByFilterSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getfreesearchByFilterSQL`(in p_Name varchar(200))
BEGIN
select les.Title, les.ID,pro.ID as projecttypeID,pro.Name as projecttype,les.Recommendation,
        les.RootCause,les.IssueDescription,lt.Name as lessontypeName,pr.LPN,pr.ID as projectID,pr.Name as ProjectName,us.Email as Email,p.ID as PhaseID,p.Name as phase,im.ID as impactlevelID,
        im.Name as impactlevel,Imp.ID as ImpactcategoryID,mil.ID as milestoneID,mil.Name as milestone,imp.Name as impactcategory,les.CreatedDate,t.Name as Type
        from lesson les
        Inner join lessontype lt on lt.ID =les.LessonTypeID
        Inner join project pr on pr.ID =les.ProjectID
        Inner join projecttype pro on pro.ID =les.ProjectTypeID
        Inner join user us on us.ID = les.UserID
        Inner join phase p on p.ID =les.PhaseID
        Inner join impactlevel im on im.ID =les.ImpactLevelID
        Inner join milestone mil on mil.ID = les.MilestoneID
        Inner join type t on t.ID =les.TypeID
        inner join impactcategory imp on imp.ID =les.ImpactCategoryID where pro.Name=p_Name or  pr.Name=p_Name or p.Name=p_Name or im.Name=p_Name or imp.Name=p_Name or t.Name=p_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getFrequency` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getFrequency`()
BEGIN
SELECT ID, Name FROM lighthousetest.notificationrepeat;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getFunctionIDByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getFunctionIDByName`(in p_Name varchar(200))
BEGIN
SELECT ID FROM lighthousetest.functions WHERE Name = p_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getfunctionsbyid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getfunctionsbyid`(in p_ID int)
BEGIN
select ID,Name,Description,Indexing from lighthousetest.functions  where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getfunctionsByUserPieChartSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getfunctionsByUserPieChartSQL`()
BEGIN
SELECT fun.Name as functions,COUNT(FunctionID) as total
        FROM lesson les 
        Inner join functions fun on fun.ID = les.FunctionID 
        GROUP BY functions;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getGoogleUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getGoogleUser`(in g_Email VARCHAR(200), in g_IsEnabled int)
BEGIN
SELECT gu.ID,gu.Name,gu.Email,gu.Picture FROM googleuser gu
        INNER JOIN user ur on ur.Email = gu.Email
        where gu.Email = g_Email and gu.IsEnabled = g_IsEnabled;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getGoogleUserBYEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getGoogleUserBYEmail`(in g_Email VARCHAR(200), in g_IsEnabled int)
BEGIN
      SELECT ID,Name,Email,Picture FROM googleuser 
        where Email = g_Email and IsEnabled = g_IsEnabled;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getimpactcategoryBybarchartSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getimpactcategoryBybarchartSQL`()
BEGIN
select imp.Name as impact,COUNT(ImpactCategoryID) as total,(select count(ID) from lesson) as totallesson
        FROM lesson les 
        Inner join impactcategory imp on imp.ID = les.ImpactCategoryID 
        GROUP BY  ImpactCategoryID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getimpactcategorybyid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getimpactcategorybyid`(in p_ID int)
BEGIN
select ID,Name,Description,Indexing from lighthousetest.impactcategory  where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getImpactCategoryIDByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getImpactCategoryIDByName`(in p_Name varchar(200))
BEGIN
SELECT ID FROM lighthousetest.impactcategory WHERE Name =p_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getimpactlevelbyid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getimpactlevelbyid`(in p_ID int)
BEGIN
select ID,Name,Description,Indexing from lighthousetest.impactlevel  where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getImpactLevelIDByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getImpactLevelIDByName`(in p_Name varchar(200))
BEGIN
SELECT ID FROM lighthousetest.impactlevel WHERE Name = p_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getkeywordbarchartSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getkeywordbarchartSQL`()
BEGIN
SELECT Name, COUNT(Name) AS Appearances FROM mappinglessonkeyword map
     inner join keyword ky on ky.ID = map.KeywordID GROUP BY Name ORDER BY Appearances desc limit 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getLessonAttachmentSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLessonAttachmentSQL`(in l_ID int)
BEGIN
SELECT att.OriginalName,att.Url
    FROM  lighthousetest.mappinglessonattachment mla
    INNER JOIN attachment att on mla.AttachmentID = att.ID where mla.LessonID=l_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getLessonByIDSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLessonByIDSQL`(in p_ID int)
BEGIN
SELECT ID,ProjectID,ProcessID,Title FROM lighthousetest.lesson where ID in (p_ID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getlessonProcess` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getlessonProcess`(in l_ID int)
BEGIN
select COUNT(ul.Likes) as likes, les.Recommendation,lt.Name as lessontypeName,lf.ID as lifecycleID,lf.Name as lifecycle,
        les.RootCause,les.ProcessID,les.Title,les.LessonTypeID,les.IssueDescription,les.CreatedDate,les.UserID ,us.Email as Email,
        im.Name as impactlevel,im.ID as impactlevelID,imp.Name as impactcategory,imp.ID as impactcategoryID,les.ID as LessonID,t.Name as Type,t.ID as TypeID,f.Name as functions,f.ID as functionID,d.Name as department,d.ID as departmentID, proc.ID as processID, proc.Name as Name,usles.Description as useruseful
        from lesson les
        Inner join lessontype lt on lt.ID =les.LessonTypeID
        Inner join user us on us.ID = les.UserID
        Inner join impactlevel im on im.ID =les.ImpactLevelID
        inner join impactcategory imp on imp.ID =les.ImpactCategoryID
        Inner join type t on t.ID =les.TypeID
        Inner join department d on d.ID =les.DepartmentID
        Inner Join functions f on f.ID =les.FunctionID
        Inner Join process proc on proc.ID =les.ProcessID
        Inner join lifecycle lf on lf.ID = les.LifeCycleID
        left join userusefullesson usles on usles.LessonID=les.ID
        left Join userlike ul on ul.lessonID = les.ID where les.LessonTypeID=2 and les.ID=l_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getlessonProject` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getlessonProject`(in l_ID int)
BEGIN
select COUNT(ul.Likes) as likes,pro.Name as projecttype,pro.ID as projecttypeID, les.Recommendation,lf.ID as lifecycleID,lf.Name as lifecycle,
        les.RootCause,les.ProcessID,les.Title,les.LessonTypeID,les.IssueDescription,les.CreatedDate,les.UserID ,lt.Name as lessontypeName,pr.ID as projectID,pr.LPN,pr.Name as projectname,us.Email as Email,p.Name as phase,p.ID as phaseID,
        im.Name as impactlevel,im.ID as impactlevelID,mil.Name as milestones,mil.ID as milestonesID,imp.Name as impactcategory,imp.ID as impactcategoryID,les.ID as LessonID,t.Name as Type,t.ID as TypeID,f.Name as functions,f.ID as functionID,d.Name as department,d.ID as departmentID,usles.Description as useruseful
        from lesson les
        Inner join lessontype lt on lt.ID =les.LessonTypeID
        Inner join project pr on pr.ID =les.ProjectID
        Inner join projecttype pro on pro.ID =les.ProjectTypeID
        Inner join user us on us.ID = les.UserID
        Inner join phase p on p.ID =les.PhaseID
        Inner join impactlevel im on im.ID =les.ImpactLevelID
        Inner join milestone mil on mil.ID = les.MilestoneID
        inner join impactcategory imp on imp.ID =les.ImpactCategoryID
        Inner join type t on t.ID =les.TypeID
        Inner join department d on d.ID =les.DepartmentID
        Inner Join functions f on f.ID =les.FunctionID
        Inner join lifecycle lf on lf.ID = les.LifeCycleID
        left join userusefullesson usles on usles.LessonID=les.ID
        left Join userlike ul on ul.lessonID = les.ID where les.LessonTypeID=1 and les.ID=l_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getlifecyclebyid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getlifecyclebyid`(in p_ID int)
BEGIN
select ID,Name,Description,Indexing from lighthousetest.lifecycle  where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getLifeCycleIDByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLifeCycleIDByName`(in p_Name varchar(200))
BEGIN
SELECT ID FROM lighthousetest.lifecycle WHERE Name = p_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getmilestoneByUserPieChartSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getmilestoneByUserPieChartSQL`(in p_ID int)
BEGIN
SELECT mil.Name as milestone,COUNT(MilestoneID) as total
        FROM lesson les 
        Inner join milestone mil on mil.ID = les.MilestoneID where ProjectTypeID=p_ID
        GROUP BY milestone;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMilestoneIDByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMilestoneIDByName`(in p_Name varchar(200))
BEGIN
SELECT ID FROM lighthousetest.milestone WHERE Name = p_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getmilestonesbyid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getmilestonesbyid`(in p_ID int)
BEGIN
select ID,Name,Description,Indexing from lighthousetest.milestone  where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPendingUserByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPendingUserByID`(in p_ID int)
BEGIN
SELECT ID, Name, GivenName, FamilyName, Picture, Email, CreatedDate  FROM lighthousetest.googleuser WHERE ID = p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getphaseBybarchartSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getphaseBybarchartSQL`(in p_ID int)
BEGIN
select pha.Name as phase,COUNT(PhaseID) as total,(select count(ID) from lesson) as totallesson
        FROM lesson les 
        Inner join phase pha on pha.ID = les.PhaseID where ProjectTypeID=p_ID
        GROUP BY  phase;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPhaseIDByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPhaseIDByName`(in p_Name varchar(200))
BEGIN
SELECT ID FROM lighthousetest.phase WHERE Name = p_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getphasesbyid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getphasesbyid`(in p_ID int)
BEGIN
select ID,Name,Description,Indexing from lighthousetest.phase  where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getprocessbyid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getprocessbyid`(in p_ID int)
BEGIN
select ID,Name,Description,Indexing from lighthousetest.process  where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProcessIDByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProcessIDByName`(in p_Name varchar(200))
BEGIN
SELECT ID FROM lighthousetest.process WHERE Name =p_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getprojectbyid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getprojectbyid`(in p_ID int)
BEGIN
select ID,Name,Description,LPN,Indexing from lighthousetest.project  where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getprojectBypiechartSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getprojectBypiechartSQL`(in p_ID int)
BEGIN
select pr.Name as project,COUNT(ProjectID) as total,(select count(ID) from lesson) as totallesson
    FROM lesson les 
    Inner join project pr on pr.ID = les.ProjectID where ProjectTypeID=p_ID
    GROUP BY  project;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProjectIDByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProjectIDByName`(in p_Name varchar(200))
BEGIN
SELECT ID FROM lighthousetest.project WHERE Name = p_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProjectProject` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProjectProject`(in p_projectID int)
BEGIN
SELECT ID,Name,LPN,Description,IsEnabled FROM lighthousetest.project where ID=p_projectID order by Name ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getprojecttypebyid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getprojecttypebyid`(in p_ID int)
BEGIN
select ID,Name,Description,Indexing from lighthousetest.projecttype  where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProjectTypeIDByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProjectTypeIDByName`(in p_Name varchar(200))
BEGIN
SELECT ID FROM lighthousetest.projecttype WHERE Name = p_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `gettypeBypiechartSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `gettypeBypiechartSQL`()
BEGIN
select typ.Name as typ,COUNT(TypeID) as total,(select count(ID) from lesson) as totallesson
        FROM lesson les 
        Inner join type typ on typ.ID = les.TypeID 
        GROUP BY  TypeID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTypeIDByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTypeIDByName`(in p_Name varchar(200))
BEGIN
SELECT ID FROM lighthousetest.type WHERE Name = p_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUserByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getUserByID`(in p_ID int)
BEGIN
SELECT Email,FirstName  FROM lighthousetest.user WHERE ID = p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUserEmailForNotification` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getUserEmailForNotification`()
BEGIN
SELECT Email FROM lighthousetest.user WHERE EmailNotification = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUserIDByEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getUserIDByEmail`(in p_Email varchar(200))
BEGIN
SELECT ID FROM lighthousetest.user WHERE Email = p_Email;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getuserusefulByUserPieChartSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getuserusefulByUserPieChartSQL`(in u_ID int)
BEGIN
SELECT COUNT( userusefullesson.flag ) as "TotalNumber" FROM lighthousetest.userusefullesson WHERE userusefullesson.flag=u_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_lesson` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_lesson`(IN l_ID int)
BEGIN
SELECT * FROM lighthousetest.lesson where ID=l_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `googleUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `googleUser`(in p_Sub VARCHAR(45),in p_Name VARCHAR(45),in p_GivenName VARCHAR(45),in p_FamilyName VARCHAR(45),in p_Picture VARCHAR(2083),in p_Email VARCHAR(200),in p_EmailVerified VARCHAR(10),in p_Hd VARCHAR(45), in p_IsEnabled int, out LID int(10))
BEGIN
INSERT INTO lighthousetest.googleuser (Sub,Name,GivenName,FamilyName,Picture,Email,EmailVerified,Hd, CreatedDate, IsEnabled) VALUES 
            (p_Sub,p_Name,p_GivenName,p_FamilyName,p_Picture,p_Email,p_EmailVerified,p_Hd,now(),p_IsEnabled);
SET LID = LAST_INSERT_ID(); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mappingBulkImportAndErrorSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mappingBulkImportAndErrorSQL`(in p_BulkImportID int, in p_BulkImportErrorID int, out LID int(10))
BEGIN
INSERT INTO lighthousetest.mappingbulkimportbulkimporterror (BulkImportID,BulkImportErrorID) VALUES (p_BulkImportID,p_BulkImportErrorID);
SET LID = LAST_INSERT_ID(); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mappingKeywordLesson` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mappingKeywordLesson`(in p_LessonID int, in p_KeywordID int, out LID int(10))
BEGIN
INSERT INTO lighthousetest.mappinglessonkeyword(LessonID,KeywordID) VALUES( p_LessonID,KeywordID);
SET LID = LAST_INSERT_ID();  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mappingprojectphase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mappingprojectphase`()
BEGIN
SELECT ph.ID,map.phaseID,ph.Name,map.Indexing,map.ID as mid,pr.Name as projecttype
        FROM  mappingprojectphase map
        INNER JOIN projecttype pr on pr.ID = map.ProjecttypeID
        INNER JOIN phase ph on ph.ID =map.PhaseID order by Indexing;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mappingUserRoles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mappingUserRoles`(in p_UserID int, in p_RoleID int, out LID int(10))
BEGIN
INSERT INTO lighthousetest.mappinguserrole (UserID,RoleID) VALUES (p_UserID,p_RoleID);
SET LID = LAST_INSERT_ID(); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mappingUserRolesAccountSettings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mappingUserRolesAccountSettings`(in r_SettRoles int, in r_SettingUserID int)
BEGIN
UPDATE lighthousetest.mappinguserrole SET RoleID=r_SettRoles WHERE UserID=r_SettingUserID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pendingUserDelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pendingUserDelete`(in u_User int)
BEGIN
DELETE from lighthousetest.googleuser where ID = u_User;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateAlldepartmentSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAlldepartmentSQL`(in p_Indexing int, in p_ID int)
BEGIN
update lighthousetest.department SET Indexing=p_Indexing where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateAllfunctionsSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAllfunctionsSQL`(in p_Indexing int, in p_ID int)
BEGIN
update lighthousetest.functions SET Indexing=p_Indexing where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateAllimpactcategorySQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAllimpactcategorySQL`(in p_Indexing int, in p_ID int)
BEGIN
update lighthousetest.impactcategory SET Indexing=p_Indexing where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateAllimpactlevelSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAllimpactlevelSQL`(in p_Indexing int, in p_ID int)
BEGIN
update lighthousetest.impactlevel SET Indexing=p_Indexing where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateAlllifecycleSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAlllifecycleSQL`(in p_Indexing int, in p_ID int)
BEGIN
update lighthousetest.lifecycle SET Indexing=p_Indexing where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateAllmappingprojectandmilestoneSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAllmappingprojectandmilestoneSQL`(in p_Indexing int, in p_ID int)
BEGIN
update lighthousetest.mappingprojecttypemilestones SET Indexing=p_Indexing where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateAllmappingprojectandtypeSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAllmappingprojectandtypeSQL`(in p_Indexing int, in p_ID int)
BEGIN
update lighthousetest.mappingprojectprojecttype SET Indexing=p_Indexing where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateAllmappingprojectphaseSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAllmappingprojectphaseSQL`(in p_Indexing int, in p_ID int)
BEGIN
update lighthousetest.mappingprojectphase SET Indexing=p_Indexing where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateAllmilestonesSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAllmilestonesSQL`(in p_Indexing int, in p_ID int)
BEGIN
update lighthousetest.milestone SET Indexing=p_Indexing where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateAllphasesSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAllphasesSQL`(in p_Indexing int, in p_ID int)
BEGIN
update lighthousetest.phase SET Indexing=p_Indexing where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateAllprocessSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAllprocessSQL`(in p_Indexing int, in p_ID int)
BEGIN
update lighthousetest.process SET Indexing=p_Indexing where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateAllprojectsSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAllprojectsSQL`(in p_Indexing int, in p_ID int)
BEGIN
update lighthousetest.updateAllprojectsSQL SET Indexing=p_Indexing where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateAllprojecttypeSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAllprojecttypeSQL`(in p_Indexing int, in p_ID int)
BEGIN
update lighthousetest.projecttype SET Indexing=p_Indexing where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateAvatarImage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAvatarImage`(in a_picture VARCHAR(2083), in a_Email  VARCHAR(200), in a_IsEnabled int)
BEGIN
UPDATE lighthousetest.googleuser SET Picture=a_picture WHERE Email=a_Email and IsEnabled=a_IsEnabled;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateBulkSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateBulkSQL`(in b_fileName VARCHAR(100), in b_filePath VARCHAR(2083), in b_ID int)
BEGIN
update lighthousetest.bulkimport SET ErrorFileName=b_fileName,ErrorFilePath=b_filePath where ID=b_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatedepartmentSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatedepartmentSQL`(in p_Name varchar(100), in p_ID int)
BEGIN
     update lighthousetest.department SET Name=p_Name where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatefunctionSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatefunctionSQL`(in p_Name varchar(100), in p_ID int)
BEGIN
     update lighthousetest.functions SET Name=p_Name where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateGoogleUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateGoogleUser`(in p_IsEnabled int, in p_Email VARCHAR(200))
BEGIN
UPDATE lighthousetest.googleuser SET IsEnabled=p_IsEnabled WHERE Email=p_Email;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateimpactcategorySQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateimpactcategorySQL`(in p_Name varchar(100), in p_ID int)
BEGIN
     update lighthousetest.impactcategory SET Name=p_Name where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateimpactlevelSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateimpactlevelSQL`(in p_Name varchar(100), in p_ID int)
BEGIN
     update lighthousetest.impactlevel SET Name=p_Name where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatelifecycleSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatelifecycleSQL`(in p_Name varchar(100), in p_ID int)
BEGIN
     update lighthousetest.lifecycle SET Name=p_Name where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatemilestonesSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatemilestonesSQL`(in p_Name varchar(100), in p_ID int)
BEGIN
     update lighthousetest.milestone SET Name=p_Name where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatephasesSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatephasesSQL`(in p_Name varchar(100), in p_ID int)
BEGIN
     update lighthousetest.phase SET Name=p_Name where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateProcessLessonBybulk` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateProcessLessonBybulk`(in l_User int,in l_LessonTypeID int,in l_LifeCycleID int,in l_ProcessID int,in l_TypeID int,in l_ImpactCategoryID int,in l_ImpactLevelID int,in l_FunctionID int,in l_DepartmentID int,in l_CreatedBy int,in l_ID int)
BEGIN
update lighthousetest.lesson SET UserID=l_User, LessonTypeID=l_LessonTypeID,LifeCycleID=l_LifeCycleID,ProcessID=l_ProcessID,TypeID=l_TypeID,ImpactCategoryID=l_ImpactCategoryID,ImpactLevelID=l_ImpactLevelID,FunctionID=l_FunctionID ,DepartmentID=l_DepartmentID, CreatedBy=l_CreatedBy where ID=l_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateProcesslessonSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateProcesslessonSQL`(in l_UserID int,in l_LessonTypeID int,in l_ProcessID int,in l_TypeID int,in l_ImpactCategoryID int,in l_ImpactLevelID int,in l_FunctionID int,in l_LifeCycleID int,in l_DepartmentID int,in l_Title VARCHAR(250),in l_IssueDescription VARCHAR(1000),in l_RootCause VARCHAR(1000),in l_Recommendation VARCHAR(1000),in l_UpdatedBy int,in l_ID int)
BEGIN
update lighthousetest.lesson SET UserID=l_UserID,LessonTypeID=l_LessonTypeID,ProcessID=l_ProcessID,TypeID=l_TypeID,ImpactCategoryID=l_ImpactCategoryID,ImpactLevelID=l_ImpactLevelID,FunctionID=l_FunctionID,LifeCycleID=l_LifeCycleID,DepartmentID=l_DepartmentID,Title=l_Title,IssueDescription=l_IssueDescription,RootCause=l_RootCause,Recommendation=l_Recommendation,UpdatedBy=l_UpdatedBy,UpdatedDate=now()where ID=l_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateprocessSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateprocessSQL`(in p_Name varchar(100), in p_ID int)
BEGIN
     update lighthousetest.process SET Name=p_Name where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateProjectLessonBybulk` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateProjectLessonBybulk`(in l_User int,in l_LessonTypeID int,in l_LifeCycleID int,in l_ProjectTypeID int,in l_TypeID int,in l_ProjectID int,in l_PhaseID int,in l_ImpactCategoryID int,in l_ImpactLevelID int,in l_MilestoneID int,in l_FunctionID int,in l_DepartmentID int,in l_CreatedBy int,in l_ID int)
BEGIN
update lighthousetest.lesson SET UserID=l_User, LessonTypeID=l_LessonTypeID,LifeCycleID=l_LifeCycleID,ProjectTypeID=l_ProjectTypeID,TypeID=l_TypeID,ProjectID=l_ProjectID,PhaseID=l_PhaseID,ImpactCategoryID=l_ImpactCategoryID,ImpactLevelID=l_ImpactLevelID,MilestoneID=l_MilestoneID,FunctionID=l_FunctionID ,DepartmentID=l_DepartmentID, CreatedBy=l_CreatedBy where ID=l_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateProjectlessonSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateProjectlessonSQL`(in l_UserID int,in l_LessonTypeID int,in l_ProjectTypeID int,in l_ProjectID int,in l_PhaseID int,in l_TypeID int,in l_ImpactCategoryID int,in l_ImpactLevelID int,in l_MilestoneID int,in l_FunctionID int,in l_LifeCycleID int,in l_DepartmentID int,in l_Title VARCHAR(250),in l_IssueDescription VARCHAR(1000),in l_RootCause VARCHAR(1000),in l_Recommendation VARCHAR(1000),in l_UpdatedBy int,in l_ID int)
BEGIN
update lighthousetest.lesson SET UserID=l_UserID, LessonTypeID=l_LessonTypeID, ProjectTypeID=l_ProjectTypeID, ProjectID=l_ProjectID, PhaseID=l_PhaseID, TypeID=l_TypeID, ImpactCategoryID=l_ImpactCategoryID, ImpactLevelID=l_ImpactLevelID, MilestoneID=l_MilestoneID, FunctionID=l_FunctionID, LifeCycleID=l_LifeCycleID, DepartmentID=l_DepartmentID, Title=l_Title, IssueDescription=l_IssueDescription, RootCause=l_RootCause, Recommendation=l_Recommendation, UpdatedBy=l_UpdatedBy, UpdatedDate=now() where ID=l_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateprojectSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateprojectSQL`(in p_Name varchar(100), in p_ID int)
BEGIN
     update lighthousetest.project SET Name=p_Name where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateProjectsSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateProjectsSQL`(in p_LPN VARCHAR(50), in p_ID int)
BEGIN
update lighthousetest.project SET LPN=p_LPN where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateprojecttypeSQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateprojecttypeSQL`(in p_Name varchar(100), in p_ID int)
BEGIN
     update lighthousetest.projecttype SET Name=p_Name where ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userAccountSettings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userAccountSettings`(in p_UserID int, in p_FirstName VARCHAR(100), in p_LastName VARCHAR(100), in p_EmailNotification TINYINT(1), in p_IsEnabled int, in p_ID int)
BEGIN
UPDATE lighthousetest.user
        SET FirstName=p_FirstName,LastName=p_LastName,UpdatedBy=p_UserID,EmailNotification=p_EmailNotification, UpdatedDate=now(), IsEnabled=p_IsEnabled
        WHERE ID=p_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userRegistration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userRegistration`(in p_FirstName varchar(100),in p_LastName varchar(100), in p_Email varchar(200), in p_EmailNotification int, in p_CreatedBy int, in p_IsEnabled int, out LID int(10))
BEGIN
INSERT INTO lighthousetest.user (FirstName,LastName,Email,EmailNotification,CreatedBy,CreatedDate,IsEnabled) VALUES 
            (p_FirstName,p_LastName,p_Email,p_EmailNotification,p_CreatedBy,now(),p_IsEnabled);
SET LID = LAST_INSERT_ID();  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-25 14:08:09
