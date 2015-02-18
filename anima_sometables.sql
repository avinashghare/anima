-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2015 at 04:33 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `anima`
--
CREATE DATABASE IF NOT EXISTS `anima` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `anima`;

-- --------------------------------------------------------

--
-- Table structure for table `modelgallery`
--

CREATE TABLE IF NOT EXISTS `modelgallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `modelgallery`
--

INSERT INTO `modelgallery` (`id`, `model`, `title`, `image`, `timestamp`, `order`) VALUES
(2, 1, 'ID1', 'nav1.png', '2015-02-17 10:31:10', 2),
(3, 2, 'model2 gallery', 'nav2.png', '2015-02-17 09:55:36', 1),
(4, 1, '2', 'nav3.png', '2015-02-17 10:15:38', 3),
(5, 2, 'dsfvsd', 'nav8.png', '2015-02-17 13:01:53', 3),
(6, 26, 'inin', 'event4882.jpg', '2015-02-18 09:28:02', 3),
(7, 26, 'uybuyb', 'event4883.jpg', '2015-02-18 09:28:13', 6),
(8, 3, 'Demo', 'event4884.jpg', '2015-02-18 09:35:51', 9),
(9, 4, 'sdkcsd', 'event4885.jpg', '2015-02-18 09:42:54', 1),
(10, 26, 'jkanckajs', 'event48813.jpg', '2015-02-18 11:04:50', 6),
(11, 26, 'hbh', 'event48814.jpg', '2015-02-18 11:05:00', 7),
(12, 26, 'hghh', 'event48815.jpg', '2015-02-18 11:05:14', 88);

-- --------------------------------------------------------

--
-- Table structure for table `modelgalleryimage`
--

CREATE TABLE IF NOT EXISTS `modelgalleryimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `modelgallery` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `modelgalleryimage`
--

INSERT INTO `modelgalleryimage` (`id`, `name`, `image`, `type`, `order`, `modelgallery`, `timestamp`) VALUES
(2, 'demo', 'demo.png', '1', 11, 2, '2015-02-17 10:54:32'),
(3, 'demo3', 'demo.png', '1', 11, 2, '2015-02-17 10:54:32'),
(4, 'dempppppmm', 'nav6.png', '0', 5, 1, '2015-02-17 12:55:48'),
(6, 'dscsd', 'nav9.png', '1', 6, 3, '2015-02-17 13:02:23'),
(7, 'demo', 'event4886.jpg', '1', 1, 9, '2015-02-18 09:44:10'),
(8, 'ajhjjhhj', 'event4887.jpg', '0', 1, 7, '2015-02-18 11:03:16'),
(9, 'ijuiu', 'event4888.jpg', '0', 3, 7, '2015-02-18 09:51:40'),
(10, 'demo', 'event48812.jpg', '1', 9, 7, '2015-02-18 11:02:50'),
(11, 'jsdcjsd', 'event48816.jpg', '1', 23, 12, '2015-02-18 11:05:29'),
(12, 'ajnxjaskjdnckjsd', 'event48825.jpg', '1', 2, 6, '2015-02-18 11:35:33'),
(13, 'zkjncksjd', 'event48826.jpg', '1', 9, 12, '2015-02-18 11:37:09');

-- --------------------------------------------------------

--
-- Table structure for table `newsimage`
--

CREATE TABLE IF NOT EXISTS `newsimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order` int(11) NOT NULL,
  `news` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `newsimage`
--

INSERT INTO `newsimage` (`id`, `name`, `image`, `timestamp`, `order`, `news`) VALUES
(1, 'demo', 'event48832.jpg', '2015-02-18 15:32:08', 1, 1),
(2, 'demooo', 'event48830.jpg', '2015-02-18 15:28:23', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `photographeralbumgallery`
--

CREATE TABLE IF NOT EXISTS `photographeralbumgallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photographeralbum` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `photographeralbumgallery`
--

INSERT INTO `photographeralbumgallery` (`id`, `photographeralbum`, `title`, `image`, `timestamp`, `order`) VALUES
(1, 1, 'demo edit1', 'event4881.jpg', '2015-02-18 08:17:22', 1),
(2, 1, 'test edit', 'event488.jpg', '2015-02-18 08:14:49', 2),
(3, 2, 'Demo', 'event4889.jpg', '2015-02-18 10:26:30', 1),
(4, 5, 'dcsdcd', 'event48820.jpg', '2015-02-18 11:11:17', 2),
(5, 4, 'Demo', 'event48822.jpg', '2015-02-18 11:33:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `photographeralbumgalleryimage`
--

CREATE TABLE IF NOT EXISTS `photographeralbumgalleryimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `photographeralbumgallery` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `photographeralbumgalleryimage`
--

INSERT INTO `photographeralbumgalleryimage` (`id`, `name`, `image`, `type`, `order`, `photographeralbumgallery`, `timestamp`) VALUES
(1, 'demo', 'logo.png', '1', 1, 2, '2015-02-18 10:08:10'),
(2, 'demo', 'event48811.jpg', '0', 1, 3, '2015-02-18 11:01:44'),
(3, 'demo', 'event48821.jpg', '0', 5, 4, '2015-02-18 11:11:42'),
(4, 'Demo27', 'event48823.jpg', '1', 1, 5, '2015-02-18 12:12:49'),
(5, 'test123', 'event48824.jpg', '0', 2, 5, '2015-02-18 11:34:34'),
(6, 'skdcsk', 'event48827.jpg', '1', 3, 5, '2015-02-18 11:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `photographercategory`
--

CREATE TABLE IF NOT EXISTS `photographercategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `photographercategory`
--

INSERT INTO `photographercategory` (`id`, `name`, `status`, `order`) VALUES
(1, 'Photographers', 1, 1),
(2, 'Hair & Makeup Artists', 1, 2),
(3, 'Hair Stylists', 1, 3),
(4, 'Stylists', 1, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
