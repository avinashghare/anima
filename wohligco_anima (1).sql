-- phpMyAdmin SQL Dump
-- version 4.0.10.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 27, 2015 at 09:07 AM
-- Server version: 5.6.21
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wohligco_anima`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesslevel`
--

CREATE TABLE IF NOT EXISTS `accesslevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `json` text NOT NULL,
  `photographeralbum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `json` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `json` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `bio` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `anima_model`
--

INSERT INTO `anima_model` (`id`, `name`, `json`, `image`, `category`, `bio`) VALUES
(27, 'Alicia Kom', '<p>[{"label":"Height","type":"text","classes":"","placeholder":"","value":"178cm/5''10"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"84cm/33\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"66cm/26\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"94cm/37\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"41"}]</p>', 'a1.jpg', 3, ''),
(28, 'Ashika in New York', '[{"label":"Height","type":"text","classes":"","placeholder":"","value":"173cm/5\\"8"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"85cm/33.5''"},{"label":"waist","type":"text","classes":"","placeholder":"","value":"64cm/25''"},{"label":"hips","type":"text","classes":"","placeholder":"","value":"94cm/37''"},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"39\\t"}]', 'ash1.jpg', 3, ''),
(29, 'Brooke', '<p>[{"label":"Height","type":"text","classes":"","placeholder":"","value":"173cm/5''8"},{"label":"bust","type":"text","classes":"","placeholder":"","value":"82cm/32.5\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"62.5cm/24.5\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"89cm/35\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"40.5\\t"}]</p>', 'b1.jpg', 3, ''),
(30, 'Debbie', '<p>[{"label":"Height","type":"text","classes":"","placeholder":"","value":"174cm/5''8.5\\""},{"label":"bust","type":"text","classes":"","placeholder":"","value":"82cm/32.5\\""},{"label":"waist","type":"text","classes":"","placeholder":"","value":"63cm/25\\""},{"label":"hips","type":"text","classes":"","placeholder":"","value":"89cm/35\\""},{"label":"eyes","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"brown","type":"text","classes":"","placeholder":"","value":"brown"},{"label":"shoe","type":"text","classes":"","placeholder":"","value":"39\\t"}]</p>', 'd1.jpg', 3, ''),
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `json` text NOT NULL,
  `model` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `json` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `anima_news`
--

INSERT INTO `anima_news` (`id`, `title`, `json`, `image`, `content`) VALUES
(2, 'Harper''s Bazaar Bride', '', 'Harpers_Bazaar_Bride.jpg', ''),
(3, 'Femina Brides', '', 'Femina_Brides.jpg', ''),
(4, 'The Juice', '', 'TheJuice_MonicaTomas.jpg', ''),
(5, 'Grazia India', '', 'Grazia_India.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `anima_photographer`
--

CREATE TABLE IF NOT EXISTS `anima_photographer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `bio` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `anima_photographer`
--

INSERT INTO `anima_photographer` (`id`, `name`, `city`, `order`, `content`, `image`, `category`, `bio`) VALUES
(4, 'Dirk Bader', 'Munich', 0, '', 'D2.jpg', 1, ''),
(5, 'GEORGE KRITIKOS', 'Mumbai', 0, '', 'g2.jpg', 2, ''),
(6, 'MICHAEL SALMEN', 'Mumbai', 0, '', 'M5.jpg', 2, ''),
(7, 'ZEENAT WILKINSON', 'Mumbai', 0, '', 'z1.jpg', 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `anima_photographeralbum`
--

CREATE TABLE IF NOT EXISTS `anima_photographeralbum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `tab` varchar(255) NOT NULL,
  `photographer` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `anima_photographeralbum`
--

INSERT INTO `anima_photographeralbum` (`id`, `name`, `order`, `image`, `tab`, `photographer`) VALUES
(6, 'Beauty', 0, 'D1.jpg', 'Beauty', 4),
(7, 'Editorial', 0, 'D210.jpg', 'Editorial', 4),
(8, 'Advertising', 0, 'g5.jpg', 'Advertising', 5),
(9, 'Editorial', 0, '068_GRIN_03_2014.jpg', 'Editorial', 5),
(10, 'Men', 0, 'GE22.jpg', 'Men', 5),
(11, 'Beauty', 0, 'M2.jpg', 'Beauty', 6),
(12, 'Fashion', 0, 'z11.jpg', 'Fashion', 7);

-- --------------------------------------------------------

--
-- Table structure for table `anima_photographervideo`
--

CREATE TABLE IF NOT EXISTS `anima_photographervideo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photographer` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `photographeralbum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

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
(12, 26, 'hghh', 'event48815.jpg', '2015-02-18 11:05:14', 88),
(13, 27, 'Portfolio', 'a11.jpg', '2015-02-21 05:11:15', 1),
(14, 28, 'Portfolio', 'ash11.jpg', '2015-02-21 05:37:59', 1),
(15, 29, 'Portfolio', 'b11.jpg', '2015-02-21 05:52:00', 1),
(16, 30, 'Portfolio', 'd11.jpg', '2015-02-21 05:57:34', 1),
(17, 31, 'Portfolio', 'jen11.jpg', '2015-02-21 06:04:53', 1),
(18, 32, 'Portfolio', 'Keisha11.jpg', '2015-02-21 06:20:37', 1),
(19, 33, 'Portfolio', 'Mar11.jpg', '2015-02-21 06:32:32', 1),
(20, 34, 'Portfolio', 'Beauty_Shoot_-11.jpg', '2015-02-21 06:53:03', 1),
(21, 35, 'Portfolio', 'n_221.jpg', '2015-02-21 06:59:01', 1),
(22, 36, 'Portfolio', 'nib11.jpg', '2015-02-21 07:15:26', 1),
(23, 37, 'Portfolio', 'olg11.jpg', '2015-02-21 07:25:08', 1),
(24, 38, 'Portfolio', 'p11.jpg', '2015-02-21 08:05:22', 1),
(25, 39, 'Portfolio', 'raf11.jpg', '2015-02-21 08:31:53', 1),
(26, 40, 'Portfolio', 'ras11.jpg', '2015-02-21 08:48:33', 1),
(27, 41, 'Portfolio', 'su11.JPG', '2015-02-21 09:09:02', 1),
(28, 42, 'Portfolio', 'Ta11.jpg', '2015-02-21 09:18:48', 1),
(29, 43, 'Portfolio', 'ad12.jpg', '2015-02-21 09:25:26', 1),
(30, 44, 'Portfolio', 'a7b1.jpg', '2015-02-21 09:39:23', 1),
(31, 45, 'Portfolio', 'ja11.jpg', '2015-02-21 09:51:14', 1),
(32, 46, 'Portfolio', 'p112.jpg', '2015-02-21 10:03:34', 1),
(33, 47, 'Portfolio', 'pt11.jpg', '2015-02-21 10:24:26', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=466 ;

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
(11, 'jsdcjsd', 'event48816.jpg', '1', 2, 12, '2015-02-19 05:42:35'),
(12, 'ajnxjaskjdnckjsd', 'event48825.jpg', '1', 2, 6, '2015-02-18 11:35:33'),
(13, 'zkjncksjd', 'event48826.jpg', '1', 1, 12, '2015-02-19 05:42:35'),
(14, '', 'a2.jpg', '0', 2, 13, '2015-02-27 12:03:42'),
(15, '', 'a3.jpg', '0', 16, 13, '2015-02-27 12:03:46'),
(16, '', 'a4.jpg', '0', 17, 13, '2015-02-27 12:03:46'),
(17, '', 'a5.jpg', '0', 18, 13, '2015-02-27 12:03:46'),
(18, '', 'a6.jpg', '0', 19, 13, '2015-02-27 12:03:47'),
(19, '', 'a6a.jpg', '0', 20, 13, '2015-02-27 12:03:47'),
(20, '', 'a7.jpg', '0', 21, 13, '2015-02-27 12:03:47'),
(21, '', 'a8.jpg', '0', 22, 13, '2015-02-27 12:03:48'),
(22, '', 'a9.jpg', '0', 23, 13, '2015-02-27 12:03:47'),
(24, '', 'a101.jpg', '0', 24, 13, '2015-02-27 12:03:47'),
(26, '', 'a111.jpg', '0', 25, 13, '2015-02-27 12:03:49'),
(30, '', 'a14.jpg', '0', 15, 13, '2015-02-27 12:03:46'),
(31, '', 'a15.jpg', '0', 14, 13, '2015-02-27 12:03:46'),
(32, '', 'a16.jpg', '0', 3, 13, '2015-02-27 12:03:42'),
(33, '', 'a17.jpeg', '0', 4, 13, '2015-02-27 12:03:42'),
(34, '', 'a19.jpeg', '0', 5, 13, '2015-02-27 12:03:42'),
(36, '', 'a21.jpg', '0', 6, 13, '2015-02-27 12:03:42'),
(38, '', 'a231.jpg', '0', 7, 13, '2015-02-27 12:03:45'),
(39, '', 'a24.jpg', '0', 8, 13, '2015-02-27 12:03:45'),
(40, '', 'a25.jpg', '0', 9, 13, '2015-02-27 12:03:45'),
(41, '', 'a26.jpg', '0', 10, 13, '2015-02-27 12:03:45'),
(42, '', 'a27.jpg', '0', 11, 13, '2015-02-27 12:03:45'),
(43, '', 'a28.jpg', '0', 12, 13, '2015-02-27 12:03:45'),
(44, '', 'a132.jpg', '0', 13, 13, '2015-02-27 12:03:46'),
(45, '', 'ash2.jpg', '0', 2, 14, '2015-02-27 12:10:34'),
(46, '', 'ash3.jpg', '0', 3, 14, '2015-02-27 12:10:34'),
(48, '', 'ash4.jpg', '1', 4, 14, '2015-02-27 12:10:34'),
(49, '', 'ash5.jpeg', '0', 6, 14, '2015-02-27 12:10:34'),
(50, '', 'ash6.jpg', '0', 7, 14, '2015-02-27 12:10:35'),
(51, '', 'ash7.jpg', '1', 11, 14, '2015-02-27 12:10:35'),
(52, '', 'ash8.jpg', '1', 12, 14, '2015-02-27 12:10:36'),
(54, '', 'ash91.jpg', '0', 13, 14, '2015-02-27 12:10:36'),
(55, '', 'ash10.jpg', '0', 14, 14, '2015-02-27 12:10:36'),
(56, '', 'ash111.jpg', '1', 10, 14, '2015-02-27 12:10:35'),
(57, '', 'ash12.jpg', '0', 8, 14, '2015-02-27 12:10:35'),
(58, '', 'ash13.jpg', '0', 25, 14, '2015-02-27 12:10:37'),
(59, '', 'ash14.jpg', '0', 24, 14, '2015-02-27 12:10:37'),
(60, '', 'ash15.jpg', '0', 9, 14, '2015-02-27 12:10:35'),
(61, '', 'ash16.jpg', '0', 15, 14, '2015-02-27 12:10:36'),
(62, '', 'ash17.jpg', '0', 16, 14, '2015-02-27 12:10:36'),
(63, '', 'ash18.jpg', '1', 17, 14, '2015-02-27 12:10:36'),
(64, '', 'ash19.jpg', '0', 18, 14, '2015-02-27 12:10:37'),
(65, '', 'ash20.jpg', '0', 19, 14, '2015-02-27 12:10:37'),
(66, '', 'ash21.jpg', '0', 20, 14, '2015-02-27 12:10:37'),
(67, '', 'ash22.jpg', '0', 21, 14, '2015-02-27 12:10:37'),
(68, '', 'ash23.jpg', '0', 22, 14, '2015-02-27 12:10:37'),
(69, '', 'ash24.jpg', '0', 23, 14, '2015-02-27 12:10:37'),
(70, '', 'ash25.jpg', '1', 5, 14, '2015-02-27 12:10:34'),
(71, '', 'b2.jpg', '0', 2, 15, '2015-02-27 12:12:32'),
(72, '', 'b4.jpg', '0', 3, 15, '2015-02-27 12:12:32'),
(73, '', 'b5.jpg', '0', 4, 15, '2015-02-27 12:12:32'),
(74, '', 'b6.jpg', '0', 5, 15, '2015-02-27 12:12:32'),
(75, '', 'b7.jpg', '0', 6, 15, '2015-02-27 12:12:32'),
(76, '', 'b8.jpg', '0', 7, 15, '2015-02-27 12:12:33'),
(77, '', 'b9.jpg', '0', 8, 15, '2015-02-27 12:12:33'),
(78, '', 'b10.jpg', '0', 9, 15, '2015-02-27 12:12:33'),
(80, '', 'd3.jpg', '0', 3, 16, '2015-02-27 12:19:56'),
(81, '', 'd4.jpg', '0', 4, 16, '2015-02-27 12:19:56'),
(82, '', 'd5.jpg', '0', 5, 16, '2015-02-27 12:19:56'),
(83, '', 'd6.jpg', '0', 6, 16, '2015-02-27 12:19:56'),
(84, '', 'd7.jpg', '0', 7, 16, '2015-02-27 12:19:56'),
(86, '', 'd9.jpg', '0', 9, 16, '2015-02-27 12:19:56'),
(87, '', 'jen2.jpg', '0', 2, 17, '2015-02-27 12:41:45'),
(88, '', 'jen3.jpg', '0', 16, 17, '2015-02-27 12:41:46'),
(89, '', 'jen4.jpg', '0', 17, 17, '2015-02-27 12:41:46'),
(90, '', 'jen5.jpg', '0', 18, 17, '2015-02-27 12:41:46'),
(91, '', 'jen6.jpg', '0', 19, 17, '2015-02-27 12:41:47'),
(92, '', 'jen7.jpg', '0', 20, 17, '2015-02-27 12:41:47'),
(93, '', 'jen8.jpg', '0', 21, 17, '2015-02-27 12:41:47'),
(94, '', 'jen9.jpg', '0', 22, 17, '2015-02-27 12:41:47'),
(95, '', 'jen10.jpg', '0', 23, 17, '2015-02-27 12:41:47'),
(96, '', 'jen111.jpg', '0', 24, 17, '2015-02-27 12:41:47'),
(97, '', 'jen12.jpg', '1', 25, 17, '2015-02-27 12:41:47'),
(98, '', 'jen13.jpg', '0', 15, 17, '2015-02-27 12:41:46'),
(99, '', 'jen14.jpg', '0', 12, 17, '2015-02-27 12:42:11'),
(100, '', 'jen15.jpg', '1', 14, 17, '2015-02-27 12:42:13'),
(101, '', 'jen16.jpg', '1', 4, 17, '2015-02-27 12:42:10'),
(103, '', 'jen171.jpg', '0', 3, 17, '2015-02-27 12:42:10'),
(105, '', 'jen18.jpg', '0', 5, 17, '2015-02-27 12:41:45'),
(106, '', 'jen19.jpg', '0', 6, 17, '2015-02-27 12:41:45'),
(107, '', 'jen20.jpg', '0', 7, 17, '2015-02-27 12:41:45'),
(108, '', 'jen21.jpg', '0', 8, 17, '2015-02-27 12:41:46'),
(109, '', 'jen22.jpg', '0', 9, 17, '2015-02-27 12:41:46'),
(110, '', 'jen23.jpg', '0', 10, 17, '2015-02-27 12:41:46'),
(111, '', 'jen24.jpg', '0', 11, 17, '2015-02-27 12:41:46'),
(112, '', 'jen25.jpg', '1', 13, 17, '2015-02-27 12:42:13'),
(113, '', 'Keisha2.jpg', '0', 2, 18, '2015-02-27 12:44:07'),
(114, '', 'keisha3.jpg', '0', 17, 18, '2015-02-27 12:44:09'),
(115, '', 'keisha4.jpg', '0', 18, 18, '2015-02-27 12:44:09'),
(116, '', 'keisha5.jpg', '0', 19, 18, '2015-02-27 12:44:10'),
(117, '', 'keisha6.jpg', '0', 20, 18, '2015-02-27 12:44:10'),
(118, '', 'keisha7.jpg', '0', 21, 18, '2015-02-27 12:44:10'),
(119, '', 'keisha8.jpg', '0', 22, 18, '2015-02-27 12:44:10'),
(120, '', 'keisha9.jpg', '0', 23, 18, '2015-02-27 12:44:10'),
(121, '', 'keisha10.jpg', '1', 27, 18, '2015-02-27 12:44:11'),
(122, '', 'keisha11.jpg', '0', 24, 18, '2015-02-27 12:44:10'),
(123, '', 'keisha12.jpg', '0', 25, 18, '2015-02-27 12:44:10'),
(124, '', 'keisha13.jpg', '0', 26, 18, '2015-02-27 12:44:11'),
(125, '', 'keisha14.jpg', '0', 16, 18, '2015-02-27 12:44:09'),
(126, '', 'keisha15.jpg', '0', 15, 18, '2015-02-27 12:44:09'),
(127, '', 'keisha16.jpg', '0', 14, 18, '2015-02-27 12:44:09'),
(128, '', 'keisha17.jpg', '0', 3, 18, '2015-02-27 12:44:07'),
(129, '', 'keisha18.jpg', '0', 6, 18, '2015-02-27 12:44:07'),
(130, '', 'keisha19.jpg', '1', 4, 18, '2015-02-27 12:44:07'),
(131, '', 'keisha20.jpg', '1', 5, 18, '2015-02-27 12:44:07'),
(132, '', 'keisha21.jpg', '0', 7, 18, '2015-02-27 12:44:08'),
(133, '', 'keisha22.jpg', '0', 8, 18, '2015-02-27 12:44:08'),
(134, '', 'keisha23.jpg', '0', 9, 18, '2015-02-27 12:44:08'),
(135, '', 'keisha24.jpg', '0', 10, 18, '2015-02-27 12:44:08'),
(136, '', 'keisha25.jpg', '1', 12, 18, '2015-02-27 12:44:08'),
(137, '', 'keisha26.jpg', '0', 11, 18, '2015-02-27 12:44:08'),
(138, '', 'keisha27.jpg', '0', 13, 18, '2015-02-27 12:44:08'),
(139, '', 'Mar3.jpg', '0', 2, 19, '2015-02-27 12:46:41'),
(140, '', 'Mar4.jpg', '0', 18, 19, '2015-02-27 12:46:43'),
(141, '', 'Mar4a.jpg', '0', 19, 19, '2015-02-27 12:46:44'),
(142, '', 'Mar4b.jpg', '0', 20, 19, '2015-02-27 12:46:44'),
(143, '', 'Mar5.jpg', '0', 21, 19, '2015-02-27 12:46:44'),
(144, '', 'Mar7.jpg', '0', 22, 19, '2015-02-27 12:46:44'),
(145, '', 'Mar8.jpg', '0', 23, 19, '2015-02-27 12:46:44'),
(146, '', 'Mar9.jpg', '0', 24, 19, '2015-02-27 12:46:44'),
(147, '', 'Mar10.jpg', '0', 25, 19, '2015-02-27 12:46:44'),
(148, '', 'Mar111.jpg', '0', 26, 19, '2015-02-27 12:46:44'),
(149, '', 'Mar12.jpg', '0', 27, 19, '2015-02-27 12:46:44'),
(150, '', 'Mar13.JPG', '0', 28, 19, '2015-02-27 12:46:44'),
(152, '', 'Mar141.JPG', '0', 29, 19, '2015-02-27 12:46:44'),
(153, '', 'Mar15.jpg', '0', 17, 19, '2015-02-27 12:46:43'),
(154, '', 'Mar16.jpg', '0', 16, 19, '2015-02-27 12:46:43'),
(155, '', 'Mar17.jpg', '0', 15, 19, '2015-02-27 12:46:43'),
(156, '', 'Mar18.jpg', '0', 3, 19, '2015-02-27 12:46:41'),
(157, '', 'Mar19.JPG', '1', 4, 19, '2015-02-27 12:46:41'),
(158, '', 'Mar20.JPG', '0', 5, 19, '2015-02-27 12:46:41'),
(159, '', 'Mar21.jpg', '0', 6, 19, '2015-02-27 12:46:41'),
(160, '', 'Mar22.jpg', '0', 7, 19, '2015-02-27 12:46:42'),
(161, '', 'Mar23.jpg', '0', 8, 19, '2015-02-27 12:46:42'),
(162, '', 'mar24.jpg', '0', 9, 19, '2015-02-27 12:46:42'),
(163, '', 'Mar25.jpg', '0', 10, 19, '2015-02-27 12:46:42'),
(164, '', 'Mar26.JPG', '1', 11, 19, '2015-02-27 12:46:42'),
(165, '', 'Mar27.jpg', '0', 12, 19, '2015-02-27 12:46:42'),
(166, '', 'Mar28.jpg', '0', 13, 19, '2015-02-27 12:46:43'),
(167, '', 'Mar6.jpg', '0', 14, 19, '2015-02-27 12:46:43'),
(168, '', 'MONIKA_001.jpg', '0', 0, 20, '2015-02-21 06:53:23'),
(169, '', 'MONIKA_002.jpg', '0', 0, 20, '2015-02-21 06:53:42'),
(170, '', 'MONIKA_003.jpg', '0', 0, 20, '2015-02-21 06:53:50'),
(172, '', 'MONIKA_009.jpg', '0', 0, 20, '2015-02-21 06:54:20'),
(173, '', 'MONIKA_010.jpg', '0', 0, 20, '2015-02-21 06:54:30'),
(174, '', 'MONIKA_011.jpg', '0', 0, 20, '2015-02-21 06:55:08'),
(175, '', 'MONIKA_012.jpg', '0', 0, 20, '2015-02-21 06:55:18'),
(176, '', 'N1.jpg', '0', 0, 21, '2015-02-21 06:59:19'),
(177, '', 'n2.jpg', '1', 0, 21, '2015-02-21 06:59:28'),
(178, '', 'n3.jpg', '0', 0, 21, '2015-02-21 06:59:38'),
(179, '', 'n4.jpg', '0', 0, 21, '2015-02-21 06:59:48'),
(180, '', 'n5.JPG', '0', 0, 21, '2015-02-21 06:59:59'),
(181, '', 'n6.jpg', '0', 0, 21, '2015-02-21 07:00:12'),
(182, '', 'n7.jpg', '1', 0, 21, '2015-02-21 07:00:21'),
(183, '', 'n8.jpg', '0', 0, 21, '2015-02-21 07:00:32'),
(184, '', 'n9.jpg', '0', 0, 21, '2015-02-21 07:00:45'),
(185, '', 'n10.jpg', '0', 0, 21, '2015-02-21 07:00:56'),
(186, '', 'n12.jpg', '0', 0, 21, '2015-02-21 07:01:07'),
(187, '', 'n13.jpg', '0', 0, 21, '2015-02-21 07:01:19'),
(189, '', 'n141.jpg', '0', 0, 21, '2015-02-21 07:01:52'),
(190, '', 'n15.jpg', '1', 0, 21, '2015-02-21 07:02:10'),
(191, '', 'n16.jpg', '0', 0, 21, '2015-02-21 07:02:27'),
(192, '', 'n17.jpg', '0', 0, 21, '2015-02-21 07:02:45'),
(193, '', 'n18.jpg', '0', 0, 21, '2015-02-21 07:03:27'),
(194, '', 'n19.jpg', '0', 0, 21, '2015-02-21 07:03:37'),
(195, '', 'n20.jpeg', '0', 0, 21, '2015-02-21 07:03:49'),
(196, '', 'n21.jpeg', '0', 0, 21, '2015-02-21 07:03:58'),
(197, '', 'n23.jpg', '1', 0, 21, '2015-02-21 07:04:06'),
(198, '', 'n24.jpg', '0', 0, 21, '2015-02-21 07:04:16'),
(199, '', 'n25.jpg', '0', 0, 21, '2015-02-21 07:04:29'),
(200, '', 'n26.jpg', '1', 0, 21, '2015-02-21 07:04:41'),
(201, '', 'n27.jpg', '0', 0, 21, '2015-02-21 07:04:51'),
(203, '', 'n281.jpg', '0', 0, 21, '2015-02-21 07:05:25'),
(204, '', 'n29.jpg', '1', 0, 21, '2015-02-21 07:05:55'),
(205, '', 'n30.jpg', '1', 0, 21, '2015-02-21 07:06:05'),
(206, '', 'n11.jpg', '0', 0, 21, '2015-02-21 07:10:22'),
(207, '', 'nib2.jpg', '0', 0, 22, '2015-02-21 07:16:48'),
(208, '', 'nib3.jpg', '0', 0, 22, '2015-02-21 07:16:58'),
(209, '', 'nib4.jpg', '0', 0, 22, '2015-02-21 07:17:14'),
(210, '', 'nib5.jpg', '0', 0, 22, '2015-02-21 07:17:32'),
(211, '', 'nib6.jpg', '0', 0, 22, '2015-02-21 07:17:49'),
(212, '', 'nib7.jpg', '0', 0, 22, '2015-02-21 07:18:05'),
(213, '', 'nib8.jpg', '0', 0, 22, '2015-02-21 07:18:15'),
(214, '', 'nib9.jpg', '0', 0, 22, '2015-02-21 07:18:26'),
(216, '', 'nib10.JPG', '1', 0, 22, '2015-02-21 07:18:55'),
(217, '', 'nib111.jpg', '1', 0, 22, '2015-02-21 07:19:04'),
(218, '', 'nib12.jpg', '0', 0, 22, '2015-02-21 07:19:18'),
(219, '', 'olg2.jpg', '1', 2, 23, '2015-02-27 12:51:14'),
(220, '', 'olg3.jpg', '0', 14, 23, '2015-02-27 12:51:15'),
(221, '', 'olg4.jpg', '0', 13, 23, '2015-02-27 12:51:15'),
(222, '', 'olg5.jpg', '0', 12, 23, '2015-02-27 12:51:15'),
(223, '', 'olg6.jpg', '0', 11, 23, '2015-02-27 12:51:15'),
(224, '', 'olg7.jpg', '0', 10, 23, '2015-02-27 12:51:15'),
(225, '', 'olg8.jpg', '0', 9, 23, '2015-02-27 12:51:15'),
(226, '', 'olg9.jpg', '0', 8, 23, '2015-02-27 12:51:15'),
(227, '', 'olg10.jpg', '0', 7, 23, '2015-02-27 12:51:15'),
(228, '', 'olg111.jpg', '0', 6, 23, '2015-02-27 12:51:14'),
(229, '', 'olg12.jpg', '0', 5, 23, '2015-02-27 12:51:14'),
(230, '', 'olg13.jpg', '0', 4, 23, '2015-02-27 12:51:14'),
(231, '', 'olg14.jpg', '0', 3, 23, '2015-02-27 12:51:14'),
(232, '', 'p2.jpg', '0', 2, 24, '2015-02-27 12:53:23'),
(234, '', 'p4.jpg', '0', 17, 24, '2015-02-27 12:55:19'),
(235, '', 'p5.jpg', '0', 18, 24, '2015-02-27 12:55:20'),
(236, '', 'p6.jpg', '0', 19, 24, '2015-02-27 12:55:20'),
(237, '', 'p7.jpg', '0', 20, 24, '2015-02-27 12:55:20'),
(238, '', 'p8.jpg', '0', 21, 24, '2015-02-27 12:55:20'),
(239, '', 'p9.jpg', '0', 22, 24, '2015-02-27 12:55:20'),
(240, '', 'p10.jpg', '0', 23, 24, '2015-02-27 12:55:20'),
(241, '', 'p111.jpg', '0', 24, 24, '2015-02-27 12:55:20'),
(242, '', 'p12.jpg', '1', 25, 24, '2015-02-27 12:55:20'),
(243, '', 'p13.jpg', '0', 26, 24, '2015-02-27 12:55:21'),
(244, '', 'p14.jpg', '0', 27, 24, '2015-02-27 12:55:21'),
(245, '', 'p15.jpg', '1', 16, 24, '2015-02-27 12:55:19'),
(246, '', 'p16.jpg', '1', 15, 24, '2015-02-27 12:55:19'),
(247, '', 'p17.jpg', '0', 14, 24, '2015-02-27 12:53:10'),
(248, '', 'p18.jpg', '0', 1, 24, '2015-02-27 12:53:23'),
(249, '', 'p19.jpg', '0', 3, 24, '2015-02-27 12:53:08'),
(250, '', 'p20.jpg', '0', 4, 24, '2015-02-27 12:53:08'),
(251, '', 'p21.jpg', '1', 6, 24, '2015-02-27 12:55:17'),
(252, '', 'p22.jpg', '1', 7, 24, '2015-02-27 12:55:18'),
(253, '', 'p23.jpg', '0', 5, 24, '2015-02-27 12:55:17'),
(254, '', 'p25.jpg', '0', 8, 24, '2015-02-27 12:53:09'),
(255, '', 'p24.jpg', '0', 9, 24, '2015-02-27 12:53:09'),
(256, '', 'p26.jpg', '0', 10, 24, '2015-02-27 12:53:09'),
(257, '', 'p27.jpg', '1', 12, 24, '2015-02-27 12:55:18'),
(258, '', 'p28.jpg', '0', 11, 24, '2015-02-27 12:55:18'),
(261, '', 'p292.jpg', '0', 13, 24, '2015-02-27 12:53:10'),
(262, '', 'p30.jpg', '1', 28, 24, '2015-02-27 12:55:21'),
(263, '', 'raf2.jpg', '0', 2, 25, '2015-02-27 12:52:25'),
(264, '', 'raf3.jpg', '0', 17, 25, '2015-02-27 12:52:27'),
(265, '', 'raf4.jpg', '1', 19, 25, '2015-02-27 12:53:55'),
(266, '', 'raf5.jpg', '0', 18, 25, '2015-02-27 12:53:54'),
(267, '', 'raf6.jpg', '0', 20, 25, '2015-02-27 12:52:28'),
(268, '', 'raf7.jpg', '0', 21, 25, '2015-02-27 12:52:28'),
(269, '', 'raf9.jpg', '0', 22, 25, '2015-02-27 12:52:28'),
(270, '', 'raf8.jpg', '0', 23, 25, '2015-02-27 12:52:28'),
(271, '', 'raf10.jpg', '0', 24, 25, '2015-02-27 12:52:28'),
(272, '', 'raf111.jpg', '0', 25, 25, '2015-02-27 12:52:28'),
(273, '', 'raf12.jpg', '0', 26, 25, '2015-02-27 12:52:29'),
(275, '', 'raf131.jpg', '1', 28, 25, '2015-02-27 12:53:55'),
(276, '', 'raf14.jpg', '0', 27, 25, '2015-02-27 12:53:55'),
(277, '', 'raf15.jpg', '0', 16, 25, '2015-02-27 12:52:27'),
(278, '', 'raf16.jpg', '0', 15, 25, '2015-02-27 12:52:27'),
(279, '', 'raf17.jpg', '0', 3, 25, '2015-02-27 12:52:25'),
(280, '', 'raf18.jpg', '0', 4, 25, '2015-02-27 12:52:25'),
(281, '', 'raf19.jpg', '0', 5, 25, '2015-02-27 12:52:25'),
(282, '', 'raf20.jpg', '0', 6, 25, '2015-02-27 12:52:25'),
(283, '', 'raf21.jpg', '0', 7, 25, '2015-02-27 12:52:26'),
(284, '', 'raf22.jpg', '0', 8, 25, '2015-02-27 12:52:26'),
(286, '', 'raf24.jpg', '0', 9, 25, '2015-02-27 12:52:26'),
(287, '', 'raf231.jpg', '0', 10, 25, '2015-02-27 12:52:26'),
(288, '', 'raf25.jpg', '0', 11, 25, '2015-02-27 12:52:26'),
(289, '', 'raf26.jpg', '0', 12, 25, '2015-02-27 12:52:26'),
(290, '', 'raf27.jpg', '0', 13, 25, '2015-02-27 12:52:27'),
(291, '', 'raf28.jpg', '1', 14, 25, '2015-02-27 12:52:27'),
(292, '', 'ras2.jpg', '0', 0, 26, '2015-02-21 08:49:25'),
(293, '', 'ras3.jpg', '0', 0, 26, '2015-02-21 08:50:49'),
(294, '', 'ras4.jpg', '0', 0, 26, '2015-02-21 08:51:13'),
(295, '', 'ras5.jpg', '0', 0, 26, '2015-02-21 08:51:43'),
(296, '', 'ras6.jpg', '0', 0, 26, '2015-02-21 08:52:12'),
(297, '', 'ras7.jpg', '0', 0, 26, '2015-02-21 08:52:31'),
(298, '', 'ras8.jpg', '0', 0, 26, '2015-02-21 08:53:02'),
(299, '', 'ras9.jpg', '0', 0, 26, '2015-02-21 08:54:03'),
(300, '', 'ras10.png', '0', 0, 26, '2015-02-21 08:56:36'),
(301, '', 'ras11.png', '0', 0, 26, '2015-02-21 08:56:59'),
(302, '', 'ras12.jpg', '1', 0, 26, '2015-02-21 08:57:15'),
(303, '', 'ras13.jpg', '0', 0, 26, '2015-02-21 08:57:27'),
(304, '', 'ras14.jpg', '0', 0, 26, '2015-02-21 08:58:05'),
(305, '', 'ras15.jpg', '0', 0, 26, '2015-02-21 08:58:19'),
(306, '', 'ras16.jpg', '0', 0, 26, '2015-02-21 08:58:34'),
(307, '', 'ras17.jpg', '0', 0, 26, '2015-02-21 08:59:42'),
(308, '', 'ras18.jpg', '0', 0, 26, '2015-02-21 09:00:17'),
(309, '', 'ras19.jpg', '0', 0, 26, '2015-02-21 09:00:34'),
(310, '', 'ras20.jpg', '0', 0, 26, '2015-02-21 09:01:03'),
(311, '', 'ras21.jpg', '0', 0, 26, '2015-02-21 09:01:18'),
(312, '', 'ras22.jpg', '0', 0, 26, '2015-02-21 09:01:37'),
(313, '', 'ras23.jpg', '0', 0, 26, '2015-02-21 09:01:53'),
(314, '', 'ras24.jpg', '0', 0, 26, '2015-02-21 09:02:24'),
(315, '', 'ras25.jpg', '0', 0, 26, '2015-02-21 09:02:43'),
(316, '', 'ras26.jpg', '0', 0, 26, '2015-02-21 09:02:55'),
(317, '', 'ras27.jpg', '1', 0, 26, '2015-02-21 09:03:50'),
(318, '', 'ras28.jpg', '0', 0, 26, '2015-02-21 09:03:21'),
(319, '', 'ras29.jpg', '0', 0, 26, '2015-02-21 09:03:37'),
(320, '', 'su2.JPG', '0', 2, 27, '2015-02-27 12:47:49'),
(321, '', 'su3.jpg', '0', 16, 27, '2015-02-27 12:47:50'),
(322, '', 'su4.jpg', '1', 17, 27, '2015-02-27 12:47:50'),
(323, '', 'su5.jpg', '0', 15, 27, '2015-02-27 12:47:50'),
(324, '', 'su6.jpg', '0', 14, 27, '2015-02-27 12:47:50'),
(325, '', 'su7.jpg', '0', 13, 27, '2015-02-27 12:47:50'),
(326, '', 'su8.jpg', '0', 12, 27, '2015-02-27 12:47:50'),
(327, '', 'su9.jpg', '0', 11, 27, '2015-02-27 12:47:50'),
(328, '', 'su10.jpg', '0', 10, 27, '2015-02-27 12:47:50'),
(329, '', 'su11.jpg', '0', 9, 27, '2015-02-27 12:47:50'),
(331, '', 'su121.jpg', '0', 7, 27, '2015-02-27 12:48:44'),
(332, '', 'su13.jpg', '1', 8, 27, '2015-02-27 12:48:44'),
(333, '', 'su14.jpg', '0', 6, 27, '2015-02-27 12:47:49'),
(334, '', 'su15.jpg', '0', 5, 27, '2015-02-27 12:47:49'),
(335, '', 'su16.jpg', '0', 4, 27, '2015-02-27 12:47:49'),
(336, '', 'su17.jpg', '0', 3, 27, '2015-02-27 12:47:49'),
(337, '', 'ta2.jpg', '0', 2, 28, '2015-02-27 12:44:48'),
(338, '', 'ta3.jpg', '0', 3, 28, '2015-02-27 12:44:48'),
(339, '', 'ta4.jpg', '0', 4, 28, '2015-02-27 12:44:48'),
(340, '', 'ta5.jpg', '0', 5, 28, '2015-02-27 12:44:48'),
(341, '', 'ta6.jpg', '0', 6, 28, '2015-02-27 12:44:48'),
(342, '', 'ta7.jpg', '0', 7, 28, '2015-02-27 12:44:48'),
(343, '', 'ta8.jpg', '0', 8, 28, '2015-02-27 12:44:48'),
(344, '', 'ta9.jpg', '0', 9, 28, '2015-02-27 12:44:48'),
(345, '', 'ad21.jpg', '1', 2, 29, '2015-02-27 12:56:58'),
(346, '', 'ad31.jpg', '0', 18, 29, '2015-02-27 12:57:00'),
(348, '', 'ad41.jpg', '0', 17, 29, '2015-02-27 12:57:00'),
(349, '', 'ad51.jpg', '0', 16, 29, '2015-02-27 12:56:59'),
(350, '', 'ad61.jpg', '0', 15, 29, '2015-02-27 12:57:00'),
(351, '', 'ad71.jpg', '0', 14, 29, '2015-02-27 12:57:00'),
(352, '', 'ad8.jpg', '0', 13, 29, '2015-02-27 12:56:59'),
(353, '', 'ad9.jpg', '0', 12, 29, '2015-02-27 12:56:59'),
(354, '', 'ad10.jpg', '0', 11, 29, '2015-02-27 12:56:59'),
(355, '', 'ad111.jpg', '0', 10, 29, '2015-02-27 12:56:59'),
(356, '', 'ad121.jpg', '0', 9, 29, '2015-02-27 12:56:59'),
(357, '', 'ad13.jpg', '0', 8, 29, '2015-02-27 12:56:59'),
(358, '', 'ad14.jpg', '0', 7, 29, '2015-02-27 12:56:59'),
(359, '', 'ad15.jpg', '0', 6, 29, '2015-02-27 12:56:58'),
(360, '', 'ad16.jpg', '0', 5, 29, '2015-02-27 12:56:58'),
(362, '', 'ad17.jpg', '0', 4, 29, '2015-02-27 12:56:58'),
(363, '', 'ad18.jpg', '0', 3, 29, '2015-02-27 12:56:58'),
(364, '', 'AN1.JPG', '0', 0, 30, '2015-02-21 09:39:46'),
(365, '', 'an2.jpg', '0', 0, 30, '2015-02-21 09:39:58'),
(366, '', 'an3.jpg', '0', 0, 30, '2015-02-21 09:40:12'),
(367, '', 'an4.jpg', '0', 0, 30, '2015-02-21 09:40:26'),
(368, '', 'an5.jpg', '0', 0, 30, '2015-02-21 09:40:43'),
(369, '', 'an6.JPG', '0', 0, 30, '2015-02-21 09:40:54'),
(370, '', 'an7.JPG', '0', 0, 30, '2015-02-21 09:41:07'),
(371, '', 'an7a.jpg', '0', 0, 30, '2015-02-21 09:41:18'),
(372, '', 'an8.JPG', '0', 0, 30, '2015-02-21 09:41:32'),
(373, '', 'an9.JPG', '0', 0, 30, '2015-02-21 09:42:07'),
(374, '', 'an10.JPG', '0', 0, 30, '2015-02-21 09:42:18'),
(375, '', 'an11.jpg', '0', 0, 30, '2015-02-21 09:42:32'),
(376, '', 'an12.jpg', '0', 0, 30, '2015-02-21 09:42:45'),
(377, '', 'an13.JPG', '1', 0, 30, '2015-02-21 09:42:54'),
(378, '', 'an14.jpg', '0', 0, 30, '2015-02-21 09:43:16'),
(379, '', 'an15.JPG', '0', 0, 30, '2015-02-21 09:43:28'),
(380, '', 'an16.JPG', '0', 0, 30, '2015-02-21 09:43:44'),
(381, '', 'an17.JPG', '0', 0, 30, '2015-02-21 09:43:57'),
(382, '', 'an18.JPG', '1', 0, 30, '2015-02-21 09:44:08'),
(383, '', 'an19.jpg', '1', 0, 30, '2015-02-21 09:44:24'),
(384, '', 'ja2.jpg', '0', 4, 31, '2015-02-27 13:05:26'),
(386, '', 'ja31.jpg', '0', 12, 31, '2015-02-27 13:05:27'),
(387, '', 'ja4.jpg', '0', 13, 31, '2015-02-27 13:05:28'),
(389, '', 'ja51.jpg', '0', 14, 31, '2015-02-27 13:05:28'),
(390, '', 'ja6.jpg', '0', 15, 31, '2015-02-27 13:05:28'),
(391, '', 'ja7.jpg', '0', 16, 31, '2015-02-27 13:05:28'),
(392, '', 'ja8.jpg', '0', 17, 31, '2015-02-27 13:05:28'),
(393, '', 'ja9.jpg', '0', 18, 31, '2015-02-27 13:05:29'),
(394, '', 'ja10.jpg', '1', 20, 31, '2015-02-27 13:05:29'),
(395, '', 'ja111.jpg', '0', 11, 31, '2015-02-27 13:05:27'),
(396, '', 'ja12.jpg', '0', 10, 31, '2015-02-27 13:05:27'),
(397, '', 'ja13.jpg', '1', 6, 31, '2015-02-27 13:05:26'),
(398, '', 'ja14.jpg', '1', 7, 31, '2015-02-27 13:05:27'),
(399, '', 'ja15.jpg', '0', 1, 31, '2015-02-27 13:05:26'),
(400, '', 'ja16.jpg', '0', 2, 31, '2015-02-27 13:05:26'),
(401, '', 'ja17.jpg', '0', 3, 31, '2015-02-27 13:05:26'),
(402, '', 'ja18.jpg', '0', 5, 31, '2015-02-27 13:05:26'),
(403, '', 'ja19.jpg', '0', 8, 31, '2015-02-27 13:05:27'),
(404, '', 'ja20.jpg', '0', 9, 31, '2015-02-27 13:05:27'),
(405, '', 'ja21.jpg', '0', 19, 31, '2015-02-27 13:05:29'),
(407, '', 'p210.jpg', '0', 1, 32, '2015-02-27 13:01:16'),
(408, '', 'p31.jpg', '0', 14, 32, '2015-02-27 13:01:18'),
(409, '', 'p41.jpg', '1', 16, 32, '2015-02-27 13:01:18'),
(410, '', 'p51.jpg', '0', 15, 32, '2015-02-27 13:01:18'),
(411, '', 'p61.jpg', '0', 17, 32, '2015-02-27 13:01:18'),
(412, '', 'p71.jpg', '0', 18, 32, '2015-02-27 13:01:18'),
(413, '', 'p81.jpg', '0', 19, 32, '2015-02-27 13:01:19'),
(414, '', 'p91.jpg', '0', 20, 32, '2015-02-27 13:01:19'),
(415, '', 'p101.jpg', '0', 21, 32, '2015-02-27 13:01:19'),
(416, '', 'p113.jpg', '0', 22, 32, '2015-02-27 13:01:19'),
(417, '', 'p121.jpg', '0', 11, 32, '2015-02-27 13:01:17'),
(418, '', 'p131.jpg', '1', 13, 32, '2015-02-27 13:01:18'),
(419, '', 'p141.jpg', '1', 12, 32, '2015-02-27 13:01:17'),
(420, '', 'p14a.jpg', '0', 2, 32, '2015-02-27 13:01:16'),
(421, '', 'p14b.jpg', '0', 3, 32, '2015-02-27 13:01:16'),
(422, '', 'p151.jpg', '0', 4, 32, '2015-02-27 13:01:16'),
(423, '', 'p161.jpg', '0', 5, 32, '2015-02-27 13:01:16'),
(424, '', 'p171.jpg', '0', 6, 32, '2015-02-27 13:01:17'),
(425, '', 'p181.jpg', '0', 7, 32, '2015-02-27 13:01:17'),
(426, '', 'p191.jpg', '0', 8, 32, '2015-02-27 13:01:17'),
(427, '', 'p201.jpg', '0', 9, 32, '2015-02-27 13:01:17'),
(428, '', 'p211.jpg', '0', 10, 32, '2015-02-27 13:01:17'),
(430, '', 'pt2.jpeg', '0', 0, 33, '2015-02-21 10:26:00'),
(431, '', 'pt3.jpg', '0', 0, 33, '2015-02-21 10:26:14'),
(432, '', 'pt4.jpg', '1', 0, 33, '2015-02-21 10:26:27'),
(433, '', 'pt5.jpg', '0', 0, 33, '2015-02-21 10:26:47'),
(434, '', 'pt6.jpg', '0', 0, 33, '2015-02-21 10:27:21'),
(435, '', 'pt7.jpg', '0', 0, 33, '2015-02-21 10:27:32'),
(436, '', 'pt8.jpg', '0', 0, 33, '2015-02-21 10:27:42'),
(437, '', 'pt9.jpg', '1', 0, 33, '2015-02-27 12:57:31'),
(439, '', 'pt101.jpg', '0', 0, 33, '2015-02-21 10:28:23'),
(440, '', 'pt111.jpg', '0', 0, 33, '2015-02-21 10:28:38'),
(441, '', 'pt12.jpg', '0', 0, 33, '2015-02-21 10:28:51'),
(442, '', 'pt13.jpg', '0', 0, 33, '2015-02-21 10:29:05'),
(443, '', 'pt14.jpg', '0', 0, 33, '2015-02-21 10:29:17'),
(444, '', 'pt15.jpg', '0', 0, 33, '2015-02-21 10:29:28'),
(445, '', 'pt16.jpg', '1', 0, 33, '2015-02-27 12:57:14'),
(447, '', 'pt17.jpg', '0', 0, 33, '2015-02-21 10:29:58'),
(448, '', 'pt18.jpg', '0', 0, 33, '2015-02-21 10:30:08'),
(449, '', 'a17.jpg', '0', 1, 13, '2015-02-27 12:03:42'),
(450, '', 'ash110.jpg', '0', 1, 14, '2015-02-27 12:10:34'),
(452, '', 'b12.jpg', '0', 1, 15, '2015-02-27 12:12:32'),
(453, '', 'd12.jpg', '0', 1, 16, '2015-02-27 12:14:19'),
(454, '', 'd2.jpg', '0', 2, 16, '2015-02-27 12:19:56'),
(455, '', 'd8.jpg', '0', 8, 16, '2015-02-27 12:19:56'),
(457, '', 'jen110.jpg', '0', 1, 17, '2015-02-27 12:41:45'),
(458, '', 'Keisha12.jpg', '0', 1, 18, '2015-02-27 12:44:07'),
(459, '', 'Ta12.jpg', '0', 1, 28, '2015-02-27 12:44:48'),
(460, '', 'Mar13.jpg', '0', 1, 19, '2015-02-27 12:46:41'),
(461, '', 'su12.JPG', '0', 1, 27, '2015-02-27 12:47:49'),
(462, '', 'olg15.jpg', '0', 1, 23, '2015-02-27 12:51:14'),
(463, '', 'raf110.jpg', '0', 1, 25, '2015-02-27 12:52:25'),
(464, '', 'ad19.jpg', '0', 1, 29, '2015-02-27 12:56:58'),
(465, '', 'pt19.jpg', '0', 0, 33, '2015-02-27 12:58:57');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `photographeralbumgallery`
--

INSERT INTO `photographeralbumgallery` (`id`, `photographeralbum`, `title`, `image`, `timestamp`, `order`) VALUES
(1, 1, 'demo edit1', 'event4881.jpg', '2015-02-18 08:17:22', 1),
(2, 1, 'test edit', 'event488.jpg', '2015-02-18 08:14:49', 2),
(3, 2, 'Demo', 'event4889.jpg', '2015-02-18 10:26:30', 1),
(4, 5, 'dcsdcd', 'event48820.jpg', '2015-02-18 11:11:17', 2),
(5, 4, 'Demo', 'event48822.jpg', '2015-02-18 11:33:59', 1),
(6, 6, 'Cosmopolitan', 'D1.jpg', '2015-02-21 10:41:02', 0),
(7, 6, 'Femina April 2013', 'D12.jpg', '2015-02-21 10:46:49', 0),
(8, 6, 'First Magazine', 'D14.jpg', '2015-02-21 10:49:06', 0),
(9, 6, 'First Magazine 1', 'D17.jpg', '2015-02-27 13:13:39', 0),
(10, 6, 'Huff Magazine', 'D16.jpg', '2015-02-27 13:13:03', 0),
(11, 6, 'Institute Magazine', 'D19.jpg', '2015-02-21 10:56:47', 0),
(12, 6, 'Material Girl', 'D111.jpg', '2015-02-21 11:01:09', 0),
(13, 6, 'Untitle', 'D1.JPG', '2015-02-21 11:05:43', 0),
(14, 6, 'Vogue April 2013', 'd12.jpg', '2015-02-21 11:08:23', 0),
(15, 6, 'Vogue India December 2014', 'D113.jpg', '2015-02-21 11:11:30', 0),
(16, 6, 'Vogue India June 2012', 'd44.jpg', '2015-02-27 13:15:00', 0),
(17, 6, 'Vogue India May 2012', 'd17.jpg', '2015-02-21 11:16:13', 0),
(18, 7, 'ELLE INDIA DECEMBER 2014', '5.jpg', '2015-02-21 11:21:35', 0),
(19, 7, 'FIRST MAGAZINE', 'D116.jpg', '2015-02-21 11:23:45', 0),
(20, 7, 'HARPERS BAZAAR INDIA', 'D118.jpg', '2015-02-21 11:27:01', 0),
(21, 7, 'Huff Magazine', 'D120.jpg', '2015-02-21 11:31:13', 0),
(22, 7, 'KALTBLUT MAGAZINE', 'D122.jpg', '2015-02-21 11:34:16', 0),
(23, 7, 'SCHON MAGAZINE', 'D124.jpg', '2015-02-21 11:37:23', 0),
(24, 7, 'Teaser Magazine', 'D126.jpg', '2015-02-21 11:39:06', 0),
(25, 7, 'VOGUE INDIA MARCH 2014', 'D128.jpg', '2015-02-21 11:42:05', 0),
(26, 7, 'VOGUE INDIA MAY 2013', 'D130.jpg', '2015-02-21 11:45:23', 0),
(27, 7, 'VOGUE INDIA NOVEMBER 2013', 'D132.jpg', '2015-02-21 11:47:22', 0),
(28, 8, 'Advertising', 'g21.jpg', '2015-02-23 09:06:01', 1),
(29, 9, 'Editorial', '068_GRIN_03_20141.jpg', '2015-02-23 09:25:29', 1),
(30, 10, 'men', 'GE1.jpg', '2015-02-23 09:49:19', 1),
(31, 11, 'beauty', 'M1.jpg', '2015-02-23 10:02:20', 0),
(32, 11, 'Editorial', 'm1.jpg', '2015-02-23 10:15:51', 2),
(33, 11, 'men', 'M26.jpg', '2015-02-27 12:31:14', 3),
(34, 12, 'Fashion', 'z12.jpg', '2015-02-23 10:57:03', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=320 ;

--
-- Dumping data for table `photographeralbumgalleryimage`
--

INSERT INTO `photographeralbumgalleryimage` (`id`, `name`, `image`, `type`, `order`, `photographeralbumgallery`, `timestamp`) VALUES
(1, 'demo', 'logo.png', '1', 1, 2, '2015-02-18 10:08:10'),
(2, 'demo', 'event48811.jpg', '0', 1, 3, '2015-02-18 11:01:44'),
(3, 'demo', 'event48821.jpg', '0', 1, 4, '2015-02-19 05:44:12'),
(4, 'Demo27', 'event48823.jpg', '1', 1, 5, '2015-02-18 12:12:49'),
(5, 'test123', 'event48824.jpg', '0', 2, 5, '2015-02-18 11:34:34'),
(6, 'skdcsk', 'event48827.jpg', '1', 3, 5, '2015-02-18 11:43:32'),
(7, 'asxasx', 'event48833.jpg', '1', 2, 4, '2015-02-19 05:44:12'),
(8, 'kjdcksd', 'event48834.jpg', '0', 1, 1, '2015-02-19 08:48:58'),
(9, '', 'D22.jpg', '0', 1, 6, '2015-02-27 13:16:39'),
(11, '', 'D3.jpg', '1', 3, 6, '2015-02-21 10:43:50'),
(12, '', 'D4.jpg', '0', 2, 6, '2015-02-27 13:16:39'),
(13, '', 'D13.jpg', '0', 0, 7, '2015-02-21 10:47:07'),
(14, '', 'D23.jpg', '0', 0, 7, '2015-02-21 10:47:18'),
(15, '', 'D31.jpg', '0', 0, 7, '2015-02-21 10:47:30'),
(16, '', 'D41.jpg', '0', 0, 7, '2015-02-21 10:47:42'),
(18, '', 'D24.jpg', '0', 2, 8, '2015-02-27 13:18:50'),
(19, '', 'D32.jpg', '1', 1, 8, '2015-02-27 13:18:50'),
(21, '', 'D16.jpg', '0', 2, 9, '2015-02-27 13:20:16'),
(22, '', 'D25.jpg', '0', 3, 9, '2015-02-27 13:20:16'),
(23, '', 'D34.jpg', '0', 4, 9, '2015-02-27 13:20:16'),
(24, '', 'D43.jpg', '0', 5, 9, '2015-02-27 13:20:16'),
(25, '', 'D5.jpg', '0', 6, 9, '2015-02-27 13:20:16'),
(26, '', 'D6.jpg', '0', 7, 9, '2015-02-27 13:20:17'),
(28, '', 'D26.jpg', '0', 0, 10, '2015-02-21 10:55:12'),
(29, '', 'D35.jpg', '0', 0, 10, '2015-02-21 10:55:24'),
(30, '', 'D110.jpg', '1', 0, 11, '2015-02-21 10:57:12'),
(32, '', 'D36.jpg', '0', 0, 11, '2015-02-21 10:57:37'),
(33, '', 'D44.jpg', '0', 0, 11, '2015-02-21 10:57:51'),
(34, '', 'D51.jpg', '0', 0, 11, '2015-02-21 10:58:27'),
(35, '', 'D61.jpg', '0', 0, 11, '2015-02-21 10:58:46'),
(36, '', 'D112.jpg', '0', 0, 12, '2015-02-21 11:01:27'),
(37, '', 'D28.jpg', '0', 0, 12, '2015-02-21 11:01:39'),
(38, '', 'D37.jpg', '1', 0, 12, '2015-02-21 11:01:50'),
(39, '', 'D45.jpg', '0', 0, 12, '2015-02-21 11:02:01'),
(41, '', 'D11.JPG', '1', 0, 13, '2015-02-21 11:06:01'),
(42, '', 'D2.JPG', '0', 0, 13, '2015-02-21 11:06:19'),
(43, '', 'D3.JPG', '0', 0, 13, '2015-02-21 11:06:45'),
(44, '', 'D4.JPG', '0', 0, 13, '2015-02-27 13:23:47'),
(45, '', 'D5.JPG', '0', 0, 13, '2015-02-21 11:07:10'),
(47, '', 'd13.jpg', '0', 1, 14, '2015-02-27 13:23:01'),
(49, '', 'd21.jpg', '0', 2, 14, '2015-02-27 13:23:02'),
(50, '', 'd31.jpg', '0', 3, 14, '2015-02-27 13:23:02'),
(51, '', 'd41.jpg', '1', 5, 14, '2015-02-27 13:23:02'),
(52, '', 'd51.jpg', '0', 4, 14, '2015-02-27 13:23:02'),
(53, '', 'D114.jpg', '0', 0, 15, '2015-02-21 11:11:59'),
(54, '', 'D29.jpg', '0', 0, 15, '2015-02-21 11:12:11'),
(55, '', 'D38.jpg', '0', 0, 15, '2015-02-21 11:12:32'),
(56, '', 'D46.jpg', '0', 0, 15, '2015-02-21 11:12:44'),
(57, '', 'd16.jpg', '0', 2, 16, '2015-02-27 13:25:35'),
(60, '', 'd42.jpg', '0', 3, 16, '2015-02-27 13:25:35'),
(61, '', 'd14.jpg', '0', 0, 17, '2015-02-27 13:25:33'),
(62, '', 'd23.jpg', '0', 0, 17, '2015-02-21 11:16:50'),
(63, '', 'd33.jpg', '0', 0, 17, '2015-02-21 11:17:01'),
(64, '', 'd43.jpg', '0', 0, 17, '2015-02-21 11:17:20'),
(65, '', 'd52.jpg', '1', 0, 17, '2015-02-21 11:17:36'),
(66, '', '51.jpg', '0', 0, 18, '2015-02-21 11:21:59'),
(67, '', 'D115.jpg', '1', 0, 18, '2015-02-21 11:22:08'),
(68, '', 'D211.jpg', '0', 0, 18, '2015-02-21 11:22:19'),
(69, '', 'D39.jpg', '0', 0, 18, '2015-02-21 11:22:31'),
(70, '', 'D47.jpg', '1', 0, 18, '2015-02-21 11:22:43'),
(71, '', 'D7.jpg', '1', 0, 18, '2015-02-21 11:22:59'),
(72, '', 'D117.jpg', '1', 0, 19, '2015-02-21 11:24:32'),
(73, '', 'D212.jpg', '0', 0, 19, '2015-02-21 11:24:22'),
(74, '', 'D310.jpg', '0', 0, 19, '2015-02-21 11:24:43'),
(75, '', 'D48.jpg', '1', 0, 19, '2015-02-21 11:25:16'),
(76, '', 'D119.jpg', '1', 0, 20, '2015-02-21 11:27:50'),
(77, '', 'D213.jpg', '0', 0, 20, '2015-02-21 11:28:01'),
(78, '', 'D311.jpg', '0', 0, 20, '2015-02-21 11:28:12'),
(79, '', 'D49.jpg', '0', 0, 20, '2015-02-21 11:28:30'),
(80, '', 'D53.jpg', '0', 0, 20, '2015-02-21 11:28:46'),
(81, '', 'D62.jpg', '0', 0, 20, '2015-02-21 11:29:04'),
(82, '', 'D71.jpg', '0', 0, 20, '2015-02-21 11:29:17'),
(83, '', 'D8.jpg', '1', 0, 20, '2015-02-21 11:29:28'),
(84, '', 'D121.jpg', '0', 0, 21, '2015-02-21 11:31:39'),
(85, '', 'D214.jpg', '0', 0, 21, '2015-02-21 11:31:53'),
(86, '', 'D312.jpg', '0', 0, 21, '2015-02-21 11:32:04'),
(87, '', 'D410.jpg', '0', 0, 21, '2015-02-21 11:32:14'),
(88, '', 'D54.jpg', '0', 0, 21, '2015-02-21 11:32:25'),
(90, '', 'D63.jpg', '0', 0, 21, '2015-02-21 11:32:47'),
(92, '', 'D123.jpg', '0', 0, 22, '2015-02-21 11:34:56'),
(93, '', 'D215.jpg', '1', 0, 22, '2015-02-21 11:36:10'),
(94, '', 'D313.jpg', '0', 0, 22, '2015-02-21 11:36:23'),
(95, '', 'D411.jpg', '0', 0, 22, '2015-02-21 11:36:36'),
(96, '', 'D125.jpg', '1', 0, 23, '2015-02-21 11:37:39'),
(97, '', 'D216.jpg', '0', 0, 23, '2015-02-21 11:37:49'),
(98, '', 'D314.jpg', '0', 0, 23, '2015-02-21 11:38:01'),
(99, '', 'D412.jpg', '0', 0, 23, '2015-02-21 11:38:15'),
(100, '', 'D56.jpg', '0', 0, 23, '2015-02-21 11:38:29'),
(101, '', 'D127.jpg', '1', 0, 24, '2015-02-21 11:39:25'),
(102, '', 'D217.jpg', '0', 0, 24, '2015-02-21 11:39:36'),
(103, '', 'D315.jpg', '0', 0, 24, '2015-02-21 11:39:51'),
(105, '', 'D57.jpg', '0', 0, 24, '2015-02-21 11:40:21'),
(106, '', 'D64.jpg', '0', 0, 24, '2015-02-21 11:40:36'),
(107, '', 'D73.jpg', '0', 0, 24, '2015-02-21 11:40:53'),
(108, '', 'D81.jpg', '0', 0, 24, '2015-02-21 11:41:07'),
(110, '', 'D129.jpg', '0', 1, 25, '2015-02-27 13:27:24'),
(111, '', 'D218.jpg', '1', 5, 25, '2015-02-27 13:27:24'),
(112, '', 'D316.jpg', '0', 3, 25, '2015-02-27 13:27:24'),
(113, '', 'D414.jpg', '0', 2, 25, '2015-02-27 13:27:24'),
(114, '', 'D58.jpg', '1', 6, 25, '2015-02-27 13:27:24'),
(115, '', 'D65.jpg', '0', 4, 25, '2015-02-27 13:27:24'),
(116, '', 'D131.jpg', '0', 0, 26, '2015-02-21 11:45:47'),
(117, '', 'D219.jpg', '0', 0, 26, '2015-02-21 11:46:00'),
(118, '', 'D317.jpg', '0', 0, 26, '2015-02-21 11:46:15'),
(119, '', 'D415.jpg', '0', 0, 26, '2015-02-21 11:46:26'),
(120, '', 'D133.jpg', '1', 0, 27, '2015-02-21 11:48:10'),
(121, '', 'D220.jpg', '0', 0, 27, '2015-02-21 11:48:40'),
(122, '', 'D318.jpg', '0', 0, 27, '2015-02-21 11:49:18'),
(123, '', 'D416.jpg', '0', 0, 27, '2015-02-21 11:49:37'),
(124, '', 'D59.jpg', '0', 0, 27, '2015-02-21 11:50:00'),
(125, '', 'D66.jpg', '0', 0, 27, '2015-02-21 11:50:26'),
(126, '', 'D74.jpg', '0', 0, 27, '2015-02-21 11:50:44'),
(127, '', 'g1.jpg', '1', 1, 28, '2015-02-27 13:35:24'),
(128, '', 'g22.jpg', '0', 16, 28, '2015-02-27 13:35:26'),
(129, '', 'g3.jpg', '0', 17, 28, '2015-02-27 13:35:26'),
(130, '', 'g4.jpg', '1', 19, 28, '2015-02-27 13:35:26'),
(131, '', 'g51.jpg', '0', 18, 28, '2015-02-27 13:35:26'),
(132, '', 'g6.jpg', '0', 20, 28, '2015-02-27 13:35:26'),
(133, '', 'g7.jpg', '1', 22, 28, '2015-02-27 13:35:27'),
(134, '', 'g8.jpg', '1', 23, 28, '2015-02-27 13:35:27'),
(135, '', 'g9.jpg', '0', 21, 28, '2015-02-27 13:35:26'),
(136, '', 'g10.jpg', '0', 24, 28, '2015-02-27 13:35:27'),
(137, '', 'g11.jpg', '0', 25, 28, '2015-02-27 13:35:27'),
(138, '', 'g12.jpg', '0', 26, 28, '2015-02-27 13:35:27'),
(139, '', 'g13.jpg', '0', 27, 28, '2015-02-27 13:35:27'),
(140, '', 'g14.jpg', '0', 15, 28, '2015-02-27 13:35:26'),
(141, '', 'g15.jpg', '1', 14, 28, '2015-02-27 13:35:25'),
(142, '', 'g16.jpg', '1', 2, 28, '2015-02-27 13:35:24'),
(143, '', 'g17.jpg', '1', 3, 28, '2015-02-27 13:35:24'),
(144, '', 'g18.jpg', '0', 4, 28, '2015-02-27 13:35:24'),
(145, '', 'g19.jpg', '0', 5, 28, '2015-02-27 13:35:24'),
(146, '', 'g20.jpg', '1', 6, 28, '2015-02-27 13:35:24'),
(147, '', 'g211.jpg', '1', 7, 28, '2015-02-27 13:35:24'),
(148, '', 'g221.jpg', '1', 8, 28, '2015-02-27 13:35:24'),
(149, '', 'g23.jpg', '1', 9, 28, '2015-02-27 13:35:25'),
(150, '', 'g24.jpg', '1', 10, 28, '2015-02-27 13:35:25'),
(151, '', 'g25.jpg', '1', 11, 28, '2015-02-27 13:35:25'),
(152, '', 'g26.jpg', '1', 12, 28, '2015-02-27 13:35:25'),
(153, '', 'g27.jpg', '1', 13, 28, '2015-02-27 13:35:25'),
(154, '', 'g28.jpg', '1', 28, 28, '2015-02-27 13:35:28'),
(155, '', '068_GRIN_03_20142.jpg', '0', 1, 29, '2015-02-27 13:35:29'),
(156, '', 'g110.jpg', '1', 20, 29, '2015-02-27 13:35:32'),
(157, '', 'g1a.jpg', '0', 23, 29, '2015-02-27 13:35:32'),
(158, '', 'g29.jpg', '1', 21, 29, '2015-02-27 13:35:32'),
(159, '', 'g41.jpg', '1', 22, 29, '2015-02-27 13:35:32'),
(160, '', 'g52.jpg', '0', 24, 29, '2015-02-27 13:35:32'),
(161, '', 'g61.jpg', '0', 25, 29, '2015-02-27 13:35:32'),
(162, '', 'g71.jpg', '0', 26, 29, '2015-02-27 13:35:33'),
(163, '', 'g81.jpg', '0', 27, 29, '2015-02-27 13:35:33'),
(164, '', 'g91.jpg', '0', 28, 29, '2015-02-27 13:35:33'),
(165, '', 'g101.jpg', '0', 29, 29, '2015-02-27 13:35:33'),
(166, '', 'g111.jpg', '1', 31, 29, '2015-02-27 13:35:33'),
(167, '', 'g121.jpg', '0', 30, 29, '2015-02-27 13:35:33'),
(168, '', 'g131.jpg', '0', 32, 29, '2015-02-27 13:35:34'),
(169, '', 'g141.jpg', '0', 33, 29, '2015-02-27 13:35:34'),
(170, '', 'g151.jpg', '0', 34, 29, '2015-02-27 13:35:34'),
(171, '', 'g161.jpg', '0', 35, 29, '2015-02-27 13:35:34'),
(172, '', 'g171.jpg', '0', 19, 29, '2015-02-27 13:35:31'),
(173, '', 'g181.jpg', '0', 18, 29, '2015-02-27 13:35:31'),
(174, '', 'g191.jpg', '0', 2, 29, '2015-02-27 13:35:29'),
(175, '', 'g201.jpg', '0', 3, 29, '2015-02-27 13:35:29'),
(176, '', 'g212.jpg', '0', 4, 29, '2015-02-27 13:35:29'),
(177, '', 'g222.jpg', '0', 5, 29, '2015-02-27 13:35:29'),
(178, '', 'g231.jpg', '0', 6, 29, '2015-02-27 13:35:29'),
(179, '', 'g241.jpg', '0', 7, 29, '2015-02-27 13:35:30'),
(180, '', 'g251.jpg', '1', 9, 29, '2015-02-27 13:35:30'),
(181, '', 'g261.jpg', '0', 8, 29, '2015-02-27 13:35:30'),
(183, '', 'g271.jpg', '0', 11, 29, '2015-02-27 13:35:30'),
(184, '', 'g281.jpg', '1', 10, 29, '2015-02-27 13:35:30'),
(185, '', 'g291.jpg', '0', 12, 29, '2015-02-27 13:35:30'),
(186, '', 'g30.jpg', '0', 13, 29, '2015-02-27 13:35:31'),
(187, '', 'g31.jpg', '0', 14, 29, '2015-02-27 13:35:31'),
(188, '', 'g32.jpg', '0', 15, 29, '2015-02-27 13:35:31'),
(189, '', 'g33.jpg', '0', 16, 29, '2015-02-27 13:35:31'),
(190, '', 'g34.jpg', '0', 17, 29, '2015-02-27 13:35:31'),
(192, '', 'GE11.jpg', '1', 1, 30, '2015-02-27 12:23:12'),
(193, '', 'GE21.jpg', '0', 16, 30, '2015-02-27 12:23:14'),
(194, '', 'GE3.jpg', '0', 15, 30, '2015-02-27 12:23:13'),
(195, '', 'GE4.jpg', '1', 18, 30, '2015-02-27 12:23:14'),
(196, '', 'GE5.jpg', '0', 14, 30, '2015-02-27 12:23:13'),
(197, '', 'GE6.jpg', '0', 13, 30, '2015-02-27 12:23:13'),
(198, '', 'GE7.jpg', '0', 12, 30, '2015-02-27 12:23:13'),
(200, '', 'GE8.jpg', '1', 11, 30, '2015-02-27 12:23:13'),
(201, '', 'GE9.jpg', '1', 10, 30, '2015-02-27 12:23:13'),
(202, '', 'GE10.jpg', '0', 9, 30, '2015-02-27 12:23:13'),
(203, '', 'GE111.jpg', '0', 8, 30, '2015-02-27 12:23:12'),
(204, '', 'GE12.jpg', '0', 7, 30, '2015-02-27 12:23:12'),
(205, '', 'GE13.jpg', '0', 6, 30, '2015-02-27 12:23:12'),
(206, '', 'GE14.jpg', '0', 5, 30, '2015-02-27 12:23:12'),
(207, '', 'GE15.jpg', '0', 4, 30, '2015-02-27 12:23:12'),
(208, '', 'GE16.jpg', '0', 3, 30, '2015-02-27 12:23:12'),
(209, '', 'GE17.jpg', '1', 2, 30, '2015-02-27 12:23:46'),
(210, '', 'GE18.jpg', '0', 17, 30, '2015-02-27 12:23:14'),
(211, '', 'M11.jpg', '0', 1, 31, '2015-02-27 12:36:05'),
(213, '', 'M3.jpg', '0', 12, 31, '2015-02-27 12:36:06'),
(214, '', 'M4.jpg', '0', 13, 31, '2015-02-27 12:36:07'),
(215, '', 'M51.jpg', '0', 14, 31, '2015-02-27 12:36:07'),
(216, '', 'M6.jpg', '0', 15, 31, '2015-02-27 12:36:07'),
(217, '', 'M7.jpg', '0', 16, 31, '2015-02-27 12:36:07'),
(218, '', 'M8.jpg', '0', 17, 31, '2015-02-27 12:36:07'),
(219, '', 'M9.jpg', '0', 18, 31, '2015-02-27 12:36:07'),
(220, '', 'M10.jpg', '0', 19, 31, '2015-02-27 12:36:07'),
(222, '', 'M12.jpg', '0', 20, 31, '2015-02-27 12:36:07'),
(223, '', 'M13.jpg', '0', 11, 31, '2015-02-27 12:36:06'),
(224, '', 'M14.jpg', '0', 10, 31, '2015-02-27 12:36:06'),
(225, '', 'M15.jpg', '0', 2, 31, '2015-02-27 12:36:05'),
(226, '', 'M16.jpg', '0', 3, 31, '2015-02-27 12:36:05'),
(227, '', 'M17.jpg', '0', 4, 31, '2015-02-27 12:36:05'),
(228, '', 'M18.jpg', '0', 5, 31, '2015-02-27 12:36:05'),
(229, '', 'M19.jpg', '0', 6, 31, '2015-02-27 12:36:05'),
(230, '', 'M20.jpg', '0', 7, 31, '2015-02-27 12:36:06'),
(231, '', 'M211.jpg', '1', 9, 31, '2015-02-27 12:38:03'),
(232, '', 'M22.jpg', '1', 22, 31, '2015-02-27 12:36:07'),
(233, '', 'M23.jpg', '0', 8, 31, '2015-02-27 12:38:03'),
(234, '', 'M24.jpg', '0', 21, 31, '2015-02-27 12:36:07'),
(235, '', 'm11.jpg', '0', 1, 32, '2015-02-27 12:37:10'),
(236, '', 'm2.jpg', '0', 20, 32, '2015-02-27 12:37:13'),
(237, '', 'm3.jpg', '0', 21, 32, '2015-02-27 12:37:13'),
(238, '', 'm4.jpg', '0', 22, 32, '2015-02-27 12:37:13'),
(239, '', 'm5.jpg', '0', 23, 32, '2015-02-27 12:37:13'),
(240, '', 'm6.jpg', '0', 24, 32, '2015-02-27 12:37:13'),
(241, '', 'm7.jpg', '0', 25, 32, '2015-02-27 12:37:13'),
(242, '', 'm8.jpg', '0', 26, 32, '2015-02-27 12:37:14'),
(243, '', 'm9.jpg', '0', 27, 32, '2015-02-27 12:37:14'),
(244, '', 'm10.jpg', '0', 28, 32, '2015-02-27 12:37:14'),
(245, '', 'm111.jpg', '0', 29, 32, '2015-02-27 12:37:14'),
(246, '', 'm12.jpg', '0', 30, 32, '2015-02-27 12:37:14'),
(247, '', 'm13.jpg', '0', 31, 32, '2015-02-27 12:37:14'),
(248, '', 'm14.jpg', '0', 32, 32, '2015-02-27 12:37:15'),
(249, '', 'm15.jpg', '1', 35, 32, '2015-02-27 12:37:15'),
(250, '', 'm16.jpg', '0', 33, 32, '2015-02-27 12:37:15'),
(251, '', 'm17.jpg', '0', 19, 32, '2015-02-27 12:37:12'),
(252, '', 'm18.jpg', '0', 18, 32, '2015-02-27 12:37:12'),
(254, '', 'm191.jpg', '0', 17, 32, '2015-02-27 12:37:12'),
(255, '', 'm20.jpg', '1', 3, 32, '2015-02-27 12:37:10'),
(256, '', 'm21.jpg', '0', 2, 32, '2015-02-27 12:37:10'),
(257, '', 'm22.jpg', '0', 4, 32, '2015-02-27 12:37:10'),
(258, '', 'm23.jpg', '0', 5, 32, '2015-02-27 12:37:10'),
(259, '', 'm24.jpg', '0', 6, 32, '2015-02-27 12:37:10'),
(260, '', 'm25.jpg', '0', 7, 32, '2015-02-27 12:37:11'),
(261, '', 'm26.jpg', '0', 8, 32, '2015-02-27 12:37:11'),
(262, '', 'm27.jpg', '0', 9, 32, '2015-02-27 12:37:11'),
(263, '', 'm28.jpg', '0', 12, 32, '2015-02-27 12:37:11'),
(264, '', 'm29.jpg', '1', 10, 32, '2015-02-27 12:37:11'),
(265, '', 'm30.jpg', '1', 11, 32, '2015-02-27 12:37:11'),
(266, '', 'm31.jpg', '0', 13, 32, '2015-02-27 12:37:11'),
(267, '', 'm32.jpg', '0', 14, 32, '2015-02-27 12:37:12'),
(269, '', 'm331.jpg', '0', 15, 32, '2015-02-27 12:37:12'),
(270, '', 'm34.jpg', '0', 16, 32, '2015-02-27 12:37:12'),
(272, '', 'M110.jpg', '1', 0, 33, '2015-02-23 10:50:16'),
(274, '', 'M31.jpg', '0', 0, 33, '2015-02-23 10:50:29'),
(275, '', 'M41.jpg', '0', 0, 33, '2015-02-23 10:50:42'),
(276, '', 'M52.jpg', '0', 0, 33, '2015-02-23 10:50:54'),
(277, '', 'M61.jpg', '0', 0, 33, '2015-02-23 10:51:18'),
(278, '', 'M71.jpg', '0', 0, 33, '2015-02-23 10:51:34'),
(279, '', 'M81.jpg', '0', 0, 33, '2015-02-23 10:51:45'),
(280, '', 'M91.jpg', '0', 0, 33, '2015-02-23 10:51:56'),
(281, '', 'M101.jpg', '0', 0, 33, '2015-02-23 10:52:09'),
(282, '', 'M112.jpg', '0', 0, 33, '2015-02-23 10:52:21'),
(283, '', 'M121.jpg', '1', 0, 33, '2015-02-23 10:52:31'),
(284, '', 'M131.jpg', '0', 0, 33, '2015-02-23 10:52:45'),
(285, '', 'z13.jpg', '0', 0, 34, '2015-02-23 10:57:30'),
(286, '', 'z2.jpg', '0', 0, 34, '2015-02-23 10:57:47'),
(287, '', 'z3.jpg', '1', 0, 34, '2015-02-23 10:58:02'),
(288, '', 'z4.jpg', '0', 0, 34, '2015-02-23 10:58:16'),
(289, '', 'z5.jpg', '0', 0, 34, '2015-02-23 10:58:35'),
(290, '', 'z6.jpg', '0', 0, 34, '2015-02-27 13:39:34'),
(291, '', 'z7.jpg', '0', 0, 34, '2015-02-23 10:59:07'),
(292, '', 'z8.jpg', '0', 0, 34, '2015-02-23 10:59:25'),
(293, '', 'z9.jpg', '0', 0, 34, '2015-02-23 10:59:36'),
(294, '', 'z10.jpg', '0', 0, 34, '2015-02-23 10:59:48'),
(295, '', 'z111.jpg', '0', 0, 34, '2015-02-23 10:59:59'),
(296, '', 'z121.jpg', '1', 0, 34, '2015-02-23 11:00:15'),
(297, '', 'z131.jpg', '0', 0, 34, '2015-02-23 11:00:27'),
(298, '', 'z14.jpg', '0', 0, 34, '2015-02-23 11:00:39'),
(299, '', 'z15.jpg', '0', 0, 34, '2015-02-23 11:00:59'),
(300, '', 'z16.jpg', '0', 0, 34, '2015-02-23 11:01:25'),
(301, '', 'z17.jpg', '1', 0, 34, '2015-02-23 11:01:39'),
(302, '', 'z18.jpg', '1', 0, 34, '2015-02-23 11:01:54'),
(303, '', 'z19.jpg', '0', 0, 34, '2015-02-23 11:02:09'),
(304, '', 'z20.jpg', '0', 0, 34, '2015-02-23 11:02:24'),
(305, '', 'z21.jpg', '0', 0, 34, '2015-02-23 11:02:53'),
(306, '', 'z22.jpg', '0', 0, 34, '2015-02-23 11:03:11'),
(307, '', 'z23.jpg', '0', 0, 34, '2015-02-23 11:03:36'),
(308, '', 'z24.jpg', '0', 0, 34, '2015-02-23 11:03:51'),
(309, '', 'z25.jpg', '0', 0, 34, '2015-02-23 11:04:04'),
(310, '', 'z26.jpg', '0', 0, 34, '2015-02-23 11:04:18'),
(311, '', 'z27.jpg', '0', 0, 34, '2015-02-23 11:04:34'),
(314, '', 'z29.jpg', '0', 0, 34, '2015-02-23 11:05:27'),
(315, '', 'D42.jpg', '0', 3, 8, '2015-02-27 13:18:50'),
(316, '', 'D134.jpg', '1', 1, 9, '2015-02-27 13:20:16'),
(317, '', 'D51.jpg', '0', 0, 12, '2015-02-27 13:20:25'),
(318, '', 'd22.jpg', '0', 1, 16, '2015-02-27 13:25:35'),
(319, '', 'd32.jpg', '0', 4, 16, '2015-02-27 13:25:35');

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

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `json` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `accesslevel`, `timestamp`, `status`, `image`, `username`, `socialid`, `logintype`, `json`) VALUES
(1, 'wohlig', 'a63526467438df9566c508027d9cb06b', 'wohlig@wohlig.com', 1, '0000-00-00 00:00:00', 1, NULL, '', '', 0, ''),
(4, 'pratik', '0cb2b62754dfd12b6ed0161d4b447df7', 'pratik@wohlig.com', 1, '2014-05-12 06:52:44', 1, NULL, 'pratik', '1', 1, ''),
(5, 'wohlig123', 'wohlig123', 'wohlig1@wohlig.com', 1, '2014-05-12 06:52:44', 1, NULL, '', '', 0, ''),
(6, 'wohlig1', 'a63526467438df9566c508027d9cb06b', 'wohlig2@wohlig.com', 1, '2014-05-12 06:52:44', 1, NULL, '', '', 0, ''),
(7, 'Avinash', '7b0a80efe0d324e937bbfc7716fb15d3', 'avinash@wohlig.com', 1, '2014-10-17 06:22:29', 1, NULL, '', '', 0, ''),
(9, 'avinash', 'a208e5837519309129fa466b0c68396b', 'a@email.com', 2, '2014-12-03 11:06:19', 3, '', '', '123', 1, 'demojson'),
(13, 'aaa', 'a208e5837519309129fa466b0c68396b', 'aaa3@email.com', 3, '2014-12-04 06:55:42', 3, NULL, '', '1', 2, 'userjson');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onuser` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `onuser`, `status`, `description`, `timestamp`) VALUES
(1, 1, 1, 'User Address Edited', '2014-05-12 06:50:21'),
(2, 1, 1, 'User Details Edited', '2014-05-12 06:51:43'),
(3, 1, 1, 'User Details Edited', '2014-05-12 06:51:53'),
(4, 4, 1, 'User Created', '2014-05-12 06:52:44'),
(5, 4, 1, 'User Address Edited', '2014-05-12 12:31:48'),
(6, 23, 2, 'User Created', '2014-10-07 06:46:55'),
(7, 24, 2, 'User Created', '2014-10-07 06:48:25'),
(8, 25, 2, 'User Created', '2014-10-07 06:49:04'),
(9, 26, 2, 'User Created', '2014-10-07 06:49:16'),
(10, 27, 2, 'User Created', '2014-10-07 06:52:18'),
(11, 28, 2, 'User Created', '2014-10-07 06:52:45'),
(12, 29, 2, 'User Created', '2014-10-07 06:53:10'),
(13, 30, 2, 'User Created', '2014-10-07 06:53:33'),
(14, 31, 2, 'User Created', '2014-10-07 06:55:03'),
(15, 32, 2, 'User Created', '2014-10-07 06:55:33'),
(16, 33, 2, 'User Created', '2014-10-07 06:59:32'),
(17, 34, 2, 'User Created', '2014-10-07 07:01:18'),
(18, 35, 2, 'User Created', '2014-10-07 07:01:50'),
(19, 34, 2, 'User Details Edited', '2014-10-07 07:04:34'),
(20, 18, 2, 'User Details Edited', '2014-10-07 07:05:11'),
(21, 18, 2, 'User Details Edited', '2014-10-07 07:05:45'),
(22, 18, 2, 'User Details Edited', '2014-10-07 07:06:03'),
(23, 7, 6, 'User Created', '2014-10-17 06:22:29'),
(24, 7, 6, 'User Details Edited', '2014-10-17 06:32:22'),
(25, 7, 6, 'User Details Edited', '2014-10-17 06:32:37'),
(26, 8, 6, 'User Created', '2014-11-15 12:05:52'),
(27, 9, 6, 'User Created', '2014-12-02 10:46:36'),
(28, 9, 6, 'User Details Edited', '2014-12-02 10:47:34'),
(29, 4, 6, 'User Details Edited', '2014-12-03 10:34:49'),
(30, 4, 6, 'User Details Edited', '2014-12-03 10:36:34'),
(31, 4, 6, 'User Details Edited', '2014-12-03 10:36:49'),
(32, 8, 6, 'User Details Edited', '2014-12-03 10:47:16');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
