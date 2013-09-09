-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 09, 2013 at 04:01 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `exp_pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_class`
--

CREATE TABLE IF NOT EXISTS `t_class` (
  `education_id` int(11) NOT NULL,
  `lb_class_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dt_created_time` datetime NOT NULL,
  `lb_description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_concentration`
--

CREATE TABLE IF NOT EXISTS `t_concentration` (
  `education_id` int(11) NOT NULL,
  `lb_concentration_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dt_created_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_country`
--

CREATE TABLE IF NOT EXISTS `t_country` (
  `id_phone_code` int(11) NOT NULL,
  `lb_country_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_phone_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_country`
--

INSERT INTO `t_country` (`id_phone_code`, `lb_country_name`) VALUES
(33, 'France'),
(39, 'Italy'),
(44, 'UK'),
(84, 'Viet Nam');

-- --------------------------------------------------------

--
-- Table structure for table `t_education`
--

CREATE TABLE IF NOT EXISTS `t_education` (
  `id_education` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `lb_school_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location_id` int(11) NOT NULL,
  `lb_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dt_start_date` date NOT NULL,
  `dt_end_date` date NOT NULL,
  `lb_degree` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_descripton` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_education`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_email`
--

CREATE TABLE IF NOT EXISTS `t_email` (
  `user_id` int(11) NOT NULL,
  `lb_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_email_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`lb_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_email`
--

INSERT INTO `t_email` (`user_id`, `lb_email`, `lb_email_type`) VALUES
(1, 'lecaotri.tdt@gmail.com', ''),
(1, 'snowfox0210@yahoo.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_language`
--

CREATE TABLE IF NOT EXISTS `t_language` (
  `id_language` int(11) NOT NULL AUTO_INCREMENT,
  `lb_language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `t_language`
--

INSERT INTO `t_language` (`id_language`, `lb_language`) VALUES
(1, 'Tiếng Việt'),
(2, 'English (UK)'),
(3, 'English (US)'),
(4, 'France');

-- --------------------------------------------------------

--
-- Table structure for table `t_location`
--

CREATE TABLE IF NOT EXISTS `t_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `lb_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nb_zip` int(11) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_login_with_email`
--

CREATE TABLE IF NOT EXISTS `t_login_with_email` (
  `user_id` int(11) NOT NULL,
  `lb_primary_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `lb_primary_email` (`lb_primary_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_login_with_email`
--

INSERT INTO `t_login_with_email` (`user_id`, `lb_primary_email`, `lb_password`) VALUES
(1, 'snowfox0210@yahoo.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `t_login_with_username`
--

CREATE TABLE IF NOT EXISTS `t_login_with_username` (
  `user_id` int(11) NOT NULL,
  `lb_user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `lb_user_name` (`lb_user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_login_with_username`
--

INSERT INTO `t_login_with_username` (`user_id`, `lb_user_name`, `lb_password`) VALUES
(1, 'snowfox0210', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `t_phone`
--

CREATE TABLE IF NOT EXISTS `t_phone` (
  `user_id` int(11) NOT NULL,
  `phone_code_id` int(11) NOT NULL,
  `lb_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_phone_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_phone`
--

INSERT INTO `t_phone` (`user_id`, `phone_code_id`, `lb_number`, `lb_phone_type`) VALUES
(1, 84, '1667573735', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_social_network`
--

CREATE TABLE IF NOT EXISTS `t_social_network` (
  `user_id` int(11) NOT NULL,
  `lb_contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_social_network_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `lb_first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_alternative_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_town_location_id` int(11) DEFAULT NULL,
  `lb_home_town_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_location_id` int(11) DEFAULT NULL,
  `lb_current_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nb_timezone` int(11) DEFAULT NULL,
  `lb_gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dt_birthday` date NOT NULL,
  `lb_religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lb_list_language` text COLLATE utf8_unicode_ci,
  `lb_job` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lb_website` text COLLATE utf8_unicode_ci,
  `lb_descripton` text COLLATE utf8_unicode_ci,
  `dt_updated_time` datetime DEFAULT NULL,
  `dt_created_time` datetime NOT NULL,
  `lb_relationship_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lb_profile_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nb_notes_count` int(11) DEFAULT NULL,
  `nb_friends_count` int(11) DEFAULT NULL,
  `lb_online_presence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id_user`, `lb_first_name`, `lb_middle_name`, `lb_last_name`, `lb_display_name`, `lb_alternative_name`, `home_town_location_id`, `lb_home_town_location`, `current_location_id`, `lb_current_location`, `nb_timezone`, `lb_gender`, `dt_birthday`, `lb_religion`, `lb_list_language`, `lb_job`, `lb_website`, `lb_descripton`, `dt_updated_time`, `dt_created_time`, `lb_relationship_status`, `lb_profile_url`, `nb_notes_count`, `nb_friends_count`, `lb_online_presence`) VALUES
(1, 'Trí', 'Cao', 'Lê', 'Lê Cao Trí', NULL, NULL, NULL, NULL, NULL, NULL, 'male', '1991-10-02', NULL, NULL, NULL, NULL, NULL, NULL, '2013-08-28 18:33:47', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_workplace`
--

CREATE TABLE IF NOT EXISTS `t_workplace` (
  `user_id` int(11) NOT NULL,
  `lb_workplace_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location_id` int(11) NOT NULL,
  `lb_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dt_start_date` date NOT NULL,
  `dt_end_date` date NOT NULL,
  `lb_description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
