-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2013 at 08:17 PM
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` VALUES(1, 'Gallery 1', 'gallery_1', '', 0, 9999, 0);
INSERT INTO `albums` VALUES(2, 'Gallery 2', 'gallery_2', '', 0, 9998, 0);
INSERT INTO `albums` VALUES(3, 'Gallery 3', 'gallery_3', '', 0, 9997, 0);
INSERT INTO `albums` VALUES(26, 'Design Systems', 'Design-Systems', '', 0, 9974, 25);
INSERT INTO `albums` VALUES(5, 'Spring 2013', 'Spring-2013', '', 0, 9995, 34);
INSERT INTO `albums` VALUES(6, 'Album One', 'Album-One', 'stuffs', 0, 9994, 35);
INSERT INTO `albums` VALUES(7, '56th Annual Book Show Catalog', '56th-Annual-Book-Show-Catalog', '', 0, 9993, 25);
INSERT INTO `albums` VALUES(8, 'Album Two', 'Album-Two', 'Things', 0, 9992, 35);
INSERT INTO `albums` VALUES(9, 'Gallery 9', 'gallery_9', '', 0, 9991, 0);
INSERT INTO `albums` VALUES(10, 'Collage', 'Collage', '', 0, 9990, 33);
INSERT INTO `albums` VALUES(11, 'Posters', 'Posters', '', 0, 9989, 30);
INSERT INTO `albums` VALUES(12, 'Posters', 'Posters', 'This album includes all my poster designs ', 0, 9988, 28);
INSERT INTO `albums` VALUES(13, 'Type three', 'Type-three', '', 0, 9987, 27);
INSERT INTO `albums` VALUES(24, 'Photo', 'Photo', '', 0, 9976, 23);
INSERT INTO `albums` VALUES(25, 'Other Things', 'Other-Things', 'There are other things in this album.', 0, 9975, 22);
INSERT INTO `albums` VALUES(23, 'Design', 'Design', '', 0, 9977, 23);
INSERT INTO `albums` VALUES(15, 'Packaging and Presentation Project', 'Packaging-and-Presentation-Project', 'Stuff I made for Packaging and Presentation!', 0, 9985, 22);
INSERT INTO `albums` VALUES(16, 'My Work', 'My-Work', 'A portfolio of my work from 2011 - 2013.', 0, 9984, 0);
INSERT INTO `albums` VALUES(17, 'My Work', 'My-Work', 'A portfolio of my work 2(011 - 2013).', 0, 9983, 32);
INSERT INTO `albums` VALUES(18, 'BFA Thesis', 'BFA-Thesis', 'Sculptures for my BFA Thesis', 0, 9982, 26);
INSERT INTO `albums` VALUES(19, 'Secret Seal', 'Secret-Seal', '', 0, 9981, 27);
INSERT INTO `albums` VALUES(20, 'Screen', 'Screen', 'digital/web work\n', 0, 9980, 30);
INSERT INTO `albums` VALUES(22, 'My Work', 'My-Work', '', 0, 9978, 37);
INSERT INTO `albums` VALUES(27, 'Design', 'Design', '', 0, 9973, 33);
INSERT INTO `albums` VALUES(28, 'Packaging ', 'gallery_28', '', 0, 9972, 28);
INSERT INTO `albums` VALUES(29, 'Gallery 29', 'gallery_29', '', 0, 9971, 0);
INSERT INTO `albums` VALUES(30, 'illustrator', 'illustrator', 'playing around with illustrator', 0, 9970, 26);
INSERT INTO `albums` VALUES(31, 'AIB Lee Cusack', 'AIB-Lee-Cusack', '', 0, 9969, 24);
INSERT INTO `albums` VALUES(33, 'Gallery 33', 'gallery_33', '', 0, 9967, 0);
INSERT INTO `albums` VALUES(35, 'Gallery 35', 'gallery_35', '', 0, 9965, 0);

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
INSERT INTO `ci_sessions` VALUES('5f3908504a2910310b9b39eb62a774a7', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365558056, '');
INSERT INTO `ci_sessions` VALUES('5119a74a8941e3e87329efa6e6f3e71f', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365558056, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('5a7b11cdba11cbaa7cb32b3efe8f2d36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1365969734, '');
INSERT INTO `ci_sessions` VALUES('71b542c7f40f66afd6e5f98b819da85f', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1365982072, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('7e5b7421254c16f62202e6d34c123151', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.14 (KHTML, like Gecko)', 1365969783, '');
INSERT INTO `ci_sessions` VALUES('ce58c3b2cb94fb260a0da56be82b8b8b', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.14 (KHTML, like Gecko)', 1365981124, '');
INSERT INTO `ci_sessions` VALUES('a664b5efabda15626042b24ddee1fc59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1365973266, '');
INSERT INTO `ci_sessions` VALUES('5cd7e795988fc53954495b292af95035', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1365982072, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('47907ee48511be1e8911ae7f91ca473f', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.14 (KHTML, like Gecko)', 1365981124, '');
INSERT INTO `ci_sessions` VALUES('8185abfe4f7bcb17178ee02b011afe6f', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1365996370, '');
INSERT INTO `ci_sessions` VALUES('17058168cde3ae9185674665f01b1526', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/536.28.10 (KHTML, like Gecko)', 1365996481, '');
INSERT INTO `ci_sessions` VALUES('e58ba91c0c281d528b64ac2e293fd72d', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1365996420, '');
INSERT INTO `ci_sessions` VALUES('82af054d4387997d787e0702faab6a66', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1365996698, '');
INSERT INTO `ci_sessions` VALUES('71c89f80c67481384cd423390f392c54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/536.28.10 (KHTML, like Gecko)', 1365996481, '');
INSERT INTO `ci_sessions` VALUES('d65695330bd422805d57045f2b8fdd42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1365996817, '');
INSERT INTO `ci_sessions` VALUES('eb8a56f88382b833d1cadfd08eb2197e', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366000326, '');
INSERT INTO `ci_sessions` VALUES('b396fac86d0310773d562cb113f580a1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366000335, '');
INSERT INTO `ci_sessions` VALUES('f8fa9f599a6395e258b69092fb2e0b0c', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366000335, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('cdbe50a782da998dfdc1c6b9c12c958f', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366000927, '');
INSERT INTO `ci_sessions` VALUES('78404dcb6e0eb4160f778d18b33acef2', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366049183, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:13:"matt@demo.com";s:2:"id";s:1:"4";s:4:"role";s:7:"faculty";s:8:"username";s:13:"Matthew White";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('a6b290d23b74d44b766c3973079746ea', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366064349, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:13:"matt@demo.com";s:2:"id";s:1:"4";s:4:"role";s:7:"faculty";s:8:"username";s:13:"Matthew White";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('e5742f8b804df603d3b229a03c33f326', '170.149.100.10', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366050174, '');
INSERT INTO `ci_sessions` VALUES('86b7c0850643178fa80ff5c57aa900ab', '170.149.100.10', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366050174, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('e50bfc5fa25d2cc90841b0d12d8698bc', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10', 1366052378, '');
INSERT INTO `ci_sessions` VALUES('110b3daa2a748904e0b758c78378e150', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10', 1366080352, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:13:"matt@demo.com";s:2:"id";s:1:"4";s:4:"role";s:7:"faculty";s:8:"username";s:13:"Matthew White";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('8c1ece12be949b84084aae39a5d3f962', '65.96.149.96', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366053200, '');
INSERT INTO `ci_sessions` VALUES('8722d91889b75f765991205fdfecaa9c', '65.96.149.96', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366249573, '');
INSERT INTO `ci_sessions` VALUES('dff1a14ce8052bc85b68501bcbbe3453', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366064349, '');
INSERT INTO `ci_sessions` VALUES('96bb7d698969879df30d0831f66073db', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366079980, '');
INSERT INTO `ci_sessions` VALUES('aaca6a21f8ab9132aed717acb8c6920e', '180.76.5.153', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', 1366114386, '');
INSERT INTO `ci_sessions` VALUES('6ab9aa945f6869fa7b03e892c93eafbd', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366080136, '');
INSERT INTO `ci_sessions` VALUES('68b6018c1f48d6b103afa9901313bffb', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366080204, '');
INSERT INTO `ci_sessions` VALUES('86c6cb585eb42cbde267b48face45f9c', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366080290, '');
INSERT INTO `ci_sessions` VALUES('0dc6b22e603e3a70fd4002c915597b66', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366082157, '');
INSERT INTO `ci_sessions` VALUES('a5494b4751a2fbedbedf8e85f3136c50', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10', 1366080516, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `ci_sessions` VALUES('52d0b4833eb3591056df800d09dee308', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10', 1366080516, '');
INSERT INTO `ci_sessions` VALUES('2c40ad6c5a3e824d8a50e492d53c7584', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366082405, '');
INSERT INTO `ci_sessions` VALUES('25fe9ee831e5c7ea93479cae2e142d32', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366151028, '');
INSERT INTO `ci_sessions` VALUES('e51e5166fcfb7d16d599098b9ecbf386', '180.76.5.153', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', 1366114387, '');
INSERT INTO `ci_sessions` VALUES('50d68823d7c347f00c2d3ed4ce403c7f', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366151451, '');
INSERT INTO `ci_sessions` VALUES('46bc08fcc97b6fc3cf82c88e5d449c02', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366163301, '');
INSERT INTO `ci_sessions` VALUES('733d7fdf2ec4ab1c67783b20d0b507b8', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366219063, '');
INSERT INTO `ci_sessions` VALUES('449a4ffb14d620a5319a2886898cc546', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366151520, '');
INSERT INTO `ci_sessions` VALUES('4ce8cf220af5f73bf8c6b5424b8ff013', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366152548, '');
INSERT INTO `ci_sessions` VALUES('114393397b272eba99b97c66dc6694b9', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366152610, '');
INSERT INTO `ci_sessions` VALUES('72bcb029d80fb600b1113160864fda8c', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366219063, '');
INSERT INTO `ci_sessions` VALUES('6c9812afdd604d550bb2747b6bb8e63c', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366220220, '');
INSERT INTO `ci_sessions` VALUES('d09950aa25da3447c3c53e7dd4035a5c', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366219063, '');
INSERT INTO `ci_sessions` VALUES('af37afd8f693eb6b98bfbe108752d981', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:20.0) Gecko/20100101 Firefox/20.0', 1366219169, '');
INSERT INTO `ci_sessions` VALUES('e4b6523d77888e7c437b93c1dea8a789', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:20.0) Gecko/20100101 Firefox/20.0', 1366219170, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:16:"cchum@lesley.edu";s:2:"id";s:2:"23";s:4:"role";s:4:"user";s:8:"username";s:5:"cchum";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('a97fc68a1c37df69047a6e9cba4ed865', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366219170, '');
INSERT INTO `ci_sessions` VALUES('8221ce852afc9fb04c73e30409f8f042', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366219170, '');
INSERT INTO `ci_sessions` VALUES('4b12ae9b3c2aebad5dbeba7f68edd35e', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:20.0) Gecko/20100101 Firefox/20.0', 1366219178, '');
INSERT INTO `ci_sessions` VALUES('955e08ce331de2a5ea90d7ed94dba9f8', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:20.0) Gecko/20100101 Firefox/20.0', 1366219178, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:18:"rbaker6@lesley.edu";s:2:"id";s:2:"22";s:4:"role";s:4:"user";s:8:"username";s:7:"rbaker6";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('b339ca0146912c7f73db3753246c0dba', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:20.0) Gecko/20100101 Firefox/20.0', 1366219185, '');
INSERT INTO `ci_sessions` VALUES('24c0ba9db4d5a98869abf95ba1efce72', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:20.0) Gecko/20100101 Firefox/20.0', 1366219185, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:16:"mdoan@lesley.edu";s:2:"id";s:2:"28";s:4:"role";s:4:"user";s:8:"username";s:5:"mdoan";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('30725d4f26618a83e1e79c209f80c7c6', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366219187, '');
INSERT INTO `ci_sessions` VALUES('c5f81cac6d733fda2df4b84247edb458', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366219188, '');
INSERT INTO `ci_sessions` VALUES('6d3a3ff71422fb649dfd617c81685580', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366219190, '');
INSERT INTO `ci_sessions` VALUES('ad1b3280f5de91f962ad69b72d0b93f6', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366219190, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:16:"ctupper@test.com";s:2:"id";s:2:"37";s:4:"role";s:4:"user";s:8:"username";s:8:"ctupper1";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('8d942e035b94c8837ec599f6cc74f64e', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31', 1366219195, '');
INSERT INTO `ci_sessions` VALUES('dcc10fd530c6c72a6ea6b55105a01221', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31', 1366219195, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:19:"kkelly13@lesley.edu";s:2:"id";s:2:"30";s:4:"role";s:4:"user";s:8:"username";s:8:"kkelly13";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('cb1d838a31e5297b99e5c5e0a63b352f', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366219240, '');
INSERT INTO `ci_sessions` VALUES('5af070b37bf1e0c0bef4bb96bffb884f', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366230542, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:19:"rrodrig6@lesley.edu";s:2:"id";s:2:"34";s:4:"role";s:4:"user";s:8:"username";s:8:"rrodrig6";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('8a4b7b5ce376d21fb731c30e3499a7ce', '205.172.21.124', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366219244, '');
INSERT INTO `ci_sessions` VALUES('90e9dbc50789aad6213a3dcbccab4bad', '205.172.21.124', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366220340, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:16:"lding@lesley.edu";s:2:"id";s:2:"26";s:4:"role";s:4:"user";s:8:"username";s:5:"lding";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('3f359b26401cf495d0b03f1f90caae04', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366219747, '');
INSERT INTO `ci_sessions` VALUES('c1330fb6fcf58551220affbaf0149eec', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366219747, '');
INSERT INTO `ci_sessions` VALUES('7c5fc677deb7faa37e09e43163ee83b0', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366219977, '');
INSERT INTO `ci_sessions` VALUES('d1a230c8ab69cf052f772780801dfded', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366219977, '');
INSERT INTO `ci_sessions` VALUES('fee32425b93e5d2dc40cd92361b02bcc', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366219979, '');
INSERT INTO `ci_sessions` VALUES('3296f257df842d1ec71cfcdcb6a8d138', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366219979, '');
INSERT INTO `ci_sessions` VALUES('4da023bc8803dbefb65eb9ea23180647', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366219989, '');
INSERT INTO `ci_sessions` VALUES('aa6b89e62cf02328a43c41c8f13c062b', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366219989, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:19:"mtoomaji@lesley.edu";s:2:"id";s:2:"35";s:4:"role";s:4:"user";s:8:"username";s:8:"mtoomaji";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('efea30d48e1000ce9d0fd02caee299e8', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.58.2 (KHTML, like Gecko) Version/5.1.8 Safari/534.58.2', 1366220006, '');
INSERT INTO `ci_sessions` VALUES('fc36db63c147d609464f0a51d4575c74', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.58.2 (KHTML, like Gecko) Version/5.1.8 Safari/534.58.2', 1366220006, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:19:"pdipietr@lesley.edu";s:2:"id";s:2:"27";s:4:"role";s:4:"user";s:8:"username";s:8:"pdipietr";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('2e3b1709b957f8f88539948e22f2f0fa', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220017, '');
INSERT INTO `ci_sessions` VALUES('0ec9f072a2e6433703b56144bbf99c22', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220017, '');
INSERT INTO `ci_sessions` VALUES('ba8025da7c7eb99681a869e6c3963b41', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220023, '');
INSERT INTO `ci_sessions` VALUES('cc63734fc4ba7df8c8bd92bc30df8db6', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220025, '');
INSERT INTO `ci_sessions` VALUES('3f65bdfa314765165487a1ebcfa4ad73', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220142, '');
INSERT INTO `ci_sessions` VALUES('eb60f7d6d193252074625ab7b2f79b86', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220065, '');
INSERT INTO `ci_sessions` VALUES('099a0b3d608ac1559d57fd3f61497cc3', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220065, '');
INSERT INTO `ci_sessions` VALUES('7f643c5d47fd1064bb15989999d5342b', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.26.17 (KHTML, like Gecko) Version/6.0.2 Safari/536.26.17', 1366220108, '');
INSERT INTO `ci_sessions` VALUES('037bb6ea6a232a6f6ae057ed288d9a77', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/536.26.17 (KHTML, like Gecko) Version/6.0.2 Safari/536.26.17', 1366220108, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:18:"sdemers@lesley.edu";s:2:"id";s:2:"25";s:4:"role";s:4:"user";s:8:"username";s:7:"sdemers";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('92aec8d7ade2cc6b59877c687c326aa8', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220142, '');
INSERT INTO `ci_sessions` VALUES('4c7238071974ba4dd31731cc4e79dcb0', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220159, '');
INSERT INTO `ci_sessions` VALUES('24a95feecf4a4ad18af5f5d5f268fad6', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220159, '');
INSERT INTO `ci_sessions` VALUES('753f541b4a64d57d292544c4c4f3e541', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366220179, '');
INSERT INTO `ci_sessions` VALUES('cc77e17e02ee812259196988429b6853', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220162, '');
INSERT INTO `ci_sessions` VALUES('b246aa313752480507b32a3df0db94cb', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220163, '');
INSERT INTO `ci_sessions` VALUES('c27573226673bc5b07159bc02f98351b', '205.172.21.124', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366220340, '');
INSERT INTO `ci_sessions` VALUES('e0eb44ddc392d0ebfcac9cb0a7ecbcae', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366220164, '');
INSERT INTO `ci_sessions` VALUES('075ebd77fe9334ccf6f7884da4bd5b2e', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366220164, '');
INSERT INTO `ci_sessions` VALUES('39edd23cf230d6a25ce5e1c6ea44eef8', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366220218, '');
INSERT INTO `ci_sessions` VALUES('bac2f93d7e1cac6934a570de94de6e41', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366220179, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:19:"rmcquade@lesley.edu";s:2:"id";s:2:"32";s:4:"role";s:4:"user";s:8:"username";s:8:"rmcquade";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('9611d42d37c9a40ce0487db58680d1b9', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366220172, '');
INSERT INTO `ci_sessions` VALUES('e88975a53190692a1b399b0ee7d6daad', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366220172, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:19:"lmille16@lesley.edu";s:2:"id";s:2:"33";s:4:"role";s:4:"user";s:8:"username";s:8:"lmille16";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('ae9fca0e9bdeda5de39b77ece941e75a', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220200, '');
INSERT INTO `ci_sessions` VALUES('f521e41056908eec5ef31f089b1932ff', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220205, '');
INSERT INTO `ci_sessions` VALUES('fd050a6a79e9a2bd287655e989a24a4b', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220209, '');
INSERT INTO `ci_sessions` VALUES('3a2a878763c64d31ea2182ec167da9d3', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220223, '');
INSERT INTO `ci_sessions` VALUES('1c91c6aee6062f2f347c9bd0d9f1dcce', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366239507, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('8e827449c02813b84e3e29578c7c531b', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220235, '');
INSERT INTO `ci_sessions` VALUES('6c386dbe6c836723bc2d59f1f603fae3', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220242, '');
INSERT INTO `ci_sessions` VALUES('89250a615c9fcb9d6020b299b0435a27', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220242, '');
INSERT INTO `ci_sessions` VALUES('7f44d2629f06910ae2c4797d7d41fdfa', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220284, '');
INSERT INTO `ci_sessions` VALUES('02736ad74e8c5fbdf82eaa5551f4dedc', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220288, '');
INSERT INTO `ci_sessions` VALUES('0049e59688992bfd0a27aaf2d3bd333d', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220288, '');
INSERT INTO `ci_sessions` VALUES('ec45bc208f236c9ed0a36c9c14627956', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220393, '');
INSERT INTO `ci_sessions` VALUES('ff15031e1a978d1e3e0c950a7f1a0a00', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220309, '');
INSERT INTO `ci_sessions` VALUES('c8dbceb1fee863f5dc330429924c066c', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220312, '');
INSERT INTO `ci_sessions` VALUES('93c962c02e60f411ddde191a0ac69f2e', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220324, '');
INSERT INTO `ci_sessions` VALUES('2a4cd60bd2ecc834398613f5ff9fab63', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220327, '');
INSERT INTO `ci_sessions` VALUES('05e4bc02c97825bb20cad554849c4689', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220327, '');
INSERT INTO `ci_sessions` VALUES('1c4a88f70b35757ac453f6cce4b3b2da', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220332, '');
INSERT INTO `ci_sessions` VALUES('5ea47eac753bd9adeb6ecb4d44fc122f', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220333, '');
INSERT INTO `ci_sessions` VALUES('6382df58024d91ddead4871474cbb1e2', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220335, '');
INSERT INTO `ci_sessions` VALUES('ea75e39f143dea05110dfaf5fc3530dc', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220338, '');
INSERT INTO `ci_sessions` VALUES('505808bc5ab3ea149e6187d78aec1fcb', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220338, '');
INSERT INTO `ci_sessions` VALUES('8ff5d5787731139822084afa60eef1f1', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220476, '');
INSERT INTO `ci_sessions` VALUES('85a8f9be8de57b4002c34cbb13881c64', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220350, '');
INSERT INTO `ci_sessions` VALUES('0c988ed0e4c644e618c4b881878284d1', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220351, '');
INSERT INTO `ci_sessions` VALUES('f93104760c4785760e0af26779b32fca', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220407, '');
INSERT INTO `ci_sessions` VALUES('a4724d6bdfe1d5e08eea4c5b39704680', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220443, '');
INSERT INTO `ci_sessions` VALUES('6cab93c8f423838586be7102a76fec6a', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220416, '');
INSERT INTO `ci_sessions` VALUES('f63b3b14b61f008bdd761e881ee42488', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220422, '');
INSERT INTO `ci_sessions` VALUES('3dbbedcadc3a4133d3a660882a6668b1', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220446, '');
INSERT INTO `ci_sessions` VALUES('3a19b921d4487d0528f93cca25e471ed', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220460, '');
INSERT INTO `ci_sessions` VALUES('2c99ab4cefa6d1a879f35dc66063c799', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220464, '');
INSERT INTO `ci_sessions` VALUES('20cfb4b64eddb10b6c1f1bd54b1489a9', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220464, '');
INSERT INTO `ci_sessions` VALUES('17639cf7305d45637914bdcbb584ad1d', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220478, '');
INSERT INTO `ci_sessions` VALUES('a461db4a0b8387432be106566b8f4502', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220486, '');
INSERT INTO `ci_sessions` VALUES('b5d877651cda5fdc8472cdd981189c05', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220489, '');
INSERT INTO `ci_sessions` VALUES('4fb5d699364a3deabce732b8a37c77a0', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220491, '');
INSERT INTO `ci_sessions` VALUES('657e3ca5f1486bafa0ece0a0530de690', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220501, '');
INSERT INTO `ci_sessions` VALUES('ab7bc25bde64ae03d6788934e0b15215', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220503, '');
INSERT INTO `ci_sessions` VALUES('a208aa76142e6aee423f14ea5c3f8d5f', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220503, '');
INSERT INTO `ci_sessions` VALUES('87048dddf2e7a3bc4f8558037ce93ee7', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220511, '');
INSERT INTO `ci_sessions` VALUES('7233eb77efaa3e42151f107b3fd5fb03', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220505, '');
INSERT INTO `ci_sessions` VALUES('dee274596122b3129ec55790fc13de19', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220511, '');
INSERT INTO `ci_sessions` VALUES('4db9c01f1e51871dcfd7761c3ab825da', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220565, '');
INSERT INTO `ci_sessions` VALUES('284f5f2bed0dd154fafb2f0d4d46a075', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220589, '');
INSERT INTO `ci_sessions` VALUES('f26341fa57adb43938f4108545ced311', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221169, '');
INSERT INTO `ci_sessions` VALUES('3f840331181713da22195124a4615d5e', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220744, '');
INSERT INTO `ci_sessions` VALUES('c2b2297e88af56707b1054248acdac08', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220675, '');
INSERT INTO `ci_sessions` VALUES('d852fc3c91f94a2bb2185d3de5b817b6', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220614, '');
INSERT INTO `ci_sessions` VALUES('18c6cddc188ea1c191e6f198014b1d29', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220615, '');
INSERT INTO `ci_sessions` VALUES('bdc923c516900dfae01aabcb09473838', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220662, '');
INSERT INTO `ci_sessions` VALUES('127352307665d187fa95d02ba5453386', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220662, '');
INSERT INTO `ci_sessions` VALUES('829b50836fb76234ce0d407c12aeb08b', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220848, '');
INSERT INTO `ci_sessions` VALUES('d7252e9076b1896553ee1b93d5455652', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220690, '');
INSERT INTO `ci_sessions` VALUES('dfa1d01b9263041ac8e4f9a4b60af3a4', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220691, '');
INSERT INTO `ci_sessions` VALUES('0ed19bc3eeb5f9cdc43102b56ce22282', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220692, '');
INSERT INTO `ci_sessions` VALUES('76a1a8805753f50e69162c0914f96c12', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220813, '');
INSERT INTO `ci_sessions` VALUES('1eda3d0cad6c90307166c77848899f7a', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220746, '');
INSERT INTO `ci_sessions` VALUES('7447bc7fdd18f981a7ce9767dc2b86e1', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220746, '');
INSERT INTO `ci_sessions` VALUES('9071f02495fb90d1ac3a7865aab8691c', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220753, '');
INSERT INTO `ci_sessions` VALUES('aa721e6a44a0a73946e56c33a9bc7fda', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220753, '');
INSERT INTO `ci_sessions` VALUES('b5f38f95aed13323b9cfa1816f2adc1a', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220884, '');
INSERT INTO `ci_sessions` VALUES('b95a484fd40e28d3d6533eb34db18a06', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221750, '');
INSERT INTO `ci_sessions` VALUES('842220097d41feef23cc746c865d0467', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220888, '');
INSERT INTO `ci_sessions` VALUES('f9bd1a1a2f1fda5022768ad4b219a497', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220888, '');
INSERT INTO `ci_sessions` VALUES('4198eacecfb164c2c5d45f55ec11567a', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220890, '');
INSERT INTO `ci_sessions` VALUES('f478a0e7fa516769936183468c2d79ae', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366220891, '');
INSERT INTO `ci_sessions` VALUES('86fc4a11d38d921d93378f996c367e01', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221126, '');
INSERT INTO `ci_sessions` VALUES('e3b4a5ff04b3c4764a9e3a3568a951bd', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221100, '');
INSERT INTO `ci_sessions` VALUES('1035a5fb48dbe37267f527baa668345f', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221129, '');
INSERT INTO `ci_sessions` VALUES('2924bdef37fb793655b8b793ee4e7473', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221119, '');
INSERT INTO `ci_sessions` VALUES('c6dfcc89596199fe5384e9bb6937b6f5', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221129, '');
INSERT INTO `ci_sessions` VALUES('e31c7e9a5596f8aa9a007a8c038f3c65', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221586, '');
INSERT INTO `ci_sessions` VALUES('151b6d26bfc5ac62e3a4c5aade9a6775', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221156, '');
INSERT INTO `ci_sessions` VALUES('a7313d50fee1ead1feb7c966316d8031', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221162, '');
INSERT INTO `ci_sessions` VALUES('1a750ba0d80932487bc789fc93bb8d2f', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221170, '');
INSERT INTO `ci_sessions` VALUES('ece1972982c97cf42d701c550f9c8112', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221193, '');
INSERT INTO `ci_sessions` VALUES('8a1f58ca4f5d2a6d93131f8979353c31', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221199, '');
INSERT INTO `ci_sessions` VALUES('82831ec7b320faeb93c971474bb8ece5', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221198, '');
INSERT INTO `ci_sessions` VALUES('1a918aaf4e54fc74e68d597493471f98', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221244, '');
INSERT INTO `ci_sessions` VALUES('201f6371ca0231f9211e84b40ae6e294', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221249, '');
INSERT INTO `ci_sessions` VALUES('085c8e0d0d3547335b1fda4bbe5f74be', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221334, '');
INSERT INTO `ci_sessions` VALUES('4a27a790db855bf1769e6fa3281afb16', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221270, '');
INSERT INTO `ci_sessions` VALUES('7dc9db66a5fb794a554dabaa27945acf', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221267, '');
INSERT INTO `ci_sessions` VALUES('ddf96b16f28f8f792041f5e5bf21fbb9', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221272, '');
INSERT INTO `ci_sessions` VALUES('1483f69cbc4fd68beceb22d2ac059057', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221274, '');
INSERT INTO `ci_sessions` VALUES('0b8010fe93bf19a7f26c2d3b99927a6e', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221278, '');
INSERT INTO `ci_sessions` VALUES('37c2216eb10c8ead0d4c27ccdc3e9eb4', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221278, '');
INSERT INTO `ci_sessions` VALUES('35dc9a4e23b9750262378fcfc79a6fee', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221279, '');
INSERT INTO `ci_sessions` VALUES('9294f388b12cdfb0e2c1e092fd4b139f', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221279, '');
INSERT INTO `ci_sessions` VALUES('daef0df1ee826f83eea03cf66887fef3', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221283, '');
INSERT INTO `ci_sessions` VALUES('063343e1f320071508c4e767b32d821c', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221283, '');
INSERT INTO `ci_sessions` VALUES('627efbb4bf210d5ea0ae61c8a86a3c11', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221290, '');
INSERT INTO `ci_sessions` VALUES('ad776b957b1dc18539687e1aea1b93b6', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221421, '');
INSERT INTO `ci_sessions` VALUES('3944955ee4c8846c235ca5d51892ae9e', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221304, '');
INSERT INTO `ci_sessions` VALUES('276f64279ac8e24c5ac2199975aa4005', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221339, '');
INSERT INTO `ci_sessions` VALUES('1e72f5130b68c494cfde5d55d8016f20', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221351, '');
INSERT INTO `ci_sessions` VALUES('d2ca99a853b3d9aa39f78c0e2cf0566e', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221380, '');
INSERT INTO `ci_sessions` VALUES('6b4cf6adc0cda41391e50b5161ef7dbf', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221395, '');
INSERT INTO `ci_sessions` VALUES('00be75091b6c6f0a616d4efa2048b6b0', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221395, '');
INSERT INTO `ci_sessions` VALUES('b35add30460efe7b4c0aead530d98ea5', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221422, '');
INSERT INTO `ci_sessions` VALUES('1a93c3dc9df0af089207b63ede986fae', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221424, '');
INSERT INTO `ci_sessions` VALUES('ef0dcb95af021e53c768da1fc1cf9251', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221500, '');
INSERT INTO `ci_sessions` VALUES('90ac0430d301cb71f6e34d8a25d85e72', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221503, '');
INSERT INTO `ci_sessions` VALUES('f0788542a24c918430ff82fc53c5abc8', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221505, '');
INSERT INTO `ci_sessions` VALUES('56da826ce0ab7722499ea06ffa7d6419', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221505, '');
INSERT INTO `ci_sessions` VALUES('3898912a35d1bbe9008cd31862f2c984', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221506, '');
INSERT INTO `ci_sessions` VALUES('d85ff521e83d2bbdcd123425addb9ded', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221506, '');
INSERT INTO `ci_sessions` VALUES('1a823aacae42e8497258956930ff2dcf', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221666, '');
INSERT INTO `ci_sessions` VALUES('9e48d1e5065e7d9395e2d5b978e2a268', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221644, '');
INSERT INTO `ci_sessions` VALUES('dd1c52eb09f4482a45cb0cc1c8e052c6', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221542, '');
INSERT INTO `ci_sessions` VALUES('c976fea5ff2a5cb13890d9798a96cc9f', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221571, '');
INSERT INTO `ci_sessions` VALUES('a7884322dbf44b68156b58eed62467b7', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221572, '');
INSERT INTO `ci_sessions` VALUES('fa7c3ad2cd55c454828c73fc94972b00', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221587, '');
INSERT INTO `ci_sessions` VALUES('f26534ca118884caab6d7f4eceb31152', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221646, '');
INSERT INTO `ci_sessions` VALUES('4b91576f1c1286c3e948c73b7b2fdb24', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221646, '');
INSERT INTO `ci_sessions` VALUES('12fb10e11eb68d2b942fbaad2a94f361', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221750, '');
INSERT INTO `ci_sessions` VALUES('f2b58adb3bb9b1c841fbda9a5fff1fb1', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221750, '');
INSERT INTO `ci_sessions` VALUES('2faf9e1db37173a13a6aed213bc4a6d5', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221751, '');
INSERT INTO `ci_sessions` VALUES('71712c365d5f53560c584923c7bed822', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221756, '');
INSERT INTO `ci_sessions` VALUES('14c43db45673ff37a83448e1e85f22d5', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221758, '');
INSERT INTO `ci_sessions` VALUES('7591e87ef716b396dcbd305a7a634d26', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221758, '');
INSERT INTO `ci_sessions` VALUES('217a05744a30582116747cc490cd56cb', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222752, '');
INSERT INTO `ci_sessions` VALUES('f9a5d817eb84720a5167e6338acd0bf6', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.89 Safari/537.1', 1366221793, '');
INSERT INTO `ci_sessions` VALUES('7c0aed6e42bdad9d67990db61cba3ad9', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.89 Safari/537.1', 1366225600, '');
INSERT INTO `ci_sessions` VALUES('0d68cb56e5cebcfc1e5174756bc1eebc', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221853, '');
INSERT INTO `ci_sessions` VALUES('7754a31ad2eccbe6ae369c0121c26367', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221853, '');
INSERT INTO `ci_sessions` VALUES('bbcdeb0d54e648724e2105263669aa42', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221877, '');
INSERT INTO `ci_sessions` VALUES('e19a01646e87ede12e6edd727c352705', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221877, '');
INSERT INTO `ci_sessions` VALUES('3ec463495cd3ca98fbe0eb1d2c89271e', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221885, '');
INSERT INTO `ci_sessions` VALUES('fa1c1051f9247c3d119ff74d139155f6', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221885, '');
INSERT INTO `ci_sessions` VALUES('04551b85d02620d31f573765e09414a5', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221892, '');
INSERT INTO `ci_sessions` VALUES('337c089a96360b70e38f3e5031a0d1e8', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221902, '');
INSERT INTO `ci_sessions` VALUES('7b4d1b22fad09a8d6affd3cb6c230289', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221902, '');
INSERT INTO `ci_sessions` VALUES('dd93a93e354192587acd56b181bd119f', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221907, '');
INSERT INTO `ci_sessions` VALUES('e33fa928ea9596f0941783e8084267e7', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221907, '');
INSERT INTO `ci_sessions` VALUES('0623e2d86341edfa21742df3e5ca6332', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221911, '');
INSERT INTO `ci_sessions` VALUES('fb30a5ba19a938d766d5da97a0c853a6', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221911, '');
INSERT INTO `ci_sessions` VALUES('16173620acb812b230f4c362da41f95e', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.89 Safari/537.1', 1366225600, '');
INSERT INTO `ci_sessions` VALUES('0647937bafb980881413add12252f2db', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221919, '');
INSERT INTO `ci_sessions` VALUES('ca27cdedc94f864b60cfa7a3ee1176fe', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221919, '');
INSERT INTO `ci_sessions` VALUES('fada553008da6f64c329c2602a523878', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221925, '');
INSERT INTO `ci_sessions` VALUES('421a47fe82eba44ef639fe5cc91e7b6a', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221925, '');
INSERT INTO `ci_sessions` VALUES('c0a5ad06f0ab2901ff469812a8e7c3de', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221928, '');
INSERT INTO `ci_sessions` VALUES('521b483b5c5c3d0de112bdf9e0a5b15d', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221928, '');
INSERT INTO `ci_sessions` VALUES('09d817a48c76be84a58eb8dbaa6f9dc9', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221928, '');
INSERT INTO `ci_sessions` VALUES('e27398bbf45938c57ac5301620c64994', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221928, '');
INSERT INTO `ci_sessions` VALUES('a379d413a5af47b646a63ee90ae64824', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221932, '');
INSERT INTO `ci_sessions` VALUES('e7049dadc308310a5707fe2aaceb949b', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221932, '');
INSERT INTO `ci_sessions` VALUES('61bea762a9851cd9b797b7851b0e9e63', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366221987, '');
INSERT INTO `ci_sessions` VALUES('328eb12707d67ec2fcb7c55ba1640c97', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222579, '');
INSERT INTO `ci_sessions` VALUES('3f9e9a42320c8c4988dd3d1f8d4f9bbd', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222136, '');
INSERT INTO `ci_sessions` VALUES('afe9447eef0f600d5f9059f34b55a726', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222136, '');
INSERT INTO `ci_sessions` VALUES('5472b2e42187099a1e38062489cf5acf', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222143, '');
INSERT INTO `ci_sessions` VALUES('242f153a94997ef255a99ac1b1318560', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222143, '');
INSERT INTO `ci_sessions` VALUES('201c4b75236a8663c739595f5ee11ad7', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222144, '');
INSERT INTO `ci_sessions` VALUES('d1ec97bfcb61ca2ee4d517465d70bf02', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222144, '');
INSERT INTO `ci_sessions` VALUES('9076c710383a4c7a7f88b3466626c494', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222152, '');
INSERT INTO `ci_sessions` VALUES('d1cbac3da587f91b57484053a1633d1a', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222152, '');
INSERT INTO `ci_sessions` VALUES('e4a7f5d24a0529ae289db252ffa1e3c0', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222168, '');
INSERT INTO `ci_sessions` VALUES('6c7c35faaa986acedb3804913a632b62', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222168, '');
INSERT INTO `ci_sessions` VALUES('797d9c7f0127a2f19871327c2577b07e', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222172, '');
INSERT INTO `ci_sessions` VALUES('e53c16f9d097d8b49f7b0f5aa2ea6564', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222172, '');
INSERT INTO `ci_sessions` VALUES('18cc63f5b69390e288276f881837497f', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222175, '');
INSERT INTO `ci_sessions` VALUES('f722798c7dc0b12724dd604aaa33887f', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222175, '');
INSERT INTO `ci_sessions` VALUES('acd94c43130576fdedf1dbc2a6d4ff6e', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222176, '');
INSERT INTO `ci_sessions` VALUES('7d2af4b433cc7c2311c64d4a4fe0c8df', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222183, '');
INSERT INTO `ci_sessions` VALUES('d355d5eb463dbef8c8668ff1751ed707', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222183, '');
INSERT INTO `ci_sessions` VALUES('3705dc7eb0564621651b355eabfc24f1', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222201, '');
INSERT INTO `ci_sessions` VALUES('0693a2376762d839da298eba58a62eb3', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222201, '');
INSERT INTO `ci_sessions` VALUES('5cc0a0814a92e823fb0f6dc5c7a73094', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222204, '');
INSERT INTO `ci_sessions` VALUES('93c84c2ba768a724955123990c958e39', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222204, '');
INSERT INTO `ci_sessions` VALUES('437640565cd2d8bc59a851abd8808ad0', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222310, '');
INSERT INTO `ci_sessions` VALUES('d5ad3aa78f4b5f63fe7600b943a67156', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222311, '');
INSERT INTO `ci_sessions` VALUES('fe647883c0ab70fb8bffeba31efc0c37', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222311, '');
INSERT INTO `ci_sessions` VALUES('bcc68e493722862cf01180c8b48baaf4', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222311, '');
INSERT INTO `ci_sessions` VALUES('2e028c3feebe20ec016686d6bd5ff5f1', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222313, '');
INSERT INTO `ci_sessions` VALUES('203f1cc0e987fe029a78a6cbe3d06639', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222313, '');
INSERT INTO `ci_sessions` VALUES('b6fe52324d716e327e658e1aabf88062', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222339, '');
INSERT INTO `ci_sessions` VALUES('22592d02d0deaa6c7def6c094d2d8634', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222339, '');
INSERT INTO `ci_sessions` VALUES('c166ca90d6990094a6627cde69b6c349', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222342, '');
INSERT INTO `ci_sessions` VALUES('e1dd9489171bf088e4fec0e74efd9bcb', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222342, '');
INSERT INTO `ci_sessions` VALUES('ba8255a0960b96704b36031f07109e31', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222345, '');
INSERT INTO `ci_sessions` VALUES('0c3f5c96b20238f9a1a02d80ed0f8bea', '103.246.38.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222394, '');
INSERT INTO `ci_sessions` VALUES('a3844562150a46e0652d46fc73a54c78', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222481, '');
INSERT INTO `ci_sessions` VALUES('a93d989ebd60caef5d7c5940d10ba4c5', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222481, '');
INSERT INTO `ci_sessions` VALUES('4eddec2aab289afe4a4698d37ba2b113', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222488, '');
INSERT INTO `ci_sessions` VALUES('c05cbeb67f283cd1e339a473afda3233', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222488, '');
INSERT INTO `ci_sessions` VALUES('ed29f738360c64ddebecc595591a54ff', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222537, '');
INSERT INTO `ci_sessions` VALUES('b131e699bcdfd877fa4c5eb8c6afcba4', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222537, '');
INSERT INTO `ci_sessions` VALUES('d7d43b792ca6f9071e5e3b9d5ce498cc', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222579, '');
INSERT INTO `ci_sessions` VALUES('bd7c049f08ed4df1a0bfb649de891302', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222611, '');
INSERT INTO `ci_sessions` VALUES('b1a20520087af8a871c14bad22a542b3', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222611, '');
INSERT INTO `ci_sessions` VALUES('1d55b96dbd2b407d0df32e7c2f75fd57', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222669, '');
INSERT INTO `ci_sessions` VALUES('c8cea3526a87fa1429d5347e93605fe7', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222681, '');
INSERT INTO `ci_sessions` VALUES('fc853bc2bbed75e0abc12d9303d0ad06', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222682, '');
INSERT INTO `ci_sessions` VALUES('5006e8768330efbe1584f5f49b2aa270', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222753, '');
INSERT INTO `ci_sessions` VALUES('a7b7a48dc6de0612d8e078d29733e6b5', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366242073, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:17:"mdoan90@gmail.com";s:2:"id";s:2:"28";s:4:"role";s:4:"user";s:8:"username";s:5:"mdoan";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('4c3d85648aabcc55da134f39f715102f', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222852, '');
INSERT INTO `ci_sessions` VALUES('af3fae150ad8b9a836d739585e3663d5', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366222852, '');
INSERT INTO `ci_sessions` VALUES('d96d2ae77f571bbb8f06165eff7f3437', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223040, '');
INSERT INTO `ci_sessions` VALUES('ebd6e3bbf22020a951426b68323e5ca4', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223041, '');
INSERT INTO `ci_sessions` VALUES('37d229b6b2fd47a05d618c6a17a79ebf', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223076, '');
INSERT INTO `ci_sessions` VALUES('43f1b325cdf5ec2553c73342cffc42cc', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223045, '');
INSERT INTO `ci_sessions` VALUES('727b0cf32088d310bd3c7c339ac98336', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223092, '');
INSERT INTO `ci_sessions` VALUES('b0a7d5ab9a3f9979bfbf4e5fb77570cb', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223077, '');
INSERT INTO `ci_sessions` VALUES('c28b56bd9e096025691463f6cf8e8be7', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223082, '');
INSERT INTO `ci_sessions` VALUES('6e5942fb1283828e114a34efe3e64ff7', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223092, '');
INSERT INTO `ci_sessions` VALUES('9636554ffe873d4bb5312a98cd697485', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223095, '');
INSERT INTO `ci_sessions` VALUES('2373699073453c8c46868495be6d0ffb', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223095, '');
INSERT INTO `ci_sessions` VALUES('974bed1689f13ee09f2fef7c4836231a', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223098, '');
INSERT INTO `ci_sessions` VALUES('b0a4bdd59afe39712b01a7909a9c9a8b', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223103, '');
INSERT INTO `ci_sessions` VALUES('c980f845e5f8c9d43758a40ea7bead92', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223104, '');
INSERT INTO `ci_sessions` VALUES('63f7580c47550ddb2a2ccaf6e52e7cec', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223108, '');
INSERT INTO `ci_sessions` VALUES('7f6322726958b195a074c7f87a62e34b', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223197, '');
INSERT INTO `ci_sessions` VALUES('0402c25ae9fb956da3b623bd4b1814bd', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223197, '');
INSERT INTO `ci_sessions` VALUES('d9aef385654b7a14b423805f48ce74b4', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223249, '');
INSERT INTO `ci_sessions` VALUES('e5e273836a64a66e1da7c05a3159b0ef', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223249, '');
INSERT INTO `ci_sessions` VALUES('55f6fd3e189b9f7ae2d611cfc5f95390', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223249, '');
INSERT INTO `ci_sessions` VALUES('f31d0934e2835d40a1abf6187c0848df', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223656, '');
INSERT INTO `ci_sessions` VALUES('8e26e9f3c43e3c361214820a248fc53e', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223268, '');
INSERT INTO `ci_sessions` VALUES('f48755e5b3b4208f63f0e63339d27597', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223272, '');
INSERT INTO `ci_sessions` VALUES('b224c50938baab3feeec2d6faa073706', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223273, '');
INSERT INTO `ci_sessions` VALUES('4a55f62225ac27b9c5aa02a648c69ce7', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223279, '');
INSERT INTO `ci_sessions` VALUES('6af7fc8b45968d65fc92c296b1a5b774', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223279, '');
INSERT INTO `ci_sessions` VALUES('ac6fdf02c3b379b2e3f664205fffdaff', '8.21.4.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223279, '');
INSERT INTO `ci_sessions` VALUES('b1f6eb7f96d75e361fb5439595b2e0cf', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223346, '');
INSERT INTO `ci_sessions` VALUES('fd7c799de33a596bb7e5355e8a0b5838', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223360, '');
INSERT INTO `ci_sessions` VALUES('e51701d6263603b2a40e0eca73b5bbce', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223360, '');
INSERT INTO `ci_sessions` VALUES('cb3b181d9668480ca69948eb29903372', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223362, '');
INSERT INTO `ci_sessions` VALUES('2498cf2834785fa2ecbb754fd800cab4', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223362, '');
INSERT INTO `ci_sessions` VALUES('dee5d3f5f9bf479c3906b219615aae6b', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223367, '');
INSERT INTO `ci_sessions` VALUES('8856227f82381fa0d9b3892579195667', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223367, '');
INSERT INTO `ci_sessions` VALUES('752f10ad6c6f04a76ec486f1bb4585bf', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223367, '');
INSERT INTO `ci_sessions` VALUES('efc633eeac9cb866e3fb34a26cf55c2d', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223369, '');
INSERT INTO `ci_sessions` VALUES('8dc9ca099ab9402deb3085f82685005a', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223369, '');
INSERT INTO `ci_sessions` VALUES('bf426e9ea0eeb886cfab9c01904f938d', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224894, '');
INSERT INTO `ci_sessions` VALUES('c3effdf8860ef6856b4167140bf3b2bb', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223565, '');
INSERT INTO `ci_sessions` VALUES('3bd035e74cad55a66ea4d307ccbd68f9', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223624, '');
INSERT INTO `ci_sessions` VALUES('df191e49b9df3e0070d9dbf2f29cc22c', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223624, '');
INSERT INTO `ci_sessions` VALUES('550eae0daa892d8b8f1ef11194622dc1', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223657, '');
INSERT INTO `ci_sessions` VALUES('f622646d20da9592fdb797d7490ebce7', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223657, '');
INSERT INTO `ci_sessions` VALUES('d4f26b3f36ac2261afdecf9f3ae9da81', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223673, '');
INSERT INTO `ci_sessions` VALUES('bac903489d370cc3d36b5885a95e24c7', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223673, '');
INSERT INTO `ci_sessions` VALUES('0b344081dcc5c54193be5c26897937c1', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223689, '');
INSERT INTO `ci_sessions` VALUES('77a5a8de5f9b80f140b0f5ec19560510', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223689, '');
INSERT INTO `ci_sessions` VALUES('854912df9fd247178db8c828641eb63b', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223695, '');
INSERT INTO `ci_sessions` VALUES('3c804dff8d3e727f118926dbdd677143', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223695, '');
INSERT INTO `ci_sessions` VALUES('e7a390aad91bdecfc34c15a900032b63', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223747, '');
INSERT INTO `ci_sessions` VALUES('48c2d3908f28f3dab4bd55a12d60110d', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224844, '');
INSERT INTO `ci_sessions` VALUES('6e28c8057848e7b0d35dfe5034bafd85', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366223914, '');
INSERT INTO `ci_sessions` VALUES('68d73a4f415dbc2b3e540640e763b42f', '205.172.21.124', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366223914, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:16:"cchum@lesley.edu";s:2:"id";s:2:"23";s:4:"role";s:4:"user";s:8:"username";s:5:"cchum";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('a3d529f320348c7550ef3df345931970', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366223960, '');
INSERT INTO `ci_sessions` VALUES('5a594f5fb2d4a17892b93ba6f45cc71c', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224050, '');
INSERT INTO `ci_sessions` VALUES('7cb874047009f83b86d46e3b91332391', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224050, '');
INSERT INTO `ci_sessions` VALUES('8338a4f3f94cde20e78a41588f317bf3', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224246, '');
INSERT INTO `ci_sessions` VALUES('c8b9def1f1f47074ad3a2cd9eab14bb2', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224650, '');
INSERT INTO `ci_sessions` VALUES('e50070bef080cb46a74e5e67f7dd65fb', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224248, '');
INSERT INTO `ci_sessions` VALUES('e1694a1e91f312d90c9f6d19e128d225', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224650, '');
INSERT INTO `ci_sessions` VALUES('78bb4eb0b2762a831dfd8e58b65396ee', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224674, '');
INSERT INTO `ci_sessions` VALUES('a01ffbe7dcbd833fc0b3a3ada8d8a91f', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224674, '');
INSERT INTO `ci_sessions` VALUES('e63f931bedeaa51fba217084fc2a83cb', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224682, '');
INSERT INTO `ci_sessions` VALUES('4df826282a73b506868fd1e133611b7b', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224683, '');
INSERT INTO `ci_sessions` VALUES('b90734d99f83af9954de2b243b832c52', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224688, '');
INSERT INTO `ci_sessions` VALUES('048d19b0e7434a675ba6efcbcab0e14a', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224688, '');
INSERT INTO `ci_sessions` VALUES('728aa520dbbb1946a779328cef382abb', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224692, '');
INSERT INTO `ci_sessions` VALUES('911e8004544f82ebbc719599cfd67397', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224692, '');
INSERT INTO `ci_sessions` VALUES('655cbd1ca8bf31ca9e895409f21d5a1e', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224711, '');
INSERT INTO `ci_sessions` VALUES('f1aea026f2380673f0eada055769f245', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224711, '');
INSERT INTO `ci_sessions` VALUES('6214fb69e9e16094b444300f2a8c0a19', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224844, '');
INSERT INTO `ci_sessions` VALUES('a5526a842701dd5b1e6cb550189b0454', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224851, '');
INSERT INTO `ci_sessions` VALUES('0dbd714325d5539cf4d4e33b673068c4', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224851, '');
INSERT INTO `ci_sessions` VALUES('3473d32351ceef6723c4620b8c0b82ea', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224856, '');
INSERT INTO `ci_sessions` VALUES('7095c0906bbf790615478cd2f1f6b562', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224856, '');
INSERT INTO `ci_sessions` VALUES('5bef3796987746425b4b3b1b049b542d', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224875, '');
INSERT INTO `ci_sessions` VALUES('a94fea6031a460a302cc36d40336c6cc', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224875, '');
INSERT INTO `ci_sessions` VALUES('6e3212344ea402d4aa8fb5ad1bce183e', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224900, '');
INSERT INTO `ci_sessions` VALUES('b9b0bda90e22687723d1d443a321f73e', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366224995, '');
INSERT INTO `ci_sessions` VALUES('05507225340f4259d10d8a0839599276', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366225156, '');
INSERT INTO `ci_sessions` VALUES('9cd07ac97c3792b3a7197c80112820cb', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366225024, '');
INSERT INTO `ci_sessions` VALUES('5d18bffd7d1b91499a17ee5f6d3bfa45', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366225244, '');
INSERT INTO `ci_sessions` VALUES('01beeffd1127534c1c330802e0ca3b3c', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366225244, '');
INSERT INTO `ci_sessions` VALUES('d9dda9e9c7160edf77c82fd8e6085c52', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366225247, '');
INSERT INTO `ci_sessions` VALUES('ed77ba7ca0ce796c62b33c73f1ba57c2', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366225247, '');
INSERT INTO `ci_sessions` VALUES('3d0b6478629e28c4bffdb683ccc65cf4', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366225323, '');
INSERT INTO `ci_sessions` VALUES('c4f150c14c5c5958b496e070ff102876', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366225392, '');
INSERT INTO `ci_sessions` VALUES('42f0996814e64dffbba492f4b99a3c2a', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366225393, '');
INSERT INTO `ci_sessions` VALUES('576d4431005258c5674a74374b8f2a5c', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366225579, '');
INSERT INTO `ci_sessions` VALUES('e3f29ee8462b190601d589d7ecf1fb46', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366225716, '');
INSERT INTO `ci_sessions` VALUES('2206211377af6f5ef1a2ac89e1931500', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366225716, '');
INSERT INTO `ci_sessions` VALUES('ac941f4b76df8ee103ea455eec188fc1', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366226100, '');
INSERT INTO `ci_sessions` VALUES('90fa84804e79790d60d5d32c63f3283f', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366226100, '');
INSERT INTO `ci_sessions` VALUES('3dd1a8e770cf99ca63d645f0d7052e9b', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366226112, '');
INSERT INTO `ci_sessions` VALUES('58cf8210e59427f1b92eae5c38ad1292', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366226112, '');
INSERT INTO `ci_sessions` VALUES('da9192a89a2249278ec361211e8292c8', '199.19.249.196', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366226502, '');
INSERT INTO `ci_sessions` VALUES('54402da533c3a27d3745bf4cec427290', '205.172.21.24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366230542, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:19:"rrodrig6@lesley.edu";s:2:"id";s:2:"34";s:4:"role";s:4:"user";s:8:"username";s:8:"rrodrig6";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('e607c40e5a77d3005ee80e70fde3bdd7', '205.172.21.142', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366249315, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:13:"matt@demo.com";s:2:"id";s:1:"4";s:4:"role";s:7:"faculty";s:8:"username";s:13:"Matthew White";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('0fc5063a9cf745c9c1e8309ca734b9e6', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366239800, '');
INSERT INTO `ci_sessions` VALUES('021f097bf507506f703aa14e1cfd5d56', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366239902, '');
INSERT INTO `ci_sessions` VALUES('17cd7ae7a54e5554312e5e6c52ed44d4', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366239801, '');
INSERT INTO `ci_sessions` VALUES('bc57bce199ffa6c0288a34a0df191b04', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366240549, '');
INSERT INTO `ci_sessions` VALUES('292910f1e36bf8491e977ceb5ec9a501', '8.28.16.254', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; MS-RTC LM 8; .NET ', 1366240549, '');
INSERT INTO `ci_sessions` VALUES('0c88f5a5886fad5d63b25991eb68e0f0', '108.20.78.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366249316, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:13:"matt@demo.com";s:2:"id";s:1:"4";s:4:"role";s:7:"faculty";s:8:"username";s:13:"Matthew White";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('77b318009cd046651d985df635388696', '65.96.149.96', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366249573, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('a8f2a52968a7a503cd7a224ed01a5a49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366250102, '');
INSERT INTO `ci_sessions` VALUES('91af9ada11f3315db21bcb375029fa37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366258907, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:13:"matt@demo.com";s:2:"id";s:1:"4";s:4:"role";s:7:"faculty";s:8:"username";s:13:"Matthew White";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('f7d4fd0326038a5e129706e4c003fa53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366284227, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('bc149dd61d97716c18852436d7f788ce', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366298736, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('585316d42a5b6fc938a4674f7e14f12b', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366321887, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:13:"matt@demo.com";s:2:"id";s:1:"4";s:4:"role";s:7:"faculty";s:8:"username";s:13:"Matthew White";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('fb790c50701e411793fa96e4e7059b1b', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366338130, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('f810fe455f4e77f40aff6e23c1cfcbb3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366338623, '');
INSERT INTO `ci_sessions` VALUES('7494aa0ec079e798ab3759c28845789e', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366375815, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:13:"matt@demo.com";s:2:"id";s:1:"4";s:4:"role";s:7:"faculty";s:8:"username";s:13:"Matthew White";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('366fbf9318cf2668577573a2f1d50718', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366376274, '');
INSERT INTO `ci_sessions` VALUES('8396b9bc9fda3b93bf643bf0f1f59977', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366377088, '');
INSERT INTO `ci_sessions` VALUES('baafa1ac0c79745f431d3b2bbc168171', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366389454, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:13:"matt@demo.com";s:2:"id";s:1:"4";s:4:"role";s:7:"faculty";s:8:"username";s:13:"Matthew White";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('984104b544b62d566a7a0f4fc78cc5f7', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366404317, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` VALUES('54b4295180a7b3221a727406cb201899', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31', 1366404317, 'a:6:{s:9:"user_data";s:0:"";s:5:"email";s:14:"admin@demo.com";s:2:"id";s:1:"1";s:4:"role";s:5:"admin";s:8:"username";s:5:"Admin";s:9:"logged_in";b:1;}');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

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
INSERT INTO `comments` VALUES(15, 76, 1, 'Somewhat Working', 0, 0, '2013-04-18 18:02:36');
INSERT INTO `comments` VALUES(16, 7, 1, 'I ike the overall concept but I think it need work', 0, 0, '2013-04-18 18:40:29');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` VALUES(1, 7, 'Social Media Presence', ' ', ' ', '/uploads/gallery-7/MockupEdits', '.png', 0, 1366220553, 25, '2013-04-17 13:42:34', 0);
INSERT INTO `images` VALUES(2, 15, 'Packaging Group Shot', 'Packages packages packages packages', 'All the things!', '/uploads/gallery-15/largegroupshot', '.jpg', 0, 1366220557, 22, '2013-04-17 13:42:37', 0);
INSERT INTO `images` VALUES(5, 18, ' Meditate Apart Anxiety', ' ', ' ', '/uploads/gallery-18/Meditator', '.jpg', 0, 1366220657, 26, '2013-04-17 13:44:17', 0);
INSERT INTO `images` VALUES(6, 6, 'can', 'cool stuff', 'how it looks', '/uploads/gallery-6/cannn2', '.png', 0, 1366220666, 35, '2013-04-17 13:44:26', 0);
INSERT INTO `images` VALUES(8, 5, 'Type 3 ', 'The Brattle Theatre Poster Series ', ' ', '/uploads/gallery-5/25_stroke', '.jpg', 0, 1366220680, 34, '2013-04-17 13:44:40', 0);
INSERT INTO `images` VALUES(11, 15, 'Mints!', 'Mints Mints Mints', 'Mints?', '/uploads/gallery-15/largemints', '.jpg', 0, 1366220686, 22, '2013-04-17 13:44:47', 0);
INSERT INTO `images` VALUES(13, 19, 'Secret Seal Logo', 'Logo for an liqueur brand that i make at home', ' ', '/uploads/gallery-19/secret_seal', '.png', 0, 1366220726, 27, '2013-04-17 13:45:26', 0);
INSERT INTO `images` VALUES(14, 7, 'Social Media Presence', ' ', ' ', '/uploads/gallery-7/01_2', '.jpg', 0, 1366220749, 25, '2013-04-17 13:45:49', 0);
INSERT INTO `images` VALUES(16, 19, 'Secret Seal bottle', ' ', ' ', '/uploads/gallery-19/luna-rosa-package-design', '.png', 0, 1366220763, 27, '2013-04-17 13:46:03', 0);
INSERT INTO `images` VALUES(17, 15, 'Crackers!', 'Crackers crackers crackers', 'Are these crackers?', '/uploads/gallery-15/largecrackers', '.jpg', 0, 1366220770, 22, '2013-04-17 13:46:10', 0);
INSERT INTO `images` VALUES(18, 8, 'yada', 'yada', 'yada', '/uploads/gallery-8/concrete', '.png', 0, 1366220806, 35, '2013-04-17 13:46:46', 0);
INSERT INTO `images` VALUES(19, 8, 'yada', 'yada', 'yada', '/uploads/gallery-8/concrete1', '.png', 0, 1366220813, 35, '2013-04-17 13:46:53', 0);
INSERT INTO `images` VALUES(20, 7, 'Social Media Presence', ' ', ' ', '/uploads/gallery-7/01_21', '.jpg', 0, 1366220824, 25, '2013-04-17 13:47:04', 0);
INSERT INTO `images` VALUES(21, 15, 'Milk.', 'This is milk.', 'Is this milk?', '/uploads/gallery-15/largemilk', '.jpg', 0, 1366220828, 22, '2013-04-17 13:47:08', 0);
INSERT INTO `images` VALUES(22, 19, 'Secret Seal Bottle Top', ' ', ' ', '/uploads/gallery-19/secret_seal_luna_rosa', '.png', 0, 1366220834, 27, '2013-04-17 13:47:14', 0);
INSERT INTO `images` VALUES(23, 8, 'yada', 'yada', 'yada', '/uploads/gallery-8/concrete2', '.png', 0, 1366220844, 35, '2013-04-17 13:47:24', 0);
INSERT INTO `images` VALUES(24, 20, 'Fencing Illustrations', 'For a digital infographic explaining the basics of fencing to non-fencing parents and children', 'Is the visual language accessible? Is it too young?', '/uploads/gallery-20/Screen_Shot_2013-03-28_at_7.04_.26_PM_', '.png', 0, 1366220848, 30, '2013-04-17 13:47:28', 0);
INSERT INTO `images` VALUES(25, 8, 'yada', 'yada', 'yada', '/uploads/gallery-8/concrete3', '.png', 0, 1366220860, 35, '2013-04-17 13:47:40', 0);
INSERT INTO `images` VALUES(27, 8, 'yada', 'yada', 'yada', '/uploads/gallery-8/concrete4', '.png', 0, 1366220879, 35, '2013-04-17 13:47:59', 0);
INSERT INTO `images` VALUES(30, 17, 'Book Spread', 'Spread of a booklet.', 'Readability, overall look.', '/uploads/gallery-17/Screen_shot_2013-04-07_at_2.25_.33_AM_', '.png', 0, 1366220925, 32, '2013-04-17 13:48:46', 0);
INSERT INTO `images` VALUES(32, 15, 'Wine', 'Perfect for bored housewives.', 'Does this suck?', '/uploads/gallery-15/largewine', '.jpg', 0, 1366220948, 22, '2013-04-17 13:49:09', 0);
INSERT INTO `images` VALUES(35, 22, 'Marylin''s Persona', ' ', ' ', '/uploads/gallery-22/Screen_shot_2013-04-17_at_1.49_.21_PM_', '.png', 0, 1366221005, 37, '2013-04-17 13:50:06', 0);
INSERT INTO `images` VALUES(36, 25, 'Joy Division Book Cover', 'Ian Curtis is dead.', ' ', '/uploads/gallery-25/largejdcover', '.jpg', 0, 1366221016, 22, '2013-04-17 13:50:16', 0);
INSERT INTO `images` VALUES(37, 6, 'ugh', 'i hate this', 'this sucks', '/uploads/gallery-6/flower3', '.png', 0, 1366221044, 35, '2013-04-17 13:50:44', 0);
INSERT INTO `images` VALUES(38, 17, 'Typpgraphy from Freshman Year', 'Typography', 'This was before I took Type I, maybe just overall success/failure.', '/uploads/gallery-17/Screen_shot_2013-04-17_at_1.50_.34_PM_', '.png', 0, 1366221084, 32, '2013-04-17 13:51:24', 0);
INSERT INTO `images` VALUES(39, 22, 'Kurt''s Persona', ' ', ' ', '/uploads/gallery-22/Screen_shot_2013-04-17_at_1.50_.57_PM_', '.png', 0, 1366221094, 37, '2013-04-17 13:51:34', 0);
INSERT INTO `images` VALUES(40, 7, 'Catalog Cover Design', ' ', ' ', '/uploads/gallery-7/THEFinalCoverDesign', '.jpg', 0, 1366221100, 25, '2013-04-17 13:51:41', 0);
INSERT INTO `images` VALUES(51, 6, 'www', 'www', 'www', '/uploads/gallery-6/inkflower1', '.jpg', 0, 1366221299, 35, '2013-04-17 13:54:59', 0);
INSERT INTO `images` VALUES(44, 10, '100 Years Kaleidoscope', 'Installation', ' ', '/uploads/gallery-10/548341_10151168947009795_491324116_n', '.jpg', 0, 1366221196, 33, '2013-04-17 13:53:16', 0);
INSERT INTO `images` VALUES(45, 23, 'Newspaper Layout', ' ', ' ', '/uploads/gallery-23/Newspaper_Front_Page2', '.jpg', 0, 1366221197, 23, '2013-04-17 13:53:17', 0);
INSERT INTO `images` VALUES(47, 6, 'Sdf', 'sdfsdf', 'sdf', '/uploads/gallery-6/stencil1', '.png', 0, 1366221221, 35, '2013-04-17 13:53:41', 0);
INSERT INTO `images` VALUES(48, 25, 'Icons', 'Curling Babies.', ' ', '/uploads/gallery-25/iconslarge', '.jpg', 0, 1366221259, 22, '2013-04-17 13:54:19', 0);
INSERT INTO `images` VALUES(49, 17, 'Type II Posters', 'Posters from Type II', 'Typography', '/uploads/gallery-17/Screen_shot_2013-04-17_at_1.53_.55_PM_', '.png', 0, 1366221263, 32, '2013-04-17 13:54:23', 0);
INSERT INTO `images` VALUES(50, 11, 'I rise poster', 'exercise in typographic voice using the poem Still I Rise (Maya Angelou)', 'Is the shape of the figure readable? \nIs the composition working?  ', '/uploads/gallery-11/I-RISE-9JPEG', '.jpg', 0, 1366221266, 30, '2013-04-17 13:54:26', 0);
INSERT INTO `images` VALUES(61, 17, 'Lights', 'Event photography - concert at House of Blues in Boston, Mass.', 'Composition', '/uploads/gallery-17/Screen_shot_2013-04-17_at_1.55_.46_PM_', '.png', 0, 1366221413, 32, '2013-04-17 13:56:54', 0);
INSERT INTO `images` VALUES(59, 26, 'Proportion Grid', ' ', ' ', '/uploads/gallery-26/Guides2_3DObject', '.jpg', 0, 1366221373, 25, '2013-04-17 13:56:13', 0);
INSERT INTO `images` VALUES(60, 27, 'AIFF Logo', ' ', ' ', '/uploads/gallery-27/Screen_shot_2013-04-17_at_1.55_.00_PM_1', '.png', 0, 1366221374, 33, '2013-04-17 13:56:14', 0);
INSERT INTO `images` VALUES(63, 11, 'Personal logo', 'personal logo using my initials: KK ', 'Looks pretty industrial, which ones is working the best, how can I take these and make them more human?', '/uploads/gallery-11/Screen_Shot_2013-04-17_at_1.56_.59_PM_', '.png', 0, 1366221478, 30, '2013-04-17 13:57:58', 0);
INSERT INTO `images` VALUES(64, 17, 'Booklet Cover', 'Graphic Identity Exercise ', ' ', '/uploads/gallery-17/Screen_shot_2013-04-16_at_9.39_.51_PM_', '.png', 0, 1366221495, 32, '2013-04-17 13:58:16', 0);
INSERT INTO `images` VALUES(66, 26, 'Proportion Final 1', ' ', ' ', '/uploads/gallery-26/02_12', '.jpg', 0, 1366221538, 25, '2013-04-17 13:58:59', 0);
INSERT INTO `images` VALUES(67, 17, 'Event Poster', ' ', ' ', '/uploads/gallery-17/Screen_shot_2013-04-08_at_8.21_.20_AM_', '.png', 0, 1366221539, 32, '2013-04-17 13:58:59', 0);
INSERT INTO `images` VALUES(78, 18, 'Pray Away Agony', ' ', ' ', '/uploads/gallery-18/IMG_09451', '.jpg', 0, 1366222010, 26, '2013-04-17 14:06:50', 0);
INSERT INTO `images` VALUES(69, 12, 'Brattle Theatre', '20x30 inches ', ' ', '/uploads/gallery-12/Brattle_Theater21', '.jpg', 0, 1366221558, 28, '2013-04-17 13:59:19', 0);
INSERT INTO `images` VALUES(71, 26, 'Proportion Final 2', ' ', ' ', '/uploads/gallery-26/02_22', '.jpg', 0, 1366221572, 25, '2013-04-17 13:59:32', 0);
INSERT INTO `images` VALUES(76, 11, 'Cassandre', 'Biographical poster designed in the style of the artist', 'How''s it lookin?', '/uploads/gallery-11/Screen_Shot_2013-04-17_at_2.01_.00_PM_', '.png', 0, 1366221698, 30, '2013-04-17 14:01:38', 0);
INSERT INTO `images` VALUES(73, 12, 'Brattle Theatre', ' ', ' ', '/uploads/gallery-12/Brattle_Theater4', '.jpg', 0, 1366221644, 28, '2013-04-17 14:00:45', 0);
INSERT INTO `images` VALUES(74, 17, 'Arizona Can Design', 'Entry for competition 2012', ' ', '/uploads/gallery-17/Screen_shot_2013-04-17_at_1.59_.46_PM_', '.png', 0, 1366221645, 32, '2013-04-17 14:00:45', 0);
INSERT INTO `images` VALUES(75, 26, 'Proportion Final 3', ' ', ' ', '/uploads/gallery-26/012', '.jpg', 0, 1366221666, 25, '2013-04-17 14:01:06', 0);
INSERT INTO `images` VALUES(79, 22, '49 Photographs ', ' ', ' ', '/uploads/gallery-22/Screen_shot_2013-04-17_at_2.07_.45_PM_', '.png', 0, 1366222117, 37, '2013-04-17 14:08:38', 0);
INSERT INTO `images` VALUES(80, 5, '49 Photos', ' ', ' ', '/uploads/gallery-5/elipseo', '.jpg', 0, 1366222442, 34, '2013-04-17 14:14:03', 0);
INSERT INTO `images` VALUES(81, 18, 'Zen', ' ', ' ', '/uploads/gallery-18/Zen', '.jpg', 0, 1366222528, 26, '2013-04-17 14:15:29', 0);
INSERT INTO `images` VALUES(82, 28, 'Cracker', ' ', ' ', '/uploads/gallery-28/Skin_Therapy', '.jpg', 0, 1366222645, 28, '2013-04-17 14:17:25', 0);
INSERT INTO `images` VALUES(84, 23, 'Folded Object', 'Folded object project for Design Systems course. Printed on vellum. ', ' ', '/uploads/gallery-23/IMG_0243_copy', '.jpg', 0, 1366222839, 23, '2013-04-17 14:20:39', 0);
INSERT INTO `images` VALUES(85, 23, '49 Photographs', 'Infographic of 49 of my own photographs. ', ' ', '/uploads/gallery-23/Infograph_V2_copy_copy', '.jpg', 0, 1366223077, 23, '2013-04-17 14:24:37', 0);
INSERT INTO `images` VALUES(86, 18, 'Wearing my Pride', 'in progress', ' ', '/uploads/gallery-18/IMG_1570', '.JPG', 0, 1366223168, 26, '2013-04-17 14:26:09', 0);
INSERT INTO `images` VALUES(88, 30, 'Red Honey Bees', 'first time making something with illustator', ' ', '/uploads/gallery-30/Red_honey_bees3', '.jpg', 0, 1366224724, 26, '2013-04-17 14:52:04', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

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
INSERT INTO `ratings` VALUES(32, '5', '5', '5', '1', '1', '5', 26, 27, 0, '2013-04-17 13:50:29');
INSERT INTO `ratings` VALUES(33, '3', '4', '4', '4', '4', '60', 33, 35, 0, '2013-04-17 13:57:38');
INSERT INTO `ratings` VALUES(34, '4', '5', '4', '4', '4', '21', 22, 35, 0, '2013-04-17 13:59:27');
INSERT INTO `ratings` VALUES(35, '5', '3', '3', '4', '4', '40', 25, 35, 0, '2013-04-17 14:00:12');
INSERT INTO `ratings` VALUES(36, '3', '4', '4', '4', '4', '32', 22, 34, 0, '2013-04-17 14:00:44');
INSERT INTO `ratings` VALUES(37, '3', '4', '4', '4', '4', '32', 22, 34, 0, '2013-04-17 14:00:44');
INSERT INTO `ratings` VALUES(38, '3', '4', '4', '4', '4', '32', 22, 34, 0, '2013-04-17 14:00:44');
INSERT INTO `ratings` VALUES(39, '3', '4', '4', '4', '4', '32', 22, 34, 0, '2013-04-17 14:00:44');
INSERT INTO `ratings` VALUES(40, '3', '4', '4', '4', '4', '32', 22, 34, 0, '2013-04-17 14:00:44');
INSERT INTO `ratings` VALUES(41, '2', '2', '2', '3', '3', '43', 34, 35, 0, '2013-04-17 14:02:26');
INSERT INTO `ratings` VALUES(42, '4', '3', '4', '4', '4', '31', 34, 22, 0, '2013-04-17 14:02:37');
INSERT INTO `ratings` VALUES(43, '5', '4', '5', '5', '5', '50', 30, 34, 0, '2013-04-17 14:03:19');
INSERT INTO `ratings` VALUES(44, '4', '4', '4', '4', '4', '1', 25, 34, 0, '2013-04-17 14:04:42');
INSERT INTO `ratings` VALUES(45, '4', '4', '5', '4', '4', '36', 22, 32, 0, '2013-04-17 14:05:19');
INSERT INTO `ratings` VALUES(46, '4', '4', '4', '4', '4', '76', 30, 34, 0, '2013-04-17 14:05:51');
INSERT INTO `ratings` VALUES(47, '5', '5', '5', '5', '5', '69', 28, 22, 0, '2013-04-17 14:07:04');
INSERT INTO `ratings` VALUES(48, '4', '4', '3', '5', '5', '40', 25, 30, 0, '2013-04-17 14:07:54');
INSERT INTO `ratings` VALUES(49, '3', '2', '3', '4', '4', '74', 32, 33, 0, '2013-04-17 14:09:28');
INSERT INTO `ratings` VALUES(50, '5', '4', '4', '4', '4', '36', 22, 30, 0, '2013-04-17 14:10:24');
INSERT INTO `ratings` VALUES(51, '4', '5', '5', '5', '5', '35', 37, 25, 0, '2013-04-17 14:10:38');
INSERT INTO `ratings` VALUES(52, '1', '2', '3', '3', '3', '45', 23, 34, 0, '2013-04-17 14:10:48');
INSERT INTO `ratings` VALUES(53, '4', '4', '4', '4', '4', '76', 30, 37, 0, '2013-04-17 14:11:01');
INSERT INTO `ratings` VALUES(54, '4', '3', '2', '4', '4', '64', 32, 37, 0, '2013-04-17 14:11:59');
INSERT INTO `ratings` VALUES(55, '2', '3', '1', '3', '3', '38', 32, 30, 0, '2013-04-17 14:12:53');
INSERT INTO `ratings` VALUES(56, '5', '5', '4', '4', '4', '73', 28, 37, 0, '2013-04-17 14:14:33');
INSERT INTO `ratings` VALUES(57, '5', '5', '5', '5', '5', '69', 28, 25, 0, '2013-04-17 14:14:34');
INSERT INTO `ratings` VALUES(58, '4', '4', '4', '5', '5', '75', 25, 34, 0, '2013-04-17 14:14:51');
INSERT INTO `ratings` VALUES(59, '2', '3', '3', '3', '3', '47', 35, 33, 0, '2013-04-17 14:15:30');
INSERT INTO `ratings` VALUES(60, '4', '4', '4', '4', '4', '78', 26, 23, 0, '2013-04-17 14:16:47');
INSERT INTO `ratings` VALUES(61, '3', '4', '5', '5', '5', '75', 25, 26, 0, '2013-04-17 14:17:07');
INSERT INTO `ratings` VALUES(62, '3', '4', '3', '4', '4', '13', 27, 30, 0, '2013-04-17 14:18:22');
INSERT INTO `ratings` VALUES(63, '4', '5', '4', '4', '4', '62', 23, 26, 0, '2013-04-17 14:18:37');
INSERT INTO `ratings` VALUES(64, '5', '5', '5', '5', '5', '69', 28, 34, 0, '2013-04-17 14:18:56');
INSERT INTO `ratings` VALUES(65, '3', '4', '3', '4', '4', '80', 34, 23, 0, '2013-04-17 14:26:36');
INSERT INTO `ratings` VALUES(66, '3', '4', '3', '5', '5', '71', 25, 26, 0, '2013-04-17 14:27:17');
INSERT INTO `ratings` VALUES(67, '3', '4', '4', '4', '4', '85', 23, 28, 0, '2013-04-17 14:27:31');
INSERT INTO `ratings` VALUES(68, '4', '5', '5', '4', '4', '69', 28, 26, 0, '2013-04-17 14:28:22');
INSERT INTO `ratings` VALUES(69, '5', '4', '4', '5', '5', '35', 37, 26, 0, '2013-04-17 14:29:56');
INSERT INTO `ratings` VALUES(70, '5', '4', '4', '4', '4', '39', 37, 26, 0, '2013-04-17 14:30:41');
INSERT INTO `ratings` VALUES(71, '4', '4', '4', '4', '4', '6', 35, 23, 0, '2013-04-17 14:31:05');
INSERT INTO `ratings` VALUES(72, '5', '5', '5', '5', '5', '85', 23, 22, 0, '2013-04-17 14:33:09');
INSERT INTO `ratings` VALUES(73, '5', '5', '5', '5', '5', '85', 23, 34, 0, '2013-04-17 14:34:15');
INSERT INTO `ratings` VALUES(74, '4', '3', '5', '4', '4', '81', 26, 32, 0, '2013-04-17 14:34:58');
INSERT INTO `ratings` VALUES(75, '2', '2', '1', '1', '1', '63', 30, 34, 0, '2013-04-17 14:36:06');
INSERT INTO `ratings` VALUES(76, '3', '3', '3', '4', '4', '33', 34, 23, 0, '2013-04-17 14:45:17');
INSERT INTO `ratings` VALUES(77, '4', '5', '5', '4', '4', '2', 22, 23, 0, '2013-04-17 14:52:45');
INSERT INTO `ratings` VALUES(78, '5', '5', '5', '4', '4', '24', 30, 23, 0, '2013-04-17 14:56:09');
INSERT INTO `ratings` VALUES(79, '2', '2', '3', '5', '5', '76', 30, 26, 0, '2013-04-17 15:25:02');
INSERT INTO `ratings` VALUES(80, '2', '3', '3', '5', '5', '7', 35, 1, 0, '2013-04-18 18:39:59');
INSERT INTO `ratings` VALUES(81, '1', '3', '2', '3', '3', '89', 4, 1, 0, '2013-04-18 22:30:09');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

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
  `role` enum('admin','faculty','user') NOT NULL DEFAULT 'user',
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `about` text NOT NULL,
  `help` int(1) NOT NULL DEFAULT '1',
  `image` varchar(128) NOT NULL DEFAULT '',
  `image_type` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(1, 'Admin', 'admin', 'admin@demo.com', '449c07d5e71b90f6dcc5dd9c24f35ad11727fee1', '', 1, '', '');
INSERT INTO `users` VALUES(2, 'Bart Simpson', 'user', 'bart@simpson.com', '5f314545c2f93c0e2f5f07269e82787a631006d1', '', 1, '', '');
INSERT INTO `users` VALUES(3, 'Miss Krabappel', 'faculty', 'krabappel@school.com', 'c39f153ca610930f27fafec212321e7ebcd6aef8', '', 1, '', '');
INSERT INTO `users` VALUES(4, 'Matthew White', 'faculty', 'matt@demo.com', '1ff89b9b753668c5f31d8079343cdb6b96030e8b', '', 1, '', '');
INSERT INTO `users` VALUES(5, 'lisa', 'user', 'lisa@test.com', '6b39bc2757237fe59be26ccfbeeee6eadac92d52', '', 1, '', '');
INSERT INTO `users` VALUES(6, 'joetest', 'user', 'joe@test.com', 'f5609ff57c02cd1f5f353877c73f3fba4ff175d7', '', 1, '', '');
INSERT INTO `users` VALUES(7, 'edecarol', 'user', 'edecarol@lesley.edu', '06de3dff27b132ca7537f77fd555cb2c283a2331', '', 1, '', '');
INSERT INTO `users` VALUES(8, 'epervary', 'user', 'epervary@lesley.edu', 'aa6537bcec462f5efccd3a724dedf78d153da392', '', 1, '', '');
INSERT INTO `users` VALUES(9, 'bgrabow2 ', 'user', 'bgrabow2@lesley.edu', '64b7ba7de2be2d7dbab05f952a075cba5bfa42d1', '', 1, '', '');
INSERT INTO `users` VALUES(10, 'egwozdz2', 'user', 'egwozdz2@lesley.edu', '612ca1dfb79a8ea7f169deb955c2183a57fa145b', '', 1, '', '');
INSERT INTO `users` VALUES(11, 'ajiang', 'user', 'ajiang@lesley.edu', '5707cdcc31c42dc25a6a8d6f4f59d96c734cb5a2', '', 1, '', '');
INSERT INTO `users` VALUES(12, 'mkeane2', 'user', 'mkeane2@lesley.edu', 'dda44286b7a8cf40f550da50ef79e708f8744a2b', '', 1, '', '');
INSERT INTO `users` VALUES(13, 'jlaurent', 'user', 'jlaurent@lesley.edu', '0ab145ac444c11404bfab24253f97ef21b238cb4', '', 1, '', '');
INSERT INTO `users` VALUES(14, 'mmead2', 'user', 'mmead2@lesley.edu', '0f851b149271061f6c6cc6d9fcbc4b4d134f18aa', '', 1, '', '');
INSERT INTO `users` VALUES(15, 'petridis', 'user', 'petridis@lesley.edu', 'cea9ce3e2b153b460759106cf7e7555ffc03f339', '', 1, '', '');
INSERT INTO `users` VALUES(16, 'cross2', 'user', 'cross2@lesley.edu', 'd4313962bbf60b17c5bab5b62f1a0f301f6cc3a9', '', 1, '', '');
INSERT INTO `users` VALUES(17, 'prudik', 'user', 'prudik@lesley.edu', 'edb381d923dcb59368b877bde90f231c8e257b9f', '', 1, '', '');
INSERT INTO `users` VALUES(18, 'rstockma', 'user', 'rstockma@lesley.edu', '1efc68663f416e293a56dde6df03629dce94ac52', '', 1, '', '');
INSERT INTO `users` VALUES(19, 'atobin3', 'user', 'atobin3@lesley.edu', '39ab44bdab558324340a015209301f03f0a09172', '', 1, '', '');
INSERT INTO `users` VALUES(20, 'twillett', 'user', 'twillett@lesley.edu', 'ce563122470e54c350b61e36f62f3fe8b7308131', '', 1, '', '');
INSERT INTO `users` VALUES(21, 'iwolf', 'user', 'iwolf@lesley.edu', '78e08adaea56898882fcf265d0e93f8e1fac6995', '', 1, '', '');
INSERT INTO `users` VALUES(22, 'rbaker6', 'user', 'rbaker6@lesley.edu', '36cbbcdfcb2b023623e62dea3405d51936d1d579', '', 1, '', '');
INSERT INTO `users` VALUES(23, 'cchum', 'user', 'cchum@lesley.edu', 'd77c0ae571bb01f2c1853649d916fac84dd6f74e', '', 1, '', '');
INSERT INTO `users` VALUES(24, 'lxacus', 'user', 'lxacus@gmail.com', '0bbc447ae4066eef338039013c787bb1c18c3d76', '', 1, '', '');
INSERT INTO `users` VALUES(25, 'sdemers', 'user', 'sdemers@lesley.edu', 'ebdfa5c668f58c8f282c92572f6f2d0bba6bf28a', '', 1, '', '');
INSERT INTO `users` VALUES(26, 'lding', 'user', 'lding@lesley.edu', '2decea06a40474d8050b63f4c41b3252feeb0d8d', '', 1, '', '');
INSERT INTO `users` VALUES(27, 'pdipietr', 'user', 'pdipietr@lesley.edu', '68648ff3c17278fe9266894f2ed7df73650539ab', '', 1, '', '');
INSERT INTO `users` VALUES(28, 'mdoan', 'user', 'mdoan90@gmail.com', 'fc37a30f06501056ecc760f2310153e359d7b4e1', '', 1, '', '');
INSERT INTO `users` VALUES(29, 'efalco', 'user', 'efalco@lesley.edu', 'bb493fb8b39215fe5c4e86aafa787e723e3f4f15', '', 1, '', '');
INSERT INTO `users` VALUES(30, 'kkelly13', 'user', 'kkelly13@lesley.edu', 'c7caf58246eb1fcc87f57dacae0dea901b489871', '', 1, '', '');
INSERT INTO `users` VALUES(31, 'slizano', 'user', 'slizano@lesley.edu', '9f548e2c9d9f838243a2678fe1bb6d825d2b093a', '', 1, '', '');
INSERT INTO `users` VALUES(32, 'rmcquade', 'user', 'rmcquade@lesley.edu', '5dcaef3fe594fe7e963c5f1e7c6b37dd7676d5c5', '', 1, '', '');
INSERT INTO `users` VALUES(33, 'lmille16', 'user', 'lmille16@lesley.edu', 'c024d1efa05951fa9f13471815f76e4dbb9d75d9', '', 1, '', '');
INSERT INTO `users` VALUES(34, 'rrodrig6', 'user', 'rrodrig6@lesley.edu', 'f5ba90748c81de7ab26b0e377c6d03fa40c93559', '', 1, '', '');
INSERT INTO `users` VALUES(35, 'mtoomaji', 'user', 'mtoomaji@lesley.edu', 'c61038ebb2f5bceb4d5b76c85f825d8cdc7cd8ac', '', 1, '', '');
INSERT INTO `users` VALUES(36, 'ctupper', 'user', 'ctupper@lesley.edu', '523e93fc94dc1e7199dcc5e0ef59aef4e9fddcd8', '', 1, '', '');
INSERT INTO `users` VALUES(37, 'ctupper1', 'user', 'ctupper@test.com', '7933406be785aa5ccff0fd1ff2d552885829b14a', '', 1, '', '');
