-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2015 at 10:56 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

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
-- Table structure for table `accesslevel`
--

CREATE TABLE IF NOT EXISTS `accesslevel` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accesslevel`
--

INSERT INTO `accesslevel` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'Operator'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `anima_albumimage`
--

CREATE TABLE IF NOT EXISTS `anima_albumimage` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `json` text NOT NULL,
  `photographeralbum` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anima_albumimage`
--

INSERT INTO `anima_albumimage` (`id`, `name`, `image`, `type`, `order`, `json`, `photographeralbum`) VALUES
(1, 'tttt', 'Nature_at_its_Best!!!7.png', '0', 1, '222222', 1),
(2, 'asxas', 'Nature_at_its_Best!!!8.png', '1', 1, 'asxa', 1),
(4, 'avinash', 'Nature_at_its_Best!!!11.png', '1', 2, 'ajsbxhajs', 1),
(5, 'asxas', 'Nature_at_its_Best!!!12.png', '1', 3, 'asjxbajs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `anima_article`
--

CREATE TABLE IF NOT EXISTS `anima_article` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `json` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anima_article`
--

INSERT INTO `anima_article` (`id`, `title`, `json`, `content`) VALUES
(1, 'Demo', 'acac', 'dacasc');

-- --------------------------------------------------------

--
-- Table structure for table `anima_category`
--

CREATE TABLE IF NOT EXISTS `anima_category` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anima_category`
--

INSERT INTO `anima_category` (`id`, `name`, `status`, `order`) VALUES
(3, 'Female In Town', 1, 1),
(4, 'Female Out Of Town', 1, 2),
(5, 'Male In Town', 1, 3),
(6, 'Male Out Of Town', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `anima_instagram`
--

CREATE TABLE IF NOT EXISTS `anima_instagram` (
`id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anima_instagram`
--

INSERT INTO `anima_instagram` (`id`, `image`, `url`, `status`, `user`, `likes`) VALUES
(1, 'Nature_at_its_Best!!!.png', 'http://storage.googleapis.com/lylalovescsv/product.csv', 1, 1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `anima_model`
--

CREATE TABLE IF NOT EXISTS `anima_model` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `json` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anima_model`
--

INSERT INTO `anima_model` (`id`, `name`, `json`, `image`, `category`, `bio`) VALUES
(27, 'Alicia Kom', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"178cm/5''10"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"84cm/33\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"66cm/26\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"94cm/37\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"41"}]', 'a1.jpg', 3, ''),
(28, 'Ashika in New York', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"173cm/5\\"8"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"85cm/33.5''"},{"label":"waist","type":"text","classes":"","placeholder":"","value":"64cm/25''"},{"label":"hips","type":"text","classes":"","placeholder":"","value":"94cm/37''"},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"39\\t"}]', 'ash1.jpg', 3, ''),
(29, 'Brooke', '<p>[{"label":"Height","type":"text","classes":"","placeholder":"","value":"173cm/5''8"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"82cm/32.5\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"62.5cm/24.5\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"89cm/35\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"40.5\\t"}]</p>', 'b1.jpg', 3, ''),
(30, 'Debbie', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"174cm/5''8.5\\""},{"label":"bust","type":"text","classes":"","placeholder":"","value":"82cm/32.5\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"63cm/25\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"89cm/35\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"39\\t"}]', 'd1.jpg', 3, ''),
(31, 'Jenny', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"174cm/5''8"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"87cm/34.5\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"60cm/23\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"89cm/35\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"38\\t"}]', 'jen1.jpg', 3, ''),
(32, 'Keisha in London', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"173cm/5''8"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"81cm/32\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"61cm/24\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"89cm/35\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"37/38"}]', 'Keisha1.jpg', 3, ''),
(33, 'Mariia', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"179cm/5''10"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"88cm/34.5\\" (34b)"},{"label":"waist","type":"text","classes":"","placeholder":"","value":"64cm/25.5\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"92cm/36.5\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"40/41"}]', 'Mar1.jpg', 3, ''),
(34, 'Monica', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"178cm/5''10"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"81cm/32\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"61cm/24\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"90cm/35.5\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"black"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"40"}]', 'Beauty_Shoot_-1.jpg', 3, ''),
(35, 'Natasha', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"177cm/5''9.5"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"81cm/32\\" (32b)"},{"label":"waist","type":"text","classes":"","placeholder":"","value":"61cm/24\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"91cm/36\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"black"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"dark brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"38"}]', 'n_22.jpg', 3, ''),
(36, 'Nibedita', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"170cm/5''7"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"84cm/33\\" (32b)"},{"label":"waist","type":"text","classes":"","placeholder":"","value":"62cm/24\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"89cm/35\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brownn"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brownn"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"38"}]', 'nib1.jpg', 3, ''),
(37, 'Olga', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"179cm/5''10.5"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"89cm/35\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"66cm/26\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"94cm/37\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"blue"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"blonde"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"40"}]', 'olg1.jpg', 3, ''),
(38, 'Pooja', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"175cm/5''9"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"81cm/32\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"63cm/25\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"89cm/35\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"37/38"}]', 'p1.jpg', 3, ''),
(39, 'Rafaelly', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"182cm/5''11.5"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"81cm/32\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"62cm/24.5\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"89cm/35\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"40\\t"}]', 'raf1.jpg', 3, ''),
(40, 'Rasika', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":""},{"label":"bust","type":"text","classes":"","placeholder":"","value":""},{"label":"waist","type":"text","classes":"","placeholder":"","value":""},{"label":"hips","type":"text","classes":"","placeholder":"","value":""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":""},{"label":"brown","type":"text","classes":"","placeholder":"","value":""},{"label":"shoe","type":"text","classes":"","placeholder":"","value":""}]', 'ras1.jpg', 3, ''),
(41, 'Suzy', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"182cm/5''11.5"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"86cm/34\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"63cm/25\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"93cm/36.5\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"42"}]', 'su1.JPG', 3, ''),
(42, 'Tanya', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"171cm/5''7.5"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"83cm/32.5"},{"label":"waist","type":"text","classes":"","placeholder":"","value":"62.5cm/24.5\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"91cm/36\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"39\\t"}]', 'Ta1.jpg', 3, ''),
(43, 'Adhiraj', '<p>[{"label":"Height","type":"text","classes":"","placeholder":"","value":"185cm/6''1 "},{"label":"bust","type":"text","classes":"","placeholder":"","value":"97cm/38\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"80cm/31.5\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"93cm/37\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"black"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"44\\t"}]</p>', 'ad11.jpg', 5, ''),
(44, 'Anuj', '<p>[{"label":"Height","type":"text","classes":"","placeholder":"","value":"185cm/6''1"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"99cm/39\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"79cm/31\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"94cm/37\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"43\\t"}]</p>', 'a7b.jpg', 5, ''),
(45, 'Jack', '<p>[{"label":"Height","type":"text","classes":"","placeholder":"","value":"185cm/6''1"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"98cm/39\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"80cm/31\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"43"}]</p>', 'ja1.jpg', 5, ''),
(46, 'Prabh', '<p>[{"label":"Height","type":"text","classes":"","placeholder":"","value":"188cm/6''2"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"98cm/38.5\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"81cm/32\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"95cm/37.5"},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"44\\t"}]</p>', 'p110.jpg', 5, ''),
(47, 'Prateek', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"188cm/6''2"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"101cm/40\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"82cm/32\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"44"}]', 'pt1.jpg', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `anima_modelimage`
--

CREATE TABLE IF NOT EXISTS `anima_modelimage` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `json` text NOT NULL,
  `model` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anima_modelimage`
--

INSERT INTO `anima_modelimage` (`id`, `name`, `image`, `type`, `order`, `json`, `model`) VALUES
(2, 'deee', 'Nature_at_its_Best!!!6.png', '1', 2, 'saxas', 1),
(3, 'hbahs', 'Nature_at_its_Best!!!6.png', '1', 1, 'saxas', 1),
(4, 'demo', 'Nature_at_its_Best!!!13.png', '1', 1, 'asxas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `anima_modelvideo`
--

CREATE TABLE IF NOT EXISTS `anima_modelvideo` (
`id` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anima_modelvideo`
--

INSERT INTO `anima_modelvideo` (`id`, `model`, `video`, `order`) VALUES
(1, 1, 'demo', 22),
(2, 1, 'demo2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `anima_news`
--

CREATE TABLE IF NOT EXISTS `anima_news` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `json` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anima_news`
--

INSERT INTO `anima_news` (`id`, `title`, `json`, `image`, `content`) VALUES
(1, 'Demo', 'jhbjhb', 'Nature_at_its_Best!!!2.png', 'jhbjhbjh');

-- --------------------------------------------------------

--
-- Table structure for table `anima_photographer`
--

CREATE TABLE IF NOT EXISTS `anima_photographer` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anima_photographer`
--

INSERT INTO `anima_photographer` (`id`, `name`, `city`, `order`, `content`, `image`, `category`, `bio`) VALUES
(2, '2', '2', 2, '2', '32.jpg', 1, ''),
(4, 'Dirk Bader', 'Munich', 0, '', 'D2.jpg', 1, ''),
(5, 'GEORGE KRITIKOS', 'Mumbai', 0, '', 'g2.jpg', 2, ''),
(6, 'MICHAEL SALMEN', 'Mumbai', 0, '', 'M5.jpg', 2, ''),
(7, 'ZEENAT WILKINSON', 'Mumbai', 0, '', 'z1.jpg', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `anima_photographeralbum`
--

CREATE TABLE IF NOT EXISTS `anima_photographeralbum` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `tab` varchar(255) NOT NULL,
  `photographer` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anima_photographeralbum`
--

INSERT INTO `anima_photographeralbum` (`id`, `name`, `order`, `image`, `tab`, `photographer`) VALUES
(5, 'test', 1, 'event48819.jpg', 'a', 2),
(6, 'Beauty', 0, 'D21.jpg', 'Beauty', 4),
(7, 'Editorial', 0, 'D210.jpg', 'Editorial', 4),
(8, 'Advertising', 0, 'g5.jpg', 'Advertising', 5),
(9, 'Editorial', 0, '068_GRIN_03_2014.jpg', 'Editorial', 5),
(10, 'Men', 0, 'GE2.jpg', 'men', 5),
(11, 'beauty', 0, 'M2.jpg', 'beauty', 6),
(12, 'Fashion', 0, 'z11.jpg', 'Fashion', 7);

-- --------------------------------------------------------

--
-- Table structure for table `anima_photographervideo`
--

CREATE TABLE IF NOT EXISTS `anima_photographervideo` (
`id` int(11) NOT NULL,
  `photographer` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `photographeralbum` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anima_photographervideo`
--

INSERT INTO `anima_photographervideo` (`id`, `photographer`, `video`, `order`, `photographeralbum`) VALUES
(2, 0, 'wwww', 6, 0),
(3, 1, 'videoiii', 7, 0),
(4, 1, 'video', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `logintype`
--

CREATE TABLE IF NOT EXISTS `logintype` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintype`
--

INSERT INTO `logintype` (`id`, `name`) VALUES
(1, 'Facebook'),
(2, 'Twitter'),
(3, 'Email'),
(4, 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `linktype` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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
(12, 'Creative Artist Category', '', '', 'site/viewphotographercategory', 1, 0, 1, 9, 'icon-dashboard');

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
(12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modelgallery`
--

CREATE TABLE IF NOT EXISTS `modelgallery` (
`id` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modelgallery`
--

INSERT INTO `modelgallery` (`id`, `model`, `title`, `image`, `timestamp`, `order`) VALUES
(2, 1, 'ID1', 'nav1.png', '2015-02-17 05:01:10', 2),
(3, 2, 'model2 gallery', 'nav2.png', '2015-02-17 04:25:36', 1),
(4, 1, '2', 'nav3.png', '2015-02-17 04:45:38', 3),
(5, 2, 'dsfvsd', 'nav8.png', '2015-02-17 07:31:53', 3),
(6, 26, 'inin', 'event4882.jpg', '2015-02-18 03:58:02', 3),
(7, 26, 'uybuyb', 'event4883.jpg', '2015-02-18 03:58:13', 6),
(8, 3, 'Demo', 'event4884.jpg', '2015-02-18 04:05:51', 9),
(9, 4, 'sdkcsd', 'event4885.jpg', '2015-02-18 04:12:54', 1),
(10, 26, 'jkanckajs', 'event48813.jpg', '2015-02-18 05:34:50', 6),
(11, 26, 'hbh', 'event48814.jpg', '2015-02-18 05:35:00', 7),
(12, 26, 'hghh', 'event48815.jpg', '2015-02-18 05:35:14', 88),
(13, 27, 'Portfolio', 'a11.jpg', '2015-02-20 23:41:15', 1),
(14, 28, 'Portfolio', 'ash11.jpg', '2015-02-21 00:07:59', 1),
(15, 29, 'Portfolio', 'b11.jpg', '2015-02-21 00:22:00', 1),
(16, 30, 'Portfolio', 'd11.jpg', '2015-02-21 00:27:34', 1),
(17, 31, 'Portfolio', 'jen11.jpg', '2015-02-21 00:34:53', 1),
(18, 32, 'Portfolio', 'Keisha11.jpg', '2015-02-21 00:50:37', 1),
(19, 33, 'Portfolio', 'Mar11.jpg', '2015-02-21 01:02:32', 1),
(20, 34, 'Portfolio', 'Beauty_Shoot_-11.jpg', '2015-02-21 01:23:03', 1),
(21, 35, 'Portfolio', 'n_221.jpg', '2015-02-21 01:29:01', 1),
(22, 36, 'Portfolio', 'nib11.jpg', '2015-02-21 01:45:26', 1),
(23, 37, 'Portfolio', 'olg11.jpg', '2015-02-21 01:55:08', 1),
(24, 38, 'Portfolio', 'p11.jpg', '2015-02-21 02:35:22', 1),
(25, 39, 'Portfolio', 'raf11.jpg', '2015-02-21 03:01:53', 1),
(26, 40, 'Portfolio', 'ras11.jpg', '2015-02-21 03:18:33', 1),
(27, 41, 'Portfolio', 'su11.JPG', '2015-02-21 03:39:02', 1),
(28, 42, 'Portfolio', 'Ta11.jpg', '2015-02-21 03:48:48', 1),
(29, 43, 'Portfolio', 'ad12.jpg', '2015-02-21 03:55:26', 1),
(30, 44, 'Portfolio', 'a7b1.jpg', '2015-02-21 04:09:23', 1),
(31, 45, 'Portfolio', 'ja11.jpg', '2015-02-21 04:21:14', 1),
(32, 46, 'Portfolio', 'p112.jpg', '2015-02-21 04:33:34', 1),
(33, 47, 'Portfolio', 'pt11.jpg', '2015-02-21 04:54:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modelgalleryimage`
--

CREATE TABLE IF NOT EXISTS `modelgalleryimage` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `modelgallery` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=449 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modelgalleryimage`
--

INSERT INTO `modelgalleryimage` (`id`, `name`, `image`, `type`, `order`, `modelgallery`, `timestamp`) VALUES
(2, 'demo', 'demo.png', '1', 11, 2, '2015-02-17 05:24:32'),
(3, 'demo3', 'demo.png', '1', 11, 2, '2015-02-17 05:24:32'),
(4, 'dempppppmm', 'nav6.png', '0', 5, 1, '2015-02-17 07:25:48'),
(6, 'dscsd', 'nav9.png', '1', 6, 3, '2015-02-17 07:32:23'),
(7, 'demo', 'event4886.jpg', '1', 1, 9, '2015-02-18 04:14:10'),
(8, 'ajhjjhhj', 'event4887.jpg', '0', 1, 7, '2015-02-18 05:33:16'),
(9, 'ijuiu', 'event4888.jpg', '0', 3, 7, '2015-02-18 04:21:40'),
(10, 'demo', 'event48812.jpg', '1', 9, 7, '2015-02-18 05:32:50'),
(11, 'jsdcjsd', 'event48816.jpg', '1', 2, 12, '2015-02-19 00:12:35'),
(12, 'ajnxjaskjdnckjsd', 'event48825.jpg', '1', 2, 6, '2015-02-18 06:05:33'),
(13, 'zkjncksjd', 'event48826.jpg', '1', 1, 12, '2015-02-19 00:12:35'),
(14, '', 'a2.jpg', '0', 0, 13, '2015-02-20 23:41:49'),
(15, '', 'a3.jpg', '0', 0, 13, '2015-02-20 23:42:06'),
(16, '', 'a4.jpg', '0', 0, 13, '2015-02-20 23:42:24'),
(17, '', 'a5.jpg', '0', 0, 13, '2015-02-20 23:44:06'),
(18, '', 'a6.jpg', '0', 0, 13, '2015-02-20 23:44:20'),
(19, '', 'a6a.jpg', '0', 0, 13, '2015-02-20 23:44:33'),
(20, '', 'a7.jpg', '0', 0, 13, '2015-02-20 23:44:49'),
(21, '', 'a8.jpg', '0', 0, 13, '2015-02-20 23:45:00'),
(22, '', 'a9.jpg', '0', 0, 13, '2015-02-20 23:45:15'),
(24, '', 'a101.jpg', '0', 0, 13, '2015-02-20 23:46:21'),
(26, '', 'a111.jpg', '0', 0, 13, '2015-02-20 23:46:59'),
(27, '', 'a12.jpg', '0', 0, 13, '2015-02-20 23:48:35'),
(28, '', 'a13.jpg', '0', 0, 13, '2015-02-20 23:49:02'),
(30, '', 'a14.jpg', '0', 0, 13, '2015-02-20 23:50:00'),
(31, '', 'a15.jpg', '0', 0, 13, '2015-02-20 23:50:12'),
(32, '', 'a16.jpg', '0', 0, 13, '2015-02-20 23:50:26'),
(33, '', 'a17.jpeg', '0', 0, 13, '2015-02-20 23:50:41'),
(34, '', 'a19.jpeg', '0', 0, 13, '2015-02-20 23:50:55'),
(36, '', 'a21.jpg', '0', 0, 13, '2015-02-20 23:55:48'),
(38, '', 'a231.jpg', '0', 0, 13, '2015-02-20 23:52:46'),
(39, '', 'a24.jpg', '0', 0, 13, '2015-02-20 23:54:08'),
(40, '', 'a25.jpg', '0', 0, 13, '2015-02-20 23:55:02'),
(41, '', 'a26.jpg', '0', 0, 13, '2015-02-20 23:55:26'),
(42, '', 'a27.jpg', '0', 0, 13, '2015-02-20 23:56:03'),
(43, '', 'a28.jpg', '0', 0, 13, '2015-02-20 23:56:15'),
(44, '', '', '0', 0, 13, '2015-02-20 23:58:03'),
(45, '', 'ash2.jpg', '0', 0, 14, '2015-02-21 00:08:50'),
(46, '', 'ash3.jpg', '0', 0, 14, '2015-02-21 00:09:18'),
(48, '', 'ash4.jpg', '1', 0, 14, '2015-02-21 00:11:27'),
(49, '', 'ash5.jpeg', '0', 0, 14, '2015-02-21 00:11:49'),
(50, '', 'ash6.jpg', '0', 0, 14, '2015-02-21 00:12:02'),
(51, '', 'ash7.jpg', '1', 0, 14, '2015-02-21 00:12:14'),
(52, '', 'ash8.jpg', '1', 0, 14, '2015-02-21 00:12:23'),
(54, '', 'ash91.jpg', '0', 0, 14, '2015-02-21 00:12:46'),
(55, '', 'ash10.jpg', '0', 0, 14, '2015-02-21 00:12:58'),
(56, '', 'ash111.jpg', '1', 0, 14, '2015-02-21 00:13:27'),
(57, '', 'ash12.jpg', '0', 0, 14, '2015-02-21 00:13:44'),
(58, '', 'ash13.jpg', '0', 0, 14, '2015-02-21 00:13:59'),
(59, '', 'ash14.jpg', '0', 0, 14, '2015-02-21 00:14:12'),
(60, '', 'ash15.jpg', '0', 0, 14, '2015-02-21 00:14:23'),
(61, '', 'ash16.jpg', '0', 0, 14, '2015-02-21 00:14:37'),
(62, '', 'ash17.jpg', '0', 0, 14, '2015-02-21 00:14:53'),
(63, '', 'ash18.jpg', '1', 0, 14, '2015-02-21 00:15:09'),
(64, '', 'ash19.jpg', '0', 0, 14, '2015-02-21 00:15:21'),
(65, '', 'ash20.jpg', '0', 0, 14, '2015-02-21 00:15:35'),
(66, '', 'ash21.jpg', '0', 0, 14, '2015-02-21 00:15:47'),
(67, '', 'ash22.jpg', '0', 0, 14, '2015-02-21 00:16:06'),
(68, '', 'ash23.jpg', '0', 0, 14, '2015-02-21 00:16:42'),
(69, '', 'ash24.jpg', '0', 0, 14, '2015-02-21 00:16:57'),
(70, '', 'ash25.jpg', '1', 0, 14, '2015-02-21 00:17:08'),
(71, '', 'b2.jpg', '0', 0, 15, '2015-02-21 00:22:24'),
(72, '', 'b4.jpg', '0', 0, 15, '2015-02-21 00:22:37'),
(73, '', 'b5.jpg', '0', 0, 15, '2015-02-21 00:22:48'),
(74, '', 'b6.jpg', '0', 0, 15, '2015-02-21 00:22:59'),
(75, '', 'b7.jpg', '0', 0, 15, '2015-02-21 00:23:14'),
(76, '', 'b8.jpg', '0', 0, 15, '2015-02-21 00:23:35'),
(77, '', 'b9.jpg', '0', 0, 15, '2015-02-21 00:23:56'),
(78, '', 'b10.jpg', '0', 0, 15, '2015-02-21 00:24:10'),
(79, '', 'd2.jpg', '0', 0, 16, '2015-02-21 00:28:00'),
(80, '', 'd3.jpg', '0', 0, 16, '2015-02-21 00:28:12'),
(81, '', 'd4.jpg', '0', 0, 16, '2015-02-21 00:28:23'),
(82, '', 'd5.jpg', '0', 0, 16, '2015-02-21 00:28:51'),
(83, '', 'd6.jpg', '0', 0, 16, '2015-02-21 00:29:07'),
(84, '', 'd7.jpg', '0', 0, 16, '2015-02-21 00:29:23'),
(85, '', 'd8.jpg', '0', 0, 16, '2015-02-21 00:29:50'),
(86, '', 'd9.jpg', '0', 0, 16, '2015-02-21 00:30:11'),
(87, '', 'jen2.jpg', '0', 0, 17, '2015-02-21 00:35:24'),
(88, '', 'jen3.jpg', '0', 0, 17, '2015-02-21 00:35:38'),
(89, '', 'jen4.jpg', '0', 0, 17, '2015-02-21 00:35:51'),
(90, '', 'jen5.jpg', '0', 0, 17, '2015-02-21 00:39:26'),
(91, '', 'jen6.jpg', '0', 0, 17, '2015-02-21 00:39:43'),
(92, '', 'jen7.jpg', '0', 0, 17, '2015-02-21 00:39:56'),
(93, '', 'jen8.jpg', '0', 0, 17, '2015-02-21 00:40:08'),
(94, '', 'jen9.jpg', '0', 0, 17, '2015-02-21 00:40:20'),
(95, '', 'jen10.jpg', '0', 0, 17, '2015-02-21 00:40:31'),
(96, '', 'jen111.jpg', '0', 0, 17, '2015-02-21 00:40:46'),
(97, '', 'jen12.jpg', '1', 0, 17, '2015-02-21 00:40:57'),
(98, '', 'jen13.jpg', '0', 0, 17, '2015-02-21 00:41:10'),
(99, '', 'jen14.jpg', '0', 0, 17, '2015-02-21 00:41:22'),
(100, '', 'jen15.jpg', '1', 0, 17, '2015-02-21 00:41:34'),
(101, '', 'jen16.jpg', '1', 0, 17, '2015-02-21 00:41:44'),
(103, '', 'jen171.jpg', '0', 0, 17, '2015-02-21 00:42:05'),
(105, '', 'jen18.jpg', '0', 0, 17, '2015-02-21 00:42:17'),
(106, '', 'jen19.jpg', '0', 0, 17, '2015-02-21 00:42:45'),
(107, '', 'jen20.jpg', '0', 0, 17, '2015-02-21 00:43:02'),
(108, '', 'jen21.jpg', '0', 0, 17, '2015-02-21 00:43:14'),
(109, '', 'jen22.jpg', '0', 0, 17, '2015-02-21 00:43:40'),
(110, '', 'jen23.jpg', '0', 0, 17, '2015-02-21 00:44:06'),
(111, '', 'jen24.jpg', '0', 0, 17, '2015-02-21 00:44:21'),
(112, '', 'jen25.jpg', '1', 0, 17, '2015-02-21 00:44:55'),
(113, '', 'Keisha2.jpg', '0', 0, 18, '2015-02-21 00:51:03'),
(114, '', 'keisha3.jpg', '0', 0, 18, '2015-02-21 00:51:11'),
(115, '', 'keisha4.jpg', '0', 0, 18, '2015-02-21 00:51:21'),
(116, '', 'keisha5.jpg', '0', 0, 18, '2015-02-21 00:51:30'),
(117, '', 'keisha6.jpg', '0', 0, 18, '2015-02-21 00:51:40'),
(118, '', 'keisha7.jpg', '0', 0, 18, '2015-02-21 00:51:55'),
(119, '', 'keisha8.jpg', '0', 0, 18, '2015-02-21 00:52:08'),
(120, '', 'keisha9.jpg', '0', 0, 18, '2015-02-21 00:52:18'),
(121, '', 'keisha10.jpg', '1', 0, 18, '2015-02-21 00:52:29'),
(122, '', 'keisha11.jpg', '0', 0, 18, '2015-02-21 00:52:38'),
(123, '', 'keisha12.jpg', '0', 0, 18, '2015-02-21 00:52:49'),
(124, '', 'keisha13.jpg', '0', 0, 18, '2015-02-21 00:53:00'),
(125, '', 'keisha14.jpg', '0', 0, 18, '2015-02-21 00:53:10'),
(126, '', 'keisha15.jpg', '0', 0, 18, '2015-02-21 00:53:24'),
(127, '', 'keisha16.jpg', '0', 0, 18, '2015-02-21 00:53:35'),
(128, '', 'keisha17.jpg', '0', 0, 18, '2015-02-21 00:53:47'),
(129, '', 'keisha18.jpg', '0', 0, 18, '2015-02-21 00:54:18'),
(130, '', 'keisha19.jpg', '1', 0, 18, '2015-02-21 00:54:30'),
(131, '', 'keisha20.jpg', '1', 0, 18, '2015-02-21 00:54:40'),
(132, '', 'keisha21.jpg', '0', 0, 18, '2015-02-21 00:54:53'),
(133, '', 'keisha22.jpg', '0', 0, 18, '2015-02-21 00:55:05'),
(134, '', 'keisha23.jpg', '0', 0, 18, '2015-02-21 00:55:17'),
(135, '', 'keisha24.jpg', '0', 0, 18, '2015-02-21 00:55:29'),
(136, '', 'keisha25.jpg', '1', 0, 18, '2015-02-21 00:55:40'),
(137, '', 'keisha26.jpg', '0', 0, 18, '2015-02-21 00:55:53'),
(138, '', 'keisha27.jpg', '0', 0, 18, '2015-02-21 00:56:04'),
(139, '', 'Mar3.jpg', '0', 0, 19, '2015-02-21 01:03:02'),
(140, '', 'Mar4.jpg', '0', 0, 19, '2015-02-21 01:03:12'),
(141, '', 'Mar4a.jpg', '0', 0, 19, '2015-02-21 01:03:37'),
(142, '', 'Mar4b.jpg', '0', 0, 19, '2015-02-21 01:03:50'),
(143, '', 'Mar5.jpg', '0', 0, 19, '2015-02-21 01:04:00'),
(144, '', 'Mar7.jpg', '0', 0, 19, '2015-02-21 01:04:12'),
(145, '', 'Mar8.jpg', '0', 0, 19, '2015-02-21 01:04:21'),
(146, '', 'Mar9.jpg', '0', 0, 19, '2015-02-21 01:04:33'),
(147, '', 'Mar10.jpg', '0', 0, 19, '2015-02-21 01:04:44'),
(148, '', 'Mar111.jpg', '0', 0, 19, '2015-02-21 01:04:54'),
(149, '', 'Mar12.jpg', '0', 0, 19, '2015-02-21 01:05:05'),
(150, '', 'Mar13.JPG', '0', 0, 19, '2015-02-21 01:05:17'),
(152, '', 'Mar141.JPG', '0', 0, 19, '2015-02-21 01:05:44'),
(153, '', 'Mar15.jpg', '0', 0, 19, '2015-02-21 01:05:58'),
(154, '', 'Mar16.jpg', '0', 0, 19, '2015-02-21 01:06:11'),
(155, '', 'Mar17.jpg', '0', 0, 19, '2015-02-21 01:06:22'),
(156, '', 'Mar18.jpg', '0', 0, 19, '2015-02-21 01:08:43'),
(157, '', 'Mar19.JPG', '1', 0, 19, '2015-02-21 01:08:54'),
(158, '', 'Mar20.JPG', '0', 0, 19, '2015-02-21 01:09:46'),
(159, '', 'Mar21.jpg', '0', 0, 19, '2015-02-21 01:09:59'),
(160, '', 'Mar22.jpg', '0', 0, 19, '2015-02-21 01:10:11'),
(161, '', 'Mar23.jpg', '0', 0, 19, '2015-02-21 01:10:29'),
(162, '', 'mar24.jpg', '0', 0, 19, '2015-02-21 01:10:42'),
(163, '', 'Mar25.jpg', '0', 0, 19, '2015-02-21 01:11:00'),
(164, '', 'Mar26.JPG', '1', 0, 19, '2015-02-21 01:11:28'),
(165, '', 'Mar27.jpg', '0', 0, 19, '2015-02-21 01:12:56'),
(166, '', 'Mar28.jpg', '0', 0, 19, '2015-02-21 01:13:10'),
(167, '', 'Mar6.jpg', '0', 0, 19, '2015-02-21 01:17:56'),
(168, '', 'MONIKA_001.jpg', '0', 0, 20, '2015-02-21 01:23:23'),
(169, '', 'MONIKA_002.jpg', '0', 0, 20, '2015-02-21 01:23:42'),
(170, '', 'MONIKA_003.jpg', '0', 0, 20, '2015-02-21 01:23:50'),
(172, '', 'MONIKA_009.jpg', '0', 0, 20, '2015-02-21 01:24:20'),
(173, '', 'MONIKA_010.jpg', '0', 0, 20, '2015-02-21 01:24:30'),
(174, '', 'MONIKA_011.jpg', '0', 0, 20, '2015-02-21 01:25:08'),
(175, '', 'MONIKA_012.jpg', '0', 0, 20, '2015-02-21 01:25:18'),
(176, '', 'N1.jpg', '0', 0, 21, '2015-02-21 01:29:19'),
(177, '', 'n2.jpg', '1', 0, 21, '2015-02-21 01:29:28'),
(178, '', 'n3.jpg', '0', 0, 21, '2015-02-21 01:29:38'),
(179, '', 'n4.jpg', '0', 0, 21, '2015-02-21 01:29:48'),
(180, '', 'n5.JPG', '0', 0, 21, '2015-02-21 01:29:59'),
(181, '', 'n6.jpg', '0', 0, 21, '2015-02-21 01:30:12'),
(182, '', 'n7.jpg', '1', 0, 21, '2015-02-21 01:30:21'),
(183, '', 'n8.jpg', '0', 0, 21, '2015-02-21 01:30:32'),
(184, '', 'n9.jpg', '0', 0, 21, '2015-02-21 01:30:45'),
(185, '', 'n10.jpg', '0', 0, 21, '2015-02-21 01:30:56'),
(186, '', 'n12.jpg', '0', 0, 21, '2015-02-21 01:31:07'),
(187, '', 'n13.jpg', '0', 0, 21, '2015-02-21 01:31:19'),
(189, '', 'n141.jpg', '0', 0, 21, '2015-02-21 01:31:52'),
(190, '', 'n15.jpg', '1', 0, 21, '2015-02-21 01:32:10'),
(191, '', 'n16.jpg', '0', 0, 21, '2015-02-21 01:32:27'),
(192, '', 'n17.jpg', '0', 0, 21, '2015-02-21 01:32:45'),
(193, '', 'n18.jpg', '0', 0, 21, '2015-02-21 01:33:27'),
(194, '', 'n19.jpg', '0', 0, 21, '2015-02-21 01:33:37'),
(195, '', 'n20.jpeg', '0', 0, 21, '2015-02-21 01:33:49'),
(196, '', 'n21.jpeg', '0', 0, 21, '2015-02-21 01:33:58'),
(197, '', 'n23.jpg', '1', 0, 21, '2015-02-21 01:34:06'),
(198, '', 'n24.jpg', '0', 0, 21, '2015-02-21 01:34:16'),
(199, '', 'n25.jpg', '0', 0, 21, '2015-02-21 01:34:29'),
(200, '', 'n26.jpg', '1', 0, 21, '2015-02-21 01:34:41'),
(201, '', 'n27.jpg', '0', 0, 21, '2015-02-21 01:34:51'),
(203, '', 'n281.jpg', '0', 0, 21, '2015-02-21 01:35:25'),
(204, '', 'n29.jpg', '1', 0, 21, '2015-02-21 01:35:55'),
(205, '', 'n30.jpg', '1', 0, 21, '2015-02-21 01:36:05'),
(206, '', 'n11.jpg', '0', 0, 21, '2015-02-21 01:40:22'),
(207, '', 'nib2.jpg', '0', 0, 22, '2015-02-21 01:46:48'),
(208, '', 'nib3.jpg', '0', 0, 22, '2015-02-21 01:46:58'),
(209, '', 'nib4.jpg', '0', 0, 22, '2015-02-21 01:47:14'),
(210, '', 'nib5.jpg', '0', 0, 22, '2015-02-21 01:47:32'),
(211, '', 'nib6.jpg', '0', 0, 22, '2015-02-21 01:47:49'),
(212, '', 'nib7.jpg', '0', 0, 22, '2015-02-21 01:48:05'),
(213, '', 'nib8.jpg', '0', 0, 22, '2015-02-21 01:48:15'),
(214, '', 'nib9.jpg', '0', 0, 22, '2015-02-21 01:48:26'),
(216, '', 'nib10.JPG', '1', 0, 22, '2015-02-21 01:48:55'),
(217, '', 'nib111.jpg', '1', 0, 22, '2015-02-21 01:49:04'),
(218, '', 'nib12.jpg', '0', 0, 22, '2015-02-21 01:49:18'),
(219, '', 'olg2.jpg', '1', 0, 23, '2015-02-21 01:55:47'),
(220, '', 'olg3.jpg', '0', 0, 23, '2015-02-21 01:56:02'),
(221, '', 'olg4.jpg', '0', 0, 23, '2015-02-21 01:56:12'),
(222, '', 'olg5.jpg', '0', 0, 23, '2015-02-21 01:56:22'),
(223, '', 'olg6.jpg', '0', 0, 23, '2015-02-21 01:56:34'),
(224, '', 'olg7.jpg', '0', 0, 23, '2015-02-21 01:56:46'),
(225, '', 'olg8.jpg', '0', 0, 23, '2015-02-21 01:57:02'),
(226, '', 'olg9.jpg', '0', 0, 23, '2015-02-21 01:58:44'),
(227, '', 'olg10.jpg', '0', 0, 23, '2015-02-21 01:59:04'),
(228, '', 'olg111.jpg', '0', 0, 23, '2015-02-21 01:59:18'),
(229, '', 'olg12.jpg', '0', 0, 23, '2015-02-21 01:59:27'),
(230, '', 'olg13.jpg', '0', 0, 23, '2015-02-21 01:59:39'),
(231, '', 'olg14.jpg', '0', 0, 23, '2015-02-21 02:00:03'),
(232, '', 'p2.jpg', '0', 0, 24, '2015-02-21 02:35:54'),
(233, '', 'p3.jpg', '0', 0, 24, '2015-02-21 02:36:02'),
(234, '', 'p4.jpg', '0', 0, 24, '2015-02-21 02:36:10'),
(235, '', 'p5.jpg', '0', 0, 24, '2015-02-21 02:36:20'),
(236, '', 'p6.jpg', '0', 0, 24, '2015-02-21 02:36:47'),
(237, '', 'p7.jpg', '0', 0, 24, '2015-02-21 02:37:03'),
(238, '', 'p8.jpg', '0', 0, 24, '2015-02-21 02:44:37'),
(239, '', 'p9.jpg', '0', 0, 24, '2015-02-21 02:44:53'),
(240, '', 'p10.jpg', '0', 0, 24, '2015-02-21 02:45:12'),
(241, '', 'p111.jpg', '0', 0, 24, '2015-02-21 02:45:26'),
(242, '', 'p12.jpg', '1', 0, 24, '2015-02-21 02:46:03'),
(243, '', 'p13.jpg', '0', 0, 24, '2015-02-21 02:46:14'),
(244, '', 'p14.jpg', '0', 0, 24, '2015-02-21 02:46:28'),
(245, '', 'p15.jpg', '1', 0, 24, '2015-02-21 02:46:44'),
(246, '', 'p16.jpg', '1', 0, 24, '2015-02-21 02:47:03'),
(247, '', 'p17.jpg', '0', 0, 24, '2015-02-21 02:47:26'),
(248, '', 'p18.jpg', '0', 0, 24, '2015-02-21 02:47:44'),
(249, '', 'p19.jpg', '0', 0, 24, '2015-02-21 02:47:59'),
(250, '', 'p20.jpg', '0', 0, 24, '2015-02-21 02:48:15'),
(251, '', 'p21.jpg', '1', 0, 24, '2015-02-21 02:48:29'),
(252, '', 'p22.jpg', '1', 0, 24, '2015-02-21 02:48:50'),
(253, '', 'p23.jpg', '0', 0, 24, '2015-02-21 02:49:08'),
(254, '', 'p25.jpg', '0', 0, 24, '2015-02-21 02:49:28'),
(255, '', 'p24.jpg', '0', 0, 24, '2015-02-21 02:49:59'),
(256, '', 'p26.jpg', '0', 0, 24, '2015-02-21 02:50:22'),
(257, '', 'p27.jpg', '1', 0, 24, '2015-02-21 02:50:33'),
(258, '', 'p28.jpg', '0', 0, 24, '2015-02-21 02:51:28'),
(261, '', 'p292.jpg', '0', 0, 24, '2015-02-21 02:53:23'),
(262, '', 'p30.jpg', '1', 0, 24, '2015-02-21 02:55:56'),
(263, '', 'raf2.jpg', '0', 0, 25, '2015-02-21 03:02:15'),
(264, '', 'raf3.jpg', '0', 0, 25, '2015-02-21 03:02:25'),
(265, '', 'raf4.jpg', '1', 0, 25, '2015-02-21 03:02:34'),
(266, '', 'raf5.jpg', '0', 0, 25, '2015-02-21 03:02:45'),
(267, '', 'raf6.jpg', '0', 0, 25, '2015-02-21 03:02:57'),
(268, '', 'raf7.jpg', '0', 0, 25, '2015-02-21 03:03:06'),
(269, '', 'raf9.jpg', '0', 0, 25, '2015-02-21 03:03:19'),
(270, '', 'raf8.jpg', '0', 0, 25, '2015-02-21 03:04:45'),
(271, '', 'raf10.jpg', '0', 0, 25, '2015-02-21 03:05:07'),
(272, '', 'raf111.jpg', '0', 0, 25, '2015-02-21 03:07:16'),
(273, '', 'raf12.jpg', '0', 0, 25, '2015-02-21 03:07:27'),
(275, '', 'raf131.jpg', '1', 0, 25, '2015-02-21 03:08:17'),
(276, '', 'raf14.jpg', '0', 0, 25, '2015-02-21 03:08:31'),
(277, '', 'raf15.jpg', '0', 0, 25, '2015-02-21 03:08:47'),
(278, '', 'raf16.jpg', '0', 0, 25, '2015-02-21 03:09:03'),
(279, '', 'raf17.jpg', '0', 0, 25, '2015-02-21 03:09:22'),
(280, '', 'raf18.jpg', '0', 0, 25, '2015-02-21 03:09:41'),
(281, '', 'raf19.jpg', '0', 0, 25, '2015-02-21 03:10:00'),
(282, '', 'raf20.jpg', '0', 0, 25, '2015-02-21 03:10:20'),
(283, '', 'raf21.jpg', '0', 0, 25, '2015-02-21 03:10:39'),
(284, '', 'raf22.jpg', '0', 0, 25, '2015-02-21 03:10:47'),
(286, '', 'raf24.jpg', '0', 0, 25, '2015-02-21 03:11:09'),
(287, '', 'raf231.jpg', '0', 0, 25, '2015-02-21 03:11:21'),
(288, '', 'raf25.jpg', '0', 0, 25, '2015-02-21 03:11:33'),
(289, '', 'raf26.jpg', '0', 0, 25, '2015-02-21 03:11:45'),
(290, '', 'raf27.jpg', '0', 0, 25, '2015-02-21 03:11:56'),
(291, '', 'raf28.jpg', '1', 0, 25, '2015-02-21 03:12:08'),
(292, '', 'ras2.jpg', '0', 0, 26, '2015-02-21 03:19:25'),
(293, '', 'ras3.jpg', '0', 0, 26, '2015-02-21 03:20:49'),
(294, '', 'ras4.jpg', '0', 0, 26, '2015-02-21 03:21:13'),
(295, '', 'ras5.jpg', '0', 0, 26, '2015-02-21 03:21:43'),
(296, '', 'ras6.jpg', '0', 0, 26, '2015-02-21 03:22:12'),
(297, '', 'ras7.jpg', '0', 0, 26, '2015-02-21 03:22:31'),
(298, '', 'ras8.jpg', '0', 0, 26, '2015-02-21 03:23:02'),
(299, '', 'ras9.jpg', '0', 0, 26, '2015-02-21 03:24:03'),
(300, '', 'ras10.png', '0', 0, 26, '2015-02-21 03:26:36'),
(301, '', 'ras11.png', '0', 0, 26, '2015-02-21 03:26:59'),
(302, '', 'ras12.jpg', '1', 0, 26, '2015-02-21 03:27:15'),
(303, '', 'ras13.jpg', '0', 0, 26, '2015-02-21 03:27:27'),
(304, '', 'ras14.jpg', '0', 0, 26, '2015-02-21 03:28:05'),
(305, '', 'ras15.jpg', '0', 0, 26, '2015-02-21 03:28:19'),
(306, '', 'ras16.jpg', '0', 0, 26, '2015-02-21 03:28:34'),
(307, '', 'ras17.jpg', '0', 0, 26, '2015-02-21 03:29:42'),
(308, '', 'ras18.jpg', '0', 0, 26, '2015-02-21 03:30:17'),
(309, '', 'ras19.jpg', '0', 0, 26, '2015-02-21 03:30:34'),
(310, '', 'ras20.jpg', '0', 0, 26, '2015-02-21 03:31:03'),
(311, '', 'ras21.jpg', '0', 0, 26, '2015-02-21 03:31:18'),
(312, '', 'ras22.jpg', '0', 0, 26, '2015-02-21 03:31:37'),
(313, '', 'ras23.jpg', '0', 0, 26, '2015-02-21 03:31:53'),
(314, '', 'ras24.jpg', '0', 0, 26, '2015-02-21 03:32:24'),
(315, '', 'ras25.jpg', '0', 0, 26, '2015-02-21 03:32:43'),
(316, '', 'ras26.jpg', '0', 0, 26, '2015-02-21 03:32:55'),
(317, '', 'ras27.jpg', '1', 0, 26, '2015-02-21 03:33:50'),
(318, '', 'ras28.jpg', '0', 0, 26, '2015-02-21 03:33:21'),
(319, '', 'ras29.jpg', '0', 0, 26, '2015-02-21 03:33:37'),
(320, '', 'su2.JPG', '0', 0, 27, '2015-02-21 03:41:00'),
(321, '', 'su3.jpg', '0', 0, 27, '2015-02-21 03:41:20'),
(322, '', 'su4.jpg', '1', 0, 27, '2015-02-21 03:41:33'),
(323, '', 'su5.jpg', '0', 0, 27, '2015-02-21 03:41:46'),
(324, '', 'su6.jpg', '0', 0, 27, '2015-02-21 03:42:06'),
(325, '', 'su7.jpg', '0', 0, 27, '2015-02-21 03:42:18'),
(326, '', 'su8.jpg', '0', 0, 27, '2015-02-21 03:42:32'),
(327, '', 'su9.jpg', '0', 0, 27, '2015-02-21 03:42:44'),
(328, '', 'su10.jpg', '0', 0, 27, '2015-02-21 03:42:59'),
(329, '', 'su11.jpg', '0', 0, 27, '2015-02-21 03:43:24'),
(331, '', 'su121.jpg', '0', 0, 27, '2015-02-21 03:43:57'),
(332, '', 'su13.jpg', '1', 0, 27, '2015-02-21 03:44:39'),
(333, '', 'su14.jpg', '0', 0, 27, '2015-02-21 03:44:52'),
(334, '', 'su15.jpg', '0', 0, 27, '2015-02-21 03:45:06'),
(335, '', 'su16.jpg', '0', 0, 27, '2015-02-21 03:45:16'),
(336, '', 'su17.jpg', '0', 0, 27, '2015-02-21 03:45:26'),
(337, '', 'ta2.jpg', '0', 0, 28, '2015-02-21 03:49:07'),
(338, '', 'ta3.jpg', '0', 0, 28, '2015-02-21 03:49:20'),
(339, '', 'ta4.jpg', '0', 0, 28, '2015-02-21 03:49:33'),
(340, '', 'ta5.jpg', '0', 0, 28, '2015-02-21 03:49:44'),
(341, '', 'ta6.jpg', '0', 0, 28, '2015-02-21 03:49:54'),
(342, '', 'ta7.jpg', '0', 0, 28, '2015-02-21 03:50:04'),
(343, '', 'ta8.jpg', '0', 0, 28, '2015-02-21 03:50:16'),
(344, '', 'ta9.jpg', '0', 0, 28, '2015-02-21 03:50:27'),
(345, '', 'ad21.jpg', '1', 0, 29, '2015-02-21 03:55:54'),
(346, '', 'ad31.jpg', '0', 0, 29, '2015-02-21 03:56:23'),
(348, '', 'ad41.jpg', '0', 0, 29, '2015-02-21 03:57:05'),
(349, '', 'ad51.jpg', '0', 0, 29, '2015-02-21 03:57:49'),
(350, '', 'ad61.jpg', '0', 0, 29, '2015-02-21 03:58:18'),
(351, '', 'ad71.jpg', '0', 0, 29, '2015-02-21 03:59:17'),
(352, '', 'ad8.jpg', '0', 0, 29, '2015-02-21 04:01:25'),
(353, '', 'ad9.jpg', '0', 0, 29, '2015-02-21 04:01:49'),
(354, '', 'ad10.jpg', '0', 0, 29, '2015-02-21 04:02:11'),
(355, '', 'ad111.jpg', '0', 0, 29, '2015-02-21 04:02:26'),
(356, '', 'ad121.jpg', '0', 0, 29, '2015-02-21 04:02:41'),
(357, '', 'ad13.jpg', '0', 0, 29, '2015-02-21 04:02:57'),
(358, '', 'ad14.jpg', '0', 0, 29, '2015-02-21 04:03:09'),
(359, '', 'ad15.jpg', '0', 0, 29, '2015-02-21 04:03:20'),
(360, '', 'ad16.jpg', '0', 0, 29, '2015-02-21 04:03:32'),
(362, '', 'ad17.jpg', '0', 0, 29, '2015-02-21 04:03:51'),
(363, '', 'ad18.jpg', '0', 0, 29, '2015-02-21 04:04:04'),
(364, '', 'AN1.JPG', '0', 0, 30, '2015-02-21 04:09:46'),
(365, '', 'an2.jpg', '0', 0, 30, '2015-02-21 04:09:58'),
(366, '', 'an3.jpg', '0', 0, 30, '2015-02-21 04:10:12'),
(367, '', 'an4.jpg', '0', 0, 30, '2015-02-21 04:10:26'),
(368, '', 'an5.jpg', '0', 0, 30, '2015-02-21 04:10:43'),
(369, '', 'an6.JPG', '0', 0, 30, '2015-02-21 04:10:54'),
(370, '', 'an7.JPG', '0', 0, 30, '2015-02-21 04:11:07'),
(371, '', 'an7a.jpg', '0', 0, 30, '2015-02-21 04:11:18'),
(372, '', 'an8.JPG', '0', 0, 30, '2015-02-21 04:11:32'),
(373, '', 'an9.JPG', '0', 0, 30, '2015-02-21 04:12:07'),
(374, '', 'an10.JPG', '0', 0, 30, '2015-02-21 04:12:18'),
(375, '', 'an11.jpg', '0', 0, 30, '2015-02-21 04:12:32'),
(376, '', 'an12.jpg', '0', 0, 30, '2015-02-21 04:12:45'),
(377, '', 'an13.JPG', '1', 0, 30, '2015-02-21 04:12:54'),
(378, '', 'an14.jpg', '0', 0, 30, '2015-02-21 04:13:16'),
(379, '', 'an15.JPG', '0', 0, 30, '2015-02-21 04:13:28'),
(380, '', 'an16.JPG', '0', 0, 30, '2015-02-21 04:13:44'),
(381, '', 'an17.JPG', '0', 0, 30, '2015-02-21 04:13:57'),
(382, '', 'an18.JPG', '1', 0, 30, '2015-02-21 04:14:08'),
(383, '', 'an19.jpg', '1', 0, 30, '2015-02-21 04:14:24'),
(384, '', 'ja2.jpg', '0', 0, 31, '2015-02-21 04:21:37'),
(386, '', 'ja31.jpg', '0', 0, 31, '2015-02-21 04:21:59'),
(387, '', 'ja4.jpg', '0', 0, 31, '2015-02-21 04:22:14'),
(389, '', 'ja51.jpg', '0', 0, 31, '2015-02-21 04:22:34'),
(390, '', 'ja6.jpg', '0', 0, 31, '2015-02-21 04:23:19'),
(391, '', 'ja7.jpg', '0', 0, 31, '2015-02-21 04:23:34'),
(392, '', 'ja8.jpg', '0', 0, 31, '2015-02-21 04:23:45'),
(393, '', 'ja9.jpg', '0', 0, 31, '2015-02-21 04:23:59'),
(394, '', 'ja10.jpg', '1', 0, 31, '2015-02-21 04:24:24'),
(395, '', 'ja111.jpg', '0', 0, 31, '2015-02-21 04:25:01'),
(396, '', 'ja12.jpg', '0', 0, 31, '2015-02-21 04:25:12'),
(397, '', 'ja13.jpg', '0', 0, 31, '2015-02-21 04:25:29'),
(398, '', 'ja14.jpg', '1', 0, 31, '2015-02-21 04:25:42'),
(399, '', 'ja15.jpg', '0', 0, 31, '2015-02-21 04:26:11'),
(400, '', 'ja16.jpg', '0', 0, 31, '2015-02-21 04:26:32'),
(401, '', 'ja17.jpg', '0', 0, 31, '2015-02-21 04:26:43'),
(402, '', 'ja18.jpg', '0', 0, 31, '2015-02-21 04:26:54'),
(403, '', 'ja19.jpg', '0', 0, 31, '2015-02-21 04:27:09'),
(404, '', 'ja20.jpg', '0', 0, 31, '2015-02-21 04:27:36'),
(405, '', 'ja21.jpg', '0', 0, 31, '2015-02-21 04:27:47'),
(406, '', 'ja22.jpg', '0', 0, 31, '2015-02-21 04:28:59'),
(407, '', 'p210.jpg', '0', 0, 32, '2015-02-21 04:34:26'),
(408, '', 'p31.jpg', '0', 0, 32, '2015-02-21 04:40:59'),
(409, '', 'p41.jpg', '0', 0, 32, '2015-02-21 04:41:12'),
(410, '', 'p51.jpg', '0', 0, 32, '2015-02-21 04:41:26'),
(411, '', 'p61.jpg', '0', 0, 32, '2015-02-21 04:41:41'),
(412, '', 'p71.jpg', '0', 0, 32, '2015-02-21 04:41:59'),
(413, '', 'p81.jpg', '0', 0, 32, '2015-02-21 04:42:14'),
(414, '', 'p91.jpg', '0', 0, 32, '2015-02-21 04:42:26'),
(415, '', 'p101.jpg', '0', 0, 32, '2015-02-21 04:42:37'),
(416, '', 'p113.jpg', '0', 0, 32, '2015-02-21 04:43:00'),
(417, '', 'p121.jpg', '0', 0, 32, '2015-02-21 04:43:54'),
(418, '', 'p131.jpg', '1', 0, 32, '2015-02-21 04:44:10'),
(419, '', 'p141.jpg', '1', 0, 32, '2015-02-21 04:44:24'),
(420, '', 'p14a.jpg', '0', 0, 32, '2015-02-21 04:44:35'),
(421, '', 'p14b.jpg', '0', 0, 32, '2015-02-21 04:44:44'),
(422, '', 'p151.jpg', '0', 0, 32, '2015-02-21 04:44:55'),
(423, '', 'p161.jpg', '0', 0, 32, '2015-02-21 04:45:15'),
(424, '', 'p171.jpg', '0', 0, 32, '2015-02-21 04:45:31'),
(425, '', 'p181.jpg', '0', 0, 32, '2015-02-21 04:45:50'),
(426, '', 'p191.jpg', '0', 0, 32, '2015-02-21 04:46:11'),
(427, '', 'p201.jpg', '0', 0, 32, '2015-02-21 04:46:24'),
(428, '', 'p211.jpg', '0', 0, 32, '2015-02-21 04:46:37'),
(429, '', 'p221.jpg', '0', 0, 32, '2015-02-21 04:46:50'),
(430, '', 'pt2.jpeg', '0', 0, 33, '2015-02-21 04:56:00'),
(431, '', 'pt3.jpg', '0', 0, 33, '2015-02-21 04:56:14'),
(432, '', 'pt4.jpg', '1', 0, 33, '2015-02-21 04:56:27'),
(433, '', 'pt5.jpg', '0', 0, 33, '2015-02-21 04:56:47'),
(434, '', 'pt6.jpg', '0', 0, 33, '2015-02-21 04:57:21'),
(435, '', 'pt7.jpg', '0', 0, 33, '2015-02-21 04:57:32'),
(436, '', 'pt8.jpg', '0', 0, 33, '2015-02-21 04:57:42'),
(437, '', 'pt9.jpg', '0', 0, 33, '2015-02-21 04:57:54'),
(439, '', 'pt101.jpg', '0', 0, 33, '2015-02-21 04:58:23'),
(440, '', 'pt111.jpg', '0', 0, 33, '2015-02-21 04:58:38'),
(441, '', 'pt12.jpg', '0', 0, 33, '2015-02-21 04:58:51'),
(442, '', 'pt13.jpg', '0', 0, 33, '2015-02-21 04:59:05'),
(443, '', 'pt14.jpg', '0', 0, 33, '2015-02-21 04:59:17'),
(444, '', 'pt15.jpg', '0', 0, 33, '2015-02-21 04:59:28'),
(445, '', 'pt16.jpg', '0', 0, 33, '2015-02-21 04:59:38'),
(447, '', 'pt17.jpg', '0', 0, 33, '2015-02-21 04:59:58'),
(448, '', 'pt18.jpg', '0', 0, 33, '2015-02-21 05:00:08');

-- --------------------------------------------------------

--
-- Table structure for table `newsimage`
--

CREATE TABLE IF NOT EXISTS `newsimage` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order` int(11) NOT NULL,
  `news` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsimage`
--

INSERT INTO `newsimage` (`id`, `name`, `image`, `timestamp`, `order`, `news`) VALUES
(1, 'demo', 'event48832.jpg', '2015-02-18 10:02:08', 1, 1),
(2, 'demooo', 'event48830.jpg', '2015-02-18 09:58:23', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `photographeralbumgallery`
--

CREATE TABLE IF NOT EXISTS `photographeralbumgallery` (
`id` int(11) NOT NULL,
  `photographeralbum` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photographeralbumgallery`
--

INSERT INTO `photographeralbumgallery` (`id`, `photographeralbum`, `title`, `image`, `timestamp`, `order`) VALUES
(1, 1, 'demo edit1', 'event4881.jpg', '2015-02-18 02:47:22', 1),
(2, 1, 'test edit', 'event488.jpg', '2015-02-18 02:44:49', 2),
(3, 2, 'Demo', 'event4889.jpg', '2015-02-18 04:56:30', 1),
(4, 5, 'dcsdcd', 'event48820.jpg', '2015-02-18 05:41:17', 2),
(5, 4, 'Demo', 'event48822.jpg', '2015-02-18 06:03:59', 1),
(6, 6, 'Cosmopolitan', 'D1.jpg', '2015-02-21 05:11:02', 0),
(7, 6, 'Femina April 2013', 'D12.jpg', '2015-02-21 05:16:49', 0),
(8, 6, 'First Magazine', 'D14.jpg', '2015-02-21 05:19:06', 0),
(9, 6, 'First Magazine 1', 'D33.jpg', '2015-02-21 05:22:07', 0),
(10, 6, 'Huff Magazine', 'D17.jpg', '2015-02-21 05:24:37', 0),
(11, 6, 'Institute Magazine', 'D19.jpg', '2015-02-21 05:26:47', 0),
(12, 6, 'Material Girl', 'D111.jpg', '2015-02-21 05:31:09', 0),
(13, 6, 'Untitle', 'D1.JPG', '2015-02-21 05:35:43', 0),
(14, 6, 'Vogue April 2013', 'd12.jpg', '2015-02-21 05:38:23', 0),
(15, 6, 'Vogue India December 2014', 'D113.jpg', '2015-02-21 05:41:30', 0),
(16, 6, 'Vogue India June 2012', 'd15.jpg', '2015-02-21 05:43:31', 0),
(17, 6, 'Vogue India May 2012', 'd17.jpg', '2015-02-21 05:46:13', 0),
(18, 7, 'ELLE INDIA DECEMBER 2014', '5.jpg', '2015-02-21 05:51:35', 0),
(19, 7, 'FIRST MAGAZINE', 'D116.jpg', '2015-02-21 05:53:45', 0),
(20, 7, 'HARPERS BAZAAR INDIA', 'D118.jpg', '2015-02-21 05:57:01', 0),
(21, 7, 'Huff Magazine', 'D120.jpg', '2015-02-21 06:01:13', 0),
(22, 7, 'KALTBLUT MAGAZINE', 'D122.jpg', '2015-02-21 06:04:16', 0),
(23, 7, 'SCHON MAGAZINE', 'D124.jpg', '2015-02-21 06:07:23', 0),
(24, 7, 'Teaser Magazine', 'D126.jpg', '2015-02-21 06:09:06', 0),
(25, 7, 'VOGUE INDIA MARCH 2014', 'D128.jpg', '2015-02-21 06:12:05', 0),
(26, 7, 'VOGUE INDIA MAY 2013', 'D130.jpg', '2015-02-21 06:15:23', 0),
(27, 7, 'VOGUE INDIA NOVEMBER 2013', 'D132.jpg', '2015-02-21 06:17:22', 0),
(28, 8, 'Advertising', 'g21.jpg', '2015-02-23 03:36:01', 1),
(29, 9, 'Editorial', '068_GRIN_03_20141.jpg', '2015-02-23 03:55:29', 1),
(30, 10, 'men', 'GE1.jpg', '2015-02-23 04:19:19', 1),
(31, 11, 'beauty', 'M1.jpg', '2015-02-23 04:32:20', 0),
(32, 11, 'Editorial', 'm1.jpg', '2015-02-23 04:45:51', 2),
(33, 11, 'men', 'M25.jpg', '2015-02-23 05:19:26', 3),
(34, 12, 'Fashion', 'z12.jpg', '2015-02-23 05:27:03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `photographeralbumgalleryimage`
--

CREATE TABLE IF NOT EXISTS `photographeralbumgalleryimage` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `photographeralbumgallery` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photographeralbumgalleryimage`
--

INSERT INTO `photographeralbumgalleryimage` (`id`, `name`, `image`, `type`, `order`, `photographeralbumgallery`, `timestamp`) VALUES
(1, 'demo', 'logo.png', '1', 1, 2, '2015-02-18 04:38:10'),
(2, 'demo', 'event48811.jpg', '0', 1, 3, '2015-02-18 05:31:44'),
(3, 'demo', 'event48821.jpg', '0', 1, 4, '2015-02-19 00:14:12'),
(4, 'Demo27', 'event48823.jpg', '1', 1, 5, '2015-02-18 06:42:49'),
(5, 'test123', 'event48824.jpg', '0', 2, 5, '2015-02-18 06:04:34'),
(6, 'skdcsk', 'event48827.jpg', '1', 3, 5, '2015-02-18 06:13:32'),
(7, 'asxasx', 'event48833.jpg', '1', 2, 4, '2015-02-19 00:14:12'),
(8, 'kjdcksd', 'event48834.jpg', '0', 1, 1, '2015-02-19 03:18:58'),
(9, '', 'D22.jpg', '0', 2, 6, '2015-02-21 05:13:50'),
(10, '', 'D11.jpg', '0', 1, 6, '2015-02-21 05:13:41'),
(11, '', 'D3.jpg', '1', 3, 6, '2015-02-21 05:13:50'),
(12, '', 'D4.jpg', '0', 4, 6, '2015-02-21 05:13:50'),
(13, '', 'D13.jpg', '0', 0, 7, '2015-02-21 05:17:07'),
(14, '', 'D23.jpg', '0', 0, 7, '2015-02-21 05:17:18'),
(15, '', 'D31.jpg', '0', 0, 7, '2015-02-21 05:17:30'),
(16, '', 'D41.jpg', '0', 0, 7, '2015-02-21 05:17:42'),
(17, '', 'D15.jpg', '0', 0, 8, '2015-02-21 05:20:38'),
(18, '', 'D24.jpg', '0', 0, 8, '2015-02-21 05:20:30'),
(19, '', 'D32.jpg', '1', 0, 8, '2015-02-21 05:20:21'),
(20, '', 'D42.jpg', '0', 0, 8, '2015-02-21 05:21:05'),
(21, '', 'D16.jpg', '1', 0, 9, '2015-02-21 05:22:28'),
(22, '', 'D25.jpg', '0', 0, 9, '2015-02-21 05:22:39'),
(23, '', 'D34.jpg', '0', 0, 9, '2015-02-21 05:22:53'),
(24, '', 'D43.jpg', '0', 0, 9, '2015-02-21 05:23:05'),
(25, '', 'D5.jpg', '0', 0, 9, '2015-02-21 05:23:22'),
(26, '', 'D6.jpg', '0', 0, 9, '2015-02-21 05:23:44'),
(27, '', 'D18.jpg', '0', 0, 10, '2015-02-21 05:25:02'),
(28, '', 'D26.jpg', '0', 0, 10, '2015-02-21 05:25:12'),
(29, '', 'D35.jpg', '0', 0, 10, '2015-02-21 05:25:24'),
(30, '', 'D110.jpg', '1', 0, 11, '2015-02-21 05:27:12'),
(31, '', 'D27.jpg', '0', 0, 11, '2015-02-21 05:27:23'),
(32, '', 'D36.jpg', '0', 0, 11, '2015-02-21 05:27:37'),
(33, '', 'D44.jpg', '0', 0, 11, '2015-02-21 05:27:51'),
(34, '', 'D51.jpg', '0', 0, 11, '2015-02-21 05:28:27'),
(35, '', 'D61.jpg', '0', 0, 11, '2015-02-21 05:28:46'),
(36, '', 'D112.jpg', '0', 0, 12, '2015-02-21 05:31:27'),
(37, '', 'D28.jpg', '0', 0, 12, '2015-02-21 05:31:39'),
(38, '', 'D37.jpg', '1', 0, 12, '2015-02-21 05:31:50'),
(39, '', 'D45.jpg', '0', 0, 12, '2015-02-21 05:32:01'),
(40, '', 'D52.jpg', '0', 0, 12, '2015-02-21 05:32:16'),
(41, '', 'D11.JPG', '1', 0, 13, '2015-02-21 05:36:01'),
(42, '', 'D2.JPG', '0', 0, 13, '2015-02-21 05:36:19'),
(43, '', 'D3.JPG', '0', 0, 13, '2015-02-21 05:36:45'),
(44, '', 'D4.JPG', '1', 0, 13, '2015-02-21 05:36:58'),
(45, '', 'D5.JPG', '0', 0, 13, '2015-02-21 05:37:10'),
(46, '', 'D6.JPG', '0', 0, 13, '2015-02-21 05:37:22'),
(47, '', 'd13.jpg', '0', 0, 14, '2015-02-21 05:38:47'),
(49, '', 'd21.jpg', '0', 0, 14, '2015-02-21 05:39:03'),
(50, '', 'd31.jpg', '0', 0, 14, '2015-02-21 05:39:13'),
(51, '', 'd41.jpg', '1', 0, 14, '2015-02-21 05:39:25'),
(52, '', 'd51.jpg', '0', 0, 14, '2015-02-21 05:39:43'),
(53, '', 'D114.jpg', '0', 0, 15, '2015-02-21 05:41:59'),
(54, '', 'D29.jpg', '0', 0, 15, '2015-02-21 05:42:11'),
(55, '', 'D38.jpg', '0', 0, 15, '2015-02-21 05:42:32'),
(56, '', 'D46.jpg', '0', 0, 15, '2015-02-21 05:42:44'),
(57, '', 'd16.jpg', '0', 0, 16, '2015-02-21 05:44:01'),
(58, '', 'd22.jpg', '0', 0, 16, '2015-02-21 05:44:33'),
(59, '', 'd32.jpg', '0', 0, 16, '2015-02-21 05:44:53'),
(60, '', 'd42.jpg', '0', 0, 16, '2015-02-21 05:45:19'),
(61, '', 'd18.jpg', '0', 0, 17, '2015-02-21 05:46:38'),
(62, '', 'd23.jpg', '0', 0, 17, '2015-02-21 05:46:50'),
(63, '', 'd33.jpg', '0', 0, 17, '2015-02-21 05:47:01'),
(64, '', 'd43.jpg', '0', 0, 17, '2015-02-21 05:47:20'),
(65, '', 'd52.jpg', '1', 0, 17, '2015-02-21 05:47:36'),
(66, '', '51.jpg', '0', 4, 18, '2015-02-27 09:50:03'),
(67, '', 'D115.jpg', '1', 3, 18, '2015-02-27 09:51:37'),
(68, '', 'D211.jpg', '0', 1, 18, '2015-02-27 09:51:25'),
(69, '', 'D39.jpg', '0', 2, 18, '2015-02-27 09:51:37'),
(70, '', 'D47.jpg', '1', 6, 18, '2015-02-27 09:43:23'),
(71, '', 'D7.jpg', '0', 5, 18, '2015-02-27 09:43:23'),
(72, '', 'D117.jpg', '1', 0, 19, '2015-02-21 05:54:32'),
(73, '', 'D212.jpg', '0', 0, 19, '2015-02-21 05:54:22'),
(74, '', 'D310.jpg', '0', 0, 19, '2015-02-21 05:54:43'),
(75, '', 'D48.jpg', '1', 0, 19, '2015-02-21 05:55:16'),
(76, '', 'D119.jpg', '1', 0, 20, '2015-02-21 05:57:50'),
(77, '', 'D213.jpg', '0', 0, 20, '2015-02-21 05:58:01'),
(78, '', 'D311.jpg', '0', 0, 20, '2015-02-21 05:58:12'),
(79, '', 'D49.jpg', '0', 0, 20, '2015-02-21 05:58:30'),
(80, '', 'D53.jpg', '0', 0, 20, '2015-02-21 05:58:46'),
(81, '', 'D62.jpg', '0', 0, 20, '2015-02-21 05:59:04'),
(82, '', 'D71.jpg', '0', 0, 20, '2015-02-21 05:59:17'),
(83, '', 'D8.jpg', '1', 0, 20, '2015-02-21 05:59:28'),
(84, '', 'D121.jpg', '0', 0, 21, '2015-02-21 06:01:39'),
(85, '', 'D214.jpg', '0', 0, 21, '2015-02-21 06:01:53'),
(86, '', 'D312.jpg', '0', 0, 21, '2015-02-21 06:02:04'),
(87, '', 'D410.jpg', '0', 0, 21, '2015-02-21 06:02:14'),
(88, '', 'D54.jpg', '0', 0, 21, '2015-02-21 06:02:25'),
(90, '', 'D63.jpg', '0', 0, 21, '2015-02-21 06:02:47'),
(91, '', 'D72.jpg', '0', 0, 21, '2015-02-21 06:02:59'),
(92, '', 'D123.jpg', '0', 0, 22, '2015-02-21 06:04:56'),
(93, '', 'D215.jpg', '1', 0, 22, '2015-02-21 06:06:10'),
(94, '', 'D313.jpg', '0', 0, 22, '2015-02-21 06:06:23'),
(95, '', 'D411.jpg', '0', 0, 22, '2015-02-21 06:06:36'),
(96, '', 'D125.jpg', '1', 0, 23, '2015-02-21 06:07:39'),
(97, '', 'D216.jpg', '0', 0, 23, '2015-02-21 06:07:49'),
(98, '', 'D314.jpg', '0', 0, 23, '2015-02-21 06:08:01'),
(99, '', 'D412.jpg', '0', 0, 23, '2015-02-21 06:08:15'),
(100, '', 'D56.jpg', '0', 0, 23, '2015-02-21 06:08:29'),
(101, '', 'D127.jpg', '1', 0, 24, '2015-02-21 06:09:25'),
(102, '', 'D217.jpg', '0', 0, 24, '2015-02-21 06:09:36'),
(103, '', 'D315.jpg', '0', 0, 24, '2015-02-21 06:09:51'),
(104, '', 'D413.jpg', '0', 0, 24, '2015-02-21 06:10:05'),
(105, '', 'D57.jpg', '0', 0, 24, '2015-02-21 06:10:21'),
(106, '', 'D64.jpg', '0', 0, 24, '2015-02-21 06:10:36'),
(107, '', 'D73.jpg', '0', 0, 24, '2015-02-21 06:10:53'),
(108, '', 'D81.jpg', '0', 0, 24, '2015-02-21 06:11:07'),
(109, '', 'D9.jpg', '0', 0, 24, '2015-02-21 06:11:22'),
(110, '', 'D129.jpg', '0', 0, 25, '2015-02-21 06:12:26'),
(111, '', 'D218.jpg', '1', 0, 25, '2015-02-21 06:12:40'),
(112, '', 'D316.jpg', '0', 0, 25, '2015-02-21 06:12:54'),
(113, '', 'D414.jpg', '0', 0, 25, '2015-02-21 06:13:07'),
(114, '', 'D58.jpg', '1', 0, 25, '2015-02-21 06:13:21'),
(115, '', 'D65.jpg', '0', 0, 25, '2015-02-21 06:13:36'),
(116, '', 'D131.jpg', '0', 0, 26, '2015-02-21 06:15:47'),
(117, '', 'D219.jpg', '0', 0, 26, '2015-02-21 06:16:00'),
(118, '', 'D317.jpg', '0', 0, 26, '2015-02-21 06:16:15'),
(119, '', 'D415.jpg', '0', 0, 26, '2015-02-21 06:16:26'),
(120, '', 'D133.jpg', '1', 0, 27, '2015-02-21 06:18:10'),
(121, '', 'D220.jpg', '0', 0, 27, '2015-02-21 06:18:40'),
(122, '', 'D318.jpg', '0', 0, 27, '2015-02-21 06:19:18'),
(123, '', 'D416.jpg', '0', 0, 27, '2015-02-21 06:19:37'),
(124, '', 'D59.jpg', '0', 0, 27, '2015-02-21 06:20:00'),
(125, '', 'D66.jpg', '0', 0, 27, '2015-02-21 06:20:26'),
(126, '', 'D74.jpg', '0', 0, 27, '2015-02-21 06:20:44'),
(127, '', 'g1.jpg', '1', 0, 28, '2015-02-23 03:36:36'),
(128, '', 'g22.jpg', '0', 0, 28, '2015-02-23 03:37:07'),
(129, '', 'g3.jpg', '0', 0, 28, '2015-02-23 03:37:20'),
(130, '', 'g4.jpg', '1', 0, 28, '2015-02-23 03:37:54'),
(131, '', 'g51.jpg', '0', 0, 28, '2015-02-23 03:38:16'),
(132, '', 'g6.jpg', '0', 0, 28, '2015-02-23 03:39:13'),
(133, '', 'g7.jpg', '1', 0, 28, '2015-02-23 03:39:30'),
(134, '', 'g8.jpg', '1', 0, 28, '2015-02-23 03:40:02'),
(135, '', 'g9.jpg', '0', 0, 28, '2015-02-23 03:40:50'),
(136, '', 'g10.jpg', '0', 0, 28, '2015-02-23 03:41:06'),
(137, '', 'g11.jpg', '0', 0, 28, '2015-02-23 03:41:27'),
(138, '', 'g12.jpg', '0', 0, 28, '2015-02-23 03:41:51'),
(139, '', 'g13.jpg', '0', 0, 28, '2015-02-23 03:42:07'),
(140, '', 'g14.jpg', '0', 0, 28, '2015-02-23 03:42:57'),
(141, '', 'g15.jpg', '1', 0, 28, '2015-02-23 03:43:12'),
(142, '', 'g16.jpg', '1', 0, 28, '2015-02-23 03:43:27'),
(143, '', 'g17.jpg', '0', 0, 28, '2015-02-23 03:44:23'),
(144, '', 'g18.jpg', '0', 0, 28, '2015-02-23 03:44:44'),
(145, '', 'g19.jpg', '0', 0, 28, '2015-02-23 03:46:11'),
(146, '', 'g20.jpg', '1', 0, 28, '2015-02-23 03:48:18'),
(147, '', 'g211.jpg', '1', 0, 28, '2015-02-23 03:49:04'),
(148, '', 'g221.jpg', '1', 0, 28, '2015-02-23 03:49:19'),
(149, '', 'g23.jpg', '1', 0, 28, '2015-02-23 03:50:48'),
(150, '', 'g24.jpg', '1', 0, 28, '2015-02-23 03:51:17'),
(151, '', 'g25.jpg', '1', 0, 28, '2015-02-23 03:51:53'),
(152, '', 'g26.jpg', '1', 0, 28, '2015-02-23 03:52:09'),
(153, '', 'g27.jpg', '1', 0, 28, '2015-02-23 03:52:27'),
(154, '', 'g28.jpg', '1', 0, 28, '2015-02-23 03:52:52'),
(155, '', '068_GRIN_03_20142.jpg', '0', 0, 29, '2015-02-23 03:55:50'),
(156, '', 'g110.jpg', '1', 0, 29, '2015-02-23 03:56:23'),
(157, '', 'g1a.jpg', '0', 0, 29, '2015-02-23 03:56:42'),
(158, '', 'g29.jpg', '1', 0, 29, '2015-02-23 03:56:57'),
(159, '', 'g41.jpg', '1', 0, 29, '2015-02-23 03:57:10'),
(160, '', 'g52.jpg', '0', 0, 29, '2015-02-23 03:57:33'),
(161, '', 'g61.jpg', '0', 0, 29, '2015-02-23 03:57:50'),
(162, '', 'g71.jpg', '0', 0, 29, '2015-02-23 03:58:13'),
(163, '', 'g81.jpg', '0', 0, 29, '2015-02-23 03:58:27'),
(164, '', 'g91.jpg', '0', 0, 29, '2015-02-23 03:59:40'),
(165, '', 'g101.jpg', '0', 0, 29, '2015-02-23 04:00:01'),
(166, '', 'g111.jpg', '1', 0, 29, '2015-02-23 04:00:19'),
(167, '', 'g121.jpg', '0', 0, 29, '2015-02-23 04:00:40'),
(168, '', 'g131.jpg', '0', 0, 29, '2015-02-23 04:01:00'),
(169, '', 'g141.jpg', '0', 0, 29, '2015-02-23 04:02:52'),
(170, '', 'g151.jpg', '0', 0, 29, '2015-02-23 04:03:19'),
(171, '', 'g161.jpg', '0', 0, 29, '2015-02-23 04:03:48'),
(172, '', 'g171.jpg', '0', 0, 29, '2015-02-23 04:04:21'),
(173, '', 'g181.jpg', '0', 0, 29, '2015-02-23 04:04:48'),
(174, '', 'g191.jpg', '0', 0, 29, '2015-02-23 04:05:16'),
(175, '', 'g201.jpg', '0', 0, 29, '2015-02-23 04:05:44'),
(176, '', 'g212.jpg', '1', 0, 29, '2015-02-23 04:06:05'),
(177, '', 'g222.jpg', '0', 0, 29, '2015-02-23 04:06:48'),
(178, '', 'g231.jpg', '0', 0, 29, '2015-02-23 04:08:01'),
(179, '', 'g241.jpg', '0', 0, 29, '2015-02-23 04:08:17'),
(180, '', 'g251.jpg', '1', 0, 29, '2015-02-23 04:11:07'),
(181, '', 'g261.jpg', '0', 0, 29, '2015-02-23 04:10:14'),
(183, '', 'g271.jpg', '0', 0, 29, '2015-02-23 04:11:30'),
(184, '', 'g281.jpg', '1', 0, 29, '2015-02-23 04:12:33'),
(185, '', 'g291.jpg', '0', 0, 29, '2015-02-23 04:12:55'),
(186, '', 'g30.jpg', '0', 0, 29, '2015-02-23 04:13:39'),
(187, '', 'g31.jpg', '0', 0, 29, '2015-02-23 04:14:06'),
(188, '', 'g32.jpg', '0', 0, 29, '2015-02-23 04:14:28'),
(189, '', 'g33.jpg', '0', 0, 29, '2015-02-23 04:15:13'),
(190, '', 'g34.jpg', '0', 0, 29, '2015-02-23 04:15:38'),
(191, '', 'g35.jpg', '0', 0, 29, '2015-02-23 04:16:11'),
(192, '', 'GE11.jpg', '1', 0, 30, '2015-02-23 04:20:15'),
(193, '', 'GE21.jpg', '0', 0, 30, '2015-02-23 04:20:30'),
(194, '', 'GE3.jpg', '0', 0, 30, '2015-02-23 04:21:07'),
(195, '', 'GE4.jpg', '1', 0, 30, '2015-02-23 04:21:26'),
(196, '', 'GE5.jpg', '0', 0, 30, '2015-02-23 04:21:55'),
(197, '', 'GE6.jpg', '0', 0, 30, '2015-02-23 04:22:37'),
(198, '', 'GE7.jpg', '0', 0, 30, '2015-02-23 04:22:58'),
(200, '', 'GE8.jpg', '1', 0, 30, '2015-02-23 04:24:28'),
(201, '', 'GE9.jpg', '1', 0, 30, '2015-02-23 04:24:42'),
(202, '', 'GE10.jpg', '0', 0, 30, '2015-02-23 04:24:56'),
(203, '', 'GE111.jpg', '0', 0, 30, '2015-02-23 04:25:37'),
(204, '', 'GE12.jpg', '0', 0, 30, '2015-02-23 04:25:53'),
(205, '', 'GE13.jpg', '0', 0, 30, '2015-02-23 04:26:18'),
(206, '', 'GE14.jpg', '0', 0, 30, '2015-02-23 04:26:42'),
(207, '', 'GE15.jpg', '0', 0, 30, '2015-02-23 04:27:38'),
(208, '', 'GE16.jpg', '0', 0, 30, '2015-02-23 04:27:51'),
(209, '', 'GE17.jpg', '0', 0, 30, '2015-02-23 04:28:05'),
(210, '', 'GE18.jpg', '0', 0, 30, '2015-02-23 04:28:21'),
(211, '', 'M11.jpg', '1', 0, 31, '2015-02-23 04:32:37'),
(212, '', 'M21.jpg', '0', 0, 31, '2015-02-23 04:33:53'),
(213, '', 'M3.jpg', '0', 0, 31, '2015-02-23 04:34:08'),
(214, '', 'M4.jpg', '0', 0, 31, '2015-02-23 04:34:21'),
(215, '', 'M51.jpg', '0', 0, 31, '2015-02-23 04:34:35'),
(216, '', 'M6.jpg', '0', 0, 31, '2015-02-23 04:34:47'),
(217, '', 'M7.jpg', '0', 0, 31, '2015-02-23 04:35:04'),
(218, '', 'M8.jpg', '0', 0, 31, '2015-02-23 04:35:20'),
(219, '', 'M9.jpg', '0', 0, 31, '2015-02-23 04:36:14'),
(220, '', 'M10.jpg', '0', 0, 31, '2015-02-23 04:36:36'),
(221, '', 'M111.jpg', '0', 0, 31, '2015-02-23 04:39:13'),
(222, '', 'M12.jpg', '0', 0, 31, '2015-02-23 04:39:28'),
(223, '', 'M13.jpg', '0', 0, 31, '2015-02-23 04:40:06'),
(224, '', 'M14.jpg', '0', 0, 31, '2015-02-23 04:40:25'),
(225, '', 'M15.jpg', '0', 0, 31, '2015-02-23 04:40:45'),
(226, '', 'M16.jpg', '0', 0, 31, '2015-02-23 04:41:44'),
(227, '', 'M17.jpg', '0', 0, 31, '2015-02-23 04:42:04'),
(228, '', 'M18.jpg', '0', 0, 31, '2015-02-23 04:42:26'),
(229, '', 'M19.jpg', '0', 0, 31, '2015-02-23 04:42:43'),
(230, '', 'M20.jpg', '0', 0, 31, '2015-02-23 04:43:00'),
(231, '', 'M211.jpg', '0', 0, 31, '2015-02-23 04:43:20'),
(232, '', 'M22.jpg', '0', 0, 31, '2015-02-23 04:43:33'),
(233, '', 'M23.jpg', '0', 0, 31, '2015-02-23 04:44:08'),
(234, '', 'M24.jpg', '0', 0, 31, '2015-02-23 04:44:22'),
(235, '', 'm11.jpg', '0', 0, 32, '2015-02-23 04:46:37'),
(236, '', 'm2.jpg', '0', 0, 32, '2015-02-23 04:46:50'),
(237, '', 'm3.jpg', '0', 0, 32, '2015-02-23 04:47:03'),
(238, '', 'm4.jpg', '0', 0, 32, '2015-02-23 04:47:15'),
(239, '', 'm5.jpg', '0', 0, 32, '2015-02-23 04:47:27'),
(240, '', 'm6.jpg', '0', 0, 32, '2015-02-23 04:47:40'),
(241, '', 'm7.jpg', '0', 0, 32, '2015-02-23 04:47:53'),
(242, '', 'm8.jpg', '0', 0, 32, '2015-02-23 04:48:08'),
(243, '', 'm9.jpg', '0', 0, 32, '2015-02-23 04:48:20'),
(244, '', 'm10.jpg', '0', 0, 32, '2015-02-23 04:48:32'),
(245, '', 'm111.jpg', '0', 0, 32, '2015-02-23 04:48:48'),
(246, '', 'm12.jpg', '0', 0, 32, '2015-02-23 04:49:47'),
(247, '', 'm13.jpg', '0', 0, 32, '2015-02-23 04:50:43'),
(248, '', 'm14.jpg', '0', 0, 32, '2015-02-23 04:51:18'),
(249, '', 'm15.jpg', '1', 0, 32, '2015-02-23 04:51:32'),
(250, '', 'm16.jpg', '0', 0, 32, '2015-02-23 04:53:43'),
(251, '', 'm17.jpg', '0', 0, 32, '2015-02-23 04:54:08'),
(252, '', 'm18.jpg', '0', 0, 32, '2015-02-23 04:54:29'),
(254, '', 'm191.jpg', '0', 0, 32, '2015-02-23 04:59:08'),
(255, '', 'm20.jpg', '1', 0, 32, '2015-02-23 04:59:21'),
(256, '', 'm21.jpg', '0', 0, 32, '2015-02-23 04:59:37'),
(257, '', 'm22.jpg', '0', 0, 32, '2015-02-23 04:59:52'),
(258, '', 'm23.jpg', '0', 0, 32, '2015-02-23 05:00:13'),
(259, '', 'm24.jpg', '0', 0, 32, '2015-02-23 05:00:36'),
(260, '', 'm25.jpg', '0', 0, 32, '2015-02-23 05:00:50'),
(261, '', 'm26.jpg', '0', 0, 32, '2015-02-23 05:01:04'),
(262, '', 'm27.jpg', '0', 0, 32, '2015-02-23 05:01:50'),
(263, '', 'm28.jpg', '0', 0, 32, '2015-02-23 05:02:32'),
(264, '', 'm29.jpg', '0', 0, 32, '2015-02-23 05:02:46'),
(265, '', 'm30.jpg', '1', 0, 32, '2015-02-23 05:03:03'),
(266, '', 'm31.jpg', '0', 0, 32, '2015-02-23 05:03:25'),
(267, '', 'm32.jpg', '0', 0, 32, '2015-02-23 05:03:46'),
(269, '', 'm331.jpg', '0', 0, 32, '2015-02-23 05:04:16'),
(270, '', 'm34.jpg', '0', 0, 32, '2015-02-23 05:04:33'),
(271, '', 'm35.jpg', '0', 0, 32, '2015-02-23 05:04:50'),
(272, '', 'M110.jpg', '1', 0, 33, '2015-02-23 05:20:16'),
(273, '', 'M26.jpg', '0', 0, 33, '2015-02-23 05:20:04'),
(274, '', 'M31.jpg', '0', 0, 33, '2015-02-23 05:20:29'),
(275, '', 'M41.jpg', '0', 0, 33, '2015-02-23 05:20:42'),
(276, '', 'M52.jpg', '0', 0, 33, '2015-02-23 05:20:54'),
(277, '', 'M61.jpg', '0', 0, 33, '2015-02-23 05:21:18'),
(278, '', 'M71.jpg', '0', 0, 33, '2015-02-23 05:21:34'),
(279, '', 'M81.jpg', '0', 0, 33, '2015-02-23 05:21:45'),
(280, '', 'M91.jpg', '0', 0, 33, '2015-02-23 05:21:56'),
(281, '', 'M101.jpg', '0', 0, 33, '2015-02-23 05:22:09'),
(282, '', 'M112.jpg', '0', 0, 33, '2015-02-23 05:22:21'),
(283, '', 'M121.jpg', '1', 0, 33, '2015-02-23 05:22:31'),
(284, '', 'M131.jpg', '0', 0, 33, '2015-02-23 05:22:45'),
(285, '', 'z13.jpg', '0', 0, 34, '2015-02-23 05:27:30'),
(286, '', 'z2.jpg', '0', 0, 34, '2015-02-23 05:27:47'),
(287, '', 'z3.jpg', '1', 0, 34, '2015-02-23 05:28:02'),
(288, '', 'z4.jpg', '0', 0, 34, '2015-02-23 05:28:16'),
(289, '', 'z5.jpg', '0', 0, 34, '2015-02-23 05:28:35'),
(290, '', 'z6.jpg', '1', 0, 34, '2015-02-23 05:28:50'),
(291, '', 'z7.jpg', '0', 0, 34, '2015-02-23 05:29:07'),
(292, '', 'z8.jpg', '0', 0, 34, '2015-02-23 05:29:25'),
(293, '', 'z9.jpg', '0', 0, 34, '2015-02-23 05:29:36'),
(294, '', 'z10.jpg', '0', 0, 34, '2015-02-23 05:29:48'),
(295, '', 'z111.jpg', '0', 0, 34, '2015-02-23 05:29:59'),
(296, '', 'z121.jpg', '1', 0, 34, '2015-02-23 05:30:15'),
(297, '', 'z131.jpg', '0', 0, 34, '2015-02-23 05:30:27'),
(298, '', 'z14.jpg', '0', 0, 34, '2015-02-23 05:30:39'),
(299, '', 'z15.jpg', '0', 0, 34, '2015-02-23 05:30:59'),
(300, '', 'z16.jpg', '0', 0, 34, '2015-02-23 05:31:25'),
(301, '', 'z17.jpg', '1', 0, 34, '2015-02-23 05:31:39'),
(302, '', 'z18.jpg', '1', 0, 34, '2015-02-23 05:31:54'),
(303, '', 'z19.jpg', '0', 0, 34, '2015-02-23 05:32:09'),
(304, '', 'z20.jpg', '0', 0, 34, '2015-02-23 05:32:24'),
(305, '', 'z21.jpg', '0', 0, 34, '2015-02-23 05:32:53'),
(306, '', 'z22.jpg', '0', 0, 34, '2015-02-23 05:33:11'),
(307, '', 'z23.jpg', '0', 0, 34, '2015-02-23 05:33:36'),
(308, '', 'z24.jpg', '0', 0, 34, '2015-02-23 05:33:51'),
(309, '', 'z25.jpg', '0', 0, 34, '2015-02-23 05:34:04'),
(310, '', 'z26.jpg', '0', 0, 34, '2015-02-23 05:34:18'),
(311, '', 'z27.jpg', '0', 0, 34, '2015-02-23 05:34:34'),
(313, '', 'z281.jpg', '0', 0, 34, '2015-02-23 05:35:10'),
(314, '', 'z29.jpg', '0', 0, 34, '2015-02-23 05:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `photographercategory`
--

CREATE TABLE IF NOT EXISTS `photographercategory` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photographercategory`
--

INSERT INTO `photographercategory` (`id`, `name`, `status`, `order`) VALUES
(1, 'Photographers', 1, 1),
(2, 'Hair & Makeup Artists', 1, 2),
(3, 'Hair Stylists', 1, 3),
(4, 'Stylists', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'inactive'),
(2, 'Active'),
(3, 'Waiting'),
(4, 'Active Waiting'),
(5, 'Blocked');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `accesslevel` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `socialid` varchar(255) NOT NULL,
  `logintype` int(11) NOT NULL,
  `json` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `accesslevel`, `timestamp`, `status`, `image`, `username`, `socialid`, `logintype`, `json`) VALUES
(1, 'wohlig', 'a63526467438df9566c508027d9cb06b', 'wohlig@wohlig.com', 1, '0000-00-00 00:00:00', 1, NULL, '', '', 0, ''),
(4, 'pratik', '0cb2b62754dfd12b6ed0161d4b447df7', 'pratik@wohlig.com', 1, '2014-05-12 01:22:44', 1, NULL, 'pratik', '1', 1, ''),
(5, 'wohlig123', 'wohlig123', 'wohlig1@wohlig.com', 1, '2014-05-12 01:22:44', 1, NULL, '', '', 0, ''),
(6, 'wohlig1', 'a63526467438df9566c508027d9cb06b', 'wohlig2@wohlig.com', 1, '2014-05-12 01:22:44', 1, NULL, '', '', 0, ''),
(7, 'Avinash', '7b0a80efe0d324e937bbfc7716fb15d3', 'avinash@wohlig.com', 1, '2014-10-17 00:52:29', 1, NULL, '', '', 0, ''),
(9, 'avinash', 'a208e5837519309129fa466b0c68396b', 'a@email.com', 2, '2014-12-03 05:36:19', 3, '', '', '123', 1, 'demojson'),
(13, 'aaa', 'a208e5837519309129fa466b0c68396b', 'aaa3@email.com', 3, '2014-12-04 01:25:42', 3, NULL, '', '1', 2, 'userjson');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
`id` int(11) NOT NULL,
  `onuser` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `onuser`, `status`, `description`, `timestamp`) VALUES
(1, 1, 1, 'User Address Edited', '2014-05-12 01:20:21'),
(2, 1, 1, 'User Details Edited', '2014-05-12 01:21:43'),
(3, 1, 1, 'User Details Edited', '2014-05-12 01:21:53'),
(4, 4, 1, 'User Created', '2014-05-12 01:22:44'),
(5, 4, 1, 'User Address Edited', '2014-05-12 07:01:48'),
(6, 23, 2, 'User Created', '2014-10-07 01:16:55'),
(7, 24, 2, 'User Created', '2014-10-07 01:18:25'),
(8, 25, 2, 'User Created', '2014-10-07 01:19:04'),
(9, 26, 2, 'User Created', '2014-10-07 01:19:16'),
(10, 27, 2, 'User Created', '2014-10-07 01:22:18'),
(11, 28, 2, 'User Created', '2014-10-07 01:22:45'),
(12, 29, 2, 'User Created', '2014-10-07 01:23:10'),
(13, 30, 2, 'User Created', '2014-10-07 01:23:33'),
(14, 31, 2, 'User Created', '2014-10-07 01:25:03'),
(15, 32, 2, 'User Created', '2014-10-07 01:25:33'),
(16, 33, 2, 'User Created', '2014-10-07 01:29:32'),
(17, 34, 2, 'User Created', '2014-10-07 01:31:18'),
(18, 35, 2, 'User Created', '2014-10-07 01:31:50'),
(19, 34, 2, 'User Details Edited', '2014-10-07 01:34:34'),
(20, 18, 2, 'User Details Edited', '2014-10-07 01:35:11'),
(21, 18, 2, 'User Details Edited', '2014-10-07 01:35:45'),
(22, 18, 2, 'User Details Edited', '2014-10-07 01:36:03'),
(23, 7, 6, 'User Created', '2014-10-17 00:52:29'),
(24, 7, 6, 'User Details Edited', '2014-10-17 01:02:22'),
(25, 7, 6, 'User Details Edited', '2014-10-17 01:02:37'),
(26, 8, 6, 'User Created', '2014-11-15 06:35:52'),
(27, 9, 6, 'User Created', '2014-12-02 05:16:36'),
(28, 9, 6, 'User Details Edited', '2014-12-02 05:17:34'),
(29, 4, 6, 'User Details Edited', '2014-12-03 05:04:49'),
(30, 4, 6, 'User Details Edited', '2014-12-03 05:06:34'),
(31, 4, 6, 'User Details Edited', '2014-12-03 05:06:49'),
(32, 8, 6, 'User Details Edited', '2014-12-03 05:17:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesslevel`
--
ALTER TABLE `accesslevel`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `anima_albumimage`
--
ALTER TABLE `anima_albumimage`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anima_article`
--
ALTER TABLE `anima_article`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anima_category`
--
ALTER TABLE `anima_category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anima_instagram`
--
ALTER TABLE `anima_instagram`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anima_model`
--
ALTER TABLE `anima_model`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anima_modelimage`
--
ALTER TABLE `anima_modelimage`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anima_modelvideo`
--
ALTER TABLE `anima_modelvideo`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anima_news`
--
ALTER TABLE `anima_news`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anima_photographer`
--
ALTER TABLE `anima_photographer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anima_photographeralbum`
--
ALTER TABLE `anima_photographeralbum`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anima_photographervideo`
--
ALTER TABLE `anima_photographervideo`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logintype`
--
ALTER TABLE `logintype`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modelgallery`
--
ALTER TABLE `modelgallery`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modelgalleryimage`
--
ALTER TABLE `modelgalleryimage`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsimage`
--
ALTER TABLE `newsimage`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photographeralbumgallery`
--
ALTER TABLE `photographeralbumgallery`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photographeralbumgalleryimage`
--
ALTER TABLE `photographeralbumgalleryimage`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photographercategory`
--
ALTER TABLE `photographercategory`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accesslevel`
--
ALTER TABLE `accesslevel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `anima_albumimage`
--
ALTER TABLE `anima_albumimage`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `anima_article`
--
ALTER TABLE `anima_article`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `anima_category`
--
ALTER TABLE `anima_category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `anima_instagram`
--
ALTER TABLE `anima_instagram`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `anima_model`
--
ALTER TABLE `anima_model`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `anima_modelimage`
--
ALTER TABLE `anima_modelimage`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `anima_modelvideo`
--
ALTER TABLE `anima_modelvideo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `anima_news`
--
ALTER TABLE `anima_news`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `anima_photographer`
--
ALTER TABLE `anima_photographer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `anima_photographeralbum`
--
ALTER TABLE `anima_photographeralbum`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `anima_photographervideo`
--
ALTER TABLE `anima_photographervideo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `logintype`
--
ALTER TABLE `logintype`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `modelgallery`
--
ALTER TABLE `modelgallery`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `modelgalleryimage`
--
ALTER TABLE `modelgalleryimage`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=449;
--
-- AUTO_INCREMENT for table `newsimage`
--
ALTER TABLE `newsimage`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `photographeralbumgallery`
--
ALTER TABLE `photographeralbumgallery`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `photographeralbumgalleryimage`
--
ALTER TABLE `photographeralbumgalleryimage`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=315;
--
-- AUTO_INCREMENT for table `photographercategory`
--
ALTER TABLE `photographercategory`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
