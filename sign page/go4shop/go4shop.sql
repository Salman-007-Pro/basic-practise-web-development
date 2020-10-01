-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 06, 2013 at 03:35 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `go4shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'shishir', '7c4a8d09ca3762af61e59520943dc26494f8941b');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'beverages'),
(2, 'cakes');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forname` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `add1` varchar(50) NOT NULL,
  `add2` varchar(50) NOT NULL,
  `add3` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `registered` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `forname`, `surname`, `add1`, `add2`, `add3`, `postcode`, `phone`, `email`, `registered`) VALUES
(1, 'Hamiduzzaman', 'parvez', 'Dhaka, Bangladesh', 'Gulshan 1', 'dkjf, lksd kl', '1200', '9879797', 'parvez@gmail.com', 1),
(2, 'Galib', 'Hossain', 'Dhaka', 'Coxbazar', 'Gulshan', '9879', '9898797', 'galib@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE IF NOT EXISTS `delivery_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forname` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `add1` varchar(50) NOT NULL,
  `add2` varchar(50) NOT NULL,
  `add3` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE IF NOT EXISTS `logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `customer_id`, `username`, `password`) VALUES
(1, 1, 'parvez', '5e6a8d12704c428d47cd0dfa1a457326e590fd6f'),
(2, 2, 'galib', '7c4a8d09ca3762af61e59520943dc26494f8941b');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE IF NOT EXISTS `orderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(2, 1, 1, 10),
(3, 8, 2, 1),
(4, 8, 2, 10),
(6, 10, 2, 10),
(8, 9, 1, 43),
(9, 9, 2, 41),
(10, 11, 1, 8),
(11, 12, 2, 11),
(16, 13, 2, 35),
(17, 13, 2, 13),
(18, 14, 2, 9),
(19, 15, 2, 10),
(20, 16, 1, 12),
(21, 16, 1, 16),
(22, 17, 2, 14),
(23, 18, 2, 17),
(24, 18, 2, 38),
(25, 18, 2, 15),
(28, 20, 1, 60),
(29, 20, 1, 46),
(31, 19, 1, 20),
(32, 21, 2, 11),
(33, 22, 2, 15),
(34, 22, 2, 18),
(35, 23, 1, 17),
(36, 23, 2, 13),
(37, 23, 2, 17),
(38, 24, 2, 19),
(39, 24, 2, 18);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `registered` int(11) NOT NULL,
  `delivery_add_id` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `session` varchar(100) NOT NULL,
  `total` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `registered`, `delivery_add_id`, `payment_type`, `date`, `status`, `session`, `total`) VALUES
(1, 0, 0, 0, 1, '2012-11-20 13:11:45', 10, '4pdpqm5grgdp8841301hr33db6', 29.9),
(2, 0, 0, 0, 0, '2013-05-06 18:59:47', 0, 'qcum4f3mivpb609j0j5hikano0', 0),
(3, 0, 0, 0, 0, '2013-05-06 19:00:16', 0, 'qcum4f3mivpb609j0j5hikano0', 0),
(4, 0, 0, 0, 0, '2013-05-06 19:00:30', 0, 'qcum4f3mivpb609j0j5hikano0', 0),
(5, 0, 0, 0, 0, '2013-05-06 19:00:53', 0, '3j317nd6e93cet9p4mma22beq3', 0),
(6, 0, 0, 0, 0, '2013-05-06 19:01:11', 0, '3j317nd6e93cet9p4mma22beq3', 0),
(7, 0, 0, 0, 0, '2013-05-06 19:02:13', 0, '3j317nd6e93cet9p4mma22beq3', 0),
(8, 0, 0, 0, 0, '2013-05-06 19:03:24', 0, '3j317nd6e93cet9p4mma22beq3', 9.9),
(9, 2, 1, 0, 1, '2013-05-06 19:04:39', 10, '', 165.47),
(10, 0, 0, 0, 0, '2013-05-06 19:05:25', 0, 'qcum4f3mivpb609j0j5hikano0', 9),
(11, 0, 0, 0, 0, '2013-05-06 19:23:24', 0, '3j317nd6e93cet9p4mma22beq3', 23.92),
(12, 0, 0, 0, 0, '2013-05-06 19:24:26', 0, '3j317nd6e93cet9p4mma22beq3', 9.9),
(13, 2, 1, 0, 1, '2013-05-06 19:24:47', 10, '', 43.2),
(14, 2, 1, 0, 1, '2013-05-06 20:23:03', 10, '', 8.1),
(15, 0, 0, 0, 0, '2013-05-06 20:39:53', 0, '3j317nd6e93cet9p4mma22beq3', 9),
(16, 0, 0, 0, 0, '2013-05-06 20:42:55', 0, '3j317nd6e93cet9p4mma22beq3', 83.72),
(17, 0, 0, 0, 0, '2013-05-06 20:44:02', 0, '3j317nd6e93cet9p4mma22beq3', 12.6),
(18, 2, 1, 0, 2, '2013-05-06 20:55:03', 10, '', 63),
(19, 2, 1, 0, 2, '2013-05-06 21:03:17', 10, '', 59.8),
(20, 0, 0, 0, 0, '2013-05-06 21:04:27', 0, '3j317nd6e93cet9p4mma22beq3', 316.94),
(21, 0, 0, 0, 0, '2013-05-06 21:12:05', 0, '3j317nd6e93cet9p4mma22beq3', 9.9),
(22, 2, 1, 0, 2, '2013-05-06 21:23:09', 10, '', 29.7),
(23, 0, 0, 0, 0, '2013-05-06 21:26:36', 0, '3j317nd6e93cet9p4mma22beq3', 77.83),
(24, 0, 0, 0, 0, '2013-05-06 21:30:59', 0, '3j317nd6e93cet9p4mma22beq3', 33.3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` tinyint(4) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(30) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `name`, `description`, `image`, `price`) VALUES
(1, 1, 'Best Bags', 'A quality pack of tea bags.200 bags in each box', '', 2.99),
(2, 1, 'Best Orange Juice', 'One gallon of quality sequeezed orange juice.', 'bestorange-juice.jpg', 0.9);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
