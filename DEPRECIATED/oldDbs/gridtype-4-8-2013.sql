-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2013 at 12:04 AM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gridtype`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `full_txt` text NOT NULL,
  `private` int(1) NOT NULL,
  `rank` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` VALUES(4, 'Typography Work', 'Typography-Work', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nulla vitae elit libero, a pharetra augue. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo.', 0, 9996, 2);
INSERT INTO `albums` VALUES(6, 'Visual Research', 'Visual-Research', 'A Course - My Work', 0, 9994, 4);
INSERT INTO `albums` VALUES(7, 'Some Work Album', 'Some-Work-Album', 'Test', 0, 9993, 4);
INSERT INTO `albums` VALUES(10, 'Posters', 'Posters', 'Posters', 0, 9990, 1);
INSERT INTO `albums` VALUES(12, 'Gallery 12', 'gallery_12', '', 0, 9988, 0);
INSERT INTO `albums` VALUES(13, 'Gallery 13', 'gallery_13', '0', 0, 9987, 0);
INSERT INTO `albums` VALUES(14, 'Matts Album', 'Matts-Album', 'Yo', 0, 9986, 5);
INSERT INTO `albums` VALUES(15, 'Sketches', 'Sketches', '', 0, 9985, 1);
INSERT INTO `albums` VALUES(16, 'Websites', 'Websites', '', 0, 9984, 2);
INSERT INTO `albums` VALUES(17, 'My Infographics', 'My-Infographics', 'collection of info graphic posters', 0, 9983, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` VALUES('20edcc12bc966334c1de685c6a1c674b', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.79 Safari/537.4', 1349984924, '');
INSERT INTO `ci_sessions` VALUES('3a139a5df412d2280e889fdef3a5a230', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.79 Safari/537.4', 1349984924, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `ci_sessions` VALUES('ae1ab96f70a25abfb5f91c814b3a4bbf', '198.115.64.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.79 Safari/537.4', 1349986299, '');
INSERT INTO `ci_sessions` VALUES('d0963aaa4d8b4073871e240d2a656532', '198.115.64.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.79 Safari/537.4', 1349986299, '');
INSERT INTO `ci_sessions` VALUES('65edf82d2bb5055d52268ac2e2a81a2e', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4', 1349999667, '');
INSERT INTO `ci_sessions` VALUES('3f76e627a1fa789d141c17429b72d2cd', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4', 1350222364, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `ci_sessions` VALUES('7a0e29c18235fe5cc90c33ad9d8ad7fd', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4', 1350234824, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `ci_sessions` VALUES('335ef772e7ef9870f52de4af6ec25839', '108.34.228.181', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.79 Safari/537.4', 1350224047, '');
INSERT INTO `ci_sessions` VALUES('97e2c0d36a7494a0a78e65b7a59f4a1e', '108.34.228.181', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.79 Safari/537.4', 1350224047, '');
INSERT INTO `ci_sessions` VALUES('6bafbb3278d43f1097bcbb7cba878242', '65.96.149.96', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.14 (KHTML, like Gecko) Version/6.0.1 Safari/536.26.14', 1350224975, '');
INSERT INTO `ci_sessions` VALUES('765acd182d5905515ab268aa214c6a67', '65.96.149.96', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.14 (KHTML, like Gecko) Version/6.0.1 Safari/536.26.14', 1350224975, '');
INSERT INTO `ci_sessions` VALUES('81a570c2a0c9b24241b5a2892bf90a0d', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4', 1350268202, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `ci_sessions` VALUES('d485a980130344acf26845111958a0ef', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4', 1350317490, '');
INSERT INTO `ci_sessions` VALUES('4c4d7a2c87ab4a2a299a59fe985e1264', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4', 1350327335, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `ci_sessions` VALUES('bd1ed5273810a1a187adcec219557354', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4', 1350403667, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `ci_sessions` VALUES('182070370aae18ff2d51d5db34d1572d', '205.172.21.24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4', 1350425573, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `ci_sessions` VALUES('63a06b04fc1d4961b23147b0897e0eb8', '158.121.134.173', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4', 1351512654, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `ci_sessions` VALUES('35d5f571aa2f88b004ce1df40847b2c1', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4', 1352067420, '');
INSERT INTO `ci_sessions` VALUES('44296e3d2fefb28d5519043b9e771558', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4', 1352067420, '');
INSERT INTO `ci_sessions` VALUES('4dfb7669dc19871a9595061c0db0cb0e', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:15.0) Gecko/20100101 Firefox/15.0.1', 1352067876, '');
INSERT INTO `ci_sessions` VALUES('90214ea0e3a7c95e990c45cd4f20875c', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:15.0) Gecko/20100101 Firefox/15.0.1', 1352067876, '');
INSERT INTO `ci_sessions` VALUES('9852ed145ae30e069c93c3658e9aec0a', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353007496, '');
INSERT INTO `ci_sessions` VALUES('7177ec2b3fb9c7b797191bf1ecd7c30d', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353289564, '');
INSERT INTO `ci_sessions` VALUES('90fce6567f2dae0dcfbd38a37de501da', '65.96.149.96', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353290931, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:1:"a";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('b30a8e5e193e32e06a2bd0b9ba7fa2bf', '65.96.149.96', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353290632, '');
INSERT INTO `ci_sessions` VALUES('23d4fb8ac886f1614852b8bd855ebe53', '65.96.149.96', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353290931, '');
INSERT INTO `ci_sessions` VALUES('f3f99299cd23e708bd79ac4d6ed80e10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353722643, '');
INSERT INTO `ci_sessions` VALUES('27d16aee0318a260a61c0287b12a6796', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353722643, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:1:"a";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('358c27b0e5190c392c7b47d1eb2adcef', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353727586, '');
INSERT INTO `ci_sessions` VALUES('f39efe964b84cfdd11d884a890e5c9ae', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353727586, '');
INSERT INTO `ci_sessions` VALUES('4020b8761c4beb2509ba87bf35488f2d', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353728132, '');
INSERT INTO `ci_sessions` VALUES('5bc2f1b78449da8767a4cae544554fca', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353729731, '');
INSERT INTO `ci_sessions` VALUES('a514aa52c458bcd6497faab58f758296', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353729731, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:1:"a";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('350c6d8ec41fc8151975f5ec656913c1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353731350, '');
INSERT INTO `ci_sessions` VALUES('820062d4ea4546c33fb821d8be774103', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353731350, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:1:"a";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('42a42d7da5d1d5ac2b46280209184306', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353732088, '');
INSERT INTO `ci_sessions` VALUES('d33bcd5495e5c2339e6c67fd6ba78671', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353732088, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:1:"a";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('e8fd89fe9ebe95e171f03e305b05b29a', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353817191, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:1:"a";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('5c56f92811dff8a563bdbb2a7516209c', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353817191, '');
INSERT INTO `ci_sessions` VALUES('b7a924eb0fe498ab3b26b8112f2fc792', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353893264, '');
INSERT INTO `ci_sessions` VALUES('91becdbecbf5c35c0909af265cdc21cc', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353893264, '');
INSERT INTO `ci_sessions` VALUES('0c41a55b40cf034e85cd90eb3f6750ca', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353893283, '');
INSERT INTO `ci_sessions` VALUES('6c854316cbc10c4f2007765f3793b1d3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353893283, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:1:"a";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('b9793420f5348aac8563beb919e03756', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353895386, '');
INSERT INTO `ci_sessions` VALUES('4b260948c46cab231bc31523f8cce387', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353987525, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:1:"a";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('75fa78f059af02da23674f7b86f57356', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353987525, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:1:"a";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('cef80c188f61fb6141ceceab227ae635', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353987596, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:1:"a";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('a17c020e9850bec14ec92720fac7af41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', 1353988189, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:1:"a";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('90b1b7677872e4301483541997bbd0e8', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354375090, '');
INSERT INTO `ci_sessions` VALUES('5d603c840e9ff7a1e2ab1bc67cc8b8a4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354470756, '');
INSERT INTO `ci_sessions` VALUES('096ec99e1619991251d4de1b956aa002', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354470756, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:19:"jessemarple@mac.com";s:2:"id";s:1:"3";s:4:"role";s:1:"a";s:8:"username";s:5:"jesse";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('a49a1a8ea71f1d6537a7f7671cb38634', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354472497, '');
INSERT INTO `ci_sessions` VALUES('644e9a0a025578fa449d6825fb8c5c50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354481298, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:19:"jessemarple@mac.com";s:2:"id";s:1:"3";s:4:"role";s:1:"a";s:8:"username";s:5:"jesse";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('e55ba96f87ae7a289048c5eda93418cb', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354481581, '');
INSERT INTO `ci_sessions` VALUES('f38e3a22dcfcd47f17fa59416a6b4032', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354481581, '');
INSERT INTO `ci_sessions` VALUES('aa1d28b84b7fbc2a238fe6037d4e7dc8', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354481581, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:1:"a";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('ca8112e570c265cbad2464b53864b677', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354500166, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:1:"a";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('fe9455c7071ce21dade9ca57aaddab66', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354483332, '');
INSERT INTO `ci_sessions` VALUES('e0507eac9a686f35e7ae32cb094b54c6', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354509076, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:1:"a";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('7907ef622493fd61436d171297c39bbf', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354592732, '');
INSERT INTO `ci_sessions` VALUES('588ec1fad68ec5078f4e53634e0c0044', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354985351, '');
INSERT INTO `ci_sessions` VALUES('593861cdaf595042ff8018aff8e2193e', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354510186, '');
INSERT INTO `ci_sessions` VALUES('03581831c9ef7a3df2809c927efabc51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354510708, '');
INSERT INTO `ci_sessions` VALUES('abedba30b0a325463b71e1fd43b68e1f', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354510737, '');
INSERT INTO `ci_sessions` VALUES('57baca8a458baf045f4f844d329a3f17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354511305, '');
INSERT INTO `ci_sessions` VALUES('80e86ebeed4a93b382424e8a0f66d76d', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354511350, '');
INSERT INTO `ci_sessions` VALUES('770b5eea264701002574f079405404b1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354592828, '');
INSERT INTO `ci_sessions` VALUES('39e438748ef0532fff3e6e10bba0e915', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354593063, '');
INSERT INTO `ci_sessions` VALUES('350fb7999ed93789396b11780d69bbb7', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354669648, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:26:"jesse@zocaloconsulting.com";s:2:"id";s:1:"5";s:4:"role";s:1:"a";s:8:"username";s:2:"jm";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('c50e36a8cb7fe36737d3339c1420e65d', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354676777, '');
INSERT INTO `ci_sessions` VALUES('91fad5141885d9ed8e174c03ac133f76', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354678798, '');
INSERT INTO `ci_sessions` VALUES('7efa14f32207d567cda1c7d7b0f0c569', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354682987, '');
INSERT INTO `ci_sessions` VALUES('8db22a95033ceffbd4f538cbd49bc614', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354756704, '');
INSERT INTO `ci_sessions` VALUES('4e219e959aeb38bd34bc886841828e06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354760159, '');
INSERT INTO `ci_sessions` VALUES('66c943ed91e5da50d60ab65b2e9933ad', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354760403, '');
INSERT INTO `ci_sessions` VALUES('64bec456928d5bbcda6ff98fb35b53a9', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1354985351, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('227df3d7fb0ead60fc3c1563f3d41f97', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1355023406, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('44231b77776697492f5f26feca6ed665', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1355105110, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('153c3bd3b4862194f21601596abff1de', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1355105110, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('6b3b3b912e9d02bd668e79bfeea53721', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1355113329, '');
INSERT INTO `ci_sessions` VALUES('12e4b5dfe282e06a1c4666142facd9be', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1355544862, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('1572cbdbabee0db99632f117abf5c57a', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1355544862, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('d2e45da617b02be1bff5b7d062ad5538', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11', 1356139816, '');
INSERT INTO `ci_sessions` VALUES('223f6ba9af125d7bd4b7695538a68e4f', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11', 1356144013, '');
INSERT INTO `ci_sessions` VALUES('6185b39d09cbab684454ec43084be4c3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11', 1356146509, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:26:"jesse@zocaloconsulting.com";s:2:"id";s:1:"5";s:4:"role";s:4:"user";s:8:"username";s:12:"Jesse Marple";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('6031ed623ecb2390af067d1b4d2ea79f', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11', 1356144043, '');
INSERT INTO `ci_sessions` VALUES('7e610fbd5b4d29e991d37960a6cd5d0c', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11', 1356146509, '');
INSERT INTO `ci_sessions` VALUES('a928adc12cb0a40f63e92a7508fa56b3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11', 1356149551, '');
INSERT INTO `ci_sessions` VALUES('8f10fd50b028f98098e5e321b5954a84', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11', 1356149551, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:26:"jesse@zocaloconsulting.com";s:2:"id";s:1:"5";s:4:"role";s:4:"user";s:8:"username";s:12:"Jesse Marple";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('64d90cd6731bb94657da26f2b541c9aa', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11', 1356921101, '');
INSERT INTO `ci_sessions` VALUES('61e3f26144c62014a67cbf76115b3672', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11', 1356978974, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:26:"jesse@zocaloconsulting.com";s:2:"id";s:1:"5";s:4:"role";s:4:"user";s:8:"username";s:12:"Jesse Marple";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('005014a1271698df3306b09f33281782', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11', 1357957657, '');
INSERT INTO `ci_sessions` VALUES('4bc5c405361cc3b806ea7cb44346b8d3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11', 1356979760, '');
INSERT INTO `ci_sessions` VALUES('6a1a39189e6d0a7a84b26f72f0171662', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11', 1356979824, '');
INSERT INTO `ci_sessions` VALUES('42760f32d4c5be0631c629d881db6288', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11', 1356980188, '');
INSERT INTO `ci_sessions` VALUES('6526cf4e6502484a35803dccf25d7c0c', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11', 1356980204, '');
INSERT INTO `ci_sessions` VALUES('de91d1e4b59df4122a958718bc8abf34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11', 1357093068, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('d48e9d506f162ba371d8a672a2908bc4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11', 1357873193, '');
INSERT INTO `ci_sessions` VALUES('d24af6de7fda00b7154185e4461197e3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11', 1357957657, '');
INSERT INTO `ci_sessions` VALUES('c4570721d91db3e98bad53212c073dd7', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17', 1357994735, '');
INSERT INTO `ci_sessions` VALUES('71f094ca356d51a9fdf3b1a4a18dc278', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17', 1358042940, '');
INSERT INTO `ci_sessions` VALUES('bf1b0889bdf24ab3ddb7413fe646b3b1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17', 1358124181, '');
INSERT INTO `ci_sessions` VALUES('5a37e16127ef618e7947305fd85bf04a', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17', 1358563732, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('1b4813a760e4483a32e72fa5285e8259', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17', 1359063578, '');
INSERT INTO `ci_sessions` VALUES('a993167a564e86dfa9f7a3cd572e598b', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17', 1358565554, '');
INSERT INTO `ci_sessions` VALUES('89a85aefe8555680c6d6ae8066fe3e32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17', 1358565586, '');
INSERT INTO `ci_sessions` VALUES('424db5ae2948e675d15f7bf31dd95ef3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17', 1358651719, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('71e8742e2ee9c694415b94bc08509f2d', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17', 1358995153, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('9e684040c9fdf781b80e0a56368e9839', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17', 1358995300, '');
INSERT INTO `ci_sessions` VALUES('f2ebabb60c53bd4af8767f2e2f573165', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17', 1358995320, '');
INSERT INTO `ci_sessions` VALUES('b54e1c96bb9012c5f9b966421686ad97', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17', 1358996111, '');
INSERT INTO `ci_sessions` VALUES('01c61ef6866989fb89e9b0f55f6d6a9f', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17', 1358996199, '');
INSERT INTO `ci_sessions` VALUES('783e24dee42f12104f342868a449ec45', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17', 1358996866, '');
INSERT INTO `ci_sessions` VALUES('93d4a3d061a03677ef10d723bccd8858', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.52 Safari/537.17', 1358996866, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('6979b904336a5b4d319ca68de0e2f38a', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17', 1359029847, '');
INSERT INTO `ci_sessions` VALUES('42ef3b3cda66495a68b880f3f34adf00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17', 1359247136, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('c0fb97b6ea3192192bec6e838e0ac903', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:18.0) Gecko/20100101 Firefox/18.0', 1359163950, '');
INSERT INTO `ci_sessions` VALUES('367bc07fdfa746185210800e91783d0b', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:18.0) Gecko/20100101 Firefox/18.0', 1359163950, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:19:"jessemarple@mac.com";s:2:"id";s:1:"3";s:4:"role";s:5:"admin";s:8:"username";s:5:"jesse";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('767df79bdd9b41db2f7a267c124d425d', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1360635477, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('d0552f75df06988bd68e2fbbad99dec8', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17', 1359247150, '');
INSERT INTO `ci_sessions` VALUES('17cb38888afc8a8179307b0b07ca19f8', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17', 1359336510, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('2774a9513e2b28bc9f12fa5f0234a51b', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17', 1359428432, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('56d012e0e106ba0882f6f831b9e8f227', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17', 1359517519, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('19f9a406791c75be1a235cb7338c0cbc', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17', 1359517519, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('2cb2d2e7dcc66140f7debc8ad4a43725', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1359721953, 'a:5:{s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('4fd045787bfd80efeda1bcf665b61594', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1359765511, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('8006b6db453352e0906808f0a000b917', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1359765511, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('babb6cef6403a1e67566b49bb3528105', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1359768229, 'a:7:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;s:16:"flash:old:jgrowl";s:11:"image saved";}');
INSERT INTO `ci_sessions` VALUES('0aae91ab2a0f52f672fe648eed3c3301', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1359771277, 'a:7:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;s:16:"flash:old:jgrowl";s:11:"image saved";}');
INSERT INTO `ci_sessions` VALUES('2a7ac900c7d20609e9b7859f2f20f9b3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1359778301, '');
INSERT INTO `ci_sessions` VALUES('9693000f9bc2785a1880fd923c5536c0', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1359778937, '');
INSERT INTO `ci_sessions` VALUES('6076ff7b91d94e9808a4605575e9f65f', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1359778937, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('82dbc5c8926d9c8d5d36ec0a4182de7d', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1359780160, 'a:7:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;s:16:"flash:old:jgrowl";s:13:"Album created";}');
INSERT INTO `ci_sessions` VALUES('08fc973999fb497fd42ce91fb10b90c1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1359782723, '');
INSERT INTO `ci_sessions` VALUES('d558f0743e492dc578b800ef383978ee', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1359782920, '');
INSERT INTO `ci_sessions` VALUES('e543ea10be09ca627f08e9ac358cf834', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1359816276, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('644484393a63d91c5bba5db9ec2f105f', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1359854893, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('3c3ace5e3a5b4852ed762de358ff6707', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1359910473, '');
INSERT INTO `ci_sessions` VALUES('4129eaf99cd6e9dc8e807aa28fd8020a', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1359911584, '');
INSERT INTO `ci_sessions` VALUES('c7e3adf06a53b81b842480ef56daaab9', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1359944647, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('6373b5e6a233e3e2257de4ee5902ec4b', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1360027013, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('f8aae418220603b12c7821ded0ef0b8f', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1360112648, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('1696a46a107612d02885caca36b0b847', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1360121475, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('bdc0f94b01e4c1e21b3133169cfd0d41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1360154082, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('323906969c5cbce61165ac88a1dd3d34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17', 1360635477, '');
INSERT INTO `ci_sessions` VALUES('3295721d50c3827e81be8cea1d821ec2', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22', 1361848661, '');
INSERT INTO `ci_sessions` VALUES('3f34f50360958aa3859959afe494fb97', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22', 1361918864, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('a4f6b5dff26ba9fbee9aa28dd8317b6c', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22', 1361933225, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('51c6b325964f84ee865372ca72bd7d01', '10.61.195.46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22', 1361919157, '');
INSERT INTO `ci_sessions` VALUES('341b8c7a16970020dba29ceac762ab0f', '10.61.195.46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22', 1361927963, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('040cf74946a58172824f411d9b5631d2', '10.61.195.149', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22', 1361919172, '');
INSERT INTO `ci_sessions` VALUES('b90dd7ae274554cf67f9ff9b55ea56e3', '10.61.195.149', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22', 1361925211, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:13:"matt@demo.com";s:2:"id";s:1:"4";s:4:"role";s:5:"admin";s:8:"username";s:13:"matt@demo.com";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('62b20c2baa6898ddabc2f6d9bd6beae9', '10.61.195.149', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22', 1361920090, '');
INSERT INTO `ci_sessions` VALUES('fe4ad1e466984bc6cd946cfb2fb4c51f', '10.61.195.149', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22', 1361920162, '');
INSERT INTO `ci_sessions` VALUES('0b5447f977a064b5de5aaa934bcf103c', '10.61.195.149', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22', 1361921046, '');
INSERT INTO `ci_sessions` VALUES('513801da01e3cf9661b066a87166509c', '10.61.195.149', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22', 1361925211, '');
INSERT INTO `ci_sessions` VALUES('8835503148e65bc3c07588ef7903ac4b', '10.61.195.46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22', 1361927963, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('b1483825c7b2df5c6736ae8b9f6c9b9c', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22', 1362105564, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('ea540dfbacb1eae1979dda214ee0c4c1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22', 1362184300, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('4efa4c8d600d50593b5d8175530c24bc', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.99 Safari/537.22', 1362184300, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('cd052ff5e1ba7853f482a8e1e2d1080b', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362228879, '');
INSERT INTO `ci_sessions` VALUES('c44c458b1d3397a4ee46efbc6f211213', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362258375, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('98f62e319453a28cae5dac4a25e01de3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362286947, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('c0a773dc2aae880eef3077a5f2f54cf0', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362345265, '');
INSERT INTO `ci_sessions` VALUES('1ad99786d67f7d96c990a45bf0d86c86', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362356467, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('45ca032e03ccd298f9c15c81013d9775', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362362380, '');
INSERT INTO `ci_sessions` VALUES('ac2777b01bc169ddd52975ceb5441841', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362521071, '');
INSERT INTO `ci_sessions` VALUES('2edb41f124f660512d65ff78099900a2', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362533595, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:16:"bart@simpson.com";s:2:"id";s:1:"2";s:4:"role";s:4:"user";s:8:"username";s:12:"Bart Simpson";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('7aacb976af8080e025c513ba7b5a6eb1', '10.0.1.14', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362522719, '');
INSERT INTO `ci_sessions` VALUES('b79c158869d40e73426036a4c8ae6563', '10.0.1.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362528753, '');
INSERT INTO `ci_sessions` VALUES('f9ed2a41a00a4f81635a0d96b86a2794', '10.0.1.4', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362522741, '');
INSERT INTO `ci_sessions` VALUES('4e59900409e99debae6cea439d8503ad', '10.0.1.4', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362522741, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:16:"bart@simpson.com";s:2:"id";s:1:"2";s:4:"role";s:4:"user";s:8:"username";s:12:"Bart Simpson";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('222aff36a06af18a2d8beff219260b65', '10.0.1.14', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362523063, '');
INSERT INTO `ci_sessions` VALUES('acc803f0775a8381176390f5bf56820d', '10.0.1.14', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362527199, '');
INSERT INTO `ci_sessions` VALUES('9b60af28316b43a04b23e0226a219ecc', '10.0.1.14', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362527199, '');
INSERT INTO `ci_sessions` VALUES('d132a6c0ae4a87c79d903e4836a54d35', '10.0.1.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362528753, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('60d4bff1428aad36e83d11a6a646a60e', '10.0.1.3', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362528776, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:16:"bart@simpson.com";s:2:"id";s:1:"2";s:4:"role";s:4:"user";s:8:"username";s:12:"Bart Simpson";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('1e97b1cb1ce92187861eebf70ef3dcca', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.155 Safari/537.22', 1362668169, '');
INSERT INTO `ci_sessions` VALUES('f350c9b0276b1598f5b4de19b268fae1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362533878, '');
INSERT INTO `ci_sessions` VALUES('7ec6f3d608c6dd3e5b41cc93cf4b323a', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1362533878, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('5af0a11faeb2039ce7514a4fb5086f1e', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.155 Safari/537.22', 1362668169, '');
INSERT INTO `ci_sessions` VALUES('e023be6254bbd5447b59dc0ac4f56d13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363570748, '');
INSERT INTO `ci_sessions` VALUES('b8122cb26daae5b1c49f9dbc13fa9572', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363606146, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('9a1861d31a1ff808643c0d6aaebf8185', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363644403, '');
INSERT INTO `ci_sessions` VALUES('ef50e5416384a988fd602d3381c9424c', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363657087, '');
INSERT INTO `ci_sessions` VALUES('6946f7e7b38547ade068c722da98c43f', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363703131, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('5bff46364acce72b081879d5f6f5bfb8', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363712316, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('0b2fd9e8880683aa988e6a9dca822921', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363901188, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('80c9940757e4f544f5995a9db1650b1b', '10.61.194.194', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363907041, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('a3b83cc315a1b91f78834b6129927894', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363901585, '');
INSERT INTO `ci_sessions` VALUES('e5c3e0a9f6a056de19ea11c744f84ceb', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363908715, '');
INSERT INTO `ci_sessions` VALUES('8c640077b92decd2234c2bd86016ee96', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363966097, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('75b315d88bfa1203aace0c1fd290d735', '10.61.194.194', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363904034, '');
INSERT INTO `ci_sessions` VALUES('00ed4264c43cb27071a8a4f222c3876c', '10.61.194.194', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363904507, '');
INSERT INTO `ci_sessions` VALUES('415cdff5bfa1002db78df3fdfaf97aa6', '10.61.194.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363904258, '');
INSERT INTO `ci_sessions` VALUES('79c28a959153fb8ec217c07bac2029f7', '10.61.194.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363904473, '');
INSERT INTO `ci_sessions` VALUES('b4efc27a57cab05e1150e2c8df63128b', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364050113, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('3bc2c604375e319c88e0311891cb27c6', '10.61.194.194', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363905744, '');
INSERT INTO `ci_sessions` VALUES('b9874e509573e525b1e8f3134b4bb806', '10.61.194.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363905255, '');
INSERT INTO `ci_sessions` VALUES('790812ffc3cd850d7e865cd310b4a435', '10.61.194.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363905738, '');
INSERT INTO `ci_sessions` VALUES('8c4137f85c3716dbb029cf7f0bc2c05f', '10.61.194.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363907113, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('e94afd7cbe1f3cee592def41353daaac', '10.61.194.194', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363906275, '');
INSERT INTO `ci_sessions` VALUES('3aaea2aeb386340069a2519b5d59b560', '10.61.194.194', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363907041, '');
INSERT INTO `ci_sessions` VALUES('18565cd258957438835570bd51f94891', '10.61.194.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363907113, '');
INSERT INTO `ci_sessions` VALUES('e3fe0444dd21064d260f85ed08afe0ba', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364000810, '');
INSERT INTO `ci_sessions` VALUES('7094512faae699e4b1e14472ed1a64ff', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364072359, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('41a3ec5bcdede2646322eef70423c10d', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364072359, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('25e8b9be558928ddade158429941350d', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364089916, '');
INSERT INTO `ci_sessions` VALUES('c29dc5ec4f57c7d7e3ac21811b0a7526', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364100368, '');
INSERT INTO `ci_sessions` VALUES('f900e13dcba06e7cf06714720825cda7', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.14 (KHTML, like Gecko)', 1364089968, '');
INSERT INTO `ci_sessions` VALUES('5134392cd19f75074368bfc1d8ae1223', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.14 (KHTML, like Gecko)', 1364147733, '');
INSERT INTO `ci_sessions` VALUES('bfcb86da76d5085042c4a8c8935387be', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364941523, '');
INSERT INTO `ci_sessions` VALUES('a0cdbbbe01290dbd6311544e8f1d86be', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364100650, '');
INSERT INTO `ci_sessions` VALUES('882aaa2b8f02a2de80d916edd0136ddc', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364146935, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('9235b1fe2f1c78e780ca42b043c92f73', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364160608, '');
INSERT INTO `ci_sessions` VALUES('d27bd532eff65922171a1fc11a7f741c', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364176107, '');
INSERT INTO `ci_sessions` VALUES('fdfc96c792204c5cf17f091f12bc90b3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.14 (KHTML, like Gecko)', 1364147733, '');
INSERT INTO `ci_sessions` VALUES('8059794fa226f48bfa08370be027d4fa', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364176216, '');
INSERT INTO `ci_sessions` VALUES('b7faa123af4a5293b9626a98d8b66f69', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364176248, '');
INSERT INTO `ci_sessions` VALUES('fb5a7070e1d80831c2952deb5996b165', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364176265, '');
INSERT INTO `ci_sessions` VALUES('bff5741ad81750a5ad6bcf49e55b1ade', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364176301, '');
INSERT INTO `ci_sessions` VALUES('ae16fa74658821597231cfcf61402e04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364176383, '');
INSERT INTO `ci_sessions` VALUES('d0d52421dc131ce7f315176158c97b4e', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364218553, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('db218e2c1480bf0130fceb2b46ee0ff4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364662613, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('b606a6217554d065e0bd7b367b8e9945', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364672493, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('196d2953b420087976f4d3d99375981a', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364672493, '');
INSERT INTO `ci_sessions` VALUES('052ea0989fcb6b710788485ba1951150', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364942807, '');
INSERT INTO `ci_sessions` VALUES('2134bc09f329f008c181b49bceb4766c', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.14 (KHTML, like Gecko)', 1365366628, '');
INSERT INTO `ci_sessions` VALUES('80462d0daf69c0b960d1caae96b00eea', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365088199, '');
INSERT INTO `ci_sessions` VALUES('eab91725e22f543c3b289bdadb9c1231', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.17 (KHTML, like Gecko) Version/6.0.2 Safari/536.26.17', 1364942396, '');
INSERT INTO `ci_sessions` VALUES('a8bbfef56d348ed3485106d31c90ad4b', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.17 (KHTML, like Gecko) Version/6.0.2 Safari/536.26.17', 1364942422, '');
INSERT INTO `ci_sessions` VALUES('675aca4cc1a6503ebec3c79147f252d4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.17 (KHTML, like Gecko) Version/6.0.2 Safari/536.26.17', 1364954084, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:16:"bart@simpson.com";s:2:"id";s:1:"2";s:4:"role";s:4:"user";s:8:"username";s:12:"Bart Simpson";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('8f0e31925ba8127ee218ed85bde07c85', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.17 (KHTML, like Gecko) Version/6.0.2 Safari/536.26.17', 1364942439, '');
INSERT INTO `ci_sessions` VALUES('3dbda5c57d57de053eea68b53d14fe01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.17 (KHTML, like Gecko) Version/6.0.2 Safari/536.26.17', 1364942450, '');
INSERT INTO `ci_sessions` VALUES('8989d74cf3a5a9214a64f391d2b7d4e3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364947814, '');
INSERT INTO `ci_sessions` VALUES('659815e9c08d6179a9bdb9f246a56b8d', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364947824, '');
INSERT INTO `ci_sessions` VALUES('156993fc30faa3331bb646b7ea5c548d', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364949245, '');
INSERT INTO `ci_sessions` VALUES('ffdd06dd4211c7ac4a671ed04b379403', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364949268, '');
INSERT INTO `ci_sessions` VALUES('8366752ab985b6d957dbae28d44a9fcf', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364949480, '');
INSERT INTO `ci_sessions` VALUES('772cff23b74711989ad7ced089c1f2c7', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364949936, '');
INSERT INTO `ci_sessions` VALUES('483a25f4b5b379a6bca4e4e15ba0012d', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365040441, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:13:"matt@demo.com";s:2:"id";s:1:"4";s:4:"role";s:5:"admin";s:8:"username";s:13:"matt@demo.com";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('adebcaab82857389f6b8eecf9d13d0ba', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.17 (KHTML, like Gecko) Version/6.0.2 Safari/536.26.17', 1364954283, '');
INSERT INTO `ci_sessions` VALUES('cd97032d0886c7eeb08c988626b8bf54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.17 (KHTML, like Gecko) Version/6.0.2 Safari/536.26.17', 1364954283, '');
INSERT INTO `ci_sessions` VALUES('e09af20a92dd40579343b1328ec0a56f', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365041036, '');
INSERT INTO `ci_sessions` VALUES('fd082e3d4e60672eca8489146c79562f', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365076487, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:12:"joe@test.com";s:2:"id";s:1:"6";s:4:"role";s:4:"user";s:8:"username";s:7:"joetest";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('d8fcecfccb15d9bef613d651a8055ab5', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.14 (KHTML, like Gecko)', 1365042601, '');
INSERT INTO `ci_sessions` VALUES('35c6b35444415ff6caddb7fb8f1653f8', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365088699, '');
INSERT INTO `ci_sessions` VALUES('0979d4c6a582a0a5e96374caf99facaa', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365186480, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('51441db07a79cb5569cd89425446a9ab', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365212920, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('cbcf3c39eff4fd31b93f563468d7df3a', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365382884, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('7d098be4daeabbc46f1d0411c4ed0a7a', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365212935, '');
INSERT INTO `ci_sessions` VALUES('7dffd366d6e1fbeef869e2c90cc570f3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365258000, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:16:"bart@simpson.com";s:2:"id";s:1:"2";s:4:"role";s:4:"user";s:8:"username";s:12:"Bart Simpson";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('12eff5d6bfbd4b70e7ee35f3f399ee96', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365260353, '');
INSERT INTO `ci_sessions` VALUES('03fa77baa6027e0d2f8f13a1b765e6ef', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365260618, '');
INSERT INTO `ci_sessions` VALUES('5df600300d382a071c82a44c8546e1f3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365260681, '');
INSERT INTO `ci_sessions` VALUES('ea0dc44310afa4c8c0d3534e042c8b7a', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365261448, '');
INSERT INTO `ci_sessions` VALUES('dc716fae42898c1bf2623b9b00959376', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365261837, '');
INSERT INTO `ci_sessions` VALUES('48e74c31be59489b073c46a953a5d40f', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365261856, '');
INSERT INTO `ci_sessions` VALUES('adb6496a54def6c05c5d4837d36cd877', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365261959, '');
INSERT INTO `ci_sessions` VALUES('15ee447064d88423c48b4599e79b5cad', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365267079, '');
INSERT INTO `ci_sessions` VALUES('8103716145dde341bba29edb1d17732f', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365267176, '');
INSERT INTO `ci_sessions` VALUES('3804beeba90a4a771ea6c5abfde16676', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365269977, '');
INSERT INTO `ci_sessions` VALUES('a116d2544800825f6bb51ab6f353f0d7', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365270011, '');
INSERT INTO `ci_sessions` VALUES('8762e84f8147d978a2ea34037291b57c', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365271171, '');
INSERT INTO `ci_sessions` VALUES('8f594c3ba4e96b7b1f45089f1a72d4f3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365272624, '');
INSERT INTO `ci_sessions` VALUES('01ec92d533aa206517332641d9193d08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365273913, '');
INSERT INTO `ci_sessions` VALUES('24f456781949e0981b5544f8229ee4e3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365366591, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('4ab3a4462735ada928e33d9115c92277', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365367138, '');
INSERT INTO `ci_sessions` VALUES('a348085a40a08176c10105de7e46e734', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.14 (KHTML, like Gecko)', 1365366628, '');
INSERT INTO `ci_sessions` VALUES('eb4230dfaa9c61a55788d58aca7add09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365371906, '');
INSERT INTO `ci_sessions` VALUES('45ca08ffef2a9038cceee964ab8a2258', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365386709, '');
INSERT INTO `ci_sessions` VALUES('11267a96c9fa099659a6564a76545f3b', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365388465, '');
INSERT INTO `ci_sessions` VALUES('24261eb4b94ea86d1f2b33ab22e9b889', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365388465, 'a:7:{s:9:"user_data";s:0:"";s:5:"email";s:13:"matt@demo.com";s:2:"id";s:1:"4";s:4:"role";s:5:"admin";s:8:"username";s:13:"matt@demo.com";s:9:"logged_in";b:1;s:16:"flash:old:jgrowl";s:11:"image saved";}');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` longtext,
  `role` int(1) NOT NULL DEFAULT '0',
  `flagged` int(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` VALUES(1, 13, 1, 'Donec id elit non mi porta gravida at eget metus. Aenean lacinia bibendum nulla sed consectetur. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 0, 0, '2013-03-21 20:06:07');
INSERT INTO `comments` VALUES(2, 13, 2, 'Donec ullamcorper nulla non metus auctor fringilla. Donec sed odio dui. Donec id elit non mi porta gravida at eget metus. Donec ullamcorper nulla non metus auctor fringilla. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum id ligula porta felis euismod semper.', 1, 0, '2013-03-22 22:06:07');
INSERT INTO `comments` VALUES(3, 13, 1, 'asdfasdfa', 0, 0, '2013-03-22 23:27:47');
INSERT INTO `comments` VALUES(4, 13, 1, 'This is pretty fucking cool!', 0, 0, '2013-03-22 23:28:05');
INSERT INTO `comments` VALUES(5, 12, 1, 'This design certainly didn''t last long.', 0, 0, '2013-03-23 12:14:58');
INSERT INTO `comments` VALUES(6, 13, 1, 'Hello', 0, 0, '2013-03-23 16:59:46');
INSERT INTO `comments` VALUES(7, 13, 1, 'Hello Moto', 0, 0, '2013-03-23 17:51:08');
INSERT INTO `comments` VALUES(8, 14, 1, 'Love the use of red', 0, 0, '2013-03-23 22:35:15');
INSERT INTO `comments` VALUES(9, 24, 4, 'The white background seems to separate the content from the background.', 0, 0, '2013-04-02 20:54:57');
INSERT INTO `comments` VALUES(10, 17, 1, 'The type faces in some places are difficult to read. Maybe try increasing the type size for legibility.', 0, 0, '2013-04-03 22:00:09');
INSERT INTO `comments` VALUES(11, 17, 1, 'Steve jobs artwork is great. The type is hard to read in some places', 0, 0, '2013-04-05 14:29:39');
INSERT INTO `comments` VALUES(12, 17, 1, 'Love how the dark background makes the figure pop. Could use a bit more contrast in the foreground.', 0, 0, '2013-04-05 14:36:41');
INSERT INTO `comments` VALUES(13, 17, 1, 'Hello', 0, 0, '2013-04-06 11:04:13');
INSERT INTO `comments` VALUES(14, 28, 5, 'The header is lovely, but a bit big and eating up valuable screen realestate. The video also has nice plcement.', 0, 0, '2013-04-06 12:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` VALUES(12, 6, 'This is my work', '', '', '/uploads/gallery-6/wch-beta', '.jpg', 0, 1361924527, 4, '2013-02-26 19:22:07', 0);
INSERT INTO `images` VALUES(13, 6, 'Another Design for Research', '', '', '/uploads/gallery-6/site-draft', '.jpg', 0, 1361924549, 4, '2013-02-26 19:22:29', 0);
INSERT INTO `images` VALUES(14, 6, 'A website for my class', '', '', '/uploads/gallery-6/splash', '.png', 0, 1361924570, 4, '2013-02-26 19:22:50', 0);
INSERT INTO `images` VALUES(15, 7, 'SOme people working in a class during the day', '', '', '/uploads/gallery-7/photo-1', '.JPG', 0, 1361927189, 4, '2013-02-26 20:06:29', 0);
INSERT INTO `images` VALUES(16, 7, 'Zocalabs Business Card Front', '', '', '/uploads/gallery-7/zl-card-front', '.jpg', 0, 1361927211, 4, '2013-02-26 20:06:51', 0);
INSERT INTO `images` VALUES(17, 4, 'Typographic Illustration', '18x24 Poster made of all typography. For lovers of typography and digital illustration.', 'Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.', '/uploads/gallery-4/Steven_Paul_Jobs_by_dylanroscover', '.jpg', 0, 1362528977, 2, '2013-03-05 19:16:17', 0);
INSERT INTO `images` VALUES(22, 10, 'Degree Infographic', ' ', ' ', '/uploads/gallery-10/csdegree', '.jpg', 0, 1364942040, 1, '2013-04-02 18:34:00', 0);
INSERT INTO `images` VALUES(23, 10, 'MOOC Infographic', ' ', ' ', '/uploads/gallery-10/mooc-umb-v2', '.jpg', 0, 1364942059, 1, '2013-04-02 18:34:19', 0);
INSERT INTO `images` VALUES(24, 15, 'Peter Rand - V1', ' Website design sketch for a book and author', 'How does the white background fit on top of the texture background? ', '/uploads/gallery-15/about', '.jpg', 0, 1364942263, 1, '2013-04-02 18:37:43', 0);
INSERT INTO `images` VALUES(25, 15, 'Business Cards', 'Cards for a new project Why of What', 'Is red the right color based on color theory? ', '/uploads/gallery-15/WhyCard-Idea', '.png', 0, 1364942329, 1, '2013-04-02 18:38:49', 0);
INSERT INTO `images` VALUES(26, 15, 'Business Card Back', 'Business Card backside for a professional development shop', 'Does the language make sense? ', '/uploads/gallery-15/zl-card-back', '.jpg', 0, 1364942358, 1, '2013-04-02 18:39:18', 0);
INSERT INTO `images` VALUES(27, 15, 'Business Card Front', ' Business card front for professional development shop', 'How does the textured look interact with the type? ', '/uploads/gallery-15/zl-card-front', '.jpg', 0, 1364942374, 1, '2013-04-02 18:39:34', 0);
INSERT INTO `images` VALUES(28, 15, 'My Work is an Awesome Poster', ' Poster, 11x17 - 4 color', 'At this scale is the type legible? How about the color usage for the header graphic? ', '/uploads/gallery-15/book-fair-final-part1', '.jpg', 0, 1365040860, 1, '2013-04-03 22:01:00', 0);
INSERT INTO `images` VALUES(29, 17, 'Chart on some ratings', ' ', ' ', '/uploads/gallery-17/mooc-umb-v2', '.jpg', 0, 1365041108, 6, '2013-04-03 22:05:08', 0);
INSERT INTO `images` VALUES(30, 17, 'Second Poster of Data', '11x17', 'Is the color appropriate for the audience (18-34)?', '/uploads/gallery-17/Screen_Shot_2013-03-24_at_10.10_.54_PM_', '.png', 0, 1365041211, 6, '2013-04-03 22:06:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` text NOT NULL,
  `page_content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` VALUES(1, 'About', '<span>The following criteria are being proposed for my graduate school thesis on building a student work assessment tool for graphic design. The top level are the labels for each pull-down menu, and each choice 1-5 underneath is the rating for each section. </span></p><p class="c4"><span></span></p><p class="c4"><span></span></p><p class="c5"><span class="c3">First Impression - </span><span class="c1">First impression is the gut feeling of the viewer. If you had to sum-up the piece in these words, what would it be?</span></p><ol class="c8" start="1"><li class="c0"><span class="c6">Boring and Drab </span><span class="c2">(Not impressive or motivating, have seen this many times)</span></li><li class="c0"><span class="c6">Typical and Tired </span><span class="c2">(Have seen this type of thing before many times)</span></li><li class="c0"><span class="c6">Satisfactory </span><span class="c2">(Nicely done, meets requirements)</span></li><li class="c0"><span class="c6">Motivational </span><span class="c2">(Nicely done, can strike a conversation)</span></li><li class="c0"><span class="c6">Persuasive </span><span class="c2">(Excellent, makes people change their behavior)</span></li></ol><p class="c4"><span class="c3"></span></p><p class="c5"><span class="c3">Concept - </span><span class="c1">Beyond the first impression, how does the concept show through in this piece? Is the concept clear and unique?</span></p><ol class="c8" start="1"><li class="c0"><span class="c6">Not Apparent </span><span class="c2">(Lost on the integration of the concept)</span></li><li class="c0"><span class="c6">Weak </span><span class="c2">(Concept is there, but barely integrated with the form)</span></li><li class="c0"><span class="c6">Obvious </span><span class="c2">(Concept is very apparent and literal)</span></li><li class="c0"><span class="c6">Smart </span><span class="c2">(Concept is integrated into the form in an interesting way)</span></li><li class="c0"><span class="c6">Memorable </span><span class="c2">( Concept is strongly integrated, and in a unique way)</span></li></ol><p class="c4"><span class="c3"></span></p><p class="c5"><span class="c3">Craft/Form Execution - </span><span class="c1">How does the visual execution meet the concept?</span></p><ol class="c8" start="1"><li class="c0"><span class="c6">Unacceptable </span><span class="c2">(Not impressive or motivating, have seen this many times)</span></li><li class="c0"><span class="c6">Acceptable </span><span class="c2">(Details of the form are considered, but could use more work)</span></li><li class="c0"><span class="c6">Good </span><span class="c2">(Form is nicely executed, minor erros)</span></li><li class="c0"><span class="c6">Carefully Executed </span><span class="c2">(Form is nicely executed, treated with care)</span></li><li class="c0"><span class="c6">Exquisite </span><span class="c2">(Form is extremely pleasing, could be considered complete)</span></li></ol><p class="c4"><span class="c3"></span></p><p class="c5"><span class="c3">Need for Iteration - </span><span class="c1">Could the piece benefit from continued revisions?</span></p><ol class="c8" start="1"><li class="c0"><span class="c6">Needs Serious Revision</span></li><li class="c0"><span class="c6">Would benefit from a many revisions</span></li><li class="c0"><span class="c6">Would benefit from only a few more revisions</span></li><li class="c0"><span class="c6">Close to deliverable </span></li><li class="c0"><span class="c6">Deliver it</span></li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` VALUES(24, '1', '1', '1', '1', '1', '14', 4, 1, 0, '2013-03-05 17:55:02');
INSERT INTO `ratings` VALUES(23, '3', '3', '3', '4', '4', '16', 4, 1, 0, '2013-02-26 20:19:41');
INSERT INTO `ratings` VALUES(22, '2', '2', '5', '1', '1', '2', 1, 4, 0, '2013-02-26 20:16:25');
INSERT INTO `ratings` VALUES(21, '5', '1', '4', '1', '1', '15', 4, 1, 0, '2013-02-26 20:07:48');
INSERT INTO `ratings` VALUES(20, '2', '1', '5', '2', '2', '8', 1, 4, 0, '2013-02-26 19:03:54');
INSERT INTO `ratings` VALUES(18, '4', '3', '1', '3', '3', '7', 2, 4, 0, '2013-02-26 18:25:05');
INSERT INTO `ratings` VALUES(19, '1', '1', '1', '1', '1', '11', 4, 1, 0, '2013-02-26 18:29:56');
INSERT INTO `ratings` VALUES(25, '3', '4', '2', '2', '2', '13', 4, 1, 0, '2013-03-05 20:38:22');
INSERT INTO `ratings` VALUES(26, '3', '4', '3', '2', '2', '17', 2, 1, 0, '2013-03-17 21:42:10');
INSERT INTO `ratings` VALUES(27, '3', '4', '2', '2', '2', '23', 1, 4, 0, '2013-04-02 21:05:12');
INSERT INTO `ratings` VALUES(28, '2', '2', '3', '2', '2', '26', 1, 2, 0, '2013-04-02 21:56:03');
INSERT INTO `ratings` VALUES(29, '5', '1', '3', '1', '1', '24', 1, 2, 0, '2013-04-02 21:57:15');
INSERT INTO `ratings` VALUES(30, '3', '2', '4', '2', '2', '30', 6, 2, 0, '2013-04-06 13:39:55');
INSERT INTO `ratings` VALUES(31, '3', '3', '3', '3', '3', '30', 6, 5, 0, '2013-04-06 13:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` VALUES(1, 'GridType', '', 'polaroid', 10, 0, 0, 700, 400, 240, 240, 'gd', '', '67218766ca35b89ce5c3f30fd6bc3a97');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `role` enum('admin','manager','user') NOT NULL DEFAULT 'user',
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(1, 'Admin', 'admin', 'admin@demo.com', '449c07d5e71b90f6dcc5dd9c24f35ad11727fee1');
INSERT INTO `users` VALUES(2, 'Bart Simpson', 'user', 'bart@simpson.com', '5f314545c2f93c0e2f5f07269e82787a631006d1');
INSERT INTO `users` VALUES(3, 'Miss Krabappel', 'admin', 'krabappel@school.com', 'c39f153ca610930f27fafec212321e7ebcd6aef8');
INSERT INTO `users` VALUES(4, 'Matthew White', 'admin', 'matt@demo.com', 'c414b24e0986aeda7d2f73af04d31a3ccb7b9449');
INSERT INTO `users` VALUES(5, 'lisa', 'user', 'lisa@test.com', '6b39bc2757237fe59be26ccfbeeee6eadac92d52');
INSERT INTO `users` VALUES(6, 'joetest', 'user', 'joe@test.com', 'f5609ff57c02cd1f5f353877c73f3fba4ff175d7');
