-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: accounts
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `guid` varchar(32) NOT NULL,
  `name` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `account_type` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `commodity_guid` varchar(32) DEFAULT NULL,
  `commodity_scu` int(11) NOT NULL,
  `non_std_scu` int(11) NOT NULL,
  `parent_guid` varchar(32) DEFAULT NULL,
  `code` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `hidden` int(11) DEFAULT NULL,
  `placeholder` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('034eab4dd4b754b24f75a054e0730a7d','Gas','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'ea7847a71c292cd453efbc1a729a1f1b','','Gas',0,0),('03bcd61244cd2726440d8ee1a6665da9','Bank Service Charge','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Bank Service Charge',0,0),('0898bd31d96d4ea6e380f99d7c459c84','Gifts Received','INCOME','db0f0a11079b45d3246e5cc12085b6f2',100,0,'ad8a36f756379be0dc794786ae96dfe8','','Gifts Received',0,0),('0b33f83ddfb159321a35789f643b125d','Phone','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Phone',0,0),('0c913c13a5ae48c5b160231a24c8f05d','Current Assets','ASSET','db0f0a11079b45d3246e5cc12085b6f2',100,0,'c1bf4daeaa965b03ffaced4c71a10456','','Current Assets',0,1),('14892eb93f7ade721f5fb3ccd2c53750','Insurance','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Insurance',0,0),('1629cd5ecd223ef9373bb2cf7c2e754d','Gas','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'f87e92191a6ef91cf4c9842fe891d4f9','','Gas',0,0),('1d594106073849cd000ec4c69666d95f','Laundry/Dry Cleaning','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Laundry/Dry Cleaning',0,0),('1ef9c9a7759b660bd56977d4a9a08110','Computer','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Computer',0,0),('29a1d95165f6fe1e4f23cb1401efbd30','Miscellaneous','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Miscellaneous',0,0),('3298a4770bcf0937104016ddbb9b81b0','Liabilities','LIABILITY','db0f0a11079b45d3246e5cc12085b6f2',100,0,'e9235bdb592924bc7225d2ef4fac1c5a','','Liabilities',0,1),('3497b029d14dbad304b48615e19f5947','Medical Expenses','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Medical Expenses',0,0),('3c24156ce23cf7f28942194be50fe7ab','Books','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Books',0,0),('3efb8002ad88e5301b9fc5854b1bd7e9','Travel','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'f229915eba9be5d646e2e108d0e8e820','','Travel',0,0),('4186c401c0b26cc652fa1a3456cada6a','Subscriptions','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Subscriptions',0,0),('44e53901460b55a1398ba67b81f4ba6a','Music/Movies','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'f229915eba9be5d646e2e108d0e8e820','','Music/Movies',0,0),('44ea6bb5b4b34e45174db5a0e27b4d13','Dining','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Dining',0,0),('50e0de6c041b8d892811725f1e459775','Other Income','INCOME','db0f0a11079b45d3246e5cc12085b6f2',100,0,'ad8a36f756379be0dc794786ae96dfe8','','Other Income',0,0),('55dad555a41f0d43ef558b64fc31f875','Water','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'ea7847a71c292cd453efbc1a729a1f1b','','Water',0,0),('55ea277fb8e3e6504157df10a362ab06','Adjustment','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Adjustment',0,0),('55fc7b2b36e13f4c5a077cbba5c494e2','Credit Card','CREDIT','db0f0a11079b45d3246e5cc12085b6f2',100,0,'3298a4770bcf0937104016ddbb9b81b0','','Credit Card',0,0),('56a1c7196d6f72ec168f7d9297436155','Charity','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Charity',0,0),('5bde1fc0e498463faa3e39335503cc51','Medicare','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'ea529737443cd86d706cecd7510f7713','','Medicare',0,0),('67a5f4c7a08d6003453c30e345950655','Other Tax','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'ea529737443cd86d706cecd7510f7713','','Other Tax',0,0),('6d0aa50991561068c3a4a42715eb902a','Education','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Education',0,0),('70d8cb6fe159d7ce9a6f14cd52c0f1fd','Other Interest','INCOME','db0f0a11079b45d3246e5cc12085b6f2',100,0,'c48526b98ba188ac35c13baa709b9ae6','','Other Interest',0,0),('72145c234a32d9a7c7ee44fc6beeae9b','Garbage collection','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'ea7847a71c292cd453efbc1a729a1f1b','','Garbage collection',0,0),('72bf253d1e41bcb7f9929f1d6aa39e72','Hobbies','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Hobbies',0,0),('81002853c41bf4cd70a07c568544230d','Repair and Maintenance','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'f87e92191a6ef91cf4c9842fe891d4f9','','Repair and Maintenance',0,0),('819fc03c30c830c1ed0ce34048e5da5f','Groceries','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Groceries',0,0),('843a60c9c223afdea9878969154553a5','Social Security','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'ea529737443cd86d706cecd7510f7713','','Social Security',0,0),('8574aebcbbfa969318384a4a03e2af34','Cash in Wallet','CASH','db0f0a11079b45d3246e5cc12085b6f2',100,0,'0c913c13a5ae48c5b160231a24c8f05d','','Cash in Wallet',0,0),('8afdd229e6f84d463f86e4a10e650ba7','Federal','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'ea529737443cd86d706cecd7510f7713','','Federal',0,0),('8b5404a1a79aa1bf5aac31887085fbad','State/Province','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'ea529737443cd86d706cecd7510f7713','','State/Province',0,0),('8c107023141cf967c64e237c0064f886','Fees','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'f87e92191a6ef91cf4c9842fe891d4f9','','Fees',0,0),('8e47354613ea9daa311caf5f714b3e42','Life Insurance','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'14892eb93f7ade721f5fb3ccd2c53750','','Life Insurance',0,0),('97272dd3e7f9b7f74a5a1acdec22000f','Auto Insurance','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'14892eb93f7ade721f5fb3ccd2c53750','','Auto Insurance',0,0),('99136329ed54d77c80dea544e0c49b28','Expenses','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'e9235bdb592924bc7225d2ef4fac1c5a','','Expenses',0,1),('99c9ded68fa60d19a04cddfea84d4afd','Recreation','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'f229915eba9be5d646e2e108d0e8e820','','Recreation',0,0),('9bd7c46f29f39bd52edb6644380a4cad','Salary','INCOME','db0f0a11079b45d3246e5cc12085b6f2',100,0,'ad8a36f756379be0dc794786ae96dfe8','','Salary',0,0),('9ff1ba133388fb07105a8487087bd7af','Public Transportation','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Public Transportation',0,0),('ad8a36f756379be0dc794786ae96dfe8','Income','INCOME','db0f0a11079b45d3246e5cc12085b6f2',100,0,'e9235bdb592924bc7225d2ef4fac1c5a','','Income',0,1),('b262d6d8f8a75b3797a8ed00652987da','Equity','EQUITY','db0f0a11079b45d3246e5cc12085b6f2',100,0,'e9235bdb592924bc7225d2ef4fac1c5a','','Equity',0,1),('b34d99fe34d2c3079500a2cd44ea372d','Cable','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Cable',0,0),('b68e71e497c6304cf0e14cdc46fda792','Savings Interest','INCOME','db0f0a11079b45d3246e5cc12085b6f2',100,0,'c48526b98ba188ac35c13baa709b9ae6','','Savings Interest',0,0),('b6f237adb691579f9cb2daaea5a39607','Opening Balances','EQUITY','db0f0a11079b45d3246e5cc12085b6f2',100,0,'b262d6d8f8a75b3797a8ed00652987da','','Opening Balances',0,0),('b8499da1970169fb32569b3f4e670d37','Parking','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'f87e92191a6ef91cf4c9842fe891d4f9','','Parking',0,0),('b9b3e8fad67d14d6ff546ddec3c84340','Health Insurance','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'14892eb93f7ade721f5fb3ccd2c53750','','Health Insurance',0,0),('c1bf4daeaa965b03ffaced4c71a10456','Assets','ASSET','db0f0a11079b45d3246e5cc12085b6f2',100,0,'e9235bdb592924bc7225d2ef4fac1c5a','','Assets',0,1),('c48526b98ba188ac35c13baa709b9ae6','Interest Income','INCOME','db0f0a11079b45d3246e5cc12085b6f2',100,0,'ad8a36f756379be0dc794786ae96dfe8','','Interest Income',0,0),('c49b333cb3c50c4144475467218f2aee','Online Services','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Online Services',0,0),('c7e943b289008f52c1ef794dbc6fb1fd','Electric','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'ea7847a71c292cd453efbc1a729a1f1b','','Electric',0,0),('dae864e60544b01df9397dd5f760ff22','Checking Interest','INCOME','db0f0a11079b45d3246e5cc12085b6f2',100,0,'c48526b98ba188ac35c13baa709b9ae6','','Checking Interest',0,0),('de678c3d7792c4b160d413c4f46580ef','Savings Account','BANK','db0f0a11079b45d3246e5cc12085b6f2',100,0,'0c913c13a5ae48c5b160231a24c8f05d','','Savings Account',0,0),('df93de183039e3543758bb49abc6c79d','Supplies','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Supplies',0,0),('e9235bdb592924bc7225d2ef4fac1c5a','Root Account','ROOT',NULL,0,0,NULL,'','',0,0),('ea529737443cd86d706cecd7510f7713','Taxes','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Taxes',0,0),('ea7847a71c292cd453efbc1a729a1f1b','Utilities','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Utilities',0,0),('f060d4a6eeb85231920c4ce401a1db64','Clothes','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Clothes',0,0),('f229915eba9be5d646e2e108d0e8e820','Entertainment','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Entertainment',0,0),('f623a213715bd93fab002fd1473453ff','Checking Account','BANK','db0f0a11079b45d3246e5cc12085b6f2',100,0,'0c913c13a5ae48c5b160231a24c8f05d','','Checking Account',0,0),('f6b78eefc6c1b05351ac506482080058','Template Root','ROOT',NULL,0,0,NULL,'','',0,0),('f87e92191a6ef91cf4c9842fe891d4f9','Auto','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Auto',0,0),('fab9a1ab9a0eb572f38dd3ddc0d8f64f','Bonus','INCOME','db0f0a11079b45d3246e5cc12085b6f2',100,0,'ad8a36f756379be0dc794786ae96dfe8','','Bonus',0,0),('fd5c4d42d4d58cdad74194c4dc1481aa','Gifts','EXPENSE','db0f0a11079b45d3246e5cc12085b6f2',100,0,'99136329ed54d77c80dea544e0c49b28','','Gifts',0,0);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billterms`
--

DROP TABLE IF EXISTS `billterms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billterms` (
  `guid` varchar(32) NOT NULL,
  `name` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `description` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `refcount` int(11) NOT NULL,
  `invisible` int(11) NOT NULL,
  `parent` varchar(32) DEFAULT NULL,
  `type` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `duedays` int(11) DEFAULT NULL,
  `discountdays` int(11) DEFAULT NULL,
  `discount_num` bigint(20) DEFAULT NULL,
  `discount_denom` bigint(20) DEFAULT NULL,
  `cutoff` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billterms`
--

LOCK TABLES `billterms` WRITE;
/*!40000 ALTER TABLE `billterms` DISABLE KEYS */;
/*!40000 ALTER TABLE `billterms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `guid` varchar(32) NOT NULL,
  `root_account_guid` varchar(32) NOT NULL,
  `root_template_guid` varchar(32) NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('3d5d369510c3117e5b42a2423241ca5e','e9235bdb592924bc7225d2ef4fac1c5a','f6b78eefc6c1b05351ac506482080058');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_amounts`
--

DROP TABLE IF EXISTS `budget_amounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_amounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `budget_guid` varchar(32) NOT NULL,
  `account_guid` varchar(32) NOT NULL,
  `period_num` int(11) NOT NULL,
  `amount_num` bigint(20) NOT NULL,
  `amount_denom` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_amounts`
--

LOCK TABLES `budget_amounts` WRITE;
/*!40000 ALTER TABLE `budget_amounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_amounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budgets`
--

DROP TABLE IF EXISTS `budgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budgets` (
  `guid` varchar(32) NOT NULL,
  `name` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `description` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `num_periods` int(11) NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budgets`
--

LOCK TABLES `budgets` WRITE;
/*!40000 ALTER TABLE `budgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `budgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commodities`
--

DROP TABLE IF EXISTS `commodities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commodities` (
  `guid` varchar(32) NOT NULL,
  `namespace` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `mnemonic` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `fullname` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `cusip` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `fraction` int(11) NOT NULL,
  `quote_flag` int(11) NOT NULL,
  `quote_source` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `quote_tz` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commodities`
--

LOCK TABLES `commodities` WRITE;
/*!40000 ALTER TABLE `commodities` DISABLE KEYS */;
INSERT INTO `commodities` VALUES ('db0f0a11079b45d3246e5cc12085b6f2','CURRENCY','EUR','Euro','978',100,1,'currency','');
/*!40000 ALTER TABLE `commodities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `guid` varchar(32) NOT NULL,
  `name` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `id` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `notes` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `active` int(11) NOT NULL,
  `discount_num` bigint(20) NOT NULL,
  `discount_denom` bigint(20) NOT NULL,
  `credit_num` bigint(20) NOT NULL,
  `credit_denom` bigint(20) NOT NULL,
  `currency` varchar(32) NOT NULL,
  `tax_override` int(11) NOT NULL,
  `addr_name` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `addr_addr1` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `addr_addr2` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `addr_addr3` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `addr_addr4` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `addr_phone` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `addr_fax` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `addr_email` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `shipaddr_name` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `shipaddr_addr1` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `shipaddr_addr2` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `shipaddr_addr3` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `shipaddr_addr4` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `shipaddr_phone` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `shipaddr_fax` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `shipaddr_email` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `terms` varchar(32) DEFAULT NULL,
  `tax_included` int(11) DEFAULT NULL,
  `taxtable` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `guid` varchar(32) NOT NULL,
  `username` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `id` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `language` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `acl` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `active` int(11) NOT NULL,
  `currency` varchar(32) NOT NULL,
  `ccard_guid` varchar(32) DEFAULT NULL,
  `workday_num` bigint(20) NOT NULL,
  `workday_denom` bigint(20) NOT NULL,
  `rate_num` bigint(20) NOT NULL,
  `rate_denom` bigint(20) NOT NULL,
  `addr_name` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `addr_addr1` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `addr_addr2` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `addr_addr3` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `addr_addr4` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `addr_phone` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `addr_fax` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `addr_email` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entries` (
  `guid` varchar(32) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_entered` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `description` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `action` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `notes` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `quantity_num` bigint(20) DEFAULT NULL,
  `quantity_denom` bigint(20) DEFAULT NULL,
  `i_acct` varchar(32) DEFAULT NULL,
  `i_price_num` bigint(20) DEFAULT NULL,
  `i_price_denom` bigint(20) DEFAULT NULL,
  `i_discount_num` bigint(20) DEFAULT NULL,
  `i_discount_denom` bigint(20) DEFAULT NULL,
  `invoice` varchar(32) DEFAULT NULL,
  `i_disc_type` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `i_disc_how` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `i_taxable` int(11) DEFAULT NULL,
  `i_taxincluded` int(11) DEFAULT NULL,
  `i_taxtable` varchar(32) DEFAULT NULL,
  `b_acct` varchar(32) DEFAULT NULL,
  `b_price_num` bigint(20) DEFAULT NULL,
  `b_price_denom` bigint(20) DEFAULT NULL,
  `bill` varchar(32) DEFAULT NULL,
  `b_taxable` int(11) DEFAULT NULL,
  `b_taxincluded` int(11) DEFAULT NULL,
  `b_taxtable` varchar(32) DEFAULT NULL,
  `b_paytype` int(11) DEFAULT NULL,
  `billable` int(11) DEFAULT NULL,
  `billto_type` int(11) DEFAULT NULL,
  `billto_guid` varchar(32) DEFAULT NULL,
  `order_guid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gnclock`
--

DROP TABLE IF EXISTS `gnclock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gnclock` (
  `Hostname` varchar(255) DEFAULT NULL,
  `PID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gnclock`
--

LOCK TABLES `gnclock` WRITE;
/*!40000 ALTER TABLE `gnclock` DISABLE KEYS */;
/*!40000 ALTER TABLE `gnclock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `guid` varchar(32) NOT NULL,
  `id` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `date_opened` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `date_posted` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `notes` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `active` int(11) NOT NULL,
  `currency` varchar(32) NOT NULL,
  `owner_type` int(11) DEFAULT NULL,
  `owner_guid` varchar(32) DEFAULT NULL,
  `terms` varchar(32) DEFAULT NULL,
  `billing_id` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `post_txn` varchar(32) DEFAULT NULL,
  `post_lot` varchar(32) DEFAULT NULL,
  `post_acc` varchar(32) DEFAULT NULL,
  `billto_type` int(11) DEFAULT NULL,
  `billto_guid` varchar(32) DEFAULT NULL,
  `charge_amt_num` bigint(20) DEFAULT NULL,
  `charge_amt_denom` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `guid` varchar(32) NOT NULL,
  `id` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `name` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `reference` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `active` int(11) NOT NULL,
  `owner_type` int(11) DEFAULT NULL,
  `owner_guid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lots`
--

DROP TABLE IF EXISTS `lots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lots` (
  `guid` varchar(32) NOT NULL,
  `account_guid` varchar(32) DEFAULT NULL,
  `is_closed` int(11) NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lots`
--

LOCK TABLES `lots` WRITE;
/*!40000 ALTER TABLE `lots` DISABLE KEYS */;
/*!40000 ALTER TABLE `lots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `guid` varchar(32) NOT NULL,
  `id` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `notes` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `reference` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `active` int(11) NOT NULL,
  `date_opened` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_closed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner_type` int(11) NOT NULL,
  `owner_guid` varchar(32) NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prices` (
  `guid` varchar(32) NOT NULL,
  `commodity_guid` varchar(32) NOT NULL,
  `currency_guid` varchar(32) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `source` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `value_num` bigint(20) NOT NULL,
  `value_denom` bigint(20) NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurrences`
--

DROP TABLE IF EXISTS `recurrences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recurrences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_guid` varchar(32) NOT NULL,
  `recurrence_mult` int(11) NOT NULL,
  `recurrence_period_type` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `recurrence_period_start` date NOT NULL,
  `recurrence_weekend_adjust` varchar(2048) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurrences`
--

LOCK TABLES `recurrences` WRITE;
/*!40000 ALTER TABLE `recurrences` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurrences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedxactions`
--

DROP TABLE IF EXISTS `schedxactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedxactions` (
  `guid` varchar(32) NOT NULL,
  `name` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `enabled` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `last_occur` date DEFAULT NULL,
  `num_occur` int(11) NOT NULL,
  `rem_occur` int(11) NOT NULL,
  `auto_create` int(11) NOT NULL,
  `auto_notify` int(11) NOT NULL,
  `adv_creation` int(11) NOT NULL,
  `adv_notify` int(11) NOT NULL,
  `instance_count` int(11) NOT NULL,
  `template_act_guid` varchar(32) NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedxactions`
--

LOCK TABLES `schedxactions` WRITE;
/*!40000 ALTER TABLE `schedxactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedxactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slots`
--

DROP TABLE IF EXISTS `slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_guid` varchar(32) NOT NULL,
  `name` varchar(4096) CHARACTER SET utf8 NOT NULL,
  `slot_type` int(11) NOT NULL,
  `int64_val` bigint(20) DEFAULT NULL,
  `string_val` varchar(4096) CHARACTER SET utf8 DEFAULT NULL,
  `double_val` double DEFAULT NULL,
  `timespec_val` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `guid_val` varchar(32) DEFAULT NULL,
  `numeric_val_num` bigint(20) DEFAULT NULL,
  `numeric_val_denom` bigint(20) DEFAULT NULL,
  `gdate_val` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slots_guid_index` (`obj_guid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slots`
--

LOCK TABLES `slots` WRITE;
/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
INSERT INTO `slots` VALUES (1,'c1bf4daeaa965b03ffaced4c71a10456','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(2,'0c913c13a5ae48c5b160231a24c8f05d','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(3,'3298a4770bcf0937104016ddbb9b81b0','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(4,'ad8a36f756379be0dc794786ae96dfe8','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(5,'99136329ed54d77c80dea544e0c49b28','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(6,'b262d6d8f8a75b3797a8ed00652987da','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(7,'a6474a3266c4e36618c3bc39307e9d44','date-posted',10,0,NULL,0,NULL,NULL,0,1,'2013-12-31'),(8,'1e57112f9b615a0189e7b747d85bddc2','date-posted',10,0,NULL,0,NULL,NULL,0,1,'2013-12-31');
/*!40000 ALTER TABLE `slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `splits`
--

DROP TABLE IF EXISTS `splits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `splits` (
  `guid` varchar(32) NOT NULL,
  `tx_guid` varchar(32) NOT NULL,
  `account_guid` varchar(32) NOT NULL,
  `memo` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `action` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `reconcile_state` varchar(1) CHARACTER SET utf8 NOT NULL,
  `reconcile_date` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `value_num` bigint(20) NOT NULL,
  `value_denom` bigint(20) NOT NULL,
  `quantity_num` bigint(20) NOT NULL,
  `quantity_denom` bigint(20) NOT NULL,
  `lot_guid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `splits_tx_guid_index` (`tx_guid`),
  KEY `splits_account_guid_index` (`account_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `splits`
--

LOCK TABLES `splits` WRITE;
/*!40000 ALTER TABLE `splits` DISABLE KEYS */;
INSERT INTO `splits` VALUES ('46d1de00863f8fbaa31a2d359069395f','a6474a3266c4e36618c3bc39307e9d44','b6f237adb691579f9cb2daaea5a39607','','','n',NULL,-102400,100,-102400,100,NULL),('52f62eb5cfe6fec3fb675b24a1e3d4cd','1e57112f9b615a0189e7b747d85bddc2','8574aebcbbfa969318384a4a03e2af34','','','n',NULL,6734,100,6734,100,NULL),('75295a72eac1477a85c89f8f47170ad8','a6474a3266c4e36618c3bc39307e9d44','f623a213715bd93fab002fd1473453ff','','','n',NULL,102400,100,102400,100,NULL),('9be2ec2077a26bc65209fb0b63acd2b7','4a0466e2e90a6d1b17ccff0ba71712bd','f623a213715bd93fab002fd1473453ff','','','n',NULL,-5000,100,-5000,100,NULL),('9c2731beec6d600b4d67c4dcc015b266','1e57112f9b615a0189e7b747d85bddc2','b6f237adb691579f9cb2daaea5a39607','','','n',NULL,-6734,100,-6734,100,NULL),('ae6e36a1ab533a15d4e8de55a5c666b4','4a0466e2e90a6d1b17ccff0ba71712bd','56a1c7196d6f72ec168f7d9297436155','','','n',NULL,5000,100,5000,100,NULL);
/*!40000 ALTER TABLE `splits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxtable_entries`
--

DROP TABLE IF EXISTS `taxtable_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxtable_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxtable` varchar(32) NOT NULL,
  `account` varchar(32) NOT NULL,
  `amount_num` bigint(20) NOT NULL,
  `amount_denom` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxtable_entries`
--

LOCK TABLES `taxtable_entries` WRITE;
/*!40000 ALTER TABLE `taxtable_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxtable_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxtables`
--

DROP TABLE IF EXISTS `taxtables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxtables` (
  `guid` varchar(32) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `refcount` bigint(20) NOT NULL,
  `invisible` int(11) NOT NULL,
  `parent` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxtables`
--

LOCK TABLES `taxtables` WRITE;
/*!40000 ALTER TABLE `taxtables` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxtables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `guid` varchar(32) NOT NULL,
  `currency_guid` varchar(32) NOT NULL,
  `num` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `post_date` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `enter_date` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `description` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `tx_post_date_index` (`post_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('1e57112f9b615a0189e7b747d85bddc2','db0f0a11079b45d3246e5cc12085b6f2','','2013-12-30 23:00:00','2014-01-02 17:05:42','Opening Balance'),('4a0466e2e90a6d1b17ccff0ba71712bd','db0f0a11079b45d3246e5cc12085b6f2','','2014-01-01 23:00:00','2014-01-02 17:22:38','Donation to Python Software Foundation because Python is cool!'),('a6474a3266c4e36618c3bc39307e9d44','db0f0a11079b45d3246e5cc12085b6f2','','2013-12-30 23:00:00','2014-01-02 17:05:42','Opening Balance');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `guid` varchar(32) NOT NULL,
  `name` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `id` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `notes` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `currency` varchar(32) NOT NULL,
  `active` int(11) NOT NULL,
  `tax_override` int(11) NOT NULL,
  `addr_name` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `addr_addr1` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `addr_addr2` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `addr_addr3` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `addr_addr4` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `addr_phone` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `addr_fax` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `addr_email` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `terms` varchar(32) DEFAULT NULL,
  `tax_inc` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `tax_table` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `table_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `table_version` int(11) NOT NULL,
  PRIMARY KEY (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES ('accounts',1),('billterms',2),('books',1),('budgets',1),('budget_amounts',1),('commodities',1),('customers',2),('employees',2),('entries',3),('Gnucash',2060100),('Gnucash-Resave',19920),('invoices',3),('jobs',1),('lots',2),('orders',1),('prices',2),('recurrences',2),('schedxactions',1),('slots',3),('splits',4),('taxtables',2),('taxtable_entries',3),('transactions',3),('vendors',1);
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-01 13:58:03
