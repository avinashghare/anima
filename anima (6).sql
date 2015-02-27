-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2015 at 01:13 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `linktype` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `keyword`, `url`, `linktype`, `parent`, `isactive`, `order`, `icon`) VALUES
(1, 'Users', '', '', 'site/viewusers', 1, 0, 1, 1, 'icon-user'),
(4, 'Dashboard', '', '', 'site/index', 1, 0, 1, 0, 'icon-dashboard'),
(5, 'Model Category', '', '', 'site/viewcategory', 1, 0, 1, 2, 'icon-dashboard'),
(6, 'Instagram', '', '', 'site/viewinstagram', 1, 0, 1, 9, 'icon-dashboard'),
(7, 'News', '', '', 'site/viewnews', 1, 0, 1, 8, 'icon-dashboard'),
(8, 'Models', '', '', 'site/viewmodel', 1, 0, 1, 3, 'icon-dashboard'),
(9, 'Creative Artist', '', '', 'site/viewphotographer', 1, 0, 1, 4, 'icon-dashboard'),
(10, 'Creative Artist Sub Category', '', '', 'site/viewphotographeralbum', 1, 0, 1, 5, 'icon-dashboard'),
(11, 'Article', '', '', 'site/viewarticle', 1, 0, 1, 7, 'icon-dashboard'),
(12, 'Creative Artist Category', '', '', 'site/viewphotographercategory', 1, 0, 1, 9, 'icon-dashboard'),
(13, 'Slider 1', '', '', 'site/viewsliderone', 1, 0, 1, 10, 'icon-dashboard'),
(14, 'Slider 2', '', '', 'site/viewslidertwo', 1, 0, 1, 11, 'icon-dashboard'),
(15, 'Slider 3', '', '', 'site/viewsliderthree', 1, 0, 1, 12, 'icon-dashboard');

-- --------------------------------------------------------

--
-- Table structure for table `menuaccess`
--

CREATE TABLE IF NOT EXISTS `menuaccess` (
  `menu` int(11) NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menuaccess`
--

INSERT INTO `menuaccess` (`menu`, `access`) VALUES
(1, 1),
(4, 1),
(2, 1),
(3, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliderone`
--

CREATE TABLE IF NOT EXISTS `sliderone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `sliderone`
--

INSERT INTO `sliderone` (`id`, `name`, `image`, `order`) VALUES
(1, 'demo', '311.jpg', 4),
(2, 'demo', '311.jpg', 10),
(3, 'demo', '311.jpg', 9),
(4, 'demo', '311.jpg', 8),
(5, 'demo', '311.jpg', 7),
(6, 'demo', '311.jpg', 6),
(7, 'demo', '311.jpg', 5),
(8, 'demo', '311.jpg', 2),
(9, 'demo', '311.jpg', 3),
(10, 'demo', '311.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliderthree`
--

CREATE TABLE IF NOT EXISTS `sliderthree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sliderthree`
--

INSERT INTO `sliderthree` (`id`, `name`, `image`, `order`) VALUES
(1, 'demo', '11.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slidertwo`
--

CREATE TABLE IF NOT EXISTS `slidertwo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `slidertwo`
--

INSERT INTO `slidertwo` (`id`, `name`, `image`, `order`) VALUES
(1, 'demo', '41.jpg', 2),
(2, 'demo', '201.jpg', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
