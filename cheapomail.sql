-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2014 at 11:20 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cheapomail`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text NOT NULL,
  `subject` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `recipient_ids` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='message table' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `message`
--



-- --------------------------------------------------------

--
-- Table structure for table `message_read`
--

CREATE TABLE IF NOT EXISTS `message_read` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL DEFAULT '0',
  `reader_id` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` text CHARACTER SET ascii,
  `last_name` text CHARACTER SET ascii,
  `password` text CHARACTER SET ascii,
  `username` text CHARACTER SET ascii,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

INSERT INTO user (first_name, last_name, password, username) VALUES ('Bobby','Thomas','Thomas12','bobbyv');
INSERT INTO user (first_name, last_name, password, username) VALUES ('Tom','Jones','Jones876','tommy');
INSERT INTO user (first_name, last_name, password, username) VALUES ('Cath','Matthew','Matthew9','cathy');
INSERT INTO user (first_name, last_name, password, username) VALUES ('Kevin','Matthew','Matthew7','kevie');
INSERT INTO user (first_name, last_name, password, username) VALUES ('Thomas','Simpson','Simpson8','tommy4');
INSERT INTO user (first_name, last_name, password, username) VALUES ('Faith','James','James145','jamie');
INSERT INTO user (first_name, last_name, password, username) VALUES ('Steve','Lowe','Lowe1256','stevey');
INSERT INTO user (first_name, last_name, password, username) VALUES ('Catherine','Matt','Matt2709','mattie');
INSERT INTO user (first_name, last_name, password, username) VALUES ('donovan','vaughn','INFO2180','admin');

SHOW TABLES;
SELECT * FROM user;
SELECT * FROM message;
SELECT * FROM message_read;