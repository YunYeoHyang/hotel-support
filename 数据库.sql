-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	5.7.21

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


drop database if exists `hotel`;

create database `hotel`;

use hotel;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

-- 用户表
CREATE TABLE `User` (
  `user_id` varchar(36) NOT NULL,
  `user_name` varchar(50) NOT NULL,  -- 用户名
  `password` varchar(50) NOT NULL,   -- 密码
  `nickname` varchar(50) DEFAULT NULL,  -- 昵称
  `order_id` varchar(36) DEFAULT NULL,  -- 订单ID
  `user_status` int(11) NOT NULL,       -- 用户状态
  `collect_id` varchar(36) DEFAULT NULL,  -- 收藏ID
  `stock_id` varchar(36) DEFAULT NULL,    -- 房源ID
  `capital_id` varchar(36) DEFAULT NULL,  -- 资产ID
  `contract_id` varchar(36) DEFAULT NULL, -- 合同ID
  `entrust_id` varchar(36) DEFAULT NULL,  -- 委托ID
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

insert into User(user_id,user_name,password,nickname,user_status,order_id,collect_id,stock_id,capital_id,contract_id,entrust_id) value ('u001','dujingan','123456','diaosi','o001','1','col001','s001','cap001','con001','en001')
--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capital`
--

DROP TABLE IF EXISTS `capital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

-- 资产表
CREATE TABLE `capital` (
  `capital_id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL, -- 所属用户ID
  `remainder` double NOT NULL,    -- 余额
  `integral` int(11) NOT NULL,    -- 积分
  `coupon_id` varchar(36) DEFAULT NULL, -- 优惠卷ID
  PRIMARY KEY (`capital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capital`
--

LOCK TABLES `capital` WRITE;
/*!40000 ALTER TABLE `capital` DISABLE KEYS */;
/*!40000 ALTER TABLE `capital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect`
--

DROP TABLE IF EXISTS `collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

-- 收藏表
CREATE TABLE `collect` (
  `collerct_id` varchar(36) NOT NULL,
  `stock_id` varchar(36) NOT NULL, -- 房源表
  PRIMARY KEY (`collerct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collect`
--

LOCK TABLES `collect` WRITE;
/*!40000 ALTER TABLE `collect` DISABLE KEYS */;
/*!40000 ALTER TABLE `collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

-- 合同表
CREATE TABLE `contract` (
  `contract_id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL, -- 所属用户
  `file_url` varchar(50) NOT NULL,  -- 文件路径
  PRIMARY KEY (`contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrust`
--

DROP TABLE IF EXISTS `entrust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

-- 委托表
CREATE TABLE `entrust` (
  `entrust_id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL, -- 所属用户
  `stock_id` varchar(36) NOT NULL, -- 房源ID
  PRIMARY KEY (`entrust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrust`
--

LOCK TABLES `entrust` WRITE;
/*!40000 ALTER TABLE `entrust` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

-- 户型表
CREATE TABLE `model` (
  `model_id` varchar(36) NOT NULL, -- 户型ID
  `model_name` varchar(50) NOT NULL, -- 户型名称
  PRIMARY KEY (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

-- 订单表
CREATE TABLE `orders` (
  `order_id` varchar(36) NOT NULL,
  `visit_time` date NOT NULL,   -- 看房时间
  `order_status` int(11) NOT NULL,  -- 订单状态
  `stock_id` varchar(36) NOT NULL,  -- 房源ID
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

-- 房源表
CREATE TABLE `stock` (
  `stock_id` varchar(36) NOT NULL,
  `price` double NOT NULL,  -- 价格
  `describe` varchar(100) DEFAULT NULL, -- 描述
  `stock_type` varchar(50) DEFAULT NULL, -- 房源类型
  `model_id` varchar(36) NOT NULL,  -- 户型ID
  `stock_status` int(11) NOT NULL,  -- 房源状态
  `info_id` varchar(36) NOT NULL,   -- 房屋信息ID
  `configure_id` varchar(36) NOT NULL,  -- 配置设施ID
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-28  8:29:50
