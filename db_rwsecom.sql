-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2022 at 12:59 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rwsecom`
--
CREATE DATABASE IF NOT EXISTS `db_rwsecom` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_rwsecom`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(121) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `tax_id` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `state` varchar(255) NOT NULL,
  `state_id` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `default` tinyint(1) NOT NULL COMMENT '0 or 1',
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(121) NOT NULL,
  `address_type` int(4) NOT NULL COMMENT '0:Home, 1:work,2:Friend',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `all_state`
--

DROP TABLE IF EXISTS `all_state`;
CREATE TABLE IF NOT EXISTS `all_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(222) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_state`
--

INSERT INTO `all_state` (`id`, `name`, `country_id`) VALUES
(0, 'All', 0),
(1, 'ANDHRA PRADESH', 105),
(2, 'ASSAM', 105),
(3, 'ARUNACHAL PRADESH', 105),
(4, 'BIHAR', 105),
(5, 'GUJRAT', 105),
(6, 'HARYANA', 105),
(7, 'HIMACHAL PRADESH', 105),
(8, 'JAMMU & KASHMIR', 105),
(9, 'KARNATAKA', 105),
(10, 'KERALA', 105),
(11, 'MADHYA PRADESH', 105),
(12, 'MAHARASHTRA', 105),
(13, 'MANIPUR', 105),
(14, 'MEGHALAYA', 105),
(15, 'MIZORAM', 105),
(16, 'NAGALAND', 105),
(17, 'ORISSA', 105),
(18, 'PUNJAB', 105),
(19, 'RAJASTHAN', 105),
(20, 'SIKKIM', 105),
(21, 'TAMIL NADU', 105),
(22, 'TRIPURA', 105),
(23, 'UTTAR PRADESH', 105),
(24, 'WEST BENGAL', 105),
(25, 'DELHI', 105),
(26, 'GOA', 105),
(27, 'PONDICHERY', 105),
(28, 'LAKSHDWEEP', 105),
(29, 'DAMAN & DIU', 105),
(30, 'DADRA & NAGAR', 105),
(31, 'CHANDIGARH', 105),
(32, 'ANDAMAN & NICOBAR', 105),
(33, 'UTTARANCHAL', 105),
(34, 'JHARKHAND', 105),
(35, 'CHATTISGARH', 105);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `link` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  `position` varchar(20) NOT NULL,
  `states` int(11) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  `seourl` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `metatitle` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(444) NOT NULL,
  `pro_size` varchar(121) NOT NULL,
  `pro_size_type` varchar(22) NOT NULL,
  `name` varchar(333) NOT NULL,
  `mrp` varchar(333) NOT NULL,
  `coupon` varchar(111) DEFAULT NULL,
  `quantity` varchar(33) NOT NULL DEFAULT '1',
  `coupon_amount` varchar(444) NOT NULL,
  `price` varchar(444) NOT NULL,
  `discount` varchar(121) NOT NULL,
  `shipping` varchar(111) NOT NULL,
  `sub_total` varchar(121) NOT NULL,
  `grand_total` varchar(123) NOT NULL,
  `date` varchar(100) NOT NULL,
  `user_id` varchar(333) NOT NULL,
  `status` varchar(333) NOT NULL DEFAULT 'new',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `menuimage` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `metatitle` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) DEFAULT NULL,
  `column` int(3) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime DEFAULT current_timestamp(),
  `date_modified` datetime DEFAULT current_timestamp(),
  `level` int(4) DEFAULT NULL,
  `seourl` varchar(100) NOT NULL,
  `onhome` tinyint(1) NOT NULL,
  `hide_in_menu` int(1) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `seoprefix_product` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `image`, `menuimage`, `banner_image`, `description`, `metatitle`, `meta_description`, `meta_keyword`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `level`, `seourl`, `onhome`, `hide_in_menu`, `subtitle`, `seoprefix_product`) VALUES
(1, 'Men', 'uploads/categories/no_image.jpg', 'uploads/categories/no_image.jpg', 'uploads/categories/test-1_banner_1670096895602.jpeg', '<p><span style=\"color:#ff0000\"><strong>Mens </strong></span>collection</p>\r\n', 'men', 'men', 'Men Gentalman', 0, NULL, NULL, 0, 1, '2022-12-04 01:18:15', '2022-12-05 01:23:51', NULL, 'men', 1, 1, 'men', '1'),
(2, 'Women', 'uploads/categories/no_image.jpg', 'uploads/categories/no_image.jpg', 'uploads/categories/test-1_banner_1670096895602.jpeg', '<p><span style=\"color:#0000cd\"><strong>Women </strong></span>Collection</p>\r\n', 'women', 'women collection', 'women lady ladies', 0, NULL, NULL, 0, 1, '2022-12-04 01:18:15', '2022-12-05 01:24:59', NULL, 'women', 1, 1, 'women', '1'),
(3, 'Kids', 'uploads/categories/no_image.jpg', 'uploads/categories/no_image.jpg', 'uploads/categories/no_image.jpg', '<p><span style=\"color:#ffd700\"><strong>Kids </strong></span>collection</p>\r\n', 'kids', 'kids collection', 'kids children', 0, NULL, NULL, 0, 1, '2022-12-05 01:26:26', '2022-12-05 01:26:26', NULL, 'kids', 0, 1, 'kids', '1'),
(4, 'self', 'uploads/categories/no_image.jpg', 'uploads/categories/no_image.jpg', 'uploads/categories/no_image.jpg', '<p>self</p>\r\n', '', '', '', 1, NULL, NULL, 0, 1, '2022-12-05 01:27:34', '2022-12-05 01:27:34', NULL, '', 1, 1, 'self', '1'),
(5, 'New in', 'uploads/categories/no_image.jpg', 'uploads/categories/no_image.jpg', 'uploads/categories/no_image.jpg', '<p>new in</p>\r\n', '', '', '', 1, NULL, NULL, 0, 1, '2022-12-05 01:28:00', '2022-12-05 01:28:00', NULL, '', 1, 1, 'new in', '1'),
(6, 'All Clothing', 'uploads/categories/no_image.jpg', 'uploads/categories/no_image.jpg', 'uploads/categories/no_image.jpg', '<p>all clothing</p>\r\n', '', '', '', 1, NULL, NULL, 0, 1, '2022-12-05 01:28:35', '2022-12-05 01:28:35', NULL, '', 1, 1, 'all clothing', '1'),
(7, 'all clothing', 'uploads/categories/no_image.jpg', 'uploads/categories/no_image.jpg', 'uploads/categories/no_image.jpg', '<p>all clothing</p>\r\n', '', '', '', 2, NULL, NULL, 0, 1, '2022-12-05 01:28:49', '2022-12-05 01:28:49', NULL, '', 1, 1, 'all clothing', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cat_custom_size`
--

DROP TABLE IF EXISTS `cat_custom_size`;
CREATE TABLE IF NOT EXISTS `cat_custom_size` (
  `cat_caption_id` int(11) NOT NULL AUTO_INCREMENT,
  `caption_name` varchar(50) NOT NULL,
  `sort_order` int(4) NOT NULL,
  `categories_id` int(11) NOT NULL,
  PRIMARY KEY (`cat_caption_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cat_ready_images`
--

DROP TABLE IF EXISTS `cat_ready_images`;
CREATE TABLE IF NOT EXISTS `cat_ready_images` (
  `cat_ready_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_file_name` varchar(80) NOT NULL,
  `sort_order` int(4) NOT NULL,
  `categories_id` int(11) NOT NULL,
  PRIMARY KEY (`cat_ready_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
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
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
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
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
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
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
CREATE TABLE IF NOT EXISTS `coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mobile` varchar(15) NOT NULL,
  `terms` int(2) NOT NULL,
  `dateofbirth` date NOT NULL,
  `state` varchar(212) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_account`
--

DROP TABLE IF EXISTS `customer_account`;
CREATE TABLE IF NOT EXISTS `customer_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cusid` int(11) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `type_of_account` int(2) NOT NULL,
  `ifsc_code` varchar(20) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `branch_name` varchar(150) NOT NULL,
  `orderid` int(11) NOT NULL,
  `date_of_add` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_ban_ip`
--

DROP TABLE IF EXISTS `customer_ban_ip`;
CREATE TABLE IF NOT EXISTS `customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

DROP TABLE IF EXISTS `customer_group`;
CREATE TABLE IF NOT EXISTS `customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_ip`
--

DROP TABLE IF EXISTS `customer_ip`;
CREATE TABLE IF NOT EXISTS `customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_wishlist`
--

DROP TABLE IF EXISTS `customer_wishlist`;
CREATE TABLE IF NOT EXISTS `customer_wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(333) NOT NULL,
  `product_id` varchar(333) NOT NULL,
  `size` varchar(33) NOT NULL,
  `size_type` varchar(55) NOT NULL,
  `date` varchar(121) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `option`
--

DROP TABLE IF EXISTS `option`;
CREATE TABLE IF NOT EXISTS `option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `option_description`
--

DROP TABLE IF EXISTS `option_description`;
CREATE TABLE IF NOT EXISTS `option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `option_value`
--

DROP TABLE IF EXISTS `option_value`;
CREATE TABLE IF NOT EXISTS `option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `option_value_description`
--

DROP TABLE IF EXISTS `option_value_description`;
CREATE TABLE IF NOT EXISTS `option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT 0,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` varchar(131) NOT NULL,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
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
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` int(2) NOT NULL DEFAULT 1,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `shipmobile` varchar(20) NOT NULL,
  `shiptelephone` varchar(20) NOT NULL,
  `shipfax` varchar(20) NOT NULL,
  `delivery` datetime NOT NULL,
  `deliverydate` varchar(255) NOT NULL,
  `deliverytime` varchar(255) NOT NULL,
  `shipping_charges` float NOT NULL,
  `delivery_vendor` int(11) NOT NULL,
  `delivery_vendor_boy_id` int(11) NOT NULL,
  `billmobile` varchar(20) NOT NULL,
  `txid` varchar(100) NOT NULL,
  `paymentstatus` int(1) NOT NULL,
  `txdetails` text NOT NULL,
  `carry_bag_charges` float NOT NULL,
  `tid` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `state_id` varchar(20) NOT NULL,
  `tracking_id` varchar(100) NOT NULL,
  `bank_ref_no` varchar(100) NOT NULL,
  `failure_message` tinytext NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `card_name` varchar(100) NOT NULL,
  `status_code` varchar(50) NOT NULL,
  `status_message` varchar(50) NOT NULL,
  `delivered_by` varchar(255) NOT NULL,
  `received_by` varchar(255) NOT NULL,
  `couponcode` varchar(30) NOT NULL,
  `discountamt` float NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `reasoncode` int(4) NOT NULL,
  `order_admin_comment` tinytext NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_option`
--

DROP TABLE IF EXISTS `order_option`;
CREATE TABLE IF NOT EXISTS `order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
CREATE TABLE IF NOT EXISTS `order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `reward` int(8) NOT NULL,
  `brandname` varchar(100) NOT NULL,
  `order_status_for_product_id` int(4) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
CREATE TABLE IF NOT EXISTS `order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`order_status_id`, `name`) VALUES
(1, 'Pending'),
(2, 'Accepted & Processing'),
(3, 'Packaged'),
(4, 'In Transit'),
(5, 'Delivered'),
(7, 'Failed'),
(8, 'Cancellation in Process'),
(9, 'Return in Process'),
(10, 'Return Accepted'),
(11, 'Cancellation Accepted'),
(12, 'Cancellation Resolved'),
(13, 'Return Resolved');

-- --------------------------------------------------------

--
-- Table structure for table `order_variant`
--

DROP TABLE IF EXISTS `order_variant`;
CREATE TABLE IF NOT EXISTS `order_variant` (
  `order_variant_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `product_variant_quantity` int(11) NOT NULL DEFAULT 0,
  `saleprice` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `variantsku` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `size` varchar(121) NOT NULL,
  `hsn_no` varchar(50) NOT NULL,
  `gst` float NOT NULL,
  `product_price` float NOT NULL,
  `cgst` float NOT NULL,
  `sgst` float NOT NULL,
  `igst` float NOT NULL,
  `product_variant_status` int(4) NOT NULL,
  PRIMARY KEY (`order_variant_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(250) NOT NULL,
  `page_title_content` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_titles` varchar(255) NOT NULL,
  `meta_descriptions` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `postcode`
--

DROP TABLE IF EXISTS `postcode`;
CREATE TABLE IF NOT EXISTS `postcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pincode` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `add_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `postcode_location`
--

DROP TABLE IF EXISTS `postcode_location`;
CREATE TABLE IF NOT EXISTS `postcode_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postcode` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `cod` tinyint(1) NOT NULL,
  `minimum_order` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `metatitle` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `seourl` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL,
  `date_available` date NOT NULL,
  `length` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `width` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `height` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `subtract` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT 0,
  `show_cart_button` varchar(1) NOT NULL DEFAULT 'Y',
  `total_sale` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `hot_offer` int(1) NOT NULL,
  `gift_item` int(1) NOT NULL,
  `different_item` int(1) NOT NULL,
  `today_item` int(1) NOT NULL,
  `free_item` int(1) NOT NULL,
  `video_url` tinytext NOT NULL,
  `brandid` varchar(255) NOT NULL,
  `gst` float NOT NULL,
  `hsn_no` varchar(50) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `small_title` varchar(100) NOT NULL,
  `product_attributes` text NOT NULL COMMENT 'add attributes data in key pair serialize format',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute`
--

DROP TABLE IF EXISTS `product_attribute`;
CREATE TABLE IF NOT EXISTS `product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

DROP TABLE IF EXISTS `product_color`;
CREATE TABLE IF NOT EXISTS `product_color` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `color` varchar(100) NOT NULL,
  `color_code` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `add_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
CREATE TABLE IF NOT EXISTS `product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_rating`
--

DROP TABLE IF EXISTS `product_rating`;
CREATE TABLE IF NOT EXISTS `product_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(333) NOT NULL,
  `oid` varchar(333) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `comment` varchar(333) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_related`
--

DROP TABLE IF EXISTS `product_related`;
CREATE TABLE IF NOT EXISTS `product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

DROP TABLE IF EXISTS `product_review`;
CREATE TABLE IF NOT EXISTS `product_review` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(20) NOT NULL,
  `headline` varchar(255) NOT NULL,
  `description` tinytext NOT NULL,
  `experience` varchar(100) NOT NULL,
  `images_2` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `ratefeatureid` int(10) NOT NULL,
  `rate_feature_option_id` int(10) NOT NULL,
  `tempid` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `like` int(11) NOT NULL,
  `dislike` int(11) NOT NULL,
  `user-id` int(11) NOT NULL,
  `adddate` datetime NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
CREATE TABLE IF NOT EXISTS `product_size` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `size` varchar(255) NOT NULL,
  `size_type` varchar(121) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `add_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_to_category`
--

DROP TABLE IF EXISTS `product_to_category`;
CREATE TABLE IF NOT EXISTS `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
CREATE TABLE IF NOT EXISTS `product_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `add_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

DROP TABLE IF EXISTS `product_variants`;
CREATE TABLE IF NOT EXISTS `product_variants` (
  `product_variant_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `variantsku` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `instock` tinyint(1) NOT NULL,
  `regularprice` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `saleprice` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `image` varchar(255) NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `datecreated` date NOT NULL,
  `sort_order` int(4) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `product_status` int(2) NOT NULL,
  `discount` float NOT NULL,
  `size` int(4) NOT NULL,
  PRIMARY KEY (`product_variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

DROP TABLE IF EXISTS `slide`;
CREATE TABLE IF NOT EXISTS `slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slide_id` varchar(223) NOT NULL,
  `link` varchar(444) NOT NULL,
  `image` varchar(333) NOT NULL,
  `chkshow` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_404`
--

DROP TABLE IF EXISTS `tbl_404`;
CREATE TABLE IF NOT EXISTS `tbl_404` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `adddate` datetime NOT NULL,
  `ip` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_config`
--

DROP TABLE IF EXISTS `tbl_config`;
CREATE TABLE IF NOT EXISTS `tbl_config` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `optionname` varchar(30) NOT NULL,
  `optionvalue` mediumtext NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newsletter`
--

DROP TABLE IF EXISTS `tbl_newsletter`;
CREATE TABLE IF NOT EXISTS `tbl_newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(2) NOT NULL,
  `add_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_newsletter`
--

INSERT INTO `tbl_newsletter` (`id`, `name`, `email`, `status`, `add_date`) VALUES
(3, '', 'wdrangnath@gmail.com', 1, '2017-11-11 06:35:34'),
(9, '', 'moritz.runge@gmx.de', 1, '2019-10-24 09:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonials`
--

DROP TABLE IF EXISTS `tbl_testimonials`;
CREATE TABLE IF NOT EXISTS `tbl_testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `testimonial` text NOT NULL,
  `userpic` varchar(255) NOT NULL,
  `video` tinytext NOT NULL,
  `status` int(2) NOT NULL,
  `add_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tracking`
--

DROP TABLE IF EXISTS `tbl_tracking`;
CREATE TABLE IF NOT EXISTS `tbl_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userip` varchar(100) NOT NULL,
  `phpsession` varchar(100) NOT NULL,
  `completeurl` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  `cartyis` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userip` (`userip`,`phpsession`,`completeurl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
CREATE TABLE IF NOT EXISTS `user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
CREATE TABLE IF NOT EXISTS `vendor` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `pincode` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `location` varchar(100) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `product` ADD FULLTEXT KEY `name_2` (`name`);
ALTER TABLE `product` ADD FULLTEXT KEY `name_3` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
