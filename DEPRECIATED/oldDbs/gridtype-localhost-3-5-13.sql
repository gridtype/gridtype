# ************************************************************
# Sequel Pro SQL dump
# Version 4004
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.9)
# Database: gridtype
# Generation Time: 2013-03-06 01:14:28 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table albums
# ------------------------------------------------------------

DROP TABLE IF EXISTS `albums`;

CREATE TABLE `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `full_txt` text NOT NULL,
  `private` int(1) NOT NULL,
  `rank` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;

INSERT INTO `albums` (`id`, `name`, `url`, `full_txt`, `private`, `rank`, `owner`)
VALUES
	(1,'Family','Family','Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',0,9999,1),
	(3,'Something','Something','Nullam id dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla non metus auctor fringilla. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper.',0,9997,1),
	(4,'Garak','Garak','Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nulla vitae elit libero, a pharetra augue. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo.',0,9996,2),
	(6,'Visual Research','Visual-Research','A Course - My Work',0,9994,4),
	(7,'Some Work Album','Some-Work-Album','Test',0,9993,4),
	(8,'Infographics','Infographics','Some Info',0,9992,1);

/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ci_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ci_sessions`;

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`)
VALUES
	('20edcc12bc966334c1de685c6a1c674b','108.20.78.49','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.79 Safari/537.4',1349984924,''),
	('3a139a5df412d2280e889fdef3a5a230','108.20.78.49','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.79 Safari/537.4',1349984924,'a:1:{s:9:\"user_data\";s:0:\"\";}'),
	('ae1ab96f70a25abfb5f91c814b3a4bbf','198.115.64.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.79 Safari/537.4',1349986299,''),
	('d0963aaa4d8b4073871e240d2a656532','198.115.64.20','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.79 Safari/537.4',1349986299,''),
	('65edf82d2bb5055d52268ac2e2a81a2e','108.20.78.49','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4',1349999667,''),
	('3f76e627a1fa789d141c17429b72d2cd','108.20.78.49','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4',1350222364,'a:1:{s:9:\"user_data\";s:0:\"\";}'),
	('7a0e29c18235fe5cc90c33ad9d8ad7fd','108.20.78.49','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4',1350234824,'a:1:{s:9:\"user_data\";s:0:\"\";}'),
	('335ef772e7ef9870f52de4af6ec25839','108.34.228.181','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.79 Safari/537.4',1350224047,''),
	('97e2c0d36a7494a0a78e65b7a59f4a1e','108.34.228.181','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.79 Safari/537.4',1350224047,''),
	('6bafbb3278d43f1097bcbb7cba878242','65.96.149.96','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.14 (KHTML, like Gecko) Version/6.0.1 Safari/536.26.14',1350224975,''),
	('765acd182d5905515ab268aa214c6a67','65.96.149.96','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.14 (KHTML, like Gecko) Version/6.0.1 Safari/536.26.14',1350224975,''),
	('81a570c2a0c9b24241b5a2892bf90a0d','108.20.78.49','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4',1350268202,'a:1:{s:9:\"user_data\";s:0:\"\";}'),
	('d485a980130344acf26845111958a0ef','108.20.78.49','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4',1350317490,''),
	('4c4d7a2c87ab4a2a299a59fe985e1264','205.172.21.124','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4',1350327335,'a:1:{s:9:\"user_data\";s:0:\"\";}'),
	('bd1ed5273810a1a187adcec219557354','205.172.21.124','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4',1350403667,'a:1:{s:9:\"user_data\";s:0:\"\";}'),
	('182070370aae18ff2d51d5db34d1572d','205.172.21.24','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4',1350425573,'a:1:{s:9:\"user_data\";s:0:\"\";}'),
	('63a06b04fc1d4961b23147b0897e0eb8','158.121.134.173','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4',1351512654,'a:1:{s:9:\"user_data\";s:0:\"\";}'),
	('35d5f571aa2f88b004ce1df40847b2c1','108.20.78.49','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4',1352067420,''),
	('44296e3d2fefb28d5519043b9e771558','108.20.78.49','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4',1352067420,''),
	('4dfb7669dc19871a9595061c0db0cb0e','108.20.78.49','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:15.0) Gecko/20100101 Firefox/15.0.1',1352067876,''),
	('90214ea0e3a7c95e990c45cd4f20875c','108.20.78.49','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:15.0) Gecko/20100101 Firefox/15.0.1',1352067876,''),
	('9852ed145ae30e069c93c3658e9aec0a','108.20.78.49','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353007496,''),
	('7177ec2b3fb9c7b797191bf1ecd7c30d','108.20.78.49','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353289564,''),
	('90fce6567f2dae0dcfbd38a37de501da','65.96.149.96','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353290931,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('b30a8e5e193e32e06a2bd0b9ba7fa2bf','65.96.149.96','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353290632,''),
	('23d4fb8ac886f1614852b8bd855ebe53','65.96.149.96','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353290931,''),
	('f3f99299cd23e708bd79ac4d6ed80e10','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353722643,''),
	('27d16aee0318a260a61c0287b12a6796','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353722643,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('358c27b0e5190c392c7b47d1eb2adcef','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353727586,''),
	('f39efe964b84cfdd11d884a890e5c9ae','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353727586,''),
	('4020b8761c4beb2509ba87bf35488f2d','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353728132,''),
	('5bc2f1b78449da8767a4cae544554fca','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353729731,''),
	('a514aa52c458bcd6497faab58f758296','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353729731,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('350c6d8ec41fc8151975f5ec656913c1','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353731350,''),
	('820062d4ea4546c33fb821d8be774103','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353731350,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('42a42d7da5d1d5ac2b46280209184306','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353732088,''),
	('d33bcd5495e5c2339e6c67fd6ba78671','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353732088,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('e8fd89fe9ebe95e171f03e305b05b29a','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353817191,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('5c56f92811dff8a563bdbb2a7516209c','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353817191,''),
	('b7a924eb0fe498ab3b26b8112f2fc792','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353893264,''),
	('91becdbecbf5c35c0909af265cdc21cc','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353893264,''),
	('0c41a55b40cf034e85cd90eb3f6750ca','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353893283,''),
	('6c854316cbc10c4f2007765f3793b1d3','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353893283,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('b9793420f5348aac8563beb919e03756','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353895386,''),
	('4b260948c46cab231bc31523f8cce387','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353987525,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('75fa78f059af02da23674f7b86f57356','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353987525,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('cef80c188f61fb6141ceceab227ae635','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353987596,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('a17c020e9850bec14ec92720fac7af41','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11',1353988189,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('90b1b7677872e4301483541997bbd0e8','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354375090,''),
	('5d603c840e9ff7a1e2ab1bc67cc8b8a4','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354470756,''),
	('096ec99e1619991251d4de1b956aa002','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354470756,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:19:\"jessemarple@mac.com\";s:2:\"id\";s:1:\"3\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:5:\"jesse\";s:9:\"logged_in\";b:1;}'),
	('a49a1a8ea71f1d6537a7f7671cb38634','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354472497,''),
	('644e9a0a025578fa449d6825fb8c5c50','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354481298,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:19:\"jessemarple@mac.com\";s:2:\"id\";s:1:\"3\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:5:\"jesse\";s:9:\"logged_in\";b:1;}'),
	('e55ba96f87ae7a289048c5eda93418cb','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354481581,''),
	('f38e3a22dcfcd47f17fa59416a6b4032','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354481581,''),
	('aa1d28b84b7fbc2a238fe6037d4e7dc8','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354481581,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('ca8112e570c265cbad2464b53864b677','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354500166,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('fe9455c7071ce21dade9ca57aaddab66','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354483332,''),
	('e0507eac9a686f35e7ae32cb094b54c6','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354509076,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('7907ef622493fd61436d171297c39bbf','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354592732,''),
	('588ec1fad68ec5078f4e53634e0c0044','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354985351,''),
	('593861cdaf595042ff8018aff8e2193e','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354510186,''),
	('03581831c9ef7a3df2809c927efabc51','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354510708,''),
	('abedba30b0a325463b71e1fd43b68e1f','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354510737,''),
	('57baca8a458baf045f4f844d329a3f17','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354511305,''),
	('80e86ebeed4a93b382424e8a0f66d76d','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354511350,''),
	('770b5eea264701002574f079405404b1','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354592828,''),
	('39e438748ef0532fff3e6e10bba0e915','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354593063,''),
	('350fb7999ed93789396b11780d69bbb7','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354669648,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:26:\"jesse@zocaloconsulting.com\";s:2:\"id\";s:1:\"5\";s:4:\"role\";s:1:\"a\";s:8:\"username\";s:2:\"jm\";s:9:\"logged_in\";b:1;}'),
	('c50e36a8cb7fe36737d3339c1420e65d','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354676777,''),
	('91fad5141885d9ed8e174c03ac133f76','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354678798,''),
	('7efa14f32207d567cda1c7d7b0f0c569','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354682987,''),
	('8db22a95033ceffbd4f538cbd49bc614','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354756704,''),
	('4e219e959aeb38bd34bc886841828e06','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354760159,''),
	('66c943ed91e5da50d60ab65b2e9933ad','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354760403,''),
	('64bec456928d5bbcda6ff98fb35b53a9','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1354985351,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('227df3d7fb0ead60fc3c1563f3d41f97','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1355023406,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('44231b77776697492f5f26feca6ed665','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1355105110,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('153c3bd3b4862194f21601596abff1de','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1355105110,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('6b3b3b912e9d02bd668e79bfeea53721','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1355113329,''),
	('12e4b5dfe282e06a1c4666142facd9be','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1355544862,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('1572cbdbabee0db99632f117abf5c57a','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11',1355544862,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('d2e45da617b02be1bff5b7d062ad5538','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11',1356139816,''),
	('223f6ba9af125d7bd4b7695538a68e4f','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11',1356144013,''),
	('6185b39d09cbab684454ec43084be4c3','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11',1356146509,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:26:\"jesse@zocaloconsulting.com\";s:2:\"id\";s:1:\"5\";s:4:\"role\";s:4:\"user\";s:8:\"username\";s:12:\"Jesse Marple\";s:9:\"logged_in\";b:1;}'),
	('6031ed623ecb2390af067d1b4d2ea79f','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11',1356144043,''),
	('7e610fbd5b4d29e991d37960a6cd5d0c','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11',1356146509,''),
	('a928adc12cb0a40f63e92a7508fa56b3','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11',1356149551,''),
	('8f10fd50b028f98098e5e321b5954a84','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11',1356149551,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:26:\"jesse@zocaloconsulting.com\";s:2:\"id\";s:1:\"5\";s:4:\"role\";s:4:\"user\";s:8:\"username\";s:12:\"Jesse Marple\";s:9:\"logged_in\";b:1;}'),
	('64d90cd6731bb94657da26f2b541c9aa','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11',1356921101,''),
	('61e3f26144c62014a67cbf76115b3672','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11',1356978974,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:26:\"jesse@zocaloconsulting.com\";s:2:\"id\";s:1:\"5\";s:4:\"role\";s:4:\"user\";s:8:\"username\";s:12:\"Jesse Marple\";s:9:\"logged_in\";b:1;}'),
	('005014a1271698df3306b09f33281782','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11',1357957657,''),
	('4bc5c405361cc3b806ea7cb44346b8d3','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11',1356979760,''),
	('6a1a39189e6d0a7a84b26f72f0171662','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11',1356979824,''),
	('42760f32d4c5be0631c629d881db6288','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11',1356980188,''),
	('6526cf4e6502484a35803dccf25d7c0c','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11',1356980204,''),
	('de91d1e4b59df4122a958718bc8abf34','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11',1357093068,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('d48e9d506f162ba371d8a672a2908bc4','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11',1357873193,''),
	('d24af6de7fda00b7154185e4461197e3','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11',1357957657,''),
	('c4570721d91db3e98bad53212c073dd7','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17',1357994735,''),
	('71f094ca356d51a9fdf3b1a4a18dc278','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17',1358042940,''),
	('bf1b0889bdf24ab3ddb7413fe646b3b1','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17',1358124181,''),
	('5a37e16127ef618e7947305fd85bf04a','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17',1358563732,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('1b4813a760e4483a32e72fa5285e8259','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17',1359063578,''),
	('a993167a564e86dfa9f7a3cd572e598b','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17',1358565554,''),
	('89a85aefe8555680c6d6ae8066fe3e32','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17',1358565586,''),
	('424db5ae2948e675d15f7bf31dd95ef3','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17',1358651719,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('71e8742e2ee9c694415b94bc08509f2d','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17',1358995153,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('9e684040c9fdf781b80e0a56368e9839','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17',1358995300,''),
	('f2ebabb60c53bd4af8767f2e2f573165','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17',1358995320,''),
	('b54e1c96bb9012c5f9b966421686ad97','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17',1358996111,''),
	('01c61ef6866989fb89e9b0f55f6d6a9f','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17',1358996199,''),
	('783e24dee42f12104f342868a449ec45','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17',1358996866,''),
	('93d4a3d061a03677ef10d723bccd8858','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17',1358996866,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('6979b904336a5b4d319ca68de0e2f38a','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17',1359029847,''),
	('42ef3b3cda66495a68b880f3f34adf00','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17',1359247136,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('c0fb97b6ea3192192bec6e838e0ac903','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:18.0) Gecko/20100101 Firefox/18.0',1359163950,''),
	('367bc07fdfa746185210800e91783d0b','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:18.0) Gecko/20100101 Firefox/18.0',1359163950,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:19:\"jessemarple@mac.com\";s:2:\"id\";s:1:\"3\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"jesse\";s:9:\"logged_in\";b:1;}'),
	('767df79bdd9b41db2f7a267c124d425d','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1360635477,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('d0552f75df06988bd68e2fbbad99dec8','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17',1359247150,''),
	('17cb38888afc8a8179307b0b07ca19f8','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17',1359336510,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('2774a9513e2b28bc9f12fa5f0234a51b','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17',1359428432,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"admin\";s:9:\"logged_in\";b:1;}'),
	('56d012e0e106ba0882f6f831b9e8f227','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17',1359517519,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('19f9a406791c75be1a235cb7338c0cbc','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17',1359517519,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('2cb2d2e7dcc66140f7debc8ad4a43725','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1359721953,'a:5:{s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('4fd045787bfd80efeda1bcf665b61594','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1359765511,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('8006b6db453352e0906808f0a000b917','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1359765511,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('babb6cef6403a1e67566b49bb3528105','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1359768229,'a:7:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;s:16:\"flash:old:jgrowl\";s:11:\"image saved\";}'),
	('0aae91ab2a0f52f672fe648eed3c3301','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1359771277,'a:7:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;s:16:\"flash:old:jgrowl\";s:11:\"image saved\";}'),
	('2a7ac900c7d20609e9b7859f2f20f9b3','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1359778301,''),
	('9693000f9bc2785a1880fd923c5536c0','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1359778937,''),
	('6076ff7b91d94e9808a4605575e9f65f','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1359778937,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('82dbc5c8926d9c8d5d36ec0a4182de7d','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1359780160,'a:7:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;s:16:\"flash:old:jgrowl\";s:13:\"Album created\";}'),
	('08fc973999fb497fd42ce91fb10b90c1','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1359782723,''),
	('d558f0743e492dc578b800ef383978ee','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1359782920,''),
	('e543ea10be09ca627f08e9ac358cf834','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1359816276,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('644484393a63d91c5bba5db9ec2f105f','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1359854893,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('3c3ace5e3a5b4852ed762de358ff6707','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1359910473,''),
	('4129eaf99cd6e9dc8e807aa28fd8020a','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1359911584,''),
	('c7e3adf06a53b81b842480ef56daaab9','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1359944647,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('6373b5e6a233e3e2257de4ee5902ec4b','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1360027013,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('f8aae418220603b12c7821ded0ef0b8f','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1360112648,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('1696a46a107612d02885caca36b0b847','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1360121475,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('bdc0f94b01e4c1e21b3133169cfd0d41','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1360154082,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('323906969c5cbce61165ac88a1dd3d34','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',1360635477,''),
	('3295721d50c3827e81be8cea1d821ec2','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22',1361848661,''),
	('3f34f50360958aa3859959afe494fb97','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22',1361918864,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('a4f6b5dff26ba9fbee9aa28dd8317b6c','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22',1361933225,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('51c6b325964f84ee865372ca72bd7d01','10.61.195.46','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22',1361919157,''),
	('341b8c7a16970020dba29ceac762ab0f','10.61.195.46','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22',1361927963,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('040cf74946a58172824f411d9b5631d2','10.61.195.149','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22',1361919172,''),
	('b90dd7ae274554cf67f9ff9b55ea56e3','10.61.195.149','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22',1361925211,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:13:\"matt@demo.com\";s:2:\"id\";s:1:\"4\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:13:\"matt@demo.com\";s:9:\"logged_in\";b:1;}'),
	('62b20c2baa6898ddabc2f6d9bd6beae9','10.61.195.149','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22',1361920090,''),
	('fe4ad1e466984bc6cd946cfb2fb4c51f','10.61.195.149','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22',1361920162,''),
	('0b5447f977a064b5de5aaa934bcf103c','10.61.195.149','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22',1361921046,''),
	('513801da01e3cf9661b066a87166509c','10.61.195.149','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22',1361925211,''),
	('8835503148e65bc3c07588ef7903ac4b','10.61.195.46','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22',1361927963,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('b1483825c7b2df5c6736ae8b9f6c9b9c','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22',1362105564,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('ea540dfbacb1eae1979dda214ee0c4c1','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22',1362184300,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('4efa4c8d600d50593b5d8175530c24bc','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22',1362184300,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('cd052ff5e1ba7853f482a8e1e2d1080b','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362228879,''),
	('c44c458b1d3397a4ee46efbc6f211213','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362258375,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('98f62e319453a28cae5dac4a25e01de3','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362286947,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('c0a773dc2aae880eef3077a5f2f54cf0','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362345265,''),
	('1ad99786d67f7d96c990a45bf0d86c86','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362356467,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('45ca032e03ccd298f9c15c81013d9775','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362362380,''),
	('ac2777b01bc169ddd52975ceb5441841','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362521071,''),
	('887f6ddcd0d3db57063ce8233a1734e3','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362521071,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:16:\"bart@simpson.com\";s:2:\"id\";s:1:\"2\";s:4:\"role\";s:4:\"user\";s:8:\"username\";s:12:\"Bart Simpson\";s:9:\"logged_in\";b:1;}'),
	('7aacb976af8080e025c513ba7b5a6eb1','10.0.1.14','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362522719,''),
	('b79c158869d40e73426036a4c8ae6563','10.0.1.2','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362528753,''),
	('f9ed2a41a00a4f81635a0d96b86a2794','10.0.1.4','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362522741,''),
	('4e59900409e99debae6cea439d8503ad','10.0.1.4','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362522741,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:16:\"bart@simpson.com\";s:2:\"id\";s:1:\"2\";s:4:\"role\";s:4:\"user\";s:8:\"username\";s:12:\"Bart Simpson\";s:9:\"logged_in\";b:1;}'),
	('222aff36a06af18a2d8beff219260b65','10.0.1.14','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362523063,''),
	('acc803f0775a8381176390f5bf56820d','10.0.1.14','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362527199,''),
	('9b60af28316b43a04b23e0226a219ecc','10.0.1.14','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362527199,''),
	('d132a6c0ae4a87c79d903e4836a54d35','10.0.1.2','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362528753,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('60d4bff1428aad36e83d11a6a646a60e','10.0.1.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22',1362528776,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:16:\"bart@simpson.com\";s:2:\"id\";s:1:\"2\";s:4:\"role\";s:4:\"user\";s:8:\"username\";s:12:\"Bart Simpson\";s:9:\"logged_in\";b:1;}');

/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` longtext,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` longtext NOT NULL,
  `objective` longtext NOT NULL,
  `image` varchar(128) NOT NULL DEFAULT '',
  `image_type` varchar(5) NOT NULL DEFAULT '',
  `highlight` int(1) NOT NULL,
  `rank` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flagged` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;

INSERT INTO `images` (`id`, `album`, `name`, `description`, `objective`, `image`, `image_type`, `highlight`, `rank`, `owner`, `timestamp`, `flagged`)
VALUES
	(2,1,'Kaaaaaaaaaahhhhhhhn!','','','/uploads/gallery-1/mrmarple-669390346_16658392','.jpg',0,1359771356,1,'2013-02-01 21:15:56',0),
	(3,1,'Tutu','','','/uploads/gallery-1/mrmarple-279944190248682977_16658392','.jpg',0,1359771381,1,'2013-02-01 21:16:21',0),
	(4,1,'Teddy','','','/uploads/gallery-1/mrmarple-469885133_16658392','.jpg',0,1359774867,1,'2013-02-01 22:14:27',0),
	(5,1,'Tasty Bunny!','','','/uploads/gallery-1/mrmarple-147281655562044732_16658392','.jpg',0,1359780545,1,'2013-02-01 23:49:05',0),
	(6,3,'My Ladies','','','/uploads/gallery-3/mrmarple-295736309185840663_16658392','.jpg',0,1359782248,1,'2013-02-02 00:17:28',0),
	(7,4,'Order','This is AWESOME but it could be better.','Open Source!','/uploads/gallery-4/mrmarple-290056600468915854_16658392','.jpg',0,1359782911,2,'2013-02-02 00:28:31',0),
	(12,6,'This is my work','','','/uploads/gallery-6/wch-beta','.jpg',0,1361924527,4,'2013-02-26 19:22:07',0),
	(13,6,'Another Design for Research','','','/uploads/gallery-6/site-draft','.jpg',0,1361924549,4,'2013-02-26 19:22:29',0),
	(14,6,'A website for my class','','','/uploads/gallery-6/splash','.png',0,1361924570,4,'2013-02-26 19:22:50',0),
	(15,7,'SOme people working in a class during the day','','','/uploads/gallery-7/photo-1','.JPG',0,1361927189,4,'2013-02-26 20:06:29',0),
	(16,7,'Zocalabs Business Card Front','','','/uploads/gallery-7/zl-card-front','.jpg',0,1361927211,4,'2013-02-26 20:06:51',0),
	(17,4,'Steven Paul Jobs','He\'s super awesome and handsome.','To be like the Master.','/uploads/gallery-4/Steven_Paul_Jobs_by_dylanroscover','.jpg',0,1362528977,2,'2013-03-05 19:16:17',0),
	(18,8,'Venn Diagram Comparison','Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.','Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.','/uploads/gallery-8/tfac-vd','.png',0,1362529347,1,'2013-03-05 19:22:27',0);

/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` text NOT NULL,
  `page_content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `page_title`, `page_content`)
VALUES
	(1,'About','<span>The following criteria are being proposed for my graduate school thesis on building a student work assessment tool for graphic design. The top level are the labels for each pull-down menu, and each choice 1-5 underneath is the rating for each section. </span></p><p class=\"c4\"><span></span></p><p class=\"c4\"><span></span></p><p class=\"c5\"><span class=\"c3\">First Impression - </span><span class=\"c1\">First impression is the gut feeling of the viewer. If you had to sum-up the piece in these words, what would it be?</span></p><ol class=\"c8\" start=\"1\"><li class=\"c0\"><span class=\"c6\">Boring and Drab </span><span class=\"c2\">(Not impressive or motivating, have seen this many times)</span></li><li class=\"c0\"><span class=\"c6\">Typical and Tired </span><span class=\"c2\">(Have seen this type of thing before many times)</span></li><li class=\"c0\"><span class=\"c6\">Satisfactory </span><span class=\"c2\">(Nicely done, meets requirements)</span></li><li class=\"c0\"><span class=\"c6\">Motivational </span><span class=\"c2\">(Nicely done, can strike a conversation)</span></li><li class=\"c0\"><span class=\"c6\">Persuasive </span><span class=\"c2\">(Excellent, makes people change their behavior)</span></li></ol><p class=\"c4\"><span class=\"c3\"></span></p><p class=\"c5\"><span class=\"c3\">Concept - </span><span class=\"c1\">Beyond the first impression, how does the concept show through in this piece? Is the concept clear and unique?</span></p><ol class=\"c8\" start=\"1\"><li class=\"c0\"><span class=\"c6\">Not Apparent </span><span class=\"c2\">(Lost on the integration of the concept)</span></li><li class=\"c0\"><span class=\"c6\">Weak </span><span class=\"c2\">(Concept is there, but barely integrated with the form)</span></li><li class=\"c0\"><span class=\"c6\">Obvious </span><span class=\"c2\">(Concept is very apparent and literal)</span></li><li class=\"c0\"><span class=\"c6\">Smart </span><span class=\"c2\">(Concept is integrated into the form in an interesting way)</span></li><li class=\"c0\"><span class=\"c6\">Memorable </span><span class=\"c2\">( Concept is strongly integrated, and in a unique way)</span></li></ol><p class=\"c4\"><span class=\"c3\"></span></p><p class=\"c5\"><span class=\"c3\">Craft/Form Execution - </span><span class=\"c1\">How does the visual execution meet the concept?</span></p><ol class=\"c8\" start=\"1\"><li class=\"c0\"><span class=\"c6\">Unacceptable </span><span class=\"c2\">(Not impressive or motivating, have seen this many times)</span></li><li class=\"c0\"><span class=\"c6\">Acceptable </span><span class=\"c2\">(Details of the form are considered, but could use more work)</span></li><li class=\"c0\"><span class=\"c6\">Good </span><span class=\"c2\">(Form is nicely executed, minor erros)</span></li><li class=\"c0\"><span class=\"c6\">Carefully Executed </span><span class=\"c2\">(Form is nicely executed, treated with care)</span></li><li class=\"c0\"><span class=\"c6\">Exquisite </span><span class=\"c2\">(Form is extremely pleasing, could be considered complete)</span></li></ol><p class=\"c4\"><span class=\"c3\"></span></p><p class=\"c5\"><span class=\"c3\">Need for Iteration - </span><span class=\"c1\">Could the piece benefit from continued revisions?</span></p><ol class=\"c8\" start=\"1\"><li class=\"c0\"><span class=\"c6\">Needs Serious Revision</span></li><li class=\"c0\"><span class=\"c6\">Would benefit from a many revisions</span></li><li class=\"c0\"><span class=\"c6\">Would benefit from only a few more revisions</span></li><li class=\"c0\"><span class=\"c6\">Close to deliverable </span></li><li class=\"c0\"><span class=\"c6\">Deliver it</span></li></ol>');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ratings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ratings`;

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `criteria1` varchar(255) NOT NULL,
  `criteria2` varchar(255) NOT NULL,
  `criteria3` varchar(255) NOT NULL,
  `criteria4` varchar(255) NOT NULL,
  `criteria5` text NOT NULL,
  `piece_id` varchar(255) NOT NULL,
  `piece_owner` int(11) NOT NULL,
  `rating_user` int(11) NOT NULL,
  `faculty` int(1) NOT NULL DEFAULT '0',
  `last_rated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;

INSERT INTO `ratings` (`id`, `criteria1`, `criteria2`, `criteria3`, `criteria4`, `criteria5`, `piece_id`, `piece_owner`, `rating_user`, `faculty`, `last_rated_on`)
VALUES
	(24,'1','1','1','1','1','14',4,1,0,'2013-03-05 17:55:02'),
	(23,'5','5','5','5','5','16',4,1,0,'2013-02-26 20:19:41'),
	(22,'2','2','5','1','1','2',1,4,0,'2013-02-26 20:16:25'),
	(21,'5','1','4','1','1','15',4,1,0,'2013-02-26 20:07:48'),
	(20,'2','1','5','2','2','8',1,4,0,'2013-02-26 19:03:54'),
	(18,'4','3','1','3','3','7',2,4,0,'2013-02-26 18:25:05'),
	(19,'1','1','1','1','1','11',4,1,0,'2013-02-26 18:29:56');

/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `summary` text NOT NULL,
  `default_theme` varchar(64) NOT NULL,
  `per_page` int(5) NOT NULL,
  `w` int(4) NOT NULL,
  `h` int(4) NOT NULL,
  `mid_w` int(4) NOT NULL,
  `mid_h` int(4) NOT NULL,
  `thumb_w` int(4) NOT NULL,
  `thumb_h` int(4) NOT NULL,
  `lib` varchar(12) NOT NULL,
  `lib_path` varchar(32) NOT NULL,
  `uploadify_key` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `name`, `summary`, `default_theme`, `per_page`, `w`, `h`, `mid_w`, `mid_h`, `thumb_w`, `thumb_h`, `lib`, `lib_path`, `uploadify_key`)
VALUES
	(1,'GridType','','polaroid',10,0,0,700,400,240,240,'gd','','67218766ca35b89ce5c3f30fd6bc3a97');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `role` enum('admin','manager','user') NOT NULL DEFAULT 'user',
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `role`, `email`, `password`)
VALUES
	(1,'Admin','admin','admin@demo.com','449c07d5e71b90f6dcc5dd9c24f35ad11727fee1'),
	(2,'Bart Simpson','user','bart@simpson.com','1128233a990d13c283f93ca9d11bc76d4ed570a8'),
	(3,'Miss Krabappel','admin','krabappel@school.com','c39f153ca610930f27fafec212321e7ebcd6aef8'),
	(4,'matt@demo.com','admin','matt@demo.com','c414b24e0986aeda7d2f73af04d31a3ccb7b9449');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
