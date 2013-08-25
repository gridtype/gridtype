# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.29)
# Database: gridtype
# Generation Time: 2013-06-27 12:27:05 +0000
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;

INSERT INTO `albums` (`id`, `name`, `url`, `full_txt`, `private`, `rank`, `owner`)
VALUES
	(26,'Design Systems','Design-Systems','',0,9974,25),
	(5,'Spring 2013','Spring-2013','',0,9995,34),
	(6,'Album One','Album-One','stuffs',0,9994,35),
	(7,'56th Annual Book Show Catalog','56th-Annual-Book-Show-Catalog','',0,9993,25),
	(8,'Album Two','Album-Two','Things',0,9992,35),
	(9,'Gallery 9','gallery_9','',0,9991,22),
	(10,'Collage','Collage','',0,9990,33),
	(11,'Posters','Posters','',0,9989,30),
	(12,'Posters','Posters','This album includes all my poster designs ',0,9988,28),
	(13,'Type three','Type-three','',0,9987,27),
	(24,'Photo','Photo','',0,9976,23),
	(25,'Other Things','Other-Things','There are other things in this album.',0,9975,22),
	(23,'Design','Design','',0,9977,23),
	(15,'Packaging and Presentation Project','Packaging-and-Presentation-Project','Stuff I made for Packaging and Presentation!',0,9985,22),
	(16,'My Work','My-Work','A portfolio of my work from 2011 - 2013.',0,9984,22),
	(17,'My Work','My-Work','A portfolio of my work 2(011 - 2013).',0,9983,32),
	(18,'BFA Thesis','BFA-Thesis','Sculptures for my BFA Thesis',0,9982,26),
	(19,'Secret Seal','Secret-Seal','',0,9981,27),
	(20,'Screen','Screen','digital/web work\n',0,9980,30),
	(22,'My Work','My-Work','',0,9978,37),
	(27,'Design','Design','',0,9973,33),
	(28,'Packaging ','gallery_28','',0,9972,28),
	(29,'Gallery 29','gallery_29','',0,9971,22),
	(30,'illustrator','illustrator','playing around with illustrator',0,9970,26),
	(31,'AIB Lee Cusack','AIB-Lee-Cusack','',0,9969,24),
	(33,'Gallery 33','gallery_33','',0,9967,22),
	(35,'Gallery 35','gallery_35','',0,9965,22),
	(37,'Lines and Words','Lines-and-Words','',0,9963,1),
	(38,'Test Album','Test-Album','This is a test album. WOOOT!',0,9962,1);

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
	('1dca75d3c27be53ccf77eed5fdf49305','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36',1372275895,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('d79f422f6bbb7643432352b51af47e08','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36',1372268127,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}'),
	('31d16f20e64a3a684140c39e366c7cda','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36',1372295447,'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:14:\"admin@demo.com\";s:2:\"id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:8:\"username\";s:5:\"Admin\";s:9:\"logged_in\";b:1;}');

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
  `role` int(1) NOT NULL DEFAULT '0',
  `flagged` int(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;

INSERT INTO `comments` (`id`, `image_id`, `user_id`, `comment`, `role`, `flagged`, `timestamp`)
VALUES
	(34,88,1,'asdfasdfasdf',0,1,'2013-06-18 16:50:15'),
	(35,88,1,'asdf',0,0,'2013-06-18 16:53:22'),
	(36,88,1,'This is a first test.',0,0,'2013-06-18 16:55:36'),
	(37,88,1,'asdfasdf',0,0,'2013-06-18 16:59:27'),
	(38,88,1,'asdfasdf',0,0,'2013-06-18 16:59:32'),
	(39,88,1,'weqrewrtewr',0,0,'2013-06-18 17:00:40'),
	(40,88,1,'This is test.',0,0,'2013-06-18 17:23:37'),
	(4,13,1,'This is pretty fucking cool!',0,0,'2013-03-22 23:28:05'),
	(5,12,1,'This design certainly didn\'t last long.',0,0,'2013-03-23 12:14:58'),
	(6,13,1,'Hello',0,0,'2013-03-23 16:59:46'),
	(7,13,1,'Hello Moto',0,0,'2013-03-23 17:51:08'),
	(8,14,1,'Love the use of red',0,0,'2013-03-23 22:35:15'),
	(9,24,4,'The white background seems to separate the content from the background.',0,0,'2013-04-02 20:54:57'),
	(10,17,1,'The type faces in some places are difficult to read. Maybe try increasing the type size for legibility.',0,0,'2013-04-03 22:00:09'),
	(11,17,1,'Steve jobs artwork is great. The type is hard to read in some places',0,0,'2013-04-05 14:29:39'),
	(12,17,1,'Love how the dark background makes the figure pop. Could use a bit more contrast in the foreground.',0,0,'2013-04-05 14:36:41'),
	(13,17,1,'Hello',0,0,'2013-04-06 11:04:13'),
	(14,28,5,'The header is lovely, but a bit big and eating up valuable screen realestate. The video also has nice plcement.',0,0,'2013-04-06 12:52:48'),
	(15,76,1,'Somewhat Working',0,0,'2013-04-18 18:02:36'),
	(16,7,1,'I ike the overall concept but I think it need work',0,0,'2013-04-18 18:40:29'),
	(17,84,1,'Hello moto',0,0,'2013-05-23 22:02:18'),
	(18,84,1,'HERRO!',0,0,'2013-05-23 22:02:46'),
	(41,84,1,'This looks amazing!',0,0,'2013-06-19 07:46:28'),
	(42,88,1,'Hello!',0,0,'2013-06-19 20:17:53'),
	(43,92,2,'This is GREAT!',0,0,'2013-06-22 11:13:41'),
	(44,86,1,'This is interesting.',0,0,'2013-06-25 11:15:23');

/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `url` varchar(256) NOT NULL,
  `description` varchar(100) NOT NULL,
  `private` int(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;

INSERT INTO `groups` (`id`, `name`, `url`, `description`, `private`, `timestamp`, `creator`)
VALUES
	(1,'Fighting Mongoose','','Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Nul',0,'2013-06-25 17:19:01',0),
	(2,'Team America','','Maecenas faucibus mollis interdum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Maec',0,'2013-06-25 17:19:01',0);

/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;

INSERT INTO `images` (`id`, `album`, `name`, `description`, `objective`, `image`, `image_type`, `highlight`, `rank`, `owner`, `timestamp`, `flagged`)
VALUES
	(1,7,'Social Media Presence','','','/uploads/gallery-7/MockupEdits','.png',0,1366220553,25,'2013-04-17 13:42:34',0),
	(2,15,'Packaging Group Shot','Packages packages packages packages','All the things!','/uploads/gallery-15/largegroupshot','.jpg',0,1366220557,22,'2013-04-17 13:42:37',0),
	(5,18,' Meditate Apart Anxiety','','','/uploads/gallery-18/Meditator','.jpg',0,1366220657,26,'2013-04-17 13:44:17',0),
	(6,6,'can','cool stuff','how it looks','/uploads/gallery-6/cannn2','.png',0,1366220666,35,'2013-04-17 13:44:26',0),
	(8,5,'Type 3 ','The Brattle Theatre Poster Series ','','/uploads/gallery-5/25_stroke','.jpg',0,1366220680,34,'2013-04-17 13:44:40',0),
	(11,15,'Mints!','Mints Mints Mints','Mints?','/uploads/gallery-15/largemints','.jpg',0,1366220686,22,'2013-04-17 13:44:47',0),
	(13,19,'Secret Seal Logo','Logo for an liqueur brand that i make at home','','/uploads/gallery-19/secret_seal','.png',0,1366220726,27,'2013-04-17 13:45:26',0),
	(14,7,'Social Media Presence','','','/uploads/gallery-7/01_2','.jpg',0,1366220749,25,'2013-04-17 13:45:49',0),
	(16,19,'Secret Seal bottle','','','/uploads/gallery-19/luna-rosa-package-design','.png',0,1366220763,27,'2013-04-17 13:46:03',0),
	(17,15,'Crackers!','Crackers crackers crackers','Are these crackers?','/uploads/gallery-15/largecrackers','.jpg',0,1366220770,22,'2013-04-17 13:46:10',0),
	(18,8,'yada','yada','yada','/uploads/gallery-8/concrete','.png',0,1366220806,35,'2013-04-17 13:46:46',0),
	(19,8,'yada','yada','yada','/uploads/gallery-8/concrete1','.png',0,1366220813,35,'2013-04-17 13:46:53',0),
	(20,7,'Social Media Presence','','','/uploads/gallery-7/01_21','.jpg',0,1366220824,25,'2013-04-17 13:47:04',0),
	(21,15,'Milk.','This is milk.','Is this milk?','/uploads/gallery-15/largemilk','.jpg',0,1366220828,22,'2013-04-17 13:47:08',0),
	(22,19,'Secret Seal Bottle Top','','','/uploads/gallery-19/secret_seal_luna_rosa','.png',0,1366220834,27,'2013-04-17 13:47:14',0),
	(23,8,'yada','yada','yada','/uploads/gallery-8/concrete2','.png',0,1366220844,35,'2013-04-17 13:47:24',0),
	(24,20,'Fencing Illustrations','For a digital infographic explaining the basics of fencing to non-fencing parents and children','Is the visual language accessible? Is it too young?','/uploads/gallery-20/Screen_Shot_2013-03-28_at_7.04_.26_PM_','.png',0,1366220848,30,'2013-04-17 13:47:28',0),
	(25,8,'yada','yada','yada','/uploads/gallery-8/concrete3','.png',0,1366220860,35,'2013-04-17 13:47:40',0),
	(27,8,'yada','yada','yada','/uploads/gallery-8/concrete4','.png',0,1366220879,35,'2013-04-17 13:47:59',0),
	(30,17,'Book Spread','Spread of a booklet.','Readability, overall look.','/uploads/gallery-17/Screen_shot_2013-04-07_at_2.25_.33_AM_','.png',0,1366220925,32,'2013-04-17 13:48:46',0),
	(32,15,'Wine','Perfect for bored housewives.','Does this suck?','/uploads/gallery-15/largewine','.jpg',0,1366220948,22,'2013-04-17 13:49:09',0),
	(35,22,'Marylin\'s Persona','','','/uploads/gallery-22/Screen_shot_2013-04-17_at_1.49_.21_PM_','.png',0,1366221005,37,'2013-04-17 13:50:06',0),
	(36,25,'Joy Division Book Cover','Ian Curtis is dead.','','/uploads/gallery-25/largejdcover','.jpg',0,1366221016,22,'2013-04-17 13:50:16',0),
	(37,6,'ugh','i hate this','this sucks','/uploads/gallery-6/flower3','.png',0,1366221044,35,'2013-04-17 13:50:44',0),
	(38,17,'Typpgraphy from Freshman Year','Typography','This was before I took Type I, maybe just overall success/failure.','/uploads/gallery-17/Screen_shot_2013-04-17_at_1.50_.34_PM_','.png',0,1366221084,32,'2013-04-17 13:51:24',0),
	(39,22,'Kurt\'s Persona','','','/uploads/gallery-22/Screen_shot_2013-04-17_at_1.50_.57_PM_','.png',0,1366221094,37,'2013-04-17 13:51:34',0),
	(40,7,'Catalog Cover Design','','','/uploads/gallery-7/THEFinalCoverDesign','.jpg',0,1366221100,25,'2013-04-17 13:51:41',0),
	(51,6,'www','www','www','/uploads/gallery-6/inkflower1','.jpg',0,1366221299,35,'2013-04-17 13:54:59',0),
	(44,10,'100 Years Kaleidoscope','Installation','','/uploads/gallery-10/548341_10151168947009795_491324116_n','.jpg',0,1366221196,33,'2013-04-17 13:53:16',0),
	(45,23,'Newspaper Layout','','','/uploads/gallery-23/Newspaper_Front_Page2','.jpg',0,1366221197,23,'2013-04-17 13:53:17',0),
	(47,6,'Sdf','sdfsdf','sdf','/uploads/gallery-6/stencil1','.png',0,1366221221,35,'2013-04-17 13:53:41',0),
	(48,25,'Icons','Curling Babies.','','/uploads/gallery-25/iconslarge','.jpg',0,1366221259,22,'2013-04-17 13:54:19',0),
	(49,17,'Type II Posters','Posters from Type II','Typography','/uploads/gallery-17/Screen_shot_2013-04-17_at_1.53_.55_PM_','.png',0,1366221263,32,'2013-04-17 13:54:23',0),
	(50,11,'I rise poster','exercise in typographic voice using the poem Still I Rise (Maya Angelou)','Is the shape of the figure readable? \nIs the composition working?  ','/uploads/gallery-11/I-RISE-9JPEG','.jpg',0,1366221266,30,'2013-04-17 13:54:26',0),
	(61,17,'Lights','Event photography - concert at House of Blues in Boston, Mass.','Composition','/uploads/gallery-17/Screen_shot_2013-04-17_at_1.55_.46_PM_','.png',0,1366221413,32,'2013-04-17 13:56:54',0),
	(59,26,'Proportion Grid','','','/uploads/gallery-26/Guides2_3DObject','.jpg',0,1366221373,25,'2013-04-17 13:56:13',0),
	(60,27,'AIFF Logo','','','/uploads/gallery-27/Screen_shot_2013-04-17_at_1.55_.00_PM_1','.png',0,1366221374,33,'2013-04-17 13:56:14',0),
	(63,11,'Personal logo','personal logo using my initials: KK ','Looks pretty industrial, which ones is working the best, how can I take these and make them more human?','/uploads/gallery-11/Screen_Shot_2013-04-17_at_1.56_.59_PM_','.png',0,1366221478,30,'2013-04-17 13:57:58',0),
	(64,17,'Booklet Cover','Graphic Identity Exercise ','','/uploads/gallery-17/Screen_shot_2013-04-16_at_9.39_.51_PM_','.png',0,1366221495,32,'2013-04-17 13:58:16',0),
	(66,26,'Proportion Final 1','','','/uploads/gallery-26/02_12','.jpg',0,1366221538,25,'2013-04-17 13:58:59',0),
	(67,17,'Event Poster','','','/uploads/gallery-17/Screen_shot_2013-04-08_at_8.21_.20_AM_','.png',0,1366221539,32,'2013-04-17 13:58:59',0),
	(78,18,'Pray Away Agony','','','/uploads/gallery-18/IMG_09451','.jpg',0,1366222010,26,'2013-04-17 14:06:50',0),
	(69,12,'Brattle Theatre','20x30 inches ','','/uploads/gallery-12/Brattle_Theater21','.jpg',0,1366221558,28,'2013-04-17 13:59:19',0),
	(71,26,'Proportion Final 2','','','/uploads/gallery-26/02_22','.jpg',0,1366221572,25,'2013-04-17 13:59:32',0),
	(76,11,'Cassandre','Biographical poster designed in the style of the artist','How\'s it lookin?','/uploads/gallery-11/Screen_Shot_2013-04-17_at_2.01_.00_PM_','.png',0,1366221698,30,'2013-04-17 14:01:38',0),
	(73,12,'Brattle Theatre','','','/uploads/gallery-12/Brattle_Theater4','.jpg',0,1366221644,28,'2013-04-17 14:00:45',0),
	(74,17,'Arizona Can Design','Entry for competition 2012','','/uploads/gallery-17/Screen_shot_2013-04-17_at_1.59_.46_PM_','.png',0,1366221645,32,'2013-04-17 14:00:45',0),
	(75,26,'Proportion Final 3','','','/uploads/gallery-26/012','.jpg',0,1366221666,25,'2013-04-17 14:01:06',0),
	(79,22,'49 Photographs ','','','/uploads/gallery-22/Screen_shot_2013-04-17_at_2.07_.45_PM_','.png',0,1366222117,37,'2013-04-17 14:08:38',0),
	(80,5,'49 Photos',' Jesse is typing something.',' To follow Mr Spock\'s Orders','/uploads/gallery-5/elipseo','.jpg',0,1366222442,34,'2013-04-17 14:14:03',0),
	(81,18,'Zen','','','/uploads/gallery-18/Zen','.jpg',0,1366222528,26,'2013-04-17 14:15:29',0),
	(82,28,'Cracker','','','/uploads/gallery-28/Skin_Therapy','.jpg',0,1366222645,28,'2013-04-17 14:17:25',0),
	(84,23,'Folded Object','Folded object project for Design Systems course. Printed on vellum. ','','/uploads/gallery-23/IMG_0243_copy','.jpg',0,1366222839,23,'2013-04-17 14:20:39',0),
	(85,23,'49 Photographs','Infographic of 49 of my own photographs. ','','/uploads/gallery-23/Infograph_V2_copy_copy','.jpg',0,1366223077,23,'2013-04-17 14:24:37',0),
	(86,18,'Wearing my Pride','in progress','','/uploads/gallery-18/IMG_1570','.JPG',0,1366223168,26,'2013-04-17 14:26:09',0),
	(88,30,'Red Honey Bees','first time making something with illustator','','/uploads/gallery-30/Red_honey_bees3','.jpg',0,1366224724,26,'2013-04-17 14:52:04',1),
	(92,37,'The Master in Type','','','/uploads/gallery-37/Steven_Paul_Jobs_by_dylanroscover','.jpg',0,1366589192,1,'2013-04-21 20:06:32',0);

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
	(23,'3','3','3','4','4','16',4,1,0,'2013-02-26 20:19:41'),
	(22,'2','2','5','1','1','2',1,4,0,'2013-02-26 20:16:25'),
	(21,'5','1','4','1','1','15',4,1,0,'2013-02-26 20:07:48'),
	(20,'2','1','5','2','2','8',1,4,0,'2013-02-26 19:03:54'),
	(18,'4','3','1','3','3','7',2,4,0,'2013-02-26 18:25:05'),
	(19,'1','1','1','1','1','11',4,1,0,'2013-02-26 18:29:56'),
	(25,'3','4','2','2','2','13',4,1,0,'2013-03-05 20:38:22'),
	(26,'3','4','3','2','2','17',2,1,0,'2013-03-17 21:42:10'),
	(27,'3','4','2','2','2','23',1,4,0,'2013-04-02 21:05:12'),
	(28,'2','2','3','2','2','26',1,2,0,'2013-04-02 21:56:03'),
	(29,'5','1','3','1','1','24',1,2,0,'2013-04-02 21:57:15'),
	(30,'3','2','4','2','2','30',6,2,0,'2013-04-06 13:39:55'),
	(31,'3','3','3','3','3','30',6,5,0,'2013-04-06 13:40:31'),
	(32,'5','5','5','1','1','5',26,27,0,'2013-04-17 13:50:29'),
	(33,'3','4','4','4','4','60',33,35,0,'2013-04-17 13:57:38'),
	(34,'4','5','4','4','4','21',22,35,0,'2013-04-17 13:59:27'),
	(35,'5','3','3','4','4','40',25,35,0,'2013-04-17 14:00:12'),
	(36,'3','4','4','4','4','32',22,34,0,'2013-04-17 14:00:44'),
	(37,'3','4','4','4','4','32',22,34,0,'2013-04-17 14:00:44'),
	(38,'3','4','4','4','4','32',22,34,0,'2013-04-17 14:00:44'),
	(39,'3','4','4','4','4','32',22,34,0,'2013-04-17 14:00:44'),
	(40,'3','4','4','4','4','32',22,34,0,'2013-04-17 14:00:44'),
	(41,'2','2','2','3','3','43',34,35,0,'2013-04-17 14:02:26'),
	(42,'4','3','4','4','4','31',34,22,0,'2013-04-17 14:02:37'),
	(43,'5','4','5','5','5','50',30,34,0,'2013-04-17 14:03:19'),
	(44,'4','4','4','4','4','1',25,34,0,'2013-04-17 14:04:42'),
	(45,'4','4','5','4','4','36',22,32,0,'2013-04-17 14:05:19'),
	(46,'4','4','4','4','4','76',30,34,0,'2013-04-17 14:05:51'),
	(47,'5','5','5','5','5','69',28,22,0,'2013-04-17 14:07:04'),
	(48,'4','4','3','5','5','40',25,30,0,'2013-04-17 14:07:54'),
	(49,'3','2','3','4','4','74',32,33,0,'2013-04-17 14:09:28'),
	(50,'5','4','4','4','4','36',22,30,0,'2013-04-17 14:10:24'),
	(51,'4','5','5','5','5','35',37,25,0,'2013-04-17 14:10:38'),
	(52,'1','2','3','3','3','45',23,34,0,'2013-04-17 14:10:48'),
	(53,'4','4','4','4','4','76',30,37,0,'2013-04-17 14:11:01'),
	(54,'4','3','2','4','4','64',32,37,0,'2013-04-17 14:11:59'),
	(55,'2','3','1','3','3','38',32,30,0,'2013-04-17 14:12:53'),
	(56,'5','5','4','4','4','73',28,37,0,'2013-04-17 14:14:33'),
	(57,'5','5','5','5','5','69',28,25,0,'2013-04-17 14:14:34'),
	(58,'4','4','4','5','5','75',25,34,0,'2013-04-17 14:14:51'),
	(59,'2','3','3','3','3','47',35,33,0,'2013-04-17 14:15:30'),
	(60,'4','4','4','4','4','78',26,23,0,'2013-04-17 14:16:47'),
	(61,'3','4','5','5','5','75',25,26,0,'2013-04-17 14:17:07'),
	(62,'3','4','3','4','4','13',27,30,0,'2013-04-17 14:18:22'),
	(63,'4','5','4','4','4','62',23,26,0,'2013-04-17 14:18:37'),
	(64,'5','5','5','5','5','69',28,34,0,'2013-04-17 14:18:56'),
	(65,'3','4','3','4','4','80',34,23,0,'2013-04-17 14:26:36'),
	(66,'3','4','3','5','5','71',25,26,0,'2013-04-17 14:27:17'),
	(67,'3','4','4','4','4','85',23,28,0,'2013-04-17 14:27:31'),
	(68,'4','5','5','4','4','69',28,26,0,'2013-04-17 14:28:22'),
	(69,'5','4','4','5','5','35',37,26,0,'2013-04-17 14:29:56'),
	(70,'5','4','4','4','4','39',37,26,0,'2013-04-17 14:30:41'),
	(71,'4','4','4','4','4','6',35,23,0,'2013-04-17 14:31:05'),
	(72,'5','5','5','5','5','85',23,22,0,'2013-04-17 14:33:09'),
	(73,'5','5','5','5','5','85',23,34,0,'2013-04-17 14:34:15'),
	(74,'4','3','5','4','4','81',26,32,0,'2013-04-17 14:34:58'),
	(75,'2','2','1','1','1','63',30,34,0,'2013-04-17 14:36:06'),
	(76,'3','3','3','4','4','33',34,23,0,'2013-04-17 14:45:17'),
	(77,'4','5','5','4','4','2',22,23,0,'2013-04-17 14:52:45'),
	(78,'5','5','5','4','4','24',30,23,0,'2013-04-17 14:56:09'),
	(79,'2','2','3','5','5','76',30,26,0,'2013-04-17 15:25:02'),
	(80,'2','3','3','5','5','7',35,1,0,'2013-04-18 18:39:59'),
	(81,'1','3','2','3','3','89',4,1,0,'2013-04-18 22:30:09'),
	(82,'1','1','1','1','1','80',34,1,0,'2013-05-11 21:17:14'),
	(83,'1','1','1','5','1','88',26,1,0,'2013-05-25 15:55:30'),
	(84,'3','4','4','4','4','84',23,1,0,'2013-06-18 12:59:08'),
	(85,'5','5','5','5','5','86',26,1,0,'2013-06-18 13:01:12'),
	(86,'5','5','5','5','1','44',33,1,0,'2013-06-19 20:22:28'),
	(87,'5','1','5','1','5','92',1,2,0,'2013-06-22 11:13:34'),
	(88,'5','1','1','1','1','66',25,1,0,'2013-06-24 12:09:07');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `role` enum('admin','faculty','user') NOT NULL DEFAULT 'user',
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `about` text NOT NULL,
  `help` int(1) NOT NULL DEFAULT '1',
  `image` varchar(128) NOT NULL DEFAULT '',
  `image_type` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `role`, `email`, `password`, `about`, `help`, `image`, `image_type`)
VALUES
	(1,'Admin','admin','admin@demo.com','449c07d5e71b90f6dcc5dd9c24f35ad11727fee1','',1,'',''),
	(2,'Bart Simpson','user','bart@simpson.com','1128233a990d13c283f93ca9d11bc76d4ed570a8','',1,'',''),
	(3,'Miss Krabappel','faculty','krabappel@school.com','c39f153ca610930f27fafec212321e7ebcd6aef8','',1,'',''),
	(4,'Matthew White','faculty','matt@demo.com','1ff89b9b753668c5f31d8079343cdb6b96030e8b','',1,'',''),
	(5,'lisa','user','lisa@test.com','6b39bc2757237fe59be26ccfbeeee6eadac92d52','',1,'',''),
	(6,'joetest','user','joe@test.com','f5609ff57c02cd1f5f353877c73f3fba4ff175d7','',1,'',''),
	(7,'edecarol','user','edecarol@lesley.edu','06de3dff27b132ca7537f77fd555cb2c283a2331','',1,'',''),
	(8,'epervary','user','epervary@lesley.edu','aa6537bcec462f5efccd3a724dedf78d153da392','',1,'',''),
	(9,'bgrabow2 ','user','bgrabow2@lesley.edu','64b7ba7de2be2d7dbab05f952a075cba5bfa42d1','',1,'',''),
	(10,'egwozdz2','user','egwozdz2@lesley.edu','612ca1dfb79a8ea7f169deb955c2183a57fa145b','',1,'',''),
	(11,'ajiang','user','ajiang@lesley.edu','5707cdcc31c42dc25a6a8d6f4f59d96c734cb5a2','',1,'',''),
	(12,'mkeane2','user','mkeane2@lesley.edu','dda44286b7a8cf40f550da50ef79e708f8744a2b','',1,'',''),
	(13,'jlaurent','user','jlaurent@lesley.edu','0ab145ac444c11404bfab24253f97ef21b238cb4','',1,'',''),
	(14,'mmead2','user','mmead2@lesley.edu','0f851b149271061f6c6cc6d9fcbc4b4d134f18aa','',1,'',''),
	(15,'petridis','user','petridis@lesley.edu','cea9ce3e2b153b460759106cf7e7555ffc03f339','',1,'',''),
	(16,'cross2','user','cross2@lesley.edu','d4313962bbf60b17c5bab5b62f1a0f301f6cc3a9','',1,'',''),
	(17,'prudik','user','prudik@lesley.edu','edb381d923dcb59368b877bde90f231c8e257b9f','',1,'',''),
	(18,'rstockma','user','rstockma@lesley.edu','1efc68663f416e293a56dde6df03629dce94ac52','',1,'',''),
	(19,'atobin3','user','atobin3@lesley.edu','39ab44bdab558324340a015209301f03f0a09172','',1,'',''),
	(20,'twillett','user','twillett@lesley.edu','ce563122470e54c350b61e36f62f3fe8b7308131','',1,'',''),
	(21,'iwolf','user','iwolf@lesley.edu','78e08adaea56898882fcf265d0e93f8e1fac6995','',1,'',''),
	(22,'rbaker6','user','rbaker6@lesley.edu','36cbbcdfcb2b023623e62dea3405d51936d1d579','',1,'',''),
	(23,'cchum','user','cchum@lesley.edu','d77c0ae571bb01f2c1853649d916fac84dd6f74e','',1,'',''),
	(24,'lxacus','user','lxacus@gmail.com','0bbc447ae4066eef338039013c787bb1c18c3d76','',1,'',''),
	(25,'sdemers','user','sdemers@lesley.edu','ebdfa5c668f58c8f282c92572f6f2d0bba6bf28a','',1,'',''),
	(26,'lding','user','lding@lesley.edu','2decea06a40474d8050b63f4c41b3252feeb0d8d','',1,'',''),
	(27,'pdipietr','user','pdipietr@lesley.edu','68648ff3c17278fe9266894f2ed7df73650539ab','',1,'',''),
	(28,'mdoan','user','mdoan90@gmail.com','fc37a30f06501056ecc760f2310153e359d7b4e1','',1,'',''),
	(29,'efalco','user','efalco@lesley.edu','bb493fb8b39215fe5c4e86aafa787e723e3f4f15','',1,'',''),
	(30,'kkelly13','user','kkelly13@lesley.edu','c7caf58246eb1fcc87f57dacae0dea901b489871','',1,'',''),
	(31,'slizano','user','slizano@lesley.edu','9f548e2c9d9f838243a2678fe1bb6d825d2b093a','',1,'',''),
	(32,'rmcquade','user','rmcquade@lesley.edu','5dcaef3fe594fe7e963c5f1e7c6b37dd7676d5c5','',1,'',''),
	(33,'lmille16','user','lmille16@lesley.edu','c024d1efa05951fa9f13471815f76e4dbb9d75d9','',1,'',''),
	(34,'rrodrig6','user','rrodrig6@lesley.edu','f5ba90748c81de7ab26b0e377c6d03fa40c93559','',1,'',''),
	(35,'mtoomaji','user','mtoomaji@lesley.edu','c61038ebb2f5bceb4d5b76c85f825d8cdc7cd8ac','',1,'',''),
	(36,'ctupper','user','ctupper@lesley.edu','523e93fc94dc1e7199dcc5e0ef59aef4e9fddcd8','',1,'',''),
	(37,'ctupper1','user','ctupper@test.com','7933406be785aa5ccff0fd1ff2d552885829b14a','',1,'','');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users_groups`;

CREATE TABLE `users_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`)
VALUES
	(1,1,1);

/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
