-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 08, 2015 at 12:55 AM
-- Server version: 5.5.38
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `livrariadagastronomia`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
`address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `tax_id` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `company_id`, `tax_id`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`) VALUES
(1, 1, 'Demo', 'Demo', '', '', '', 'Demo', '', 'Demo', '5555', 222, 3530),
(2, 2, 'admin', 'admin', '', '', '', '111', '', '111', '111', 222, 3516),
(3, 3, 'demo', 'demo', '', '', '', '111', '111', '11', '11', 203, 3074);

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
`affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(32) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
`affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
`attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 4, 'Description'),
(4, 4, 'test 1'),
(5, 4, 'test 2'),
(6, 4, 'test 3'),
(7, 4, 'test 4'),
(8, 4, 'test 5'),
(9, 4, 'test 6'),
(10, 4, 'test 7'),
(11, 4, 'test 8'),
(2, 4, 'Description2'),
(3, 4, 'Description1');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
`attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(4, 4, 'Сharacteristic'),
(5, 4, 'Сharacteristic2'),
(6, 4, 'Сharacteristic3'),
(3, 4, 'Сharacteristic1');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
`banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(15, 'slideshow', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
`banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=353 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
(351, 15, 'index.php?route=product/product&amp;product_id=28', 'data/slider/slider2-livraria.jpg'),
(350, 15, 'index.php?route=product/product&amp;product_id=29', 'data/slider/slider1-livraria.jpg'),
(352, 15, 'index.php?route=product/product&amp;product_id=32', 'data/slider/slider3-livraria.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `description`) VALUES
(352, 4, 15, 'slide-3', ''),
(351, 4, 15, 'slide-2', ''),
(350, 4, 15, 'slide-1', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
`category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(3, '3-category.jpg', 8, 1, 1, 2, 1, '2013-06-06 22:45:29', '2015-11-28 20:42:15'),
(6, '6-category.jpg', 8, 1, 1, 3, 1, '2015-05-11 20:23:13', '2015-11-28 18:04:44'),
(7, '7-category.jpg', 8, 1, 1, 4, 1, '2015-06-27 07:49:43', '2015-09-29 13:04:24'),
(8, '8-category.jpg', 0, 1, 1, 5, 1, '2015-09-15 19:18:54', '2015-11-28 20:40:46'),
(9, '9-category.jpg', 8, 1, 1, 6, 1, '2015-09-15 20:05:49', '2015-09-29 13:04:49'),
(10, '10-category.jpg', 8, 1, 1, 7, 1, '2015-09-15 20:06:02', '2015-09-29 13:04:57'),
(11, '11-category.jpg', 0, 1, 1, 8, 1, '2015-09-21 21:26:20', '2015-11-28 20:41:56'),
(12, '12-category.jpg', 0, 1, 1, 9, 1, '2015-09-21 21:27:11', '2015-11-28 20:42:33'),
(13, '13-category.jpg', 12, 1, 1, 10, 1, '2015-09-27 13:10:32', '2015-09-27 13:10:32'),
(14, '14-category.jpg', 12, 1, 1, 11, 1, '2015-09-27 13:11:10', '2015-09-27 13:11:10'),
(15, '15-category.jpg', 12, 1, 1, 12, 1, '2015-09-27 13:11:47', '2015-09-27 13:11:47'),
(16, '16-category.jpg', 13, 1, 1, 13, 1, '2015-09-27 13:12:20', '2015-10-18 17:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(3, 4, 'Livros', '', '', ''),
(6, 4, 'Revistas', '', '', ''),
(7, 4, 'Box', '', '', ''),
(8, 4, 'Produtos', '', '', ''),
(9, 4, 'Moda', '', '', ''),
(10, 4, 'Utensílios', '', '', ''),
(11, 4, 'Novidades', '', '', ''),
(12, 4, 'Receitas', '', '', ''),
(13, 4, 'Salgados', '', '', ''),
(14, 4, 'Doces', '', '', ''),
(15, 4, 'Bebidas', '', '', ''),
(16, 4, 'Carnes', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(16, 16, 0),
(14, 14, 0),
(15, 15, 0),
(12, 12, 0),
(13, 13, 0),
(10, 10, 0),
(11, 11, 0),
(9, 9, 0),
(8, 8, 0),
(7, 7, 0),
(6, 6, 0),
(18, 18, 0),
(45, 18, 0),
(45, 45, 1),
(46, 18, 0),
(46, 46, 1),
(33, 33, 0),
(34, 34, 0),
(37, 34, 0),
(37, 37, 1),
(38, 34, 0),
(38, 38, 1),
(39, 34, 0),
(39, 39, 1),
(40, 34, 0),
(40, 40, 1),
(41, 34, 0),
(41, 41, 1),
(42, 34, 0),
(42, 42, 1),
(43, 34, 0),
(43, 43, 1),
(44, 34, 0),
(44, 44, 1),
(47, 34, 0),
(47, 47, 1),
(48, 34, 0),
(48, 48, 1),
(49, 34, 0),
(49, 49, 1),
(50, 34, 0),
(50, 50, 1),
(51, 34, 0),
(51, 51, 1),
(52, 34, 0),
(52, 52, 1),
(58, 34, 0),
(58, 52, 1),
(58, 58, 2),
(53, 34, 0),
(53, 53, 1),
(54, 34, 0),
(54, 54, 1),
(55, 34, 0),
(55, 55, 1),
(56, 34, 0),
(56, 56, 1),
(3, 3, 1),
(3, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(3, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
`country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(240, 'Jersey', 'JE', 'JEY', '', 1, 1),
(241, 'Guernsey', 'GG', 'GGY', '', 1, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
`coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', 10.0000, 0, 0, 0.0000, '2011-01-01', '2012-01-01', 10, '10', 1, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', 0.0000, 0, 1, 100.0000, '2009-03-01', '2009-08-31', 10, '10', 1, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', 10.0000, 0, 0, 10.0000, '1970-11-01', '2020-11-01', 100000, '10000', 1, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
`coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
`coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
`currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(4, 'Real', 'BRL', 'R$ ', '', '2', 1.00000000, 1, '2015-12-08 00:34:44');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
`customer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `customer_group_id`, `ip`, `status`, `approved`, `token`, `date_added`) VALUES
(1, 0, 'Demo', 'Demo', 'admin@admin.com', '555555555555', '', 'a8e36cf1a623773890e55496017a9652ea345a11', '5f5dd0642', 'a:2:{s:4:"43::";i:2;s:4:"29::";i:1;}', 'a:12:{i:0;s:2:"40";i:1;s:2:"29";i:2;s:2:"35";i:3;s:2:"30";i:4;s:3:"42;";i:5;s:3:"30;";i:6;s:2:"45";i:7;s:2:"42";i:8;s:2:"49";i:9;s:2:"46";i:10;s:2:"34";i:11;s:2:"43";}', 0, 1, 1, '192.168.9.1', 1, 1, '', '2014-01-14 09:29:45'),
(2, 0, 'admin', 'admin', 'admin@demolink.org', '111', '', '294778e2085eb83e4f7fa2ce50aee1df8952c461', '3e08091a3', 'a:1:{s:4:"46::";i:1;}', 'a:3:{i:0;s:2:"43";i:1;s:2:"30";i:2;s:2:"32";}', 0, 2, 1, '192.168.9.1', 1, 1, '', '2014-05-27 12:43:37'),
(3, 0, 'demo', 'demo', 'demo@demolink.org', '1111', '', '284deb42a1de2fdac59fca1ad76eadec86942eb0', '3e5f1e862', 'a:1:{s:4:"31::";i:1;}', '', 0, 3, 1, '192.168.9.1', 1, 1, '', '2014-05-28 16:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ban_ip`
--

CREATE TABLE `oc_customer_ban_ip` (
`customer_ban_ip_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_field`
--

CREATE TABLE `oc_customer_field` (
  `customer_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
`customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `company_id_display`, `company_id_required`, `tax_id_display`, `tax_id_required`, `sort_order`) VALUES
(1, 0, 1, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 4, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
`customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
`customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '192.168.9.1', '2014-01-14 09:29:51'),
(2, 2, '192.168.9.1', '2014-05-27 12:43:39'),
(3, 3, '192.168.9.1', '2014-05-28 16:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
`customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
`customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
`custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  `location` varchar(32) NOT NULL,
  `position` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_to_customer_group`
--

CREATE TABLE `oc_custom_field_to_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
`custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
`download_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
`extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=499 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(468, 'module', 'latest'),
(390, 'total', 'credit'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(445, 'module', 'filter'),
(464, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(444, 'module', 'featured'),
(496, 'module', 'manufacturer'),
(467, 'module', 'information'),
(465, 'module', 'affiliate'),
(466, 'module', 'bestseller'),
(493, 'module', 'newcarousel'),
(449, 'module', 'special'),
(494, 'module', 'compare'),
(495, 'module', 'vqmod_manager'),
(497, 'payment', 'pagseguro'),
(498, 'shipping', 'correios');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
`filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(1, 4, 1, 'Sunt in culpa qui'),
(2, 4, 1, 'Deserunt mollit'),
(3, 4, 1, 'Anim id est laborum');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
`filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 4, 'At cupidatat non');

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
`geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
`information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
(4, 4, 'Sobre nós', '&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-thumbs-up&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Excepteur sint occaecat cupidatat non proident&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-clock-o&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-gift&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Conse ctetur adipisicing elit sed do eiusmod tempor incididunt ut labore et&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-refresh&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Excepteur sint occaecat cupidatat non&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-truck&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Proident sunt in culpa qui offici&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n'),
(6, 4, 'Informações de Entrega', '&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-thumbs-up&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Excepteur sint occaecat cupidatat non proident&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-clock-o&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-gift&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Conse ctetur adipisicing elit sed do eiusmod tempor incididunt ut labore et&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-refresh&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Excepteur sint occaecat cupidatat non&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-truck&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Proident sunt in culpa qui offici&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n'),
(3, 4, 'Políticas de Privacidade', '&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-thumbs-up&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Excepteur sint occaecat cupidatat non proident&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-clock-o&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-gift&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Conse ctetur adipisicing elit sed do eiusmod tempor incididunt ut labore et&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-refresh&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Excepteur sint occaecat cupidatat non&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-truck&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Proident sunt in culpa qui offici&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n'),
(5, 4, 'Termos e Condições', '&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-thumbs-up&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Excepteur sint occaecat cupidatat non proident&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-clock-o&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Lorem ipsum dolor sit amet&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-gift&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Conse ctetur adipisicing elit sed do eiusmod tempor incididunt ut labore et&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-refresh&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Excepteur sint occaecat cupidatat non&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;about-page&quot;&gt;&lt;i class=&quot;fa fa-truck&quot;&gt;&amp;nbsp;&lt;/i&gt;\r\n\r\n&lt;div class=&quot;extra-wrap&quot;&gt;\r\n&lt;h3&gt;Proident sunt in culpa qui offici&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
`language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `filename`, `sort_order`, `status`) VALUES
(4, 'Português (BR)', 'pt-br', 'pt_BR.UTF-8,pt_BR,pt-br,pt_br,portuguese,portugues', 'br.png', 'portuguese-br', 'portuguese-br', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
`layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
`layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(30, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(29, 3, 0, 'product/category'),
(26, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(22, 5, 0, 'product/manufacturer'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
`length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 10.00000000),
(3, 0.39370000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
`length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 4, 'Centimeter', 'cm'),
(2, 4, 'Millimeter', 'mm'),
(3, 4, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
`manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'Nulla sit amet', '', 0),
(6, 'Donec a dolor', '', 0),
(7, 'Dolore sit amet', '', 0),
(8, 'Magna lorem', '', 0),
(9, 'Labore et dolore', '', 0),
(10, 'Vivamus eu metus', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
`option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 2),
(2, 'checkbox', 3),
(4, 'text', 4),
(5, 'select', 1),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 1),
(12, 'date', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 4, 'Radio'),
(2, 4, 'Checkbox'),
(4, 4, 'Text'),
(6, 4, 'Textarea'),
(8, 4, 'Date'),
(7, 4, 'File'),
(5, 4, 'Select'),
(9, 4, 'Time'),
(10, 4, 'Date &amp; Time'),
(12, 4, 'Delivery Date'),
(11, 4, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
`option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 4, 1, 'Large'),
(32, 4, 1, 'Small'),
(45, 4, 2, 'Checkbox 4'),
(44, 4, 2, 'Checkbox 3'),
(31, 4, 1, 'Medium'),
(42, 4, 5, 'Yellow'),
(41, 4, 5, 'Green'),
(39, 4, 5, 'Red'),
(40, 4, 5, 'Blue'),
(23, 4, 2, 'Checkbox 1'),
(24, 4, 2, 'Checkbox 2'),
(48, 4, 11, 'Large'),
(47, 4, 11, 'Medium'),
(46, 4, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
`order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(32) NOT NULL,
  `payment_company_id` varchar(32) NOT NULL,
  `payment_tax_id` varchar(32) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_company_id`, `payment_tax_id`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(2, 0, 'INV-2012-00', 0, 'Fruit Store', 'http://192.168.9.23/416/', 2, 1, 'admin', 'admin', 'admin@demolink.org', '111', '', 'admin', 'admin', '', '', '', '111', '', '111', '111', 'United Kingdom', 222, 'Angus', 3516, '', 'Cash On Delivery', 'cod', 'admin', 'admin', '', '111', '', '111', '111', 'United Kingdom', 222, 'Angus', 3516, '', 'Flat Shipping Rate', 'flat.flat', '', 45.1250, 0, 0, 0.0000, 1, 2, 'USD', 1.00000000, '192.168.9.1', '192.168.9.23', 'Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0', 'en-gb,en;q=0.5', '2014-05-28 09:46:29', '2014-05-28 09:46:29'),
(3, 0, 'INV-2012-00', 0, 'Fruit Store', 'http://192.168.9.23/416/', 2, 1, 'admin', 'admin', 'admin@demolink.org', '111', '', 'admin', 'admin', '', '', '', '111', '', '111', '111', 'United Kingdom', 222, 'Angus', 3516, '', 'Cash On Delivery', 'cod', 'admin', 'admin', '', '111', '', '111', '111', 'United Kingdom', 222, 'Angus', 3516, '', 'Flat Shipping Rate', 'flat.flat', '', 45.1250, 0, 0, 0.0000, 1, 2, 'USD', 1.00000000, '192.168.9.1', '192.168.9.23', 'Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0', 'en-gb,en;q=0.5', '2014-05-28 09:48:13', '2014-05-28 09:48:13'),
(4, 0, 'INV-2012-00', 0, 'Fruit Store', 'http://192.168.9.23/416/', 2, 1, 'admin', 'admin', 'admin@demolink.org', '111', '', 'admin', 'admin', '', '', '', '111', '', '111', '111', 'United Kingdom', 222, 'Angus', 3516, '', 'Cash On Delivery', 'cod', 'admin', 'admin', '', '111', '', '111', '111', 'United Kingdom', 222, 'Angus', 3516, '', 'Flat Shipping Rate', 'flat.flat', '', 45.1250, 0, 0, 0.0000, 1, 2, 'USD', 1.00000000, '192.168.9.1', '192.168.9.23', 'Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0', 'en-gb,en;q=0.5', '2014-05-28 09:49:43', '2014-05-28 09:49:43'),
(5, 0, 'INV-2012-00', 0, 'Fruit Store', 'http://192.168.9.23/416/', 2, 1, 'admin', 'admin', 'admin@demolink.org', '111', '', 'admin', 'admin', '', '', '', '111', '', '111', '111', 'United Kingdom', 222, 'Angus', 3516, '', 'Cash On Delivery', 'cod', 'admin', 'admin', '', '111', '', '111', '111', 'United Kingdom', 222, 'Angus', 3516, '', 'Flat Shipping Rate', 'flat.flat', '', 45.1250, 0, 0, 0.0000, 1, 2, 'USD', 1.00000000, '192.168.9.1', '192.168.9.23', 'Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0', 'en-gb,en;q=0.5', '2014-05-28 09:51:06', '2014-05-28 09:51:06'),
(6, 0, 'INV-2012-00', 0, 'Fruit Store', 'http://192.168.9.23/416/', 2, 1, 'admin', 'admin', 'admin@demolink.org', '111', '', 'admin', 'admin', '', '', '', '111', '', '111', '111', 'United Kingdom', 222, 'Angus', 3516, '', 'Cash On Delivery', 'cod', 'admin', 'admin', '', '111', '', '111', '111', 'United Kingdom', 222, 'Angus', 3516, '', 'Flat Shipping Rate', 'flat.flat', '', 45.1250, 0, 0, 0.0000, 1, 2, 'USD', 1.00000000, '192.168.9.1', '192.168.9.23', 'Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0', 'en-gb,en;q=0.5', '2014-05-28 09:52:28', '2014-05-28 09:52:28'),
(7, 0, 'INV-2012-00', 0, 'Fruit Store', 'http://192.168.9.23/416/', 2, 1, 'admin', 'admin', 'admin@demolink.org', '111', '', 'admin', 'admin', '', '', '', '111', '', '111', '111', 'United Kingdom', 222, 'Angus', 3516, '', 'Cash On Delivery', 'cod', 'admin', 'admin', '', '111', '', '111', '111', 'United Kingdom', 222, 'Angus', 3516, '', 'Flat Shipping Rate', 'flat.flat', '', 45.1250, 0, 0, 0.0000, 1, 2, 'USD', 1.00000000, '192.168.9.1', '192.168.9.23', 'Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0', 'en-gb,en;q=0.5', '2014-05-28 09:53:05', '2014-05-28 09:53:05'),
(8, 0, 'INV-2012-00', 0, 'Fruit Store', 'http://192.168.9.23/416/', 2, 1, 'admin', 'admin', 'admin@demolink.org', '111', '', 'admin', 'admin', '', '', '', '111', '', '111', '111', 'United Kingdom', 222, 'Angus', 3516, '', 'Cash On Delivery', 'cod', 'admin', 'admin', '', '111', '', '111', '111', 'United Kingdom', 222, 'Angus', 3516, '', 'Flat Shipping Rate', 'flat.flat', '', 45.1250, 0, 0, 0.0000, 1, 2, 'USD', 1.00000000, '192.168.9.1', '192.168.9.23', 'Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0', 'en-gb,en;q=0.5', '2014-05-28 09:53:45', '2014-05-28 09:53:45'),
(9, 0, 'INV-2012-00', 0, 'Fruit Store', 'http://192.168.9.23/416/', 3, 1, 'demo', 'demo', 'demo@demolink.org', '1111', '', 'demo', 'demo', '', '', '', '111', '111', '11', '11', 'Sweden', 203, 'Blekinge', 3074, '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 'Cash On Delivery', 'cod', 'demo', 'demo', '', '111', '111', '11', '11', 'Sweden', 203, 'Blekinge', 3074, '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 'Flat Shipping Rate', 'flat.flat', '', 25.3300, 0, 0, 0.0000, 1, 2, 'USD', 1.00000000, '192.168.9.1', '192.168.9.23', 'Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0', 'en-gb,en;q=0.5', '2014-05-28 16:42:14', '2014-05-28 16:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_download`
--

CREATE TABLE `oc_order_download` (
`order_download_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_field`
--

CREATE TABLE `oc_order_field` (
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_fraud`
--

CREATE TABLE `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
`order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
`order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
`order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(2, 2, 34, 'Incididunt ut', 'Product 7', 1, 30.0000, 30.0000, 7.2500, 0),
(3, 3, 34, 'Incididunt ut', 'Product 7', 1, 30.0000, 30.0000, 7.2500, 0),
(4, 4, 34, 'Incididunt ut', 'Product 7', 1, 30.0000, 30.0000, 7.2500, 0),
(5, 5, 34, 'Incididunt ut', 'Product 7', 1, 30.0000, 30.0000, 7.2500, 0),
(6, 6, 34, 'Incididunt ut', 'Product 7', 1, 30.0000, 30.0000, 7.2500, 0),
(7, 7, 34, 'Incididunt ut', 'Product 7', 1, 30.0000, 30.0000, 7.2500, 0),
(8, 8, 34, 'Incididunt ut', 'Product 7', 1, 30.0000, 30.0000, 7.2500, 0),
(9, 9, 31, 'Dolor sit amet conse', 'Product 4', 1, 20.3300, 20.3300, 0.0000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
`order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `profile_name` varchar(255) NOT NULL,
  `profile_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `profile_reference` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
`order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
`order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(24, 4, 'Cancelada'),
(23, 4, 'Devolvida'),
(22, 4, 'Disputa'),
(21, 4, 'Disponível'),
(20, 4, 'Paga'),
(19, 4, 'Em análise'),
(18, 4, 'Aguardando pagamento'),
(17, 4, 'Aguardando retorno'),
(2, 4, 'Processing'),
(3, 4, 'Shipped'),
(7, 4, 'Canceled'),
(5, 4, 'Complete'),
(8, 4, 'Denied'),
(9, 4, 'Canceled Reversal'),
(10, 4, 'Failed'),
(11, 4, 'Refunded'),
(12, 4, 'Reversed'),
(13, 4, 'Chargeback'),
(1, 4, 'Pending'),
(16, 4, 'Voided'),
(15, 4, 'Processed'),
(14, 4, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
`order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `text`, `value`, `sort_order`) VALUES
(6, 2, 'sub_total', 'Sub-Total', '$30.00', 30.0000, 1),
(7, 2, 'shipping', 'Flat Shipping Rate', '$5.00', 5.0000, 3),
(8, 2, 'tax', 'Eco Tax (-2.00)', '$4.00', 4.0000, 5),
(9, 2, 'tax', 'VAT (17.5%)', '$6.13', 6.1250, 5),
(10, 2, 'total', 'Total', '$45.13', 45.1250, 9),
(11, 3, 'sub_total', 'Sub-Total', '$30.00', 30.0000, 1),
(12, 3, 'shipping', 'Flat Shipping Rate', '$5.00', 5.0000, 3),
(13, 3, 'tax', 'Eco Tax (-2.00)', '$4.00', 4.0000, 5),
(14, 3, 'tax', 'VAT (17.5%)', '$6.13', 6.1250, 5),
(15, 3, 'total', 'Total', '$45.13', 45.1250, 9),
(16, 4, 'sub_total', 'Sub-Total', '$30.00', 30.0000, 1),
(17, 4, 'shipping', 'Flat Shipping Rate', '$5.00', 5.0000, 3),
(18, 4, 'tax', 'Eco Tax (-2.00)', '$4.00', 4.0000, 5),
(19, 4, 'tax', 'VAT (17.5%)', '$6.13', 6.1250, 5),
(20, 4, 'total', 'Total', '$45.13', 45.1250, 9),
(21, 5, 'sub_total', 'Sub-Total', '$30.00', 30.0000, 1),
(22, 5, 'shipping', 'Flat Shipping Rate', '$5.00', 5.0000, 3),
(23, 5, 'tax', 'Eco Tax (-2.00)', '$4.00', 4.0000, 5),
(24, 5, 'tax', 'VAT (17.5%)', '$6.13', 6.1250, 5),
(25, 5, 'total', 'Total', '$45.13', 45.1250, 9),
(26, 6, 'sub_total', 'Sub-Total', '$30.00', 30.0000, 1),
(27, 6, 'shipping', 'Flat Shipping Rate', '$5.00', 5.0000, 3),
(28, 6, 'tax', 'Eco Tax (-2.00)', '$4.00', 4.0000, 5),
(29, 6, 'tax', 'VAT (17.5%)', '$6.13', 6.1250, 5),
(30, 6, 'total', 'Total', '$45.13', 45.1250, 9),
(31, 7, 'sub_total', 'Sub-Total', '$30.00', 30.0000, 1),
(32, 7, 'shipping', 'Flat Shipping Rate', '$5.00', 5.0000, 3),
(33, 7, 'tax', 'Eco Tax (-2.00)', '$4.00', 4.0000, 5),
(34, 7, 'tax', 'VAT (17.5%)', '$6.13', 6.1250, 5),
(35, 7, 'total', 'Total', '$45.13', 45.1250, 9),
(36, 8, 'sub_total', 'Sub-Total', '$30.00', 30.0000, 1),
(37, 8, 'shipping', 'Flat Shipping Rate', '$5.00', 5.0000, 3),
(38, 8, 'tax', 'Eco Tax (-2.00)', '$4.00', 4.0000, 5),
(39, 8, 'tax', 'VAT (17.5%)', '$6.13', 6.1250, 5),
(40, 8, 'total', 'Total', '$45.13', 45.1250, 9),
(41, 9, 'sub_total', 'Sub-Total', '$20.33', 20.3300, 1),
(42, 9, 'shipping', 'Flat Shipping Rate', '$5.00', 5.0000, 3),
(43, 9, 'total', 'Total', '$25.33', 25.3300, 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
`order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
`product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `meta_keywords` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=371 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`, `meta_keywords`) VALUES
(8, 'm_8', 'm_8', '', '', '', '', '', '', 0, 7, 'data/2/9/0/290.jpg', 0, 1, 110.0000, 0, 0, '2015-11-28', 0.75000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-05-09 11:06:40', '2015-11-28 08:11:29', 0, NULL),
(9, 'm_9', 'm_9', '', '', '', '', '', '', 0, 7, 'data/3/1/8/318.jpg', 0, 1, 139.0000, 0, 0, '2015-11-28', 1.03000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-05-09 13:51:14', '2015-11-28 10:17:43', 1, NULL),
(10, 'm_10', 'm_10', '', '', '', '', '', '', 0, 7, 'data/3/1/9/319.jpg', 0, 1, 110.0000, 0, 0, '2015-11-28', 1.39000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-05-09 14:09:28', '2015-11-28 10:27:53', 0, NULL),
(11, 'm_11', 'm_11', '', '', '', '', '', '', 0, 7, 'data/3/6/36.jpg', 0, 1, 139.0000, 0, 0, '2015-11-28', 1.03000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-05-09 14:21:23', '2015-11-28 10:22:54', 0, NULL),
(12, 'm_12', 'm_12', '', '', '', '', '', '', 0, 7, 'data/3/7/37.jpg', 0, 1, 139.0000, 0, 0, '2015-11-28', 0.75000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-05-09 14:32:55', '2015-11-28 11:32:09', 0, NULL),
(13, 'm_13', 'm_13', '', '', '', '', '', '', 0, 7, 'data/3/8/38.jpg', 0, 1, 70.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-05-09 14:40:23', '2015-10-28 20:10:32', 0, NULL),
(14, 'm_14', 'm_14', '', '', '', '', '', '', 0, 7, 'data/3/9/39.jpg', 0, 1, 55.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-05-10 07:51:42', '2015-11-28 11:27:09', 0, NULL),
(15, 'm_15', 'm_15', '', '', '', '', '', '', 0, 7, 'data/4/0/40.jpg', 0, 1, 59.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-05-10 08:01:59', '2015-11-28 08:23:06', 0, NULL),
(16, 'm_16', 'm_16', '', '', '', '', '', '', 0, 7, 'data/4/1/41.jpg', 0, 1, 75.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-05-10 08:08:43', '2015-11-28 11:39:44', 0, NULL),
(17, 'm_17', 'm_17', '', '', '', '', '', '', 0, 7, 'data/4/2/42.jpg', 0, 1, 55.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-05-11 20:28:53', '2015-11-28 11:33:37', 0, NULL),
(18, 'm_18', 'm_18', '', '', '', '', '', '', 0, 7, 'data/4/3/43.jpg', 0, 1, 75.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-05-15 16:58:35', '2015-11-28 08:26:58', 0, NULL),
(19, 'm_19', 'm_19', '', '', '', '', '', '', 0, 7, 'data/4/4/44.jpg', 0, 1, 69.0000, 0, 0, '2015-11-28', 0.76000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-05-20 08:48:02', '2015-10-02 07:33:33', 0, NULL),
(21, 'm_21', 'm_21', '', '', '', '', '', '', 0, 7, 'data/4/6/46.jpg', 0, 1, 169.0000, 0, 0, '2015-11-28', 1.82000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-05-30 07:36:23', '2015-11-28 08:09:22', 2, NULL),
(22, 'm_22', 'm_22', '', '', '', '', '', '', 0, 7, 'data/4/7/47.jpg', 0, 1, 49.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-05-30 07:48:36', '2015-11-28 08:13:47', 0, NULL),
(23, 'm_23', 'm_23', '', '', '', '', '', '', 0, 7, 'data/4/8/48.jpg', 0, 1, 110.0000, 0, 0, '2015-11-28', 1.14000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-06 15:06:05', '2015-09-29 20:33:09', 0, NULL),
(24, 'm_24', 'm_24', '', '', '', '', '', '', 0, 7, 'data/4/9/49.jpg', 0, 1, 149.0000, 0, 0, '2015-11-28', 1.38000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-06 15:16:38', '2015-11-28 08:16:10', 0, NULL),
(25, 'm_25', 'm_25', '', '', '', '', '', '', 0, 7, 'data/5/0/50.jpg', 0, 1, 49.0000, 0, 0, '2015-11-28', 0.40000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-07 07:50:22', '2015-10-28 08:50:32', 0, NULL),
(26, 'm_26', 'm_26', '', '', '', '', '', '', 0, 7, 'data/5/1/51.jpg', 0, 1, 49.0000, 0, 0, '2015-11-28', 0.48000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-07 07:56:38', '2015-09-30 18:55:59', 0, NULL),
(27, 'm_27', 'm_27', '', '', '', '', '', '', 0, 7, 'data/5/2/52.jpg', 0, 1, 35.0000, 0, 0, '2015-11-28', 0.22000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-07 08:02:54', '2015-11-28 08:20:09', 0, NULL),
(28, 'm_28', 'm_28', '', '', '', '', '', '', 0, 7, 'data/5/3/53.jpg', 0, 1, 149.0000, 0, 0, '2015-11-28', 1.29000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-07 08:15:28', '2015-11-28 11:29:11', 0, NULL),
(29, 'm_29', 'm_29', '', '', '', '', '', '', 0, 7, 'data/5/4/54.jpg', 0, 1, 149.0000, 0, 0, '2015-11-28', 1.35000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-07 08:29:06', '2015-11-28 08:24:09', 0, NULL),
(30, 'm_30', 'm_30', '', '', '', '', '', '', 0, 7, 'data/5/5/55.jpg', 0, 1, 105.0000, 0, 0, '2015-11-28', 1.29000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-07 08:38:11', '2015-10-01 20:52:27', 1, NULL),
(31, 'm_31', 'm_31', '', '', '', '', '', '', 0, 7, 'data/5/6/56.jpg', 0, 1, 39.5000, 0, 0, '2015-11-28', 0.49800000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 07:56:30', '2015-09-29 18:40:44', 0, NULL),
(32, 'm_32', 'm_32', '', '', '', '', '', '', 0, 7, 'data/5/7/57.jpg', 0, 1, 69.9000, 0, 0, '2015-11-28', 1.20000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 08:05:10', '2015-11-07 16:43:32', 0, NULL),
(33, 'm_33', 'm_33', '', '', '', '', '', '', 0, 7, 'data/5/8/58.jpg', 0, 1, 69.9000, 0, 0, '2015-11-28', 1.21000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 08:14:47', '2015-11-07 11:40:33', 0, NULL),
(34, 'm_34', 'm_34', '', '', '', '', '', '', 0, 7, 'data/5/9/59.jpg', 0, 1, 39.9000, 0, 0, '2015-11-28', 0.40000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 08:22:29', '2015-09-29 18:36:06', 1, NULL),
(35, 'm_35', 'm_35', '', '', '', '', '', '', 0, 7, 'data/6/0/60.jpg', 0, 1, 24.9000, 0, 0, '2015-11-28', 0.40000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 08:33:16', '2015-10-22 22:49:44', 0, NULL),
(36, 'm_36', 'm_36', '', '', '', '', '', '', 0, 7, 'data/6/1/61.jpg', 0, 1, 33.0000, 0, 0, '2015-11-28', 0.40000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 08:53:58', '2015-09-29 18:53:39', 0, NULL),
(37, 'm_37', 'm_37', '', '', '', '', '', '', 0, 7, 'data/6/2/62.jpg', 0, 1, 99.9000, 0, 0, '2015-11-28', 0.95000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 09:02:55', '2015-09-29 18:57:13', 0, NULL),
(38, 'm_38', 'm_38', '', '', '', '', '', '', 0, 7, 'data/6/3/63.jpg', 0, 1, 45.0000, 0, 0, '2015-11-28', 0.60000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 09:30:36', '2015-09-29 20:22:41', 0, NULL),
(39, 'm_39', 'm_39', '', '', '', '', '', '', 0, 7, 'data/6/4/64.jpg', 0, 1, 59.0000, 0, 0, '2015-11-28', 0.60000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 09:37:31', '2015-11-08 10:33:24', 0, NULL),
(40, 'm_40', 'm_40', '', '', '', '', '', '', 0, 7, 'data/6/5/65.jpg', 0, 1, 15.0000, 0, 0, '2015-11-28', 0.20000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 09:44:09', '2015-09-29 20:49:47', 0, NULL),
(42, 'm_42', 'm_42', '', '', '', '', '', '', 0, 7, 'data/6/7/67.jpg', 0, 1, 23.0000, 0, 0, '2015-11-28', 0.20000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 10:52:33', '2015-09-29 21:10:47', 1, NULL),
(43, 'm_43', 'm_43', '', '', '', '', '', '', 0, 7, 'data/6/8/68.jpg', 0, 1, 15.0000, 0, 0, '2015-11-28', 0.20000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, '2015-06-27 11:00:52', '2015-11-28 19:07:03', 4, NULL),
(44, 'm_44', 'm_44', '', '', '', '', '', '', 0, 7, 'data/6/9/69.jpg', 0, 1, 29.9000, 0, 0, '2015-11-28', 0.30000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 11:08:19', '2015-09-29 21:27:11', 0, NULL),
(45, 'm_45', 'm_45', '', '', '', '', '', '', 0, 7, 'data/7/0/70.jpg', 0, 1, 79.0000, 0, 0, '2015-11-28', 0.70000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 11:25:25', '2015-11-28 08:18:43', 0, NULL),
(46, 'm_46', 'm_46', '', '', '', '', '', '', 0, 7, 'data/7/1/71.jpg', 0, 1, 14.9000, 0, 0, '2015-11-28', 0.20000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 11:31:23', '2015-11-06 14:25:16', 0, NULL),
(47, 'm_47', 'm_47', '', '', '', '', '', '', 0, 7, 'data/7/2/72.jpg', 0, 1, 39.9000, 0, 0, '2015-11-28', 0.50000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 11:38:33', '2015-09-30 19:06:25', 0, NULL),
(48, 'm_48', 'm_48', '', '', '', '', '', '', 0, 7, 'data/7/3/73.jpg', 0, 1, 15.0000, 0, 0, '2015-11-28', 0.20000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 11:44:24', '2015-09-30 19:18:07', 0, NULL),
(49, 'm_49', 'm_49', '', '', '', '', '', '', 0, 7, 'data/7/4/74.jpg', 0, 1, 49.9000, 0, 0, '2015-11-28', 0.80000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 12:02:22', '2015-11-09 21:11:34', 0, NULL),
(50, 'm_50', 'm_50', '', '', '', '', '', '', 0, 7, 'data/7/5/75.jpg', 0, 1, 42.9000, 0, 0, '2015-11-28', 0.95000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 12:20:54', '2015-11-08 09:39:07', 0, NULL),
(51, 'm_51', 'm_51', '', '', '', '', '', '', 0, 7, 'data/7/6/76.jpg', 0, 1, 69.9000, 0, 0, '2015-11-28', 1.20000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 12:28:00', '2015-09-17 19:08:07', 0, NULL),
(53, 'm_53', 'm_53', '', '', '', '', '', '', 0, 7, 'data/7/8/78.jpg', 0, 1, 32.9500, 0, 0, '2015-11-28', 0.80000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 13:17:03', '2015-10-01 20:58:40', 0, NULL),
(55, 'm_55', 'm_55', '', '', '', '', '', '', 0, 7, 'data/7/9/79.jpg', 0, 1, 15.0000, 0, 0, '2015-11-28', 0.20000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 13:32:40', '2015-10-01 21:18:26', 0, NULL),
(56, 'm_56', 'm_56', '', '', '', '', '', '', 0, 7, '-.jpg', 0, 1, 139.0000, 0, 0, '2015-11-28', 1.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 13:41:42', '2015-11-28 08:29:10', 0, NULL),
(58, 'm_58', 'm_58', '', '', '', '', '', '', 0, 7, 'data/8/4/84.jpg', 0, 1, 34.9000, 0, 0, '2015-11-28', 0.40000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 14:33:59', '2015-10-02 07:40:20', 0, NULL),
(59, 'm_59', 'm_59', '', '', '', '', '', '', 0, 7, 'data/8/5/85.jpg', 0, 1, 49.9000, 0, 0, '2015-11-28', 0.70000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 14:59:33', '2015-10-02 07:50:06', 0, NULL),
(60, 'm_60', 'm_60', '', '', '', '', '', '', 0, 7, 'data/8/6/86.jpg', 0, 1, 98.0000, 0, 0, '2015-11-28', 1.40000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 15:06:21', '2015-10-02 07:57:54', 0, NULL),
(61, 'm_61', 'm_61', '', '', '', '', '', '', 0, 7, 'data/8/7/87.jpg', 0, 1, 42.0000, 0, 0, '2015-11-28', 0.50000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 15:13:57', '2015-10-02 08:14:16', 0, NULL),
(62, 'm_62', 'm_62', '', '', '', '', '', '', 0, 7, 'data/8/8/88.jpg', 0, 1, 54.9000, 0, 0, '2015-11-28', 0.75000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 15:21:29', '2015-10-02 08:20:05', 0, NULL),
(63, 'm_63', 'm_63', '', '', '', '', '', '', 0, 7, 'data/8/9/89.jpg', 0, 1, 139.0000, 0, 0, '2015-11-28', 1.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 15:29:56', '2015-10-02 08:23:49', 0, NULL),
(64, 'm_64', 'm_64', '', '', '', '', '', '', 0, 7, 'data/9/0/90.jpg', 0, 1, 69.9000, 0, 0, '2015-11-28', 0.75000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 15:37:51', '2015-10-20 22:48:29', 0, NULL),
(65, 'm_65', 'm_65', '', '', '', '', '', '', 0, 7, 'data/9/1/91.jpg', 0, 1, 69.9000, 0, 0, '2015-11-28', 1.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 15:43:46', '2015-10-02 08:44:29', 0, NULL),
(66, 'm_66', 'm_66', '', '', '', '', '', '', 0, 7, 'data/9/2/92.jpg', 0, 1, 37.0000, 0, 0, '2015-11-28', 0.40000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-27 15:52:48', '2015-10-02 08:52:53', 0, NULL),
(67, 'm_67', 'm_67', '', '', '', '', '', '', 0, 7, 'data/9/3/93.jpg', 0, 1, 49.5000, 0, 0, '2015-11-28', 0.55000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-30 19:26:20', '2015-10-02 08:55:45', 0, NULL),
(68, 'm_68', 'm_68', '', '', '', '', '', '', 0, 7, 'data/9/4/94.jpg', 0, 1, 12.5000, 0, 0, '2015-11-28', 0.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-30 19:43:09', '2015-10-02 09:03:41', 0, NULL),
(69, 'm_69', 'm_69', '', '', '', '', '', '', 0, 7, 'data/9/5/95.jpg', 0, 1, 12.5000, 0, 0, '2015-11-28', 0.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-30 19:51:34', '2015-10-02 09:10:39', 0, NULL),
(70, 'm_70', 'm_70', '', '', '', '', '', '', 0, 7, 'data/9/6/96.jpg', 0, 1, 12.5000, 0, 0, '2015-11-28', 0.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-30 19:57:25', '2015-10-03 08:34:27', 0, NULL),
(71, 'm_71', 'm_71', '', '', '', '', '', '', 0, 7, 'data/9/7/97.jpg', 0, 1, 12.5000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-06-30 20:03:40', '2015-10-03 08:38:17', 0, NULL),
(72, 'm_72', 'm_72', '', '', '', '', '', '', 0, 7, 'data/9/8/98.jpg', 0, 1, 89.0000, 0, 0, '2015-11-28', 1.30000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 0, '2015-06-30 20:13:15', '2015-10-28 08:49:00', 0, NULL),
(73, 'm_73', 'm_73', '', '', '', '', '', '', 0, 7, 'data/9/9/99.jpg', 0, 1, 12.5000, 0, 0, '2015-11-28', 0.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-01 19:11:05', '2015-10-03 08:41:37', 0, NULL),
(74, 'm_74', 'm_74', '', '', '', '', '', '', 0, 7, 'data/1/0/0/100.jpg', 0, 1, 12.5000, 0, 0, '2015-11-28', 0.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-01 20:25:31', '2015-10-03 08:44:43', 0, NULL),
(75, 'm_75', 'm_75', '', '', '', '', '', '', 0, 7, 'data/1/0/1/101.jpg', 0, 1, 12.5000, 0, 0, '2015-11-28', 0.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-01 20:30:46', '2015-10-03 09:23:55', 0, NULL),
(76, 'm_76', 'm_76', '', '', '', '', '', '', 0, 7, 'data/1/0/2/102.jpg', 0, 1, 12.5000, 0, 0, '2015-11-28', 0.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-01 20:36:33', '2015-10-03 09:27:11', 0, NULL),
(77, 'm_77', 'm_77', '', '', '', '', '', '', 0, 7, 'data/1/0/3/103.jpg', 0, 1, 12.5000, 0, 0, '2015-11-28', 0.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-01 20:41:42', '2015-10-03 09:31:29', 0, NULL),
(78, 'm_78', 'm_78', '', '', '', '', '', '', 0, 7, 'data/1/0/4/104.jpg', 0, 1, 12.5000, 0, 0, '2015-11-28', 0.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-01 21:00:34', '2015-10-03 09:36:25', 0, NULL),
(79, 'm_79', 'm_79', '', '', '', '', '', '', 0, 7, 'data/1/0/5/105.jpg', 0, 1, 12.5000, 0, 0, '2015-11-28', 0.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-01 21:07:20', '2015-10-03 09:40:14', 0, NULL),
(80, 'm_80', 'm_80', '', '', '', '', '', '', 0, 7, 'data/1/0/6/106.jpg', 0, 1, 12.5000, 0, 0, '2015-11-28', 0.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-01 21:12:02', '2015-10-03 09:42:56', 0, NULL),
(81, 'm_81', 'm_81', '', '', '', '', '', '', 0, 7, 'data/1/0/7/107.jpg', 0, 1, 12.5000, 0, 0, '2015-11-28', 0.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-01 21:16:40', '2015-10-03 09:55:44', 0, NULL),
(82, 'm_82', 'm_82', '', '', '', '', '', '', 0, 7, 'data/1/0/8/108.jpg', 0, 1, 12.5000, 0, 0, '2015-11-28', 0.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-01 21:22:09', '2015-10-03 09:58:54', 0, NULL),
(83, 'm_83', 'm_83', '', '', '', '', '', '', 0, 7, 'data/1/0/9/109.jpg', 0, 1, 12.5000, 0, 0, '2015-11-28', 0.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-01 21:26:10', '2015-10-03 10:03:05', 0, NULL),
(84, 'm_84', 'm_84', '', '', '', '', '', '', 0, 7, 'data/1/1/0/110.jpg', 0, 1, 55.0000, 0, 0, '2015-11-28', 0.60000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-01 21:31:15', '2015-10-03 10:05:20', 0, NULL),
(85, 'm_85', 'm_85', '', '', '', '', '', '', 0, 7, 'data/1/1/1/111.jpg', 0, 1, 39.0000, 0, 0, '2015-11-28', 0.60000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-01 21:37:20', '2015-10-04 08:52:47', 0, NULL),
(86, 'm_86', 'm_86', '', '', '', '', '', '', 0, 7, 'data/1/1/2/112.jpg', 0, 1, 90.0000, 0, 0, '2015-11-28', 0.60000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-02 18:31:08', '2015-10-04 09:07:12', 0, NULL),
(87, 'm_87', 'm_87', '', '', '', '', '', '', 0, 7, 'data/1/1/3/113.jpg', 0, 1, 59.9000, 0, 0, '2015-11-28', 0.60000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-02 18:40:29', '2015-10-04 09:30:43', 0, NULL),
(88, 'm_88', 'm_88', '', '', '', '', '', '', 0, 7, 'data/1/1/4/114.jpg', 0, 1, 39.9000, 0, 0, '2015-11-28', 0.30000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-02 18:47:59', '2015-11-28 10:15:59', 0, NULL),
(89, 'm_89', 'm_89', '', '', '', '', '', '', 0, 7, 'data/1/1/5/115.jpg', 0, 1, 139.0000, 0, 0, '2015-11-28', 1.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-02 20:03:37', '2015-11-28 10:19:22', 0, NULL),
(90, 'm_90', 'm_90', '', '', '', '', '', '', 0, 7, 'data/1/1/7/117.jpg', 0, 1, 89.0000, 0, 0, '2015-11-28', 1.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-02 20:10:45', '2015-10-04 11:06:23', 0, NULL),
(91, 'm_91', 'm_91', '', '', '', '', '', '', 0, 7, 'data/1/1/8/118.jpg', 0, 1, 70.0000, 0, 0, '2015-11-28', 0.80000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-02 20:20:47', '2015-10-04 11:19:59', 0, NULL),
(92, 'm_92', 'm_92', '', '', '', '', '', '', 0, 7, 'data/1/1/9/119.jpg', 0, 1, 45.0000, 0, 0, '2015-11-28', 0.35000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-02 20:29:19', '2015-11-28 10:25:16', 0, NULL),
(93, 'm_93', 'm_93', '', '', '', '', '', '', 0, 7, 'data/1/2/0/120.jpg', 0, 1, 69.9000, 0, 0, '2015-11-28', 1.15000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-02 20:35:35', '2015-11-07 11:43:57', 0, NULL),
(94, 'm_94', 'm_94', '', '', '', '', '', '', 0, 7, 'data/1/2/1/121.jpg', 0, 1, 35.0000, 0, 0, '2015-11-28', 0.50000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-02 20:40:34', '2015-10-04 12:35:53', 0, NULL),
(95, 'm_95', 'm_95', '', '', '', '', '', '', 0, 7, 'data/1/2/2/122.jpg', 0, 1, 69.9000, 0, 0, '2015-11-28', 0.70000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-02 20:45:39', '2015-10-12 12:37:57', 0, NULL),
(96, 'm_96', 'm_96', '', '', '', '', '', '', 0, 7, 'data/1/2/3/123.jpg', 0, 1, 59.9000, 0, 0, '2015-11-28', 0.80000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-02 20:52:46', '2015-10-12 12:41:36', 0, NULL),
(97, 'm_97', 'm_97', '', '', '', '', '', '', 0, 7, 'data/1/2/4/124.jpg', 0, 1, 79.0000, 0, 0, '2015-11-28', 0.45000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-02 20:59:52', '2015-10-12 12:46:51', 0, NULL),
(98, 'm_98', 'm_98', '', '', '', '', '', '', 0, 7, 'data/1/2/5/125.jpg', 0, 1, 15.0000, 0, 0, '2015-11-28', 0.20000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-03 17:15:04', '2015-10-12 12:54:22', 0, NULL),
(99, 'm_99', 'm_99', '', '', '', '', '', '', 0, 7, 'data/1/2/6/126.jpg', 0, 1, 68.0000, 0, 0, '2015-11-28', 0.60000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-03 17:23:41', '2015-10-13 20:30:53', 0, NULL),
(100, 'm_100', 'm_100', '', '', '', '', '', '', 0, 7, 'data/1/2/7/127.jpg', 0, 1, 74.0000, 0, 0, '2015-11-28', 0.70000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-03 17:29:03', '2015-10-13 20:37:06', 0, NULL),
(101, 'm_101', 'm_101', '', '', '', '', '', '', 0, 7, 'data/1/2/8/128.jpg', 0, 1, 39.0000, 0, 0, '2015-11-28', 0.20000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-03 17:37:24', '2015-10-13 20:42:48', 0, NULL),
(102, 'm_102', 'm_102', '', '', '', '', '', '', 0, 7, 'data/1/2/9/129.jpg', 0, 1, 79.0000, 0, 0, '2015-11-28', 1.40000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-03 17:43:04', '2015-11-07 10:31:43', 0, NULL),
(103, 'm_103', 'm_103', '', '', '', '', '', '', 0, 7, 'data/1/3/0/130.jpg', 0, 1, 39.9000, 0, 0, '2015-11-28', 0.50000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-03 17:48:25', '2015-10-13 20:57:00', 0, NULL),
(104, 'm_104', 'm_104', '', '', '', '', '', '', 0, 7, 'data/1/3/1/131.jpg', 0, 1, 125.0000, 0, 0, '2015-11-28', 1.80000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-03 17:53:45', '2015-10-13 21:02:58', 0, NULL),
(105, 'm_105', 'm_105', '', '', '', '', '', '', 0, 7, 'data/1/3/2/132.jpg', 0, 1, 120.0000, 0, 0, '2015-11-28', 1.50000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-03 18:01:08', '2015-10-13 21:06:29', 0, NULL),
(106, 'm_106', 'm_106', '', '', '', '', '', '', 0, 7, 'data/1/3/3/133.jpg', 0, 1, 27.0000, 0, 0, '2015-11-28', 0.30000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-03 20:04:45', '2015-10-13 21:10:16', 0, NULL),
(107, 'm_107', 'm_107', '', '', '', '', '', '', 0, 7, 'data/1/3/4/134.jpg', 0, 1, 15.0000, 0, 0, '2015-11-28', 0.15000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-03 20:09:13', '2015-10-14 08:32:57', 0, NULL),
(108, 'm_108', 'm_108', '', '', '', '', '', '', 0, 7, 'data/1/3/5/135.jpg', 0, 1, 64.9000, 0, 0, '2015-11-28', 1.30000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-03 20:14:03', '2015-10-14 08:36:29', 0, NULL),
(109, 'm_109', 'm_109', '', '', '', '', '', '', 0, 7, 'data/1/3/6/136.jpg', 0, 1, 48.0000, 0, 0, '2015-11-28', 1.05000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-03 20:17:54', '2015-11-08 09:30:11', 0, NULL),
(110, 'm_110', 'm_110', '', '', '', '', '', '', 0, 7, 'data/1/3/7/137.jpg', 0, 1, 15.0000, 0, 0, '2015-11-28', 0.15000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-03 20:24:30', '2015-10-14 09:02:50', 0, NULL),
(111, 'm_111', 'm_111', '', '', '', '', '', '', 0, 7, 'data/1/3/8/138.jpg', 0, 1, 110.0000, 0, 0, '2015-11-28', 2.05000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-03 20:29:47', '2015-10-14 09:09:14', 0, NULL),
(112, 'm_112', 'm_112', '', '', '', '', '', '', 0, 7, 'data/1/3/9/139.jpg', 0, 1, 75.0000, 0, 0, '2015-11-28', 1.15000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 07:13:48', '2015-10-14 09:12:20', 0, NULL),
(113, 'm_113', 'm_113', '', '', '', '', '', '', 0, 7, 'data/1/4/0/140.jpg', 0, 1, 79.9000, 0, 0, '2015-11-28', 1.75000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 07:20:21', '2015-10-14 09:15:59', 0, NULL),
(114, 'm_114', 'm_114', '', '', '', '', '', '', 0, 7, 'data/1/4/1/141.jpg', 0, 1, 59.9000, 0, 0, '2015-11-28', 1.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 07:24:51', '2015-10-14 09:19:58', 0, NULL),
(115, 'm_115', 'm_115', '', '', '', '', '', '', 0, 7, 'data/1/4/2/142.jpg', 0, 1, 79.9000, 0, 0, '2015-11-28', 1.30000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 07:31:57', '2015-10-14 09:24:15', 0, NULL),
(116, 'm_116', 'm_116', '', '', '', '', '', '', 0, 7, 'data/1/4/3/143.jpg', 0, 1, 15.0000, 0, 0, '2015-11-28', 0.15000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 07:37:10', '2015-10-17 14:43:35', 0, NULL),
(117, 'm_117', 'm_117', '', '', '', '', '', '', 0, 7, 'data/1/4/4/144.jpg', 0, 1, 59.9000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 07:45:32', '2015-10-17 14:47:07', 0, NULL),
(118, 'm_118', 'm_118', '', '', '', '', '', '', 0, 7, 'data/1/4/5/145.jpg', 0, 1, 49.0000, 0, 0, '2015-11-28', 0.42000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 07:50:43', '2015-10-17 15:07:17', 0, NULL),
(119, 'm_119', 'm_119', '', '', '', '', '', '', 0, 7, 'data/1/4/6/146.jpg', 0, 1, 49.9000, 0, 0, '2015-11-28', 0.84000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 07:55:24', '2015-11-21 07:28:45', 0, NULL),
(120, 'm_120', 'm_120', '', '', '', '', '', '', 0, 7, 'data/1/4/7/147.jpg', 0, 1, 89.9000, 0, 0, '2015-11-28', 0.86000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 08:00:18', '2015-10-17 15:29:57', 0, NULL),
(121, 'm_121', 'm_121', '', '', '', '', '', '', 0, 7, 'data/1/4/8/148.jpg', 0, 1, 15.0000, 0, 0, '2015-11-28', 0.15000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 08:05:05', '2015-10-17 15:34:14', 0, NULL),
(122, 'm_122', 'm_122', '', '', '', '', '', '', 0, 7, 'data/1/4/9/149.jpg', 0, 1, 48.0000, 0, 0, '2015-11-28', 0.83000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 08:21:56', '2015-11-07 11:54:57', 0, NULL),
(123, 'm_123', 'm_123', '', '', '', '', '', '', 0, 7, 'data/1/5/0/150.jpg', 0, 1, 69.9000, 0, 0, '2015-11-28', 1.02000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 08:27:29', '2015-10-17 15:41:54', 0, NULL),
(124, 'm_124', 'm_124', '', '', '', '', '', '', 0, 7, 'data/1/5/1/151.jpg', 0, 1, 39.9000, 0, 0, '2015-11-28', 0.66000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 08:32:36', '2015-10-17 15:47:48', 0, NULL),
(125, 'm_125', 'm_125', '', '', '', '', '', '', 0, 7, 'data/1/5/2/152.jpg', 0, 1, 35.0000, 0, 0, '2015-11-28', 0.34000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 08:36:37', '2015-10-17 15:57:58', 0, NULL),
(126, 'm_126', 'm_126', '', '', '', '', '', '', 0, 7, 'data/1/5/3/153.jpg', 0, 1, 30.0000, 0, 0, '2015-11-28', 0.21000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 08:41:40', '2015-10-17 15:53:11', 0, NULL),
(127, 'm_127', 'm_127', '', '', '', '', '', '', 0, 7, 'data/1/5/4/154.jpg', 0, 1, 54.9000, 0, 0, '2015-11-28', 1.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 09:24:00', '2015-10-17 16:01:23', 0, NULL),
(128, 'm_128', 'm_128', '', '', '', '', '', '', 0, 7, 'data/1/5/5/155.jpg', 0, 1, 75.0000, 0, 0, '2015-11-28', 0.70000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 09:31:14', '2015-11-28 11:35:00', 0, NULL),
(129, 'm_129', 'm_129', '', '', '', '', '', '', 0, 7, 'data/1/5/6/156.jpg', 0, 1, 75.0000, 0, 0, '2015-11-28', 0.72000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 09:36:56', '2015-10-17 16:18:04', 0, NULL),
(130, 'm_130', 'm_130', '', '', '', '', '', '', 0, 7, 'data/1/5/7/157.jpg', 0, 1, 55.0000, 0, 0, '2015-11-28', 0.34000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 09:44:52', '2015-10-23 08:18:36', 0, NULL),
(131, 'm_131', 'm_131', '', '', '', '', '', '', 0, 7, 'data/3/7/8/378.jpg', 0, 1, 75.0000, 0, 0, '2015-11-28', 0.72000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-04 09:51:49', '2015-10-17 16:26:45', 0, NULL),
(132, 'm_132', 'm_132', '', '', '', '', '', '', 0, 7, 'data/3/7/9/379.jpg', 0, 1, 75.0000, 0, 0, '2015-11-28', 0.68000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-05 08:02:10', '2015-10-17 16:31:37', 0, NULL),
(133, 'm_133', 'm_133', '', '', '', '', '', '', 0, 7, 'data/3/8/0/380.jpg', 0, 1, 75.0000, 0, 0, '2015-11-28', 0.72000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-05 08:08:22', '2015-10-24 21:53:31', 0, NULL),
(134, 'm_134', 'm_134', '', '', '', '', '', '', 0, 7, 'data/3/8/1/381.jpg', 0, 1, 78.0000, 0, 0, '2015-11-28', 1.24000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-05 08:13:52', '2015-11-09 21:34:21', 0, NULL),
(135, 'm_135', 'm_135', '', '', '', '', '', '', 0, 7, 'data/3/8/2/382.jpg', 0, 1, 34.9000, 0, 0, '2015-11-28', 0.41000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-05 08:19:30', '2015-10-17 16:47:06', 0, NULL),
(136, 'm_136', 'm_136', '', '', '', '', '', '', 0, 7, 'data/3/8/3/383.jpg', 0, 1, 149.0000, 0, 0, '2015-11-28', 1.41000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-05 08:25:37', '2015-11-28 11:45:39', 0, NULL),
(137, 'm_137', 'm_137', '', '', '', '', '', '', 0, 7, 'data/3/8/4/384.jpg', 0, 1, 149.0000, 0, 0, '2015-11-28', 1.04000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-05 08:31:23', '2015-10-17 16:55:26', 0, NULL),
(138, 'm_138', 'm_138', '', '', '', '', '', '', 0, 7, 'data/3/8/5/385.jpg', 0, 1, 39.0000, 0, 0, '2015-11-28', 0.31000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-05 08:38:45', '2015-11-28 11:51:44', 0, NULL),
(139, 'm_139', 'm_139', '', '', '', '', '', '', 0, 7, 'data/3/8/6/386.jpg', 0, 1, 35.9000, 0, 0, '2015-11-28', 0.42000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-05 08:50:35', '2015-10-28 21:45:25', 0, NULL),
(140, 'm_140', 'm_140', '', '', '', '', '', '', 0, 7, 'data/3/8/7/387.jpg', 0, 1, 15.0000, 0, 0, '2015-11-28', 0.15000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-05 08:55:59', '2015-10-17 17:16:32', 0, NULL),
(141, 'm_141', 'm_141', '', '', '', '', '', '', 0, 7, 'data/3/8/9/389.jpg', 0, 1, 32.5000, 0, 0, '2015-11-28', 0.36000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-05 09:02:10', '2015-10-17 17:27:35', 0, NULL),
(142, 'm_142', 'm_142', '', '', '', '', '', '', 0, 7, 'data/3/9/0/390.jpg', 0, 1, 9.9000, 0, 0, '2015-11-28', 0.25000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-05 09:10:48', '2015-10-28 08:47:06', 0, NULL),
(143, 'm_143', 'm_143', '', '', '', '', '', '', 0, 7, 'data/3/9/1/391.jpg', 0, 1, 35.0000, 0, 0, '2015-11-28', 0.17000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-05 09:21:29', '2015-11-28 11:52:21', 0, NULL),
(144, 'm_144', 'm_144', '', '', '', '', '', '', 0, 7, 'data/3/9/2/392.jpg', 0, 1, 49.9000, 0, 0, '2015-11-28', 0.71000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-05 09:27:43', '2015-11-07 16:52:27', 0, NULL),
(145, 'm_145', 'm_145', '', '', '', '', '', '', 0, 7, 'data/3/9/3/393.jpg', 0, 1, 43.5000, 0, 0, '2015-11-28', 0.44000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-05 09:35:55', '2015-10-17 17:55:59', 0, NULL),
(146, 'm_146', 'm_146', '', '', '', '', '', '', 0, 7, 'data/2/8/7/287.jpg', 0, 1, 55.9000, 0, 0, '2015-11-28', 0.49000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 07:04:16', '2015-11-07 19:17:59', 0, NULL),
(147, 'm_147', 'm_147', '', '', '', '', '', '', 0, 7, 'data/1/7/5/175.jpg', 0, 1, 119.9000, 0, 0, '2015-11-28', 0.92000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 07:10:22', '2015-09-29 19:00:20', 0, NULL),
(148, 'm_148', 'm_148', '', '', '', '', '', '', 0, 7, 'data/2/8/8/288.jpg', 0, 1, 67.9000, 0, 0, '2015-11-28', 0.66000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 07:20:18', '2015-10-01 19:16:02', 0, NULL),
(149, 'm_149', 'm_149', '', '', '', '', '', '', 0, 7, 'data/2/8/9/289.jpg', 0, 1, 59.9000, 0, 0, '2015-11-28', 0.40000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 07:26:24', '2015-10-01 19:17:15', 0, NULL),
(150, 'm_150', 'm_150', '', '', '', '', '', '', 0, 7, 'data/2/9/1/291.jpg', 0, 1, 89.9000, 0, 0, '2015-11-28', 0.95000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 07:31:45', '2015-10-01 19:22:23', 0, NULL),
(151, 'm_151', 'm_151', '', '', '', '', '', '', 0, 7, 'data/2/9/2/292.jpg', 0, 1, 40.0000, 0, 0, '2015-11-28', 0.72000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 07:37:54', '2015-10-01 20:20:29', 0, NULL),
(152, 'm_152', 'm_152', '', '', '', '', '', '', 0, 7, 'data/2/9/3/293.jpg', 0, 1, 54.9000, 0, 0, '2015-11-28', 0.38000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 07:44:26', '2015-11-08 09:33:10', 0, NULL),
(153, 'm_153', 'm_153', '', '', '', '', '', '', 0, 7, 'data/2/9/4/294.jpg', 0, 1, 69.9000, 0, 0, '2015-11-28', 0.56000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 07:52:04', '2015-10-01 20:24:07', 0, NULL),
(154, 'm_154', 'm_154', '', '', '', '', '', '', 0, 7, 'data/2/9/5/295.jpg', 0, 1, 50.0000, 0, 0, '2015-11-28', 0.52000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 07:56:37', '2015-10-01 20:26:07', 0, NULL),
(155, 'm_155', 'm_155', '', '', '', '', '', '', 0, 7, 'data/2/9/6/296.jpg', 0, 1, 62.9000, 0, 0, '2015-11-28', 0.72000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 08:02:04', '2015-10-01 20:27:38', 0, NULL),
(156, 'm_156', 'm_156', '', '', '', '', '', '', 0, 7, 'data/1/8/4/184.jpg', 0, 1, 49.9000, 0, 0, '2015-11-28', 0.49000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 0, '2015-07-12 08:14:57', '2015-09-30 18:27:08', 0, NULL),
(157, 'm_157', 'm_157', '', '', '', '', '', '', 0, 7, 'data/1/8/5/185.jpg', 0, 1, 61.9000, 0, 0, '2015-11-28', 0.77000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 0, '2015-07-12 08:21:48', '2015-09-30 18:33:20', 0, NULL),
(158, 'm_158', 'm_158', '', '', '', '', '', '', 0, 7, 'data/2/9/7/297.jpg', 0, 1, 49.5000, 0, 0, '2015-11-28', 0.32000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 08:26:39', '2015-10-01 20:29:09', 0, NULL),
(159, 'm_159', 'm_159', '', '', '', '', '', '', 0, 7, 'data/2/9/8/298.jpg', 0, 1, 139.9000, 0, 0, '2015-11-28', 3.04000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 08:40:58', '2015-10-28 08:46:20', 0, NULL),
(160, 'm_160', 'm_160', '', '', '', '', '', '', 0, 7, 'data/2/9/9/299.jpg', 0, 1, 68.9000, 0, 0, '2015-11-28', 0.64000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 08:49:11', '2015-10-01 20:32:40', 0, NULL),
(161, 'm_161', 'm_161', '', '', '', '', '', '', 0, 7, 'data/3/0/0/300.jpg', 0, 1, 35.0000, 0, 0, '2015-11-28', 0.32000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 08:55:13', '2015-10-01 20:33:55', 0, NULL),
(162, 'm_162', 'm_162', '', '', '', '', '', '', 0, 7, 'data/2/7/9/279.jpg', 0, 1, 45.9000, 0, 0, '2015-11-28', 0.34000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 09:01:56', '2015-10-01 18:24:14', 0, NULL),
(163, 'm_163', 'm_163', '', '', '', '', '', '', 0, 7, 'data/2/8/0/280.jpg', 0, 1, 38.0000, 0, 0, '2015-11-28', 0.26000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 09:06:59', '2015-10-01 18:33:22', 0, NULL),
(164, 'm_164', 'm_164', '', '', '', '', '', '', 0, 7, 'data/2/8/1/281.jpg', 0, 1, 30.0000, 0, 0, '2015-11-28', 0.28000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 09:12:40', '2015-10-01 18:37:55', 0, NULL),
(165, 'm_165', 'm_165', '', '', '', '', '', '', 0, 7, 'data/2/8/2/282.jpg', 0, 1, 35.0000, 0, 0, '2015-11-28', 0.32000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-12 09:17:53', '2015-10-01 18:41:18', 0, NULL),
(166, 'm_166', 'm_166', '', '', '', '', '', '', 0, 7, 'data/2/8/3/283.jpg', 0, 1, 23.0000, 0, 0, '2015-11-28', 0.23000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-13 19:06:36', '2015-10-01 18:57:43', 0, NULL),
(167, 'm_167', 'm_167', '', '', '', '', '', '', 0, 7, 'data/2/8/4/284.jpg', 0, 1, 69.9000, 0, 0, '2015-11-28', 0.84000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-13 19:12:37', '2015-11-08 11:49:04', 0, NULL),
(168, 'm_168', 'm_168', '', '', '', '', '', '', 0, 7, 'data/2/8/5/285.jpg', 0, 1, 49.0000, 0, 0, '2015-11-28', 0.40000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-13 19:17:54', '2015-10-01 19:05:47', 0, NULL),
(169, 'm_169', 'm_169', '', '', '', '', '', '', 0, 7, 'data/2/8/6/286.jpg', 0, 1, 59.9000, 0, 0, '2015-11-28', 0.82000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-13 19:22:47', '2015-10-01 19:08:44', 0, NULL),
(170, 'm_170', 'm_170', '', '', '', '', '', '', 0, 7, 'data/3/0/1/301.jpg', 0, 1, 109.9000, 0, 0, '2015-11-28', 0.91000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-13 19:27:27', '2015-10-01 20:43:29', 0, NULL),
(171, 'm_171', 'm_171', '', '', '', '', '', '', 0, 7, 'data/3/0/2/302.jpg', 0, 1, 74.9000, 0, 0, '2015-11-28', 0.54000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-13 20:24:42', '2015-10-01 21:06:55', 0, NULL),
(172, 'm_172', 'm_172', '', '', '', '', '', '', 0, 7, 'data/3/0/3/303.jpg', 0, 1, 79.9000, 0, 0, '2015-11-28', 1.31000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-13 20:32:37', '2015-10-01 21:11:44', 0, NULL),
(173, 'm_173', 'm_173', '', '', '', '', '', '', 0, 7, 'data/3/0/4/304.jpg', 0, 1, 45.0000, 0, 0, '2015-11-28', 0.55000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-13 20:37:57', '2015-10-01 21:14:25', 0, NULL),
(174, 'm_174', 'm_174', '', '', '', '', '', '', 0, 7, 'data/3/0/5/305.jpg', 0, 1, 71.9000, 0, 0, '2015-11-28', 0.87000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-13 20:51:25', '2015-10-01 21:21:59', 0, NULL),
(175, 'm_175', 'm_175', '', '', '', '', '', '', 0, 7, 'data/3/0/8/308.jpg', 0, 1, 61.9000, 0, 0, '2015-11-28', 0.43000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 0, '2015-07-13 20:57:17', '2015-10-02 07:22:09', 0, NULL),
(176, 'm_176', 'm_176', '', '', '', '', '', '', 0, 7, 'data/3/0/9/309.jpg', 0, 1, 38.0000, 0, 0, '2015-11-28', 0.40000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-16 09:02:49', '2015-10-02 07:28:10', 0, NULL),
(177, 'm_177', 'm_177', '', '', '', '', '', '', 0, 7, 'data/3/1/0/310.jpg', 0, 1, 61.9000, 0, 0, '2015-11-28', 0.49000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 0, '2015-07-16 09:09:38', '2015-10-02 07:30:56', 0, NULL),
(178, 'm_178', 'm_178', '', '', '', '', '', '', 0, 7, 'data/3/1/1/311.jpg', 0, 1, 139.9000, 0, 0, '2015-11-28', 1.17000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-16 09:20:01', '2015-10-10 17:58:47', 0, NULL),
(179, 'm_179', 'm_179', '', '', '', '', '', '', 0, 7, 'data/3/1/3/313.jpg', 0, 1, 139.9000, 0, 0, '2015-11-28', 1.09000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-16 09:24:50', '2015-10-02 07:53:09', 0, NULL),
(180, 'm_180', 'm_180', '', '', '', '', '', '', 0, 7, 'data/3/0/7/307.jpg', 0, 1, 114.9000, 0, 0, '2015-11-28', 1.26000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-16 09:30:16', '2015-10-14 08:59:16', 0, NULL),
(181, 'm_181', 'm_181', '', '', '', '', '', '', 0, 7, 'data/3/1/4/314.jpg', 0, 1, 65.0000, 0, 0, '2015-11-28', 0.66000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-16 09:35:24', '2015-10-24 20:34:03', 0, NULL),
(182, 'm_182', 'm_182', '', '', '', '', '', '', 0, 7, 'data/3/1/5/315.jpg', 0, 1, 41.9000, 0, 0, '2015-11-28', 0.46000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-16 09:43:53', '2015-10-03 10:11:30', 0, NULL),
(183, 'm_183', 'm_183', '', '', '', '', '', '', 0, 7, 'data/3/1/6/316.jpg', 0, 1, 71.1000, 0, 0, '2015-11-28', 0.93000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-16 10:52:21', '2015-10-03 10:14:41', 0, NULL),
(184, 'm_184', 'm_184', '', '', '', '', '', '', 0, 7, 'data/3/1/7/317.jpg', 0, 1, 45.0000, 0, 0, '2015-11-28', 0.40000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-16 10:57:44', '2015-10-03 10:19:21', 0, NULL),
(185, 'm_185', 'm_185', '', '', '', '', '', '', 0, 7, 'data/3/2/0/320.jpg', 0, 1, 49.9000, 0, 0, '2015-11-28', 0.36000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-16 11:12:57', '2015-10-04 17:18:41', 0, NULL),
(186, 'm_186', 'm_186', '', '', '', '', '', '', 0, 7, 'data/3/2/1/321.jpg', 0, 1, 64.9000, 0, 0, '2015-11-28', 0.63000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-16 11:18:48', '2015-10-04 17:23:21', 0, NULL),
(187, 'm_187', 'm_187', '', '', '', '', '', '', 0, 7, 'data/3/2/2/322.jpg', 0, 1, 44.9000, 0, 0, '2015-11-28', 0.46000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-16 11:24:13', '2015-10-04 17:27:20', 0, NULL),
(188, 'm_188', 'm_188', '', '', '', '', '', '', 0, 7, 'data/3/7/5/375.jpg', 0, 1, 159.9000, 0, 0, '2015-11-28', 1.74000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-17 06:58:17', '2015-10-10 19:24:21', 0, NULL),
(189, 'm_189', 'm_189', '', '', '', '', '', '', 0, 7, 'data/3/2/3/323.jpg', 0, 1, 59.9000, 0, 0, '2015-11-28', 0.58000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-17 07:04:00', '2015-10-04 17:33:43', 0, NULL),
(190, 'm_190', 'm_190', '', '', '', '', '', '', 0, 7, 'data/3/2/4/324.jpg', 0, 1, 144.9000, 0, 0, '2015-11-28', 1.28000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-17 07:13:36', '2015-10-04 17:40:13', 0, NULL),
(191, 'm_191', 'm_191', '', '', '', '', '', '', 0, 7, 'data/3/2/5/325.jpg', 0, 1, 41.9000, 0, 0, '2015-11-28', 0.38000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-17 07:21:56', '2015-10-04 17:49:07', 0, NULL),
(192, 'm_192', 'm_192', '', '', '', '', '', '', 0, 7, 'data/3/2/6/326.jpg', 0, 1, 54.9000, 0, 0, '2015-11-28', 0.29000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-17 07:27:18', '2015-10-04 17:54:26', 0, NULL),
(193, 'm_193', 'm_193', '', '', '', '', '', '', 0, 7, 'data/3/2/7/327.jpg', 0, 1, 89.9000, 0, 0, '2015-11-28', 0.94000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-17 07:33:07', '2015-10-04 18:02:34', 0, NULL),
(194, 'm_194', 'm_194', '', '', '', '', '', '', 0, 7, 'data/3/2/8/328.jpg', 0, 1, 69.9000, 0, 0, '2015-11-28', 0.60000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 0, '2015-07-17 07:39:17', '2015-10-25 10:21:16', 0, NULL),
(195, 'm_195', 'm_195', '', '', '', '', '', '', 0, 7, 'data/3/2/9/329.jpg', 0, 1, 57.0000, 0, 0, '2015-11-28', 0.55000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 08:00:05', '2015-10-04 18:13:54', 0, NULL),
(196, 'm_196', 'm_196', '', '', '', '', '', '', 0, 7, 'data/3/3/0/330.jpg', 0, 1, 57.0000, 0, 0, '2015-11-28', 0.39000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 08:06:47', '2015-10-04 18:18:45', 0, NULL),
(197, 'm_197', 'm_197', '', '', '', '', '', '', 0, 7, 'data/3/3/1/331.jpg', 0, 1, 61.0000, 0, 0, '2015-11-28', 0.75000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 08:14:03', '2015-10-04 18:31:08', 0, NULL),
(198, 'm_198', 'm_198', '', '', '', '', '', '', 0, 7, 'data/3/3/3/333.jpg', 0, 1, 89.9000, 0, 0, '2015-11-28', 0.99000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 0, '2015-07-18 08:20:06', '2015-10-25 10:21:37', 0, NULL),
(199, 'm_199', 'm_199', '', '', '', '', '', '', 0, 7, 'data/3/3/2/332.jpg', 0, 1, 40.0000, 0, 0, '2015-11-28', 0.32000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 08:26:44', '2015-10-05 21:54:39', 0, NULL),
(200, 'm_200', 'm_200', '', '', '', '', '', '', 0, 7, 'data/3/3/4/334.jpg', 0, 1, 59.9000, 0, 0, '2015-11-28', 0.42000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 08:51:58', '2015-10-05 22:08:35', 0, NULL),
(201, 'm_201', 'm_201', '', '', '', '', '', '', 0, 7, 'data/3/3/5/335.jpg', 0, 1, 55.9000, 0, 0, '2015-11-28', 0.31000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 08:57:00', '2015-10-05 22:13:55', 0, NULL),
(202, 'm_202', 'm_202', '', '', '', '', '', '', 0, 7, 'data/3/3/6/336.jpg', 0, 1, 40.0000, 0, 0, '2015-11-28', 0.29000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 09:03:05', '2015-10-05 22:18:43', 0, NULL),
(203, 'm_203', 'm_203', '', '', '', '', '', '', 0, 7, 'data/3/7/6/376.jpg', 0, 1, 79.9000, 0, 0, '2015-11-28', 0.91000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 09:16:48', '2015-10-14 18:16:36', 0, NULL),
(204, 'm_204', 'm_204', '', '', '', '', '', '', 0, 7, 'data/3/3/7/337.jpg', 0, 1, 45.0000, 0, 0, '2015-11-28', 0.53000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 09:22:21', '2015-10-07 19:08:48', 0, NULL),
(205, 'm_205', 'm_205', '', '', '', '', '', '', 0, 7, 'data/3/3/9/339.jpg', 0, 1, 71.1000, 0, 0, '2015-11-28', 0.71000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 09:32:35', '2015-10-09 18:54:29', 0, NULL),
(206, 'm_206', 'm_206', '', '', '', '', '', '', 0, 7, 'data/3/4/0/340.jpg', 0, 1, 89.9000, 0, 0, '2015-11-28', 1.07000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 09:49:34', '2015-10-09 18:59:28', 0, NULL),
(207, 'm_207', 'm_207', '', '', '', '', '', '', 0, 7, 'data/3/4/1/341.jpg', 0, 1, 89.9000, 0, 0, '2015-11-28', 0.60000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 10:30:05', '2015-10-09 19:03:14', 0, NULL),
(208, 'm_208', 'm_208', '', '', '', '', '', '', 0, 7, 'data/3/4/2/342.jpg', 0, 1, 47.0000, 0, 0, '2015-11-28', 0.48000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 10:38:10', '2015-10-09 19:07:21', 0, NULL),
(209, 'm_209', 'm_209', '', '', '', '', '', '', 0, 7, 'data/3/4/3/343.jpg', 0, 1, 49.9000, 0, 0, '2015-11-28', 0.27000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 10:47:08', '2015-10-09 19:11:20', 0, NULL),
(210, 'm_210', 'm_210', '', '', '', '', '', '', 0, 7, 'data/3/4/4/344.jpg', 0, 1, 108.0000, 0, 0, '2015-11-28', 0.99000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 10:55:45', '2015-10-09 19:18:09', 0, NULL),
(211, 'm_211', 'm_211', '', '', '', '', '', '', 0, 7, 'data/3/4/5/345.jpg', 0, 1, 95.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 16:15:56', '2015-10-09 19:22:20', 0, NULL),
(212, 'm_212', 'm_212', '', '', '', '', '', '', 0, 7, 'data/3/4/6/346.jpg', 0, 1, 59.9000, 0, 0, '2015-11-28', 0.54000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 16:25:13', '2015-10-10 06:49:12', 0, NULL),
(213, 'm_213', 'm_213', '', '', '', '', '', '', 0, 7, 'data/3/4/7/347.jpg', 0, 1, 64.9000, 0, 0, '2015-11-28', 0.42000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 19:09:53', '2015-10-10 06:53:39', 0, NULL),
(214, 'm_214', 'm_214', '', '', '', '', '', '', 0, 7, 'data/3/4/8/348.jpg', 0, 1, 64.9000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 19:19:20', '2015-10-10 06:57:36', 0, NULL),
(215, 'm_215', 'm_215', '', '', '', '', '', '', 0, 7, 'data/3/4/9/349.jpg', 0, 1, 99.9000, 0, 0, '2015-11-28', 1.12000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 19:27:55', '2015-10-10 07:04:15', 0, NULL),
(216, 'm_216', 'm_216', '', '', '', '', '', '', 0, 7, 'data/3/7/7/377.jpg', 0, 1, 134.9000, 0, 0, '2015-11-28', 1.88000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 19:37:58', '2015-10-17 15:19:05', 0, NULL),
(217, 'm_217', 'm_217', '', '', '', '', '', '', 0, 7, 'data/3/5/0/350.jpg', 0, 1, 109.9000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-18 19:45:03', '2015-10-10 07:10:05', 0, NULL),
(218, 'm_218', 'm_218', '', '', '', '', '', '', 0, 7, 'data/3/5/1/351.jpg', 0, 1, 114.0000, 0, 0, '2015-11-28', 1.07000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 08:31:31', '2015-10-10 07:18:12', 0, NULL),
(219, 'm_219', 'm_219', '', '', '', '', '', '', 0, 7, 'data/3/5/2/352.jpg', 0, 1, 89.9000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 08:39:48', '2015-10-10 07:22:56', 0, NULL),
(220, 'm_220', 'm_220', '', '', '', '', '', '', 0, 7, 'data/3/5/3/353.jpg', 0, 1, 84.9000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 08:51:23', '2015-10-10 07:32:35', 0, NULL),
(221, 'm_221', 'm_221', '', '', '', '', '', '', 0, 7, 'data/3/5/4/354.jpg', 0, 1, 66.9000, 0, 0, '2015-11-28', 0.30000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 08:58:39', '2015-10-10 07:47:03', 0, NULL),
(222, 'm_222', 'm_222', '', '', '', '', '', '', 0, 7, 'data/3/5/5/355.jpg', 0, 1, 71.9000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 09:13:52', '2015-10-10 07:55:43', 0, NULL),
(223, 'm_223', 'm_223', '', '', '', '', '', '', 0, 7, 'data/3/5/6/356.jpg', 0, 1, 49.9000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 09:20:19', '2015-10-10 08:03:39', 0, NULL),
(224, 'm_224', 'm_224', '', '', '', '', '', '', 0, 7, 'data/3/5/7/357.jpg', 0, 1, 139.9000, 0, 0, '2015-11-28', 1.74000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 09:27:28', '2015-10-10 08:09:39', 0, NULL),
(225, 'm_225', 'm_225', '', '', '', '', '', '', 0, 7, 'data/3/5/8/358.jpg', 0, 1, 84.9000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 09:33:23', '2015-10-10 08:15:04', 0, NULL),
(226, 'm_226', 'm_226', '', '', '', '', '', '', 0, 7, 'data/3/5/9/359.jpg', 0, 1, 64.9000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 09:47:14', '2015-10-24 22:27:45', 0, NULL),
(227, 'm_227', 'm_227', '', '', '', '', '', '', 0, 7, 'data/3/6/0/360.jpg', 0, 1, 69.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 09:56:48', '2015-10-10 08:23:03', 0, NULL),
(228, 'm_228', 'm_228', '', '', '', '', '', '', 0, 7, 'data/3/6/1/361.jpg', 0, 1, 43.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 10:03:28', '2015-10-10 08:29:54', 0, NULL);
INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`, `meta_keywords`) VALUES
(229, 'm_229', 'm_229', '', '', '', '', '', '', 0, 7, 'data/3/6/2/362.jpg', 0, 1, 15.0000, 0, 0, '2015-11-28', 0.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 10:10:33', '2015-10-10 08:33:48', 0, NULL),
(230, 'm_230', 'm_230', '', '', '', '', '', '', 0, 7, 'data/3/6/3/363.jpg', 0, 1, 64.9000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 10:22:40', '2015-10-10 08:39:38', 0, NULL),
(231, 'm_231', 'm_231', '', '', '', '', '', '', 0, 7, 'data/3/6/4/364.jpg', 0, 1, 35.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 16:22:35', '2015-10-10 08:44:04', 0, NULL),
(232, 'm_232', 'm_232', '', '', '', '', '', '', 0, 7, 'data/3/6/7/367.jpg', 0, 1, 30.0000, 0, 0, '2015-11-28', 0.30000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 16:31:56', '2015-10-10 08:54:50', 0, NULL),
(233, 'm_233', 'm_233', '', '', '', '', '', '', 0, 7, 'data/3/6/6/366.jpg', 0, 1, 30.0000, 0, 0, '2015-11-28', 0.32000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 18:02:51', '2015-10-10 08:50:22', 0, NULL),
(234, 'm_234', 'm_234', '', '', '', '', '', '', 0, 7, 'data/3/8/8/388.jpg', 0, 1, 30.0000, 0, 0, '2015-11-28', 0.29000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 18:10:55', '2015-10-17 17:22:26', 0, NULL),
(235, 'm_235', 'm_235', '', '', '', '', '', '', 0, 7, 'data/3/6/8/368.jpg', 0, 1, 30.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 18:16:52', '2015-10-10 14:57:10', 0, NULL),
(236, 'm_236', 'm_236', '', '', '', '', '', '', 0, 7, 'data/3/6/9/369.jpg', 0, 1, 110.0000, 0, 0, '2015-11-28', 1.41000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 18:25:12', '2015-10-10 15:06:40', 0, NULL),
(237, 'm_237', 'm_237', '', '', '', '', '', '', 0, 7, 'data/3/7/0/370.jpg', 0, 1, 110.0000, 0, 0, '2015-11-28', 1.32000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 18:35:23', '2015-10-10 15:11:13', 0, NULL),
(238, 'm_238', 'm_238', '', '', '', '', '', '', 0, 7, 'data/3/7/1/371.jpg', 0, 1, 90.0000, 0, 0, '2015-11-28', 1.23000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 18:41:36', '2015-11-20 09:48:52', 0, NULL),
(239, 'm_239', 'm_239', '', '', '', '', '', '', 0, 7, 'data/3/7/2/372.jpg', 0, 1, 36.9000, 0, 0, '2015-11-28', 0.38000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 18:47:51', '2015-10-10 15:40:22', 0, NULL),
(240, 'm_240', 'm_240', '', '', '', '', '', '', 0, 7, 'data/3/7/3/373.jpg', 0, 1, 68.0000, 0, 0, '2015-11-28', 1.12000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-07-19 18:53:27', '2015-10-10 15:52:17', 0, NULL),
(241, 'm_241', 'm_241', '', '', '', '', '', '', 0, 7, 'data/3/0/6/306.jpg', 0, 1, 29.9000, 0, 0, '2015-11-28', 0.40000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-09-26 10:55:13', '2015-10-30 21:20:36', 0, NULL),
(242, 'm_242', 'm_242', '', '', '', '', '', '', 0, 7, 'data/3/3/8/338.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-09-27 21:49:07', '2015-10-22 22:08:13', 0, NULL),
(245, 'm_245', 'm_245', '', '', '', '', '', '', 0, 7, 'data/3/7/4/374.jpg', 0, 1, 34.9000, 0, 0, '2015-11-28', 0.36000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-10 18:01:48', '2015-11-09 21:25:33', 0, NULL),
(246, 'm_246', 'm_246', '', '', '', '', '', '', 0, 7, 'data/3/9/4/394.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-18 10:53:14', '2015-10-22 22:04:14', 0, NULL),
(247, 'm_247', 'm_247', '', '', '', '', '', '', 0, 7, 'data/3/9/5/395.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-18 18:05:14', '2015-10-22 22:06:39', 1, NULL),
(248, 'm_248', 'm_248', '', '', '', '', '', '', 0, 7, 'data/3/9/6/396.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-18 18:36:12', '2015-10-22 22:08:59', 1, NULL),
(249, 'm_249', 'm_249', '', '', '', '', '', '', 0, 7, 'data/3/9/7/397.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-19 18:30:47', '2015-10-22 22:07:28', 0, NULL),
(250, 'm_250', 'm_250', '', '', '', '', '', '', 0, 7, 'data/3/9/8/398.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-19 19:18:53', '2015-10-22 22:26:46', 0, NULL),
(251, 'm_251', 'm_251', '', '', '', '', '', '', 0, 7, 'data/3/9/9/399.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-19 19:35:32', '2015-10-22 22:09:41', 0, NULL),
(252, 'm_252', 'm_252', '', '', '', '', '', '', 0, 7, 'data/4/0/0/400.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-19 19:49:59', '2015-10-22 22:10:46', 0, NULL),
(254, 'm_254', 'm_254', '', '', '', '', '', '', 0, 7, 'data/4/0/2/402.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-20 21:44:35', '2015-10-22 22:11:45', 0, NULL),
(255, 'm_255', 'm_255', '', '', '', '', '', '', 0, 7, 'data/4/0/3/403.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-20 21:56:28', '2015-10-22 22:12:31', 0, NULL),
(256, 'm_256', 'm_256', '', '', '', '', '', '', 0, 7, 'data/4/0/4/404.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-20 22:08:15', '2015-10-22 22:13:19', 0, NULL),
(257, 'm_257', 'm_257', '', '', '', '', '', '', 0, 7, 'data/4/0/5/405.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-20 22:17:48', '2015-10-22 22:13:57', 0, NULL),
(258, 'm_258', 'm_258', '', '', '', '', '', '', 0, 7, 'data/4/0/6/406.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-20 22:30:08', '2015-10-22 22:14:40', 0, NULL),
(259, 'm_259', 'm_259', '', '', '', '', '', '', 0, 7, 'data/4/0/7/407.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-20 22:42:29', '2015-10-22 22:15:16', 0, NULL),
(262, 'm_262', 'm_262', '', '', '', '', '', '', 0, 7, 'data/4/1/1/411.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-22 22:21:10', '2015-10-22 22:25:16', 0, NULL),
(263, 'm_263', 'm_263', '', '', '', '', '', '', 0, 7, 'data/4/1/2/412.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-22 22:32:23', '2015-10-22 22:37:10', 0, NULL),
(264, 'm_264', 'm_264', '', '', '', '', '', '', 0, 7, 'data/4/1/3/413.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-22 22:40:34', '2015-10-22 22:44:54', 0, NULL),
(265, 'm_265', 'm_265', '', '', '', '', '', '', 0, 7, 'data/4/1/4/414.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-23 07:51:18', '2015-10-23 07:57:19', 0, NULL),
(266, 'm_266', 'm_266', '', '', '', '', '', '', 0, 7, 'data/4/1/5/415.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-23 08:01:13', '2015-10-23 08:04:34', 0, NULL),
(267, 'm_267', 'm_267', '', '', '', '', '', '', 0, 7, 'data/4/1/6/416.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-23 08:08:06', '2015-10-23 08:13:32', 0, NULL),
(268, 'm_268', 'm_268', '', '', '', '', '', '', 0, 7, 'data/4/1/7/417.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-24 19:59:35', '2015-10-24 20:03:17', 0, NULL),
(269, 'm_269', 'm_269', '', '', '', '', '', '', 0, 7, 'data/4/1/8/418.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-24 20:07:25', '2015-10-24 20:11:35', 0, NULL),
(270, 'm_270', 'm_270', '', '', '', '', '', '', 0, 7, 'data/4/1/9/419.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-24 20:15:37', '2015-10-24 20:18:59', 0, NULL),
(271, 'm_271', 'm_271', '', '', '', '', '', '', 0, 7, 'data/4/2/0/420.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-24 20:22:40', '2015-10-24 20:25:34', 0, NULL),
(272, 'm_272', 'm_272', '', '', '', '', '', '', 0, 7, 'data/4/2/1/421.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-24 20:39:16', '2015-10-24 20:44:29', 0, NULL),
(273, 'm_273', 'm_273', '', '', '', '', '', '', 0, 7, 'data/4/2/2/422.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-24 20:50:00', '2015-10-24 20:54:24', 0, NULL),
(274, 'm_274', 'm_274', '', '', '', '', '', '', 0, 7, 'data/4/2/3/423.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-24 20:58:07', '2015-10-24 21:01:43', 0, NULL),
(275, 'm_275', 'm_275', '', '', '', '', '', '', 0, 7, 'data/4/2/4/424.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-24 21:05:05', '2015-10-24 21:08:38', 1, NULL),
(276, 'm_276', 'm_276', '', '', '', '', '', '', 0, 7, 'data/4/2/5/425.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-24 21:23:25', '2015-10-24 21:26:38', 0, NULL),
(277, 'm_277', 'm_277', '', '', '', '', '', '', 0, 7, 'data/4/2/6/426.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-24 21:31:44', '2015-10-24 21:34:24', 0, NULL),
(278, 'm_278', 'm_278', '', '', '', '', '', '', 0, 7, 'data/4/2/7/427.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-24 21:37:32', '2015-10-24 21:40:44', 0, NULL),
(279, 'm_279', 'm_279', '', '', '', '', '', '', 0, 7, 'data/4/2/8/428.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-24 21:43:31', '2015-10-24 21:47:10', 0, NULL),
(280, 'm_280', 'm_280', '', '', '', '', '', '', 0, 7, 'data/4/2/9/429.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-24 21:57:33', '2015-10-24 22:04:34', 0, NULL),
(281, 'm_281', 'm_281', '', '', '', '', '', '', 0, 7, 'data/4/3/0/430.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-24 22:03:59', '2015-10-24 22:06:55', 0, NULL),
(282, 'm_282', 'm_282', '', '', '', '', '', '', 0, 7, 'data/4/3/1/431.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-24 22:10:47', '2015-10-24 22:12:41', 0, NULL),
(283, 'm_283', 'm_283', '', '', '', '', '', '', 0, 7, 'data/4/3/2/432.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-24 22:15:50', '2015-10-24 22:17:57', 0, NULL),
(284, 'm_284', 'm_284', '', '', '', '', '', '', 0, 7, 'data/4/3/3/433.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-25 08:59:27', '2015-10-26 11:19:29', 0, NULL),
(285, 'm_285', 'm_285', '', '', '', '', '', '', 0, 7, 'data/4/3/4/434.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-25 09:53:15', '2015-10-26 11:20:18', 0, NULL),
(286, 'm_286', 'm_286', '', '', '', '', '', '', 0, 7, 'data/4/3/5/435.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-28 19:36:49', '2015-10-28 19:40:12', 0, NULL),
(287, 'm_287', 'm_287', '', '', '', '', '', '', 0, 7, 'data/4/3/6/436.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-28 19:45:48', '2015-10-28 19:48:27', 0, NULL),
(288, 'm_288', 'm_288', '', '', '', '', '', '', 0, 7, 'data/4/3/7/437.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-28 19:52:32', '2015-10-28 19:55:18', 0, NULL),
(289, 'm_289', 'm_289', '', '', '', '', '', '', 0, 7, 'data/4/3/8/438.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-28 19:59:43', '2015-10-28 20:02:12', 0, NULL),
(290, 'm_290', 'm_290', '', '', '', '', '', '', 0, 7, 'data/4/3/9/439.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-28 21:07:44', '2015-10-28 21:14:10', 0, NULL),
(291, 'm_291', 'm_291', '', '', '', '', '', '', 0, 7, 'data/4/4/0/440.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-28 21:18:06', '2015-10-28 21:21:09', 0, NULL),
(292, 'm_292', 'm_292', '', '', '', '', '', '', 0, 7, 'data/4/4/1/441.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-28 21:24:50', '2015-10-28 21:28:57', 0, NULL),
(293, 'm_293', 'm_293', '', '', '', '', '', '', 0, 7, 'data/4/4/2/442.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-28 21:32:51', '2015-10-28 21:35:51', 0, NULL),
(294, 'm_294', 'm_294', '', '', '', '', '', '', 0, 7, 'data/4/4/3/443.jpg', 0, 1, 53.4000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-10-30 21:12:26', '2015-11-14 18:20:55', 1, NULL),
(295, 'm_295', 'm_295', '', '', '', '', '', '', 0, 7, 'data/4/4/4/444.jpg', 0, 1, 49.9000, 0, 0, '2015-11-28', 0.33000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-03 21:17:28', '2015-11-06 08:09:41', 0, NULL),
(296, 'm_296', 'm_296', '', '', '', '', '', '', 0, 7, 'data/4/4/5/445.jpg', 0, 1, 61.0000, 0, 0, '2015-11-28', 0.28000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-03 21:30:18', '2015-11-06 08:09:00', 0, NULL),
(297, 'm_297', 'm_297', '', '', '', '', '', '', 0, 7, 'data/4/4/6/446.jpg', 0, 1, 55.9000, 0, 0, '2015-11-28', 0.46500000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-03 21:41:49', '2015-11-06 08:08:29', 1, NULL),
(298, 'm_298', 'm_298', '', '', '', '', '', '', 0, 7, 'data/4/4/7/447.jpg', 0, 1, 49.9000, 0, 0, '2015-11-28', 0.52000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-03 21:49:19', '2015-11-06 08:07:53', 0, NULL),
(299, 'm_299', 'm_299', '', '', '', '', '', '', 0, 7, 'data/4/4/8/448.jpg', 0, 1, 15.0000, 0, 0, '2015-11-28', 0.09000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-03 22:00:50', '2015-11-06 08:07:09', 0, NULL),
(300, 'm_300', 'm_300', '', '', '', '', '', '', 0, 7, 'data/4/4/9/449.jpg', 0, 1, 114.9000, 0, 0, '2015-11-28', 0.68000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-04 18:21:07', '2015-11-06 08:06:18', 0, NULL),
(301, 'm_301', 'm_301', '', '', '', '', '', '', 0, 7, 'data/4/5/0/450.jpg', 0, 1, 54.9000, 0, 0, '2015-11-28', 0.32500000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-04 18:35:33', '2015-11-06 08:05:34', 0, NULL),
(302, 'm_302', 'm_302', '', '', '', '', '', '', 0, 7, 'data/4/5/1/451.jpg', 0, 1, 67.9000, 0, 0, '2015-11-28', 0.34000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-04 18:48:48', '2015-11-06 08:04:59', 0, NULL),
(303, 'm_303', 'm_303', '', '', '', '', '', '', 0, 7, 'data/4/5/2/452.jpg', 0, 1, 76.9000, 0, 0, '2015-11-28', 0.63000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-04 18:59:37', '2015-11-15 11:30:13', 0, NULL),
(304, 'm_304', 'm_304', '', '', '', '', '', '', 0, 7, 'data/4/5/3/453.jpg', 0, 1, 74.9000, 0, 0, '2015-11-28', 0.98000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-04 20:08:18', '2015-11-06 08:03:36', 0, NULL),
(305, 'm_305', 'm_305', '', '', '', '', '', '', 0, 7, 'data/4/5/4/454.jpg', 0, 1, 109.9000, 0, 0, '2015-11-28', 0.87000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-04 20:19:51', '2015-11-06 08:02:56', 0, NULL),
(306, 'm_306', 'm_306', '', '', '', '', '', '', 0, 7, 'data/4/5/5/455.jpg', 0, 1, 66.9000, 0, 0, '2015-11-28', 0.81000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-04 20:28:52', '2015-11-06 08:02:03', 0, NULL),
(307, 'm_307', 'm_307', '', '', '', '', '', '', 0, 7, 'data/4/5/6/456.jpg', 0, 1, 71.9000, 0, 0, '2015-11-28', 885.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-04 20:47:53', '2015-11-06 08:01:39', 0, NULL),
(308, 'm_308', 'm_308', '', '', '', '', '', '', 0, 7, 'data/4/5/7/457.jpg', 0, 1, 59.9000, 0, 0, '2015-11-28', 0.30000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-05 19:41:01', '2015-11-06 08:01:05', 0, NULL),
(309, 'm_309', 'm_309', '', '', '', '', '', '', 0, 7, 'data/4/5/8/458.jpg', 0, 1, 89.9000, 0, 0, '2015-11-28', 1.24000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-05 19:52:42', '2015-11-06 08:00:34', 0, NULL),
(310, 'm_310', 'm_310', '', '', '', '', '', '', 0, 7, 'data/4/5/9/459.jpg', 0, 1, 49.9000, 0, 0, '2015-11-28', 0.22500000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-05 20:08:03', '2015-11-06 07:59:54', 0, NULL),
(311, 'm_311', 'm_311', '', '', '', '', '', '', 0, 7, 'data/4/6/0/460.jpg', 0, 1, 76.9000, 0, 0, '2015-11-28', 0.80500000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-05 20:20:20', '2015-11-06 07:59:19', 0, NULL),
(312, 'm_312', 'm_312', '', '', '', '', '', '', 0, 7, 'data/4/6/1/461.jpg', 0, 1, 40.0000, 0, 0, '2015-11-28', 0.30000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-05 20:31:32', '2015-11-06 07:58:46', 0, NULL),
(313, 'm_313', 'm_313', '', '', '', '', '', '', 0, 7, 'data/4/6/2/462.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-05 21:39:39', '2015-11-05 21:50:27', 0, NULL),
(314, 'm_314', 'm_314', '', '', '', '', '', '', 0, 7, 'data/4/6/3/463.jpg', 0, 1, 149.0000, 0, 0, '2015-11-28', 2.14000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-06 07:40:44', '2015-11-06 07:58:08', 0, NULL),
(315, 'm_315', 'm_315', '', '', '', '', '', '', 0, 7, 'data/4/6/4/464.jpg', 0, 1, 30.0000, 0, 0, '2015-11-28', 0.25000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-06 07:51:18', '2015-11-06 07:57:11', 0, NULL),
(316, 'm_316', 'm_316', '', '', '', '', '', '', 0, 7, 'data/4/6/5/465.jpg', 0, 1, 94.9000, 0, 0, '2015-11-28', 0.94000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-06 08:14:48', '2015-11-06 08:18:24', 0, NULL),
(317, 'm_317', 'm_317', '', '', '', '', '', '', 0, 7, 'data/4/6/6/466.jpg', 0, 1, 69.9000, 0, 0, '2015-11-28', 0.78000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-06 08:22:31', '2015-11-06 08:25:48', 0, NULL),
(318, 'm_318', 'm_318', '', '', '', '', '', '', 0, 7, 'data/4/6/7/467.jpg', 0, 1, 99.9000, 0, 0, '2015-11-28', 1.22500000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-06 08:34:31', '2015-11-06 08:38:22', 0, NULL),
(319, 'm_319', 'm_319', '', '', '', '', '', '', 0, 7, 'data/4/6/8/468.jpg', 0, 1, 88.0000, 0, 0, '2015-11-28', 1.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-06 08:43:59', '2015-11-06 08:48:20', 0, NULL),
(320, 'm_320', 'm_320', '', '', '', '', '', '', 0, 7, 'data/4/6/9/469.jpg', 0, 1, 71.9000, 0, 0, '2015-11-28', 0.93000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-07 07:43:53', '2015-11-07 07:48:42', 0, NULL),
(321, 'm_321', 'm_321', '', '', '', '', '', '', 0, 7, 'data/4/7/0/470.jpg', 0, 1, 29.9000, 0, 0, '2015-11-28', 0.34000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-07 08:07:36', '2015-11-07 08:12:26', 0, NULL),
(322, 'm_322', 'm_322', '', '', '', '', '', '', 0, 7, 'data/4/7/1/471.jpg', 0, 1, 29.9000, 0, 0, '2015-11-28', 0.37000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-07 08:17:35', '2015-11-07 08:20:43', 0, NULL),
(323, 'm_323', 'm_323', '', '', '', '', '', '', 0, 7, 'data/4/7/2/472.jpg', 0, 1, 29.9000, 0, 0, '2015-11-28', 0.34000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-07 08:24:40', '2015-11-07 08:28:03', 0, NULL),
(324, 'm_324', 'm_324', '', '', '', '', '', '', 0, 7, 'data/4/7/3/473.jpg', 0, 1, 29.9000, 0, 0, '2015-11-28', 0.34000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-07 08:40:39', '2015-11-07 08:43:28', 0, NULL),
(325, 'm_325', 'm_325', '', '', '', '', '', '', 0, 7, 'data/4/7/4/474.jpg', 0, 1, 24.9000, 0, 0, '2015-11-28', 0.15000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-07 08:49:35', '2015-11-07 08:53:10', 0, NULL),
(326, 'm_326', 'm_326', '', '', '', '', '', '', 0, 7, 'data/4/7/5/475.jpg', 0, 1, 39.9000, 0, 0, '2015-11-28', 0.22000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-07 09:01:25', '2015-11-07 09:09:36', 0, NULL),
(327, 'm_327', 'm_327', '', '', '', '', '', '', 0, 7, '-.jpg', 0, 1, 69.9000, 0, 0, '2015-11-28', 0.72000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-07 09:14:51', '2015-11-07 09:23:44', 0, NULL),
(328, 'm_328', 'm_328', '', '', '', '', '', '', 0, 7, 'data/4/7/9/479.jpg', 0, 1, 77.9000, 0, 0, '2015-11-28', 0.74000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-07 09:32:16', '2015-11-07 09:36:05', 1, NULL),
(329, 'm_329', 'm_329', '', '', '', '', '', '', 0, 7, 'data/4/8/0/480.jpg', 0, 1, 59.9000, 0, 0, '2015-11-28', 0.45000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-07 09:42:07', '2015-11-07 09:45:37', 0, NULL),
(330, 'm_330', 'm_330', '', '', '', '', '', '', 0, 7, 'data/4/8/1/481.jpg', 0, 1, 99.9000, 0, 0, '2015-11-28', 1.45000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-07 09:55:53', '2015-11-07 09:59:44', 0, NULL),
(331, 'm_331', 'm_331', '', '', '', '', '', '', 0, 7, 'data/4/8/2/482.jpg', 0, 1, 39.9000, 0, 0, '2015-11-28', 1.06500000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-07 19:12:56', '2015-11-14 17:31:46', 1, NULL),
(332, 'm_332', 'm_332', '', '', '', '', '', '', 0, 7, 'data/4/8/3/483.jpg', 0, 1, 79.9000, 0, 0, '2015-11-28', 1.17000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-08 07:48:27', '2015-11-08 07:52:08', 0, NULL),
(333, 'm_333', 'm_333', '', '', '', '', '', '', 0, 7, 'data/4/8/4/484.jpg', 0, 1, 71.0000, 0, 0, '2015-11-28', 1.01000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-08 08:00:43', '2015-11-08 08:04:41', 0, NULL),
(334, 'm_334', 'm_334', '', '', '', '', '', '', 0, 7, 'data/4/8/5/485.jpg', 0, 1, 51.9000, 0, 0, '2015-11-28', 1.42000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-08 08:12:54', '2015-11-15 10:23:59', 0, NULL),
(335, 'm_335', 'm_335', '', '', '', '', '', '', 0, 7, 'data/4/8/6/486.jpg', 0, 1, 68.0000, 0, 0, '2015-11-28', 0.71000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-08 08:24:47', '2015-11-08 08:28:03', 0, NULL),
(336, 'm_336', 'm_336', '', '', '', '', '', '', 0, 7, 'data/4/8/7/487.jpg', 0, 1, 69.0000, 0, 0, '2015-11-28', 0.83000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-08 08:33:03', '2015-11-08 08:38:05', 0, NULL),
(337, 'm_337', 'm_337', '', '', '', '', '', '', 0, 7, 'data/4/8/8/488.jpg', 0, 1, 79.9000, 0, 0, '2015-11-28', 1.25000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-08 08:43:27', '2015-11-08 08:46:32', 0, NULL),
(338, 'm_338', 'm_338', '', '', '', '', '', '', 0, 7, 'data/4/8/9/489.jpg', 0, 1, 48.0000, 0, 0, '2015-11-28', 1.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-08 09:19:51', '2015-11-08 09:23:49', 0, NULL),
(339, 'm_339', 'm_339', '', '', '', '', '', '', 0, 7, 'data/4/9/0/490.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-08 09:48:43', '2015-11-08 09:54:32', 0, NULL),
(340, 'm_340', 'm_340', '', '', '', '', '', '', 0, 7, 'data/4/9/1/491.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-08 09:59:52', '2015-11-08 10:03:33', 0, NULL),
(341, 'm_341', 'm_341', '', '', '', '', '', '', 0, 7, 'data/4/9/2/492.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-08 10:07:31', '2015-11-08 10:15:22', 0, NULL),
(342, 'm_342', 'm_342', '', '', '', '', '', '', 0, 7, 'data/4/9/3/493.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-08 10:20:08', '2015-11-08 10:23:33', 0, NULL),
(343, 'm_343', 'm_343', '', '', '', '', '', '', 0, 7, 'data/4/9/4/494.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-08 11:17:22', '2015-11-08 11:21:41', 0, NULL),
(344, 'm_344', 'm_344', '', '', '', '', '', '', 0, 7, 'data/4/9/5/495.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-08 11:25:47', '2015-11-08 11:28:16', 0, NULL),
(345, 'm_345', 'm_345', '', '', '', '', '', '', 0, 7, 'data/4/9/6/496.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-08 11:31:56', '2015-11-08 11:36:15', 0, NULL),
(346, 'm_346', 'm_346', '', '', '', '', '', '', 0, 7, 'data/4/9/7/497.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-08 11:39:11', '2015-11-08 11:43:21', 0, NULL),
(347, 'm_347', 'm_347', '', '', '', '', '', '', 0, 7, 'data/4/9/8/498.jpg', 0, 1, 34.9000, 0, 0, '2015-11-28', 0.94500000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-09 21:19:13', '2015-11-14 10:34:04', 1, NULL),
(348, 'm_348', 'm_348', '', '', '', '', '', '', 0, 7, 'data/4/9/9/499.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-14 09:47:14', '2015-11-14 09:57:17', 0, NULL),
(349, 'm_349', 'm_349', '', '', '', '', '', '', 0, 7, 'data/5/0/0/500.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-14 10:00:09', '2015-11-14 10:05:47', 0, NULL),
(350, 'm_350', 'm_350', '', '', '', '', '', '', 0, 7, 'data/5/0/1/501.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-14 10:12:43', '2015-11-14 10:18:26', 0, NULL),
(351, 'm_351', 'm_351', '', '', '', '', '', '', 0, 7, 'data/5/0/2/502.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-14 10:22:51', '2015-11-14 10:25:13', 0, NULL),
(352, 'm_352', 'm_352', '', '', '', '', '', '', 0, 7, 'data/5/0/3/503.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-14 16:53:45', '2015-11-14 16:56:29', 0, NULL),
(353, 'm_353', 'm_353', '', '', '', '', '', '', 0, 7, 'data/5/0/4/504.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-14 17:00:58', '2015-11-14 17:03:51', 0, NULL),
(354, 'm_354', 'm_354', '', '', '', '', '', '', 0, 7, 'data/5/0/5/505.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-14 17:07:55', '2015-11-14 17:11:29', 0, NULL),
(355, 'm_355', 'm_355', '', '', '', '', '', '', 0, 7, 'data/5/0/6/506.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-14 17:15:28', '2015-11-14 17:25:37', 0, NULL),
(356, 'm_356', 'm_356', '', '', '', '', '', '', 0, 7, 'data/5/0/7/507.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-14 17:37:21', '2015-11-14 17:46:14', 0, NULL),
(357, 'm_357', 'm_357', '', '', '', '', '', '', 0, 7, 'data/5/0/8/508.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-14 17:50:05', '2015-11-14 17:53:18', 0, NULL),
(358, 'm_358', 'm_358', '', '', '', '', '', '', 0, 7, 'data/5/0/9/509.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-14 17:59:18', '2015-11-14 18:02:54', 0, NULL),
(359, 'm_359', 'm_359', '', '', '', '', '', '', 0, 7, 'data/5/1/0/510.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-14 18:06:30', '2015-11-14 18:10:07', 0, NULL),
(360, 'm_360', 'm_360', '', '', '', '', '', '', 0, 7, 'data/5/1/3/513.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-15 09:41:31', '2015-11-15 09:44:37', 0, NULL),
(361, 'm_361', 'm_361', '', '', '', '', '', '', 0, 7, 'data/5/1/4/514.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-15 09:52:27', '2015-11-15 09:56:15', 0, NULL),
(362, 'm_362', 'm_362', '', '', '', '', '', '', 0, 7, 'data/5/1/5/515.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-15 10:00:36', '2015-11-15 10:03:12', 0, NULL),
(363, 'm_363', 'm_363', '', '', '', '', '', '', 0, 7, 'data/5/1/6/516.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-15 10:08:10', '2015-11-15 10:11:14', 0, NULL),
(364, 'm_364', 'm_364', '', '', '', '', '', '', 0, 7, 'data/5/1/7/517.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-15 10:50:40', '2015-11-15 10:53:36', 0, NULL),
(365, 'm_365', 'm_365', '', '', '', '', '', '', 0, 7, 'data/5/1/8/518.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-15 10:57:44', '2015-11-15 11:00:20', 0, NULL),
(366, 'm_366', 'm_366', '', '', '', '', '', '', 0, 7, 'data/5/1/9/519.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-15 11:06:21', '2015-11-15 11:11:31', 0, NULL),
(367, 'm_367', 'm_367', '', '', '', '', '', '', 0, 7, 'data/5/2/0/520.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-15 11:16:55', '2015-11-15 11:21:38', 0, NULL),
(368, 'm_368', 'm_368', '', '', '', '', '', '', 0, 7, 'data/5/2/4/524.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, '2015-11-20 08:29:09', '2015-12-08 00:06:11', 16, NULL),
(369, 'm_369', 'm_369', '', '', '', '', '', '', 0, 7, 'data/5/2/5/525.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-20 09:02:35', '2015-11-21 09:00:43', 1, NULL),
(370, 'm_370', 'm_370', '', '', '', '', '', '', 0, 7, 'data/5/2/6/526.jpg', 0, 1, 0.0000, 0, 0, '2015-11-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 0, 1, 1, 0, 1, '2015-11-20 09:39:33', '2015-11-21 09:01:49', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tag` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(46, 4, 'As 50 Receitas Preferidas - Por Palmirinha', '&lt;p&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;  &lt;span style=&quot;font-size: 12pt;&quot;&gt;     &lt;em&gt;&lt;strong&gt; “As 50 Receitas Preferidas, por Palmirinha”&lt;/strong&gt; &lt;/em&gt;traz uma seleção especial de receitas deliciosas para todas as ocasiões. Com lindas fotos e organizado por temas para facilitar a consulta, as receitas apresentam variedade de ingredientes e praticidade para o dia a dia.&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        O livro ainda apresenta um capítulo especial de dicas e segredos da Palmirinha, para facilitar o preparo dos alimentos e para que suas receitas fiquem ainda mais saborosas.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(47, 4, 'As Melhores Receitas do &quot;Que Marravilha!&quot;', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O programa de televisão homônimo é a base deste livro que traz receitas preparadas pelo chef. No ''Que Marravilha!'', Claude visa ensinar aos participantes a fazer pratos - que eles depois reproduzem em suas casas sob os olhos do chef francês. Por vezes, Claude prepara receitas especiais e chama convidados famosos para acompanhá-lo. Ilustrado e dividido em seis capítulos - Entradas, Carnes, Peixes, Massas, Sobremesas e Dicas -, este livro se propõe a ensinar de modo objetivo a criar pratos como a rabada desfiada com polenta de agrião ou o crepe de bacalhau e alho-poró gratinado.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(48, 4, 'Azeite de Oliva: Sabor, Estética e Saúde', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        O azeite de oliva é um produto alimentar muito antigo, produzido a partir da prensagem de azeitonas. Faz parte da elogiada dieta dos povos do Mediterrâneo e empresta aos alimentos seu aroma e sabor inconfundíveis. Mas são suas propriedades nutricionais e medicinais que fazem do azeite um alimento especial, que tem sido reconhecido como benéfico para proteger o aparelho cardiovascular, reduzir o &quot;mau&quot; colesterol, elevar o &quot;bom&quot; colesterol, fortalecer o sistema imunológico, ser uma fonte de antioxidantes que combatem os radicais livres e previnem o envelhecimento, entre outras funções.&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Este livro reúne informações sobre as propriedades, usos e aplicações do azeite de oliva na alimentação, no tratamento de disfunções, na estética e cosmética, na prevenção de doenças e na manutenção da saúde, mostrando por que o azeite tem sido tão recomendado na atualidade, e trazendo dicas de como utilizar esse saboroso alimento para ter uma dieta nutritiva, gostosa e muito saudável.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(43, 4, 'Alho: Sabor e Saúde', '&lt;p&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: 12pt;&quot;&gt; Não restam dúvidas acerca dos inúmeros benefícios do alho para a nossa saúde: é um antibiótico natural que combate muitas infecções, baixa o colesterol, protege o coração e favorece a circulação; é também um poderoso depurador e contém uma dose elevada de vitamina C, além de selênio - mineral antioxidante sendo ainda recomendado para o alívio de perturbações respiratórias.&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Conheça mais detalhadamente as indicações de seu uso no combate e prevenção de enfermidades, bem como os diversos benefícios que este alimento proporciona à sua saúde, além de aprender como escolhê-lo na hora da compra, como armazená-lo e como utilizá-lo para aproveitar melhor as suas propriedades em deliciosas receitas.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(44, 4, 'Alimentação Desintoxicante', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Desintoxicar é deixar sair as toxinas, desenvenenar, limpar. Isso não se refere apenas a eliminar do organismo substâncias nocivas, como o excesso de aditivos dos alimentos industrializados, agrotóxicos, resíduos de medicamentos, de fumo, álcool, café, etc. Todos os dias, as tensões, estresse e emoções conturbadas da sociedade moderna e acelerada também poluem nosso corpo e mente, agravando a intoxicação geral e bloqueando os mecanismos naturais de eliminação de impurezas. Agredidos e com o sistema imunoló- gico sobrecarregado, sentimo-nos esgotados, vulneráveis, irritados e ansiosos. Por isso, desintoxicar-se deve ser um hábito diário, e os alimentos desintoxicantes são os melhores parceiros de um organismo saudável, do equilíbrio emocional e do vigor mental. Este livro, muito mais que um guia de informações e receitas desintoxicantes, apresenta um novo conceito alimentar, e é uma poderosa ferramenta para a transformação e aquisição de novos hábitos, que levarão seu corpo a um estado de plena saúde e vitalidade, base fundamental para alcançar uma vida melhor.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(45, 4, 'Arabes no Brasil - Historia e Sabores', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Através de belas ilustrações e fotografias, esse livro apresenta a história da comunidade árabe desde da chegada aos portos brasileiros até hoje, mostrando como os imigrantes se inseriram na nossa sociedade. Receitas criadas por grandes chefs de orígem árabe ilustram o sucesso da mistura entre as culturas brasileira e árabe faz desta obra tanto um livro de história quanto um livro de culinária.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(39, 4, 'A Cozinha Vegetariana de Astrid Pfeiffer', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;&lt;strong&gt;&lt;em&gt;A Cozinha vegetariana de Astrid Pfeiffer&lt;/em&gt; &lt;/strong&gt;traz 60 apetitosas receitas veganas para tornar a sua mesa mais leve, saborosa e saudável. Preparados com ingredientes naturais e integrais, os pratos são rápidos e fáceis de fazer. Se você é vegetariano, tem algum amigo ou parente vegetariano, ou come carne mas quer melhorar a qualidade de sua alimentação, este livro é para você. Todos os pratos vêm com uma tabela de nutrientes fácil de consultar, nenhuma receita contém lactose, e 80% delas não contêm glúten.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(40, 4, 'A Importância da Linhaça na Saúde', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Da mesma autora do consagrado &lt;em&gt;“&lt;strong&gt;O Poder de Cura do Limão&lt;/strong&gt;”&lt;/em&gt;, este livro traz um estudo detalhado das propriedades nutracêuticas da Linhaça, importante alimento para a conquista do equilíbrio orgânico, eficiente na prevenção de diversas doenças e no tratamento de alguns quadros de deficiências hormonais. Esta semente “poderosa” proporciona energia sem aumentar o peso de quem a consome, além de ativar o sistema imunológico e prevenir contra o envelhecimento. Um livro para aqueles que estão em busca de uma vida mais saudável e acreditam que a natureza oferece saúde em abundância.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(42, 4, 'A Saúde na Panela', '&lt;p&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;        &lt;span style=&quot;font-size: 12pt;&quot;&gt;Este livro é mais do que um simples manual de culinária, pois ele se destina a todos aqueles leitores que, por algum motivo, trocaram ou pretendem trocar seus hábitos alimentares por outros mais saudáveis, deixando de lado os alimentos que, elaborados com ingredientes nocivos à saúde, agridem o nosso corpo.&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        A intenção da Autora é que este livro venha a facilitar, de alguma forma, a vida das pessoas nessa transição para uma alimentação saudável, sem que precisem passar pelas dificuldades que ela mesma enfrentou ao buscar modificar radicalmente a alimentação de sua família, sem, no entanto, acomodar-se apenas à proibição do uso de determinados alimentos, o que tornaria bastante monótono e frustrante o cardápio alimentar, principalmente para as crianças.&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        &lt;strong&gt;&lt;em&gt;&quot;A Saúde na Panela&quot;&lt;/em&gt; &lt;/strong&gt;prova que a alimentação natural, ao contrário do que a maioria das pessoas (em decorrência da falta de informação) imagina, é saudável, bonita e saborosa, podendo ser bastante diversificada.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(38, 4, 'A Cozinha dos Alquimistas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;       &lt;span style=&quot;font-size: 12pt;&quot;&gt; Pense em receitas deliciosas, fáceis de fazer e testadas no ambiente familiar ou em recepções finas. Sabores que agradam porque evocam a infância e outros porque são tradicionais, com um toque de inovação.&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Junte a isso a magia dos cristais, na forma de gotinhas que vão permitir transmutar a energia dos alimentos, criando sua própria alquimia. Com um resultado muito eficiente, os Elixires de Cristais atuam de forma natural nos corpos sutis, de maneira semelhante às essências florais, e facilitam o reequilíbrio energético, que se reflete em bem-estar emocional, psíquico e físico.&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Agora só falta você abrir o livro e seguir esta trilha nova que Berenice de Lara criou na culinária, aliando as possibilidades terapêuticas dos cristais à sua alimentação do dia a dia. Fórmulas especialmente desenvolvidas sobre áreas de interesse geral facilitam seu uso, como Alto Astral, Amor e Auto Estima, Harmonia e Equilíbrio, Limpeza Energética e Proteção, entre muitas outras, que podem ser adquiridas para uso na culinária caseira.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(37, 4, 'A Comida Baiana de Jorge Amado', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Só de ler Jorge Amado a gente já fica com água na boca cada vez que um personagem resolve comer. Acarajé, vatapá, feijoada, beiju de tapioca, moqueca - e ainda nem chegamos à sobremesa! Paloma Jorge Amado compilou as receitas de pratos que aparecem na obra de seu pai e o resultado é este livro, que ainda apresenta citações, divertidas crônicas e maravilhosas fotos. E mais: receitas testadas com o método Panelinha! Até quem não sabe cozinhar vai conseguir trazer um pouco da Bahia para a cozinha de casa.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(34, 4, '100 Receitas Preferidas - Palmirinha', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt;&quot;&gt;&lt;span style=&quot;font-family: georgia, palatino;&quot;&gt;Reunião das receitas publicadas nos livros &lt;em&gt;&quot;50 Receitas Preferidas&quot;&lt;/em&gt; e &lt;em&gt;&quot;50 Receitas Fáceis e Rápidas&quot;&lt;/em&gt;, este livro traz uma seleção especial de pratos deliciosos para todas as ocasiões, elaborados por Palmirinha, a vovó mais querida do Brasil. &lt;/span&gt;&lt;span style=&quot;font-family: georgia, palatino;&quot;&gt;Com lindas fotos e organizado por temas para facilitar a consulta, as receitas apresentam variedade de ingredientes e praticidade para o dia a dia. À obra apresenta um capítulo especial de dicas e segredos da Palmirinha, para facilitar o preparo dos alimentos e deixar os pratos ainda mais saborosos.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(35, 4, '200 Receitas de Grelhados Suculentos', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Receitas criativas ensinam a grelhar carne, aves, peixes, frutos do mar e legumes. Este livro oferece opções de petiscos, bifes e costelas, espetos, hambúrgueres e cachorros-quentes. Além disso, traz sugestões para fazer pratos vegetarianos e ensina a grelhar milho, batata e cogumelos. A obra conta ainda, com exclusivas receitas de acompanhamentos, como saladas, molhos e marinadas, que deixam os pratos ainda mais apetitosos. Inclui um capítulo somente com sobremesas originais, como salada de frutas grelhadas ou bananas grelhadas com sorvete.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(36, 4, 'A Arte Culinária de Julia Child', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Julia Child, a introdutora da culinária francesa nos Estados Unidos, oferece respostas completas para diversas questões, que são de grande ajuda na cozinha doméstica. Ao longo dos anos, ela desenvolveu novas técnicas para antigos problemas usando utensílios tradicionais de cozinha e produtos disponíveis no mercado. Neste livro, um resumo essencial e indispensável da arte culinária de Julia Child, todas as soluções estão ao alcance da sua mão, com receitas detalhadas e truques para se aprimorar no fascinante mundo da alta gastronomia.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(33, 4, '30 Minutos e Pronto', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Neste livro, Jamie Oliver desafia os leitores a criar refeições completas em 30 minutos. Além dos 50 diferentes cardápios, o chef dá dicas de como ter e manter uma cozinha organizada, e incentiva o consumo de alimentos naturais e orgânicos, cada uma das refeições foi preparada com alimentos que combinam uns com os outros e testadas por ele e por sua equipe. Entre as opções, estão pratos com carne, opções vegetarianas, massas e doces, sempre compondo uma refeição completa com prato principal, acompanhamentos e sobremesa, tudo feito em apenas meia hora. O chef não esquece também da importância dos elementos usados para servir os alimentos: travessas, tigelas, tábuas, esteiras, xícaras de chá estão entre as peças que podem compor uma mesa, dependendo da refeição que escolher.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(31, 4, '12 Passos para o Crudivorismo', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Por que comemos mais que o necessário? Por que fazemos péssimas escolhas alimentares mesmo quando desejamos ser saudáveis? Essas questões são abordadas de forma simples e direta neste &lt;em&gt;&lt;strong&gt;&quot;12 Passos para o Crudivorismo&quot;&lt;/strong&gt;&lt;/em&gt;. Maior divulgadora do green smoothie, a vitamina verde que está mudando a vida de muita gente, Victoria Boutenko expõe nesta obra inspiradora os benefícios da dieta vegetariana crua e desvenda as razões que nos levam a comer compulsivamente mal.&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Este livro oferece técnicas para criar e manter hábitos alimentares mais saudáveis, ajudando o leitor a fazer com a maior tranquilidade possível a transição dos alimentos cozidos para a dieta crua. Uma mudança desse porte, porém, tem grande impacto em todos os aspectos da existência, e Victoria Boutenko ressalta a importância de, nesse processo, dar e receber apoio e viver em harmonia com aqueles que não compartilham nossos pontos de vista. Esta obra destina-se, assim, a todos os interessados em conquistar uma vida melhor através da alimentação.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(32, 4, '15 Minutos e Pronto', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt;&quot;&gt;        &lt;span style=&quot;font-family: georgia, palatino;&quot;&gt;Neste livro, Jamie Oliver se supera e mostra aos leitores que é possível, mesmo com pratos rápidos, comer de forma saudável. As receitas, inspiradas em pratos de todas as partes do mundo, têm em média 580 calorias por porção, fazendo com que se encaixem facilmente como uma das refeições diárias. &lt;/span&gt;&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Com o auxílio da nutricionista Laura Parr e sua equipe, Oliver criou os pratos sempre com a preocupação de mesclar os ingredientes envolvendo alimentos integrais, grãos, vegetais, ervas frescas, frutas cítricas, proteínas de qualidade e outros itens indispensáveis para uma refeição balanceada. &lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        O livro tem um espaço dedicado à importância da nutrição no dia a dia das pessoas. Laura Parr explica quais são os grupos de alimentos e como é possível atingir um equilíbrio ideal entre eles, além de várias dicas que comprovam que é viável ter uma alimentação saudável todos os dias.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(59, 4, 'Como Degustar Vinhos', '&lt;p&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt;&quot;&gt;Um curso completo para quem tem sede de sabores e, também, de informação. Assim pode ser definido &lt;strong&gt;&lt;em&gt;&quot;Como Degustar Vinhos&quot;&lt;/em&gt;&lt;/strong&gt;, guia escrito por uma das maiores autoridades mundiais em vinho: a inglesa Jancis Robinson.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro aborda a história do vinho, procurando esclarecer como fatores diversos (do clima ao tamanho da garrafa) agem sobre o sabor e revelar truques sobre como servir e beber. Contém uma série de exercícios práticos, a maioria deles relacionados à arte da degustação. Em cada exercício prático, a autora indica exemplos de vinhos próprios para a degustação sugerida. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Demonstrações sobre como determinadas combinações de pratos e vinhos podem funcionar, sugestões para futuros exercícios de degustação e um glossário que visa a decifrar o jargão dos enólogos completam a obra.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(58, 4, 'Comidinhas Francesas Vegetarianas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Seja um vegetariano convicto ou apenas um apreciador da riqueza de sabores e texturas que frutas, verduras e legumes proporcionam, este livro foi criado para você. Aqui, estão reunidas mais de 30 receitas testadas e aprovadas de pratos principais, entradas, lanches e sobremesas que vão proporcionar refeições equilibradas, nutritivas e muito saborosas. Pratos como Risoto com queijo de cabra e hortelã, pudinzinhos de aspargos com tofu, omelete de alcachofras, panquecas de farelo de aveia e baunilha e pannacotta com manga e maracujá vão fazer você se esquecer de carnes, aves e peixes.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(56, 4, 'Churrasco: Uma Paixão Nacional', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro é dedicado a quem celebra a vida com sabor e sabe cultivar a amizade com alegria. E o churrasco, unanimidade e uma verdadeira paixão nacional, é a maneira mais brasileira de festejar a vida. Neste livro reunimos o essencial para quem deseja iniciar-se no universo do churrasco e trazemos novas ideias para aqueles que já esgrimam na arte de espeto. Receitas inusitadas, ideias contemporâneas e a própria história do churrasco estão na brasa e no ponto para a sua apreciação.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(30, 4, 'Brasil: Gastronomia, Cultura e Turismo', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;&lt;strong&gt;&lt;em&gt;        Brasil: Gastronomia, Cultura e Turismo&lt;/em&gt;&lt;/strong&gt;, mais que um livro de cozinha, é uma viagem pelo grande mosaico dos sabores brasileiros. Apoiada em uma extensa pesquisa, Eva Ribenboim Steinbruch selecionou receitas típicas de cada região do Brasil. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        O volume reúne sessenta receitas rigorosamente testadas, entre entradas, pratos principais e sobremesas. Foram escolhidos preferencialmente os pratos tradicionais, preparados a partir de ingredientes regionais – entre as receitas do Norte, por exemplo, as de peixes, muitas vezes combinadas com mandioca, enquanto os pratos nordestinos revelam a influência africana. No Sudeste destaca-se a feijoada, além de receitas à base de frutos do mar, vindos das regiões litorâneas, e da comida de “tropeiro” do interior de São Paulo e de Minas. Do Centro-Oeste vêm os preparados de pequi, de arroz, de milho ou banana, ou ainda à base de peixes de rio. Por fim, a mesa do Sul é representada pelo churrasco gaúcho, pelo barreado paranaense, e pelos camarões de Santa Catarina, bem como pelas tradições trazidas pelos imigrantes alemães e italianos.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Além de fotografias primorosas, delicadas ilustrações da própria autora enriquecem a obra. Um glossário final com informações complementares explica termos e ingredientes regionais e oferece sugestões para substituição de ingredientes.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(28, 4, 'Brasil Bem Temperado: Nordeste', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;É um livro único, que reúne as mais gostosas receitas e os interessantes e ricos aspectos culturais dos nove estados nordestinos brasileiros. Vista sob uma perspectiva histórica – invocando tradições, costumes, citações literárias, locuções populares, músicas, festas e danças – as receitas trazem à mesa pratos cheios de sabor que servem para exibir as virtudes da nossa Natureza, privilegiando a multiplicidade dos pratos tropicais, coloridos e fartos, com uma riqueza ímpar de frutas, carnes, peixes, frutos do mar. O pano de fundo desta obra é o forte sentimento de identidade do país, pois busca estreitar a ligação do leitor com os valores culturais de nossa terra, ao resgatar a memória dos diferentes grupos formados de nossa sociedade. Este livro tempera a cultura da cozinha. É a culinária tendo a ligação com o povo do lugar, a comida como companheira do homem na sua caminhada. Os ingredientes típicos de cada estado do Nordeste são utilizados em receitas deliciosas e cheias de sabor, entremeadas com informações pitorescas sobre costumes e tradições, artesanatos, expressões populares, citações literárias dos principais autores de nossa língua, músicas, danças e festas dos nove estados nordestinos.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(29, 4, 'Brasil, Rítmos e Receitas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;&lt;strong&gt;&lt;em&gt;&quot;Brasil, Ritmos e Receitas&quot;&lt;/em&gt;&lt;/strong&gt; reúne dois importantes elementos que contribuem para a formação da identidade cultural brasileira: música e culinária. A obra traz 52 receitas da tradicional cozinha brasileira, revisitadas pela técnica francesa da chef Morena Leite, que nos apresenta uma infinidade de cores, cheiros e sabores excepcionais encontrados no nosso país. São entradas, saladas, pratos e sobremesas que vão desde o baião de dois, feijoada, moqueca, a sobremesas como pudim de tapioca, torta de cupuaçu, carambolas flambadas com vinho do porto e outros. Acompanha o livro um CD que proporciona uma viagem musical pelos domínios da nossa culinária, com canções interpretadas pela cantora Mariana Aydar, por meio de letras atuais, como &quot;Amigos Bons&quot; de Júnio Barreto, Bactéria e Otto e clássicos regravados da MPB como &quot;Vatapá&quot; de Dorival Caymmi, &quot;Vendedor de Bananas&quot; de Jorge Benjor e &quot;Jurubeba&quot; de Gilberto Gil. As músicas falam de pratos e comidas da tradição brasileira e suas partituras estão graciosamente impressas nas páginas do livro. O trabalho fotográfico de Emiliano Boccato retrata, com riqueza de detalhes, a diversidade e beleza da gastronomia nacional. &lt;/span&gt;&lt;/p&gt;', '', '', ''),
(26, 4, 'As Ervas na Cozinha', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 10pt;&quot;&gt; &lt;span style=&quot;font-size: 12pt;&quot;&gt;       As delícias dos rituais culinários e dos momentos compartilhados à mesa são a inspiração para As ervas na cozinha, que chega à sua terceira edição. Em seu segundo livro, Rosy L. Bornhausen convida não apenas a descobrir o mundo das ervas, mas a conhecer tudo o que possa ser temperado, melhorado ou ressaltado por elas.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Agrupadas segundo as estações do ano, as receitas são acompanhadas por dicas para servi-las de maneira elegante e prática. Entre mais de noventa receitas estão suflê, para a primavera; fettuccine com ervas e queijo, para o verão; panquecas, para o outono; e sopa de milho com creme de ervas, para o inverno.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        O livro conta um pouco da história da alimentação, com fatos e curiosidades sobre as tradições gastronômicas do mundo, a origem dos ingredientes e condimentos e seu papel na história de diferentes povos. Assumindo um tom pessoal e despretensioso, a autora apresenta as informações necessárias para tirar o máximo proveito das ervas aromáticas e dos temperos naturais. As ilustrações de Maria Eugênia traduzem a delicadeza que Rosy L. Bornhausen imprimiu ao texto.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(27, 4, 'As Ervas que Curam', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;No curso da história da humanidade, curandeiros, bruxos, alquimistas, monges e filósofos escreveram sobre os milagres e mistérios das plantas curativas. Na China, Pen Tsao, o grande livro das ervas, já era um guia para os doentes 3 mil anos antes de Cristo. No Egito, médicos e sacerdotes incluíam o alho na dieta dos escravos, que despendiam grandes quantidades de energia na construção das pirâmides. E os indígenas sempre detiveram esse conhecimento, que foi também o de nossos avós e bisavós. Porque tudo vem da Natureza e a ela torna, no bom e sábio uso das ervas pode se encontrar a libertação dos estados de medo e ansiedade, da fadiga, dos problemas no sono e de muitas doenças, o reencontro com o apetite, com a boa memória e com o bom humor. Este livro promove um resgate literalmente salutar da sabedoria fitoterápica. &lt;/span&gt;&lt;/p&gt;', '', '', ''),
(55, 4, 'Chocolate: Energia e Saúde', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Que o chocolate carrega em sua fórmula algo de misterioso e envolvente, não restam dúvidas, os chocólatras que o digam. Há quem faça qualquer coisa para garantir seu pedaço. De fato, o chocolate tem propriedades capazes de melhorar o humor, a beleza e a saúde. Cosumindo-o com o devido equilíbrio e precaução, não há limites para o que se pode fazer com o chocolate. Conheça neste livro mais da história, composição, usos, aspectos e receitas feitas com chocolate e saiba como se beneficiar das deliciosas propriedades desse incrível &quot;alimento dos deuses&quot;, que pode fazer muito bem à saúde e ser consumido &quot;sem Culpa&quot;.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(53, 4, 'Câncer: O Poder da Alimentação na Prevenção e Tratamento', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Com uma linguagem simples, este livro contém informações gerais para todos os que se interessam em saber algo sobre o câncer, com descrição dos principais tipos da doença, suas prováveis e múltiplas causas e também fatores que ajudam em seu tratamento e prevenção.&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        A necessidade de mudança de hábitos alimentares é enfatizada, e a autora preparou 28 dietas vegetarianas com mais de 400 receitas. O livro é enriquecido com tabelas de composição química dos alimentos. Sem dúvida trata-se de um livro que, associado ao tratamento médico, muito poderá contribuir na melhora da qualidade de vida de todos nós.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(25, 4, 'As Ervas do Sítio', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 10pt;&quot;&gt; &lt;span style=&quot;font-size: 12pt;&quot;&gt;       A 12ª edição de As ervas do sítio traz de volta o pioneirismo na divulgação das propriedades medicinais, cosméticas e culinárias das plantas. Com um texto pessoal e despretensioso, a autora Rosy L. Bornhausen apresenta informações necessárias sobre o uso das ervas no dia a dia, mostrando como são capazes de curar, embelezar e dar sabor a nossas vidas.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        O título resgata um pouco da história e das tradições relativas a dezenas de espécies, revelando os segredos do cultivo, processamento e uso de cada uma delas. Entre as trinta ervas catalogadas estão a babosa, a camomila, a erva-cidreira e o manjericão.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt; background-color: initial;&quot;&gt;        Rosy L. Bornhausen foi uma das primeiras autoras brasileiras contemporâneas a tratar de conceitos como a valorização da cultura popular, a contenção do consumo e a busca pelo equilíbrio, popularizando assuntos amplamente debatidos pela sociedade atual. Assim, os livros são um verdadeiro elo de ligação entre o homem de hoje e conhecimentos ancestrais esquecidos em meio às atribulações da vida moderna. Ilustrado com o traço gracioso de Maria Eugênia, o livro inclui um glossário com nomes científicos e populares das ervas, com versões em inglês e em francês.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(22, 4, 'Açúcar: Uma Sociologia do Doce, com Receitas de Bolos e Doces do Nordeste do Brasil', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Responsável pelo primeiro grande ciclo econômico da história do Brasil, a cana-de-açúcar moldou a formação e a identidade do Nordeste, o jeito de ser e a alma do nordestino. &quot;Sem açúcar não se compreende o homem do Nordeste&quot;, afirma Gilberto Freyre em Açúcar, subtitulado &quot;uma sociologia do doce, com receitas de bolos e doces do Nordeste do Brasil&quot;. Lançado em 1939, o livro despertou uma certa surpresa entre intelectuais. Ora, ora, um escritor consagrado tratando de receitas, falando de tachos de cobre, de ponto de doce, de fôrmas, de colheres de pau, de raladores, coisas tão femininas e tão da cozinha...&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(23, 4, 'A Cozinheira e o Guloso: Conversas de Comer e Receitas de Fazer', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Thomaz Souto Corrêa apresenta lembranças e considerações sobre seu tema predileto — a comida — em textos cheios de humor e elegância, complementados por receitas criadas por Mazzô França Pinto: pratos fartos, de sofisticada simplicidade, feitos para serem degustados sem pressa, de preferência acompanhados por uma boa conversa entre amigos. Entre as mais de oitenta receitas do livro estão arroz de suã, cuscuz de camarão, pernil de vitela, cozinhadinho e mousse de queijo-de-minas com compota de casca de jabuticaba, passando pelas tradicionais quitandas mineiras, com sua profusão de bolinhos, biscoitos e broas.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt; background-color: initial;&quot;&gt;        Combinando o texto arguto de um dos mais importantes jornalistas do país às deliciosas criações de uma cozinheira brilhante, o livro traz ainda belíssimas fotos de Andreas Heiniger, transformando-se em uma autêntica celebração dos sentidos, do prazer da boa mesa e da alegria da convivência.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(24, 4, 'Alla Napoletana', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Entre, fique à vontade! Você está no Jardim de Napoli, uma das casas mais tradicionais de São Paulo, que tem orgulho de receber aqueles que apreciam a boa mesa num  ambiente agradável. O livro &lt;em&gt;&lt;strong&gt;Alla Napoletana&lt;/strong&gt; &lt;/em&gt;retrata tudo aquilo em que acredita ao resgatar a história da gastronomia sob o ponto de vista do imigrante italiano, um povo que ajudou a escrever a história da maior cidade do país, São Paulo. E como se não bastasse a rica gastronomia, herdamos ainda a alegria e a garra desse povo que, ainda hoje, tem muito que agregar à nossa cultura. Este livro permite ainda que seus leitores desfrutem das receitas e possam levar um pouquinho de um dos mais renomados restaurantes de São Paulo para suas casas. Venha desfrutar e se deliciar com as receitas maravilhosas que essa rica cozinha tem a nos oferecer.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(21, 4, '100 Garrafas Extraordinarias da Mais Bela Adega do Mundo', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A Editora Boccato, junto com a Editora Gaia, traz para o Brasil o livro &lt;em&gt;&lt;strong&gt;&quot;100 Garrafas Extraordinárias da Mais Bela Adega do Mundo&quot;&lt;/strong&gt;&lt;/em&gt;, do colecionador francês Michel-Jack Chasseuil. Conhecido por sua adega recheada de rótulos notáveis, com cerca de 35 mil garrafas algumas datando do século 18. Michel decidiu reunir em seu livro os cem exemplares mais históricos, de 1735 até 2005, com fotografias de Jacques Caillaut. Entre os cem vinhos escolhidos para compor o livro, estão itens históricos como um licor Marie-Brizard de 1912, conhecido como Du Titanic _uma cuvée especial de 98 garrafas com purpurina de ouro, feitas especialmente para o transatlântico que afundou no Oceano Atlântico em sua viagem inaugural. Por algum motivo, algumas das garrafas ficaram em terra; quatro delas foram adquiridas pelo fabricante de automóveis Louis Renault, que estava para embarcar no navio, mas perdeu a viagem. Michel-Jack Chasseuil adquiriu a garrafa em um leilão em 1998, e, na época do lançamento do filme Titanic, em 2001, a Maison Marie-Brizard tentou comprar a garrafa, mas Chasseuil não consentiu a venda.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(49, 4, 'Bela Cozinha - As Receitas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Contrariando o mito de que comida saudável é sem graça, Bela Gil mostra que é possível se alimentar de forma equilibrada, privilegiando ingredientes naturais, sem perder o sabor. Este livro ensina a fazer 50 pratos deliciosos apresentados em seu programa de televisão homônimo. Mais do que um livro de receitas, a obra convida à reflexão sobre nossos hábitos alimentares e traz dicas sobre como pequenas mudanças podem fazer uma grande diferença. Dividido em categorias: sopas e mingaus; legumes e folhas verdes; petiscos; dia a dia; molhos e sobremesas. As receitas são acompanhadas por comentários sobre as propriedades dos ingredientes, informações de rendimento e tempo médio de preparo e ícones que sinalizam se a receita é vegana, vegetariana ou sem glúten.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(50, 4, 'Bolos e Docinhos Decorados', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Neste livro, a conceituada confeiteira Juliet Stallwood ensina que é possível transformar docinhos simples em quitutes que vão impressionar a família e os amigos com pouco tempo e utensílios básicos. Ela apresenta mais de 40 sugestões para decorar bolos, cupcakes, biscoitos, entre outros, mostra como cortar a massa em camadas, montar e rechear andares, e explica como preparar coberturas, como pasta americana e marzipã, além de flores, laços e bonequinhos comestíveis para fazer enfeites.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(51, 4, 'Box - Alimentos Funcionais', '&lt;p&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;Existe uma série de alimentos que, além de nutrir, satisfazendo as necessidades alimentares básicas do ser humano, são capazes também de desempenhar um efeito benéfico nas funções do corpo, melhorando a saúde, o bem-estar, e reduzindo o risco de doenças. São os chamados alimentos funcionais. A série Alimentos Funcionais da Editora Alaúde traz os nutracêuticos até você, com informações completas sobre seus benefícios, características e usos, para uma alimentação equilibrada e uma vida saudável.&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;A série é composta de 10 livros:&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;1. Maçã - equilíbrio e saúde&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;2. Mel - uma vida doce e saudável&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;3. Alho - sabor e saúde&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;4. Gergelim - a semente da saúde&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;5. Azeite de oliva - sabor, estética e saúde&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;6. Pimenta - e seus benefícios a saúde&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;7. Soja - nutrição e saúde&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;8. O poder do limão&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;9. A importância da linhaça na saúde&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;10. O poder medicinal do coco e do oleo de coco extra virgem&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(19, 4, 'Comida Típica da Fazenda', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Existirá algo que caracterize mais uma nação que seu jeito de se alimentar? Somos um povo que gosta de mesa farta, variada e alegre, espelho de nossa formação pluralista. Neste livro veremos uma parte, uma seleção das receitas que compõem o repertório do cardápio dos restaurantes da franquia Divino Fogão. A história completa da Rede São Paulo I, agora Divino Fogão, registra mais de 30 anos de existência e começa com o jovem Reinaldo Marques Varela, nascido em São Paulo (SP), vivendo na capital na busca de algum tipo de negócio, com uma proposta ''diferente''. Em 1984, Reinaldo e seus dois primos, Álvaro e Luiz Antônio Marques de Oliveira, também crescidos em fazendas do interior paulista, se uniram para montar um restaurante. Reuniram economias, o apoio dos pais e da vovó Iza para dar início ao empreendimento. Escolheram uma casa, situada numa ruazinha estratégica do bairro de Pinheiros. O imóvel foi todo reformado e decorado com ares de autêntica casa de fazenda e batizado de &quot;São Paulo I&quot;. E, para caracterizar ainda mais o ambiente, as modinhas mais genuínas da música sertaneja eram apresentadas ao vivo por duplas de cantadores. E assim, em 1984, nascia o primeiro restaurante, semente de uma ideia que viria a render tantos frutos pelo Brasil todo.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(11, 4, 'Dicionário Gastronômico: Vinho', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Um livro dedicado aos amantes do vinho e da gastronomia, no qual o leitor é convidado a passear neste universo de surpreendentes descobertas. A autora, que fez parte do alvorecer da comunicação voltada à cultura do paladar, realizou uma extensa pesquisa sobre a história do vinho e reuniu textos com verbetes de A a Z. O dicionário também apresenta 20 deliciosas receitas de drinks, pratos salgados e sobremesas feitas com vinho e que foram elaboradas pelo chef Christian Formon, sendo todas ilustradas com belíssimas fotografias que auxiliam no preparo e na montagem das receitas. Uma publicação desenvolvida aos apreciadores dessa bebida milenar e indispensável para todos que buscam o prazer à mesa.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(12, 4, 'Os Pães de Que Mais Gosto', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Pão feito na hora é sempre irresistível. Em &lt;strong&gt;Os Pães de Que Mais Gosto&lt;/strong&gt;, Rogério Shimura, uma das maiores autoridades de panificação do país, reuniu suas 40 receitas favoritas. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;No livro, ele ensina receitas dos principais tipos de pães, como baguete, pão de torresmo, focaccia, pão de cará, de mandioquinha, de ervas, de batata, de aveia e muitos outros. Um livro dedicado a ensinar tanto a arte como o ofício da preparação de pães, no qual o leitor é convidado a passear nesse universo de surpreendentes descobertas, com receitas que encantam e conquistam. &lt;/span&gt;&lt;/p&gt;', '', '', ''),
(13, 4, 'Sabores Vegetarianos: 70 Receitas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;&lt;strong&gt;&lt;em&gt;&quot;Sabores Vegetarianos - 70 Receitas&quot;&lt;/em&gt;&lt;/strong&gt; foi criado para dar sugestões na montagem de um cardápio vegano para o dia a dia. Um cardápio saboroso com algumas receitas tradicionais e outras nem tanto assim. São 70 receitas que tem como objetivo mostrar o quanto a comida vegetariana pode ser saborosa, colorida, cheia de texturas e extremamente versátil. Inclusive quando se trata de sobremesas.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(14, 4, 'Novas Receitas Light', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Inicialmente vá ao mercado como quem vai fazer um passeio agradável e escolha alimentos naturais e de baixa caloria: frutas, ervas aromáticas, grãos integrais, peixes fresquinhos. Depois volte para a sua casa e, antes de cozinhar, vista uma roupa bonita e confortável, afinal o ato de cozinhar é um ritual que requer meditação, elegância e simplicidade... Assim sugere a autora Myrian Abicair na apresentação deste &quot;Novas Receitas Light&quot;. À frente do Spa Sete Voltas há mais de dezoito anos, ela reuniu neste livro uma série de receitas nutritivas, saborosas e fáceis de fazer. Para Myrian Abicair, o fazer e o degustar a própria comida é uma forma de conhecer-se melhor: &quot;Mais do que saciar a fome, o ato de comer é despertar o paladar, aguçar a visão, estimular o olfato, proporcionar o prazer&quot;.Com pratos atraentes e sofisticados é possível saciar-se, ainda que comendo uma dieta de 600 a 1.200 calorias. Vale destacar ainda a beleza presente nas fotografias de Tuca Reines e André Boccato. &quot;Saber comer é uma arte que se aprende educando os sentidos e respeitando a si próprio.&quot;&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(15, 4, 'Banquetes Diet', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Perder peso, mas sem perder o prazer de comer bem... Essa é uma das principais sugestões de &lt;em&gt;&lt;strong&gt;&quot;Banquetes Diet&quot;&lt;/strong&gt; &lt;/em&gt;de Myrian Abicair: um belo livro que contém saborosíssimas receitas para entradas, acompanhamentos, carnes, massas, aves, peixes e sobremesas. Proprietária do Sete Voltas Spa Resort, a autora dedica-se há mais de dezoito anos à elaboração de uma dieta gratificante e gostosa, priorizando o máximo gosto com o mínimo peso calórico. A proposta deste livro vem responder diretamente ao anseio por uma nova abordagem do prazer de ''comer bem'', eliminando suas extravagâncias e excessos, assim como suas consequências. Com prefácio do crítico gastronômico Josimar Melo e deliciosas fotografias de Tuca Reinés, este livro é um convite para degustar uma vida mais saudável e prazerosa.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(16, 4, 'Receitas Saborosas Vegetarianas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Com receitas originais e criativas que definitivamente fogem da monotonia, &lt;em&gt;&lt;strong&gt;&quot;Receitas Saborosas Vegetarianas&quot;&lt;/strong&gt; &lt;/em&gt;é uma festa aos sentidos. Se muitos entendem a base da culinária vegetariana consistir em insossos legumes cozidos ou simples saladas cruas, aqui fica claro que o resultado do preparo de lanches, tortas, saladas, hambúrgueres, risotos e aperitivos pode ser a um só tempo delicioso e saudável. Experimente um lanche de abobrinha na ciabatta, um suflê de couve-flor ou um inusitado nhoque de batata-doce com espinafre e se surpreenda com as possibilidades da culinária vegetariana. Assim, esta série de receitas, das mais simples até as mais requintadas, é dotada de uma rara persuasão: agrada a todos, vegetarianos ou não.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(17, 4, 'Receitas Maravilhosas do SpaMed - Para Uma Dieta de Manutenção', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro oferece opções de pratos para aqueles que querem fazer uma dieta de manutenção do peso para alcançar a saúde ideal. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A arte de equilibrar calorias com alimentação saborosa e balanceada, combinando proteínas, carboidratos, gorduras, vitaminas e sais minerais, dominada por poucos especialistas no mundo, está pintada em cada uma dessas receitas. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O Spamed é um local adequado onde as pessoas podem se hospedar para serem avaliadas e orientadas por uma equipe multidisciplinar, em um ambiente sem estresse e com um convívio agradável, podendo fazer uma dieta de emagrecimento saudável e uma reeducação alimentar. Esta obra traz uma seleção das melhores receitas do Spamed.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(18, 4, 'Capim Santo - Receitas para Receber Amigos', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Neste livro, Morena Leite divide um pouco da história gastronômica de sua mãe arquiteta que virou cozinheira, com o paladar e olfato aguçados e sempre com um olhar de designer para a construção dos pratos nas suas cores e formas. Conta a história da chef responsável por uma cozinha intuitiva e inventiva, que foi construída com base na alimentação saudável. Em Trancoso, na Bahia, cresceu entre as panelas da cozinha do restaurante de seus pais, recebendo, com eles, as pessoas que vinham de outros mares. Morena seguiu o caminho inverso dos portugueses e saiu de Porto Seguro em busca de novos sabores e saberes. Formada em 1999 como chef de cozinha pela Cordon Bleu, mais que as técnicas, aprendeu a valorizar os produtos locais. Durante sua volta, começou a pesquisar a gastronomia brasileira e toda sua miscigenação, e hoje sua cozinha é baseada em um tripé: a cozinha saudável, na qual foi criada e de onde vem seu DNA gastronômico; a técnica Francesa, que aprendeu na escola; e os ingredientes brasileiros, sua raiz. &quot;Hoje, antes que chef, sinto-me uma banqueteira. Gosto de preparar grandes jantares com pequenos e muitos pratos e contar histórias através de diferentes sabores, pois todos eles refletem as vivências, viagens, culturas, pessoas e cozinhas que já conheci&quot;, relata a autora desta obra&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(8, 4, 'A Culinária Japonesa sem Mistérios', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        &lt;strong&gt;A Culinária Japonesa Sem Mistérios&lt;/strong&gt; é um guia que não apenas revela os segredos da cozinha japonesa como também pode transformar aficionados e amadores em autênticos sushimen. Detalhe curioso: a autora é dinamarquesa. A ideia de escrever um livro sobre a culinária japonesa surgiu depois que Silla Bjerrum treinou chefs e ministrou (a curiosos, empresários e até instituições de caridade) aulas sobre como fazer sushi. Silla percebeu que, apesar de os pratos serem aparentemente complicados, não era difícil ensinar como prepará-los, mesmo para iniciantes. Ela afirma que qualquer pessoa disposta a aprender é capaz de fazer comida japonesa. Os ingredientes necessários para isso vão além de peixes muito frescos e arroz perfeitamente cozido: é preciso ter paciência, persistência e uma boa dose de habilidade e criatividade. Em culinária japonesa sem mistérios, a autora começa apresentando o material básico, como o kit inicial para o preparo, a escolha dos peixes certos e o cozimento ideal do arroz, e chega a variadas receitas tradicionais de sushis, sashimis, tempurás, pratos com macarrão oriental e sobremesas. Com excelentes fotos de Lars Ranek, muitas delas mostrando o passo a passo, o livro traz ainda, nas páginas finais, uma lista de endereços onde se podem comprar ingredientes japoneses em São Paulo e no Rio de Janeiro.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(9, 4, 'Dicionário Gastronômico: Ervas &amp; Especiarias com Suas Receitas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O encantador e pouco conhecido universo das ervas e especiarias ainda é um mistério até para chefs de cozinha, que encontram dificuldades em diferenciar certas espécies e em definir qual a mais adequada para este ou aquele prato. Ervas &amp;amp; Especiarias com suas receitas apresenta 53 tipos de temperos e 26 misturas usadas nos cinco continentes. Considerada uma das obras mais completas do Brasil sobre o tema, o autor discorre sobre ervas e especiarias de várias partes do mundo organizadas em ordem alfabética com nome científico e nome popular traduzido em cinco idiomas: espanhol, inglês, francês, italiano e alemão. Os textos fornecem informações científicas e históricas e dicas práticas para o dia a dia, voltadas para os profissionais de culinária, pessoas que gostam de cozinhar ou simplesmente apreciam uma gastronomia aromática. A obra traz também uma série de receitas, todas testadas na cozinha experimental da Editora Boccato e organizadas por Maria Helena Vieira. São receitas fáceis de realizar e que incentivam o uso de ervas e especiarias diferentes e pouco conhecidas.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(10, 4, 'História da Alimentação no Brasil', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Um observador malicioso, por certo gourmet e gourmand, observou que o índice de civilização de um povo pode ser medido pelo requinte de sua cozinha. Tempos antes, o glutão Brillat-Savarin já afirmara que o destino das nações depende da maneira como elas se alimentam. Interessado na mistura do feijão com o arroz, no preparo dos temperos, no corte de legumes e verduras, nas delícias das sobremesas, nos rituais e superstições alimentares, Luís da Câmara Cascudo reuniu durante mais de vinte anos informações (e provou comidas) para traçar a sua &quot;História da Alimentação no Brasil&quot;, espécie de história do brasileiro, através daquilo que entra pela sua boca. Com uma abrangência enciclopédica, este livro é o mais completo e fascinante estudo sobre a cozinha brasileira, em seus múltiplos aspectos, a obra divide-se em duas partes. Na primeira, o autor analisa o tríplice legado que, misturado, refogado e temperado, iria formar a cozinha brasileira típica: a herança indígena, africana e portuguesa. A segunda parte vai muito além do estudo da cozinha brasileira, com seus sabores e odores, pratos típicos e misturas, registrando e analisando, com gula, mas sem pressa, os múltiplos elementos sociais que giram próximo à cozinha: a sociologia da alimentação, o ritmo da refeição (dos bons tempos em que a família se reunia ao redor da mesa patriarcal à época do  fast-food, o folclore e as superstições ligadas à alimentação, as bebidas de preferência do brasileiro. Discute ainda questões que afetam o paladar e o apetite de todos nós, como os mitos ligados à cozinha africana e a contribuição de imigrantes, sobretudo alemães e italianos.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(60, 4, 'Confeitaria Colombo: Sabores de Uma Cidade', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A Confeitaria Colombo completou, em 2014, 120 anos. Presente no coração do Rio de Janeiro em um elegante imóvel no Centro da cidade, se transformou em um dos mais tradicionais e reconhecidos símbolos cariocas. Inaugurada quando o Rio era a capital do país, nos primeiros anos do Brasil Republicano, a casa sempre foi frequentada pelos mais importantes personagens brasileiros e inúmeros clientes que fazem da Confeitaria uma unanimidade e um sucesso há mais de um século. Este livro, com 20 receitas tradicionais e contemporâneas da casa, revela como a Colombo, um dos mais tradicionais e conhecidos símbolos cariocas, se manteve como cenário de importantes eventos da história e reflexo vivo do tempo. Uma história de dar água na boca&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(61, 4, 'Confeitaria Dukan', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Quem já fez alguma dieta sabe que viver sem doces e sobremesas é uma das maiores dificuldades. Pensando nisso, o Dr. Pierre Dukan - contando com a colaboração de centenas de seguidores de seu bem sucedido método de emagrecimento - elaborou receitas de sobremesas deliciosas que tornarão as quatro etapas da dieta (ataque, cruzeiro, consolidação e estabilização) muito mais fáceis e prazerosas. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro traz receitas criadas especialmente para o método que já conquistou milhões de adeptos em todo o mundo. E pensando no público brasileiro, a obra conta com 30 novas receitas, como brigadeiro, bem-casado, bolo de cenoura e pudim de leite. As 100 receitas inéditas provam que é possível comer com prazer sem sair da dieta.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(62, 4, 'Conservas e Compotas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro traz opções irresistíveis para dar um toque especial no café da manhã, almoço, lanches e jantar. Apresenta as principais técnicas de 150 receitas que utilizam frutas cítricas, silvestres e tropicais, além de legumes frescos para fazer chutneys, picles, relishes, geleias e doces. Ricamente ilustrada, a obra ensina passo a passo como preparar e conservar essas deliciosas iguarias, que vão do ketchup caseiro a uma deliciosa geleia de vinho com pétalas de rosas. A autora também dá ideias criativas para aproveitar o melhor das frutas de cada estação por mais tempo.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(63, 4, 'Cora Coralina - Doceira e Poeta', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Em julho de 1979 o Brasil foi surpreendido com uma carta de Carlos Drummond de Andrade endereçada a uma poeta, até então, pouco conhecida, com o seguinte texto: &quot;Não tendo seu endereço, lanço essas palavras ao vento, na esperança que ele as deposite em suas mãos (...) Seu livro é um encanto, seu lirismo tem a força e a delicadeza das coisas naturais.&quot;. A poeta em questão, uma senhorinha de quase 90 anos, nasceu Ana Lins dos Guimarães Peixoto e a essa altura era conhecida como Cora Coralina, a doce poeta de Goiás. Embora escrevesse desde menina, essa senhora só publicou seu primeiro livro pouco antes de completar 76 anos, depois de ter ficado viúva. O que ela fez então nesses anos todos, antes de encantar o público e a crítica com sua prosa e seus poemas? Criou quatro filhos e trabalhou muito enquanto poetou. Morou por 45 anos no interior e na capital de São Paulo, onde vendeu livros, teve uma loja de armarinhos e uma chácara de flores. Ao voltar para Goiás, tornou-se doceira, junto a um fogão à lenha. Conhecedores da doçura de seus versos, os leitores de Cora Coralina sempre se perguntaram como teriam sido os doces feitos por ela. Para matar essa curiosidade, a Global Editora, com a anuência de Vicência Brêtas Tahan, filha da poeta, lançou &lt;strong&gt;&lt;em&gt;&quot;Cora Coralina Doceira e Poeta&quot;&lt;/em&gt;&lt;/strong&gt;. Uma obra planejada não só como um livro de receitas, mas também em comemoração aos 120 anos de nascimento da poeta e em homenagem a essa mulher aguerrida, que sempre esteve à frente de seu tempo.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(64, 4, 'Cozinha de Estar', '&lt;p&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt; &lt;span style=&quot;font-size: 12pt;&quot;&gt;       Cozinhar não precisa ser complicado. Mais ainda: pode ser uma delícia não só para os outros, mas para você. Foi-se o tempo em que receber os amigos em casa significava passar o dia todo no fogão, tentando executar uma sucessão de pratos elaborados a tempo de tomar pelo menos uma ducha. Mas nem por isso você vai receber seus convidados com um pacote de amendoim e dois litros de refrigerante.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Neste livro, Rita Lobo revela todos os segredos da arte de receber bem, deixar os convidados à vontade e surpreendê-los com pratos que vão parecer ter dado muito mais trabalho do que realmente deram — e você ainda vai se divertir nesse meio tempo, claro.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(65, 4, 'Cozinha de Origem', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O jovem paraense Thiago Castanho é um dos mais aclamados chefs da nova cozinha brasileira. Em receitas que celebram a tradição e a criatividade,Thiago compartilha segredos de família e delícias amazônicas, além de pratos de outras regiões assinados pelos chefs Felipe Rameh, Janaina e Jefferson Rueda, Roberta Sudbrack, Marcelo Amaral e Rodrigo Oliveira. Utilizando ingredientes típicos, como tucupi e farinha de tapioca, e com sugestões de variação com produtos encontrados com facilidade em todo o país, em mais de cem receitas Thiago ensina a fazer desde comidinhas de boteco e de rua, passando por acompanhamentos, como farofas, paçocas e molhos de pimenta, pratos com peixes, carnes e aves, até pães e sobremesas. Da culinária de outras regiões, estão presentes o Camarão da encosta, de influência caiçara, o gaúcho Arroz de carreteiro, o mineiro Pão de queijo, entre outros. Com belas imagens, o volume é publicado no Brasil em duas edições: português e inglês.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(66, 4, 'Cozinha para Homens', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro vem mostrar que cozinhar é uma gostosa aventura que está ao alcance de todos e que, além de ser um divertimento, é um aprendizado prazeroso. Não só os novatos na cozinha como também os mestres-cucas já habituados com o assunto gostarão de ter à mão este livro, cujas ideias e receitas enriquecerão seus cardápios.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Ao escrever este livro, a autora teve a feliz ideia de enriquecer o texto com trechos de autores consagrados, nacionais e estrangeiros, versando sobre os mais variados aspectos do ato de comer, desde o apetite natural de todo mundo até a requintada gula dos gourmets. O resultado, conforme o leitor constatará, revelou-se notável: a autora elaborou um livro de culinária inteligente, ornando com boa literatura receitas bem feitas, claras e bem explicadas.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Usando ingredientes fáceis de se encontrar, o livro ainda ensina a fazer molhos salgados e doces de dar água na boca, além de bolos, pães e biscoitos gostosos e divertidos e, finalmente, aperitivos práticos e bebidas. Não se trata de um simples livro de culinária, mas de uma obra que consegue dissipar o velho fantasma de que a boa cozinha exige tempo e disposição para gastar.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(67, 4, 'Cozinha Vegetariana', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Ao selecionar as 670 receitas para este livro, Caroline Bergerot não descuidou dos detalhes. Pensou na importância da beleza e do sabor dos alimentos sem se esquecer da necessidade de se manter um corpo saudável. Nesse livro, a autora  revela a fórmula de se fazer no dia-a-dia uma alimentação sem carnes de qualquer espécie, mas com todas as proteínas, vitaminas e sais minerais que nosso organismo pede. O sabor das receitas escolhidas mereceu uma atenção especial, em toda a variedade apresentada. A autora, expert em cozinha natural, usa a criatividade e acaba de vez com a idéia de que a cozinha vegetariana é sem graça porque não tem sabor. Caroline testou e aprovou todas as receitas, saborosas e saudáveis, que permitem o aproveitamento dos ingredientes que se tem em casa.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(68, 4, 'Cozinha Vegetariana Abóbora e Abobrinha', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Caroline Bergerot, autora do best-seller Cozinha Vegetariana, preparou uma série de livros, abordando em cada um deles um tema específico, com grande riqueza de detalhes, sendo indicados tanto para as pessoas que não têm prática na cozinha como para as mais experientes nesse ramo da atividade doméstica ou mesmo comercial. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Neste livro, a autora teve o cuidado de elaborar receitas dignas de figurar em exigentes cardápios. Para isso, usou com muita criatividade a internacional abobrinha italiana e, com muita imaginação, os variados e coloridos tipos de abóboras brasileiras. Na imensidão do nosso país, a abóbora toma várias designações e é consumida de inúmeras formas. As receitas deste livro, preparadas pela autora, certamente ampliarão ainda mais o cardápio dos leitores.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(69, 4, 'Cozinha Vegetariana Arroz e Risotos', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Caroline Bergerot, autora do best-seller Cozinha Vegetariana, preparou uma série de livros, abordando em cada um deles um tema específico, com grande riqueza dc detalhes, sendo indicados tanto para as pessoas que não têm prática na cozinha como para as mais experientes nesse ramo da atividade doméstica ou mesmo comercial.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Neste volume, a autora apresenta diversas opções de preparo do arroz integral, eliminando as possíveis dificuldades que alguns leitores poderiam encontrar no seu preparo. Para quem procura uma alimentação saudável, são dadas sugestões e dicas inéditas de como enriquecer as refeições com o tradicional arroz branco. Receitas básicas para preparar e servir o arroz podem ser encontradas aqui, como o Arroz Branco na Pressão ou o Arroz Integral na Panela de Pedra, O leitor também receberá sugestões sobre diversos tipos de risoto, desde os de preparo mais fácil até os mais elaborados, como o Risoto com Abobrinha Recheada ou o Risoto Palácio. Todos os risotos têm receitas de guarnições que completam a refeição, deixando-a, além de nutritiva, mais atraente e saborosa.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(70, 4, 'Cozinha Vegetariana Banana', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Caroline Bergerot, autora do best-seller Cozinha Vegetariana, preparou uma série de livros, abordando em cada um deles um tema específico, com grande riqueza de detalhes, sendo indicados tanto para as pessoas que não têm prática na cozinha como para as mais experientes nesse ramo da atividade doméstica ou mesmo comercial. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este volume traz sugestões práticas para o uso da banana, uma fruta popular que se torna extremamente requintada quando usada em receitas bem elaboradas. O leitor encontrará aqui sugestões básicas, como a tradicional Mariola, e também opções originais, como o Docinho de Festa. Para lanche rápidos e reforçados, o leitor encontrará o delicioso Panquecão de Banana e muitas outras sugestões de fácil preparo. Livros já publicados nesta série: Arroz e Risoto, Bolos; Doces, Granolas e Barrinhas de Cereais; Massas; Pizzas; Saladas; Sanduíches; Sopas e Crounts; Sucos e Vitaminas e Tortas Salgadas.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(71, 4, 'Cozinha Vegetariana Biscoitos', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Caroline Bergerot, autora do best-seller Cozinha Vegetariana, preparou uma série de livros, abordando em cada um deles um tema específico, com grande riqueza de detalhes, sendo indicados tanto para as pessoas que não têm prática na cozinha como para as mais experientes nesse ramo da atividade doméstica ou mesmo comercial.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Para completar lanches, desjejuns, cafés e chás da tarde, a autora nos brinda com este novo volume e apresenta-nos deliciosos biscoitos e bolachas que alegram qualquer reunião ou viagem. De um simples biscoito de polvilho a uma caprichada bolacha de tomate seco, ou ainda um biscoito de chocolate e nozes, este livro traz diversas receitas criativas que farão o leitor se deliciar do começo ao fim. De rápida e fácil preparação, as receitas se encaixam em todas as cozinhas e atendem a todos os gostos.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(72, 4, 'Cozinha Vegetariana do Mediterrâneo', '&lt;p&gt;&lt;span style=&quot;font-family: georgia,palatino; font-size: 10pt;&quot;&gt;Esta coletânea de criativas receitas vegetarianas desenvolvidas na cozinha do famoso Hotel-Fazenda Montali, na Itália, é uma verdadeira maravilha da gastronomia. As receitas clássicas da cozinha italiana são transformadas em pratos contemporâneos cheios de estilo e mostram as alturas a que a culinária vegetariana pode chegar. A obra revela os segredos de como fazer massas frescas leves e macias; como preparar um maravilhoso bolo de chocolate com o mínimo de esforço; como combinar sabores e texturas contrastantes para transformar receitas práticas em pratos divinos. Mais do que um livro de culinária, &quot;Cozinha Vegetariana do Mediterrâneo&quot; pode ser considerado também como um diário, no qual os autores expõem suas alegrias e desafios de forma bem-humorada.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(73, 4, 'Cozinha Vegetariana Doces', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Caroline Bergerot, autora do best-seller Cozinha Vegetariana, preparou uma série de livros, abordando em cada um deles um tema específico, com grande riqueza de detalhes, sendo indicados tanto para as pessoas que não têm prática na cozinha como para as mais experientes nesse ramo da atividade doméstica ou mesmo comercial. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A autora elaborou, para este volume sobre doces, receitas variadas e inéditas que incluem sobremesas, docinhos para festas e até frutas cristalizadas. Visando atender ao gosto ou à necessidade de cada um, são indicados vários tipos de adoçantes, desde o açúcar mascavo, ou o açúcar refinado, até a estévia, a frutose ou o açúcar encontrado nas frutas. Receitas rápidas, como o Crumble de Pera, e outras mais trabalhadas, como o Bombom de Tâmara, atenderão literalmente a todos os gostos.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(74, 4, 'Cozinha Vegetariana Granolas e Barrinhas de Cereais', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Caroline Bergerot, autora do best-seller Cozinha Vegetariana, preparou uma série de livros, abordando em cada um deles um tema específico, com grande riqueza de detalhes, sendo indicados tanto para as pessoas que não têm prática na cozinha como para as mais experientes nesse ramo da atividade doméstica ou mesmo comercial. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este volume apresenta aos leitores várias receitas de granolas e barrinhas de cereais de fácil elaboração, granolas rápidas, como a granola de Coco, e outras mais elaboradas e diferentes, como granola de maçã seca, barrinha de gergelim e coco, e outras mais sofisticadas, como a barrinha de chocolate e figo, darão um toque muito especial aos lanches. Os que apreciam granolas e barrinhas de cereais encontrarão neste volume um “prato cheio”.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(75, 4, 'Cozinha Vegetariana Maçã', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Caroline Bergerot, autora dos best-sellers &quot;Cozinha Vegetariana&quot; e de &quot;A Soja no seu Dia-a-Dia&quot;, preparou uma série de livros, abordando em cada um deles um tema específico, com grande riqueza de detalhes, sendo indicados tanto para as pessoas que não tem prática na cozinha como para as mais experientes nesse ramo da atividade doméstica ou mesmo comercial.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Sem grandes mistérios, esta fruta apreciada no mundo inteiro - a maçã - ganha destaque neste novo volume. A autora traz receitas especiais, criando pratos para diferentes situações. De receitas mais elaboradas, como crepe de maçã e nozes, até às mais rápidas e práticas, como o sanduíche leve, o leitor descobrirá a receita mais indicada para cada refeição e situação, descobrindo no mundo maravilhoso da culinária uma forma de descontração e alegria.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(76, 4, 'Cozinha Vegetariana Massas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Caroline Bergerot, autora do best-seller Cozinha Vegetariana, preparou uma série de livros, abordando em cada um deles um tema específico, com grande riqueza de detalhes, sendo indicados tanto para as pessoas que não têm prática na cozinha como para as mais experientes nesse ramo da atividade doméstica ou mesmo comercial. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este volume é dedicado especialmente às massas, desde o tradicional espaguete até deliciosas lasanhas, canelones e nhoques. As receitas, todas inéditas, são acompanhadas por um tipo diferente de molho, oferecendo ao leitor uma grande variedade de combinações de molhos e massas. Neste volume da série, são apresentadas receitas rápidas e práticas, como a receita de macarrão Bifun com Shitake, e também receitas mais elaboradas, como a lasanha com Cogumelos Secos.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(77, 4, 'Cozinha Vegetariana Milho', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Caroline Bergerot, autora de best-sellers de culinária, preparou uma série de livros em formato menor, abordando em cada um deles um tema específico, com grande riqueza de detalhes, sendo indicados tanto para as pessoas que não têm prática na cozinha como para as mais experientes nesse ramo da atividade doméstica ou profissional.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este volume, é dedicado ao milho, grão muito familiar a nós, brasileiros, que sabemos quão saboroso e versátil ele é, tornando-se quase indispensável em nossa cozinha. A autora nos oferece receitas de pratos doces e salgados, alguns muito simples em seu preparo e outros tantos, um pouco mais elaborados. Há também aqueles em que Caroline resgata e adapta receitas do interior de nosso país e que, com seu toque especial, certamente agradarão a todos os paladares.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(78, 4, 'Cozinha Vegetariana Saladas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Caroline Bergerot, autora do best-seller Cozinha Vegetariana preparou uma serie de livros, abordando em cada um deles um tema específico, com grande riqueza de detalhes, sendo indicados tantos para as pessoas que não têm prática na cozinha como para as mais experientes nesse ramo da atividade doméstica ou mesmo comercial.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Para os dias atuais, quando o que se procura cada vez mais é uma alimentação sadia e leve, este livro traz receitas inéditas e saborosas de diferentes tipos de saladas feitas com os diversos ingredientes que a natureza nos oferece. Neste volume. O leitor encontrará soluções rápidas para as refeições diárias, como a Salada de Aspargo e Melão, e também para ocasiões especiais, como a Salada Tropicália.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(79, 4, 'Cozinha Vegetariana Sanduiches', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Caroline Bergerot, autora do best-seller Cozinha Vegetariana, preparou uma série de livros, abordando em cada um deles um tema específico, com grande riqueza de detalhes, sendo indicados tanto para as pessoas que não têm prática na cozinha como para as mais experientes nesse ramo da atividade doméstica ou mesmo comercial. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este volume é inteiramente dedicado aos sanduíches, não apenas para completar o lanche, mas também para substituir saudavelmente algumas refeições tradicionais. Ele traz receitas leves e simples, como o sanduíche com Moyashi, e receitas de sanduíches mais nutritivos e elaborados, indicados para reuniões, festinhas e viagens. Completam o volume receitas de pastas, ketchups e queijos de soja, com as quais você porá em prática a sua capacidade de improvisar saudavelmente.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(80, 4, 'Cozinha Vegetariana Sopas e Croûtons', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Caroline Bergerot, autora do best-seller Cozinha Vegetariana, preparou uma série de livros, abordando em cada um deles um tema específico, com grande riqueza de detalhes, sendo indicados tanto para as pessoas que não têm prática na cozinha como para as mais experientes nesse ramo da atividade doméstica ou mesmo comercial. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Neste volume, são feitas diversas sugestões de sopas, que cuidam ao mesmo tempo de manter o sabor e o, valor nutritivo dos ingredientes, eliminando a ideia de que sopas são iguanas indicadas apenas para doentes e convalescentes. A autora mostra como pode ser gostoso servir sopas ou cremes às refeições, principalmente quando o clima está mais frio, com receitas simples e inéditas para o dia-a-dia, como a Sopa de Feijão, e cremes mais sofisticados, como o Creme de Alcachofra para ocasiões especiais.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(81, 4, 'Cozinha Vegetariana Sucos e Vitaminas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Caroline Bergerot, autora do best-seller Cozinha Vegetariana, preparou uma série de livros, abordando em cada um deles um tema específico, com grande riqueza de detalhes, sendo indicados tanto para as pessoas que não têm prática na cozinha como para as mais experientes nesse ramo da atividade doméstica ou mesmo comercial. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Para compor este volume, foram selecionadas varias receitas de sucos e vitaminas, desde o básico, para os principiantes na cozinha, como o Suco de Manga, até vitaminas originais, como as Vitaminas Energéticas, que completarão os lanches, enriquecendo-os. Todos esses sucos, cujas receitas são inéditas, são indicados para quem procura uma alimentação saudável e quer repor energias e vitaminas de forma saborosa e prática.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(82, 4, 'Cozinha Vegetariana Tortas Doces', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Caroline Bergerot, autora do best-seller Cozinha Vegetariana, preparou uma série de livros, abordando em cada um deles um tema específico, com grande riqueza de detalhes, sendo indicados tanto para as pessoas que não têm prática na cozinha como para as mais experientes nesse ramo da atividade doméstica ou mesmo comercial. Neste volume, a autora focalizou as tortas doces, tema muito apreciado não só no Brasil, mas em todo o mundo.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Como sempre, são apresentadas receitas variadas, desde as mais rápidas, para compor seu chá ou café, até aquelas mais elaboradas, que podem ocupar o honroso lugar de uma fina e deliciosa sobremesa.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(83, 4, 'Cozinha Vegetariana Tortas Salgadas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Caroline Bergerot, autora do best-seller Cozinha Vegetariana, preparou uma série de livros, abordando em cada um deles um tema específico, com grande riqueza de detalhes, sendo indicados tanto para as pessoas que não têm prática na cozinha como para as mais experientes nesse ramo da atividade doméstica ou mesmo comercial. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este volume traz uma rica variedade de tortas salgadas que ajudam a compor as refeições. Com muitas opções de recheios e massas diferentes, os leitores poderão ver como é fácil, rápido e gostoso preparar tortas deliciosas. Sugestões fáceis como o assado de Arroz Integral com Champignon mostram como podemos improvisar rapidamente uma refeição ou lanche. Opções mais requintadas, como a Torta de Abobrinha Italiana e Shiitake, são ótimas idéias para jantares mais completos.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(84, 4, 'Cozinhando Facil Com Grandes Marcas - Receitas de Natal', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;&lt;em&gt;&quot;Cozinhando Fácil com Grandes Marcas – Receitas de Natal&quot;&lt;/em&gt; traz uma imensa variedade de pratos para a sua cozinha, de fácil preparo, muita praticidade e com receitas que só usam ingredientes que já fazem parte da nossa vida. Para nós, este livro tem um significado muito especial, para você, amiga dona de casa, cada receita foi elaborada cuidadosamente com alegria, dedicação e muito carinho, para que vocês possam saborear as maravilhosas receitas para a ceia de Natal.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(85, 4, 'Crepes, Panquecas e Waffles', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Quem não aprecia sentar-se para um lanche e saborear um waffle crocante, acompanhado por sorvete, com uma calda quente de framboesa ou chocolate? Ou então, coberto com geléia de frutas, na hora do desjejum? Sem falar nos crepes enrolados, recheados com molhos especiais, para compor o almoço, ou ainda nas famosas panquecas, tacos, enchilladas, tortilhas ou burritos mexicanos - resgatados de sua forma original.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A autora conseguiu dosar, de uma forma surpreendente, os ingredientes que compõem as receitas aqui apresentadas, de tal forma que, certamente, serão apreciadas tanto por vegetarianos como por não vegetarianos. Isto tudo sem se descuidar, evidentemente, do aspecto nutricional contido nos pratos sugeridos.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(86, 4, 'Da Ervilha ao Piselli', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A edição especial de &lt;em&gt;&quot;Da Ervilha ao Piselli&quot;&lt;/em&gt; traz a surpreendente trajetória de Juscelino, que trabalhou como ajudante-geral, cumim, garçom, sommelier e maître até alcançar o posto de sócio do Piselli, um dos endereços mais badalados da gastronomia paulistana.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Juscelino é um profissional atencioso, refinado, elegante e carismático, características que se refletem no restaurante que ele comanda pessoalmente. Atencioso, refinado, elegante, Juscelino parece personificar as qualidades de seu restaurante – que faz questão de comandar pessoalmente –, localizado nos Jardins, uma das áreas mais nobres de São Paulo. Mas quem se encanta com sua figura carismática e seus conhecimentos sobre vinhos e cozinha italiana não imagina a riqueza de sua história.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O texto resgata os nuances de uma vida que começa como a de tantos outros: um migrante do interior que chega à metrópole em busca de trabalho. O que torna essa história única, é a perseverança, o talento e o esforço incansável de Juscelino, um exemplo do empreendedor brasileiro que não se deixa abater pelas adversidades. Ilustrado por fotografias de Marcelo Coelho, o livro traz 22 receitas do Piselli e criações inéditas.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(87, 4, 'Delícias Vegetarianas - Doces', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O desafio pode parecer difícil, mas não é impossível. Preparar bolos, mousses, brigadeiros, tortas e muitas outras delícias doces sem utilizar ovos, leite ou derivados é extremamente possível e o resultado, surpreendente. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Elaboradas por um time de chefs de primeira linha, as 60 receitas de doces que você encontra nas páginas deste livro irão deliciar o seu paladar. Uma coletânea com as melhores receitas publicadas na Revista dos Vegetarianos, todas criadas com muito carinho, sem utilização de ingredientes de origem animal. Seja para uma sobremesa prática e rápida ou um doce mais sofisticado para uma festa, você encontrará aqui uma boa sugestão repleta de doçuras, cores, sabores e muito respeito. Delicie-se!&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(88, 4, 'Dicionário de Termos de Gastronomia Frances/Português', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Helen Helene nasceu na cozinha, quer dizer, cresceu ao lado de seu pai, que foi  chef de cozinha e proprietário do restaurante Mexilhão por mais de trinta anos. Sempre ligada à gastronomia, a autora, que morou em Paris, sentiu necessidade de um dicionário que contivesse os principais termos de gastronomia em francês, pois, afinal, ninguém consegue (nem os franceses) lembrar de todos os nomes e nomenclaturas, que para os amantes da gastronomia e do vinho é como &quot;beber na fonte do conhecimento&quot;, ou seja, na gastronomia francesa que é mãe de todas as outras.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt; background-color: initial;&quot;&gt;A importância deste dicionário, é tanto de socorrer aos que dele necessitarem em suas viagens ou mesmo em uma situação mais sofisticada como também aos estudantes de gastronomia. Ele traz um anexo inédito sobre vinhos e queijos e suas regiões na França e nomes ilustres da gastronomia francesa, terminando com algumas receitas clássicas francesas e suas versões em português.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(89, 4, 'Dicionário Gastronômico - Pimentas com Suas Receitas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro de Linguanotto proporciona, aos aficionados por pimentas e aos mestres-cucas de oras vagas, uma oportunidade rara de conhecer alguns dos principais tipos de pimentas usados no mundo (e a maioria, felizmente, disponível também no Brasil). E o que é ainda melhor: ele ensina também como utilizá-las na prática, para extrair o máximo de seu sabor e beleza. &quot;Dicionário gastronômico: pimentas com suas receitas&quot; de certa forma dá continuidade ao projeto iniciado com &quot;Dicionário gastronômico: ervas &amp;amp; especiarias&quot;, do mesmo autor: ambos têm o grande mérito de lançar luz sobre estes mágicos, aromáticos e tantas vezes invisíveis ingredientes que dão alma às receitas mais simples. Indispensável para quem faz da cozinha e do preparo de pratos um verdadeiro ritual de prazer e descobertas. Bem-vindo a bordo do fascinante mundo das pimentas.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(90, 4, 'Doce Brasil Bem Bolado', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Com nomes inspirados na cultura e história brasileiras, o livro traz desde receitas simples, como o Bolo Futebol (que é feito de chocolate), até as mais sofisticadas, como o Bolo Chita, que leva hibisco na massa e no recheio. Todas as receitas são acompanhadas de uma pesquisa histórica, é o caso do Bolo Frevo, de pitanga, que conta sobre o surgimento desse ritmo carnavalesco; do Bolo Trancoso, de capim-santo com brigadeiro de capim-santo, com a história dessa cidade; e do Bolo Flores da Amazônia, de castanha-do-pará com recheio de açaí, uma homenagem a essa região. Um livro com bolos bem decorados e receitas deliciosas, que traz ao leitor dicas e técnicas maravilhosas e, sobretudo, é um livro que contém um pouco da história e da cultura do Brasil.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(91, 4, 'Dona Brazi: Cozinha Tradicional Amazônica', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Parceiras de fogão, Mara Salles e dona Brazi já pescaram formiga e prepararam uma paca, juntas, lá em São Gabriel da Cachoeira, terra de dona Brazi. Confira o depoimento de Mara, do restaurante Tordesilhas, sobre a cozinheira amazonense.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Em São Gabriel de Cachoeira, cidade de 18 mil habitantes no alto Rio Negro, fica a cozinha, o cultivo de ingredientes e todo o universo cultural de dona Brazi. Senhora de origem baré, a cozinheira amazonense encantou chefs renomados – de Alex Atala ao francês Pascal Barbot – com seus quitutes, sabores e ingredientes próprios.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Reunidas pela primeira vez em livro, as receitas de &lt;em&gt;&quot;Dona Brazi - Cozinha tradicional amazônica&quot;&lt;/em&gt; são uma incursão pelos temperos e texturas tão particulares da região. Textos da jornalista Maria da Paz Trefaut, fotos de Rogério Assis e um prefácio de Alex Atala completam uma aproximação afetiva do universo tradicional da cozinheira, numa mescla saborosa entre jornalismo, gastronomia e antropologia da alimentação. Do peixe no tucupi à farofa de caruru, passando por caldeiradas, guisados e patacones, seus pratos são uma amostra da mistura de cultura e etnias. A herança indígena aparece nos peixes e farofas carregados tantas vezes com murupi e pimenta verde.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(92, 4, 'É vinho, Naturalmente! Em Defesa do Vinho Orgânico e Biodinâmico', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Para oferecer um panorama satisfatório sobre as origens da videira, é preciso voltar atrás no tempo onde o mito se confunde com Pré-História. As origens do vinho pertencem a um passado remoto de muitos milhares de anos, não sendo possível estabelecer uma data exata para marcar o começo do cultivo da videira ou quando se iniciou o aproveitamento dela e, consequentemente, a produção do da bebida. Tampouco é possível afirmar com precisão de qual continente é originária. Este livro vai estudar com você as particularidades do trato da uva à produção do vinho.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(93, 4, 'Economize com Jamie', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Em sua nova obra, o chef inova mais uma vez mostrando aos leitores que cozinhar melhor é aproveitar bem os alimentos, e apresenta 120 deliciosas opções de pratos. Uma equipe de nutricionistas acompanha todo o trabalho para garantir que as receitas sejam equilibradas, contendo ingredientes de cada um dos grupos alimentares. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Ilustrado com belíssimas fotos, este livro ensina como comprar bem e desperdiçar menos. Na visão do chef inglês, comprar bem significa explorar supermercados, açougues, feiras, peixarias e mercadinhos do bairro: tudo vale a pena para encontrar um produto de excelente qualidade pelo melhor preço. Ele explica o que é preciso saber na hora de escolher os ingredientes e também como aproveitar ao máximo o que você tem em casa, substituindo alguns ingredientes por outros, evitando assim o desperdício.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(94, 4, 'Eu Não Consigo Emagrecer', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Tendo conquistado uma legião de fãs por todo o mundo - dentre os quais a famosa princesa Kate - o Dr. Pierre Dukan apresenta nesta obra sua revolucionária dieta. Excluindo as características mais rigorosas presentes em quase todos os métodos de emagrecimento que, muitas vezes, são o motivo para as pessoas pararem de segui-los, a dieta Dukan nos mostra quatro passos simples para a perda de peso sem que seja preciso passar fome ou desconforto.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Neste livro você aprenderá a se manter esbelto sem ter que recorrer a tabelas de calorias ou porções minúsculas de comida. Mais importante ainda: você estará livre para dar aquela saborosa escapada da dieta sempre que quiser, sem prejuízo para seu corpo ou sua autoestima.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(95, 4, 'Festa Vegetariana - 144 Receitas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Por quase uma década, dezenas de chefs talentosos mostraram nas páginas da Revista dos Vegetarianos. Esta obra traz uma seleção das melhores receitas publicadas. São ao todo 144 receitas entre doces e salgados, com opções para festas sofisticadas ou não. Com este livro suas próximas comemorações não sertão mais as mesmas. Seus convidados, vegetarianos ou não, ficarão encantados com as delícias presentes nesta rica coleção de receitas.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(96, 4, 'Festa Vegetariana: Receba os Amigos com Classe e Sabor', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro reúne 80 receitas deliciosas e sofisticadas para tornar a sua festa completa. Com ingredientes frescos, molhos encorpados e sabores marcantes, a chef Celia Brooks Brown coloca a culinária vegetariana em um novo patamar. Os cardápios para todas as ocasiões – e para festas de todos os tamanhos – facilitam o trabalho de organizar e preparar as receitas, liberando o tempo do anfitrião para desfrutar na companhia dos amigos iguarias como dumpling de ricota e ervas com molho de cogumelos e vodca, tajine de sete legumes e creme de maçã com merengue de gengibre. Contém ainda: estratégias de compra e estocagem de alimentos, dicas de organização e sugestões para decoração.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(97, 4, 'Gastrokid - o Livro da Gastronomia Infantil', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Para muitos de nós, essa é uma pergunta terrível. Para quem não liga muito, pode ser: nuggets de frango, ou batata frita, ou cachorro-quente. É disso que nossos filhos mais gostam, certo? Claro que nós, pais, queremos que eles gostem do que comem, mas também queremos que suas refeições sejam saudáveis e não incluam palavras como &quot;Lanche Feliz&quot; ou &quot;Tamanho Grande&quot;. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Se é isso o que você quer para sua família se alimentar bem, sem ter de preparar vários pratos todas as noites, &quot;&lt;strong&gt;Gastrokid – O Livro da Gastronomia Infantil&lt;/strong&gt;&quot; é a solução perfeita. E o que é um Gastrokid? Uma criança disposta a explorar intensamente novas experiências e gostos culinários. Este é o espírito do livro de receitas Gastrokid, onde você encontrará refeições rápidas, fáceis de preparar, à prova de crianças, que também agrada aos adultos, orgânicas, sustentáveis e, certamente, deliciosas, que os autores prepararam para seus filhos. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;As receitas de Gastrokids podem ser facilmente adaptadas às necessidades da sua família e foram criadas para libertá-lo da dependência por receitas. Se seus filhos gostam de alimentos mais untuosos, use mais gordura. Se você quer um sabor mais intenso, adicione suco de limão. Não gosta de salsinha? Deixe-a de fora. Além disso, incluímos algumas receitas para você cozinhar com seus filhos. Toda criança nasce Gastrokid. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro de receitas não tem medo de mostrar como alimentar a fome de curiosidade inata de seus filhos e, mais importante, como você pode começar a descobrir &quot;o Gastrokid que existe dentro de você&quot;.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(98, 4, 'Gergelim: A Semente da Saúde', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;&quot;Abre-te Sésamo!&quot; Quem não conhece essas palavras mágicas? O Sésamo nada mais é que  o nosso conhecido gergelim, e mágicas mesmo parecem ser as propriedades dessa notável semente, bem conhecida e usada no Oriente há séculos. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro trata sobre a versatilidade do gergelim, de seus mais variados usos, peculiaridades e das propriedades terapêuticas a partir da sua composição química. Esta publicação é um pequeno tratado, rico em informações, indicações, receitas e dicas sobre o gergelim.&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(99, 4, 'Guia A-Z de Plantas: Condimentos', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Uma breve história dos condimentos e informações detalhadas sobre 72 das plantas aromáticas mais utilizadas na culinária, incluindo suas propriedades medicinais e as combinações mais empregadas em diferentes culturas.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Baseada em sua experiência acadêmica e profissional e amparada por um cuidadoso levantamento bibliográfico, a engenheira agrônoma Paula Negraes desvenda a história das plantas aromáticas usadas na culinária desde a Antiguidade. Com uma linguagem clara e didática, ela reúne informações científicas ao mesmo tempo em que valoriza a intuição, sensibilidade e as tradições que cercam o uso dos temperos.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O livro relata aplicações rituais, discorre sobre a importância econômica e estratégica do comércio de especiarias e apresenta as virtudes terapêuticas e nutricionais daquelas que são “as amigas dos médicos e o prazer dos cozinheiros”, segundo a definição do imperador Carlos Magno (768-814 d.C.). Oferece, ainda, uma ficha completa para cada condimento, com dados técnicos, propriedades, usos, preparo, conservação e cultivo. As ilustrações delicadas de Mônica Negraes tornam a leitura mais prazerosa. No final, um glossário auxilia no esclarecimento de termos técnicos.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(100, 4, 'Indispensável - Receitas Vegetarianas Contemporâneas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Presentes na despensa de qualquer cozinha, os grãos são uma excelente opção para variar o cardápio do dia a dia e substituir a carne em inúmeras preparações. Neste livro eles se combinam com frutas, verduras e legumes, tudo temperado com diferentes azeites e manteigas, e se transformam em criações perfeitas para todas as ocasiões, do café da manhã ao jantar, de antepastos ligeiros a pratos substanciosos, de saladas leves a sopas reconfortantes, sem esquecer as doçuras que encerram perfeitamente as refeições. São 60 receitas deliciosas que representam a moderna culinária vegetariana: criativa, saborosa, indispensável.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(101, 4, 'Itália - Para Comer e Beber Bem', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Em &lt;strong&gt;&lt;em&gt;&quot;Itália – Para Comer e Beber Bem&quot;&lt;/em&gt;&lt;/strong&gt;, o restaurateur Juscelino Pereira e o jornalista Gerardo Landulfo compartilham com os leitores o conhecimento de mais de quinze anos de viagens enogastronômicas à Itália – realizadas tanto por paixão quanto por dever do ofício.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Diferente dos guias de viagem convencionais, este é um livro muito pessoal, em que os autores informam seus endereços favoritos como quem dá dicas a um amigo querido que vai viajar. E, para além das informações práticas, Juscelino e Gerardo explicam de forma bastante simples e objetiva as particularidades das diversas culinárias regionais italianas, relacionando-as a aspectos históricos e geográficos. O livro percorre cada uma das vinte regiões da Itália e seus principais itinerários gastronômicos, levando o leitor a descobrir as melhores mesas, os principais pratos, ingredientes e vinhos e os mais tradicionais produtores locais, desenhando um panorama desta que é uma das mais ricas cozinhas do mundo.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(102, 4, 'Jamie em Casa', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O que caracteriza a irreverência da culinária de Jaime Oliver é o uso de ingredientes frescos em suas receitas. E para não negar as raízes ele abre a porta da sua casa ao público. Se antes seus pratos já eram realizados com ingredientes fáceis de serem encontrados, e podiam ser feitos por quem não tem lá muita habilidade com o fogão, agora ficou ainda mais fácil se aventurar na cozinha. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Dividido pelas quatro estações climáticas - primavera, verão, outono e inverno - o livro traz receitas deliciosas. Mas não se trata de um livro vegetariano, pelo contrário. Há capítulos em que chef fala sobre a criação de aves, além de ensinar como preparar um bom churrasco. Jamie incentiva o leitor a ter sua própria plantação com uma lista de variedades de sementes que ele plantou em seu jardim. Além disso, ao final de cada receita, ele dá dicas sobre como cultivar cada ingrediente que utilizou.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(103, 4, 'Jantares do &quot;Que Marravilha!&quot;', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Quer impressionar alguém ou vai receber a família para jantar? Não importa a situação, o chef Claude Troisgros tem um cardápio adequado. De forma didática, ele resgata deliciosas receitas do programa “Que Marravilha!”, sucesso do canal GNT, e ensina corno preparar jantares diferentes. Este livro traz 14 menus com sugestões de entrada, prato principal e sobremesa, todos com dicas de vinho para harmonizar e criar um momento especial.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(104, 4, 'Jun Sakamoto: O Virtuose do Sushi', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A história de vida do sushiman mais conhecido de São Paulo é retratada com bom humor no texto do jornalista Thomaz Souto Corrêa, ao lado de fatos interessantes sobre a cultura e a culinária do Japão. Para os amantes da cozinha, o livro traz algumas das receitas mais conceituadas de Jun Sakamoto, acompanhadas de fotos e detalhadas explicações passo a passo.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;As fotografias de Cristiano Mascaro valorizam ainda mais a beleza das cidades japonesas – que Jun visitou durante a feitura da obra – enquanto as de Andreas Heiniger retratam, com muito estilo, os pratos preparados pelo sushiman. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Da mesma viagem surgiu o guia O Japão por Jun, com dicas exclusivas sobre lugares para conhecer em Tóquio, Kyoto e Osaka, principalmente. Para cada um correspondem indicações dos restaurantes favoritos de Jun Sakamoto, mais algumas atrações, lojas e hotéis, comentados pelo autor, além de lugares que ele gostaria de conhecer melhor.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(105, 4, 'Kinoshita e o Jazz de Murakami', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Um dos restaurantes japoneses mais famosos de São Paulo, o Kinoshita tem à frente o chef Tsuyoshi Murakami, genro e discípulo do fundador Toshio Kinoshita. A história da casa reflete a forma pela qual a cozinha nipônica deixou os limites da colônia para se transformar em uma das mais apreciadas, disseminadas e influentes da cidade.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt;&quot;&gt;&lt;span style=&quot;font-family: georgia, palatino;&quot;&gt;Agora, a trajetória do Kinoshita – desde sua fundação, em um modesto prédio no bairro oriental da Liberdade, até a mudança para um endereço nobre, onde se consolidou como um dos restaurantes mais sofisticados e premiados da cidade — e a excêntrica personalidade de Murakami são os temas do livro assinado pelo jornalista e escritor João &lt;/span&gt;&lt;span style=&quot;font-family: georgia, palatino;&quot;&gt;Gabriel de Lima e lançado pela BEI Editora.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt;&quot;&gt;&lt;span style=&quot;font-family: georgia, palatino;&quot;&gt;Neste livro, João Gabriel descreve sua viagem com o sushiman ao Japão; ali, entre um passeio e outro, vem à tona o percurso do chef e do restaurante, juntamente com importantes reflexões sobre a cozinha e a cultura japonesa. A obra &lt;/span&gt;&lt;span style=&quot;font-family: georgia, palatino;&quot;&gt;apresenta também receitas de pratos que figuram no impecável cardápio do Kinoshita, acompanhadas de comentários do próprio Tsuyoshi Murakami. Além de belíssimas fotografias, o livro traz um DVD com cenas da viagem, primorosamente filmada pelo cineasta Marco Aslan.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(106, 4, 'Lar Vegetariano', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro foi elaborado especialmente para quem, por algum motivo, quer se tornar um ser mais livre, natural, saudável e evoluído. Além das mais de 200 receitas vegetarianas que tornarão a sua vida muito mais saudável, você encontrará aqui informações sobre a filosofia que está por trás do estilo de vida vegetariano, que exclui o consumo de carne, de leite e de seus derivados ou de qualquer outro produto que provoque o sofrimento ou a morte de animais.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Você também vai encontrar um breve esclarecimento sobre os produtos industrializados, cujo consumo ainda impera na nossa sociedade. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Esperamos que &lt;strong&gt;&quot;Lar Vegetariano&quot;&lt;/strong&gt; seja para você mais do que um simples livro de receitas; que seja um aliado que possa enriquecer a alimentação da sua família e fortalecer a sua confiança no maravilhoso estilo de vida vegetariano.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(107, 4, 'Maçã: Equilíbrio e Saúde', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Quem não gosta de maçã? A maçã é uma das frutas mais antigas e mais cultivadas do mundo. É rica em vitaminas, sais minerais, carboidratos e fibras, além de nutrientes de alto poder nutracêutico, que fazem da maçã um excelente alimento funcional. Evitar coágulos sanguíneos e derrames, regular o sistema nervoso, evita problemas de pele e do aparelho digestório, prevenir a fadiga mental, contribuir para a formação de ossos e dentes, manter a boa taxa de colesterol e auxiliar no emagrecimento são alguns dos benefícios dessa maravilhosa fruta. Por tudo isto, comer maçã, de preferência todos os dias, é uma maneira deliciosa de se manter sempre saudável.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro traz um pouco da história, produção, cultivo, mitos e curiosidades, além de diversas receitas deliciosas, que tornam o consumo dessa fruta ainda mais prazeroso e saudável.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(108, 4, 'Mais Vegetais, Menos Carne', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Indicado para vegetarianos e não vegetarianos, este livro incentiva a redução do consumo de carne e a introdução de legumes, verduras, oleaginosas e grãos nas refeições. Apresenta mais de 200 receitas de sopas, saladas, massas, ensopados, grelhados, assados, molhos e muito mais, além de ensinar como picar, fatiar, tirar a pele e as sementes, tostar, saltear, aferventar e refogar. Oferece variações para acrescentar carnes, peixes e frutos do mar aos pratos, para os que não abrem mão desses ingredientes.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(109, 4, 'Mais Você - 10 anos', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Entre um escondidinho e um petit gâteau, passando pela torta holandesa, o bacalhau à Braga, o bobó de camarão e dezenas de outros pratos – incluindo os de suas viagens internacionais –, as receitas trazem explicações detalhadas, fotos primorosas e o mesmo cuidado que Ana Maria Braga tem diante das câmeras, na companhia do Louro José.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Pontuado pelas passagens mais marcantes da trajetória da apresentadora, Mais você 10 anos é uma rara oportunidade de seus fãs tomarem contato com os momentos mais importantes desse período. É ela quem conta esses episódios, ano a ano – da vitória contra o câncer à mudança para os amplos estúdios no meio da Mata Atlântica, no Rio de Janeiro –, expondo uma vida construída, acima de tudo, com criatividade, ousadia e fé.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(110, 4, 'Mel: Uma Vida Doce e Saudável', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;O mel é um alimento natural muito saboroso e nutritivo, consumido pelo homem desde o início dos tempos. Provavelmente, nossos ancestrais já conheciam suas maravilhosas propriedades. O mel pode ser usado na prevenção e no combate de diversas enfermidades, sendo um excelente energético, bactericida, antisséptico, antirreumático, vasodilatador, diurético, digestivo, hiperglicêmico, tonificante, antiespasmódico, sedativo e vermífugo, dentre tantas outras qualidades. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Estudos mostram que o mel também é um bom coadjuvante no tratamento de problemas pulmonares, da garganta, do coração e da visão, além de tonificar e rejuvenescer a pele e os músculos. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro mostra as propriedades, curiosidades, benefícios para a saúde e indicações de uso do mel, seja ele puro ou combinado com outros elementos como gengibre, eucalipto, canela, etc. Um verdadeiro guia para aqueles que estão em busca de uma vida mais saudável e acreditam que a natureza oferece saúde em abundância.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(111, 4, 'Na Cozinha com Nigella', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Em um livro tão charmoso quanto informativo, Nigella oferece pratos que são ao mesmo tempo familiares e sedutores, nostálgicos e modernos. Com receitas que vão desde as mais rápidas — perfeitas para a correria do dia a dia — até aquelas que demoram mais um pouco — irresistíveis para os fins de semana e ocasiões especiais —, essa é a obra perfeita para se tornar um deus ou uma deusa na cozinha. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Nigella também procura responder dúvidas que todos temos de vez em quando, como o que fazer com aquelas bananas velhas ou como improvisar um jantar para amigos em pouco tempo. E, como a verdadeira culinária depende das sobras do dia anterior, a autora compartilha sua criatividade vivaz para que possamos transformar uma receita em outra. A autora indica também o que é essencial para se ter em uma cozinha e, tão importante quanto, os instrumentos que não são nem de longe necessários para se aprender a cozinhar.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(112, 4, 'Naturalíssima', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Com uma cozinha de autor criativa e inovadora, a chef naturalista Tatiana Cardoso harmoniza, em mais de 80 receitas, as tradições da gastronomia brasileira com heranças italianas, indianas e árabes, utilizando sempre ingredientes frescos, integrais, sustentáveis e orgânicos.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;De opções para o brunch a bolos de aniversário deliciosos, de biscoitinhos de Natal a receitas sem gluten, de sucos energizantes a refeições completas, este livro oferece ao leitor uma infinidade de sabores que vão surpreender seu paladar.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(113, 4, 'O Grande Livro da Palmirinha', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Há mais de 20 anos preparando os mais saborosos quitutes da televisão, Palmirinha é um exemplo de garra e força de vontade que inspira gerações a arregaçarem as mangas e conquistarem seus sonhos. Para homenagear a trajetória desta culinarista, esta obra traz as receitas reunidas durante sua carreira. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O livro traz o modo de preparo bem detalhado, indicação de rendimento dos pratos e as dicas da Palmirinha para variar o sabor, baratear a receita ou tornar o modo de fazer mais prático. Nos anexos, os leitores podem conferir os cortes mais comuns de carnes e aves, descobrir mais sobre temperos e ervas, consultar um glossário com os termos mais usados na cozinha, aprender algumas regrinhas de etiqueta e muito mais. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Assim, seus fãs podem preparar refeições reconfortantes e reunir a família e os amigos ao redor da mesa para momentos inesquecíveis de afeição e amizade, repetindo em casa o sucesso da vovó mais querida do Brasil.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(114, 4, 'O Livro das Especiarias: Receitas Rápidas', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Inspirado em suas viagens a lugares exóticos, do Extremo Oriente ao México, o chef mestre em especiarias John Gregory Smith mostra como criar receitas saborosas e fáceis de fazer. Alho, coentro, cominho, páprica, pimenta,gengibre, limão-siciliano, capim-limão, chocolate e canela, entre outros, são usados em combinações surpreendentes. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Cada receita traz fotos das especiarias utilizadas, para facilitar a identificação dos ingredientes. Entre os destaques, estão o Milho frito picante,que fica pronto em dez minutos; o Zaatar grego com salada de cuscuz, em quinze minutos; o Frango assado coreano com macarrão de arroz, em 35 minutos; e a Trufa explosão de Goa, coberta com pistache, uma sobremesa incrível feita em 30 minutos.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(115, 4, 'O Livro do Vinho - Tudo que Você Precisa Saber Para Escolher e Apreciar Vinhos Tintos, Brancos e Espumantes', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;&lt;strong&gt;&quot;O Livro do Vinho&quot;&lt;/strong&gt; traz informações essenciais, desde os tipos de uva até os detalhes mais importantes da produção desta bebida conhecida e apreciada mundialmente. É um guia de degustação com orientações sobre os melhores vinhos de cada categoria, entre as muitas variedades. As descrições sobre os tipos de vinho de diversos países oferecem informações técnicas para o leitor escolher, dos brancos leves aos tintos vibrantes, passando por espumantes aromáticos. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Ricamente ilustrado, é um verdadeiro guia que levará o leitor a uma viagem de exploração vinícola.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(116, 4, 'O Poder Medicinal do Coco e do Óleo de Coco Extra Virgem', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O coco talvez seja o produto da natureza que mais se aproxima do ensinamento de Hipócrates, o pai da Medicina, segundo o qual devemos fazer do alimento o nosso medicamento. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Esta fruta maravilhosa possui excelentes efeitos medicinais e, ao mesmo tempo, é um alimento praticamente completo, possuindo vasta quantidade de nutrientes fundamentais, além de diversos elementos promotores de saúde e preventivos de doenças. Um componente especial dessa fruta é o óleo de coco, considerado recentemente como um alimento funcional por suas propriedades de prevenção e combate de doenças infecciosas, de ativação do sistema imunológico, de defesa contra doenças degenerativas, além de ser importante na proteção contra enfermidades cardiovasculares. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro reúne as informações mais recentes sobre as propriedades dessa incrível fruta e de seus subprodutos, que têm grande relevância na nutrição, no tratamento de doenças, na cosmética e em diversos outros aspectos, com dicas, receitas e recomendações de como se utilizar desse extraordinário presente que a natureza oferece.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(117, 4, 'O Segredo dos Ingredientes', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O chef Marcus Wareing, duas-estrelas no guia Michelin, oferece três alternativas de pratos para cada ingrediente. São mais de 120 opções criativas feitas a partir de 42 ingredientes básicos. Este livro traz sugestões de receitas com hortaliças, peixes, frutos do mar, carnes, laticínios, ovos e frutas. A berinjela, por exemplo, é a base de pratos como Ratatouille, berinjela marroquina e berinjela ao curry com ervilhas; o limão é usado nos deliciosos bolo de limão com azeite, torta merengue de limão e geleia de limão.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(118, 4, 'Os Jantares que Não Dei', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Neste livro, Bettina Orrico reúne crônicas e receitas para homenagear pessoas que admira e para as quais gostaria de preparar um jantar. As personalidades são apresentadas por uma crônica, à qual se seguem receitas que, imagina a autora, agradariam ao paladar de cada um.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Entre os “convidados” de Bettina estão tanto aqueles que fizeram parte de sua vida pessoal e profissional quanto os que entraram em seu cotidiano somente através da arte. Assim, ao nos falar sobre a importância de cada um em sua história, a autora fala também de si e de sua trajetória. Entre os homenageados estão Oscar Niemeyer, Massimo Ferrari, Thomaz Souto Correa, Beatriz Segall, Chico Buarque e Zeca Baleiro.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;De maneira harmônica, cada “jantar” reúne entradas, pratos principais e sobremesas, num total de cem receitas – que podem ser usadas de acordo com as propostas de Bettina ou recombinadas segundo o gosto do leitor. As ilustrações de Maria Eugênia constituem uma atração à parte, traduzindo em seus traços os sabores e sentidos evocados no texto de Bettina Orrico.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(119, 4, 'Pães Sensacionais', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Nada melhor do que preparar um pão em casa, sentir seu aroma fresquinho e compartilhá-lo com a família e os amigos. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Esse livro ensina a fazer diversos tipos de pães, explorando seus formatos, texturas e sabores. São mais de 100 receitas deliciosas, que incluem pães tradicionais, integrais, brioches e muffins, além de bolos, pizzas e muito mais. Traz orientações sobre ingredientes básicos, como farinhas, fermentos, água, leite, gorduras e misturas prontas; aborda as técnicas de preparo, como crescimento, sova e modelagem da massa; explica como finalizar, decorar, pincelar e salpicar; dá instruções sobre armazenamento; além de mostrar como adaptar as receitas. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;São muitas opções saborosas para o dia a dia, como a Baguete francesa e o Pão de batata-doce; de pães rápidos, como o Triângulo de queijo e o Muffin de chocolate; de outras culturas, como o Naan e o Pretzel; e para ocasiões festivas, como a Rosca de Páscoa e o Babá ao rum. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Há ainda sugestões para fazer em máquinas de pão, como o Pão de tomate seco; pães sem glúten, como o Pão de arroz e trigo-sarraceno; e pratos que usam o pão como ingrediente, como o Sorvete de pão integral.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(120, 4, 'Pão Nosso - Receitas Caseiras com Fermento Natural', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Imagine assar em casa um pão melhor que o da padaria. É isso que você vai aprender em “Pão Nosso”. Além de ensinar os segredos do levain, o fermento natural, Luiz Américo Camargo ainda propõe receitas caseiras que passaram pelo seu rigor de crítico de gastronomia. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Neste livro você vai encontrar dezenas de pães: integral, de nozes, de azeitona, de mandioca, baguete, até panetone tem. E também refeições inteiras em torno das fornadas. Da irresistível salada panzanella, passando pela surpreendente rabanada salgada, até um ragu de linguiça que é de limpar o prato - com pão, naturalmente.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(121, 4, 'Pimenta e Seus Benefícios à Saúde', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Você sabia que a pimenta, aquele condimento de sabor picante, traz diversos benefícios à saúde?&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt; Na realidade, o poder nutricional e medicinal fazem da pimenta um alimento muito saudável. Seu sabor ardente deve-se a uma substância com propriedades analgésicas e energéticas. Rica em vitaminas, a pimenta também favorece a redução de coágulos no sangue, pois é vasodilatadora; estimula a produção de endorfina no cérebro, hormônio que produz a sensação de bem-estar; apresenta ação antioxidante, anti-inflamatória e anticancerígena; e ainda reduz o apetite, sendo benéfica ao tratamento da obesidade. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Além de informações sobre suas aplicações medicinais, este livro apresenta algumas receitas nas quais a pimenta é o principal ingrediente, assim você poderá apreciar o sabor inconfundível desta autêntica especiaria.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(122, 4, 'Pizza do Faustão por Massimo Ferrari', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Quem poderia imaginar que essa iguaria – uma mistura de farinha de cereais com água – teve origem cerca de dez mil anos atrás no Oriente Médio e que os fenícios deram uma contribuição fundamental à receita? Criaram a cobertura, que levava carne e cebola – mal sabiam eles que a redonda atual passaria a ser feita com dezenas de ingredientes. Mas foi em Nápoles que a pizza se popularizou: era vendida em barracas nas ruas, dobradas ao meio, e até com pinhão como recheio! E foi nesse porto, por intermédio dos espanhóis, que o molho de tomate – ingrediente essencial – desembarcou. Pronto, a receita como é conhecida hoje estava concretizada.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Neste livro, o leitor aprenderá a fazer a massa e o molho de tomate, básicos para que qualquer receita se torne saborosa. E um dos 14 mandamentos trata justamente da massa: ela precisa descansar por 10 minutos depois de aberta e por 5 minutos depois de assada – esse é o segredo para que mantenha a crocância.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(123, 4, 'Quando Katie Cozinha', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Depois de passar mais de dez anos trabalhando como diretora de arte em importantes escritórios de design na Irlanda, nos Estados Unidos e na Austrália, Katie Quinn Davies resolveu colocar sua criatividade em prática com uma câmera fotográfica. E foi na cozinha que ela encontrou seu melhor foco. Apaixonada pelo tema, criou o blog “What Katie Ate”, que, em pouco tempo, se tornou fenômeno na internet. Além de conquistar um público internacional, o blog ganhou prêmios importantes.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Para este livro de estreia, Katie reuniu mais de cem receitas extraídas de momentos tão distintos quanto uma viagem, um jantar especial ou mesmo uma refeição de um dia qualquer.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(124, 4, 'Receber com Charme', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O detalhe que faz a diferença. Uma casa gostosa. Uma comida inesquecível. Este livro reúne dicas espertíssimas de decoração que fazem toda a diferença na hora de deixar a casa acolhedora, e receitas de comidas e bebidas para as mais diferentes ocasiões: o esquenta-festa que precede a balada, um encontro entre amigos solteiros, como receber os pais e os sogros, o tradicional churrasco com cara renovada e até mesmo o happy hour em clima de boteco. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;São dez capítulos em 288 páginas ricamente ilustradas com belíssimas fotos, com indicações de chefs, decoradores e outros especialistas. “Receber com Charme” mostra que a simplicidade é o maior de todos os luxos.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(125, 4, 'Receitas Dukan: Minha Dieta em 300 Receitas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Quem já fez alguma dieta sabe que seguir a risca as orientações das dietas que existem por aí traz sofrimento e dificuldades. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Pensando nisso, o Dr. Pierre Dukan - contando com a colaboração de centenas de seguidores de seu bem sucedido método de emagrecimento - elaborou receitas que tornarão as quatro etapas da dieta (ataque, cruzeiro, consolidação e estabilização) muito mais fáceis e prazerosas. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro traz 300 receitas criadas especialmente para o método que já conquistou milhões de adeptos em todo o mundo. Receitas inéditas que provam ser possível comer com prazer sem sair da dieta.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(126, 4, 'Receitas da Mazzô', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A segunda edição de &lt;strong&gt;&lt;em&gt;Receitas da Mazzô&lt;/em&gt; &lt;/strong&gt;traz de volta ao público a conhecida elegância e simplicidade de Mazzô França Pinto. No livro, a cozinheira reúne algumas das receitas mais requisitadas nos jantares e festas que comanda – em geral pratos cuja sofisticação não permitiria supor a facilidade com que são preparados.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Na apresentação do livro, Bettina Orrico não esconde os motivos de sua admiração por Mazzô: além da simpatia pessoal e do talento que demonstra em seu trabalho, a consultora culinária assinala que ela “não inventa moda: procura apenas o que é bonito e equilibrado, conferindo a seus pratos uma aparência muito apetitosa”.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Sem se dobrar a modismos e artifícios, Mazzô demonstra rara sensibilidade no uso de ingredientes brasileiros e mostra um perfeito domínio da alquimia culinária. E o que é melhor: os pratos, que agradam aos gourmets mais exigentes, podem ser preparados até mesmo pelos iniciantes. Entre as mais de oitenta receitas do livro estão perdizes ao vinho tinto, panqueca de batatas, risoto na panela de pressão, suflê de chocolate, rocambole de coco, assim como aperitivos, sopas e entradas frias – o conjunto é acompanhado pelas preciosas dicas de Mazzô.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(127, 4, 'Receitas Especiais Sem Glúten', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A intolerância ao glúten - proteína encontrada no trigo, no centeio e na cevada - é uma alergia que provoca a doença celíaca, responsável pela má absorção de vitaminas e minerais. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro mostra que é possível adotar uma dieta sem glúten com pratos saborosos. Com mais de cem receitas nutritivas para café da manhã, almoço, lanche e jantar, o livro ensina como identificar os ingredientes sem glúten, planejar o cardápio e adaptar a alimentação para comer receitas saudáveis em casa ou em restaurantes.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(128, 4, 'Receitas Saborosas com Café da Manhã', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O renomado chefe André Boccato lança na coleção &quot;Receitas Saborosas&quot; um livro que trata somente de pratos a serem servidos em Café da Manhã, Brunchs &amp;amp; Lanches. Vale lembrar que “brunch”, em inglês, significa a fusão de café da manhã (breakfast) e o almoço (lunch); é uma refeição de múltipla escolha, cuja moda chegou ao Brasil nos anos 1980. É oferecido em eventos, realizados pela manhã, que se estendem até à tarde. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A obra traz 45 receitas práticas e criativas para o dia a dia e também para essas ocasiões – agora – especiais.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(129, 4, 'Receitas Saborosas com Aves', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Aves se constituem num dos mais hábeis recursos alimentares da humanidade; em seus primórdios como caça, mas de pronto se descobriu que a espécie dos galináceos era facilmente domesticável e logo passou a ser criada para o sustento do homem, em quase todas as culturas. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O fato é que a galinha, depois renomeada de “frango” – a partir da criação intensiva e da industrialização e barateamento da produção, – chega triunfal até nossos dias e consumida aos borbotões por todas as mesas do planeta. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A proposta deste livro é mais que oportuna, lembrando que, apesar da popularidade, ou justamente por isso, quando diante dos cortes de frango, linda e praticamente depenados, cortados e embalados no supermercado, não costumamos ter outras ideias na hora do preparo, além do repertório mais que batido: frango refogado na panela, filé grelhado, ou, no máximo, o tradicional &quot;a passarinho&quot;. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Hora de pôr a criatividade em pauta! Ou melhor, já fizemos isso por você. Aqui estão receitas práticas, rápidas, fáceis de se transformarem em pratos surpreendentes e deliciosos, alguns dignos de figurar nos grandes momentos à mesa. E todos, quem diria, proporcionados pela ancestral e trivial galinha...&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(130, 4, 'Receitas Saborosas Com Carne', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Você deve estar cansado do bife com batata frita, seja você um marinheiro de primeira viagem pilotando seu novo fogão, seja uma experiente dona de casa à procura de novas ideias e praticidade na sua cozinha. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;É pensando em tudo isso, ou melhor, no que seria interessante cozinhar, que neste livro foram reunidas receitas criativas, saborosas e práticas. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A carne bovina é um dos ingredientes mais apreciados pelo brasileiro e não é à toa que o Brasil é o maior produtor mundial desta carne e que exporta apenas 30% de nossa produção. A carne, portanto, é a nossa paixão nacional e este pequeno livro uma saborosa contribuição para quem quer se destacar neste ramo. Nutricionalmente falando, a carne é um alimento fundamental e ficar sem ela (aqui respeitando todos os vegetarianos) é um grande risco para a saúde. Mas estamos falando da carne de qualidade, de boa origem e consumida sem excesso, adequadamente, como você deve saber. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Esperamos que este livro, por meio das receitas cuidadosamente escolhidas, possa trazer à sua família e convidados momentos de prazer e saúde à mesa.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(131, 4, 'Receitas Saborosas Com Massas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Carboidratos são a base da pirâmide de qualquer bom manual que ensine sobre uma nutrição adequada e equilibrada. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;As massas, felizmente, se encaixam confortavelmente nesse primeiro e espaçoso andar: 60% da alimentação diária deve se constituir de alguma forma de carboidrato – que, em poucas palavras, é o elemento que nos fornece energia pura. No mais, abra cada página deste pequeno breviário de pratos com massas, tendo a certeza que só irá encontrar soluções práticas, muito saudáveis e deliciosamente estimulantes. Afinal, outro recurso da massa é jamais ser entediante; seja para aquele prato único, ou como o coadjuvante apetitoso, mas imprescindível, feito com alguma das muitas variantes em formatos que consegue de um bom macarrão, ao lado de seu molho caprichado e inventivo, seja para aquela ocasião em que a massa se torna a protagonista mais desejava e apetecível da refeição. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Algumas receitas são clássicos da “pasta alla italiana”; outras, variações sobre um tema que o autor, modestamente, domina com o coração, a experiência e a inclinação do paladar.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(132, 4, 'Receitas Saborosas com Sobremesas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Chegou o melhor momento, o ponto mais festejado e marcante de uma bela refeição: a sobremesa. E, numa hora dessas, vamos deixar de lado aquela tendência tão atual de abstinências e sacrifícios!... Beleza e doçura pura, sim! E uma vez aceitando as caloriazinhas a mais, ciente de que, como ensinavam os antigos, um pouco de doce é o arremate mais perfeito para a digestão, resta o desafio do que apresentar à mesa. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt; background-color: initial;&quot;&gt;Nas páginas deste livro temos 45 respostas diferentes e deliciosas, todas inteligentes, autênticas, criativas e, o que é melhor, todas muito reais e fáceis de preparar – mas com talento suficiente para causar a melhor das impressões e intensas emoções. &quot;Receitas Saborosas&quot; em sua colorida versão Sobremesas, também consegue ser incrivelmente moderna na estética e na prática. Porém, possui aquele toque de “feito em casa”, um “não-sei-o-quê” a lembrar versos, ou poesia de diário, caligrafia caprichada em caderno íntimo... &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt; background-color: initial;&quot;&gt;Pois bem, é só conferir: Manjar cremoso de caju, Merengue em camadas, Tortinhas de chocolate e tangerina, Cheesecake de abóbora, Mousse de pitanga com amêndoas e pistache, Flan de laranja com pimenta-da-jamaica... E por aí vai. &lt;/span&gt;&lt;/p&gt;', '', '', ''),
(133, 4, 'Receitas Saborosas com Peixes e Frutos do Mar', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Nutricionistas e médicos recomendam uma dieta equilibrada, com grande variedade de alimentos para garantir todos os nutrientes necessários para a saúde. Figurando na lista dos bons alimentos, mesmo para diferentes orientações nutricionais, o peixe, é uma unanimidade, pois é fonte de vitaminas, minerais e proteína. Leve, saboroso e altamente proteico, o peixe contém também &quot;gorduras do bem&quot;, ou melhor, um ácido-graxo chamado ômega 3, cujos benefícios para uma dieta saudável estão cientificamente comprovados. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Mas, como uma refeição agradável não deve ser uma &quot;bula de remédio&quot;, então aproveite todos os benefícios, deliciando-se com sardinha, robalo, salmão, pescada, cação, Saint Peter, entre tantos outros facilmente encontrados em mercados e feiras livres, frescos ou congelados. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;&quot;Receitas Saborosas com Peixes e Frutos do Mar&quot; apresenta 45 receitas práticas e criativas para o dia a dia e ocasiões especiais, desenvolvidas em conjunto com o Estúdio Paladar. Membro do ICC e da FIC, Boccato iniciou sua carreira gastronômica com chef de cozinha experimental criando receitas para grandes marcas da indústria alimentícia brasileira.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(134, 4, 'Revolução na Cozinha', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Se você pensa que não é capaz de aprender a cozinhar, siga as receitas deste livro e em 24 horas estará fazendo algo realmente delicioso para comer.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Para mostrar às pessoas como é fácil fazer comida simples, saborosa e rápida, Jamie recorda um ministério criado pelo governo britânico por ocasião da Segunda Guerra Mundial, o Ministério da Comida (Ministry of Food, título original deste livro). &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Nada mais que uma providencial política de fazer com que os britânicos não passassem pelas dramáticas situações alimentares vividas na Primeira Grande Guerra. Ou seja, que aprendessem a fazer sua comida com os mais variados ingredientes e a comer de forma racional e saudável. É tudo muito fácil e rápido. Experimente e participe da campanha de Jamie Oliver de mandar receitas para outras pessoas: PASSE ADIANTE...&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(135, 4, 'Royale com Queijo', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 10pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt;&quot;&gt;Alguns dos maiores prazeres da vida reunidos em livro, &lt;em&gt;Royale com Queijo&lt;/em&gt; é uma compilação com mais de 600 citações sobre comidas e bebidas extraídas de produções cinematográficas. Agrada leitores dos mais variados gostos e perfis, desde os gourmant até os adeptos de fast-food, sem distinção.&lt;/span&gt; &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Escrito pela publicitária Mariza Gualano, autora de livros de referência sobre a sétima arte, é uma excelente pedida para acompanhar solitários ou para uma leitura compartilhada.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Foram reunidas frases de filmes como A festa de Babete, Comer, rezar, amar, A comilança e Chocolate, além de nacionais como Gabriela, cravo e canela e Estômago. Há também os grandes clássicos e os cultuados, como Um dia de fúria e Pulp Fiction. A edição vem acompanhada de um índice de filmes em que o leitor é convidado a ser também crítico cinematográfico, ao pontuar avaliações sobre produções selecionadas na coletânea de frases. Há, ainda, espaço para que sejam anotadas frases de filmes que não estão no livro, mas que fizeram parte de sua vida.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(136, 4, 'Sabores Brasileiros - Receitas Típicas por Região', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Dividido em cinco partes correspondentes às regiões brasileiras – Sul, Sudeste, Centro-Oeste, Nordeste e Norte, &lt;strong&gt;&quot;Sabores Brasileiros&quot;&lt;/strong&gt; enaltece seus pratos e sabores mais expressivos e emblemáticos. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O livro traz 40 deliciosas receitas da nossa culinária brasileira, pratos salgados e sobremesas divididos por região, sendo ilustradas com belíssimas fotografias de Cristiano Lopes, que retrata com riqueza de detalhes, a diversidade e beleza da gastronomia nacional. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Uma publicação que nos leva a um pedaço do mundo dos sentidos da gastronomia brasileira.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(137, 4, 'Seleção Brasileira de Gastronomia', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Uma seleção de 22 chefs brasileiros que desenvolveram 22 receitas inéditas com 22 ingredientes nacionais – entra em campo o livro &quot;Seleção brasileira de gastronomia&quot;, que apresenta receitas campeãs de sabor e técnica, refletindo o que se faz de melhor hoje nos restaurantes desses chefs nacionais. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Os escalados para essa “seleção brasileira de gastronomia” foram: Alex Atala, Alberto Landgraf, Ana Luiza Trajano, Beto Pimentel, Carla Pernambuco, Celso Freire, Edinho Engel, Felipe Bronze, Felipe Rameh, Helena Rizzo, Heloísa Bacellar, Ivo Faria, Jefferson Rueda, Mara Salles, Mônica Rangel, Morena Leite, Roberta Sudbrack, Rodrigo Oliveira, Tereza Paim, Thiago Castanho, Thomas Troisgros e Wanderson Medeiros. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Em suas páginas, &quot;&lt;strong&gt;Seleção&lt;/strong&gt;&quot; traz a história dos ingredientes selecionados e um pouco da trajetória de cada um dos chefs, incansáveis defensores e promotores da gastronomia brasileira, como apresenta a autora. Cada qual a seu modo, em seu canto – mas um por todos e todos por um. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Todas as 22 receitas são ilustradas com belíssimas fotos, que retratam com riqueza de detalhes a diversidade da gastronomia nacional e auxiliam no preparo, na montagem e na apresentação à mesa.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(138, 4, 'Sinal Verde para a Carne Vermelha', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Com o avanço da tecnologia, de novos cuidados de criação e abate e com a fiscalização séria sobre a qualidade do produto, podemos afirmar que a carne vermelha é , hoje, um dos melhores alimentos para frequentar sua mesa. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;É uma das mais balanceadas fontes de proteínas, aminoácidos, vitaminas e minerais que se pode encontrar, desde que venha de animais criados em liberdade no campo, alimentados a pasto, onde o Ômega 3 é encontrado em abundância. Não importa o tipo de exercício que você faça, saladas não vão criar um corpo musculoso. Se você quer ganho de massa muscular, a carne vermelha pode ser a chave da sua alimentação.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O autor, nutrólogo, iniciou sua carreira com cirurgião vascular e trabalhou como residente e se especializou na Clinique du Mail la Rochelle na França.&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(139, 4, 'Sobremesas sem Açúcar', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Descubra um mundo repleto de novos sabores e delicadas texturas das sobremesas sem açúcar. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Neste livro, você encontra 30 receitas de muffins, cremes, tortas, bolos e muitas outras delícias preparadas com ingredientes de origem natural, como xarope de agave, xarope de maçã, mel e estévia, ou adoçantes culinários. De agora em diante, mesmo quem precisa controlar o peso e a ingestão de carboidratos pode se entregar ao prazer de degustar sobremesas variadas!&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(140, 4, 'Soja - Nutrição e Saúde', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A proposta desse livro não se restringe apenas ao ensino de receitas e sua aplicação na culinária, mas esclarece e informa, oferecendo todo o conhecimento para que o consumo da soja e a prática da alimentação natural se tornem hábitos conscientes e saudáveis. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Para aqueles que desejam reduzir o consumo dos alimentos de origem animal, ou mesmo para quem quer encontrar fontes alternativas e saudáveis de alimentos, essa obra dá uma valiosa contribuição, e é uma importante fonte referência e consulta.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(141, 4, 'Suco Vivo', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Cada vez mais, fala-se dos benefícios da alimentação viva, na qual se consomem alimentos vegetais em sua forma mais potente e exuberante, ou seja, sem que nenhum processo físico ou químico destrua ou diminua a ação de seus nutrientes, enzimas e elementos nutracêuticos. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Nessa maneira de preparar a comida, que inclui sementes em plena germinação, que acrescentam grande vitalidade e poder à alimentação, os sucos vivos ocupam um lugar de excelência. Esses néctares da natureza são bebidas extremamente nutritivas, que podem substituir ou complementar uma refeição. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Complexos e abundantes em seu poder alimentar, realizam uma verdadeira limpeza e desintoxicação do organismo, revitalizando-o e melhorando sua energia e imunidade. Neste livro você encontrará informações e receitas dos sucos que estão mudando a vida de milhares de pessoas e descobrirá uma maneira mais saudável, mais natural e mais rica de interagir com sua alimentação e com sua saúde.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(142, 4, 'Sucos e Vitaminas - 100 Receitas Eficientes e Fáceis de Preparar que Aumentam a Energia e a Vitalidade', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro traz 100 combinações saborosas e saudáveis de frutas e legumes. Repletos de nutrientes, os sucos e as vitaminas desintoxicam, dão energia, fortificam e acalmam. Facilitam o emagrecimento, protegem contra os efeitos do envelhecimento e aumentam a vitalidade. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A obra apresenta sugestões refrescantes para o verão com ingredientes como banana, maçã e laranja, ou com frutas de época, como romã, pêssego e morango. Cada receita traz ainda informações sobre as propriedades terapêuticas de cada fruta e legume.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(143, 4, 'Sucoterapia', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Unir o útil ao agradável, ou melhor, o saboroso ao saudável, é o que se tem a ganhar com a introdução de sucos das mais substanciosas e aromáticas frutas no dia a dia. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Mesmo com tantas qualidades, o consumo de sucos de frutas fica bem abaixo do recomendável, sobretudo em razão da disseminação de produtos industrializados, ricos em gorduras e pobres em vitaminas.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Com valiosas dicas e receitas, o autor ensina a descobrir como extrair das frutas as fibras e nutrientes de que o corpo tanto precisa para se manter forte e saudável, e a aliar o sabor doce da farta e natural fruticultura brasileira aos legumes e hortaliças, para o incremento das defesas do organismo, otimização da capacidade cardiovascular, melhoria das condições de sono e manutenção da pressão arterial em níveis saudáveis. É saúde sem remédio.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(144, 4, 'As Deliciosas Receitas do Tempero de Família', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;As receitas têm mais que sabores, elas têm ligações emocionais com a infância, o jeito de cozinhar da mãe, as histórias de família que beiravam o fogão. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Rodrigo Hilbert transporta para este livro amesma irreverência com que apresenta o programa Tempero de Família, no canal GNT. Sua marca registrada é mesclar simplicidade no preparo das iguarias e descontração na hora de contar casos divertidos relacionados às receitas. O resultado é uma comida para alegrar a alma descritas em quarenta e nove receitas carinhosamente selecionadas.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(145, 4, 'Veggie Burgers para Todo Mundo', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Prepare-se para montar em casa uma lanchonete de primeira! &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Acostumado a preparar e comer hambúrgueres vegetarianos desde a adolescência, o autor Lukas Volger reuniu neste livro mais de trinta receitas incomparáveis e deliciosas, como Hambúrguer de alho-poró e castanhas de caju com trigo em grãos e lentilhas, Hambúrguer de cogumelos com cevada, Hambúrguer de milho com tomate seco e queijo de cabra e Hambúrguer de berinjela e tomate com curry. E mais: nada de maionese gordurosa ou ketchup comprado pronto. Neste livro você também aprende a preparar molhos e acompanhamentos deliciosos, além de pães fofinhos, tudo para incrementar seu sanduíche e proporcionar a incrível combinação de sabores que você tanto buscava. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Boa leitura e bom apetite!&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(146, 4, '100% Chocolate - 30 Deliciosas Receitas com Chocolate', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Reencontre toda a intensidade do chocolate, sua delicadeza nas várias combinações possíveis com frutas oleaginosas e ainda o delicioso prazer dos bolos úmidos e cremosos presentes nestas 30 receitas que vão fazer você se derreter de prazer. Do irresistível petit gâteau ao delicado macaron, passando por um suave chocolate quente, você não resistirá à tentação de se esbaldar mais e mais com chocolate!&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(147, 4, 'A Arte de Receber - Maison Ladurée', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A célebre Maison Ladurée conhecida e reconhecida pelos gastrônomos do mundo inteiro, nos revela seus cardápios e conselhos sobre a Arte de Receber para podermos realizar com sucesso todos os momentos culinários importantes do dia: Cafés da manhã, Brunches entre amigos, Piqueniques chiques, Almoços em família, Lanches, Bufê de verão, Jantares românticos, Jantares de inverno, Jantares de gala. Todos estes segredos estão dentro de uma caixa preciosa, muito chique, muito Ladurée...&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(148, 4, 'A Cozinha da Saúde - Hábitos e Receitas para uma Vida Saudável', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Em &quot;&lt;strong&gt;A Cozinha da Saúde&lt;/strong&gt;&quot;, Ferran Adrià, Valentín Fuster e Josep Corbella dão conselhos práticos, informações úteis e soluções interessantes para aprimorar a qualidade de vida a partir da reflexão sobre a relação que temos com a comida. Os autores defendem que não é necessário eliminar totalmente um alimento do cardápio, mas que o mais importante é saber dosar a quantidade e estar atento à tabela nutricional para ter consciência do que realmente está sendo ingerido.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(149, 4, 'A Cozinha do Pensamento - Um Convite para Compartilhar Uma Boa Mesa com Filósofos', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Nessa obra, o que se procura desvendar, de maneira divertida, é o que os grandes filósofos da história da humanidade comiam, de que forma faziam suas refeições, como preparavam seus alimentos e como a gastronomia influenciou a sua filosofia. Redón baseia-se tanto na biografia de seus personagens reais como em seus escritos para imaginar a alimentação - em todos os seus aspectos: os hábitos, os condimentos, os pratos, as companhias -, entremeando a narrativa com algumas receitas.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(150, 4, 'A Culinária Paulista Tradicional nos Hotéis Senac São Paulo', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Nessa publicação, os profissionais da área e o público em geral encontrarão indicações seguras, adequadamente testadas, de como preparar pratos tradicionais da cozinha paulista. São indicados os ingredientes dessa cozinha, receitas de bebidas típicas, além de 53 receitas de salgados e 32 receitas de doces.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(151, 4, 'A Mágica na Cozinha', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro apresenta um dos acervos de informações colecionados pelo autor durante anos de experiência gastronômica e lúdica com ingredientes e técnicas de preparo. Além das receitas fingidas, mais de uma centena de verbetes ensinam sobre pratos, ingredientes e os perigos de fraude que os rondam, explicando os fundamentos de muitas substituições ou simulações que permitem reconhecer estas fraudes. Para quem gosta de brincar com aromas e sabores, este livro traz ainda curiosidades, truques e fingimentos da gastronomia e da culinária.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(152, 4, 'À Mesa com Monteiro Lobato', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Recheado de ilustrações originais das edições históricas de Lobato publicadas pela Companhia Editora Nacional e de fotos do acervo da família do escritor, esse livro da série &quot;A Formação da Culinária Brasileira&quot; apresenta ainda as curiosidades e os segredos do caderno de receitas de Dona Purezinha, companheira de toda a vida de Lobato. Em pitadas de humor lobatiano, o leitor encontra 18 receitas transcritas pelo próprio Monteiro Lobato, às quais agregou comentários, termos latinos, neologismos e saborosos toques de humor. A partir da consultoria culinária especializada de Ocílio José Azevedo Ferraz, a obra traz outras 64 receitas de pratos salgados e doces que ressaltam a diversidade e a riqueza da cozinha tradicional no Vale do Paraíba, região natal de Lobato.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(153, 4, 'Alimentação Saudável sem Glúten', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Com mais de 100 receitas especialmente criadas e completamente isentas de glúten, Darina Allen e Rosemary Kearney compartilham sua rica experiência com a gastronomia e a doença celíaca. Sendo ela mesma celíaca, Rosemary trabalhou com a renomada chef Darina para criar essas receitas de dar água na boca de modo a provar que a alimentação sem glúten não precisa ser sem sabor e sem graça. Incluindo uma seção bastante completa sobre os sintomas e fatores relacionados à doença celíaca, além de orientação sobre como incorporar uma dieta saudável ao dia a dia da maneira mais simples possível, este livro oferece um amplo leque de informações nutricionais. As receitas são divididas em seções que incluem: cafés da manhã e brunches, sopas e saladas, aperitivos, massas, pratos principais, pães e biscoitos, bolos e sobremesas, além de várias receitas básicas. Um tesouro absoluto para qualquer pessoa interessada nos benefícios de uma dieta sem glúten.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(154, 4, 'Alimentos e Bebidas - Uma Visão Gerencial', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Preparação de fichas técnicas, controles administrativos, formação de preços, orientação para compras, administração de estoques e análise de custos são alguns dos temas abordados nesse livro de Francisco Tommy Freund. Por sua praticidade, a publicação é um verdadeiro guia destinado, especialmente, a donos e gerentes de pequenos e médios restaurantes e empreendimentos hoteleiros.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(155, 4, 'Alimentos Orgânicos - Ampliando os Conceitos de Saúde Humana, Ambiental e Social', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Que efeito os alimentos têm sobre a vida de quem os produz e consome? Elaine de Azevedo contribui com a busca por essa resposta neste livro, obra que questiona os rumos do agronegócio moderno e as implicações desse sistema sobre a sociedade e o ambiente. &lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Partindo de uma comparação entre dados históricos e contemporâneos sobre a produção agropecuária em várias regiões do mundo, o livro abre um debate sobre os benefícios de alimentos cultivados naturalmente, não só para quem os põe na mesa, mas também para quem os produz.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(156, 4, 'Amendoim - História, Botânica e Culinária', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Botânica, saúde, comércio, culinária, lendas do folclore e história do amendoim. É pouco? Há ainda receitas temperadas com o humanismo franco de Gil Felippe. Arachis hypogaea, o amendoim, não poderia deixar de figurar entre os títulos do renomado botânico. De grande valor nutritivo, o amendoim, que já era utilizado pelas culturas pré-colombianas, e que depois da colonização de portugueses e espanhóis ganhou a Europa, e de lá os países do Oriente, compõe pratos variados, doces e bebidas, fazendo ainda parte do imaginário popular de algumas culturas.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(157, 4, 'Arroz - História, Variedades e Receitas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Existem, na Ásia e na África, milhões de pessoas que se alimentam basicamente só de arroz. No Brasil, esse cereal é componente importante da combinação arroz e feijão do dia a dia, indispensável nas mesas da população, dos mais pobres aos mais ricos. O livro começa pela história do arroz, tão antiga que os próprios especialistas são incapazes de determinar com precisão em que local surgiu. Assinalam-se os mitos e a simbologia ligados ao cereal, mencionando-se a morfologia e o crescimento da planta do arroz, as formas de cultivo existentes, as pragas que podem acometer as plantações. São contempladas algumas das inúmeras variedades de arroz no mundo todo e, finalmente, chega-se às receitas.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(158, 4, 'As 30 Melhores Receitas com Nutella', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Uma musse que desmancha na boca, uma charlote deliciosa e macarons crocantes... &lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Confira estas 30 receitas, uma mais deliciosa do que a outra, que são novas formas de degustar e harmonizar a famosa pasta de avelã!&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(159, 4, 'As Minhas Receitas de Bacalhau - 500 Receitas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Conhecido por sua forma de modernizar os pratos mais tradicionais da gastronomia portuguesa, o chef Vítor Sobral foi convidado pelo Norge - Conselho Norueguês da Pesca, para dar um toque da sua imaginação à preparação de saborosas receitas de bacalhau, o &quot;fiel amigo&quot; da cozinha portuguesa. &lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;        Reinventando os clássicos, renova-se a tradição e introduzem-se novos ingredientes, conservando-se temperos e sabores bem portugueses. São quinhentas receitas de bacalhau, inspiradas em sua recente viagem ao norte da Noruega, em plena costa Ártica, onde pescou o seu primeiro bacalhau e teve a oportunidade de ver como é o processo, na origem, e de sentir nas mãos um peixe tão fresco.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(160, 4, 'Azeite - História, Produtores, Receitas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Aliando receitas culinárias a um roteiro para a degustação do azeite, esse livro traz indicações sobre pratos em que esse óleo é um componente importante, além de ensinar a maneira de identificar suas características mais sutis. Traz ainda a história do azeite na Europa e sua utilização por diferentes povos. Recentes descobertas da ciência em torno das qualidades medicinais do azeite também são compiladas, entre outras informações. Esse livro agradará de estudantes e profissionais da culinária a empresários do comércio e o público em geral.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(161, 4, 'Baco - Em Busca da Pizza Perfeita', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Lançado para comemorar os dez anos de atividades da rede de pizzarias Baco em Brasília, este livro é um documento que registra o crescimento e a valorização da gastronomia na capital federal. Prefaciado pelo jornalista Alexandre Garcia, admirador das pizzas do Baco, o livro traz, além da história, várias receitas das delícias e do atendimento perfeito oferecidos por Gil Guimarães.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(162, 4, 'Bahia Bem Temperada - Cultura Gastronômica e Receitas Tradicionais', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt;&quot;&gt;        &lt;span style=&quot;font-family: georgia, palatino;&quot;&gt;A Bahia por si só é um continente... continente de muitas culturas, caldo, pirão de muitos peixes. Aquele que pretende compreender o que é o povo brasileiro tem de se aventurar em muitas diferenças culturais, sabemos, mas a Bahia em especial tem a marca civilizadora das matrizes africanas. &lt;/span&gt;&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;        Neste livro de Raul Lody, a proposta é experimentar a Bahia pelo paladar, pela boca, pelas culturas misturadas ao longo do tempo às sabedorias culinárias. Compreendendo a Bahia não só por suas festas populares e tradicionais, conhecidas como &quot;festas de largo&quot;, mas pelo cheiro, pelo perfume do dendê, do cravo e da canela, pelo sabor do camarão e do acarajé, como quer o autor. &lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;        Trata-se de uma culinária de forte presença de povos e etnias, sendo, ainda, a expressão de um universo variado, que não depende apenas da mistura de ingredientes ou de quantidades específicas, ainda que isso seja evidentemente de grande importância. O que ressalta nessa cozinha é a compreensão afetiva diante da comida, que mistura histórias, conquistas e capacidade de transmutações: a história servida em pratos.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(163, 4, 'Bares e Restaurantes - Gestão de Pequenos Negócios', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Esse livro aborda circunstâncias e temas inteiramente voltados à administração de vários tipos de bares e restaurantes, tratando das causas mais frequentes de falências no setor, principalmente em razão de má administração. Traz inclusive orientações precisas sobre a formação de preço a ser cobrado, um dos problemas que mais provocam o fechamento de negócios.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(164, 4, 'Bartender - Perfil Profissional, Técnicas de Trabalho e Mercado', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A profissão de bartender exige especialização, cultura geral, conhecimento técnico e, claro, uma boa sacudida na coqueteleira. O livro trata das competências desse profissional tão familiar em nossos bares, restaurantes e festas, trazendo informações sobre bebidas, técnicas e instrumentos de trabalho, além de receitas da sommelier Deise Novakoski. Depoimentos e entrevistas com barmen experientes traçam um panorama do mercado de trabalho e convidam à descoberta da profissão.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(165, 4, 'Beirute - Aromas, Amores e Sabores', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A coleção Cozinha Capital pretende prestar sua homenagem aos restaurantes que fazem parte da história de Brasília. Os melhores e mais charmosos restaurantes da capital do país vão abrir suas cozinhas, contar um pouco de suas trajetórias e, principalmente, para alegria geral dos gourmets, revelar suas receitas mais famosas. Neste livro desvendamos os segredos do Beirute, parada obrigatória do brasiliense. Há quase 40 anos em Brasília esta casa é considerada um dos pontos mais tradicionais da capital e é badalação garantida nos fins de semana.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(166, 4, 'Boas Práticas na Manipulação de Alimentos', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Nesse livro, as especialistas Luciane Pereira, Andréa Nunes Pinheiro e Gleucia Carvalho procuram tornar o manipulador de alimentos consciente de sua responsabilidade quanto à qualidade e à segurança dos alimentos que está oferecendo ao consumidor. Esta edição reúne os conteúdos de segurança e de boas práticas na cozinha e em ambientes de manipulação de alimentos, fazendo uma síntese das principais regras e recomendações exigidas pela legislação no Brasil.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(167, 4, 'Bolo de Avó - 60 Receitas Fáceis, Econômicas e com Gosto de Infância', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;        Sabe aquela tarde em que você brincava no quintal, e lá da cozinha vinha aquele cheirinho inconfundível de coisa boa no forno? E de repente, ao ouvir &quot;tá pronto!&quot;, a molecada largava tudo e corria pra mesa, com a boca já cheia d''água? &lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;        Este livro Bolo de Avó é assim - recheado de muito carinho como os quitutes que só as vovós fazem como ninguém, ele resgata as delícias e sabores dos bolos que marcaram nossa infância. As 60 receitas aqui apresentadas são facílimas de fazer - e mais ainda de comer: bolo de cenoura, de brigadeiro, de côco, o inconfundível aroma dos bolos de milho e de laranja, o irresistível gostinho de mandioca do bolo Souza Leão, e muitas, muitas outras gostosuras. &lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;        Mais do que um simples receituário, é obra para ter em casa - na cozinha, não só na biblioteca - e para presentear amigos e parentes... Sim, porque ao folhear suas páginas, qualquer um pode voltar a ser criança e ainda vivenciar seu momento de &quot;vovó&quot;, no fogão.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(168, 4, 'Bolos - Preparo e Confeito', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A doceira Rosely Bonfante e a jornalista Ateneia Feijó uniram-se para contar uma história de final feliz: como Rosely montou um negócio e tornou-se sucesso, depois de muito pesquisar até descobrir como fazer uma glace especial para bolos. Além da interessante trajetória da doceira, o livro contém suas receitas favoritas de bolos, recheios e glaces, apresentadas passo a passo. Traz ainda um álbum de fotos de alguns dos mais belos bolos de sua coleção, com as respectivas fichas técnicas. Ideal para profissionais de gastronomia.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(169, 4, 'Bolos Criativos - Biscoitos, Muffins e Bolos Irresistíveis para Todas as Ocasiões', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Receitas básicas e algumas dicas podem levar a resultados surpreendentes. É o que promete este livro, que ensina técnicas fáceis para fazer e montar doces gostosos e bonitos. Você quer festejar o nascimento de um bebê, o Natal, a Páscoa, o dia dos namorados ou um casamento? Entre as mais de quarenta ideias que este livro traz, você vai encontrar o doce mais adequado para a sua comemoração. Com explicações claras e imagens de como proceder, ajudará estudantes e profissionais de gastronomia e interessados em aprender a fazer doces saborosos. &lt;/span&gt;&lt;/p&gt;', '', '', ''),
(170, 4, 'Bolos Românticos', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Peggy Porschen é, com certeza, uma mestra incrivel na decoração de biscoitos, cupcakes e bolos. Neste livro, o seu segundo título, Peggy quis oferecer uma visão do seu tema predileto &quot;o romance&quot;. Além dos lindos bolos de casamentos, &quot;Bolos Românticos&quot; traz opções fabulosas para celebrar o amor: criações para o dia dos namorados, chá de cozinha, festa de noivado e, até, para aniversários. Criado para todos os tipos de leitores, dos iniciantes aos mais experientes, a obra traz um capítulo onde o equipamento, as receitas e técnicas básicas estão explicados com a ajuda do passo a passo. Dos irresistíveis bolinhos de borboletas à deslumbrante cama de rosas, passando pelas delicadas máscaras venezianas e pelo refrescante bouquet de flores, o leitor encontrará uma criação adequada ao seu gosto e necessidade! Com certeza, estas criações repletas de cores e formas lindas vão levar todos os leitores aos sacos de confeitar e às espátulas! Cada página deste livro exala romance e deixará todos encantados pela visão do amor de Peggy.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(171, 4, 'Celebrando como Uma Princesa Judia', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;&quot;...demonstra amor pela vida, pela boa comida e pelo tempo passado com a família e os amigos. Não, você não precisa se tornar judeu para apreciar este livro. Precisa apenas de paixão pelas coisas boas - Que estão aqui aos montes.&quot;&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(172, 4, 'Chá - Rituais e Benefícios', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O batedor do Matcha japonês, a bombilha e a cuia do mate gaúcho, as chaleiras com &quot;memória&quot; chinesas, a caneca inglesa... esses objetos que servem o chá há muitos séculos serão desvendados nesta preciosa edição. Convida-se o leitor a descobrir os segredos dessa planta de mil virtudes, sua história, os mistérios que envolvem sua fabricação e degustação no mundo.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(173, 4, 'Chapada Diamantina - Culinária &amp; História', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A culinária típica da região da Chapada Diamantina, desde a comida dos garimpeiros até a cozinha sofisticada e contemporânea dos hotéis e restaurantes do lugar, serve de trilha para o leitor conhecer costumes e hábitos de um povo que viveu o esplendor do diamante, as mazelas do sertão e, atualmente, enfrenta os desafios do turismo. A partir de uma rica pesquisa histórica, o livro revela fatos pitorescos ocorridos nos municípios do Parque Nacional da Chapada Diamantina, principalmente Lençóis, com fotos dos atrativos naturais e do belo casario local, além de muitas receitas que testemunham o convívio entre tradição e modernidade.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(174, 4, 'Chocolates e Doçaria da École Lenôtre', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Aliando tradição e inovação, a École Lenôtre apresenta, em dois volumes, receitas de doces e chocolates, ousando nos contrastes de sabores, matérias-primas e texturas. De ganaches clássicos, insólitos, originais, sobremesas de chocolate, empratados, balas, passando pelas barras, tabletes, nougats, pralines, frutas em calda, dropes, marshmallows etc., este volume traz a história, a tecnologia, as receitas de base e os materiais utilizados em chocolataria.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(175, 4, 'Coco - Comida, Cultura e Patrimônio', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Trata-se de uma leitura atual sobre o nosso tão conhecido coco verde, na gastronomia, nas tradições populares, nas festas religiosas, na dança, na música e na arquitetura, como matéria-prima para a fabricação de utensílios e, principalmente, em receitas das culinárias brasileira, africana e oriental. O antropólogo Raul Lody destaca a importância do coco na nossa cultura, mostrando o fruto como símbolo tropical, que chegou do Oriente e se abrasileirou, nas tarefas caseiras cotidianas de comer e beber e nas festas populares que tomam conta das ruas. &lt;/span&gt;&lt;/p&gt;', '', '', ''),
(176, 4, 'Coisas de Minas - A Culinária dos Velhos Cadernos', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro, de Raimundo de Oliveira é saboroso e estimulante como os melhores produtos que se dedicam às coisas e temperos de uma das culinárias mais marcantes deste País. Longe de ser nostálgico, em tons de lamento, mal-humorado em relação a um passado que não volta mais, esse livro cumpre tarefas antropológicas e de pesquisa em relação à gastronomia regional. Entre biscoitos, bolos e pães, assim como sabores do naipe de ambrosias, compotas e geléias, as receitas chegam de forma didática com a missão de se tornar atrações nas mesas do dia a dia.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(177, 4, 'Comer é um Sentimento', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Comer o quê, quando e preparado como? Embora aborde essas questões, a preocupação do autor não é reunir receitas e muito menos prescrever regimes alimentares. Partindo da constatação de que nos alienamos do prazer que o ato de comer pode nos proporcionar, François Simon, o crítico gastronômico mais temido da França, envereda por uma divertida crítica aos hábitos alimentares e comportamentais, revelando como o estilo de vida moderno nos afasta da percepção das necessidades mais simples de nosso corpo e de nosso ser.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(178, 4, 'Como Assar Pães - As Cinco Famílias de Pães', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;       &lt;em&gt; &quot;Para o trigo, tudo começa com uma semente enterrada que cresce até virar um talo e depois se torna uma espiga, que, finalmente, transforma-se em pão. Mas para o padeiro, tudo começa pelo aprendizado do ofício - um passo de cada vez&quot;&lt;/em&gt;, escreve Peter Reinhart no prefácio deste livro. &lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;        Michael Kalanty conhece bem a importância que o aprendizado tem na elaboração de um pão perfeito. Não basta apenas seguir a receita, deve também haver dedicação, respeito e compreensão de cada uma das etapas de sua elaboração. &lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;        Neste livro, Kalanty utiliza uma linguagem fluente e descontraída para dar dicas de como dominar as técnicas básicas da panificação e oferecer opções para que os padeiros, ou qualquer pessoa que queira fazer um pão, possam elaborar diversas receitas. Com muitas imagens, o leitor encontrará o passo a passo de como preparar pretzel, panetone, baguete, pão integral...&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(179, 4, 'Confeitaria Chic - Bolos, Cupcakes e Guloseimas', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Peggy Porschen é um dos nomes mais notáveis e pioneiros no mundo do design contemporâneo de bolos. Renomada por sua habilidade requintada combinada ao seu amor pela confeitaria, sua paixão é criar obras de arte deliciosas, que são tão saborosas quanto aparentam. Este livro captura a essência da técnica de Peggy e seu uso inspirado das cores, garantindo que cada bolo seja acessível e ao mesmo tempo delicioso. &lt;em&gt;Confeitaria Chic&lt;/em&gt; possui uma variedade imbatível de receitas que combinam a confeitaria clássica com decorações simples e chiques. &lt;/span&gt;&lt;/p&gt;', '', '', ''),
(180, 4, 'Confeitaria Nacional: Massa Folhada Do Canapé à Sobremesa', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O renomado chef Luiz Farias, com mais de 30 anos de experiência profissional, premiado mundialmente e autor de vários livros, é também profundo conhecedor do mundo foodservice e especialista em pâtisserie. Formado pela École Lenôtre, Paris, fez vários cursos, treinamentos e capacitação em mais de 20 países. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro traz as mais maravilhosas receitas artesanais da confeitaria nacional, dividido em sete módulos, onde o chef resgata as receitas tradicionais encontradas nas melhores padarias e confeitarias do país, já aprovadas pela cultura gastronômica brasileira. Bolos e doces tradicionais, tortas crocantes, bolos para café e chá, deliciosos petit fours e, como não poderia faltar, as grandes tendências da confeitaria moderna.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(181, 4, 'Cozinha Alemã', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Conhecer a culinária de um país é inteirar-se de suas mais profundas raízes. A cozinha alemã é exemplo vivo de como costumes e história são traduzidos em sabores e, mais do que isso, de como esses sabores mudaram ou se adaptaram ao longo do tempo em diferentes locais. Heiko Grabolle, chef alemão radicado no Brasil, apresenta nesse livro mais de 100 receitas da cozinha alemã incluindo entradas, pratos principais e sobremesas. O leitor irá descobrir a nova cara da comida alemã e apreciar a riqueza da sua tradição por todo o mundo.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(182, 4, 'Cozinhas Profissionais', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Da celebração do convívio social em banquetes, na Antiguidade, à oferta de refeições em albergues, séculos mais tarde, e em hotéis e restaurantes, na era contemporânea, a história dos serviços de alimentação percorreu várias etapas de evolução. Este livro traz a historia desse processo, ilustrando a evolução desse segmento, e discute sua constituição hoje, discorrendo sobre as necessidades inerentes ao projeto e à operação de diferentes tipos de cozinhas profissionais.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(183, 4, 'Cozinheiro Nacional', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Uma preciosidade histórica, muito mais do que uma coletânea de receitas factíveis ou adaptáveis ao gosto moderno. Trata-se de um livro que é, paradoxalmente, mais referido e citado do que lido. É quase um mito sobre a origem de nossa culinária que, inexplicavelmente, não teve qualquer edição integral depois de 1910, razão pela qual todo bibliófilo, estudante da alimentação, gourmet ou simples curioso deve se interessar. Coleção das Melhores Receitas das Cozinhas Brasileira e Europeia. Gourmand World Cookbook Awards 2008 - Melhor Livro de História da Culinária.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(184, 4, 'Crèmes Brûlées', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;O chef francês Lionel Ortega apresenta nesta obra, 22 receitas do crème brûlée, que em francês significa &quot;creme queimado&quot;, uma sobremesa clássica na França. Depois de gelar, o toque a mais fica por conta do maçarico, que deixa uma deliciosa camada de caramelo crocante. A obra apresenta além da história do crème brûlée, equipamentos, dicas gastronômicas para o sucesso da sobremesa, algumas dicas sobre os produtos mencionados e fotos com instruções precisas, que garantem um resultado surpreendente. Leve e cremoso é impossível resistir ao delicioso creme brûlée. Escolha entre as combinações perfeitas e surpreenda-se.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(185, 4, 'Dendê - Símbolo e Sabor da Bahia', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A palmeira do dendezeiro representa um importante símbolo dos povos africanos na sociedade brasileira, especialmente na formação de sistemas alimentares e em ampliado uso industrial. Esse livro reúne especialistas nas áreas da botânica, agronomia, nutrição, antropologia, além de chefs que preservam receitas tradicionais e outros que criam uma nova cozinha de identidade afro-brasileira contemporânea. Dessa forma, o objeto central dendê terá leituras interdisciplinares, proporcionando ao leitor compreensão múltipla e plural na gastronomia e na cultura.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(186, 4, 'Dicionário do Doceiro Brasileiro', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Escrito inicialmente em 1892, o livro é uma compilação de 940 receitas com foco nos doces, com sua identidade única e ainda assim uma mistura das influências europeias. Nas entrelinhas, vê-se a construção do gosto, do paladar de uma nação formada por autóctones, colonizadores, escravos e imigrantes. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O antropólogo Raul Lody, na apresentação, faz uma análise de como o açúcar influenciou a economia e a sociedade brasileiras, realçando a importância da obra como documento histórico identificador de características sociais brasileiras.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(187, 4, 'Dos Cadernos de Receitas às Receitas de Latinha - Indústria e Tradição Culinária no Brasil', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Em vez de um item fresco e perecível, um ingrediente enlatado. No lugar de um caderno manuscrito, o rótulo da lata com a receita. Em vez da tigela e da espátula, uma batedeira elétrica. No lugar do fogão a lenha, o forno a gás. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro reconstitui uma história da alimentação que se mescla com a história da urbanização no Brasil, quando os eletrodomésticos e produtos industrializados são incorporados à cozinha, modificando receitas e reconfigurando hábitos. A narrativa se concentra na clássica doçaria nacional, revelando ao leitor como eram feitos ícones como o Quindim, o Bolo de Fubá e o Arroz-doce. Além disso, detalha a evolução que transformou o ato de cozinhar ao longo do tempo, revelando, por exemplo, por que lidar com as panelas é tão bem-aceito e reconhecido atualmente, se há algumas décadas as mulheres &quot;estudadas&quot; se orgulhavam de sequer saber fritar um ovo, e por que os projetos arquitetônicos mais recentes valorizam a cozinha integrada às áreas de estar, quando antes ela era um espaço relegado ao segundo plano.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(188, 4, 'Enciclopédia do Vinho - Vinhos, Vinhedos e Vinícolas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Tour abrangente pelos países produtores de vinho e seus principais vinicultores, a enciclopédia combina informações detalhadas com conselhos práticos sobre como aproveitar o máximo dessa bebida. Classificando cada produtor segundo sua qualidade, esta obra começa com uma análise do vinho e de como ele é feito e armazenado (do vinhedo para a vinícola, até chegar às adegas). Analisa as principais variedades de uva, os estilos e quais são os efeitos do solo e do clima sobre as características da bebida. Contém glossário, mapas e imagens de cada região do planeta.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(189, 4, 'Entre o Jardim e a Horta - As Flores que Vão Para a Mesa', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Esse trabalho do botânico Gil Felippe, que sempre se interessou por culinária, está repleto de observações sobre as flores que conhecemos e referências a muitas que desconhecemos. Foi elaborado com rigor e minúcia na organização de nomes de vegetais, históricos e geográficos. A artista plástica Maria Cecília Tomasi, especializada em ilustração botânica, colaborou com refinadas aquarelas, tornando-o também um livro de arte.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(190, 4, 'Espessantes na Confeitaria - Texturas e Sabores', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O agente espessante é a substância ou a mistura de ingredientes que aumenta a densidade de uma preparação, deixando-a mais condensada e consistente. Na confeitaria, o processo de elaboração do espessante requer cuidado e técnica, pois envolve a manipulação de elementos que podem ou não se agrupar bem. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Cada receita pede tipos específicos de espessantes, que resultarão em massas, líquidos, molhos, doces, produções domésticas ou industriais, e variados são os ingredientes utilizados para sua obtenção, desde féculas, farinhas, amido e tapioca até gelatinas e gomas, todos esses contemplados nesta publicação da chef Sandra Canella-Rawls, que com muito zelo selecionou mais de 250 receitas para aplicar toda a teoria contida na elaboração dos espessantes. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Dividido em quatro partes principais e cinco aplicações, o leitor poderá compreender qual é a melhor maneira de espessar uma mistura seguindo o critério de divisão entre proteínas (ovos, queijos e gelatina) e polissacarídeos (amidos, massas e gomas vegetais).&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(191, 4, 'Farinha de Mandioca - O Sabor Brasileiro e as Receitas da Bahia', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Na carta que escreveu ao rei de Portugal, em 1500, Pero Vaz de Caminha deixou registrado, sobre os hábitos naquela localidade recém-descoberta: &lt;em&gt;&quot;Eles não comem senão d''outra coisa a não ser dum inhame que brota de terra&quot;&lt;/em&gt;. Base alimentar dos indígenas, a mandioca acompanhou a miscigenação que resultou no povo brasileiro - índio, europeu e negro - e passou a integrar pratos de inspirações variadas que, hoje, formam a autêntica culinária nacional. Não à toa, em seu &lt;em&gt;&quot;História da Alimentação no Brasil&quot;&lt;/em&gt;, o folclorista Luís da Câmara Cascudo dedicou um capítulo especial à mandioca, denominando-a de &quot;rainha do Brasil&quot;, por conta de seu valor histórico e nutricional. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Em alguns estados do país, a farinha de mandioca - o subproduto mais famoso da raiz - é mais do que um ingrediente de cozinha. É o caso da Bahia, onde a dupla feijão com arroz é, na verdade, trio (feijão com arroz e farinha) e onde a farinha de mandioca envolve todo um conjunto de práticas e relações que se estabelecem por meio de sua produção e de seus usos. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Esses aspectos econômicos, sociais e culturais compõem os textos da presente coletânea, tão diversos em suas abordagens quanto a própria utilização da farinha. As receitas típicas reunidas pelos pesquisadores temperam esta leitura.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(192, 4, 'Farinha, Feijão e Carne Seca - Um Tripé Culinário no Brasil Colonial', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Em texto fluente e agradável, a autora nos leva, pelos trilhos da antropologia, à cozinha da sociedade colonial, onde ingredientes indígenas, negros e brancos se misturam para espessar o caldo da cultura alimentar brasileira. Esse livro contribui para uma percepção mais profunda do papel da gastronomia no estudo da cultura de um povo. Gourmand World Cookbook Awards 2005 - Melhor Livro de História da Gastronomia.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(193, 4, 'Festas em Miniatura - Docinhos para Comer com as Mãos em Qualquer Ocasião', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Surpreendentes e irresistíveis, os minidoces podem esconder grandes truques, desde o preparo até o armazenamento. Este livro traz mais de 70 de delícias em miniatura - cupcakes, panquequinhas, muffins, whoopie pies, mousses, macarons, cookies - para as principais datas comemorativas do nosso calendário e para eventos especiais, como casamento e batizado. Cada capítulo explica a origem da data festiva e apresenta os doces em mesas belíssimas assinadas por especialistas em decoração de eventos.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(194, 4, 'Frutas - Sabor à Primeira Dentada', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Para Gil Felippe, a beleza das frutas e o ato de comê-las, in natura ou em forma de doces ou compotas, não deixam de ligar-se ao conhecimento que delas a ciência pode oferecer. As características de cada fruta e algumas receitas tradicionais aqui se apresentam de maneira clara, acompanhadas de valiosas informações e delicadas aquarelas de Maria Cecília Tomasi.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(195, 4, 'Gastronomia - Cortes &amp; Recortes (volume 1)', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro é o primeiro volume de &lt;em&gt;&quot;Gastronomia: Cortes &amp;amp; Recortes&quot;&lt;/em&gt;, cujas organizadoras fazem parte da equipe do Laboratório de Gastronomia do Centro de Excelência em Turismo da Universidade de Brasília. Reúne 18 textos - escritos por nutricionistas, antropólogos, historiadores, sociólogos e economistas, entre outros estudiosos - que falam sobre processos de transformação da matéria-prima em alimento, rituais em torno da mesa, receitas e procedimentos alimentares que se modificam ao longo do tempo e de uma sociedade para outra.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(196, 4, 'Gastronomia - Cortes &amp; Recortes (volume 2)', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Para entender a importância da alimentação como patrimônio cultural, é preciso antes compreender as implicações da comida como reflexo das condições de vida dos indivíduos em determinado tempo e lugar. Este livro possibilita esta compreensão por meio da palavra de estudiosos que se debruçam sobre o tema a partir de diferentes perspectivas. De que forma a globalização tem afetado a maneira que nós comemos e o que comemos? Como tradicionais rituais alimentares permanecem, sucumbem ou se adaptam às transformações do cotidiano? Essas perguntas são respondidas de diferentes formas nos artigos reunidos nesse livro, à medida que seus autores - nutricionistas, antropólogos, historiadores e sociólogos, entre outros - exploram o vasto campo de possibilidades e significados, propiciado pela observação da relação entre o homem e o que ele come.&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(197, 4, 'Gastronomia no Brasil e no Mundo', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Ninguém duvida que a gastronomia faz parte do patrimônio de um povo, que ela é tão importante culturalmente quanto os museus, as festas, as danças e os templos religiosos. As especialistas Dolores Freixa e Guta Chaves dão sequência a anos de trabalho de pesquisa sobre a história da alimentação e, nesse livro, constroem um panorama da evolução da gastronomia no mundo e no Brasil, partindo do Mediterrâneo, berço da gastronomia ocidental. Abordam também aspectos da culinária profissional, como a formação dos grandes chefs e da nova geração, o surgimento da nova gastronomia brasileira e as tendências mundiais.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(198, 4, 'Grãos e Sementes - A Vida Encapsulada', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Sementes e grãos têm sido alimentos de grande importância na história da humanidade. Nesse livro, o autor, um prestigiado botânico, se detém sobre os mais conhecidos dentre eles, fornecendo dados a respeito de sua origem, história evolutiva, transmigração, propagação, situação atual, qualidades nutritivas e curativas, além de suas diferentes serventias. As aquarelas de Maria Cecília Tomasi enriquecem essa edição.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(199, 4, 'Gula d''África - O Sabor Africano na Mesa do Brasileiro', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Organizado por Flávia Portela, incansável ativista da igualdade racial e da cidadania, esse livro apresenta as principais receitas africanas adotadas pelo brasileiro. A obra faz parte do projeto Cara e Cultura Negra e é uma homenagem àqueles que contribuíram para a formação da cultura brasileira, seja por meio dos costumes, seja pelas danças, lendas, festas, gastronomia e outras inúmeras manifestações culturais.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(200, 4, 'Herança Culinária e as Bases da Gastronomia Molecular', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O êxito na cozinha é alcançado quando se compreende bem o que se faz. Este é o objeto da gastronomia molecular: ela explora os mil fenômenos que ocorrem no momento da preparação dos pratos. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A coagulação de uma simples clara de ovo não é extraordinária? O douramento de uma carne? Ou, então, o aumento do volume de um creme chantilly? &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Equipada com conhecimentos produzidos pela ciência, a tecnologia culinária pôde posteriormente ajudar a técnica culinária a progredir a fim de estimular os sentidos e, principalmente, dar amor aos convivas.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(201, 4, 'Iniciação à Enologia', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Longe de pretender-se completo ou aprofundado, esse livro aborda os assuntos  básicos sobre os vinhos e seus derivados, objetivando dar subsídios aos estudantes dos cursos superiores de turismo, hotelaria e gastronomia para aprofundarem seus estudos, assim como fornecer aos leitores em geral elementos para uma boa escolha nesse mercado hoje tão vasto.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(202, 4, 'Louco por Café - Antonello Monardo', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Ao fazer do café uma missão de vida, o calabrês Antonello Monardo acabou por extrair da mais tradicional bebida do povo brasileiro uma odisséia pessoal iniciada, no século passado, pelo avô, Domenico. Neste livro, o leitor poderá viajar por entre textos, ilustrações e fotos guiado pela força de uma tradição capaz de juntar, como poucos elementos culturais, os hábitos de toda a nação. Será apresentado, também, a exclusivas e surpreendentes receitas de delícias de café preparadas pelo próprio Antonello. Um deleite de aromas e sabores pensado para encher os olhos e a barriga.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(203, 4, 'Massa Folhada - Do Canapé à Sobremesa', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O renomado chef Luiz Farias, com mais de 30 anos de experiência profissional, premiado mundialmente e autor de vários livros, é também profundo conhecedor do mundo foodservice e especialista em pâtisserie. Formado pela École Lenôtre, Paris, fez vários cursos, treinamentos e capacitação em mais de 20 países. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro resgata e registra as receitas folhadas mais consumidas no Brasil e também uma grande variedade de modelagens inovadoras, atrativas, crocantes e criativas. A obra é dividida em seis módulos: Canapés, Salgados, Tortas Salgadas, Pizzas, Tortas Doces e Doces. Tudo ilustrado com fotos maravilhosas, passo a passo e DVD explicativo com dicas práticas.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(204, 4, 'Misturando Sabores - Receitas e Harmonização de Ervas e Especiarias', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro apresenta informações sobre origem e variações de 59 tipos de ervas e especiarias mais usadas no Brasil, incluindo nome em português e cinco outros idiomas, e dicas de como melhor utilizá-las e conservá-las. Ricamente ilustrada com fotos especialmente produzidas, a publicação mostra ainda 25 misturas mais comuns da culinária mundial e traz receitas selecionadas, em que ervas especiarias e as misturas enriquecem o sabor de entradas, pratos principais, acompanhamentos e sobremesas.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(205, 4, 'Moderna Cozinha Japonesa - Comida, Poder e Identidade Nacional', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Esse fascinante livro demonstra que a cozinha japonesa de hoje, considerada tradicional e de características atemporais, é, na verdade, uma criação moderna. A autora expõe, além de outros relatos, como a invenção dessa tradição foi influenciada pelas várias forças e circunstâncias que atuaram no último século da história do Japão. O crítico de gastronomia Arnaldo Lorençato com pertinência se refere à adoção da cozinha japonesa pelos brasileiros em pormenorizado texto de investigação histórica. &lt;/span&gt;&lt;/p&gt;', '', '', ''),
(206, 4, 'Nutrição Aplicada e Alimentação Saudável', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A nutrição é uma área básica do conhecimento humano, compreendendo a dietética como um de seus ramos mais delicados. Este livro se divide em quatro assuntos importantes para o estudante ou profissional da área: Nutrição e saúde pública; Nutrição aplicada à área clínica; Alimentação coletiva e Estudo experimental dos alimentos. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Assim, aborda desde os princípios que envolvem a nutrição humana e os aspectos específicos que devem ser considerados nos diferentes estágios da vida, como também traz conceitos relativos à avaliação nutricional, à saúde pública e à alimentação saudável. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Ao tratar da nutrição ligada à área clínica, considera os aspectos relativos à fisiopatologia e à dietoterapia, além de questões que implicam higiene e segurança alimentar. As técnicas dietéticas e a gestão em alimentação coletiva aprofundam o tema, sem deixar de suscitar questões relativas à gastronomia, ao estudo dos alimentos e ao desenvolvimento de novos produtos.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(207, 4, 'Nutrição de A a Z - Tudo o que Você Precisa Saber para Entender a Alimentação', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Os produtos transgênicos são confiáveis? Qual é a dieta mais saudável? Há alimentos suficientes para alimentar toda a humanidade? Este livro aborda essas e outras questões relacionadas com a nutrição de modo simples, claro e prático. Traz um resumo alfabético dos conceitos nutritivos mais importantes que o leitor deve ter em mente ao buscar uma alimentação saudável e adequada ao seu estilo de vida.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(208, 4, 'Nutrição, Dietética e Boa Cozinha - Soluções Criativas para Restrições Alimentares', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Nutrição e gastronomia fazem uma parceria para esclarecer que a alimentação saudável e a boa mesa também estão ao alcance de pessoas que sofrem com disfunções orgânicas, restrições ou alergias alimentares. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;A nutricionista Laura Sampaio enfoca os princípios da alimentação equilibrada e das dietas especiais para obesos, diabéticos, pessoas intolerantes a glúten, trigo e leite e derivados, explicando como controlar excessos em cada caso. Já o chef de cozinha Harold Lethiais oferece sugestões de cardápios adaptados a essas dietas especiais devidamente calculados em seus nutrientes. O livro traz ainda um caderno das receitas do chef Lethiais.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(209, 4, 'O Essencial em Cervejas e Destilados', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Os autores aliaram sua experiência no assunto, formada também em aulas, para elaborar essa súmula prática, útil, essencial. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O livro traz tudo o que é indispensável conhecer no universo das cervejas e dos destilados: processos de fabricação, teores alcoólicos, solos, climas, água, regiões produtoras, controle de qualidade e o extenso elenco desses produtos que são obras-primas da invenção humana com base nos prodígios vegetais da natureza. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Gourmand World Cookbook Awards 2007 - Melhor Livro sobre Bebidas&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(210, 4, 'O Pão na Mesa Brasileira', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Símbolo universal da alimentação, sua história é capaz de encantar brasileiros e o mundo. O pão frequenta democraticamente a mesa nacional, apresentando-se como ingrediente básico em pratos tradicionais tanto da nossa culinária como da dos imigrantes. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Esse livro da série &quot;A Formação da Culinária Brasileira&quot;, com prefácio de José Hugo Celidônio, ensaio de Raul Lody, fotos de Humberto Medeiros e mais de 70 receitas avalizadas pela especialista e diretora da Escola de Pão (RJ), Clécia Casagrande, une a mística massa ao imaginário refletido em sua história e consumo.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(211, 4, 'O Sushiman - Técnicas, Receitas e Segredos', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Ronaldo Catão é empresário da área de alimentação e diversão desde 1988. Também é fundador e professor da Academia do Sushi Escola de Culinária Japonesa Ltda. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Esta obra revela os segredos, sutilezas e sofisticações da culinária japonesa, num formato técnico e inovador, com quase 2000 fotos que ilustram o passo a passo do preparo de todos os tipos de sushi tradicionais e suas variações. O livro atende tanto os iniciantes, quanto os iniciados na milenar arte do sushi.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(212, 4, 'O Vinho e Suas Circunstâncias', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Leem-se aqui fatos sobre vinho do Porto, vinho Madeira, vinhos brasileiros, vinhos galegos, vinhos novos e antigos, champanhe. E muito também sobre circunstâncias que o vinho suscita ou suscitou na gastronomia, por exemplo, com o vasto elenco de acompanhantes do vinho, como o bacalhau e o caviar, ou mesmo de não acompanhantes que com ele têm uma identidade de fascínio, como o chocolate.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(213, 4, 'Os Sabores da América - Cuba, Jamaica, Martinica, México', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Algumas das ilhas antilhanas em que Colombo aportou nas suas quatro viagens ao Novo Mundo formam a região cultural tratada aqui. Com atenção a pormenores significativos, trechos de obras literárias e referências históricas, esse livro tem o bom gosto que o tema sugere - e traz receitas ilustrativas dessa culinária tropical. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Gourmand World Cookbook Awards 2004 - Melhor Livro de Gastronomia Latina no Brasil&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(214, 4, 'Os Sabores do Douro e do Minho - Histórias, Receitas, Vinhos', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Esse livro explica por que a Região Demarcada do Douro vai além do Porto, e como o Vinho Verde é hoje uma das bebidas mais tradicionais e também mais modernas no campo da enologia; apresenta as castas que fazem parte de cada vinho, conta a história de quintas famosas, revela curiosidades dos modos de produção, ensina a comprar, armazenar e servir tipos diferentes de vinho e dá dicas de harmonização com alimentos inusitados. Traz ainda receitas de pratos típicos e roteiros de passeios nessas regiões. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Gourmand World Cookbook Awards 2009 - Melhor Livro de Vinhos Europeus&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(215, 4, 'Padaria Basilicata - Cent''anni Di Storia (1914-2014)', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Contar os cem anos de vida da Padaria Basilicata é muito mais que descrever a trajetória e o crescimento de um estabelecimento comercial. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;É acompanhar a história da imigração italiana no Brasil, conhecer um pouco da Itália, como os imigrantes atravessaram o Atlântico e aprenderam a se adaptar à nova terra; descobrir um pouco das dificuldades que os descendentes italianos enfrentaram no Brasil durante a Segunda Guerra Mundial e, acima de tudo, notar a união desse povo que, mesmo longe da Itália, procurou formas de reunir conterrâneos e parentes e diminuir a saudade de sua terra natal. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Desde sua origem, a Padaria Basilicata é um dos redutos onde a colônia italiana vem para se aproximar de suas raízes. Lá, encontram uma sensação de acolhimento e um perfume de casa italiana, vindo principalmente de seu pão.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(216, 4, 'Padaria Brasil', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Consagrado mundialmente, autor de grandes livros premiados e com mais de 30 anos de experiência, o Chef Luiz Farias, reúne nesta obra receitas que fazem grande sucesso em nossas padarias. Além disso, explica a evolução do modelo de padaria no Brasil, estabelecimento que faz parte da cultura brasileira. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro traz a história, os conceitos, as principais matérias primas, equipamentos, utensílios e os processos que são fundamentais na panificação moderna.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(217, 4, 'Panelinha - Receitas que Funcionam', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Panelinha é o site que Rita Lobo criou no ano de 2000 para ensinar a preparar pratos saudáveis, revelando truques e manhas, de modo que qualquer pessoa consiga fazer. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Para o livro, foram reunidas sugestões para variadas situações e ocasiões do cotidiano: jantares práticos, saladas elaboradas, massas rápidas, grãos para o dia a dia, comida de criança, pratos variados com peixes, aves e carnes, sobremesas saudáveis, bolos fofíssimos, pães integrais, tudo para facilitar a vida das pessoas que acreditam na boa alimentação como a base da vida.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(218, 4, 'Pantanal - Sinfonia de Sabores e Cores', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Receitas típicas e informações sobre a cultura local, junto aos segredos da cozinha e da alma pantaneiras: dos mandamentos do tereré, tradicional bebida da região, à exuberância dos rios e da flora, essa publicação é prefaciada por Almir Sater, poeta, compositor e violeiro pantaneiro. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Ricamente ilustrada com fotografias de Humberto Medeiros, traz ensaio de Marlei Sigrist, pesquisadora da cultura pantaneira, sobre aspectos importantes da conquista e ocupação da região por diferentes povos e culturas. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Faz parte da série &quot;A Formação da Culinária Brasileira&quot;.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(219, 4, 'Pão - Arte e Ciência', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Todos supõem conhecer bem o pão, esse alimento universal e ao alcance diário do paladar de ricos e pobres, mas serão surpreendidos nesse trabalho pela variedade de informações que o tema fornece. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Sua antiguidade, que faz desse alimento um produto tipicamente artesão, contrasta, por exemplo, com sua modernidade, no sentido do que já se criou em panificação e da interminável condição de continuar criando. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Gourmand World Cookbook Awards 2005 - Melhor Livro sobre Pão.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(220, 4, 'Pâtisserie em Casa - Receitas para Você Dominar a Arte da Pâtisserie Francesa', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Com as dicas de Will Torrent, você aprenderá a fazer desde as técnicas básicas da confeitaria francesa até as mais elaboradas tortas, petits fours, bolos, pães e viennoiseries. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Com as oitenta deliciosas receitas apresentadas neste lançamento do Senac São Paulo e descritas passo a passo, você perceberá que fazer doces com um toque francês é muito mais tranquilo do que pode parecer.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(221, 4, 'Pequeno Atelier de Macarons', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Lindos macarons, bem redondos e sempre gostosos! Aprenda tudo sobre a preparação dessa elegante doçura. Da mais simples à mais original, as receitas deste livro são encantadoras: macaron de chocolate, de cereja, de manga e mascarpone, de violeta e chocolate branco.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(222, 4, 'Petits Gateaux da École Lenôtre', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Os petits gâteaux presentes neste livro encantam os olhos e conduzem a descobertas muito saborosas. São receitas claras, precisas, novas: para a hora do chá, para partilhar durante uma viagem, de guloseimas ou de deliciosas especialidades colhidas em uma volta pelo mundo gourmand: dos Estados Unidos, Bélgica, Alemanha, Itália, Reino Unido e Magreb. É uma mina de ideias destinadas a renovar as escolhas de uma clientela exigente ou para encantar deliciosamente os amigos. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Edição bilíngue (francês/português).&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(223, 4, 'Pizza - Uma História Global', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;O debate sobre a melhor maneira de fazer uma pizza é interminável. Ela pode ser de massa fina ou grossa; ser coberta com pepperoni, atum, muçarela, manjericão... Não importa a combinação dos ingredientes, a pizza pode ser preparada de diversas maneiras. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Neste livro, Carol Helstosky apresenta a fascinante e agitada história da pizza, desde onde surgiu até os dias atuais, em que podemos encontrá-la em todos os cantos do planeta. &lt;/span&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt; background-color: initial;&quot;&gt;O livro também traz receitas para que o leitor possa comprovar a deliciosa simplicidade e complexidade desse prato.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(224, 4, 'Pizza Alba Pezone - Receitas dos Melhores Pizzaiolos de Nápoles', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Nápoles: o berço da pizza. Cinco pizzaiolos confiaram os seus segredos para a Alba Pezone que nos fornece neste livro receitas autênticas e saborosas. Boa viagem! &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Alba Pezone é a imagem de seu livro: napolitana, franca, decidida e passional. Cozinheira chefe, ela dirige a Parole in Cucina, escola de cozinha italiana em Paris que fundou em 2004. Jornalista gastronômica, ela compartilha as suas preferências com o mesmo entusiasmo. &lt;/span&gt;&lt;/p&gt;', '', '', ''),
(225, 4, 'Pudim de Avó', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Sabe aquelas sobremesas gostosas que você comia aos domingos, na casa da vovó? Entre as travessuras dos primos e as histórias do vovô? &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro traz muitas dessas delícias caseiras, inspirado nos deliciosos momentos em família e no carinho e paciência com que as avós preparam cada prato para seus netos. Sempre atentas às nossas preferências, elas não decepcionam e fazem de qualquer almoço familiar um momento inesquecível. &lt;/span&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt; background-color: initial;&quot;&gt;Uma lembrança calorosa, com açúcar, aroma e muito sabor. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt; background-color: initial;&quot;&gt;&lt;strong&gt;&quot;Pudim de Avó&quot;&lt;/strong&gt; ensina a preparar pudins, flans, manjares, pavês, mousses, compotas, geleias e terrines - conhecimento passado adiante, de geração em geração, de avó para avó. A cozinha de outros tempos, de volta, em sua casa! Não tem como não se arriscar, no forno ou no fogão. Seja para quebrar a rotina gastronômica, relembrar a casa da vovó, agradar aos convidados ou, simplesmente, treinar para a vinda dos netos. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt; background-color: initial;&quot;&gt;Você pode experimentar uma (ou mais) das 50 receitas aqui reunidas, desde o simples pudim de leite condensado, à geleia de morango passando pela terrine de ameixa, a compota de kiwi, a geleia de caqui, o mousse de limão e o famoso &quot;brigadeirão&quot;.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(226, 4, 'Risotos - 50 Receitas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Com o lançamento de &lt;em&gt;&quot;Risotos - 50 Receitas&quot;&lt;/em&gt;, o Senac São Paulo traz para os domínios da cozinha de casa um dos pratos mais fantásticos e versáteis da culinária italiana: o risoto! Prato que tem como base o grão de arroz, um bom caldo - que pode ser de legumes, carne, aves ou peixe, um pouco de vinho, manteiga, queijo ralado, acrescidos dos mais variados ingredientes, o risoto entrou para a história por meio do famoso risotto alla milanese, aquele suculento e cremoso arroz, colorido e perfumado pela flor de açafrão - e que combina divinamente com carnes vermelhas, como a rabada, ou ossobuco, prato não menos milanês. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Difícil é escolher o que experimentar primeiro: Risoto de Abobrinha com peito de peru; Risoto de Alcachofra com queijo prato; Risoto de Brócolis e bacon; Risoto de Palmito, abobrinha e gorgonzola; Risoto de Linguiça com amêndoas; Risoto de Muçarela de búfala e tomate seco. Está tudo revelado neste imperdível livro de cozinha, feito para todos que amam comer bem, mas não querem desperdiçar tempo nem muitos esforços no preparo. Risotos são justamente o melhor exemplo nesse sentido.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(227, 4, 'Sabores Perigosos - A História das Especiarias', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro trata da história das especiarias e das plantas aromáticas e do modo como seu fascínio funcionou como catalisador para o desenvolvimento de rotas marítimas e terrestres, além de contribuir para profundas mudanças sociopolíticas em países do Ocidente e do Oriente. Fruto de minucioso estudo, destaca 60 especiarias, que são analisadas em separado e associadas à região em que foram cultivadas originalmente. &lt;strong&gt;&lt;em&gt;&quot;&lt;/em&gt;&lt;em&gt;Sabores Perigosos&quot;&lt;/em&gt;&lt;/strong&gt; ainda se dedica a analisar o significado das especiarias no decurso da história, o prazer que proporcionam, seus benefícios para a saúde e as guerras por elas provocadas.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(228, 4, 'Segurança de Alimentos no Comércio - Atacado e Varejo', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;As boas práticas tratadas neste livro englobam as regras de higiene e de segurança de alimentos em supermercados, açougues, mercearias, hortifrutis, restaurantes, feiras livres e distribuidores. Além dos procedimentos de manipulação, as autoras apresentam os diferentes aspectos estruturais das instalações, dos serviços de apoio, dos controles de pragas, resíduos e água e da escolha adequada das matérias-primas. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Com esta publicação, proprietários e responsáveis técnicos de estabelecimentos do atacado e do varejo têm a oportunidade de obter de maneira objetiva as informações para garantir uma gestão eficiente em termos de segurança de alimentos.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(229, 4, 'Segurança na Manipulação dos Alimentos - Missão (Super) Possível', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Nessa história em quadrinhos, o cartunista Aroeira conta como o proprietário de um restaurante, seu Bira, o gerente Marquinhos e o biólogo Silas esclarecem o que provocou a contaminação alimentar em seus clientes. Juntos, os personagens investigam e ensinam como manipular os alimentos de maneira segura, para que não ocorra contaminação em serviços de alimentação. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Temas como higiene pessoal, cuidados com a segurança no ambiente de trabalho, perigos de contaminação físicos, químicos e biológicos são tratados com ilustrações bem-humoradas que informam e divertem ao mesmo tempo. &lt;/span&gt;&lt;/p&gt;', '', '', ''),
(230, 4, 'Soja - Nutrição e Gastronomia', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Uma das grandes mudanças na área da gastronomia nas últimas décadas trata da evolução do conceito de boa alimentação. Deixamos de acreditar na fartura e em refeições gordurosas e passamos a pensar em qualidade de vida, longevidade e saúde. E é exatamente aqui que entra o tema desse livro. Além de apresentar alguns dos benefícios à saúde conquistados à base de uma dieta de soja, o livro também aborda a história do produto, seu cultivo, sua importância econômica e fornece uma lista de receitas.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(231, 4, 'Sou Barista', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Editora Senac São Paulo e Editora Senac Nacional apresentam mais um volume da &quot;Série Sou&quot;, uma coleção criada especialmente para atender à demanda de formação de profissionais na área de prestação de serviços. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;&lt;strong&gt;&lt;em&gt;&quot;Sou Barista&quot;&lt;/em&gt;&lt;/strong&gt; serve tanto àqueles já iniciados na profissão quanto aos que estão apenas começando e promete ser uma fonte rica de ensinamentos sobre a origem do café, sua expansão para o mercado, o surgimento da profissão do barista e as suas técnicas mais essenciais.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(232, 4, 'Sou Cozinheiro', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;As Olimpíadas de 2016 no Brasil provoca desde já o aquecimento do mercado de trabalho nos setores de gastronomia e culinária, cujos profissionais precisarão estar muito bem preparados para atender de modo adequado os inúmeros turistas que visitarão nosso país. Este livro foi feito justamente para esses profissionais de cozinha, que já atuam no mercado mas buscam se atualizar. Traz técnicas culinárias, depoimentos de experientes profissionais da área, tendências e outras informações relevantes para o aperfeiçoamento do profissional.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(233, 4, 'Sou Garçom', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Especialistas alertam: os profissionais precisam estar bem preparados para destacarem-se no mercado profissional e aproveitarem as oportunidades que as Olimpíadas de 2016 gerarão. Para receber de forma adequada os turistas que virão ao Brasil assistir aos jogos, hotéis, bares e restaurantes deverão manter o foco na qualificação, atualização e no aperfeiçoamento de seus profissionais. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Com técnicas de serviço demonstradas em fotos, dicas de comportamento e de atendimento, perspectivas de carreira como autônomo, este é um livro essencial para quem quer aprimorar-se.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(234, 4, 'Sou Merendeira - Rotinas Profissionais do Agente de Alimentação Escolar', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;A merendeira tem papel decisivo na educação alimentar das crianças, por incentivar o consumo de determinados alimentos no momento da refeição. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Assim, em primeiro lugar, este livro pretende dar o devido valor ao seu trabalho na escola também como educadora. Em termos práticos, a merendeira encontrará nesta edição orientações sobre as etapas de sua rotina de trabalho, da limpeza e organização do ambiente até ótimas dicas para preparar os alimentos de forma nutritiva e saborosa. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Um caderno com receitas de saladas, carnes, guarnições, sopas, aproveitamento integral dos alimentos, salgados e sanduíches, sobremesas, pães e bolos fecha o livro com chave de ouro.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(235, 4, 'Sou Recepcionista', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Não importa o segmento ou a área de atuação, o trabalho de um recepcionista vai muito além da &quot;arte de bem receber&quot;. Preparo técnico, profissionalismo, empatia são apenas alguns exemplos das competências que ele deve ter. Com a proximidade das Olimpíadas de 2016 no Brasil, a necessidade de aprimoramento profissional torna-se cada vez mais premente. Para atender a essa demanda, este livro apresenta a rotina de trabalho em alguns segmentos do mercado turístico e de saúde: hotéis, eventos, cruzeiros, hospitais e clínicas. &lt;/span&gt;&lt;/p&gt;', '', '', ''),
(236, 4, 'Técnicas de Confeitaria Profissional', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Apresentando o passo a passo da preparação de inúmeros ícones da confeitaria internacional, esse livro contribui para a formação de confeiteiros e para aprimorar a prática dos profissionais. À edição brasileira a autora acrescentou alguns doces típicos da nossa cultura, como o brigadeiro, sistematizando receitas e técnicas de preparo. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Com belas fotos que ilustram cada etapa do processo, a edição brasileira contou com a revisão técnica do chef Renato Freire, responsável pela cozinha da tradicional Confeitaria Colombo, no Rio de Janeiro.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(237, 4, 'Técnicas de Cozinha Profissional', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Com procedimentos e técnicas detalhados e fotos de todo o processo de preparo de pratos, esse livro contribui para a formação do profissional cozinheiro. Apresenta rigorosa padronização de receitas, medidas e técnicas desenvolvidas pelo Instituto Internacional de Artes Culinárias Mausi Sebess, líder na Argentina em formação profissional para a área de gastronomia, que adaptou as receitas para o nosso mercado. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;A edição brasileira contou com a revisão técnica do chef Renato Freire, da tradicional Confeitaria Colombo, no Rio de Janeiro.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(238, 4, 'Técnicas de Padaria Profissional', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Terceiro livro que surge da parceria do Senac com o Instituto Internacional de Artes Culinárias Mausi Sebess, da Argentina, &lt;strong&gt;&lt;em&gt;&quot;Técnicas de Padaria Profissional&quot;&lt;/em&gt;&lt;/strong&gt; apresenta as tecnologias e os equipamentos disponíveis e demonstra, passo a passo, os procedimentos de preparo dos melhores pães do mercado internacional com legendas objetivas e fotos de dar água na boca. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A obra é voltada para profissionais de panificação e confeitaria, um setor que soube se reinventar, superar as crises e se fortalecer no mercado brasileiro.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(239, 4, 'Uma Dose de Conhecimento Sobre Bebidas Alcoólicas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro pretende que o leitor, tanto leigo como estudioso, perceba que cada gole fica mais interessante e prazeroso se for acompanhado de conhecimento sobre as bebidas. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;São cinco capítulos sobre os processos de elaboração que distinguem os diferentes tipos de bebidas, incluindo história, lendas, métodos de produção e tipos de classificações, marcas famosas, curiosidades, etc. bebidas fermentadas, destiladas e compostas, além de receitas dos coquetéis mais elaborados no mundo.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(240, 4, 'Viajando na Cozinha - Dicas, Truques e Receitas', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Culinária eficiente e moderna. Isso é o que reserva Kitty Assis para aos apaixonados pela boa cozinha. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;A autora é uma grata surpresa em sua especialidade e combina requinte com praticidade, fazendo uma viagem pela cozinha contemporânea, derrubando mitos e mistérios, sem fazer qualquer tipo de concessão à qualidade. Para iniciantes e veteranos na cozinha, para leigos e especialistas, ela apresenta um livro acima de tudo instrutivo, compartilhando com o leitor toda a sua vivência profissional e as histórias colecionadas em viagens pelo mundo do sabor.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(241, 4, 'Cozinha Fácil para Meninas', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Um livro de receitas fáceis e divertidas para quem quer curtir a cozinha e aprender a preparar um montão de pratos para a família inteira: delícias doces, lanches gostosos, pratos salgados e... Muitas ideias para sua festa de aniversário! Com mais de 30 receitas este livro é destinado às meninas que estão tendo seu primeiro contato com a cozinha da mamãe.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(242, 4, 'Macarons de Chocolate', '', '', '', ''),
(245, 4, 'Dieta de Academia - 120 Receitas para Malhar, Secar e Definir', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;A vida de quem treina não é fácil! Há uma série de alimentos que você tem de reduzir o consumo drasticamente e outros que se tornam repetitivos e podem cansar o paladar. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Foi pensando nestes problemas que o autor, Michael Matthews, partindo de suas próprias necessidades, criou boas alternativas em uma dieta que une os nutrientes essenciais para garantir resultados, mas que não pareça ração de guerra ou alimento sem gosto. Se você quer saber como construir músculos e queimar gordura por meio de uma alimentação saudável e refeições deliciosas, práticas e fáceis de preparar, este é o livro perfeito para você!&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(246, 4, 'Madeleines de Chocolate', '', '', '', ''),
(247, 4, 'Ricota de Tofu', '', '', '', ''),
(248, 4, 'Salada de Erva Doce e Repolho Roxo', '', '', '', ''),
(249, 4, 'Espaguete com Queijo de Cabra e Aspargos', '', '', '', ''),
(250, 4, 'Filé de Salmão ao Molho de Limão e Alecrim', '', '', '', ''),
(251, 4, 'Pimentões Recheados com Atum', '', '', '', ''),
(252, 4, 'Yakisoba', '', '', '', ''),
(254, 4, 'Caldinho de Feijão Branco com Camarão', '', '', '', ''),
(255, 4, 'O Clássico Frango ao Curry', '', '', '', ''),
(256, 4, 'Gaspacho', '', '', '', ''),
(257, 4, 'Mojito', '', '', '', ''),
(258, 4, 'Niçoise Moderninha', '', '', '', ''),
(259, 4, 'Tiramisu', '', '', '', ''),
(262, 4, 'Cauda de Lagosta com Aïoli', '', '', '', ''),
(263, 4, 'Cordeiro com Salada de Figo', '', '', '', ''),
(264, 4, 'Espetos de Frango Yakítori', '', '', '', ''),
(265, 4, 'Escondidinho de Charque', '', '', '', ''),
(266, 4, 'Medalhão com Molho de Cachaça e Purê de Mandioquinha', '', '', '', ''),
(267, 4, 'Picanha Grelhada com Molho de Maracujá', '', '', '', ''),
(268, 4, 'Chucrute com Linguiça', '', '', '', ''),
(269, 4, 'Mexilhões com Nata e Vinho Branco', '', '', '', ''),
(270, 4, 'Pato Assado', '', '', '', ''),
(271, 4, 'Sopa de Cebola', '', '', '', ''),
(272, 4, 'Crepe de Frutas com Calda de Morango', '', '', '', ''),
(273, 4, 'Manjar de Caju', '', '', '', ''),
(274, 4, 'Risoto com Legumes no Melão', '', '', '', ''),
(275, 4, 'Torta de Morango', '', '', '', ''),
(276, 4, 'Filé de Tilápia ao Molho de Cogumelos', '', '', '', ''),
(277, 4, 'Moqueca de Peixe', '', '', '', ''),
(278, 4, 'Salmão com Aspargos', '', '', '', ''),
(279, 4, 'Strogonoff de Peixe', '', '', '', ''),
(280, 4, 'Risoto Baião de Dois', '', '', '', ''),
(281, 4, 'Risoto de Alho-poró e Queijo Montanhês', '', '', '', ''),
(282, 4, 'Risoto de Aspargos', '', '', '', ''),
(283, 4, 'Risoto de Bacalhau', '', '', '', ''),
(284, 4, 'PANETTONE LA RIOJA', '', '', '', ''),
(285, 4, 'EMPÓRIO SANTO EXPEDITO', '', '', '', ''),
(286, 4, 'Arroz de Carreteiro (Vegetariano)', '', '', '', ''),
(287, 4, 'Panquecas (Vegetariana)', '', '', '', ''),
(288, 4, 'Pastel Assado de Cogumelos', '', '', '', ''),
(289, 4, 'Waffles da Angie', '', '', '', ''),
(290, 4, 'Figos Assados com Xarope de Bordo', '', '', '', ''),
(291, 4, 'Muffins de Nozes e Mirtilo', '', '', '', ''),
(292, 4, 'Torta de Ameixas com Creme de Amêndoas', '', '', '', ''),
(293, 4, 'Tortinhas de Maçã e Nozes Pecãs', '', '', '', ''),
(294, 4, 'Cozinha Prática', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;As dicas compartilhadas por Rita Lobo na TV estão aqui!&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Técnicas culinárias, truques de economia doméstica e todas as receitas da temporada de básicos do programa Cozinha Prática, do GNT. Um curso de culinária em 13 capítulos muito bem explicados e ilustrados.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Você conhece alguém que...&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;... faz risoto mas não consegue preparar o arroz soltinho?&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;... não tem ideia de como congelar o feijão?&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;... não sabe a diferença entre aipim, macaxeira e mandioca (pegadinha, não tem diferença)?&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;... fica na dúvida entre usar alecrim ou manjericão na receita?&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;... acha que o leite condensado é que dá gosto no arroz-doce?&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;... não acredita que, com a técnica certa, a fórmula “chocolate + água = musse” funcione?&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;... nunca fez leite de coco caseiro? Muito menos ketchup?&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;... tem medo de assar pão em casa?&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Essa pessoa é você?&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro vai mudar a sua vida.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(295, 4, 'A &amp; B de A a Z - Entendendo o Setor de Alimentos &amp; Bebidas', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Por que será que é tão comum vermos donos de bares, restaurantes ou similares que têm sua formação em áreas totalmente distintas? São ex-gerentes de banco, ex-vendedores de carros, advogados recém-aposentados que se aproveitam de uma oportunidade e, muitas vezes, realizam “o sonho de ter um restaurante”. Parece que basta ter certo talento culinário, uma boa rede de relacionamentos e um imóvel bem localizado para que qualquer um possa se lançar no mercado de Alimentos 8t Bebidas e abrir um bar ou um restaurante.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;A mídia, por sua vez, se encarrega de divulgar empreendimentos que viraram sucesso da noite para o dia, iludindo ainda mais aqueles que sonham com sua cozinha profissional, com suas mesas lotadas e filas de clientes na porta de seu restaurante. No entanto, a realidade é mais dura do que parece. Até pouco tempo, construir e gerenciar um bar ou um restaurante não se aprendia na escola e, por isso, não se podem desmerecer todos os empresários desse ramo que aprenderam na prática, errando e acertando, com a experiência. Mas, o número dos que fracassaram também é bastante expressivo, porém, não divulgado.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Atualmente, os cursos de gestão nas áreas de Alimentos &amp;amp; Bebidas e, até mesmo, cursos universitários (como Gastronomia e Hotelaria) permitem, por meio do aprendizado da teoria, entender um pouco mais sobre a administração de empreendimentos de Alimentos &amp;amp; Bebidas, diminuindo a margem de erro quando a hora da prática chegar. É esse o principal objetivo desta obra.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(296, 4, 'À Mesa com Gilberto Freyre', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;O livro traz as doces lembranças e os hábitos gastronômicos desse sociólogo pernambucano de renome internacional - referência para historiadores e estudantes -, que também deixou marcado em sua obra o valor cultural da mesa brasileira. Fazendo parte da série A Formação da Culinária Brasileira, essa publicação está entre os projetos que foram desenvolvidos por uma equipe de instrutores dos restaurantes escola do Senac, antropólogos, especialistas em gastronomia, escritores e fotógrafos.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Gilberto Freyre: sociólogo, escritor, mestre da antropologia. Muito se conhece, Brasil adentro e mundo afora, de sua extensa obra intelectual Obra monumental esta, e que cuida amiúde dos hábitos gastronômicos da gente brasileira: ensina-nos o autor, muito se pode conhecer de um povo por meio de sua culinária.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Mas... Gilberto Freyre, o homem.&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Seus gostos? Suas preferências?&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Seus amigos?&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Aí, então, melhor fechar seus livros e sentar-se à mesa com o grande mestre. Mesa generosa do casarão de Apipucos, lugar de contar histórias, confidenciar, trocar ideias e, claro é, de muito bem comer na companhia de familiares e de amigos queridos: pratos da tradição nordestina, receitas de família, receitas exóticas adaptadas a seu gosto pessoal, frutas de Apipucos, doces caseiros, conhaque de Pitanga.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Essa é a saborosa empreitada a que nos leva este livro, organizado pelo antropólogo Raul Lody e editado pelo Senac em parceria com a Fundação Gilberto Freyre.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Trata-se do primeiro título da nova série editorial A Mesa Brasileira, da coleção A Formação da Culinária Brasileira publicada pelo Senac Nacional. Na nova série, personagens emblemáticos de nossa cultura, dos mais vários extratos sociais, irão introduzir o leitor no dia a dia da mesa brasileira e levá-lo a passear na saborosa história do nosso cotidiano.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Gilberto Freyre, mais uma vez, abre caminhos.&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(297, 4, 'Alcachofra - A Flor e Seus Segredos - 134 Receitas', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Flor de pétalas rígidas e cerradas, a alcachofra oculta sob a aparência quase primitiva de sua conformação uma riqueza de possibilidades nutricionais e terapêuticas que a tradição consagrou, e que hoje a ciência em parte confirma.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Preparada das mais diversas maneiras por diferentes povos desde a Antiguidade, seu uso foi associado à cura ou mitigação de vários males, como os relacionados ao fígado e aos rins. Nesse remoto passado, algumas de suas propriedades foram também aproveitadas na cosmética, com a elaboração de produtos para tratar afecções da pele. Na atualidade, os benefícios que essa flor pode promover para a saúde, devidamente constatados em testes laboratoriais, só começaram a ser divulgados após a Segunda Guerra Mundial, gerando o aumento de seu consumo e a ampliação de seu cultivo no mundo.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Chegada ao Brasil pela mão de imigrantes italianos no início do século XX, a alcachofra vem conquistando cada vez mais o paladar dos brasileiros na medida em que festivais organizados na época da safra divulgam a grande variedade de pratos que podem ser confeccionados com ela, bem como as vantagens de consumi-la.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro apresenta 134 receitas de Maria Montanarini, especialista na criação de iguarias que utilizam a alcachofra como principal ingrediente - como o doce de alcachofra por ela inventado, de que não se conhece produto similar. Prová-las uma a uma é como despetalar essa flor para chegar a seu coração: conhecê-la pouco a pouco, até dominar a arte de apreciá-la.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(298, 4, 'Alegria na Cozinha - Lanches Divertidos', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Neste livro você encontrará 40 receitas de lanches infantis inspirados na tradicional arte japonesa chamada Bentô. Ricamente ilustrado com fotografias e “passo-a-passo” de cada receita o livro indica os ingredientes, os instrumentos necessários para a elaboração dos pratos, além de dicas e informações para facilitar a incursão de adultos e crianças no mundo mágico da cozinha.&lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Bom proveito!&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;O que fazer para uma criança comer bem? Essa é uma das inúmeras preocupações que acometem as mães de forma sistemática. Pensando nisso, a autora Evelyne Ofuji apresenta neste livro o passo-a-passo de diversas receitas criativas de lanches originais, com formas inusitadas, sempre com o objetivo de incentivar nas crianças o gosto pela alimentação saudável. De forma prática e rápida convida seu leitor a conhecer o mundo do Bentô, a tradicional arte japonesa que apresenta alimentação equilibrada, usando a fantasia e a imaginação no preparo dos pratos.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Seu trabalho pode ser definido como uma proposta de &quot;brincar de comer&quot;, quando a criança é estimulada a consumir e elaborar alimentos importantes, nutritivos e saborosos.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Com sua vasta experiência na área a autora, de forma lúdica, transforma a aparência dos lanches infantis, dando-lhes carinhas e formatos divertidos, e convida os pequenos e seus responsáveis a mergulhar, com segurança, no mundo da cozinha criativa.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(299, 4, 'Alimentação &amp; Nutrição - Cozinha Saudável, Cardápio Equilibrado, Alimentos Seguros', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Alimentar-se bem não significa apenas comer delícias! Este livro mostra o papel essencial da nutrição na vida de crianças e adolescentes e na prevenção de doenças e manutenção da saúde na vida adulta. Manipuladores de alimentos como cozinheiros, merendeiras e lancheiros terão a oportunidade de aprender a montar cardápios saudáveis e nutritivos. As funções dos nutrientes, a importância da higiene e dos controles de qualidade no processo de produção também são temas abordados numa linguagem simples e direta.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Todo profissional que prepara, serve ou manipula alimentos deve dominar os conhecimentos básicos sobre nutrição, propriedades dos nutrientes e cuidados com a segurança dos alimentos.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Auxiliares de cozinha, lancheiros e merendeiros têm neste livro a oportunidade de aprender a planejar cardápios e a preparar alimentos saudáveis, preservando seus nutrientes, observando os principais controles de qualidade, segurança e higiene no ambiente de trabalho. Com a leitura e a consulta frequente desta publicação, os profissionais da área de alimentação vão se sentir mais confiantes para preparar e servir alimentos nutritivos, saborosos e seguros.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(300, 4, 'Alta Gastronomia Diet e Light - Sem Glúten, Sem Lactose, Com Redução de Sal e Calorias', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Tendemos hoje a consumir uma maior quantidade de alimentos hipercalóricos, produzidos com muita gordura, carboidratos simples, açúcares e alta concentração de sal.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;No entanto, produtos especiais - voltados à real necessidade do hipertenso, ou dedicados a outros grupos com restrições alimentares, como os celíacos (que não podem consumir glúten), ou às pessoas com intolerância à lactose - já podem ser encontrados em grande parte dos supermercados e dos restaurantes. Nesses casos, o preparo dos alimentos exige mais atenção e certo conhecimento alimentar.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Myrian Abicair e Filipe Baccarin apresentam aqui receitas sem glúten, sem lactose, com baixo teor de gorduras e com redução de sal que ficam longe da falta de sabor que costuma ser associada à alimentação para pessoas com restrições alimentares. São pratos sofisticados, testados e indicados também para pessoas sem essas restrições mas que buscam qualidade e os prazeres sem culpa da boa gastronomia.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(301, 4, 'Arte de Cozinha - Alimentação e Dietética em Portugal e no Brasil (Séculos XVII-XIX)', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Finalmente, o leitor brasileiro tem em mãos Arte de cozinha, primeiro livro de culinária publicado em língua portuguesa, em 1680. A obra traz na íntegra as receitas de Domingos Rodrigues e também algumas receitas atualizadas pela chef Flávia Quaresma, para que o cozinheiro atual possa reproduzi-las. Além disso, o prefácio da antropóloga Paula Pinto e Silva ajuda a compreender e contextualizar a obra, e o glossário esclarece termos como afogar (ensopar) e perdigoto (filhote de perdiz), entre outras curiosidades.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Um apreciado purê de peito de galinha, farinha de arroz, leite e açúcar é uma das receitas da primeira obra de culinária impressa em português, em 1680. O livro, assinado pelo cozinheiro do rei de Portugal, refletia a transição dos hábitos alimentares medievais, marcados pelo sabor doce, para uma nova cozinha que moderava nas especiarias, introduzia os vegetais típicos da dieta dos camponeses ao cardápio carnívoro dos nobres e levava o açúcar para o final da refeição.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;As novas preparações seguiam os preceitos das descobertas científicas acerca do que fazia bem ao corpo, e a culinária adquiria o status de arte. No Brasil, tal arte encontraria seu tempero somente depois da instalação da corte no Rio de Janeiro, em 1808. Uma evolução de teor agridoce: os produtos e modos de preparo locais, ao mesmo tempo em que seduziam o paladar de alguns estrangeiros, amargavam a desconfiança de outros, os quais os consideravam inferiores.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Saborosa na leitura, abundante nos ingredientes históricos e surpreendente na transcrição das curiosas receitas originais, Arte de cozinha é uma publicação do Senac São Paulo que incrementa o estudo da origem da boa mesa e de seu desenvolvimento no Brasil.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(302, 4, 'Borbulhas - Tudo Sobre Champanhe e Espumantes', '&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;É uma história muito interessante: na região francesa de Champagne, palco de guerras sucessivas e, porque especialmente fria, favorável à produção de vinhos brancos mais frescos e ácidos, o monge beneditino dom Pérignon contribuiu para aperfeiçoar o depois célebre champanhe. Essa bebida espumosa e borbulhante ganhou a preferência da corte do Rei Sol, Luís XIV, e teve a sina de agradar também ao inimigo tradicional da França à época, a Inglaterra. Assim conquistou o planeta e se tornou, como aqui diz o autor Aguinaldo Záckia,“a mais festiva das bebidas”.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;Este livro se propõe contar tudo o que importa saber sobre o champanhe e os outros espumantes franceses, do Velho Mundo e do Novo Mundo, incluindo o sul do Brasil em notável evolução, além de ocupar-se do seu engarrafamento, das suas safras, da harmonização de uma bebida tão especial com a comida e do imaginário dela, extensivo ao que se poderia chamar de sua “fortuna” social e literária.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt;&quot;&gt;A importante bibliografia referente à enologia e à gastronomia, já colocada pelo Senac São Paulo ao alcance de estudantes e profissionais dessas áreas, ganha com Borbulhas: tudo sobre champanhe e espumantes um título de destaque.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(303, 4, 'Caderno de Receitas da Magali - Receitas Desenvolvidas por Mônica Rangel', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;As receitas deste livro foram preparadas para que você se sinta como a Magali: com muito apetite! Em cada uma delas, há um toque de gostosura para que você recorde as sensações da infância. Convide as crianças para ajudar na preparação dessas guloseimas e, principalmente, para se deliciar com elas. Embarque nesta história que não está no gibi: você e sua família são os convidados de honra da Magali!&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro não é apenas para os adultos. As crianças - aqui tratadas como pequenos chefs - são convidadas a participar da elaboração das receitas, basta verificar em cada preparação de que forma elas podem ajudar. Além de divertido, cozinhar juntos é um dos elos mais primordiais de nossa sociedade.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Das receitas mais tradicionais, e sempre deliciosas, como a maçã do amor ou o sonho, aos sucos e sorvetes preferidos da Magali - como o de melancia e gengibre ou o sorvete de biscoito -, passando pelos bolos no palito, de milho ou pelas receitas salgadas, como o macarrão com queijo ou a pizza de frigideira, este lançamento do Senac São Paulo, com ilustrações dos estúdios de Mauricio de Sousa, é um verdadeiro retorno ao que de melhor reconhecemos do tempo de infância!&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro, além de trazer receitas deliciosas (a Magali provou e aprovou todas!), é um convite para adultos e crianças realizarem algo ainda mais saboroso: cozinhar em família.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(304, 4, 'Café com Design - A Arte de Beber Café', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Mudam-se as circunstâncias, os interesses, o público-alvo, e os cafés continuam a exercer seu fascínio. As coffee houses já foram lugares privilegiados, onde se reuniam intelectuais e se discutiam as políticas de um país. Sem dúvida, a arquitetura desses ambientes e o design de seus interiores, mesclados ao hábito do consumo de café, foram e continuam a ser os ingredientes básicos dessa magia.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Os cafés são o lugar em que as pessoas interagem, conversam, trocam informações, discutem e processam ideias. São espaços de socialização e de cultura e, por que não, um ambiente de trabalho. Com as novas tecnologias, as cafeterias oferecem pontos de rede e, assim, transformam-se em verdadeiros escritórios.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Reunir esses diferentes aspectos da vida contemporânea significa proporcionar ao consumidor uma verdadeira viagem estética, repleta de sabor. Lançamento do Senac São Paulo, Café com design: a arte de beber café busca atrair para seu universo não só os apaixonados por essa bebida, já que o livro traz algumas receitas e dicas de harmonizações clássicas e exóticas que podem ser experimentadas com o café, mas também todos os amantes da arte, da arquitetura, do design e das novas tecnologias.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(305, 4, 'Cake Chic - Biscoitos e Bolos Estilosos Para Todas as Ocasiões', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;A confecção de bolinhos, biscoitos e cupcakes está na moda: cada vez mais essas doçuras invadem as festas e levam cor e fantasia aos eventos mais sofisticados. Neste livro, terceiro título de Peggy Porschen, a mestra da decoração de bolos se dedica a essas iguarias sem esquecer, claro, as grandes e deslumbrantes criações de bolo.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Oferecendo técnicas claras, assim como moldes simples e variados, este livro permite a cada um confeccionar bolos de andares, simples e lindos, como a Sinfonia de Verão e suas cores de sorvete; e outras delícias, como bolinhos com arabescos ou gaiolas de açúcar... Peggy sempre se preocupa em dar alternativas simples ao leitor: por que não usar flores de verdade em vez de confeccioná-las? Ou usar joias para finalizar e dar um efeito sofisticado a um bolo simples? Além de simplesmente fabulosas, todas as criações deste livro são tão saborosas quanto parecem: sugerindo sabores inusitados e aproveitando o melhor de cada ingrediente, Peggy transforma receitas básicas em receitas deliciosas.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Do coquetel ao chá de cozinha, passando pelo noivado e aniversário, este livro traz uma infinidade de opções para encantar seus convidados, com o mínimo de esforço.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(306, 4, 'Ceviche – Do Pacífico Para o Mundo', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Há pelo menos dois séculos que o ceviche faz parte da culinária da maioria dos países da América Latina, porém não faz muito tempo que desembarcou em terras brasileiras. No início, sua presença era tímida, mas aos poucos conquistou espaço em buffets de festas e restaurantes, servido principalmente como entrada, até virar destaque em cardápios.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Neste livro, o chef Dagoberto Torres ensina o passo a passo da pré-preparação desse prato (como limpar e cortar peixe, como cozinhar lula, vôngole, etc.) e apresenta algumas das receitas elaboradas no restaurante Suri Ceviche Bar, tomando todo o cuidado para utilizar ingredientes que podem ser encontrados facilmente pelo leitor brasileiro. Receitas tradicionais do Peru, Chile, Equador, Colômbia, México e, curiosamente, da Polinésia misturam-se com criações e ousadias do chef, provando que o ceviche é um prato versátil e que pode ser feito até mesmo pelo marinheiro de primeira viagem.&lt;/span&gt;&lt;br /&gt; &lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;A jornalista Patrícia Moll dá sua pitada ao livro contando um pouco da história e das curiosidades desse prato. O toque final é dado pelo chef Alex Atala, com uma receita que comprova que, quando se tem audácia, a elaboração do ceviche não tem limite.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(307, 4, 'Chocolates e Doçaria da École Lenôtre - Volume 2', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Aliando tradição e inovação, a École Lenôtre apresenta, em dois volumes, receitas de doces e chocolates, ousando nos contrastes de sabores, matérias-primas e texturas. De ganaches clássicos, insólitos, originais, sobremesas de chocolate, empratados, balas, passando pelas barras, tabletes, nougats, pralines, frutas em calda, dropes, marshmallows, etc.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;O artesão confeiteiro-chocolatier encontrará neste livro ideias novas e poderá compreender melhor o mercado das guloseimas. O leitor encontrará ainda toques de chocolates da École Cacao Barry e poemas de Isabelle Fabre ao longo destas páginas, em círculos multicoloridos.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Criada em 1971 por Gaston Lenôtre, a École Lenôtre é a primeira escola francesa de formação e aperfeiçoamento em gastronomia de renome internacional. Aberta às novas ideias e guardiã da tradição naquilo que ela tem de melhor, a Lenôtre estabelece uma perfeita síntese entre passado, presente e futuro. Transmissão de savoir-faire, valorização do patrimônio culinário francês, respeito aos produtos, amor pelo trabalho benfeito, competência e generosidade, esses são os valores da equipe da École Lenôtre. Assim como Philippe Gobet, seu diretor, alguns de seus profissionais ostentam orgulhosamente o título de Meilleur Ouvrier de France (Melhor Artesão da França), perpetuando assim, em seu mais alto nível, a imagem da gastronomia francesa pelo mundo.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Esta edição bilíngue (francês/português) é mais um lançamento do Senac São Paulo destinado a todos os amantes da culinária feita com arte, tradição e gosto, e permite familiarizar o estudante ou o leitor interessado, com os termos franceses empregados na culinária internacional.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(308, 4, 'Comida e Vinho - Harmonização Essencial', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Comida e vinho, juntos, garantem o prazer de uma boa refeição, e sempre foram parceiros ideais. Mas para que esse casamento seja realmente saboroso há um segredo: a harmonização. Esse livro irá percorrer as várias instâncias do sabor e do saber reconhecer as diferentes texturas não só dos alimentos como também dos vinhos, procurando estabelecer não regras fixas, mas um conjunto de compatibilizações possíveis e agradáveis ao prazer da boa mesa. O leitor encontrará, aqui, várias informações sobre os vinhos que podem acompanhar determinados tipos de pratos.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Comida e vinho: como fazer para que esses sabores não travem uma verdadeira batalha no momento prazeroso de uma refeição?&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Segundo afirmam José Ivan Santos e José Maria Santana, “é preciso entender que não há casamento perfeito, uma combinação única ou regras fixas” para essa harmonização, mas é preciso ter em conta que um prato enaltece as qualidades de uma bebida, e que o vinho, por sua vez, torna a comida mais saborosa.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Neste livro os autores nos apontam vários itens importantes para se compor uma boa harmonização: os componentes e as texturas dos vinhos, por exemplo, bem como os ingredientes que participam da confecção de um prato, os métodos de cocção empregados em sua feitura, os molhos que os acompanham.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;O leitor encontra aqui várias informações sobre os vinhos que podem acompanhar um tipo de prato: brancos, tintos, rosados, espumantes, vinhos de sobremesa e fortificados; além de contar com importantes tabelas que sugerem as melhores combinações.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Sempre lembrando, é claro, que o leitor pode seguir as recomendações e, a partir delas, criar suas combinações pessoais, desenvolvendo, assim, conceitos particulares do que é uma boa harmonização entre esses dois elementos tão antigos na humanidade quanto a própria noção de cultura.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(309, 4, 'Conheça Vinhos', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;O crescimento da oferta de vinhos estrangeiros de qualidade levou muitos consumidores brasileiros a desejar conhecer melhor os produtos - a diferença entre os tipos, os locais de produção, o que afeta o paladar, os aromas e a aparência -, enfim, tudo o que lhes permitam escolher com critério o vinho que irão consumir com as pessoas de que gostam. Este livro leva informações às pessoas que querem conhecer essa cultura e aprender a escolher por si o vinho que mais lhes agrade, sem se deixar guiar apenas pelo parecer de enólogos, pelo rótulo e pela ideia de que, quanto mais caro, melhor o vinho.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Dirceu Vianna Junior e José Ivan Santos juntaram-se a Jorge Lucki para apresentar o mundo do vinho. Partindo de informações básicas - as características das videiras, os climas, os solos, os tipos de uvas utilizados para a produção de vinhos e as principais regiões em que são produzidos -, este livro passa pelas formas de obtenção de vinhos tintos, brancos, doces, rosados, espumantes e fortificados, pelos sistemas de envelhecimento e de engarrafamento. Apresenta também as maneiras de servir essa bebida, como degustá-la e harmonizá-la com a comida, e a relação entre ela e a saúde.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Publicação do Senac São Paulo, esta terceira edição de CONHEÇA VINHOS contém novos capítulos com um estudo sobre os vinhos que vêm se destacando nos últimos tempos - os brasileiros, argentinos, uruguaios, chilenos e portugueses -, completando o roteiro harmonioso voltado às pessoas que desejam aprender sobre este assunto tão inebriante.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(310, 4, 'Cozinha Natural no Dia a Dia', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;A autora considera que os produtos naturais, como cereais integrais, vegetais, frutas, leite e ovos, contribuem para uma melhor qualidade de vida. Nesse livro, são apresentadas receitas de arroz, refogados, pratos gratinados, ensopados, massas integrais, saladas, sopas, pães e bolos, sanduíches naturais, cremes, tortas integrais salgadas e doces, molhos para massas e saladas, doces e sucos naturais. Ao final do volume são apresentadas sugestões de cardápios.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Atualmente, pessoas preocupadas com sua saúde estão mudando a alimentação habitual por uma mais saudável, rica em fibras, utilizando alimentos integrais e vegetais. Diferentemente do que se possa pensar, uma alimentação que inclui em suas receitas esses alimentos pode ser muito saborosa. E isso é o que nos apresenta Cozinha natural no dia a dia, de Maria do Céu.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;A autora, com grande experiência nessa culinária, nos mostra neste livro receitas simples, de fácil preparo, sem custo elevado e muito nutritivas, como bolinhos de arroz integral, sopa de aveia, feijoada natural, pudim de cacau, etc., além de sucos naturais e uma sugestão de cardápio no final do livro. Também dá um toque de poesia quando nomeia muito particularmente suas receitas.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Sair para escolher os ingredientes, cuidar do local onde a receita será preparada e dos utensílios que serão utilizados, ter um ambiente tranquilo ao preparar uma receita, tudo isso também faz parte dessa prazerosa arte que é cozinhar.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(311, 4, 'Delícias de Chocolate', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;O autor, chocolatier excepcional, abre as portas de seu mundo feito de chocolate. Bombas, trufas, Tronco de Natal - aqui estão revelados alguns de seus segredos no preparo das mais clássicas receitas. Hévin surpreende também os amadores propondo combinações inesperadas e explicando algumas de suas próprias criações. Os seus conselhos preciosos no final do livro colocam ao alcance de todos nós 45 sobremesas e pâtisseries apresentadas em fotos deslumbrantes, e que poderão ser reproduzidas em casa para a alegria dos chocólatras de todo o mundo.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Cacaueiro - Theobroma cacao: &quot;alimento dos deuses&quot; - esse é o significado do nome científico do cacaueiro, que produz cerca de quarenta frutos a cada temporada e goza, como matéria-prima, do mesmo status do petróleo, do café, do trigo, da soja e do ouro. Jean-Paul Hévin, em Delícias de chocolate, revela-nos os segredos da manipulação deste fruto precioso: o cacau. Com pitadas de história, amêndoas em pó, baunilha, creme de leite e muito talento, revela-nos seu sólido saber, amor, dedicação e criatividade ímpar na fabricação do chocolate.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Audacioso na proposta da arte do chocolatier - seja pela criação de combinações inéditas, como chocolate, queijo roquefort e nozes, seja pela estética da apresentação -, sob sua batuta descobrimos o que faz um pequeno bombom com apenas 40 gramas ser a porta de acesso à esfera divina.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;O Senac São Paulo lança este título de especial interesse para estudantes e profissionais da gastronomia, gourmands e futuros chocólatras em que sabor, estética, ousadia e qualidade são os ingredientes para os paladares exigentes que apreciam o chocolate elevado ao nível da arte.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(312, 4, 'Em Torno da Mesa - O Prazer de Compartilhar Receitas', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Chefs de cozinha reconhecidos internacionalmente, cozinheiros diletantes e donos de bufês e restaurantes convidam o leitor para juntar-se a eles em torno da mesa e compartilhar o prazer de trocar receitas.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Para colaborar com o Refazer, grupo de apoio a crianças e adolescentes portadores de doenças crônicas atendidos pelo Instituto Fernandes Figueira, 46 pessoas participam voluntariamente deste projeto, oferecendo ao leitor receitas de salgados e sobremesas, dicas de ingredientes e soluções particulares para o preparo de muitos pratos, dos mais simples aos extremamente elaborados.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;O Refazer é uma ONG ligada ao Instituto Fernandes Figueira, unidade da Fiocruz, Rio de Janeiro. Criado em 1995 por iniciativa de um conjunto de médicos e profissionais do hospital, o Refazer tem como objetivo maior evitar a reinternação de pacientes infantis e adolescentes, portadores de doenças crônicas, que são atendidos pelo hospital.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Com poucos anos de atuação, a entidade percebeu que o cuidado exclusivo dos pacientes seria insatisfatório se as famílias que os receberão de volta não fossem contempladas. A precariedade familiar e as dificuldades inerentes ao cuidado de doenças crônicas no ambiente doméstico demandavam apoio e assistência da instituição. O Refazer estendeu a assistência às famílias dos pacientes, orientando as mães sobre procedimentos e tratamentos necessários, criando formas de trabalho compatíveis com sua disponibilidade de tempo, acompanhando mensalmente o processo de recuperação com a distribuição regular de alimentos, remédios e produtos de alta necessidade.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro é uma das muitas iniciativas do Refazer no sentido de angariar fundos para a continuidade de um trabalho humano que só se mantém pela disponibilidade e generosidade de voluntários. Mais do que receitas de pratos deliciosos, o livro expressa a receita afetiva que queremos garantir aos que, pela fragilidade de vida, nos comovem diariamente com sua garra de seguir vivendo.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Esta foi a mensagem que tocou os chefs e cozinheiros que aqui compareceram. Que o livro, como o trigo, seja capaz de fertilizar o trajeto de uma instituição que dedica todos os momentos de sua rotina à conquista de dias melhores aos que dela se aproximam.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(313, 4, 'BANDEJA PARA GRELHADOS RATIONAL', '', '', '', ''),
(314, 4, 'Enciclopédia do Chocolate', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Livro essencial, totalmente pedagógico e inteiramente ilustrado, que seduzirá não só o principiante na arte do chocolate como também o reconhecido chef profissional. Mais de 100 técnicas de confeitaria que permitem conhecer tudo sobre chocolate (temperagem, ganaches, musses, glaçages...).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Todos os movimentos necessários, com fotos do passo a passo, para se elaborar facilmente uma deliciosa sobremesa. Os segredos dos maiores chefs da confeitaria e suas receitas emblemáticas: Christophe Michalak (Plaza Athénée), Gilles Marchal (Maison du Chocolat), Christophe Adam (Fauchon), Jean-Paul Hévin, Christophe Felder, Frédéric Cassel, Eric Léautey...&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Mais de 150 receitas: todos os grandes clássicos (bombas, floresta negra, bolinhos macios, coulant, musses, tortas...) e as sobremesas da moda (macarons, verrines...), bem como sorvetes e guloseimas.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Um DVD de 1h30 que apresenta as técnicas de elaboração das sobremesas mais delicadas. Todo o savoir-faire da École du Grand Chocolat Valrhona que atrai tanto os profissionais do mundo inteiro como o público em geral para seus 5 laboratórios de formação.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Acompanha vídeo aula &lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Chefe Jorge da Hora ensina como fazer Parfait de Chocolate com Calda de Cappuccino.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(315, 4, 'Hora do Lanche - Receitas e Técnicas de Preparo', '&lt;p&gt;&lt;span&gt;A rotina dos profissionais que se dedicam ao preparo de sanduíches, salgados, doces e bebidas está bem detalhada neste material, que traz ainda fotos com técnicas de trabalho e muita informação sobre mercado e perfil profissional, segurança na manipulação dos alimentos, dicas de pré-preparo e preparo, bem como receitas testadas pela cozinheira Kitty Assis. Este livro procura contribuir para a formação de lancheiros e o aprimoramento dos que já estão atuantes no mercado de trabalho, seja como empregados em lanchonetes, quiosques e barracas, seja como ambulantes licenciados ou empreendedores individuais.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;A rotina dos profissionais que se dedicam ao preparo de lanches, salgados, doces e bebidas desde a chegada ao local de trabalho até o atendimento ao cliente é contemplada nesta publicação que traz informações sobre mercado de trabalho, perfil profissional, segurança na manipulação dos alimentos, gerenciamento de estoques e formação de preços.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;O livro apresenta ainda o pré-preparo e o preparo de alguns tipos de lanches, com fotos especialmente produzidas para apoiar a leitura e facilitar o aprendizado. As receitas da cozinheira e consultora Kitty Assis, fáceis de preparar e rigorosamente testadas, são um atrativo à parte.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;Por tudo isso, Hora do lanche é um livro para ler, ser consultado e levado para a cozinha.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(316, 4, 'Meu Primeiro Jantar Vegetariano', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;As deliciosas receitas propostas neste livro seduzirão tanto os vegetarianos quanto os apaixonados por carne. A culinária vegetariana, valorizada pelas imagens, nos faz descobrir pratos apetitosos, frescos e saborosos, indo de simples petiscos até jantares generosos, passando por clássicos, revisados.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Você encontrará ideias práticas, o passo a passo de receitas que lhe ajudarão a preparar seus próprios ingredientes, sugestões de cardápios e até mesmo receitas de grandes chefs para ocasiões especiais.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Quer você seja um legítimo vegetariano, ou que tente consumir menos carne, ou, simplesmente, que se sinta atraído pela alimentação vegetariana. Este livro irá transformar a sua maneira de pensar a culinária sem carne.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(317, 4, 'Natural Sobremesas - Simples, Saudável e Saboroso', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Neste livro, o celebrado chef Alain Ducasse apresenta sobremesas naturais, gostosas e saudáveis, que permitem redescobrir os sabores das frutas sazonais, só incrementadas com um pouco dos açúcares naturais, de mel ou de xarope de agave. Por meio de receitas leves e fáceis de executar, mostra que é possível usufruir o prazer do sabor doce sem recorrer aos diversos tipos de açúcar ou de adoçante industrializado, e sem abrir mão das vitaminas e sais minerais que os açúcares naturais contêm.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;&lt;em&gt;“Sou guloso e gosto dos sabores doces, não tenho medo de confessá-lo. Amo as sobremesas naturais, gostosas e saudáveis, aquelas que permitem redescobrir os sabores das frutas sazonais, incrementadas somente com um pouco dos açúcares naturais, com mel, ou com xarope de agave. Porque podemos satisfazer a nossa gulodice tomando cuidado com a saúde e sem nos privarmos desses prazeres”&lt;/em&gt;. (Alain Ducasse)&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(318, 4, 'Naturalmente Sem Glúten', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;O glúten - uma proteína naturalmente presente em cereais como trigo, centeio, aveia, cevada e malte, bem como em seus derivados - é de difícil digestão para o organismo. Quando ingerido por pessoas intolerantes a essa proteína, faz com que elas apresentem dificuldade para assimilar vitaminas, sais minerais e água dos alimentos. No entanto, esses cereais são presença quase incontornável na culinária contemporânea e eliminá-los de nossa dieta requer às vezes um verdadeiro sacrifício de hábitos muito antigos.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Mas será possível encontrar sabor em pratos que não utilizam ingredientes que contêm glúten? Valérie Cupillard, autora premiada na França por seus livros de culinária, comprova que esse é um desafio que pode ser superado.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro propõe muitas e variadas receitas sem glúten e sem produtos lácteos! Com ele aprendemos a cozinhar com farinha de arroz, flocos de castanha, farinha de amêndoa e a preparar purês de legumes para suflês, massas de blinis com farinha de lentilha, fundos de torta com farinha de amêndoa... Um programa nutricional plenamente compatível com os prazeres da mesa!&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Lançamento do Senac São Paulo, este livro é ideal para os celíacos, traz muitas ideias deliciosas para esquecer de vez a farinha de trigo! Prova que uma comida verdadeiramente saborosa pode ser preparada mesmo sem glúten ou derivados do leite.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(319, 4, 'O Mundo das Conchas - Delícias Que Chegam do Mar', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Esse livro traz aspectos sobre a vida, a produção e o consumo de ostras, mexilhões e vieiras, dentre outros. Em meio ao requinte ou mesmo no popular caldinho de sururu, outro importante aspecto: o impacto na melhoria de vida do pescador, com o cultivo ajudando a fixá-lo na região, gera consciência ecológica e preservação do meio ambiente. Da série A Formação da Culinária Brasileira, tem ensaio de Raul Lody, prefácio do chef Jorge Monti de Valsassina e fotos de Humberto Medeiros.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Um novo olhar sobre &quot;0 mundo das conchas&quot;. Assim podemos resumir esta obra que apresenta o indiscutível valor gastronômico dos moluscos bivalves, especialmente, das ostras, mexilhões, vieiras, berbigões e lambretas, mais frequentes na mesa dos brasileiros. De sabor marcante, esses exóticos seres marinhos frequentam hoje dos pratos típicos regionais como a &quot;lambreta baiana&quot;, cozida e refogada, aos mais requintados pratos da alta gastronomia, encontradiços nos restaurantes dos grandes centros urbanos do país. São algumas mostras desse rico e democrático acervo gastronômico que a nova publicação da Editora Senac Nacional vem desvendar.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Revela, também, como “o mundo das conchas&quot; permeia a arte e o imaginário, enriquecendo com sua estética particular nossas manifestações artísticas e culturais. Além de valorizar a gastronomia, esta obra tem ainda como objetivo promover o desenvolvimento da maricultura no Brasil. Ao deixar de ser apenas extraído (colhido em seu habitat natural) para ser criado em cativeiro, as ostras, mexilhões e outros moluscos vêm transformando o mar numa imensa área cultivável, trazendo novas perspectivas econômicas e socioambientais para o país.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(320, 4, 'Pães e Viennoiseries da École Lenôtre', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro revela mais uma vez toda a criatividade e o savoir-faire da famosa escola. Os produtos de boulangerie aqui apresentados aliam originalidade e modernidade, sempre acompanhados de forte tradição. As receitas são ricamente ilustradas e trazem, quando necessário, imagens do seu passo a passo. Em algumas receitas há símbolos que indicam a destinação do produto: café da manhã, lanche, almoço ou jantar. Essa informação permite fazer sugestões à clientela em geral e aos restaurateurs ou hoteleiros em particular. Os pães, pãezinhos e viennoiseries da École Lenôtre são o toque especial que deve estar presente em toda boa mesa.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Criada em 1971 por Gaston Lenôtre, a École Lenôtre é a primeira escola francesa de formação e aperfeiçoamento em gastronomia de renome internacional. Aberta às novas ideias e guardiã da tradição naquilo que ela tem de melhor, a Lenôtre estabelece uma perfeita síntese entre passado, presente e futuro. Transmissão de savoir-faire, valorização do patrimônio culinário francês, respeito aos produtos, amor pelo trabalho benfeito, competência e generosidade, esses são os valores da equipe da École Lenôtre. Assim como Philippe Gobet, seu diretor, alguns de seus profissionais ostentam orgulhosamente o título de Meilleur Ouvrier de France (Melhor Artesão da França), perpetuando assim, em seu mais alto nível, a imagem da gastronomia francesa pelo mundo.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Esta edição bilíngue (francês/português) é mais um lançamento do Senac São Paulo destinado a todos os amantes da culinária feita com arte, tradição e gosto, e permite familiarizar o estudante ou o leitor interessado, com os termos franceses empregados na culinária internacional.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(321, 4, 'Receitas com Forma - Cupcakes e Muffins', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro faz parte da coleção Receitas com Forma que é composta por volumes com capa acolchoada e no formato que acompanha as imagens das capas. Uma grande seleção de deliciosas e práticas receitas para conseguir os melhores cupcakes e muffins: os doces da moda e um autêntico prazer para todos os paladares. Uma verdadeira peça de coleção.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(322, 4, 'Receitas com Forma - Hambúrgueres', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro faz parte da coleção &lt;strong&gt;&lt;em&gt;Receitas com Forma&lt;/em&gt;&lt;/strong&gt; que é composta por volumes com capa acolchoada e no formato que acompanha as imagens das capas. Uma grande seleção de deliciosas e práticas receitas para preparar os hambúrgueres clássicos e os pratos mais inovadores em que o hambúrguer é a personagem principal. Um magnífico conjunto de receitas gourmet para usufruir de um alimento cheio de energia. Uma verdadeira peça de coleção.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(323, 4, 'Receitas com Forma - Macarons', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro faz parte da coleção &lt;em&gt;&lt;strong&gt;Receitas com Forma&lt;/strong&gt;&lt;/em&gt; que é composta por volumes com capa acolchoada e no formato que acompanha as imagens das capas. Uma grande seleção de deliciosas e práticas receitas para conseguir os saborosos macarons: um doce glamoroso para todos os paladares. Este livro é recheado de muitos truques e ótimos conselhos. Uma verdadeira peça de coleção. Bom apetite!!&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(324, 4, 'Receitas com Forma - Tomate', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro faz parte da coleção &lt;em&gt;&lt;strong&gt;Receitas com Forma&lt;/strong&gt;&lt;/em&gt; que é composta por volumes com capa acolchoada e no formato que acompanha as imagens das capas. Uma seleção de receitas deliciosas e práticas de saladas, carnes, peixes e muito mais, que têm um toque especial dado pelo tomate! Um excelente livro de receitas para você saborear e tirar o melhor proveito desse ingrediente tão versátil. Uma verdadeira peça de coleção. Bom apetite!!&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(325, 4, 'Receitas Magnéticas - Cebolas', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro faz parte da coleção &lt;em&gt;&lt;strong&gt;Receitas Magnéticas&lt;/strong&gt;&lt;/em&gt; que é composta por volumes magnetizados e no formato que acompanha as imagens das capas, ideal para fixação em geladeiras ou superfícies metálicas e auxiliar no manuseio no ambiente da cozinha. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;A cebola é um alimento muito saudável. É boa fonte de fibras, vitamina C e folato, bem como de fitoquímicos, que se acredita ajudar a baixar os níveis de colesterol e a proteger o organismo contra certos tipos de câncer. Neste livro você encontrará 30 receitas preparadas com cebolas, desde deliciosas massas fritas e sopas até uma grande variedade pães e pratos assados. Uma ferramenta prática no auxílio do dia a dia da cozinha moderna. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Bom apetite!!&lt;/span&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(326, 4, 'Saquê - A Seda Líquida', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Para desvendar um pouco do mistério que ronda o saquê, Antonio Campis Chaler apresenta a fascinante e delicada história dessa bebida milenar japonesa que tem atraído admiradores de todas as partes do planeta. Para tanto, detalha o processo de fabricação, como são obtidos os ingredientes para a perfeita fermentação do arroz e quais são as principais regiões produtoras e as adegas de saquê no Japão. Também fornece dicas de como ele deve ser servido e com que comida pode ser combinado. A edição brasileira conta com a apresentação de Maria da Paz Trefaut abordando a cada vez maior presença do saquê nos restaurantes e bares do Brasil.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;A delicadeza da cultura oriental pode ser comprovada em seus gestos, ilustrações, comida e até mesmo em sua bebida. Isso é facilmente percebido na sutileza da textura, do aroma e do sabor do saquê, que resultam de um trabalho artesanal que exige muita paciência. É uma constante busca pela perfeição.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;A diversidade de aroma - que podem variar do jasmim ao amadeirado - e a suavidade do sabor despertaram o interesse de pessoas de várias partes do mundo, e, atualmente, o saquê está entre as mais importantes bebidas.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Antonio Campins Chaler é um dos que se encantaram por essa seda líquida e fez dessa paixão objeto de estudo. Neste livro, o autor apresenta a história do saquê, o desenvolvimento que sua produção sofreu ao longo dos anos, suas variações e como pode ser servido e harmonizado com a comida.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(327, 4, 'Torta de Avó - 50 Receitas Fáceis, Econômicas e Com Gosto de Infância', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Neste livro foram reunidas cinquenta receitas muito especiais, divididas entre tortas doces e salgadas. São todas de fácil preparo, econômicas, com ingredientes acessíveis, formuladas para não tomar muito tempo no preparo e para causar a mesma emoção daquelas magníficas receitas de tortas que se faziam no forno de casa, antigamente... Uma coisa é certa: com essas receitas não há como não reviver ou reinventar o eterno e bom tempo da cozinha sentimental e das &quot;tortas da vovó&quot;.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Quem não se lembra do prazer de saborear uma deliciosa torta fatiada na hora e que acabou de sair, dourada e fumegante, do forno de casa? São os chamados “sabores de infância”, que remetem ao tempo em que mães e avós preparavam, e cuidavam dos mais sublimes momentos da nossa alimentação.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Com a publicação deste livro, os bons e doces tempos estão de volta! Nesta obra foram reunidas 50 receitas muito especiais, divididas entre tortas doces e salgadas. São todas de fácil preparo, econômicas, com ingredientes acessíveis, formuladas para não tomar muito tempo no preparo e para causar a mesma emoção daquelas magnificas receitas de tortas que se faziam no forno de casa antigamente...&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Algumas receitas são perenes, como os clássicos: Torta de Frango e Catupiry, Torta de Camarão, Torta de Espinafre, Torta de Palmito, outra propõem variantes internacionais ou mais afinadas com o gosto contemporâneo: Quiche de Pinhão, Quiche de Cebola Roxa e Queijo de Cabra.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;As receitas de tortas doces também se dividem entre o repertório clássico e “new age”; Torta de limão à Torta de Chocolate, outras contemplam o paladar de todas as gerações, a exemplo da Torta Brownie ou da bem moderna Torta de Espuma de Banana com chocolate. Uma coisa é certa: com essas receitas não há como não reviver ou reinventar o eterno e bom tempo da cozinha sentimental e das “Tortas da Vovó”.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(328, 4, 'Vinhos - O Essencial', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Esse livro identifica nuanças entre os vinhos tintos, brancos e rosados, secos e doces, suaves e encorpados, fortificados, espumantes, frutados, de gosto defumado ou amanteigado. Apresenta as mais destacadas regiões vinícolas do mundo, além das etapas do processo de vinificação, a importância das operações de encapsular, rotular e armazenar, as garrafas e rolhas, o armazenamento e as técnicas de degustação. Há ainda muitas outras dicas. O leitor encontrará boa matéria de interesse para diletantes e iniciados em vinho.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro tem-se mostrado &quot;essencial&quot; para quem gosta de vinho e quer se iniciar ou se aprofundar na arte de degustá-lo e/ou combiná-lo com alimentos.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Neste livro, o leitor poderá se informar sobre as etapas do processo de vinificação, a importância das operações de encapsular, rotular e armazenar as garrafas e rolhas, o armazenamento e as técnicas de degustação. O leitor encontrará, também, dicas sobre a escolha do vinho na hora da compra e como servi-lo, a melhor maneira de desarolhar, as taças mais adequadas, o processo de decantação, a temperatura ideal para saborear, a combinação com os pratos.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Como sempre surgem novas informações sobre o tema, este livro exige uma constante atualização, o que o autor tem procurado oferecer aos leitores a cada edição. O Senac São Paulo, que atua com notável relevo em várias áreas, contribui com mais este título para os apreciadores dessa nobre bebida, o vinho.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(329, 4, 'Vinhos &amp; Uvas - Guia Internacional Com Mais de 2.000 Citações', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Fruto de pesquisas bibliográficas e de visitas técnicas às regiões vinícolas, de sessões de degustação profissional e da vivência do autor adquirida na prática educacional, a ideia que norteou a elaboração desse livro foi a de oferecer um guia fácil de ler e consultar, útil tanto para profissionais e estudantes de turismo e hotelaria quanto para os apaixonados por essa bebida. &lt;/span&gt;&lt;br /&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Gourmand World Cookbook Awards 2001 - Melhor Guia de Vinhos&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;O aumento do número de cursos e da literatura sobre o vinho dá a medida do crescente interesse que suscita essa nobre bebida. Vinhos &amp;amp; uvas: guia internacional com mais de 2.000 citações é uma fonte de consulta útil para profissionais, estudantes e professores dos cursos de turismo, hotelaria e gastronomia, bem como para os consumidores apaixonados. Escrito por dois professores de Enologia da Faculdade Senac de Turismo e Hotelaria de São Paulo e resultado de minuciosas pesquisas, de conhecimentos obtidos em visitas às regiões produtoras, da prática adquirida em cursos com sessões de degustação profissional, este livro vem juntar-se a várias obras publicadas pelo Senac São Paulo, entre as quais “A cozinha e seus vinhos”, de Saul Galvão, e “A culinária paulista tradicional nos hotéis Senac São Paulo”, de Caloca Fernandes.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;O Senac São Paulo tem em sua área de Educação em Turismo e Hotelaria um ponto de referência nacional e internacional do trabalho que realiza voltado para formar profissionais de alto nível. Parte integrante desse empenho educacional é a publicação de uma bibliografia que atenda não só ao público especializado mas também a um universo mais amplo — e isso se efetiva com a ininterrupta atividade de lançamento de novos títulos pela Editora Senac São Paulo.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(330, 4, 'Whisky - O Guia Mundial Definitivo', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Quem bebe apenas socialmente pode ficar intimidado com todas as nuanças de um bom whisky; afinal de contas, há muitas variáveis que devem ser consideradas. Quais são o clima e a geografia da destilaria? Qual é o tipo de grão usado e como ele é preparado para fermentação? Como funciona o alambique? Que tipo de carvalho é usado no barril e por quanto tempo a bebida é envelhecida? Esta seleção de ensaios e fotografias explica todos os passos do processo, inclusive sobre pratos que combinam e receitas de coquetéis.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Levando o leitor de seus tempos primórdios aos bares de Tóquio no século XXI, esta obra é o mais importante guia para se descobrir e curtir a bebida mais saborosa do mundo.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Turfeiras e alambiques - como os whiskies obtêm seus aromas e sabores únicos, e a revelação dos segredos das principais destilarias.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;As destilarias — um guia internacional completo, totalmente ilustrado: detalhes dos produtores do clássico Scotch whisky maltado e de destilarias em todo o mundo, incluindo Irlanda, América do Norte e Japão.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;O prazer do whisky — como curtir e apreciar com dicas para se saborear a bebida e o conhecimento incrível do autor sobre a cultura do whisky.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Michael Jackson vai a busca de whiskies, de Arran ao Oregon e de Cooley a Yamazaki, para explicar as diferenças e celebrar a diversidade do whisky. Desde saber como usar whisky em coquetéis e alimentos a decidir-se pelo estilo que se ajuste ao seu gosto, Whisky vai ajudá-lo a descobrir e aprimorar sua paixão pela bebida.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(331, 4, 'As Melhores Receitas do &quot;Mais Você&quot; - 15 anos', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;De segunda à sexta-feira, Ana Maria Braga e Louro José começam as manhãs com humor, novidades e receitas de dar água na boca. &lt;strong&gt;&lt;em&gt;&quot;As Melhores Receitas do Mais Você&quot;&lt;/em&gt;&lt;/strong&gt; reúne as mais saborosas, fáceis de preparar e que se destacaram ao longo dos últimos 15 anos. São entradas, petiscos, lanches, pratos principais e doces que vão surpreender o seu paladar.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Além das instruções, as receitas apresentam rendimento, tempo de preparo e custo médio. Algumas contêm comentários da Ana Maria Braga sobre o diferencial do prato, um ingrediente que é o segredo da receita ou o motivo de ter sido selecionada para fazer parte do livro. A edição reúne opções leves e rápidas para o dia a dia como a salada de grãos e a sopa de abobrinha ao curry, e inclui pratos que exigem mais tempo e são perfeitos para datas especiais, como a costelinha ao barbecue e o lombo assado com especiarias.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;&lt;em&gt;&lt;strong&gt;&quot;As Melhores Receitas do Mais Você&quot;&lt;/strong&gt; &lt;/em&gt;apresenta pratos deliciosos, ideais para você compartilhar com pessoas queridas. Aproveite as dicas da Ana Maria e torne suas refeições ainda mais especiais, de um jeito simples e delicioso.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(332, 4, 'A América de Jamie Oliver', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Neste livro você vai encontrar 120 receitas dos mais saborosos pratos norte americanos. Elas são o resultado de uma excursão gastronômica feita pelo autor pelos Estados Unidos onde foram deixadas de lado a junk food e as porções exageradas, típicas dos filmes e da propaganda da América.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;&lt;em&gt;“Como uma terra de muitos contrastes, os Estados Unidos da América representaram para mim o máximo que eu poderia esperar de uma excursão gastronômica para explorar lugares, ingredientes, cultura culinária e tradições. Eu queria chegar ao coração da grande cozinha da América do norte, deixar para trás a junk food e as porções exageradas. Fixei-me naquilo que eu achava que poderia ser uma viagem inspiradora. Eu não estava errado... De Nova York a Nova Orleans, da energia de Los Angeles aos céus abertos do Wyoming, encontrei o que buscava: algumas das mais diferentes e deliciosas receitas que eu já havia experimentado. Com 120 delas neste livro, vou mostrar a você a maneira mais rápida e fácil de colocar na sua mesa uma fatia da América. Que viagem!”&lt;/em&gt; (Jamie Oliver)&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(333, 4, 'A Itália de Jamie', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Jamie Oliver é um apaixonado pela Itália, pela culinária, pelo prazer de comer e de cozinhar dos italianos. Em &quot;A Itália de Jamie&quot;, o autor traz as receitas que pesquisou e descobriu durante sua viagem pelas regiões do país da gastronomia. Apresenta suas impressões e as experiências que vivenciou enquanto preparava pratos locais e apurava o paladar nas cidades, vilarejos e fazendas por onde passou. No livro, o chef mostra o resultado de sua pesquisa gastronômica como uma típica refeição italiana: antipasti, primi, secondi e dolci (antepasto, entrada, prato principal e sobremesa). Dedica um capítulo para cada momento da refeição. Traz os ingredientes, o modo de preparo e dicas valiosas que garantem o sucesso do prato. Conta um pouco da história dos lugares ou de personagens relacionados às receitas.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;&lt;em&gt;“Existe uma diversidade de estilos de vida, culinária, tradições e dialetos. E é por isso que, como chef, eu acho esse país tão sedutor. E sabe o que mais? Eu deveria ser italiano. A verdade é que, quando estou na Itália, me sinto um italiano.”&lt;/em&gt; (Jamie Oliver)&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(334, 4, 'Comida Caseira', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Para o chef inglês Jamie Oliver, comida caseira – a chamada comfort food – é um conceito subjetivo. São aquelas receitas que têm a capacidade de suscitar emoções explícitas e antigas lembranças, assim como criar novas sensações e transmitir a mesma alegria à geração seguinte. Comida caseira tem o poder de fazer você se sentir protegido, seguro, realizado, empolgado, amado e até mesmo um pouco eufórico! Tem a ver com o que um prato específico significa para você.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;em&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;“Este belo livro contém minhas receitas mais saborosas, gratificantes, novas e empolgantes no maravilhoso mundo da comida caseira. Aqui estão aqueles prazeres secretos simples e deliciosos que todos amamos. Celebra as lembranças nostálgicas, tradições e os pratos preferidos da infância. Envolve o ritual da preparação de pratos que dão ânimo e elevam o espírito. Estamos falando de comida que traz alegria, que é capaz de provocar um grande sorriso. E. é claro, de todas aquelas sobremesas e doces incríveis que são bons demais para deixar de lado. Este é o livro de receitas a que você vai recorrer quando precisar de conforto - espero que ele encontre um lar feliz em sua estante.... &lt;/span&gt;&lt;span style=&quot;font-family: georgia, palatino; font-size: 12pt; background-color: initial;&quot;&gt;Com amor, Jamie Oliver&quot;.&lt;/span&gt;&lt;/em&gt;&lt;/p&gt;', '', '', ''),
(335, 4, 'Jamie Oliver - O Chef Sem Mistérios', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Primeiro trabalho de Jamie Oliver, este livro chega com as novidades das suas receitas sofisticadas e, ao mesmo tempo, simples de fazer. Ingredientes de primeira, frescos, muitas ervas e especiarias são a marca de sua culinária criativa, à qual se junta uma simpatia pessoal que fez de Jamie Oliver um astro da TV britânica.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Jamie cresceu na pequena vila de Clavering, Essex. Seus pais tinham um pub, típico bar inglês, chamado The Cricketers, onde com apenas oito anos de idade ele já fazia suas incursões pela cozinha. Ele teve dificuldades na escola, devido à dislexia, e não se formou em nenhum curso regular, embora tenha aproveitado para formar sua banda de música, Scarlet Division. Com 16 anos entrou na escola de culinária de Westminster e começou a trabalhar com o chefe londrino Genaro Contaldo, que considera seu mentor na culinária.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(336, 4, 'Jamie Oliver - O Retorno do Chef Sem Mistérios', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Em seu segundo livro o famoso chef da TV ensina deliciosas receitas. Máximo de sabor e o mínimo de esforço. . Num livro totalmente ilustrado, Jamie Oliver procura atender os gostos mais distintos, como pode ser verificado no seu cuidado em diferenciar as receitas vegetarianas. As receitas procuram respeitar as duas premissas que acompanham o trabalho desse chef, a de utilizar apenas o essencial da despensa e a de adequar os métodos dos restaurantes à realidade do ambiente doméstico. Além de ter sua criatividade ilimitada constatada nos diferentes projetos de televisão de que participa, Jamie retoma nesse volume o foco essencial de seu talento. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Um chef inquieto e ousado, extremamente criativo, que compartilha suas descobertas, seus experimentos, com o público leitor.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(337, 4, 'Jamie Viaja', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Este livro é todo dedicado a receitas alegres e criativas. É um livro de cozinha aventureiro, que inclui os grandes pratos dos incríveis países recentemente visitados por Jamie – Itália, Marrocos, França, Suécia, Grécia e Espanha – e coisas inteiramente novas, que foram criadas com a inspiração das influências que o cercavam. O autor adapta pratos tradicionais dos países visitados para que, assim, o leitor possa recriar as paellas espanholas, os tagines marroquinos e os risotos italianos facilmente, mas com autenticidade, em sua cozinha.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Hoje em dia, muitas vezes sai mais barato pegar um avião e passar o fim de semana em outro lugar do que fazer uma viagem entre duas regiões do próprio país. Jamie incentiva os leitores a, de vez em quando, ter coragem, escapar da rotina diária e mergulhar em outras culturas. Existem pessoas e lugares fantásticos a poucas horas de distância de sua porta.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Enquanto isso não ocorre, permita que este livro o apresente a algumas das fabulosas receitas e sabores que descobertas pelo autor, e talvez até o reapresente a pratos que provou e dos quais gostou em férias anteriores, mas até agora não sabia como preparar.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Jamie Oliver começou a cozinhar no pub de seu pai, The Cricketers, em Clavering, no condado inglês de Essex, com a idade de oito anos, e, bem jovem ainda, passou a trabalhar com alguns dos mais importantes chefs do mundo.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Depois de fundar o restaurante Fifteen, em Londres, Jamie criou a Fifteen Foundation, uma instituição que ajuda jovens desamparados a se tornarem chefs. Agora, a fundação já tem outros três restaurantes: na Cornualha, em Amsterdã e em Melbourne. Jamie lançou também uma cadeia de restaurantes de rua chamada Jamie’s Italian.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Em 2005, o chef britânico liderou uma campanha para melhorar a qualidade da alimentação fornecida às crianças nas escolas do Reino Unido e, com o movimento Feed Me Better (Alimente-me Melhor), conseguiu fazer o governo mudar substancialmente sua política nessa área.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Jamie escreve para publicações no Reino Unido e em todo o mundo, e tem sua própria revista, a Jamie Magazine. Ele vive em Londres e em Essex com sua mulher, Jools, e suas três filhas: Poppy, Daisy e Petal.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(338, 4, 'Mais Você – Receitas e Viagens Internacionais', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Em Nova York, os aromas podem sair de uma pâtisserie ou dos carrinhos estacionados em qualquer esquina. Para entrar no clima da cidade, Ana Maria Braga, apresentadora do programa Mais Você na TV Globo, experimentou um cachorro-quente, o sanduíche número um dos Estados Unidos. Alguns pontos turísticos desse país, de Portugal e da Itália, foram esquadrinhados para montar quase que um álbum de recordações, o livro Mais Você – Viagens e Receitas Internacionais, que a Globo Livros, em parceria com a Globo Marcas, lança em novembro.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Em Portugal, por exemplo, no pequeno vilarejo de Óbidos, cercado por muralhas e cheio de becos tortuosos, Ana Maria e a equipe se renderam ao sabor adocicado da ginjinha, um licor de cereja que pode ser servido com ou sem a fruta. Em Leiria, não resistiu ao leite creme, uma sobremesa que, segundo ela, acariciou a alma. E, claro, ela não deixou de ir à Fátima, para agradecer à santa que tanto a acolheu em tempos difíceis. Como prova de sua devoção, percorreu de joelhos, sob forte emoção, os duzentos metros até o altar da capela.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Na Itália, a equipe andou por caminhos cheios de cinzas fininhas, mais parecidas com talco, quando visitou o vulcão Etna, e se deliciou em Roma com lulas à dorê e salada verde com fartos pedaços de queijo parmeggiano reggiano, que faziam cócegas no céu da boca. Sobre Ariccia, conhecida como a “capital da porqueta”, literalmente pelo cheiro, ela conta que “o aroma ao redor dos carrinhos nas ruas atrai até o mais inapetente dos pedestres. As pessoas se aglomeram em torno dos carrinhos, que brilham de tão limpos. E elas saem de lá felizes, carregando as fartas porções que são devoradas ali mesmo, em mesinhas sob guarda-sóis. A carne é embrulhada em papel-manteiga e acompanhada de fatias de pão italiano”.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Nas 266 páginas, que conta com fotos e 92 receitas, a apresentadora narra outras histórias saborosíssimas, como o porquê de os sanduíches de bifanas– aqueles bifes finos de carne de porco empanados, servidos com pão francês fresquinho – terem se tornado um marco de suas viagens. Ana Maria ainda dá receitas de pratos bem tradicionais, como o Fettucine Alfredo e os Ovos Beneditine – “estopins” das viagens internacionais do Mais Você. Em uma conversa com o então diretor do programa, Nilton Travesso, Ana Maria e a equipe ficaram sabendo da predileção dele por esse prato, servido no hotel Plaza, um dos mais chiques de Nova York. Há muitas, muitas outras receitas imperdíveis, como zabaione e acorda alentejana. Mas se o leitor quiser saber como é feita a punheta de bacalhau, não poderá deixar de ler o livro.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(339, 4, 'Feijoada de Legumes', '', '', '', ''),
(340, 4, 'Kitchari de Lentilha com Massala Indiana', '', '', '', ''),
(341, 4, 'Pãezinhos de Mandioquinha', '', '', '', ''),
(342, 4, 'Suco de Atemoia com Melão', '', '', '', ''),
(343, 4, 'Bolo de Fubá com Goiabada', '', '', '', ''),
(344, 4, 'Bolo de Milho', '', '', '', ''),
(345, 4, 'Bolo Nega Maluca', '', '', '', ''),
(346, 4, 'Brownie', '', '', '', ''),
(347, 4, 'Bela Cozinha 2', '&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Com a proposta de incentivar uma alimentação que privilegia ingredientes naturais e faz bem à saúde, Bela Gil vendeu mais de 150 mil exemplares de seu livro de estreia, &lt;em&gt;&lt;strong&gt;&quot;Bela Cozinha – As Receitas&quot;&lt;/strong&gt;&lt;/em&gt;. Ela está de volta com mais opções saudáveis em &lt;em&gt;&lt;strong&gt;&quot;Bela Cozinha 2&quot;&lt;/strong&gt;&lt;/em&gt;, que traz as receitas das temporadas 2, Verão e 3 do programa exibido às terças, às 20h30, no GNT.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;O livro reúne mais de 60 novas receitas fotografadas pelo premiado Sérgio Coimbra. Uma das novidades é um capítulo dedicado a sucos e vitaminas. As demais opções estão divididas em: Petiscos &amp;amp; aperitivos; Entradas, saladas &amp;amp; acompanhamentos; Pratos principais; Sobremesas &amp;amp; doces; Café da manhã &amp;amp; lanche. Para auxiliar no preparo destes pratos, o Bela Cozinha 2 ainda revisita seis receitas básicas, como ghee, caldo de legumes e molho vermelho.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12pt; font-family: georgia, palatino;&quot;&gt;Além das informações sobre o rendimento e o tempo médio de preparação, todas as receitas têm uma indicação se são vegetarianas, veganas ou sem glúten. Bela escreveu um comentário em cada receita, no qual detalha as propriedades dos ingredientes. Assim, ao fazer um bolinho de arroz com pesto ou uma moqueca de banana da terra, o leitor sabe o quanto e de que forma aquele prato é benéfico à sua saúde.&lt;/span&gt;&lt;/p&gt;', '', '', ''),
(348, 4, 'Sanduíche de Cogumelo Shitake com Cebola ao Shoyu', '', '', '', ''),
(349, 4, 'Tapioca de Manga com Coco', '', '', '', ''),
(350, 4, 'Torta Gelada de Frutas Vermelhas', '', '', '', ''),
(351, 4, 'Vitamina de Banana com Amora', '', '', '', ''),
(352, 4, 'Bolinho de Bacalhau sem Erro', '', '', '', ''),
(353, 4, 'Paella do Antonio Banderas', '', '', '', ''),
(354, 4, 'O Melhor Pão de Mel do Brasil', '', '', '', ''),
(355, 4, 'Polenta Frita', '', '', '', ''),
(356, 4, 'Broinha de Fubá', '', '', '', ''),
(357, 4, 'Salada com Feijão Fradinho e Bacalhau', '', '', '', ''),
(358, 4, 'Sopa de Milho com Carne Seca', '', '', '', ''),
(359, 4, 'Vaca Atolada', '', '', '', ''),
(360, 4, 'Salada de Espinafre, Bacon e Pinólis', '', '', '', ''),
(361, 4, 'Sanduiche de Berinjela à Parmegiana', '', '', '', ''),
(362, 4, 'Torta Pudim de Panetone', '', '', '', ''),
(363, 4, 'Tortellini Primavera', '', '', '', ''),
(364, 4, 'Biscoito Casadinho', '', '', '', ''),
(365, 4, 'Bolo de Caneca de Micro-ondas', '', '', '', ''),
(366, 4, 'Bolo de Melancia', '', '', '', ''),
(367, 4, 'Pizza de Pastel', '', '', '', ''),
(368, 4, '.. Pão de Centeio', '&lt;p&gt;dqdwqdqw&lt;/p&gt;\r\n', '', '', ''),
(369, 4, '.. Pão de Viena ou Pão de Cachorro Quente', '', '', '', ''),
(370, 4, '.. Pão Doce', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
`product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM AUTO_INCREMENT=489 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
`product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3036 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
`product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
`product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_profile`
--

CREATE TABLE `oc_product_profile` (
  `product_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
`product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=772 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(769, 43, 1, 0),
(771, 368, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
`product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM AUTO_INCREMENT=519 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_tab`
--

CREATE TABLE `oc_product_tab` (
  `product_id` int(11) NOT NULL,
  `tab_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  `position` tinyint(1) DEFAULT NULL,
  `show_empty` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_product_tab`
--

INSERT INTO `oc_product_tab` (`product_id`, `tab_id`, `language_id`, `text`, `position`, `show_empty`) VALUES
(368, 1, 4, '&lt;p&gt;Textos da ficha técnica&lt;/p&gt;\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 7),
(39, 3),
(40, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 7),
(53, 3),
(55, 3),
(56, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3),
(79, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(102, 3),
(103, 3),
(104, 3),
(105, 3),
(106, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(112, 3),
(113, 3),
(114, 3),
(115, 3),
(116, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(122, 3),
(123, 3),
(124, 3),
(125, 3),
(126, 3),
(127, 3),
(128, 3),
(129, 3),
(130, 3),
(131, 3),
(132, 3),
(133, 3),
(134, 3),
(135, 3),
(136, 3),
(137, 3),
(138, 3),
(139, 3),
(140, 3),
(141, 3),
(142, 3),
(143, 3),
(144, 3),
(145, 3),
(146, 3),
(147, 7),
(148, 3),
(149, 3),
(150, 3),
(151, 3),
(152, 3),
(153, 3),
(154, 3),
(155, 3),
(156, 3),
(157, 3),
(158, 3),
(159, 3),
(160, 3),
(161, 3),
(162, 3),
(163, 3),
(164, 3),
(165, 3),
(166, 3),
(167, 3),
(168, 3),
(169, 3),
(170, 3),
(171, 3),
(172, 3),
(173, 3),
(174, 3),
(175, 3),
(176, 3),
(177, 3),
(178, 3),
(179, 3),
(180, 3),
(181, 3),
(182, 3),
(183, 3),
(184, 3),
(185, 3),
(186, 3),
(187, 3),
(188, 3),
(189, 3),
(190, 3),
(191, 3),
(192, 3),
(193, 3),
(194, 3),
(195, 3),
(196, 3),
(197, 3),
(198, 3),
(199, 3),
(200, 3),
(201, 3),
(202, 3),
(203, 3),
(204, 3),
(205, 3),
(206, 3),
(207, 3),
(208, 3),
(209, 3),
(210, 3),
(211, 3),
(212, 3),
(213, 3),
(214, 3),
(215, 3),
(216, 3),
(217, 3),
(218, 3),
(219, 3),
(220, 3),
(221, 7),
(222, 3),
(223, 3),
(224, 3),
(225, 3),
(226, 3),
(227, 3),
(228, 3),
(229, 3),
(230, 3),
(231, 3),
(232, 3),
(233, 3),
(234, 3),
(235, 3),
(236, 3),
(237, 3),
(238, 3),
(239, 3),
(240, 3),
(241, 3),
(242, 24),
(245, 3),
(246, 12),
(247, 13),
(248, 13),
(249, 12),
(250, 12),
(251, 12),
(252, 12),
(254, 12),
(255, 12),
(256, 12),
(257, 12),
(258, 12),
(259, 12),
(262, 12),
(263, 12),
(264, 12),
(265, 12),
(266, 12),
(267, 12),
(268, 12),
(269, 12),
(270, 12),
(271, 12),
(272, 12),
(273, 12),
(274, 12),
(275, 12),
(276, 12),
(277, 12),
(278, 12),
(279, 12),
(280, 12),
(281, 12),
(282, 12),
(283, 12),
(284, 29),
(285, 29),
(286, 12),
(287, 12),
(288, 12),
(289, 12),
(290, 12),
(291, 12),
(292, 12),
(293, 12),
(295, 8),
(296, 8),
(297, 8),
(298, 8),
(299, 8),
(300, 8),
(301, 8),
(302, 8),
(303, 8),
(304, 8),
(305, 8),
(306, 8),
(307, 8),
(308, 8),
(309, 8),
(310, 8),
(311, 8),
(312, 8),
(313, 29),
(314, 8),
(315, 8),
(316, 8),
(317, 8),
(318, 8),
(319, 8),
(320, 8),
(321, 8),
(322, 8),
(323, 8),
(324, 8),
(325, 8),
(326, 8),
(327, 8),
(328, 8),
(329, 8),
(330, 8),
(332, 8),
(333, 8),
(334, 8),
(335, 8),
(336, 8),
(337, 8),
(338, 8),
(339, 12),
(340, 12),
(341, 12),
(342, 12),
(343, 12),
(344, 12),
(345, 12),
(346, 12),
(348, 12),
(349, 12),
(350, 12),
(351, 12),
(352, 12),
(353, 12),
(354, 12),
(355, 12),
(356, 12),
(357, 12),
(358, 12),
(359, 12),
(360, 12),
(361, 12),
(362, 12),
(363, 12),
(364, 12),
(365, 12),
(366, 12),
(367, 12),
(368, 12),
(369, 12),
(370, 12);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(53, 0),
(55, 0),
(56, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(136, 0),
(137, 0),
(138, 0),
(139, 0),
(140, 0),
(141, 0),
(142, 0),
(143, 0),
(144, 0),
(145, 0),
(146, 0),
(147, 0),
(148, 0),
(149, 0),
(150, 0),
(151, 0),
(152, 0),
(153, 0),
(154, 0),
(155, 0),
(156, 0),
(157, 0),
(158, 0),
(159, 0),
(160, 0),
(161, 0),
(162, 0),
(163, 0),
(164, 0),
(165, 0),
(166, 0),
(167, 0),
(168, 0),
(169, 0),
(170, 0),
(171, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(176, 0),
(177, 0),
(178, 0),
(179, 0),
(180, 0),
(181, 0),
(182, 0),
(183, 0),
(184, 0),
(185, 0),
(186, 0),
(187, 0),
(188, 0),
(189, 0),
(190, 0),
(191, 0),
(192, 0),
(193, 0),
(194, 0),
(195, 0),
(196, 0),
(197, 0),
(198, 0),
(199, 0),
(200, 0),
(201, 0),
(202, 0),
(203, 0),
(204, 0),
(205, 0),
(206, 0),
(207, 0),
(208, 0),
(209, 0),
(210, 0),
(211, 0),
(212, 0),
(213, 0),
(214, 0),
(215, 0),
(216, 0),
(217, 0),
(218, 0),
(219, 0),
(220, 0),
(221, 0),
(222, 0),
(223, 0),
(224, 0),
(225, 0),
(226, 0),
(227, 0),
(228, 0),
(229, 0),
(230, 0),
(231, 0),
(232, 0),
(233, 0),
(234, 0),
(235, 0),
(236, 0),
(237, 0),
(238, 0),
(239, 0),
(240, 0),
(241, 0),
(242, 0),
(245, 0),
(246, 0),
(247, 0),
(248, 0),
(249, 0),
(250, 0),
(251, 0),
(252, 0),
(254, 0),
(255, 0),
(256, 0),
(257, 0),
(258, 0),
(259, 0),
(262, 0),
(263, 0),
(264, 0),
(265, 0),
(266, 0),
(267, 0),
(268, 0),
(269, 0),
(270, 0),
(271, 0),
(272, 0),
(273, 0),
(274, 0),
(275, 0),
(276, 0),
(277, 0),
(278, 0),
(279, 0),
(280, 0),
(281, 0),
(282, 0),
(283, 0),
(284, 0),
(285, 0),
(286, 0),
(287, 0),
(288, 0),
(289, 0),
(290, 0),
(291, 0),
(292, 0),
(293, 0),
(294, 0),
(295, 0),
(296, 0),
(297, 0),
(298, 0),
(299, 0),
(300, 0),
(301, 0),
(302, 0),
(303, 0),
(304, 0),
(305, 0),
(306, 0),
(307, 0),
(308, 0),
(309, 0),
(310, 0),
(311, 0),
(312, 0),
(313, 0),
(314, 0),
(315, 0),
(316, 0),
(317, 0),
(318, 0),
(319, 0),
(320, 0),
(321, 0),
(322, 0),
(323, 0),
(324, 0),
(325, 0),
(326, 0),
(327, 0),
(328, 0),
(329, 0),
(330, 0),
(331, 0),
(332, 0),
(333, 0),
(334, 0),
(335, 0),
(336, 0),
(337, 0),
(338, 0),
(339, 0),
(340, 0),
(341, 0),
(342, 0),
(343, 0),
(344, 0),
(345, 0),
(346, 0),
(347, 0),
(348, 0),
(349, 0),
(350, 0),
(351, 0),
(352, 0),
(353, 0),
(354, 0),
(355, 0),
(356, 0),
(357, 0),
(358, 0),
(359, 0),
(360, 0),
(361, 0),
(362, 0),
(363, 0),
(364, 0),
(365, 0),
(366, 0),
(367, 0),
(368, 0),
(369, 0),
(370, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_profile`
--

CREATE TABLE `oc_profile` (
`profile_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_profile_description`
--

CREATE TABLE `oc_profile_description` (
  `profile_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
`return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
`return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 4, 'Refunded'),
(2, 4, 'Credit Issued'),
(3, 4, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
`return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
`return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 4, 'Dead On Arrival'),
(2, 4, 'Received Wrong Item'),
(3, 4, 'Order Error'),
(4, 4, 'Faulty, please supply details'),
(5, 4, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
`return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 4, 'Pending'),
(3, 4, 'Complete'),
(2, 4, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
`review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
`setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5819 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(4800, 0, 'newcarousel', 'newcarousel_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:2:"15";s:5:"width";s:4:"1920";s:6:"height";s:3:"420";s:9:"layout_id";s:1:"1";s:8:"position";s:10:"header_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(5376, 0, 'correios', 'correios_contrato_senha', '', 0),
(5375, 0, 'correios', 'correios_contrato_codigo', '', 0),
(5374, 0, 'correios', 'correios_41106', '1', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(4584, 0, 'account', 'account_module', 'a:7:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:4:{s:9:"layout_id";s:1:"4";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:2;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:3;a:4:{s:9:"layout_id";s:1:"5";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:4;a:4:{s:9:"layout_id";s:1:"9";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:5;a:4:{s:9:"layout_id";s:1:"7";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:6;a:4:{s:9:"layout_id";s:1:"8";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(5022, 0, 'special', 'special_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"200";s:12:"image_height";s:3:"200";s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(5818, 0, 'config', 'config_google_analytics', '', 0),
(5817, 0, 'config', 'config_error_filename', 'error.txt', 0),
(5816, 0, 'config', 'config_error_log', '1', 0),
(5231, 0, 'compare', 'compare_module', 'a:2:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"4";}i:1;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"4";}}', 1),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(4353, 0, 'affiliate', 'affiliate_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(5024, 0, 'filter', 'filter_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"4";}}', 1),
(3579, 0, 'information', 'information_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(5808, 0, 'config', 'config_seo_url', '1', 0),
(5809, 0, 'config', 'config_file_extension_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(5810, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(5815, 0, 'config', 'config_error_display', '1', 0),
(5814, 0, 'config', 'config_compression', '0', 0),
(5811, 0, 'config', 'config_maintenance', '0', 0),
(5812, 0, 'config', 'config_password', '1', 0),
(5813, 0, 'config', 'config_encryption', 'b6f18ec66654e2ecb6eeafc7447f9b6f', 0),
(5805, 0, 'config', 'config_secure', '0', 0),
(5806, 0, 'config', 'config_shared', '0', 0),
(5807, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwget\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(5804, 0, 'config', 'config_fraud_status_id', '7', 0),
(5803, 0, 'config', 'config_fraud_score', '', 0),
(5802, 0, 'config', 'config_fraud_key', '', 0),
(5801, 0, 'config', 'config_fraud_detection', '0', 0),
(5800, 0, 'config', 'config_alert_emails', '', 0),
(5799, 0, 'config', 'config_account_mail', '0', 0),
(5798, 0, 'config', 'config_alert_mail', '0', 0),
(5797, 0, 'config', 'config_smtp_timeout', '5', 0),
(5796, 0, 'config', 'config_smtp_port', '25', 0),
(5795, 0, 'config', 'config_smtp_password', '', 0),
(2056, 0, 'newslideshow', 'slideshow_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:2:"14";s:5:"width";s:4:"1000";s:6:"height";s:3:"400";s:9:"layout_id";s:1:"6";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(5794, 0, 'config', 'config_smtp_username', '', 0),
(5793, 0, 'config', 'config_smtp_host', '', 0),
(5792, 0, 'config', 'config_mail_parameter', '', 0),
(5791, 0, 'config', 'config_mail_protocol', 'mail', 0),
(5790, 0, 'config', 'config_ftp_status', '0', 0),
(5789, 0, 'config', 'config_ftp_root', '', 0),
(5788, 0, 'config', 'config_ftp_password', '', 0),
(5373, 0, 'correios', 'correios_40010', '1', 0),
(5372, 0, 'correios', 'correios_postcode', '09560260', 0),
(4805, 0, 'bestseller', 'bestseller_module', 'a:3:{i:1;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"220";s:12:"image_height";s:3:"220";s:9:"layout_id";s:1:"4";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"220";s:12:"image_height";s:3:"220";s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:3;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"220";s:12:"image_height";s:3:"220";s:9:"layout_id";s:1:"8";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(5787, 0, 'config', 'config_ftp_username', '', 0),
(4806, 0, 'latest', 'latest_module', 'a:3:{i:1;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"220";s:12:"image_height";s:3:"220";s:9:"layout_id";s:1:"4";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:2;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"220";s:12:"image_height";s:3:"220";s:9:"layout_id";s:1:"9";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:3;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"220";s:12:"image_height";s:3:"220";s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(5786, 0, 'config', 'config_ftp_port', '21', 0),
(5611, 0, 'featured', 'featured_product', '331,294,347,334,303,142,64,144,49', 0),
(5612, 0, 'featured', 'featured_module', 'a:1:{i:0;a:7:{s:5:"limit";s:2:"12";s:11:"image_width";s:3:"367";s:12:"image_height";s:3:"450";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(5785, 0, 'config', 'config_ftp_host', '192.168.9.2', 0),
(5784, 0, 'config', 'config_image_cart_height', '47', 0),
(5783, 0, 'config', 'config_image_cart_width', '47', 0),
(5782, 0, 'config', 'config_image_wishlist_height', '47', 0),
(5781, 0, 'config', 'config_image_wishlist_width', '47', 0),
(5778, 0, 'config', 'config_image_related_height', '170', 0),
(5779, 0, 'config', 'config_image_compare_width', '90', 0),
(5780, 0, 'config', 'config_image_compare_height', '90', 0),
(5777, 0, 'config', 'config_image_related_width', '170', 0),
(5776, 0, 'config', 'config_image_additional_height', '70', 0),
(5775, 0, 'config', 'config_image_additional_width', '70', 0),
(5774, 0, 'config', 'config_image_product_height', '327', 0),
(5770, 0, 'config', 'config_image_thumb_height', '270', 0),
(5771, 0, 'config', 'config_image_popup_width', '600', 0),
(5772, 0, 'config', 'config_image_popup_height', '600', 0),
(5773, 0, 'config', 'config_image_product_width', '267', 0),
(5769, 0, 'config', 'config_image_thumb_width', '270', 0),
(5766, 0, 'config', 'config_icon', '', 0),
(5767, 0, 'config', 'config_image_category_width', '150', 0),
(5768, 0, 'config', 'config_image_category_height', '150', 0),
(5763, 0, 'config', 'config_return_id', '0', 0),
(5764, 0, 'config', 'config_return_status_id', '2', 0),
(5765, 0, 'config', 'config_logo', 'data/logo.png', 0),
(5762, 0, 'config', 'config_commission', '5', 0),
(5761, 0, 'config', 'config_affiliate_id', '4', 0),
(5760, 0, 'config', 'config_stock_status_id', '5', 0),
(5759, 0, 'config', 'config_stock_checkout', '0', 0),
(5758, 0, 'config', 'config_stock_warning', '0', 0),
(5757, 0, 'config', 'config_stock_display', '0', 0),
(5756, 0, 'config', 'config_complete_status_id', '5', 0),
(5755, 0, 'config', 'config_order_status_id', '1', 0),
(5754, 0, 'config', 'config_invoice_prefix', 'ROCHA-2015', 0),
(5748, 0, 'config', 'config_customer_price', '0', 0),
(5749, 0, 'config', 'config_account_id', '3', 0),
(5750, 0, 'config', 'config_cart_weight', '1', 0),
(5751, 0, 'config', 'config_guest_checkout', '0', 0),
(5752, 0, 'config', 'config_checkout_id', '5', 0),
(5023, 0, 'manufacturer', 'manufacturer_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(5753, 0, 'config', 'config_order_edit', '100', 0),
(5747, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(5746, 0, 'config', 'config_customer_group_id', '1', 0),
(5745, 0, 'config', 'config_customer_online', '0', 0),
(5744, 0, 'config', 'config_tax_customer', 'shipping', 0),
(5742, 0, 'config', 'config_vat', '0', 0),
(5743, 0, 'config', 'config_tax_default', 'shipping', 0),
(5741, 0, 'config', 'config_tax', '1', 0),
(5738, 0, 'config', 'config_download', '0', 0),
(5739, 0, 'config', 'config_voucher_min', '1', 0),
(5740, 0, 'config', 'config_voucher_max', '1000', 0),
(5737, 0, 'config', 'config_review_status', '0', 0),
(5735, 0, 'config', 'config_admin_limit', '20', 0),
(5736, 0, 'config', 'config_product_count', '0', 0),
(5734, 0, 'config', 'config_catalog_limit', '15', 0),
(5733, 0, 'config', 'config_weight_class_id', '1', 0),
(5732, 0, 'config', 'config_length_class_id', '1', 0),
(5731, 0, 'config', 'config_currency_auto', '1', 0),
(5730, 0, 'config', 'config_currency', 'BRL', 0),
(5729, 0, 'config', 'config_admin_language', 'pt-br', 0),
(5728, 0, 'config', 'config_language', 'pt-br', 0),
(5727, 0, 'config', 'config_zone_id', '464', 0),
(5726, 0, 'config', 'config_country_id', '30', 0),
(5725, 0, 'config', 'config_layout_id', '4', 0),
(5724, 0, 'config', 'config_template', 'theme416', 0),
(5723, 0, 'config', 'config_meta_description', 'Livraria da Gastronomia', 0),
(5721, 0, 'config', 'config_fax', '', 0),
(5722, 0, 'config', 'config_title', 'Livraria da Gastronomia', 0),
(5720, 0, 'config', 'config_telephone', '11 4107-0500', 0),
(5366, 0, 'pagseguro', 'pagseguro_order_devolvida', '23', 0),
(5365, 0, 'pagseguro', 'pagseguro_order_disputa', '22', 0),
(5364, 0, 'pagseguro', 'pagseguro_order_disponivel', '21', 0),
(5363, 0, 'pagseguro', 'pagseguro_order_paga', '20', 0),
(5362, 0, 'pagseguro', 'pagseguro_order_analise', '19', 0),
(5361, 0, 'pagseguro', 'pagseguro_order_aguardando_pagamento', '18', 0),
(5360, 0, 'pagseguro', 'pagseguro_order_aguardando_retorno', '17', 0),
(5359, 0, 'pagseguro', 'pagseguro_tipo_frete', '0', 0),
(5358, 0, 'pagseguro', 'pagseguro_posfixo', '', 0),
(5357, 0, 'pagseguro', 'pagseguro_total', '1', 0),
(5356, 0, 'pagseguro', 'pagseguro_email', 'fausto.vieira@agenciaisland.com.br', 0),
(5355, 0, 'pagseguro', 'pagseguro_token', 'E5B66FC6EBA74453A75AD797D0810CD1', 0),
(5367, 0, 'pagseguro', 'pagseguro_order_cancelada', '24', 0),
(5368, 0, 'pagseguro', 'pagseguro_update_status_alert', '1', 0),
(5369, 0, 'pagseguro', 'pagseguro_geo_zone_id', '0', 0),
(5370, 0, 'pagseguro', 'pagseguro_status', '1', 0),
(5371, 0, 'pagseguro', 'pagseguro_sort_order', '1', 0),
(5377, 0, 'correios', 'correios_mao_propria', 'n', 0),
(5378, 0, 'correios', 'correios_aviso_recebimento', 'n', 0),
(5379, 0, 'correios', 'correios_declarar_valor', 'n', 0),
(5380, 0, 'correios', 'correios_adicional', '', 0),
(5381, 0, 'correios', 'correios_prazo_adicional', '', 0),
(5382, 0, 'correios', 'correios_tax_class_id', '0', 0),
(5383, 0, 'correios', 'correios_geo_zone_id', '0', 0),
(5384, 0, 'correios', 'correios_status', '1', 0),
(5385, 0, 'correios', 'correios_sort_order', '1', 0),
(5719, 0, 'config', 'config_email', 'contato@livrariadagastronomia.com.br', 0),
(5718, 0, 'config', 'config_address', 'Rocha &amp; Molinário Comércio Eletrônico Ltda', 0),
(5717, 0, 'config', 'config_owner', 'Livraria da Gastronomia', 0),
(5716, 0, 'config', 'config_name', 'Livraria da Gastronomia', 0),
(5610, 0, 'featured', 'product', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
`stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 4, 'In Stock'),
(8, 4, 'Pre-Order'),
(5, 4, 'Out Of Stock'),
(6, 4, '2 - 3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
`store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tab`
--

CREATE TABLE `oc_tab` (
`tab_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `position` tinyint(1) NOT NULL DEFAULT '1',
  `show_empty` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_tab`
--

INSERT INTO `oc_tab` (`tab_id`, `sort_order`, `status`, `position`, `show_empty`) VALUES
(1, 2, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tab_description`
--

CREATE TABLE `oc_tab_description` (
  `tab_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_tab_description`
--

INSERT INTO `oc_tab_description` (`tab_id`, `language_id`, `name`) VALUES
(1, 4, 'Ficha Técnica');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
`tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed Stuff', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
`tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (17.5%)', 17.5000, 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', 2.0000, 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
`tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
`url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=798 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(792, 'manufacturer_id=8', 'apples'),
(797, 'information_id=4', 'apples'),
(767, 'category_id=34', 'oranges');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
`user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'c0c00e9b5e62531f18356c291e4c77574534a42c', '19243ee42', '', '', 'fernando.mendes@webca.com.br', '', '127.0.0.1', 1, '2015-11-28 01:16:47'),
(2, 1, 'livrariadaga', '543e9b1a172f34c6edeed2c52fc0c04e2a5d07ec', '8387b259e', 'livrariadaga', 'livrariadaga', '', '', '', 1, '2015-12-08 00:53:15');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
`user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Top Administrator', 'a:2:{s:6:"access";a:153:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:15:"catalog/profile";i:10;s:14:"catalog/review";i:11;s:11:"catalog/tab";i:12;s:18:"common/filemanager";i:13;s:13:"design/banner";i:14;s:19:"design/custom_field";i:15;s:13:"design/layout";i:16;s:14:"extension/feed";i:17;s:17:"extension/manager";i:18;s:16:"extension/module";i:19;s:17:"extension/openbay";i:20;s:17:"extension/payment";i:21;s:18:"extension/shipping";i:22;s:15:"extension/total";i:23;s:16:"feed/google_base";i:24;s:19:"feed/google_sitemap";i:25;s:20:"localisation/country";i:26;s:21:"localisation/currency";i:27;s:21:"localisation/geo_zone";i:28;s:21:"localisation/language";i:29;s:25:"localisation/length_class";i:30;s:25:"localisation/order_status";i:31;s:26:"localisation/return_action";i:32;s:26:"localisation/return_reason";i:33;s:26:"localisation/return_status";i:34;s:25:"localisation/stock_status";i:35;s:22:"localisation/tax_class";i:36;s:21:"localisation/tax_rate";i:37;s:25:"localisation/weight_class";i:38;s:17:"localisation/zone";i:39;s:14:"module/account";i:40;s:16:"module/affiliate";i:41;s:29:"module/amazon_checkout_layout";i:42;s:13:"module/banner";i:43;s:17:"module/bestseller";i:44;s:15:"module/carousel";i:45;s:15:"module/category";i:46;s:14:"module/compare";i:47;s:18:"module/ebaydisplay";i:48;s:15:"module/featured";i:49;s:13:"module/filter";i:50;s:18:"module/google_talk";i:51;s:18:"module/information";i:52;s:13:"module/latest";i:53;s:19:"module/manufacturer";i:54;s:18:"module/newcarousel";i:55;s:17:"module/openbaypro";i:56;s:16:"module/pp_layout";i:57;s:16:"module/slideshow";i:58;s:14:"module/special";i:59;s:12:"module/store";i:60;s:20:"module/vqmod_manager";i:61;s:14:"module/welcome";i:62;s:14:"openbay/amazon";i:63;s:22:"openbay/amazon_listing";i:64;s:22:"openbay/amazon_product";i:65;s:16:"openbay/amazonus";i:66;s:24:"openbay/amazonus_listing";i:67;s:24:"openbay/amazonus_product";i:68;s:20:"openbay/ebay_profile";i:69;s:21:"openbay/ebay_template";i:70;s:15:"openbay/openbay";i:71;s:23:"payment/amazon_checkout";i:72;s:24:"payment/authorizenet_aim";i:73;s:21:"payment/bank_transfer";i:74;s:14:"payment/cheque";i:75;s:11:"payment/cod";i:76;s:21:"payment/free_checkout";i:77;s:22:"payment/klarna_account";i:78;s:22:"payment/klarna_invoice";i:79;s:14:"payment/liqpay";i:80;s:20:"payment/moneybookers";i:81;s:14:"payment/nochex";i:82;s:17:"payment/pagseguro";i:83;s:15:"payment/paymate";i:84;s:16:"payment/paypoint";i:85;s:13:"payment/payza";i:86;s:26:"payment/perpetual_payments";i:87;s:18:"payment/pp_express";i:88;s:25:"payment/pp_payflow_iframe";i:89;s:14:"payment/pp_pro";i:90;s:21:"payment/pp_pro_iframe";i:91;s:17:"payment/pp_pro_pf";i:92;s:17:"payment/pp_pro_uk";i:93;s:19:"payment/pp_standard";i:94;s:15:"payment/sagepay";i:95;s:22:"payment/sagepay_direct";i:96;s:18:"payment/sagepay_us";i:97;s:19:"payment/twocheckout";i:98;s:28:"payment/web_payment_software";i:99;s:16:"payment/worldpay";i:100;s:27:"report/affiliate_commission";i:101;s:22:"report/customer_credit";i:102;s:22:"report/customer_online";i:103;s:21:"report/customer_order";i:104;s:22:"report/customer_reward";i:105;s:24:"report/product_purchased";i:106;s:21:"report/product_viewed";i:107;s:18:"report/sale_coupon";i:108;s:17:"report/sale_order";i:109;s:18:"report/sale_return";i:110;s:20:"report/sale_shipping";i:111;s:15:"report/sale_tax";i:112;s:14:"sale/affiliate";i:113;s:12:"sale/contact";i:114;s:11:"sale/coupon";i:115;s:13:"sale/customer";i:116;s:20:"sale/customer_ban_ip";i:117;s:19:"sale/customer_group";i:118;s:10:"sale/order";i:119;s:14:"sale/recurring";i:120;s:11:"sale/return";i:121;s:12:"sale/voucher";i:122;s:18:"sale/voucher_theme";i:123;s:15:"setting/setting";i:124;s:13:"setting/store";i:125;s:16:"shipping/auspost";i:126;s:17:"shipping/citylink";i:127;s:17:"shipping/correios";i:128;s:14:"shipping/fedex";i:129;s:13:"shipping/flat";i:130;s:13:"shipping/free";i:131;s:13:"shipping/item";i:132;s:23:"shipping/parcelforce_48";i:133;s:15:"shipping/pickup";i:134;s:19:"shipping/royal_mail";i:135;s:12:"shipping/ups";i:136;s:13:"shipping/usps";i:137;s:15:"shipping/weight";i:138;s:11:"tool/backup";i:139;s:14:"tool/error_log";i:140;s:12:"total/coupon";i:141;s:12:"total/credit";i:142;s:14:"total/handling";i:143;s:16:"total/klarna_fee";i:144;s:19:"total/low_order_fee";i:145;s:12:"total/reward";i:146;s:14:"total/shipping";i:147;s:15:"total/sub_total";i:148;s:9:"total/tax";i:149;s:11:"total/total";i:150;s:13:"total/voucher";i:151;s:9:"user/user";i:152;s:20:"user/user_permission";}s:6:"modify";a:153:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:15:"catalog/profile";i:10;s:14:"catalog/review";i:11;s:11:"catalog/tab";i:12;s:18:"common/filemanager";i:13;s:13:"design/banner";i:14;s:19:"design/custom_field";i:15;s:13:"design/layout";i:16;s:14:"extension/feed";i:17;s:17:"extension/manager";i:18;s:16:"extension/module";i:19;s:17:"extension/openbay";i:20;s:17:"extension/payment";i:21;s:18:"extension/shipping";i:22;s:15:"extension/total";i:23;s:16:"feed/google_base";i:24;s:19:"feed/google_sitemap";i:25;s:20:"localisation/country";i:26;s:21:"localisation/currency";i:27;s:21:"localisation/geo_zone";i:28;s:21:"localisation/language";i:29;s:25:"localisation/length_class";i:30;s:25:"localisation/order_status";i:31;s:26:"localisation/return_action";i:32;s:26:"localisation/return_reason";i:33;s:26:"localisation/return_status";i:34;s:25:"localisation/stock_status";i:35;s:22:"localisation/tax_class";i:36;s:21:"localisation/tax_rate";i:37;s:25:"localisation/weight_class";i:38;s:17:"localisation/zone";i:39;s:14:"module/account";i:40;s:16:"module/affiliate";i:41;s:29:"module/amazon_checkout_layout";i:42;s:13:"module/banner";i:43;s:17:"module/bestseller";i:44;s:15:"module/carousel";i:45;s:15:"module/category";i:46;s:14:"module/compare";i:47;s:18:"module/ebaydisplay";i:48;s:15:"module/featured";i:49;s:13:"module/filter";i:50;s:18:"module/google_talk";i:51;s:18:"module/information";i:52;s:13:"module/latest";i:53;s:19:"module/manufacturer";i:54;s:18:"module/newcarousel";i:55;s:17:"module/openbaypro";i:56;s:16:"module/pp_layout";i:57;s:16:"module/slideshow";i:58;s:14:"module/special";i:59;s:12:"module/store";i:60;s:20:"module/vqmod_manager";i:61;s:14:"module/welcome";i:62;s:14:"openbay/amazon";i:63;s:22:"openbay/amazon_listing";i:64;s:22:"openbay/amazon_product";i:65;s:16:"openbay/amazonus";i:66;s:24:"openbay/amazonus_listing";i:67;s:24:"openbay/amazonus_product";i:68;s:20:"openbay/ebay_profile";i:69;s:21:"openbay/ebay_template";i:70;s:15:"openbay/openbay";i:71;s:23:"payment/amazon_checkout";i:72;s:24:"payment/authorizenet_aim";i:73;s:21:"payment/bank_transfer";i:74;s:14:"payment/cheque";i:75;s:11:"payment/cod";i:76;s:21:"payment/free_checkout";i:77;s:22:"payment/klarna_account";i:78;s:22:"payment/klarna_invoice";i:79;s:14:"payment/liqpay";i:80;s:20:"payment/moneybookers";i:81;s:14:"payment/nochex";i:82;s:17:"payment/pagseguro";i:83;s:15:"payment/paymate";i:84;s:16:"payment/paypoint";i:85;s:13:"payment/payza";i:86;s:26:"payment/perpetual_payments";i:87;s:18:"payment/pp_express";i:88;s:25:"payment/pp_payflow_iframe";i:89;s:14:"payment/pp_pro";i:90;s:21:"payment/pp_pro_iframe";i:91;s:17:"payment/pp_pro_pf";i:92;s:17:"payment/pp_pro_uk";i:93;s:19:"payment/pp_standard";i:94;s:15:"payment/sagepay";i:95;s:22:"payment/sagepay_direct";i:96;s:18:"payment/sagepay_us";i:97;s:19:"payment/twocheckout";i:98;s:28:"payment/web_payment_software";i:99;s:16:"payment/worldpay";i:100;s:27:"report/affiliate_commission";i:101;s:22:"report/customer_credit";i:102;s:22:"report/customer_online";i:103;s:21:"report/customer_order";i:104;s:22:"report/customer_reward";i:105;s:24:"report/product_purchased";i:106;s:21:"report/product_viewed";i:107;s:18:"report/sale_coupon";i:108;s:17:"report/sale_order";i:109;s:18:"report/sale_return";i:110;s:20:"report/sale_shipping";i:111;s:15:"report/sale_tax";i:112;s:14:"sale/affiliate";i:113;s:12:"sale/contact";i:114;s:11:"sale/coupon";i:115;s:13:"sale/customer";i:116;s:20:"sale/customer_ban_ip";i:117;s:19:"sale/customer_group";i:118;s:10:"sale/order";i:119;s:14:"sale/recurring";i:120;s:11:"sale/return";i:121;s:12:"sale/voucher";i:122;s:18:"sale/voucher_theme";i:123;s:15:"setting/setting";i:124;s:13:"setting/store";i:125;s:16:"shipping/auspost";i:126;s:17:"shipping/citylink";i:127;s:17:"shipping/correios";i:128;s:14:"shipping/fedex";i:129;s:13:"shipping/flat";i:130;s:13:"shipping/free";i:131;s:13:"shipping/item";i:132;s:23:"shipping/parcelforce_48";i:133;s:15:"shipping/pickup";i:134;s:19:"shipping/royal_mail";i:135;s:12:"shipping/ups";i:136;s:13:"shipping/usps";i:137;s:15:"shipping/weight";i:138;s:11:"tool/backup";i:139;s:14:"tool/error_log";i:140;s:12:"total/coupon";i:141;s:12:"total/credit";i:142;s:14:"total/handling";i:143;s:16:"total/klarna_fee";i:144;s:19:"total/low_order_fee";i:145;s:12:"total/reward";i:146;s:14:"total/shipping";i:147;s:15:"total/sub_total";i:148;s:9:"total/tax";i:149;s:11:"total/total";i:150;s:13:"total/voucher";i:151;s:9:"user/user";i:152;s:20:"user/user_permission";}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
`voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
`voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
`voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'data/demo/canon_eos_5d_2.jpg'),
(7, 'data/demo/gift-voucher-birthday.jpg'),
(6, 'data/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 4, 'Christmas'),
(7, 4, 'Birthday'),
(8, 4, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
`weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 1000.00000000),
(5, 2.20460000),
(6, 35.27400000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
`weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 4, 'Kilogram', 'kg'),
(2, 4, 'Gram', 'g'),
(5, 4, 'Pound ', 'lb'),
(6, 4, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
`zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4033 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Hi', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chi', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovar-Bilogora', 'BB', 1),
(848, 53, 'City of Zagreb', 'CZ', 1),
(849, 53, 'Dubrovnik-Neretva', 'DN', 1),
(850, 53, 'Istra', 'IS', 1),
(851, 53, 'Karlovac', 'KA', 1),
(852, 53, 'Koprivnica-Krizevci', 'KK', 1),
(853, 53, 'Krapina-Zagorje', 'KZ', 1),
(854, 53, 'Lika-Senj', 'LS', 1),
(855, 53, 'Medimurje', 'ME', 1),
(856, 53, 'Osijek-Baranja', 'OB', 1),
(857, 53, 'Pozega-Slavonia', 'PS', 1),
(858, 53, 'Primorje-Gorski Kotar', 'PG', 1),
(859, 53, 'Sibenik', 'SI', 1),
(860, 53, 'Sisak-Moslavina', 'SM', 1),
(861, 53, 'Slavonski Brod-Posavina', 'SB', 1),
(862, 53, 'Split-Dalmatia', 'SD', 1),
(863, 53, 'Varazdin', 'VA', 1),
(864, 53, 'Virovitica-Podravina', 'VP', 1),
(865, 53, 'Vukovar-Srijem', 'VS', 1),
(866, 53, 'Zadar-Knin', 'ZK', 1),
(867, 53, 'Zagreb', 'ZA', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan Laani', 'AL', 1),
(1086, 72, 'Etela-Suomen Laani', 'ES', 1),
(1087, 72, 'Ita-Suomen Laani', 'IS', 1),
(1088, 72, 'Lansi-Suomen Laani', 'LS', 1),
(1089, 72, 'Lapin Lanani', 'LA', 1),
(1090, 72, 'Oulun Laani', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1428, 97, 'Bacs-Kiskun', 'BK', 1),
(1429, 97, 'Baranya', 'BA', 1),
(1430, 97, 'Bekes', 'BE', 1),
(1431, 97, 'Bekescsaba', 'BS', 1),
(1432, 97, 'Borsod-Abauj-Zemplen', 'BZ', 1),
(1433, 97, 'Budapest', 'BU', 1),
(1434, 97, 'Csongrad', 'CS', 1),
(1435, 97, 'Debrecen', 'DE', 1),
(1436, 97, 'Dunaujvaros', 'DU', 1),
(1437, 97, 'Eger', 'EG', 1),
(1438, 97, 'Fejer', 'FE', 1),
(1439, 97, 'Gyor', 'GY', 1),
(1440, 97, 'Gyor-Moson-Sopron', 'GM', 1),
(1441, 97, 'Hajdu-Bihar', 'HB', 1),
(1442, 97, 'Heves', 'HE', 1),
(1443, 97, 'Hodmezovasarhely', 'HO', 1),
(1444, 97, 'Jasz-Nagykun-Szolnok', 'JN', 1),
(1445, 97, 'Kaposvar', 'KA', 1),
(1446, 97, 'Kecskemet', 'KE', 1),
(1447, 97, 'Komarom-Esztergom', 'KO', 1),
(1448, 97, 'Miskolc', 'MI', 1),
(1449, 97, 'Nagykanizsa', 'NA', 1),
(1450, 97, 'Nograd', 'NO', 1),
(1451, 97, 'Nyiregyhaza', 'NY', 1),
(1452, 97, 'Pecs', 'PE', 1),
(1453, 97, 'Pest', 'PS', 1),
(1454, 97, 'Somogy', 'SO', 1),
(1455, 97, 'Sopron', 'SP', 1),
(1456, 97, 'Szabolcs-Szatmar-Bereg', 'SS', 1),
(1457, 97, 'Szeged', 'SZ', 1),
(1458, 97, 'Szekesfehervar', 'SE', 1),
(1459, 97, 'Szolnok', 'SL', 1),
(1460, 97, 'Szombathely', 'SM', 1),
(1461, 97, 'Tatabanya', 'TA', 1),
(1462, 97, 'Tolna', 'TO', 1),
(1463, 97, 'Vas', 'VA', 1),
(1464, 97, 'Veszprem', 'VE', 1),
(1465, 97, 'Zala', 'ZA', 1),
(1466, 97, 'Zalaegerszeg', 'ZZ', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Pondicherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1819, 117, 'Aizkraukles Rajons', 'AIZ', 1),
(1820, 117, 'Aluksnes Rajons', 'ALU', 1),
(1821, 117, 'Balvu Rajons', 'BAL', 1),
(1822, 117, 'Bauskas Rajons', 'BAU', 1),
(1823, 117, 'Cesu Rajons', 'CES', 1),
(1824, 117, 'Daugavpils Rajons', 'DGR', 1),
(1825, 117, 'Dobeles Rajons', 'DOB', 1),
(1826, 117, 'Gulbenes Rajons', 'GUL', 1),
(1827, 117, 'Jekabpils Rajons', 'JEK', 1),
(1828, 117, 'Jelgavas Rajons', 'JGR', 1),
(1829, 117, 'Kraslavas Rajons', 'KRA', 1),
(1830, 117, 'Kuldigas Rajons', 'KUL', 1),
(1831, 117, 'Liepajas Rajons', 'LPR', 1),
(1832, 117, 'Limbazu Rajons', 'LIM', 1),
(1833, 117, 'Ludzas Rajons', 'LUD', 1),
(1834, 117, 'Madonas Rajons', 'MAD', 1),
(1835, 117, 'Ogres Rajons', 'OGR', 1),
(1836, 117, 'Preilu Rajons', 'PRE', 1),
(1837, 117, 'Rezeknes Rajons', 'RZR', 1),
(1838, 117, 'Rigas Rajons', 'RGR', 1),
(1839, 117, 'Saldus Rajons', 'SAL', 1),
(1840, 117, 'Talsu Rajons', 'TAL', 1),
(1841, 117, 'Tukuma Rajons', 'TUK', 1),
(1842, 117, 'Valkas Rajons', 'VLK', 1),
(1843, 117, 'Valmieras Rajons', 'VLM', 1),
(1844, 117, 'Ventspils Rajons', 'VSR', 1),
(1845, 117, 'Daugavpils', 'DGV', 1),
(1846, 117, 'Jelgava', 'JGV', 1),
(1847, 117, 'Jurmala', 'JUR', 1),
(1848, 117, 'Liepaja', 'LPK', 1),
(1849, 117, 'Rezekne', 'RZK', 1),
(1850, 117, 'Riga', 'RGA', 1),
(1851, 117, 'Ventspils', 'VSL', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'JO', 1),
(1972, 129, 'Kedah', 'KE', 1),
(1973, 129, 'Kelantan', 'KL', 1),
(1974, 129, 'Labuan', 'LA', 1),
(1975, 129, 'Melaka', 'ME', 1),
(1976, 129, 'Negeri Sembilan', 'NS', 1),
(1977, 129, 'Pahang', 'PA', 1),
(1978, 129, 'Perak', 'PE', 1),
(1979, 129, 'Perlis', 'PR', 1),
(1980, 129, 'Pulau Pinang', 'PP', 1),
(1981, 129, 'Sabah', 'SA', 1),
(1982, 129, 'Sarawak', 'SR', 1),
(1983, 129, 'Selangor', 'SE', 1),
(1984, 129, 'Terengganu', 'TE', 1),
(1985, 129, 'Wilayah Persekutuan', 'WP', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2737, 176, 'Gomo-Altaysk', 'GO', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3031, 197, 'Ascension', 'A', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3033, 197, 'Tristan da Cunha', 'T', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakir', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkasy', 'CK', 1),
(3481, 220, 'Chernihiv', 'CH', 1),
(3482, 220, 'Chernivtsi', 'CV', 1),
(3483, 220, 'Crimea', 'CR', 1),
(3484, 220, 'Dnipropetrovs''k', 'DN', 1),
(3485, 220, 'Donets''k', 'DO', 1),
(3486, 220, 'Ivano-Frankivs''k', 'IV', 1),
(3487, 220, 'Kharkiv Kherson', 'KL', 1),
(3488, 220, 'Khmel''nyts''kyy', 'KM', 1),
(3489, 220, 'Kirovohrad', 'KR', 1),
(3490, 220, 'Kiev', 'KV', 1),
(3491, 220, 'Kyyiv', 'KY', 1),
(3492, 220, 'Luhans''k', 'LU', 1),
(3493, 220, 'L''viv', 'LV', 1),
(3494, 220, 'Mykolayiv', 'MY', 1),
(3495, 220, 'Odesa', 'OD', 1),
(3496, 220, 'Poltava', 'PO', 1),
(3497, 220, 'Rivne', 'RI', 1),
(3498, 220, 'Sevastopol', 'SE', 1),
(3499, 220, 'Sumy', 'SU', 1),
(3500, 220, 'Ternopil''', 'TE', 1),
(3501, 220, 'Vinnytsya', 'VI', 1),
(3502, 220, 'Volyn''', 'VO', 1),
(3503, 220, 'Zakarpattya', 'ZK', 1),
(3504, 220, 'Zaporizhzhya', 'ZA', 1),
(3505, 220, 'Zhytomyr', 'ZH', 1),
(3506, 221, 'Abu Zaby', 'AZ', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubayy', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3972, 222, 'Isle of Man', 'IOM', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4019, 243, 'Kosovo', 'KM', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
`zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(57, 222, 0, 3, '2010-02-26 22:33:24', '0000-00-00 00:00:00'),
(65, 222, 0, 4, '2010-12-15 15:18:13', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
 ADD PRIMARY KEY (`address_id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
 ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
 ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
 ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
 ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
 ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
 ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
 ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
 ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_banner_image_description`
--
ALTER TABLE `oc_banner_image_description`
 ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
 ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
 ADD PRIMARY KEY (`category_id`,`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
 ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
 ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
 ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
 ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
 ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
 ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
 ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
 ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
 ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
 ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
 ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_ban_ip`
--
ALTER TABLE `oc_customer_ban_ip`
 ADD PRIMARY KEY (`customer_ban_ip_id`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_field`
--
ALTER TABLE `oc_customer_field`
 ADD PRIMARY KEY (`customer_id`,`custom_field_id`,`custom_field_value_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
 ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
 ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
 ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
 ADD PRIMARY KEY (`customer_ip_id`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
 ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
 ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
 ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
 ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
 ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_to_customer_group`
--
ALTER TABLE `oc_custom_field_to_customer_group`
 ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
 ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
 ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
 ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
 ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
 ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
 ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
 ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
 ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
 ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
 ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
 ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
 ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
 ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
 ADD PRIMARY KEY (`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
 ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
 ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
 ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
 ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
 ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
 ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
 ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
 ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
 ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
 ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_download`
--
ALTER TABLE `oc_order_download`
 ADD PRIMARY KEY (`order_download_id`);

--
-- Indexes for table `oc_order_field`
--
ALTER TABLE `oc_order_field`
 ADD PRIMARY KEY (`order_id`,`custom_field_id`,`custom_field_value_id`);

--
-- Indexes for table `oc_order_fraud`
--
ALTER TABLE `oc_order_fraud`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
 ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
 ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
 ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
 ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
 ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
 ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
 ADD PRIMARY KEY (`order_total_id`), ADD KEY `idx_orders_total_orders_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
 ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
 ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
 ADD PRIMARY KEY (`product_id`,`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
 ADD PRIMARY KEY (`product_discount_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
 ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
 ADD PRIMARY KEY (`product_image_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
 ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
 ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_profile`
--
ALTER TABLE `oc_product_profile`
 ADD PRIMARY KEY (`product_id`,`profile_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
 ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
 ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
 ADD PRIMARY KEY (`product_special_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_tab`
--
ALTER TABLE `oc_product_tab`
 ADD PRIMARY KEY (`product_id`,`tab_id`,`language_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
 ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
 ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_profile`
--
ALTER TABLE `oc_profile`
 ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `oc_profile_description`
--
ALTER TABLE `oc_profile_description`
 ADD PRIMARY KEY (`profile_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
 ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
 ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
 ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
 ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
 ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
 ADD PRIMARY KEY (`review_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
 ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
 ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
 ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tab`
--
ALTER TABLE `oc_tab`
 ADD PRIMARY KEY (`tab_id`);

--
-- Indexes for table `oc_tab_description`
--
ALTER TABLE `oc_tab_description`
 ADD PRIMARY KEY (`tab_id`,`language_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
 ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
 ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
 ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
 ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
 ADD PRIMARY KEY (`url_alias_id`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
 ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
 ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
 ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
 ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
 ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
 ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
 ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
 ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
 ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=353;
--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_customer_ban_ip`
--
ALTER TABLE `oc_customer_ban_ip`
MODIFY `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=499;
--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oc_order_download`
--
ALTER TABLE `oc_order_download`
MODIFY `order_download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=371;
--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=489;
--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3036;
--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=772;
--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=519;
--
-- AUTO_INCREMENT for table `oc_profile`
--
ALTER TABLE `oc_profile`
MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5819;
--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_tab`
--
ALTER TABLE `oc_tab`
MODIFY `tab_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=798;
--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4033;
--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
