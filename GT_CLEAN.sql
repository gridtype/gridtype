-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 01, 2013 at 02:36 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gtclean`
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `albums`
--


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `url` varchar(256) NOT NULL,
  `description` varchar(100) NOT NULL,
  `private` int(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `groups`
--


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `images`
--


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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ratings`
--


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

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` VALUES(1, 1, 1);
