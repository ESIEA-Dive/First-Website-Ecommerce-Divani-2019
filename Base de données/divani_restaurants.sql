-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 07, 2021 at 12:14 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `divani restaurants`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `a_id` int NOT NULL AUTO_INCREMENT,
  `a_name` text NOT NULL,
  `a_email` text NOT NULL,
  `a_pass` text NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_name`, `a_email`, `a_pass`) VALUES
(3, '534b44a19bf18d20b71ecc4eb77c572f', '0312d0d39585741666c19c217ed769f7', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `pro_id` int NOT NULL,
  `qty` int NOT NULL,
  `ip_add` text NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `pro_id`, `qty`, `ip_add`) VALUES
(90, 38, 1, '::1'),
(89, 36, 1, '::1'),
(88, 35, 1, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `main_cat`
--

DROP TABLE IF EXISTS `main_cat`;
CREATE TABLE IF NOT EXISTS `main_cat` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_name` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `main_cat`
--

INSERT INTO `main_cat` (`cat_id`, `cat_name`) VALUES
(6, 'PC'),
(5, 'Computer'),
(9, 'Screen');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `pay_id` int NOT NULL AUTO_INCREMENT,
  `pro_id` int NOT NULL,
  `u_id` int NOT NULL,
  `amt` int NOT NULL,
  `qty` int NOT NULL,
  `trx_id` text NOT NULL,
  `ip_add` text NOT NULL,
  `status` text NOT NULL,
  `pay_date` date NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `pro_id`, `u_id`, `amt`, `qty`, `trx_id`, `ip_add`, `status`, `pay_date`) VALUES
(20, 36, 6, 2199, 1, 'ORD1663732225RCV', '::1', 'Pending', '2021-05-06'),
(19, 39, 7, 800, 1, 'ORD959690243RCV', '::1', 'Complete', '2021-05-05'),
(18, 36, 7, 2199, 1, 'ORD423327823RCV', '::1', 'Complete', '2021-05-05'),
(17, 38, 7, 750, 1, 'ORD1246719953RCV', '::1', 'Cancel', '2021-05-05'),
(16, 49, 7, 129, 1, 'ORD1265475093RCV', '::1', 'Cancel', '2021-05-05'),
(15, 38, 6, 750, 1, 'ORD811295368RCV', '::1', 'Pending', '2021-05-05'),
(13, 39, 6, 800, 1, 'ORD262462545RCV', '::1', 'Cancel', '2021-05-05'),
(14, 35, 6, 2499, 1, 'ORD216177333RCV', '::1', 'Pending', '2021-05-05'),
(21, 35, 6, 2499, 1, 'ORD1435738951RCV', '::1', 'Pending', '2021-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `pro_id` int NOT NULL AUTO_INCREMENT,
  `pro_name` text NOT NULL,
  `cat_id` int NOT NULL,
  `sub_cat_id` int NOT NULL,
  `pro_img1` text NOT NULL,
  `pro_img2` text NOT NULL,
  `pro_img3` text NOT NULL,
  `pro_img4` text NOT NULL,
  `pro_feature1` text NOT NULL,
  `pro_feature2` text NOT NULL,
  `pro_feature3` text NOT NULL,
  `pro_feature4` text NOT NULL,
  `pro_feature5` text NOT NULL,
  `pro_price` text NOT NULL,
  `pro_model` text NOT NULL,
  `pro_warranty` text NOT NULL,
  `pro_keyword` text NOT NULL,
  `pro_added_date` timestamp NOT NULL,
  `pro_qty` text NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_id`, `pro_name`, `cat_id`, `sub_cat_id`, `pro_img1`, `pro_img2`, `pro_img3`, `pro_img4`, `pro_feature1`, `pro_feature2`, `pro_feature3`, `pro_feature4`, `pro_feature5`, `pro_price`, `pro_model`, `pro_warranty`, `pro_keyword`, `pro_added_date`, `pro_qty`) VALUES
(36, 'New Alienware Aurora', 5, 5, '51Fjrh6ugEL._AC_SL1000_.jpg', '51Qgh1rAw4L._AC_SL1000_.jpg', '61a4iWGb+KL._AC_SL1500_.jpg', '71Y2fMnlGQL._AC_SL1500_.jpg', 'Gaming Desktop', 'AMD Ryzen 7 3800X', '1TB PCIe SSD', '32GB DDR4-2933', 'Windows 10 Home', '2199', 'AWAUR10-A654BLK', '3 years', 'Alienware, Aurora, Computer', '2021-05-05 10:41:34', '13'),
(37, 'Alienware Aurora R11', 5, 24, '71Is5eCtK+L._AC_SL1500_.jpg', '71OadVBgQbL._AC_SL1500_.jpg', '71WG+kXUe0L._AC_SL1500_.jpg', '7190Akm2xdL._AC_SL1500_.jpg', 'Intel i7-10700KF', 'NVIDIA GeForce RTX 2080', '512GB SSD', '16GB DDR4 XMP', 'Windows 10 ', '1900', 'AWAUR11-7088BLK-PUS', '3 years', 'Alienware, Aurora, Computer', '2021-05-05 10:42:46', '0'),
(35, 'Dell Alien Ware ', 5, 24, '61pwaWfNc5L._AC_SL1500_.jpg', '61wP2WIdqAL._AC_SL1500_.jpg', '71w9aaaiZ5L._AC_SL1500_.jpg', '619b-hNOxzL._AC_SL1500_.jpg', 'Intel Core i7-8700', '16GB RAM', 'NVIDIA GeForce RTX 2070', '256GB SSD+2TB HDD', 'Window 10', '2499', 'GDDR6', '3 years', 'Alienware, Dell, Computer', '2021-05-05 10:40:29', '38'),
(38, 'ASUS ZenBook 13', 6, 26, '71-F7MUoMTL._AC_SL1500_.jpg', '71RPYfEwFyL._AC_SL1500_.jpg', '81ak87S4gUL._AC_SL1500_.jpg', '81--fte15DL._AC_SL1500_.jpg', 'Ultra-Slim Laptop 13.3”', 'Intel Core i5-1035G1', '8GB RAM', '256GB PCIe SSD', 'Windows 10', '750', 'UX325JA-AB51', '3 years', 'Asus, ZenBook, PC', '2021-05-05 10:45:32', '58'),
(39, 'ASUS VivoBook 15 ', 6, 26, '61C+muVDONL._AC_SL1500_.jpg', '61RAdCybYpL._AC_SL1500_.jpg', '71kxKKENrCL._AC_SL1500_.jpg', '71WdQWBt0+L._AC_SL1366_.jpg', '15.6\" Full HD Touchscreen', 'Intel Core i5-1035G1', '20GB DDR4 RAM', '1TB PCIe SSD', 'Windows 10', '800', 'DFSDFJ99', '3 years', 'Asus, VivoBook, PC', '2021-05-05 10:47:54', '38'),
(40, 'ASUS VivoBook 15', 6, 26, '81fstJkUlaL._AC_SL1500_.jpg', '81fzR0mivqL._AC_SL1500_.jpg', '81Ms8wAOYOL._AC_SL1500_.jpg', '816ioPpcNEL._AC_SL1500_.jpg', 'Intel i3-1005G1 CPU', '8GB RAM', '128GB SSD', 'Backlit Keyboard', 'Windows 10', '400', 'F512JA-AS34', '3 years', 'Asus, VivoBook, PC', '2021-05-05 10:49:10', '0'),
(41, 'ASUS Chromebook', 6, 27, '81+1TDe-+ML._AC_SL1500_.jpg', '81s82rtVwrL._AC_SL1500_.jpg', '81-Wyj2kJlL._AC_SL1500_.jpg', '812xcNd9eyL._AC_SL1500_.jpg', 'Tactile Screen 14\" FHD', 'eMMC 128Gb', 'Chrome OS', 'Convertible Compute', 'Windows 10', '549', 'C433TA-AJ0022', '3 years', 'Asus, Chromebook, PC', '2021-05-05 10:50:23', '12'),
(42, 'HP Chromebook', 6, 27, '91ej67qIB7L._AC_SL1500_.jpg', '91NOY+4y0BL._AC_SL1500_.jpg', '91YbfpxPnRL._AC_SL1500_.jpg', '6123Tlfy10L._AC_SL1500_.jpg', 'Computer Ultraportable', 'Tactile 14', 'Intel Core i3', 'RAM 8 Gb', 'Windows 10', '499', '14-ea0000nf ', '3 years', 'Hp, Chromebook, PC', '2021-05-05 10:52:41', '0'),
(43, 'Samsung Book Pro', 6, 28, '61CMU9daoUS._AC_SL1500_.jpg', '61IVON-Dk2S._AC_SL1500_.jpg', '71mdjmiz9yS._AC_SL1500_.jpg', '813dec-cszS._AC_SL1500_.jpg', 'i7 11th Gen', '8GB Memory', '512GB SSD', 'Wi-Fi 6E', 'Windows 10', '1199', 'NP930XDB-KD1US', '3 years', 'Samsung, PC, Book Pro', '2021-05-05 10:58:50', '43'),
(44, 'Samsung Galaxy Book', 6, 28, '71MSIoW45HL._AC_SL1500_.jpg', '81+wqvswDAL._AC_SL1500_.jpg', '512aWB29GXL._AC_SL1000_.jpg', '716mzA0XuYL._AC_SL1500_.jpg', '13.3\" FHD Touchscreen', '8GB Memory', 'Intel Core i5', '256GB SSD', 'Windows 10', '734', 'NP767XCM', '3 years', 'Samsung, PC, Book ', '2021-05-05 11:00:12', '21'),
(45, 'Samsung Notebook', 6, 28, '51CbJPdCQxL._AC_.jpg', '61xVwQRKDyL._AC_SL1440_.jpg', '617PbORqrkL._AC_SL1440_.jpg', '716hShpH87L._AC_SL1500_.jpg', 'Flash Memory 4 GB', 'Storage 64 GB eMMC', 'Screen 13.3\"', 'Charcoal Gray', 'Windows 10', '399', '14-ea0400ho', '3 years', 'Samsung, PC, NoteBook ', '2021-05-05 11:01:08', '50'),
(46, 'CyberpowerPC ', 5, 25, '71-V2XmjtSL._AC_SL1500_.jpg', '81kwBVSocBL._AC_SL1500_.jpg', '818SNa1ruZL._AC_SL1500_.jpg', '915laS+ZbEL._AC_SL1500_.jpg', 'Supreme Liquid PC', 'AMD Ryzen 7 3800X 3.9GHz', 'GeForce RTX 3060 12GB', '6GB DDR4', 'Windows 10', '1979', 'SLC8260A5', '3 years', 'Cyberpower, Gamer, Custom', '2021-05-05 11:02:44', '0'),
(47, 'CyberpowerPC', 5, 25, '71SLPZuJ-EL._AC_SL1500_.jpg', '71VAQX4pDDL._AC_SL1500_.jpg', '71vWd0A3Y4L._AC_SL1500_.jpg', '711JHlMxeqL._AC_SL1500_.jpg', 'AMD Ryzen 3 3100', 'GeForce GT 1030 2GB', '8GB DDR4', '240GB SSD', 'Windows 10', '800', 'GMA888A4', '3 years', 'Cyberpower, Gamer, Custom', '2021-05-05 11:03:44', '62'),
(48, 'Acer', 9, 29, '51Ef5n9cMzL._AC_SL1000_.jpg', '51GAqCNSe-L._AC_SL1000_.jpg', '51UYG86yY-L._AC_SL1000_.jpg', '61A2bFPsqyL._AC_SL1000_.jpg', 'Screen LED-Lit Monitor', 'panoramic 22\" V Series', '1680 x 1050 resolution', 'Monitor', 'Budget-friendly', '139', 'V226WL', '3 years', 'Acer, Monitor, Screen', '2021-05-05 11:05:00', '150'),
(49, 'Acer', 9, 29, '71Jj0EDH21L._AC_SL1500_.jpg', '71TIMU3KATL._AC_SL1500_.jpg', '91K9SyGiyzL._AC_SL1500_.jpg', '91u-JxjgBoL._AC_SL1500_.jpg', '23.8-Inch IPS', 'HDMI DVI VGA', '(1920 x 1080)', 'refresh rate: 60 hertz', 'pixel pitch: 0.2745 millimeter', '129', 'R240HY', '3 years', 'Acer, Monitor, Screen', '2021-05-05 11:05:58', '122'),
(50, 'Sceptre', 9, 30, '41mnSAyyZKL._AC_.jpg', '61dBzS15C6L._AC_SL1080_.jpg', '419HBKoex4L._AC_SL1080_.jpg', '617S7xFO58L._AC_SL1080_.jpg', '20\" 1600x900 ', '75Hz', 'LED Monitor', '2x HDMI VGA ', 'Built-in Speakers', '82', 'UEFL-89', '3 years', 'Spectre, Screen, LED', '2021-05-05 11:07:07', '200'),
(51, 'LG', 9, 31, '81Z465Gs3ML._AC_SL1500_.jpg', '91jzIGu5N-L._AC_SL1500_.jpg', '414NnuTLUvL._AC_.jpg', '3174bOgy7jL._AC_.jpg', 'LED-lit Monitor', '1920 x 1080 Full HD', '2 MS response time', 'HDMI, D-Sub, DVI-D', 'Has color wizard', '99', '24M47VQ', '3 years', 'LG, screen, LED', '2021-05-05 11:08:16', '0');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `s_id` int NOT NULL AUTO_INCREMENT,
  `s_img1` text NOT NULL,
  `s_img2` text NOT NULL,
  `s_img3` text NOT NULL,
  `s_img4` text NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`s_id`, `s_img1`, `s_img2`, `s_img3`, `s_img4`) VALUES
(3, 'image.png', 'Perfect-Gaming-Setup-.jpg', '5fd9f5f1b274a_5d6e22a706194gamingsetup.jpg', 'unnamed.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sub_cat`
--

DROP TABLE IF EXISTS `sub_cat`;
CREATE TABLE IF NOT EXISTS `sub_cat` (
  `sub_cat_id` int NOT NULL AUTO_INCREMENT,
  `sub_cat_name` text NOT NULL,
  `cat_id` int NOT NULL,
  PRIMARY KEY (`sub_cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sub_cat`
--

INSERT INTO `sub_cat` (`sub_cat_id`, `sub_cat_name`, `cat_id`) VALUES
(24, 'Alien Ware', 5),
(25, 'Custom', 5),
(26, 'Asus', 6),
(27, 'Chrome', 6),
(28, 'Samsung', 6),
(29, 'Acer', 9),
(30, 'Spectre', 9),
(31, 'LG', 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `u_name` text NOT NULL,
  `u_email` text NOT NULL,
  `u_pass` text NOT NULL,
  `u_add` text NOT NULL,
  `u_pin` text NOT NULL,
  `u_dob` text NOT NULL,
  `u_phone` text NOT NULL,
  `u_img` text NOT NULL,
  `u_country` text NOT NULL,
  `u_state` text NOT NULL,
  `u_reg_date` timestamp NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_name`, `u_email`, `u_pass`, `u_add`, `u_pin`, `u_dob`, `u_phone`, `u_img`, `u_country`, `u_state`, `u_reg_date`) VALUES
(6, 'alex', 'adive.2015@lfny.org', 'rootroot', '12 st saint martin', '75020', '1997-08-14', '0656894516', 'Rose.jpg', 'France', 'Paris', '2021-05-05 12:33:10'),
(7, 'Anime', 'anime@gmail.com', 'rootroot', '15 rue de la caille', '75010', '2000-03-02', '0654123556', 'domiciliation_entreprise_siege_social.jpg', 'France', 'Paris', '2021-05-05 15:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

DROP TABLE IF EXISTS `user_cart`;
CREATE TABLE IF NOT EXISTS `user_cart` (
  `user_cart_id` int NOT NULL AUTO_INCREMENT,
  `pro_id` int NOT NULL,
  `qty` varchar(100) NOT NULL,
  `ip_add` text NOT NULL,
  `u_id` text NOT NULL,
  PRIMARY KEY (`user_cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_cart`
--

INSERT INTO `user_cart` (`user_cart_id`, `pro_id`, `qty`, `ip_add`, `u_id`) VALUES
(95, 35, '1', '::1', '7'),
(94, 36, '1', '::1', '7'),
(93, 39, '1', '::1', '7'),
(91, 35, '1', '::1', '6'),
(92, 36, '1', '::1', '6');

-- --------------------------------------------------------

--
-- Table structure for table `user_wishlist`
--

DROP TABLE IF EXISTS `user_wishlist`;
CREATE TABLE IF NOT EXISTS `user_wishlist` (
  `u_wish_id` int NOT NULL AUTO_INCREMENT,
  `pro_id` int NOT NULL,
  `qty` text NOT NULL,
  `trx_id` text NOT NULL,
  `ip_add` text NOT NULL,
  `u_id` int NOT NULL,
  PRIMARY KEY (`u_wish_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_wishlist`
--

INSERT INTO `user_wishlist` (`u_wish_id`, `pro_id`, `qty`, `trx_id`, `ip_add`, `u_id`) VALUES
(3, 36, '1', '', '::1', 7),
(4, 37, '1', '', '::1', 7),
(5, 35, '1', '', '::1', 7),
(6, 37, '1', '', '::1', 6),
(7, 35, '1', '', '::1', 6),
(8, 38, '1', '', '::1', 6);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
