/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : exp_pro

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2013-09-06 12:26:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_class`
-- ----------------------------
DROP TABLE IF EXISTS `t_class`;
CREATE TABLE `t_class` (
  `education_id` int(11) NOT NULL,
  `lb_class_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dt_created_time` datetime NOT NULL,
  `lb_description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_class
-- ----------------------------

-- ----------------------------
-- Table structure for `t_concentration`
-- ----------------------------
DROP TABLE IF EXISTS `t_concentration`;
CREATE TABLE `t_concentration` (
  `education_id` int(11) NOT NULL,
  `lb_concentration_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dt_created_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_concentration
-- ----------------------------

-- ----------------------------
-- Table structure for `t_country`
-- ----------------------------
DROP TABLE IF EXISTS `t_country`;
CREATE TABLE `t_country` (
  `id_phone_code` int(11) NOT NULL,
  `lb_country_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_phone_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_country
-- ----------------------------
INSERT INTO `t_country` VALUES ('33', 'France');
INSERT INTO `t_country` VALUES ('39', 'Italy');
INSERT INTO `t_country` VALUES ('44', 'UK');
INSERT INTO `t_country` VALUES ('84', 'Viet Nam');

-- ----------------------------
-- Table structure for `t_education`
-- ----------------------------
DROP TABLE IF EXISTS `t_education`;
CREATE TABLE `t_education` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_education
-- ----------------------------

-- ----------------------------
-- Table structure for `t_email`
-- ----------------------------
DROP TABLE IF EXISTS `t_email`;
CREATE TABLE `t_email` (
  `user_id` int(11) NOT NULL,
  `lb_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_email_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`lb_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_email
-- ----------------------------
INSERT INTO `t_email` VALUES ('1', 'lecaotri.tdt@gmail.com', '');
INSERT INTO `t_email` VALUES ('1', 'snowfox0210@yahoo.com', '');

-- ----------------------------
-- Table structure for `t_language`
-- ----------------------------
DROP TABLE IF EXISTS `t_language`;
CREATE TABLE `t_language` (
  `id_language` int(11) NOT NULL AUTO_INCREMENT,
  `lb_language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_language`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_language
-- ----------------------------
INSERT INTO `t_language` VALUES ('1', 'Tiếng Việt');
INSERT INTO `t_language` VALUES ('2', 'English (UK)');
INSERT INTO `t_language` VALUES ('3', 'English (US)');
INSERT INTO `t_language` VALUES ('4', 'France');

-- ----------------------------
-- Table structure for `t_location`
-- ----------------------------
DROP TABLE IF EXISTS `t_location`;
CREATE TABLE `t_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `lb_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nb_zip` int(11) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_location
-- ----------------------------

-- ----------------------------
-- Table structure for `t_login_with_email`
-- ----------------------------
DROP TABLE IF EXISTS `t_login_with_email`;
CREATE TABLE `t_login_with_email` (
  `user_id` int(11) NOT NULL,
  `lb_primary_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `lb_primary_email` (`lb_primary_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_login_with_email
-- ----------------------------
INSERT INTO `t_login_with_email` VALUES ('1', 'snowfox0210@yahoo.com', '202cb962ac59075b964b07152d234b70');

-- ----------------------------
-- Table structure for `t_login_with_username`
-- ----------------------------
DROP TABLE IF EXISTS `t_login_with_username`;
CREATE TABLE `t_login_with_username` (
  `user_id` int(11) NOT NULL,
  `lb_user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `lb_user_name` (`lb_user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_login_with_username
-- ----------------------------
INSERT INTO `t_login_with_username` VALUES ('1', 'snowfox0210', '202cb962ac59075b964b07152d234b70');

-- ----------------------------
-- Table structure for `t_phone`
-- ----------------------------
DROP TABLE IF EXISTS `t_phone`;
CREATE TABLE `t_phone` (
  `user_id` int(11) NOT NULL,
  `phone_code_id` int(11) NOT NULL,
  `lb_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_phone_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_phone
-- ----------------------------
INSERT INTO `t_phone` VALUES ('1', '84', '1667573735', '');

-- ----------------------------
-- Table structure for `t_social_network`
-- ----------------------------
DROP TABLE IF EXISTS `t_social_network`;
CREATE TABLE `t_social_network` (
  `user_id` int(11) NOT NULL,
  `lb_contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_social_network_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_social_network
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'Trí', 'Cao', 'Lê', 'Lê Cao Trí', null, null, null, null, null, null, 'male', '1991-10-02', null, null, null, null, null, null, '2013-08-28 18:33:47', null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_workplace`
-- ----------------------------
DROP TABLE IF EXISTS `t_workplace`;
CREATE TABLE `t_workplace` (
  `user_id` int(11) NOT NULL,
  `lb_workplace_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location_id` int(11) NOT NULL,
  `lb_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lb_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dt_start_date` date NOT NULL,
  `dt_end_date` date NOT NULL,
  `lb_description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_workplace
-- ----------------------------
