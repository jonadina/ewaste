-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2017 at 01:58 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-waste`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_pages`
--

CREATE TABLE `active_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `active_pages`
--

INSERT INTO `active_pages` (`id`, `name`, `enabled`) VALUES
(1, 'blog', 1),
(7, 'terms-and-condition', 0),
(8, 'bitcoin-payment', 1),
(9, 'be-a-shop-owner', 0);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `full_name`, `phone`, `location`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$08$TRVZEyy7QR47MQc8FnzPu.maS6Uc9635W.4oQpqO6SOSo/pWLBgkG', '', 'admin@admin.com', NULL, NULL, NULL, 'yqwi8wiJAOGu0FIobM7g8.', 1268889823, 1505271211, 1, 'Admin', '(+1) 96782345', '2009586492'),
(12, '::1', 'chuqs007@gmail.com', '$2y$08$TRVZEyy7QR47MQc8FnzPu.maS6Uc9635W.4oQpqO6SOSo/pWLBgkG', NULL, 'chuqs007@gmail.com', NULL, NULL, NULL, NULL, 1490006930, 1498413773, 1, 'chuqs', '07034323266', '2009123456'),
(14, '::1', 'chuqs007@yandex.com', '$2y$08$mxk3rwCnG.fFTdwZoR5xoeAqYOCKiZKXKl.tc0rNHM1GmKTrjRqQi', NULL, 'chuqs007@yandex.com', NULL, NULL, NULL, 'JlBntuh3k1QJZgIA5HVru.', 1490050605, 1490255734, 1, 'Jean', '07034323266', '2009123456');

-- --------------------------------------------------------

--
-- Table structure for table `valuestore`
--

CREATE TABLE `valuestore` (
  `id` int(10) UNSIGNED NOT NULL,
  `thekey` varchar(50) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `valuestore`
--

INSERT INTO `valuestore` (`id`, `thekey`, `value`) VALUES
(1, 'sitelogo', 'project_logo1.jpg'),
(2, 'navitext', 'MORE4LESS'),
(3, 'footercopyright', 'Copyright 2017 © Topchuqs Tech Solutions. All right reserved. '),
(4, 'contactspage', '<address><strong>Topchuqs Tech Solutions,</strong><br />\r\n111b Jakpa Road, Effurun<br />\r\nDelta State, Nigeria<br />\r\n<abbr title=\"Phone\">Phone:</abbr> (234) 811-680-9221</address>\r\n\r\n<address><strong>Email</strong><br />\r\n<a href=\"mailto:#\">topchuqs@gmai'),
(5, 'footerContactAddr', 'Effurun, Delta State, Nigeria'),
(6, 'footerContactEmail', ' topchuqs@gmail.com'),
(7, 'footerContactPhone', '234-811-680-9221'),
(8, 'googleMaps', '42.676850, 23.379063'),
(9, 'footerAboutUs', 'The emergency of crypto-currency has revolutionized the way we do business in the 21st century. in its beams, the strength of our great financial success depends on.'),
(10, 'footerSocialFacebook', 'http://facebook.com/topchuqsglobalconcepts'),
(11, 'footerSocialTwitter', 'http://twitter.com/topchuqs'),
(12, 'footerSocialGooglePlus', '3'),
(13, 'footerSocialPinterest', '4'),
(14, 'footerSocialYoutube', '5'),
(16, 'contactsEmailTo', 'chuqs007@hotmail.com'),
(17, 'shippingOrder', '150000'),
(18, 'addJs', ''),
(19, 'publicQuantity', '0'),
(20, 'paypal_email', 'kiro_tyson-facilitator@abv.bg'),
(21, 'paypal_sandbox', '0'),
(22, 'paypal_currency', 'NGN'),
(23, 'moreInfoBtn', '0'),
(24, 'template', 'redlabel'),
(25, 'cashondelivery_visibility', '1'),
(26, 'public_key', '10776AAAKJXjBitcoin77BTCPUBroMdMbd3zJyu1ejfUW3qvGS'),
(27, 'private_key', '10776AAAKJXjBitcoin77BTCPRVi1nnPs184KGvsFxoTI0tMsl'),
(28, 'bitcoin', '1'),
(29, 'outOfStock', '0'),
(30, 'showInSlider', '1'),
(31, 'newStyle', '.gradient-color {\r\n    background-color: #6194fd;\r\n    background-image: -webkit-gradient(linear, 0% 0%, 0% 100%,color-stop(0, rgba(0, 196, 245, 0.93)),color-stop(0.01, #5249ff),color-stop(1, #71dffb));\r\n    /* IE10+ */\r\n    background-image: repeating-li');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_pages`
--
ALTER TABLE `active_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `valuestore`
--
ALTER TABLE `valuestore`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`thekey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_pages`
--
ALTER TABLE `active_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `valuestore`
--
ALTER TABLE `valuestore`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
