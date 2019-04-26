/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : clmis_module_consumption

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-04-25 15:34:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for email_verification
-- ----------------------------
DROP TABLE IF EXISTS `email_verification`;
CREATE TABLE `email_verification` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `is_verified` int(11) DEFAULT '0',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of email_verification
-- ----------------------------

-- ----------------------------
-- Table structure for funding_stk_prov
-- ----------------------------
DROP TABLE IF EXISTS `funding_stk_prov`;
CREATE TABLE `funding_stk_prov` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `stakeholder_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `funding_source_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT '1',
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of funding_stk_prov
-- ----------------------------
INSERT INTO `funding_stk_prov` VALUES ('1', '1', '1', '20646', '1', '2017-05-26 16:02:07', '1', '2017-05-26 16:02:07');
INSERT INTO `funding_stk_prov` VALUES ('2', '1', '2', '29663', '1', '2017-05-26 16:02:23', '1', '2017-05-26 16:19:56');
INSERT INTO `funding_stk_prov` VALUES ('3', '1', '3', '29665', '1', '2017-05-26 16:02:32', '1', '2017-05-26 16:02:32');
INSERT INTO `funding_stk_prov` VALUES ('4', '2', '1', '20645', '1', '2017-06-01 15:00:16', '1', '2017-06-01 15:04:01');
INSERT INTO `funding_stk_prov` VALUES ('5', '2', '2', '29663', '1', '2017-06-01 15:00:33', '1', '2018-01-17 13:17:27');
INSERT INTO `funding_stk_prov` VALUES ('6', '2', '3', '29666', '1', '2017-06-01 15:00:44', '1', '2017-06-01 15:04:03');
INSERT INTO `funding_stk_prov` VALUES ('7', '1', '4', '30982', '1', '2017-06-07 14:25:11', '1', '2017-06-07 14:25:11');
INSERT INTO `funding_stk_prov` VALUES ('21', '31', '1', '20645', '1', '2018-01-17 13:20:36', '1', '2018-01-17 13:24:30');
INSERT INTO `funding_stk_prov` VALUES ('22', '2', '4', '3895', '1', '2017-06-07 14:27:07', '1', '2018-01-17 14:01:37');
INSERT INTO `funding_stk_prov` VALUES ('10', '31', '3', '29666', '1', '2017-06-07 14:26:45', '1', '2018-01-17 13:25:24');
INSERT INTO `funding_stk_prov` VALUES ('11', '7', '4', '3895', '1', '2017-06-07 14:27:07', '1', '2018-01-17 14:01:37');
INSERT INTO `funding_stk_prov` VALUES ('12', '73', '3', '29666', '1', '2017-09-26 14:59:05', '1', '2017-09-26 16:26:36');
INSERT INTO `funding_stk_prov` VALUES ('13', '73', '2', '29663', '1', '2017-09-26 14:59:05', '1', '2018-01-17 13:17:55');
INSERT INTO `funding_stk_prov` VALUES ('14', '73', '1', '20645', '1', '2017-09-26 14:59:05', '1', '2017-09-26 16:26:41');
INSERT INTO `funding_stk_prov` VALUES ('15', '145', '1', '20645', '1', '2017-09-26 14:59:05', '1', '2017-09-26 16:26:41');
INSERT INTO `funding_stk_prov` VALUES ('16', '145', '2', '29663', '1', '2017-09-26 14:59:05', '1', '2018-01-17 13:17:59');
INSERT INTO `funding_stk_prov` VALUES ('17', '145', '3', '29666', '1', '2017-09-26 14:59:05', '1', '2017-09-26 16:26:42');
INSERT INTO `funding_stk_prov` VALUES ('18', '7', '1', '20645', '1', '2017-09-26 14:59:05', '1', '2017-09-26 16:26:43');
INSERT INTO `funding_stk_prov` VALUES ('19', '7', '2', '29663', '1', '2017-09-26 14:59:05', '1', '2018-01-17 13:18:08');
INSERT INTO `funding_stk_prov` VALUES ('20', '7', '3', '29666', '1', '2017-09-26 14:59:05', '1', '2017-09-26 16:26:43');
INSERT INTO `funding_stk_prov` VALUES ('23', '73', '4', '3895', '1', '2017-06-07 14:27:07', '1', '2018-01-17 14:01:37');
INSERT INTO `funding_stk_prov` VALUES ('25', '1', '2', '33752', '1', '2018-09-06 14:58:49', '1', '2018-09-06 14:58:49');
INSERT INTO `funding_stk_prov` VALUES ('26', '155', '2', '29663', '1', '2018-10-12 14:32:18', '1', '2018-10-12 14:32:18');
INSERT INTO `funding_stk_prov` VALUES ('27', '156', '2', '29663', '1', '2018-10-29 12:46:33', '1', '2018-10-29 12:46:33');
INSERT INTO `funding_stk_prov` VALUES ('28', '163', '2', '29663', '1', '2018-11-05 11:57:54', '1', '2018-11-05 11:57:54');
INSERT INTO `funding_stk_prov` VALUES ('29', '154', '2', '29663', '1', '2018-11-05 11:58:26', '1', '2018-11-05 11:58:26');
INSERT INTO `funding_stk_prov` VALUES ('30', '4', '2', '29663', '1', '2018-12-26 10:53:02', '1', '2018-12-26 10:53:02');
INSERT INTO `funding_stk_prov` VALUES ('31', '9', '2', '29663', '1', '2018-12-26 14:07:38', '1', '2018-12-26 14:07:38');
INSERT INTO `funding_stk_prov` VALUES ('32', '9', '2', '33752', '1', '2018-12-26 14:07:46', '1', '2018-12-26 14:07:46');
INSERT INTO `funding_stk_prov` VALUES ('33', '204', '2', '29663', '1', '2019-02-07 13:23:37', '1', '2019-02-07 13:23:38');
INSERT INTO `funding_stk_prov` VALUES ('34', '209', '2', '29663', '1', '2019-02-07 13:24:11', '1', '2019-02-07 13:24:11');
INSERT INTO `funding_stk_prov` VALUES ('35', '199', '2', '29663', '1', '2019-02-07 13:24:26', '1', '2019-02-07 13:24:28');
INSERT INTO `funding_stk_prov` VALUES ('36', '194', '2', '29663', '1', '2019-02-07 13:24:27', '1', '2019-02-07 13:24:30');
INSERT INTO `funding_stk_prov` VALUES ('37', '1', '1', '72525', '1', '2019-04-02 14:37:19', '1', '2019-04-02 16:12:35');
INSERT INTO `funding_stk_prov` VALUES ('38', '1', '3', '72526', '1', '2019-04-02 16:12:07', '1', '2019-04-02 16:12:42');
INSERT INTO `funding_stk_prov` VALUES ('39', '1', '4', '72527', '1', '2019-04-02 16:12:08', '1', '2019-04-02 16:12:42');
INSERT INTO `funding_stk_prov` VALUES ('40', '1', '2', '72529', '1', '2019-04-02 16:12:09', '1', '2019-04-02 16:12:43');
INSERT INTO `funding_stk_prov` VALUES ('41', '2', '1', '33680', '1', '2019-04-16 10:41:31', '1', '2019-04-16 10:41:38');
INSERT INTO `funding_stk_prov` VALUES ('42', '7', '1', '33680', '1', '2019-04-16 10:41:43', '1', '2019-04-16 10:41:43');
INSERT INTO `funding_stk_prov` VALUES ('43', '73', '1', '33680', '1', '2019-04-16 10:41:48', '1', '2019-04-16 10:41:48');

-- ----------------------------
-- Table structure for integrated_stakeholders
-- ----------------------------
DROP TABLE IF EXISTS `integrated_stakeholders`;
CREATE TABLE `integrated_stakeholders` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) DEFAULT NULL,
  `main_stk_id` int(11) DEFAULT NULL,
  `sub_stk_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of integrated_stakeholders
-- ----------------------------
INSERT INTO `integrated_stakeholders` VALUES ('35', '1', '145', '2', '2017-10-17 16:59:20', null, '2017-10-17 16:59:20', null);
INSERT INTO `integrated_stakeholders` VALUES ('75', '2', '1', '153', '2019-01-08 12:23:21', null, '2019-01-08 12:23:21', null);
INSERT INTO `integrated_stakeholders` VALUES ('74', '2', '1', '163', '2019-01-08 12:23:21', null, '2019-01-08 12:23:21', null);
INSERT INTO `integrated_stakeholders` VALUES ('34', '3', '73', '73', '2017-10-17 16:58:55', null, '2017-10-17 16:58:55', null);
INSERT INTO `integrated_stakeholders` VALUES ('73', '2', '1', '155', '2019-01-08 12:23:21', null, '2019-01-08 12:23:21', null);
INSERT INTO `integrated_stakeholders` VALUES ('72', '2', '1', '1', '2019-01-08 12:23:21', null, '2019-01-08 12:23:21', null);
INSERT INTO `integrated_stakeholders` VALUES ('71', '2', '1', '9', '2019-01-08 12:23:21', null, '2019-01-08 12:23:21', null);
INSERT INTO `integrated_stakeholders` VALUES ('33', '3', '73', '7', '2017-10-17 16:58:55', null, '2017-10-17 16:58:55', null);
INSERT INTO `integrated_stakeholders` VALUES ('32', '3', '73', '2', '2017-10-17 16:58:55', null, '2017-10-17 16:58:55', null);
INSERT INTO `integrated_stakeholders` VALUES ('21', '4', '145', '73', '2017-09-26 17:42:12', '1', '2017-09-26 16:24:55', '1');
INSERT INTO `integrated_stakeholders` VALUES ('22', '4', '145', '2', '2017-09-26 17:42:12', '1', '2017-09-26 16:24:55', '1');
INSERT INTO `integrated_stakeholders` VALUES ('23', '4', '145', '7', '2017-09-26 17:42:12', '1', '2017-09-26 16:24:55', '1');
INSERT INTO `integrated_stakeholders` VALUES ('36', '1', '145', '7', '2017-10-17 16:59:20', null, '2017-10-17 16:59:20', null);
INSERT INTO `integrated_stakeholders` VALUES ('37', '1', '145', '73', '2017-10-17 16:59:20', null, '2017-10-17 16:59:20', null);
INSERT INTO `integrated_stakeholders` VALUES ('38', '3', '152', '2', '2017-11-02 15:09:20', null, '2017-11-02 15:09:20', null);
INSERT INTO `integrated_stakeholders` VALUES ('39', '3', '152', '7', '2017-11-02 15:09:20', null, '2017-11-02 15:09:20', null);
INSERT INTO `integrated_stakeholders` VALUES ('40', '3', '152', '73', '2017-11-02 15:09:20', null, '2017-11-02 15:09:20', null);
INSERT INTO `integrated_stakeholders` VALUES ('70', '2', '1', '156', '2019-01-08 12:23:21', null, '2019-01-08 12:23:21', null);
INSERT INTO `integrated_stakeholders` VALUES ('69', '2', '1', '6', '2019-01-08 12:23:21', null, '2019-01-08 12:23:21', null);
INSERT INTO `integrated_stakeholders` VALUES ('68', '2', '1', '154', '2019-01-08 12:23:21', null, '2019-01-08 12:23:21', null);
INSERT INTO `integrated_stakeholders` VALUES ('67', '2', '1', '4', '2019-01-08 12:23:21', null, '2019-01-08 12:23:21', null);
INSERT INTO `integrated_stakeholders` VALUES ('66', '2', '1', '7', '2019-01-08 12:23:21', null, '2019-01-08 12:23:21', null);
INSERT INTO `integrated_stakeholders` VALUES ('65', '2', '1', '73', '2019-01-08 12:23:21', null, '2019-01-08 12:23:21', null);
INSERT INTO `integrated_stakeholders` VALUES ('64', '2', '1', '2', '2019-01-08 12:23:21', null, '2019-01-08 12:23:21', null);
INSERT INTO `integrated_stakeholders` VALUES ('76', '2', '1', '194', '2019-01-08 12:23:21', null, '2019-01-08 12:23:21', null);
INSERT INTO `integrated_stakeholders` VALUES ('77', '2', '1', '199', '2019-01-08 12:23:21', null, '2019-01-08 12:23:21', null);
INSERT INTO `integrated_stakeholders` VALUES ('78', '2', '1', '204', '2019-01-08 12:23:21', null, '2019-01-08 12:23:21', null);
INSERT INTO `integrated_stakeholders` VALUES ('79', '2', '1', '209', '2019-01-08 12:23:21', null, '2019-01-08 12:23:21', null);
INSERT INTO `integrated_stakeholders` VALUES ('80', '1', '1', '6', '2019-04-05 09:06:41', null, '2019-04-05 09:06:41', null);
INSERT INTO `integrated_stakeholders` VALUES ('81', '1', '1', '5', '2019-04-05 09:06:41', null, '2019-04-05 09:06:41', null);
INSERT INTO `integrated_stakeholders` VALUES ('82', '1', '1', '163', '2019-04-05 09:06:41', null, '2019-04-05 09:06:41', null);
INSERT INTO `integrated_stakeholders` VALUES ('83', '1', '1', '156', '2019-04-05 09:06:41', null, '2019-04-05 09:06:41', null);
INSERT INTO `integrated_stakeholders` VALUES ('84', '1', '1', '154', '2019-04-05 09:06:41', null, '2019-04-05 09:06:41', null);

-- ----------------------------
-- Table structure for itemgroups
-- ----------------------------
DROP TABLE IF EXISTS `itemgroups`;
CREATE TABLE `itemgroups` (
  `PKItemGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemGroupName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PKItemGroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of itemgroups
-- ----------------------------
INSERT INTO `itemgroups` VALUES ('1', 'Contraceptive');
INSERT INTO `itemgroups` VALUES ('2', 'Others');

-- ----------------------------
-- Table structure for itemsofgroups
-- ----------------------------
DROP TABLE IF EXISTS `itemsofgroups`;
CREATE TABLE `itemsofgroups` (
  `pkItemsofGroupsID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemID` int(11) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`pkItemsofGroupsID`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of itemsofgroups
-- ----------------------------
INSERT INTO `itemsofgroups` VALUES ('16', '4', '3');
INSERT INTO `itemsofgroups` VALUES ('19', '1', '1');
INSERT INTO `itemsofgroups` VALUES ('22', '4', '1');
INSERT INTO `itemsofgroups` VALUES ('23', '5', '1');
INSERT INTO `itemsofgroups` VALUES ('25', '7', '1');
INSERT INTO `itemsofgroups` VALUES ('27', '9', '1');
INSERT INTO `itemsofgroups` VALUES ('28', '10', '1');
INSERT INTO `itemsofgroups` VALUES ('29', '11', '1');
INSERT INTO `itemsofgroups` VALUES ('30', '34', '1');
INSERT INTO `itemsofgroups` VALUES ('31', '30', '1');
INSERT INTO `itemsofgroups` VALUES ('40', '35', '2');
INSERT INTO `itemsofgroups` VALUES ('65', '3', '1');
INSERT INTO `itemsofgroups` VALUES ('66', '13', '1');
INSERT INTO `itemsofgroups` VALUES ('67', '36', '2');
INSERT INTO `itemsofgroups` VALUES ('75', '72', '2');
INSERT INTO `itemsofgroups` VALUES ('77', '94', '2');
INSERT INTO `itemsofgroups` VALUES ('79', '93', '2');
INSERT INTO `itemsofgroups` VALUES ('80', '123', '2');
INSERT INTO `itemsofgroups` VALUES ('81', '95', '2');
INSERT INTO `itemsofgroups` VALUES ('83', '96', '2');
INSERT INTO `itemsofgroups` VALUES ('84', '124', '2');
INSERT INTO `itemsofgroups` VALUES ('85', '125', '2');
INSERT INTO `itemsofgroups` VALUES ('86', '97', '2');
INSERT INTO `itemsofgroups` VALUES ('88', '56', '2');
INSERT INTO `itemsofgroups` VALUES ('89', '71', '2');
INSERT INTO `itemsofgroups` VALUES ('90', '126', '2');
INSERT INTO `itemsofgroups` VALUES ('91', '91', '2');
INSERT INTO `itemsofgroups` VALUES ('92', '50', '2');
INSERT INTO `itemsofgroups` VALUES ('93', '55', '2');
INSERT INTO `itemsofgroups` VALUES ('94', '46', '2');
INSERT INTO `itemsofgroups` VALUES ('95', '114', '2');
INSERT INTO `itemsofgroups` VALUES ('96', '111', '2');
INSERT INTO `itemsofgroups` VALUES ('97', '58', '2');
INSERT INTO `itemsofgroups` VALUES ('98', '122', '2');
INSERT INTO `itemsofgroups` VALUES ('99', '121', '2');
INSERT INTO `itemsofgroups` VALUES ('100', '117', '2');
INSERT INTO `itemsofgroups` VALUES ('101', '45', '2');
INSERT INTO `itemsofgroups` VALUES ('102', '49', '2');
INSERT INTO `itemsofgroups` VALUES ('103', '54', '2');
INSERT INTO `itemsofgroups` VALUES ('104', '42', '2');
INSERT INTO `itemsofgroups` VALUES ('106', '37', '2');
INSERT INTO `itemsofgroups` VALUES ('107', '51', '2');
INSERT INTO `itemsofgroups` VALUES ('108', '59', '2');
INSERT INTO `itemsofgroups` VALUES ('109', '119', '2');
INSERT INTO `itemsofgroups` VALUES ('110', '85', '2');
INSERT INTO `itemsofgroups` VALUES ('111', '66', '2');
INSERT INTO `itemsofgroups` VALUES ('112', '52', '2');
INSERT INTO `itemsofgroups` VALUES ('113', '57', '2');
INSERT INTO `itemsofgroups` VALUES ('114', '120', '2');
INSERT INTO `itemsofgroups` VALUES ('115', '53', '2');
INSERT INTO `itemsofgroups` VALUES ('116', '73', '2');
INSERT INTO `itemsofgroups` VALUES ('117', '40', '2');
INSERT INTO `itemsofgroups` VALUES ('118', '6', '1');
INSERT INTO `itemsofgroups` VALUES ('119', '2', '1');
INSERT INTO `itemsofgroups` VALUES ('120', '8', '1');
INSERT INTO `itemsofgroups` VALUES ('121', '92', '2');
INSERT INTO `itemsofgroups` VALUES ('122', '267', '1');

-- ----------------------------
-- Table structure for item_price
-- ----------------------------
DROP TABLE IF EXISTS `item_price`;
CREATE TABLE `item_price` (
  `pk_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `stakeholder_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of item_price
-- ----------------------------
INSERT INTO `item_price` VALUES ('1', '2', '1', '1', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('2', '3', '1', '1', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('3', '14', '1', '1', '0.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('4', '13', '1', '1', '0.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('5', '11', '1', '1', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('6', '1', '1', '1', '0.50', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('7', '4', '1', '1', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('8', '5', '1', '1', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('9', '6', '1', '1', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('10', '7', '1', '1', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('11', '8', '1', '1', '0.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('12', '9', '1', '1', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('13', '10', '1', '1', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('14', '2', '1', '2', '3.00', '1', '2010-01-01', '2017-05-31');
INSERT INTO `item_price` VALUES ('15', '3', '1', '2', '3.00', '1', '2010-01-01', '2017-05-31');
INSERT INTO `item_price` VALUES ('16', '14', '1', '2', '0.00', '1', '2010-01-01', '2017-05-31');
INSERT INTO `item_price` VALUES ('17', '13', '1', '2', '0.00', '1', '2010-01-01', '2017-05-31');
INSERT INTO `item_price` VALUES ('18', '11', '1', '2', '3.00', '1', '2010-01-01', '2017-05-31');
INSERT INTO `item_price` VALUES ('19', '1', '1', '2', '0.50', '1', '2010-01-01', '2017-05-31');
INSERT INTO `item_price` VALUES ('20', '4', '1', '2', '3.00', '1', '2010-01-01', '2017-05-31');
INSERT INTO `item_price` VALUES ('21', '5', '1', '2', '3.00', '1', '2010-01-01', '2017-05-31');
INSERT INTO `item_price` VALUES ('22', '6', '1', '2', '3.00', '1', '2010-01-01', '2017-05-31');
INSERT INTO `item_price` VALUES ('23', '7', '1', '2', '3.00', '1', '2010-01-01', '2017-05-31');
INSERT INTO `item_price` VALUES ('24', '8', '1', '2', '0.00', '1', '2010-01-01', '2017-05-31');
INSERT INTO `item_price` VALUES ('25', '9', '1', '2', '3.00', '1', '2010-01-01', '2017-05-31');
INSERT INTO `item_price` VALUES ('26', '10', '1', '2', '3.00', '1', '2010-01-01', '2017-05-31');
INSERT INTO `item_price` VALUES ('27', '2', '1', '3', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('28', '3', '1', '3', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('29', '14', '1', '3', '0.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('30', '13', '1', '3', '0.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('31', '11', '1', '3', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('32', '1', '1', '3', '0.50', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('33', '4', '1', '3', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('34', '5', '1', '3', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('35', '6', '1', '3', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('36', '7', '1', '3', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('37', '8', '1', '3', '0.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('38', '9', '1', '3', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('39', '10', '1', '3', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('40', '2', '1', '4', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('41', '3', '1', '4', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('42', '14', '1', '4', '0.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('43', '13', '1', '4', '0.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('44', '11', '1', '4', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('45', '1', '1', '4', '0.50', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('46', '4', '1', '4', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('47', '5', '1', '4', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('48', '6', '1', '4', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('49', '7', '1', '4', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('50', '8', '1', '4', '0.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('51', '9', '1', '4', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('52', '10', '1', '4', '3.00', '1', '2010-01-01', null);
INSERT INTO `item_price` VALUES ('53', '1', '1', '2', '0.00', '1', '2017-06-01', null);
INSERT INTO `item_price` VALUES ('54', '2', '1', '2', '0.00', '1', '2017-06-01', null);
INSERT INTO `item_price` VALUES ('55', '3', '1', '2', '0.00', '1', '2017-06-01', null);
INSERT INTO `item_price` VALUES ('56', '4', '1', '2', '0.00', '1', '2017-06-01', null);
INSERT INTO `item_price` VALUES ('57', '5', '1', '2', '0.00', '1', '2017-06-01', null);
INSERT INTO `item_price` VALUES ('58', '6', '1', '2', '0.00', '1', '2017-06-01', null);
INSERT INTO `item_price` VALUES ('59', '7', '1', '2', '0.00', '1', '2017-06-01', null);
INSERT INTO `item_price` VALUES ('60', '8', '1', '2', '0.00', '1', '2017-06-01', null);
INSERT INTO `item_price` VALUES ('61', '9', '1', '2', '0.00', '1', '2017-06-01', null);
INSERT INTO `item_price` VALUES ('62', '10', '1', '2', '0.00', '1', '2017-06-01', null);
INSERT INTO `item_price` VALUES ('63', '11', '1', '2', '0.00', '1', '2017-06-01', null);
INSERT INTO `item_price` VALUES ('64', '13', '1', '2', '0.00', '1', '2017-06-01', null);
INSERT INTO `item_price` VALUES ('65', '14', '1', '2', '0.00', '1', '2017-06-01', null);

-- ----------------------------
-- Table structure for itminfo_tab
-- ----------------------------
DROP TABLE IF EXISTS `itminfo_tab`;
CREATE TABLE `itminfo_tab` (
  `itmrec_id` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `itm_id` int(10) NOT NULL AUTO_INCREMENT,
  `itm_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `generic_name` varchar(100) DEFAULT NULL,
  `method_type` varchar(100) DEFAULT NULL,
  `method_rank` int(11) DEFAULT NULL,
  `itm_type` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `qty_carton` int(11) NOT NULL DEFAULT '0' COMMENT 'quantity in one carton',
  `field_color` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `itm_des` text CHARACTER SET utf8,
  `itm_status` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `frmindex` int(11) NOT NULL DEFAULT '0' COMMENT 'not implemented in v1',
  `user_factor` decimal(10,5) DEFAULT NULL,
  `extra` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `itm_category` varchar(50) CHARACTER SET utf8 NOT NULL,
  `item_unit_id` int(11) DEFAULT NULL,
  `volume` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `mnch_id` int(11) DEFAULT NULL,
  `lhw_kp_id` int(11) DEFAULT NULL,
  `lhw_punjab_id` int(11) DEFAULT NULL,
  `mnch_kp_id` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dhis_stock_field` varchar(25) DEFAULT NULL,
  `drug_reg_num` varchar(255) DEFAULT NULL,
  UNIQUE KEY `itm_id` (`itm_id`),
  UNIQUE KEY `itmrec_id` (`itmrec_id`),
  KEY `frmindex` (`frmindex`) USING BTREE,
  KEY `itm_type` (`itm_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=latin1 COMMENT='contain information about product attributes';

-- ----------------------------
-- Records of itminfo_tab
-- ----------------------------
INSERT INTO `itminfo_tab` VALUES ('IT-001', '1', 'Condom', 'Condoms', 'Condoms', '1', 'PCs', '3000', '#FFFFFF', '', '1', '1', '0.01000', '0.00833333', '1', '1', null, '1', '17', '9', '1', '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-002', '2', 'POP', 'Exluton Tab', 'Oral Pills', '2', 'Cycles', '720', '#FFCCFF', 'test4', '1', '2', '0.07692', '0.06666667', '1', '7', null, '2', null, null, null, '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-003', '3', 'ECP', 'Postinor', 'Oral Pills', '2', 'Cycles', '300', '#FF99FF', '', '1', '4', '0.07692', '0.0500', '1', '7', null, '4', null, null, null, '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-004', '4', 'Multiload', 'Copper-T 375', 'IUD', '3', 'IUD', '500', '#CCFFFF', '', '1', '20', '1.00000', '3.3', '1', '3', null, '10', null, null, null, '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-005', '5', 'Copper-T-380A', 'Copper-T-380A', 'IUD', '3', 'IUD', '300', '#CCCCFF', 'test', '1', '5', '1.00000', '4.6', '1', '3', null, '5', null, null, '4', '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-006', '6', '2-Month Inj', 'Norigest', 'Injectables', '4', 'Vials', '1000', '#CC99FF', '', '1', '21', '0.20000', '0.166666', '1', '4', null, '11', null, null, null, '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-007', '7', '3-Month Inj', 'Megestron/DEPO/DMPA', 'Injectables', '4', 'Vials', '400', '#99FFFF', '', '1', '10', '0.20000', '0.25', '1', '4', null, '6', '19', '11', '3', '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-008', '8', 'Implanon', 'Implant', 'Implant', '5', 'PCs', '64', '#99CCFF', '', '1', '11', '1.00000', '2.5', '1', '1', null, '7', null, null, null, '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-009', '9', 'COC', 'Microgynon/lo-Feminal', 'Oral Pills', '2', 'Cycles', '720', '#9999FF', '', '1', '3', '0.07692', '0.06666667', '1', '7', null, '3', '18', '10', '2', '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-010', '10', '1-Month Inj', '1-Month Inj', null, null, 'Vials', '1', '#e4fde2', '', '1', '8', null, '0.07692308', '1', '4', null, null, null, null, null, '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-012', '11', 'Safe Load', 'Safe Load', null, null, 'IUD', '1', '#fdeae2', '', '1', '7', null, '3.3', '1', '3', null, null, null, null, null, '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-013', '13', 'Jadelle', 'Implant', 'Implant', '5', 'PCs', '100', '#e2e4fd', '', '1', '12', '1.00000', '3.8', '1', '1', null, '8', null, null, null, '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-014', '14', 'Femplant', 'Implant', 'Implant', '5', 'PCs', '100', '#fde2fa', '', '1', '13', '1.00000', '3.2', '1', '1', null, null, null, null, null, '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-031', '31', 'Male', 'CS(Cases)', 'Contraceptives Surgery', '6', 'Cases', '0', '#eaece', 'Male Surgeries', '1', '15', '1.00000', '13', '2', '8', null, null, null, null, null, '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-032', '32', 'Female', 'CS(Cases)', 'Contraceptives Surgery', '6', 'Cases', '0', '#e6b0aa', 'Female Surgeries', '1', '16', '1.00000', '13', '2', '8', null, null, null, null, null, '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-033', '33', 'Safe Delivery Kits', 'Safe Delivery Kits', null, null, null, '0', '#d6eaf8', null, '1', '17', null, null, '1', null, null, '9', null, null, '21', '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-034', '34', '3 Month Inj.- Sayana Press', '3 Month Inj.- Sayana Press', 'Injectables', '4', 'Vials', '0', '#fdf2e9', '3 Month Inj.- Sayana Press', '1', '18', null, null, '1', '4', null, null, null, null, null, '2018-04-11 10:35:25', null, null);
INSERT INTO `itminfo_tab` VALUES ('IT-081', '81', 'Implanon NXT', 'Implant', 'Implant', '5', 'PCs', '60', '#99CCFF', '', '1', '11', '1.00000', '2.5', '1', '1', null, null, null, null, null, '2018-09-06 12:30:13', null, null);

-- ----------------------------
-- Table structure for list_detail
-- ----------------------------
DROP TABLE IF EXISTS `list_detail`;
CREATE TABLE `list_detail` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `list_value` varchar(100) DEFAULT NULL,
  `description` text,
  `rank` int(11) DEFAULT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `list_master_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`),
  KEY `list_detail_list_master_id_list_master_fk1` (`list_master_id`) USING BTREE,
  KEY `list_detail_created_by_users_fk2` (`created_by`) USING BTREE,
  KEY `list_detail_modified_by_users_fk3` (`modified_by`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of list_detail
-- ----------------------------
INSERT INTO `list_detail` VALUES ('61', 'A', null, null, null, null, '14', '1', '2014-05-22 16:15:42', '1', null);
INSERT INTO `list_detail` VALUES ('62', 'B', null, null, null, null, '14', '1', '2014-05-22 16:16:09', '1', null);
INSERT INTO `list_detail` VALUES ('63', 'C', null, null, null, '0', '14', '1', '2014-05-22 16:19:13', '1', null);
INSERT INTO `list_detail` VALUES ('64', 'D', null, null, null, '0', '14', '1', '2014-05-22 16:19:22', '1', '2015-02-13 12:08:04');
INSERT INTO `list_detail` VALUES ('65', 'E', null, null, null, '0', '9999', '1', '2014-05-22 16:19:30', '1', '2015-02-13 11:18:53');
INSERT INTO `list_detail` VALUES ('66', 'F', null, null, null, '0', '9999', '1', '2014-05-22 16:19:39', '1', '2015-02-13 11:18:55');
INSERT INTO `list_detail` VALUES ('67', '01', null, null, null, '0', '15', '1', '2014-05-22 16:20:11', '1', null);
INSERT INTO `list_detail` VALUES ('68', '02', null, null, null, '0', '15', '1', '2014-05-22 16:20:23', '1', null);
INSERT INTO `list_detail` VALUES ('69', '03', null, null, null, '0', '15', '1', '2014-05-22 16:20:33', '1', null);
INSERT INTO `list_detail` VALUES ('70', '04', null, null, null, '0', '15', '1', '2014-05-22 16:20:41', '1', null);
INSERT INTO `list_detail` VALUES ('71', '05', null, null, null, '0', '15', '1', '2014-05-22 16:20:49', '1', null);
INSERT INTO `list_detail` VALUES ('72', '01', null, null, null, '0', '16', '1', '2014-05-22 16:21:01', '1', null);
INSERT INTO `list_detail` VALUES ('73', '02', null, null, null, '0', '16', '1', '2014-05-22 16:21:07', '1', null);
INSERT INTO `list_detail` VALUES ('74', '03', null, null, null, '0', '16', '1', '2014-05-22 16:21:14', '1', null);
INSERT INTO `list_detail` VALUES ('75', '04', null, null, null, '0', '16', '1', '2014-05-22 16:21:21', '1', null);
INSERT INTO `list_detail` VALUES ('76', '05', null, null, null, '0', '16', '1', '2014-05-22 16:21:30', '1', null);
INSERT INTO `list_detail` VALUES ('79', '1', null, null, null, '0', '18', '1', '2014-05-27 09:40:49', '1', '2016-02-01 09:52:01');
INSERT INTO `list_detail` VALUES ('80', '2', null, null, null, '0', '18', '1', '2014-05-27 09:40:52', '1', '2016-02-01 09:52:02');
INSERT INTO `list_detail` VALUES ('81', '3', null, null, null, '0', '18', '1', '2014-05-27 09:40:55', '1', '2016-02-01 09:52:03');
INSERT INTO `list_detail` VALUES ('82', '4', null, null, null, '0', '18', '1', '2014-05-27 09:40:58', '1', '2016-02-01 09:52:04');
INSERT INTO `list_detail` VALUES ('83', '5', null, null, null, '0', '18', '1', '2014-05-27 09:41:01', '1', '2016-02-01 09:52:06');
INSERT INTO `list_detail` VALUES ('84', '1', null, null, null, '0', '19', '1', '2014-05-27 09:41:05', '1', '2016-02-01 09:52:08');
INSERT INTO `list_detail` VALUES ('85', '2', null, null, null, '0', '19', '1', '2014-05-27 09:41:08', '1', '2016-02-01 09:52:09');
INSERT INTO `list_detail` VALUES ('86', '3', null, null, null, '0', '19', '1', '2014-05-27 09:41:11', '1', '2016-02-01 09:52:09');
INSERT INTO `list_detail` VALUES ('87', '4', null, null, null, '0', '19', '1', '2014-05-27 09:41:16', '1', '2016-02-01 09:52:10');
INSERT INTO `list_detail` VALUES ('88', '5', null, null, null, '0', '19', '1', '2014-05-27 09:41:19', '1', '2016-02-01 09:52:11');
INSERT INTO `list_detail` VALUES ('89', 'Place', '', null, null, null, '20', '1', '0000-00-00 00:00:00', '1', '2014-07-16 13:05:57');
INSERT INTO `list_detail` VALUES ('90', 'Transfer', '', null, null, null, '20', '1', '0000-00-00 00:00:00', '1', '2014-07-16 13:05:58');
INSERT INTO `list_detail` VALUES ('91', 'Pick', '', null, null, null, '20', '1', '0000-00-00 00:00:00', '1', '2014-07-16 13:05:58');
INSERT INTO `list_detail` VALUES ('92', '06', '', null, null, '0', '15', '1', '2014-05-22 16:20:49', '1', '0000-00-00 00:00:00');
INSERT INTO `list_detail` VALUES ('93', '07', '', null, null, '0', '15', '1', '2014-05-22 16:20:49', '1', '0000-00-00 00:00:00');
INSERT INTO `list_detail` VALUES ('94', '06', '', null, null, null, '16', '0', '2015-01-22 12:24:24', null, '2015-01-22 12:24:28');
INSERT INTO `list_detail` VALUES ('95', '07', '', null, null, null, '16', '0', '2015-01-22 12:24:41', null, '2015-01-22 12:24:44');
INSERT INTO `list_detail` VALUES ('96', '08', '', null, null, null, '16', '0', '2015-01-22 12:24:41', null, '2015-01-22 12:24:44');
INSERT INTO `list_detail` VALUES ('97', '09', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:37:11');
INSERT INTO `list_detail` VALUES ('98', '10', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:37:10');
INSERT INTO `list_detail` VALUES ('99', '11', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:37:08');
INSERT INTO `list_detail` VALUES ('100', '12', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:37:08');
INSERT INTO `list_detail` VALUES ('101', '13', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:37:07');
INSERT INTO `list_detail` VALUES ('102', '14', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:37:06');
INSERT INTO `list_detail` VALUES ('103', '15', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:37:05');
INSERT INTO `list_detail` VALUES ('104', '16', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:37:01');
INSERT INTO `list_detail` VALUES ('105', '17', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:36:59');
INSERT INTO `list_detail` VALUES ('106', '18', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:38:37');
INSERT INTO `list_detail` VALUES ('107', '19', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:36:57');
INSERT INTO `list_detail` VALUES ('108', '20', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:36:54');
INSERT INTO `list_detail` VALUES ('109', '21', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:36:55');
INSERT INTO `list_detail` VALUES ('110', '22', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:36:52');
INSERT INTO `list_detail` VALUES ('111', '23', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:36:51');
INSERT INTO `list_detail` VALUES ('112', '24', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:36:50');
INSERT INTO `list_detail` VALUES ('113', '25', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:36:49');
INSERT INTO `list_detail` VALUES ('114', '26', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:36:49');
INSERT INTO `list_detail` VALUES ('115', '27', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:36:48');
INSERT INTO `list_detail` VALUES ('116', '28', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:36:41');
INSERT INTO `list_detail` VALUES ('117', '29', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:36:39');
INSERT INTO `list_detail` VALUES ('118', '30', '', null, null, null, '16', '0', '0000-00-00 00:00:00', null, '2015-01-22 12:36:37');
INSERT INTO `list_detail` VALUES ('119', 'Self', null, null, null, null, '21', '0', '0000-00-00 00:00:00', null, '2015-02-17 12:00:43');
INSERT INTO `list_detail` VALUES ('120', 'UPS', 'UPS', '0', null, null, '21', '0', '0000-00-00 00:00:00', null, '2017-09-26 16:49:06');
INSERT INTO `list_detail` VALUES ('121', 'Bulity', null, null, null, null, '21', '0', '0000-00-00 00:00:00', null, '2015-02-17 12:01:10');
INSERT INTO `list_detail` VALUES ('122', 'Courier', null, null, null, null, '21', '0', '0000-00-00 00:00:00', null, '2015-02-17 12:01:04');
INSERT INTO `list_detail` VALUES ('123', 'PK Goods', null, null, null, null, '21', '0', '0000-00-00 00:00:00', null, '2016-02-01 09:38:50');
INSERT INTO `list_detail` VALUES ('124', 'PGTL', '', null, null, null, '21', '0', '0000-00-00 00:00:00', null, '2016-02-01 09:38:50');
INSERT INTO `list_detail` VALUES ('125', 'Karachi Hazara', null, null, null, null, '21', '1', '2017-05-18 13:04:02', null, '2017-05-18 12:57:23');
INSERT INTO `list_detail` VALUES ('126', 'Al Faisal Goods', '', null, null, null, '21', '1', '2017-05-18 13:04:02', null, '2017-05-18 12:57:23');
INSERT INTO `list_detail` VALUES ('127', 'Century Developer', null, null, null, null, '21', '1', '2017-08-25 11:48:12', null, '2017-08-25 12:13:46');
INSERT INTO `list_detail` VALUES ('128', 'Zubair Hazara', null, null, null, null, '21', '1', '2017-09-26 11:48:12', '1', '2017-09-26 12:13:46');
INSERT INTO `list_detail` VALUES ('129', 'Stocked Out at District Store', 'Stocked Out at District Store', '2', null, null, '22', '0', '2018-02-12 16:26:41', null, '2018-02-27 11:31:42');
INSERT INTO `list_detail` VALUES ('130', 'This product is not consumed at this Facility', 'This product is not consumed at this Facility', '1', null, null, '22', '0', '2018-02-12 16:27:04', null, '2018-02-27 11:31:34');
INSERT INTO `list_detail` VALUES ('131', 'Take loan from another facility', 'Take loan from another facility', '1', null, null, '23', '0', '2018-02-12 16:27:24', null, '2018-02-12 16:27:24');
INSERT INTO `list_detail` VALUES ('132', 'Contact District Store Immediately', 'Contact District Store Immediately', '2', null, null, '23', '0', '2018-02-12 16:27:40', null, '2018-02-12 16:27:40');
INSERT INTO `list_detail` VALUES ('133', 'Stock received not in sufficient quantity', 'Stock received not in sufficient quantity', '3', null, null, '22', '0', '2018-02-12 16:29:31', null, '2018-02-12 16:29:31');
INSERT INTO `list_detail` VALUES ('134', 'District storage/inventory management issues', 'District storage/inventory management issues', '4', null, null, '22', '0', '2018-02-12 16:29:39', null, '2018-02-12 16:29:39');
INSERT INTO `list_detail` VALUES ('135', 'Delays in shipment/distribution', 'Delays in shipment/distribution', '5', null, null, '22', '0', '2018-02-12 16:29:46', null, '2018-02-12 16:29:46');
INSERT INTO `list_detail` VALUES ('136', 'Delayed international procurement', 'Delayed international procurement', '6', null, null, '22', '0', '2018-02-12 16:29:55', null, '2018-02-12 16:29:55');
INSERT INTO `list_detail` VALUES ('137', 'Prolonged inspection processes at CWH', 'Prolonged inspection processes at CWH', '7', null, null, '22', '0', '2018-02-12 16:30:03', null, '2018-02-27 11:30:20');
INSERT INTO `list_detail` VALUES ('138', 'Requisition in process', 'Requisition in process', '8', null, null, '22', '0', '2018-02-12 16:30:10', null, '2018-02-12 16:30:10');
INSERT INTO `list_detail` VALUES ('139', 'LMIS software issues', 'LMIS software issues', '9', null, null, '22', '0', '2018-02-12 16:30:18', null, '2018-02-12 16:30:18');
INSERT INTO `list_detail` VALUES ('140', 'Lack of LMIS training', 'Lack of LMIS training', '11', null, null, '22', '0', '2018-02-12 16:30:28', null, '2018-02-12 16:30:28');
INSERT INTO `list_detail` VALUES ('141', 'Lead time issues of deliveries from CWH', 'Lead time issues of deliveries from CWH', '12', null, null, '22', '0', '2018-02-27 10:08:51', null, '2018-02-27 11:30:34');
INSERT INTO `list_detail` VALUES ('142', 'CLR-6 training issues', 'CLR-6 training issues', '13', null, null, '22', '0', '2018-02-27 10:09:55', null, '2018-02-27 10:09:55');
INSERT INTO `list_detail` VALUES ('143', 'Incorrect POC details in system', 'Incorrect POC details in system', '14', null, null, '22', '0', '2018-02-27 10:10:08', null, '2018-02-27 10:10:08');
INSERT INTO `list_detail` VALUES ('144', 'Contact number not responding', 'Contact number not responding', '15', null, null, '22', '0', '2018-02-27 10:10:25', null, '2018-02-27 10:10:25');
INSERT INTO `list_detail` VALUES ('145', 'Inactive Facility', 'Inactive Facility', '16', null, null, '22', '0', '2018-02-27 10:10:38', null, '2018-02-27 10:10:38');
INSERT INTO `list_detail` VALUES ('146', 'Accessibility to health facility issue', 'Accessibility to health facility issue', '17', null, null, '22', '0', '2018-02-27 10:10:54', null, '2018-02-27 10:10:54');
INSERT INTO `list_detail` VALUES ('147', 'Notification not generated', 'Notification not generated', '17', null, null, '22', '0', '2018-03-01 15:27:53', null, '2018-03-01 15:27:53');
INSERT INTO `list_detail` VALUES ('148', 'Irrelevant POC in the system/POC Knowledge Issues', 'Irrelevant POC in the system/POC Knowledge Issues', '18', null, null, '22', '0', '2018-03-01 15:51:30', null, '2018-03-01 15:51:30');
INSERT INTO `list_detail` VALUES ('153', 'Stocked Out at District Store', 'Stocked Out at District Store', '2', null, null, '25', '0', '2018-02-12 16:26:41', null, '2018-02-27 11:31:42');
INSERT INTO `list_detail` VALUES ('154', 'This product is not consumed at this Facility', 'This product is not consumed at this Facility', '1', null, null, '25', '0', '2018-02-12 16:27:04', null, '2018-02-27 11:31:34');
INSERT INTO `list_detail` VALUES ('155', 'Stock received not in sufficient quantity', 'Stock received not in sufficient quantity', '3', null, null, '25', '0', '2018-02-12 16:29:31', null, '2018-02-12 16:29:31');
INSERT INTO `list_detail` VALUES ('156', 'District storage/inventory management issues', 'District storage/inventory management issues', '4', null, null, '25', '0', '2018-02-12 16:29:39', null, '2018-02-12 16:29:39');
INSERT INTO `list_detail` VALUES ('157', 'Delays in shipment/distribution', 'Delays in shipment/distribution', '5', null, null, '25', '0', '2018-02-12 16:29:46', null, '2018-02-12 16:29:46');
INSERT INTO `list_detail` VALUES ('158', 'Delayed international procurement', 'Delayed international procurement', '6', null, null, '25', '0', '2018-02-12 16:29:55', null, '2018-02-12 16:29:55');
INSERT INTO `list_detail` VALUES ('159', 'Prolonged inspection processes at CWH', 'Prolonged inspection processes at CWH', '7', null, null, '25', '0', '2018-02-12 16:30:03', null, '2018-02-27 11:30:20');
INSERT INTO `list_detail` VALUES ('160', 'Requisition in process', 'Requisition in process', '8', null, null, '25', '0', '2018-02-12 16:30:10', null, '2018-02-12 16:30:10');
INSERT INTO `list_detail` VALUES ('161', 'LMIS software issues', 'LMIS software issues', '9', null, null, '25', '0', '2018-02-12 16:30:18', null, '2018-02-12 16:30:18');
INSERT INTO `list_detail` VALUES ('162', 'Lack of LMIS training', 'Lack of LMIS training', '11', null, null, '25', '0', '2018-02-12 16:30:28', null, '2018-02-12 16:30:28');
INSERT INTO `list_detail` VALUES ('163', 'Lead time issues of deliveries from CWH', 'Lead time issues of deliveries from CWH', '12', null, null, '25', '0', '2018-02-27 10:08:51', null, '2018-02-27 11:30:34');
INSERT INTO `list_detail` VALUES ('164', 'CLR-6 training issues', 'CLR-6 training issues', '13', null, null, '25', '0', '2018-02-27 10:09:55', null, '2018-02-27 10:09:55');
INSERT INTO `list_detail` VALUES ('165', 'Incorrect POC details in system', 'Incorrect POC details in system', '14', null, null, '25', '0', '2018-02-27 10:10:08', null, '2018-02-27 10:10:08');
INSERT INTO `list_detail` VALUES ('166', 'Contact number not responding', 'Contact number not responding', '15', null, null, '25', '0', '2018-02-27 10:10:25', null, '2018-02-27 10:10:25');
INSERT INTO `list_detail` VALUES ('167', 'Inactive Facility', 'Inactive Facility', '16', null, null, '25', '0', '2018-02-27 10:10:38', null, '2018-02-27 10:10:38');
INSERT INTO `list_detail` VALUES ('168', 'Accessibility to health facility issue', 'Accessibility to health facility issue', '17', null, null, '25', '0', '2018-02-27 10:10:54', null, '2018-02-27 10:10:54');
INSERT INTO `list_detail` VALUES ('169', 'Notification not generated', 'Notification not generated', '17', null, null, '25', '0', '2018-03-01 15:27:53', null, '2018-03-01 15:27:53');
INSERT INTO `list_detail` VALUES ('170', 'Irrelevant POC in the system/POC Knowledge Issues', 'Irrelevant POC in the system/POC Knowledge Issues', '18', null, null, '25', '0', '2018-03-01 15:51:30', null, '2018-03-01 15:51:30');
INSERT INTO `list_detail` VALUES ('171', 'Take loan from another facility', 'Take loan from another facility', '1', null, null, '26', '0', '2018-02-12 16:27:24', null, '2018-02-12 16:27:24');
INSERT INTO `list_detail` VALUES ('172', 'Contact District Store Immediately', 'Contact District Store Immediately', '2', null, null, '26', '0', '2018-02-12 16:27:40', null, '2018-02-12 16:27:40');
INSERT INTO `list_detail` VALUES ('173', 'Stocked Out at District Store', 'Stocked Out at District Store', '2', null, null, '27', '0', '2018-02-12 16:26:41', null, '2018-02-27 11:31:42');
INSERT INTO `list_detail` VALUES ('174', 'This product is not consumed at this Facility', 'This product is not consumed at this Facility', '1', null, null, '27', '0', '2018-02-12 16:27:04', null, '2018-02-27 11:31:34');
INSERT INTO `list_detail` VALUES ('175', 'Take loan from another facility', 'Take loan from another facility', '1', null, null, '28', '0', '2018-02-12 16:27:24', null, '2018-02-12 16:27:24');
INSERT INTO `list_detail` VALUES ('176', 'Contact District Store Immediately', 'Contact District Store Immediately', '2', null, null, '28', '0', '2018-02-12 16:27:40', null, '2018-02-12 16:27:40');
INSERT INTO `list_detail` VALUES ('177', 'Stock received not in sufficient quantity', 'Stock received not in sufficient quantity', '3', null, null, '27', '0', '2018-02-12 16:29:31', null, '2018-02-12 16:29:31');
INSERT INTO `list_detail` VALUES ('178', 'District storage/inventory management issues', 'District storage/inventory management issues', '4', null, null, '27', '0', '2018-02-12 16:29:39', null, '2018-02-12 16:29:39');
INSERT INTO `list_detail` VALUES ('179', 'Delays in shipment/distribution', 'Delays in shipment/distribution', '5', null, null, '27', '0', '2018-02-12 16:29:46', null, '2018-02-12 16:29:46');
INSERT INTO `list_detail` VALUES ('180', 'Delayed international procurement', 'Delayed international procurement', '6', null, null, '27', '0', '2018-02-12 16:29:55', null, '2018-02-12 16:29:55');
INSERT INTO `list_detail` VALUES ('181', 'Prolonged inspection processes at CWH', 'Prolonged inspection processes at CWH', '7', null, null, '27', '0', '2018-02-12 16:30:03', null, '2018-02-27 11:30:20');
INSERT INTO `list_detail` VALUES ('182', 'Requisition in process', 'Requisition in process', '8', null, null, '27', '0', '2018-02-12 16:30:10', null, '2018-02-12 16:30:10');
INSERT INTO `list_detail` VALUES ('183', 'LMIS software issues', 'LMIS software issues', '9', null, null, '27', '0', '2018-02-12 16:30:18', null, '2018-02-12 16:30:18');
INSERT INTO `list_detail` VALUES ('184', 'Lack of LMIS training', 'Lack of LMIS training', '11', null, null, '27', '0', '2018-02-12 16:30:28', null, '2018-02-12 16:30:28');
INSERT INTO `list_detail` VALUES ('185', 'Lead time issues of deliveries from CWH', 'Lead time issues of deliveries from CWH', '12', null, null, '27', '0', '2018-02-27 10:08:51', null, '2018-02-27 11:30:34');
INSERT INTO `list_detail` VALUES ('186', 'CLR-6 training issues', 'CLR-6 training issues', '13', null, null, '27', '0', '2018-02-27 10:09:55', null, '2018-02-27 10:09:55');
INSERT INTO `list_detail` VALUES ('187', 'Incorrect POC details in system', 'Incorrect POC details in system', '14', null, null, '27', '0', '2018-02-27 10:10:08', null, '2018-02-27 10:10:08');
INSERT INTO `list_detail` VALUES ('188', 'Contact number not responding', 'Contact number not responding', '15', null, null, '27', '0', '2018-02-27 10:10:25', null, '2018-02-27 10:10:25');
INSERT INTO `list_detail` VALUES ('189', 'Inactive Facility', 'Inactive Facility', '16', null, null, '27', '0', '2018-02-27 10:10:38', null, '2018-02-27 10:10:38');
INSERT INTO `list_detail` VALUES ('190', 'Accessibility to health facility issue', 'Accessibility to health facility issue', '17', null, null, '27', '0', '2018-02-27 10:10:54', null, '2018-02-27 10:10:54');
INSERT INTO `list_detail` VALUES ('191', 'Notification not generated', 'Notification not generated', '17', null, null, '27', '0', '2018-03-01 15:27:53', null, '2018-03-01 15:27:53');
INSERT INTO `list_detail` VALUES ('192', 'Irrelevant POC in the system/POC Knowledge Issues', 'Irrelevant POC in the system/POC Knowledge Issues', '18', null, null, '27', '0', '2018-03-01 15:51:30', null, '2018-03-01 15:51:30');
INSERT INTO `list_detail` VALUES ('193', 'Data entry issues', 'Data entry issues', '19', null, null, '27', '0', '2018-03-01 15:51:30', null, '2018-03-01 15:51:30');
INSERT INTO `list_detail` VALUES ('195', 'Delay in stock receive by TCS', 'Delay in stock receive by TCS', '20', null, null, '25', '0', '2018-03-01 15:51:30', null, '2018-03-22 16:46:10');
INSERT INTO `list_detail` VALUES ('196', 'Delay in stock receive by TCS', 'Delay in stock receive by TCS', '20', null, null, '22', '0', '2018-03-01 15:51:30', null, '2018-03-22 16:46:10');
INSERT INTO `list_detail` VALUES ('197', 'No Store', 'No Store', '20', null, null, '22', '0', '2018-03-01 15:51:30', null, '2018-03-22 16:46:10');
INSERT INTO `list_detail` VALUES ('198', 'No Target', 'No Target', '20', null, null, '22', '0', '2018-03-01 15:51:30', null, '2018-03-22 17:23:37');
INSERT INTO `list_detail` VALUES ('199', 'No Store', 'No Store', '20', null, null, '25', '0', '2018-03-01 15:51:30', null, '2018-03-22 17:04:53');
INSERT INTO `list_detail` VALUES ('200', 'No Store', 'No Store', '20', null, null, '27', '0', '2018-03-01 15:51:30', null, '2018-03-22 17:04:54');
INSERT INTO `list_detail` VALUES ('201', 'DPIU', 'DPIU', '1', null, '201', '24', '0', '2018-03-28 13:29:03', null, '2018-07-03 15:09:08');
INSERT INTO `list_detail` VALUES ('202', 'TCS', 'TCS', '2', null, null, '24', '0', '2018-03-28 13:29:07', null, '2018-03-28 13:29:19');
INSERT INTO `list_detail` VALUES ('203', 'Stock Issued', 'Stock Issued', '19', null, null, '22', '0', '2018-04-03 16:25:34', null, '2018-04-03 16:25:34');
INSERT INTO `list_detail` VALUES ('204', 'Stock is Nil/Zero becz 100 % Consumed according to their targets', 'Stock is Nil/Zero becz 100 % Consumed according to their targets', '19', null, null, '22', '0', '2018-04-03 16:25:59', null, '2018-04-03 16:25:59');
INSERT INTO `list_detail` VALUES ('205', 'Stock Issued', 'Stock Issued', '19', null, null, '25', '0', '2018-04-03 16:26:31', null, '2018-04-03 16:26:31');
INSERT INTO `list_detail` VALUES ('206', 'Stock Issued', 'Stock Issued', '19', null, null, '27', '0', '2018-04-03 16:26:39', null, '2018-04-03 16:26:39');
INSERT INTO `list_detail` VALUES ('207', 'Stock is Nil/Zero becz 100 % Consumed according to their targets', 'Stock is Nil/Zero becz 100 % Consumed according to their targets', '19', null, null, '25', '0', '2018-04-03 16:26:59', null, '2018-04-03 16:26:59');
INSERT INTO `list_detail` VALUES ('208', 'Stock is Nil/Zero becz 100 % Consumed according to their targets', 'Stock is Nil/Zero becz 100 % Consumed according to their targets', '19', null, null, '27', '0', '2018-04-03 16:27:09', null, '2018-04-03 16:27:09');
INSERT INTO `list_detail` VALUES ('209', 'Issuance on hold', 'Issuance on hold', '19', null, null, '22', '0', '2018-04-09 10:55:35', null, '2018-04-09 10:55:35');
INSERT INTO `list_detail` VALUES ('210', 'Issuance on hold', 'Issuance on hold', '19', null, null, '25', '0', '2018-04-09 10:55:42', null, '2018-04-09 10:55:42');
INSERT INTO `list_detail` VALUES ('211', 'Issuance on hold', 'Issuance on hold', '19', null, null, '27', '0', '2018-04-09 10:55:48', null, '2018-04-09 10:55:48');
INSERT INTO `list_detail` VALUES ('212', 'Stock issued as per consumption', 'Stock issued as per consumption', '19', null, null, '22', '0', '2018-04-24 11:51:25', null, '2018-04-24 11:51:25');
INSERT INTO `list_detail` VALUES ('213', 'Stock issued as per consumption', 'Stock issued as per consumption', '19', null, null, '25', '0', '2018-04-24 11:51:32', null, '2018-04-24 11:51:32');
INSERT INTO `list_detail` VALUES ('214', 'Stock issued as per consumption', 'Stock issued as per consumption', '19', null, null, '27', '0', '2018-04-24 11:51:38', null, '2018-04-24 11:51:38');
INSERT INTO `list_detail` VALUES ('215', 'Murree Karachi Goods Transport', '', '1', null, null, '21', '0', '2018-05-31 13:56:47', null, '2018-05-31 13:57:47');
INSERT INTO `list_detail` VALUES ('216', 'From District', 'Receive from District', '3', null, '201', '24', '0', '2018-06-29 11:12:53', null, '2018-07-03 15:09:10');
INSERT INTO `list_detail` VALUES ('217', 'Other', 'Other Source', '4', null, null, '24', '0', '2018-06-29 11:13:10', null, '2018-06-29 11:13:10');
INSERT INTO `list_detail` VALUES ('218', 'From Province', 'From Province', '1', null, null, '24', '0', '2018-07-18 10:11:03', null, '2018-07-18 10:11:03');
INSERT INTO `list_detail` VALUES ('219', 'Dataentry', 'Dataentry', '1', null, null, '29', '1', '2018-07-20 09:45:39', '1', '2018-12-07 09:20:51');
INSERT INTO `list_detail` VALUES ('220', 'Policy', 'Policy', '2', null, null, '29', '1', '2018-07-20 09:45:39', '1', '2018-12-07 09:20:51');
INSERT INTO `list_detail` VALUES ('221', 'Admin', 'Admin', '3', null, null, '29', '1', '2018-07-20 09:46:31', '1', '2018-12-07 09:20:50');
INSERT INTO `list_detail` VALUES ('222', 'Maimoon Goods Transport Co', '(Maimoon Goods Transport Co', '19', null, null, '21', '0', '2018-09-25 11:12:26', null, '2018-09-25 11:12:26');
INSERT INTO `list_detail` VALUES ('223', 'IM', 'Inventory Management', '4', null, null, '29', '1', '2018-12-07 09:20:35', '1', '2018-12-07 09:20:48');
INSERT INTO `list_detail` VALUES ('224', 'Donor', 'Donor', '5', null, null, '29', '1', '2018-12-07 09:23:30', '1', '2018-12-07 09:23:36');
INSERT INTO `list_detail` VALUES ('225', 'Other', 'Other', '6', null, null, '29', '1', '2018-12-07 09:35:39', '1', '2018-12-07 09:35:39');

-- ----------------------------
-- Table structure for list_master
-- ----------------------------
DROP TABLE IF EXISTS `list_master`;
CREATE TABLE `list_master` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `list_master_name` varchar(100) DEFAULT NULL,
  `description` text,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category` enum('IM','CC','CS') DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `list_master_created_by_users_fk1` (`created_by`) USING BTREE,
  KEY `list_master_modified_by_users_fk2` (`modified_by`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of list_master
-- ----------------------------
INSERT INTO `list_master` VALUES ('14', 'Area', null, '1', '2014-06-02 18:55:34', '1', '2014-06-02 18:55:34', 'IM');
INSERT INTO `list_master` VALUES ('15', 'Row', null, '1', '2014-06-02 18:53:22', '1', '2014-06-02 18:53:22', 'IM');
INSERT INTO `list_master` VALUES ('16', 'Rack', null, '1', '2014-06-02 18:53:19', '1', '2014-06-02 18:53:19', 'IM');
INSERT INTO `list_master` VALUES ('18', 'Pallet', null, '1', '2014-06-02 18:53:16', '1', '2014-06-02 18:53:16', 'IM');
INSERT INTO `list_master` VALUES ('19', 'Level', null, '1', '2014-06-02 18:53:14', '1', '2014-06-02 18:53:14', 'IM');
INSERT INTO `list_master` VALUES ('20', 'Placement Transaction Types', '', '1', '2014-07-14 14:56:17', '1', '2018-02-12 16:28:33', 'IM');
INSERT INTO `list_master` VALUES ('21', 'Issued By', null, '1', '2018-02-12 16:23:46', '1', '2018-02-12 16:28:57', 'IM');
INSERT INTO `list_master` VALUES ('22', 'Stockout Reasons (SDP)', null, '1', '2018-02-12 16:28:54', '1', '2018-03-13 13:13:14', 'CS');
INSERT INTO `list_master` VALUES ('23', 'Stockout Actions advised (SDP)', null, '1', '2018-02-12 16:28:54', '1', '2018-03-13 13:13:14', 'CS');
INSERT INTO `list_master` VALUES ('24', 'Data Sources', null, '1', '2018-02-28 11:14:05', '1', '2018-02-28 11:08:08', 'CS');
INSERT INTO `list_master` VALUES ('25', 'Stockout Reasons (District Store)', null, '1', '0000-00-00 00:00:00', '1', '2018-03-13 13:13:29', 'CS');
INSERT INTO `list_master` VALUES ('26', 'Stockout Actions advised (District Store)', null, '1', '0000-00-00 00:00:00', '1', '2018-03-13 13:13:29', 'CS');
INSERT INTO `list_master` VALUES ('27', 'Stockout Reasons (District Level)', null, '1', '0000-00-00 00:00:00', '1', '2018-03-13 13:13:29', 'CS');
INSERT INTO `list_master` VALUES ('28', 'Stockout Actions advised (District Level)', null, '1', '0000-00-00 00:00:00', '1', '2018-03-13 13:13:29', 'CS');
INSERT INTO `list_master` VALUES ('29', 'Role Category', null, '1', '2018-07-20 09:58:37', '1', '2018-07-20 09:45:04', 'IM');

-- ----------------------------
-- Table structure for mosscale_tab
-- ----------------------------
DROP TABLE IF EXISTS `mosscale_tab`;
CREATE TABLE `mosscale_tab` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `itmrec_id` varchar(15) DEFAULT NULL,
  `shortterm` varchar(5) DEFAULT NULL,
  `longterm` varchar(30) DEFAULT NULL,
  `sclstart` float NOT NULL DEFAULT '0' COMMENT 'Scale start at',
  `sclsend` float NOT NULL DEFAULT '0' COMMENT 'scale ends at',
  `extra` varchar(10) DEFAULT NULL,
  `colorcode` varchar(30) DEFAULT NULL,
  `stkid` int(11) DEFAULT NULL COMMENT 'Foreign Key: Stakeholder',
  `lvl_id` int(11) DEFAULT NULL COMMENT 'Foreign Key: distribution level',
  PRIMARY KEY (`row_id`),
  KEY `itmrec_id` (`itmrec_id`),
  KEY `shortterm` (`shortterm`),
  KEY `fk_Stk` (`stkid`)
) ENGINE=MyISAM AUTO_INCREMENT=17299 DEFAULT CHARSET=utf8 COMMENT='contain inforamtion about min/max values of product code etc';

-- ----------------------------
-- Records of mosscale_tab
-- ----------------------------
INSERT INTO `mosscale_tab` VALUES ('97', 'IT-001', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('98', 'IT-001', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('99', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('100', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('101', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('102', 'IT-001', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('103', 'IT-001', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('104', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('105', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('106', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('107', 'IT-001', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('108', 'IT-001', 'SAT', 'Satisfactory', '3', '5.99', '', '#008000', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('109', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('110', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('111', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('112', 'IT-001', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('113', 'IT-001', 'OS', 'Over Stock', '6', '9999', '', '#6bceff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('114', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('115', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('116', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6BCEFF', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16822', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16821', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16820', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16819', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16818', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16817', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16816', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16815', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16814', 'IT-006', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16813', 'IT-006', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16812', 'IT-006', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16811', 'IT-006', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16810', 'IT-006', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16809', 'IT-006', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16808', 'IT-006', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16807', 'IT-006', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16806', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16805', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16804', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16803', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16802', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16801', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16800', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16799', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16798', 'IT-005', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16797', 'IT-005', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16796', 'IT-005', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16795', 'IT-005', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16794', 'IT-005', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16793', 'IT-005', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16792', 'IT-005', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16791', 'IT-005', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16790', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16789', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16788', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16787', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16786', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16785', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16784', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16783', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16782', 'IT-004', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16781', 'IT-004', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16780', 'IT-004', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16779', 'IT-004', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16778', 'IT-004', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16777', 'IT-004', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16776', 'IT-004', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16775', 'IT-004', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16774', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16773', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16772', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16771', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16770', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16769', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16768', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16767', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16766', 'IT-003', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16765', 'IT-003', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16764', 'IT-003', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16763', 'IT-003', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16762', 'IT-003', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16761', 'IT-003', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16760', 'IT-003', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16759', 'IT-003', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16758', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16757', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16756', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16755', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16754', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16753', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16752', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16751', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16750', 'IT-002', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16749', 'IT-002', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16748', 'IT-002', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16747', 'IT-002', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16746', 'IT-002', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16745', 'IT-002', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16744', 'IT-002', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16743', 'IT-002', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16742', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16741', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16740', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16739', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16738', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16737', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16736', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16735', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16734', 'IT-006', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16733', 'IT-006', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16732', 'IT-006', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16731', 'IT-006', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16730', 'IT-006', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16729', 'IT-006', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16728', 'IT-006', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16727', 'IT-006', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16726', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16725', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16724', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16723', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16722', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16721', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16720', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16719', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16718', 'IT-005', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16717', 'IT-005', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16716', 'IT-005', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16715', 'IT-005', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16714', 'IT-005', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16713', 'IT-005', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16712', 'IT-005', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16711', 'IT-005', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16710', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16709', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16708', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16707', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16706', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16705', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16704', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16703', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16702', 'IT-004', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16701', 'IT-004', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16700', 'IT-004', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16699', 'IT-004', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16698', 'IT-004', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16697', 'IT-004', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16696', 'IT-004', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16695', 'IT-004', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16694', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16693', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16692', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16691', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16690', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16689', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16688', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16687', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16686', 'IT-003', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('16685', 'IT-003', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('16684', 'IT-003', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('16683', 'IT-003', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('16682', 'IT-003', 'SAT', 'Satisfactory', '3', '5.99', '', '#008000', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('16681', 'IT-003', 'OS', 'Over Stock', '6', '9999', '', '#6bceff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('16680', 'IT-003', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('16679', 'IT-003', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('16678', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('16677', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('16676', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('16675', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('16674', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('16673', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('16672', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('16671', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('16670', 'IT-002', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('16669', 'IT-002', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('16668', 'IT-002', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('16667', 'IT-002', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('16666', 'IT-002', 'SAT', 'Satisfactory', '3', '5.99', '', '#008000', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('16665', 'IT-002', 'OS', 'Over Stock', '6', '9999', '', '#6bceff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('16664', 'IT-002', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('16663', 'IT-002', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('16662', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('16661', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('16660', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('16654', 'IT-008', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16655', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('16656', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('16657', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('16658', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('16659', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('16653', 'IT-008', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16652', 'IT-008', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16651', 'IT-008', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16650', 'IT-008', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16649', 'IT-008', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16648', 'IT-008', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16647', 'IT-008', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16646', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16645', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16644', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16643', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16642', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16641', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16640', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16639', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16638', 'IT-007', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16637', 'IT-007', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16636', 'IT-007', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16635', 'IT-007', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16634', 'IT-007', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16633', 'IT-007', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16632', 'IT-007', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16631', 'IT-007', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16630', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16629', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16628', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16627', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16626', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16625', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16624', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16623', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16622', 'IT-009', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16621', 'IT-009', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16620', 'IT-009', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16619', 'IT-009', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('16618', 'IT-009', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16617', 'IT-009', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16616', 'IT-009', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16615', 'IT-009', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('16614', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16613', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16612', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16611', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('16610', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16609', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16608', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16607', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16606', 'IT-006', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16605', 'IT-006', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16604', 'IT-006', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16603', 'IT-006', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16602', 'IT-006', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16601', 'IT-006', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16600', 'IT-006', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16599', 'IT-006', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16598', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16597', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16596', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16595', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16594', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16593', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16592', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16591', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16590', 'IT-005', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16589', 'IT-005', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16588', 'IT-005', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16587', 'IT-005', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16586', 'IT-005', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16585', 'IT-005', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16584', 'IT-005', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16583', 'IT-005', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16582', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16581', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16580', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16575', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16576', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16577', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16578', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16579', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16894', 'IT-012', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16893', 'IT-012', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16892', 'IT-012', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16891', 'IT-012', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16890', 'IT-012', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16889', 'IT-012', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16888', 'IT-012', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16887', 'IT-012', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16886', 'IT-012', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16885', 'IT-012', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16884', 'IT-012', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16883', 'IT-012', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16882', 'IT-012', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16881', 'IT-012', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16880', 'IT-012', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16879', 'IT-012', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16878', 'IT-010', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16877', 'IT-010', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16876', 'IT-010', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16875', 'IT-010', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16874', 'IT-010', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16873', 'IT-010', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16872', 'IT-010', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16871', 'IT-010', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16870', 'IT-010', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16869', 'IT-010', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16868', 'IT-010', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16867', 'IT-010', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16866', 'IT-010', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16865', 'IT-010', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16864', 'IT-010', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16863', 'IT-010', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16862', 'IT-009', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16861', 'IT-009', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16860', 'IT-009', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16859', 'IT-009', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16858', 'IT-009', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16857', 'IT-009', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16856', 'IT-009', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16855', 'IT-009', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16854', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16853', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16852', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16851', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16850', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16849', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16848', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16847', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16846', 'IT-008', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16845', 'IT-008', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16844', 'IT-008', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16843', 'IT-008', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16842', 'IT-008', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16841', 'IT-008', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16840', 'IT-008', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16839', 'IT-008', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16838', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16837', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16836', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16835', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('16834', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16833', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16832', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16831', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('16830', 'IT-007', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16829', 'IT-007', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16828', 'IT-007', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16827', 'IT-007', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('16826', 'IT-007', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16825', 'IT-007', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16824', 'IT-007', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16823', 'IT-007', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('16574', 'IT-004', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16573', 'IT-004', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16572', 'IT-004', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16571', 'IT-004', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16570', 'IT-004', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16569', 'IT-004', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16568', 'IT-004', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16567', 'IT-004', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16566', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16565', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16564', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16563', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16562', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16561', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16560', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16559', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16558', 'IT-003', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('16557', 'IT-003', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('16556', 'IT-003', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('16555', 'IT-003', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('16554', 'IT-003', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('16553', 'IT-003', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('16552', 'IT-003', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('16551', 'IT-003', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('16550', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('16549', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('16548', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('16547', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('16546', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('16545', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('16544', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('16543', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('16542', 'IT-002', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('16541', 'IT-002', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('16540', 'IT-002', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('16539', 'IT-002', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('16537', 'IT-002', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('16538', 'IT-002', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('16536', 'IT-002', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('16535', 'IT-002', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('16533', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('16534', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('16532', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('16529', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('16530', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('16531', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('16528', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('16527', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('16526', 'IT-008', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16524', 'IT-008', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16525', 'IT-008', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16521', 'IT-008', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16522', 'IT-008', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16523', 'IT-008', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16520', 'IT-008', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16519', 'IT-008', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16517', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16518', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16516', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16515', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16514', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16513', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16512', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16511', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16510', 'IT-007', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16509', 'IT-007', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16508', 'IT-007', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16507', 'IT-007', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16504', 'IT-007', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16506', 'IT-007', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16505', 'IT-007', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16503', 'IT-007', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16502', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16501', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16500', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16499', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16498', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16497', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16496', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16495', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16494', 'IT-001', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '2', '4');
INSERT INTO `mosscale_tab` VALUES ('16493', 'IT-001', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '2', '4');
INSERT INTO `mosscale_tab` VALUES ('16492', 'IT-001', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '2', '4');
INSERT INTO `mosscale_tab` VALUES ('16491', 'IT-001', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '2', '4');
INSERT INTO `mosscale_tab` VALUES ('16490', 'IT-001', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '2', '3');
INSERT INTO `mosscale_tab` VALUES ('16489', 'IT-001', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '2', '3');
INSERT INTO `mosscale_tab` VALUES ('16488', 'IT-001', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '2', '3');
INSERT INTO `mosscale_tab` VALUES ('16487', 'IT-001', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '2', '3');
INSERT INTO `mosscale_tab` VALUES ('16486', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '2', '2');
INSERT INTO `mosscale_tab` VALUES ('16485', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '2', '2');
INSERT INTO `mosscale_tab` VALUES ('16484', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '2', '2');
INSERT INTO `mosscale_tab` VALUES ('16483', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '2', '2');
INSERT INTO `mosscale_tab` VALUES ('16482', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '2', '1');
INSERT INTO `mosscale_tab` VALUES ('16481', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '2', '1');
INSERT INTO `mosscale_tab` VALUES ('16480', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '2', '1');
INSERT INTO `mosscale_tab` VALUES ('16479', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '2', '1');
INSERT INTO `mosscale_tab` VALUES ('16478', 'IT-009', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16477', 'IT-009', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16476', 'IT-009', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16475', 'IT-009', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('16474', 'IT-009', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16473', 'IT-009', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16472', 'IT-009', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16471', 'IT-009', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('16470', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16469', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16468', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16467', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('16466', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16465', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16464', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16463', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('16462', 'IT-006', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16461', 'IT-006', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16460', 'IT-006', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16459', 'IT-006', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16458', 'IT-006', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16457', 'IT-006', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16456', 'IT-006', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16455', 'IT-006', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16454', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16453', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16452', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16451', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16450', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16449', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16448', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16447', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16446', 'IT-005', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16445', 'IT-005', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16444', 'IT-005', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16443', 'IT-005', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16442', 'IT-005', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16441', 'IT-005', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16440', 'IT-005', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16439', 'IT-005', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16438', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16437', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16436', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16435', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16434', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16432', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16433', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16431', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16430', 'IT-004', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16429', 'IT-004', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16428', 'IT-004', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16426', 'IT-004', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16427', 'IT-004', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16425', 'IT-004', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16422', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16423', 'IT-004', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16424', 'IT-004', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16421', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16419', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16420', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16417', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16418', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16416', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16413', 'IT-003', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('16414', 'IT-003', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('16415', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16410', 'IT-003', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('16411', 'IT-003', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('16412', 'IT-003', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('16409', 'IT-003', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('16407', 'IT-003', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('16408', 'IT-003', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('16406', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('16405', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('16404', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('16402', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('16403', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('16401', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('16400', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('16398', 'IT-002', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('16399', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('16396', 'IT-002', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('16397', 'IT-002', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('16394', 'IT-002', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('16395', 'IT-002', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('16393', 'IT-002', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('16392', 'IT-002', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('16390', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('16391', 'IT-002', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('16389', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('16388', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('16387', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('16386', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('16385', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('16384', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('16383', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('16382', 'IT-008', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16381', 'IT-008', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16380', 'IT-008', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16379', 'IT-008', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16378', 'IT-008', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16377', 'IT-008', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16376', 'IT-008', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16375', 'IT-008', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16374', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16373', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16372', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16370', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16371', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16368', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16369', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16367', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16365', 'IT-007', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16366', 'IT-007', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16364', 'IT-007', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16361', 'IT-007', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16362', 'IT-007', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16363', 'IT-007', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16360', 'IT-007', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16358', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16359', 'IT-007', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16356', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16357', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16353', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16354', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16355', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16352', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16351', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16348', 'IT-001', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('16349', 'IT-001', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('16350', 'IT-001', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('16345', 'IT-001', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('16346', 'IT-001', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('16347', 'IT-001', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('16344', 'IT-001', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('16343', 'IT-001', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('16341', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('16342', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('16340', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('16339', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('16338', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('16337', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('16336', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('16335', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('16334', 'IT-009', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16333', 'IT-009', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16332', 'IT-009', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16331', 'IT-009', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('16330', 'IT-009', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16329', 'IT-009', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16328', 'IT-009', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16327', 'IT-009', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('16326', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16325', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16324', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16323', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('16322', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16320', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16321', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16319', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('16318', 'IT-006', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16317', 'IT-006', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16316', 'IT-006', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16314', 'IT-006', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16315', 'IT-006', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16313', 'IT-006', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16310', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16311', 'IT-006', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16312', 'IT-006', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16309', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16307', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16308', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16305', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16306', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16304', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16301', 'IT-005', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16302', 'IT-005', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16303', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16298', 'IT-005', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16299', 'IT-005', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16300', 'IT-005', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16297', 'IT-005', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16295', 'IT-005', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16296', 'IT-005', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16293', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16294', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16292', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16290', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16291', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16288', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16289', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16285', 'IT-004', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16286', 'IT-004', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16287', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16283', 'IT-004', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16284', 'IT-004', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16282', 'IT-004', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16279', 'IT-004', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16280', 'IT-004', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16281', 'IT-004', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16278', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16277', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16276', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16275', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16274', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16273', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16272', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16271', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16270', 'IT-003', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('16269', 'IT-003', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('16268', 'IT-003', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('16266', 'IT-003', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('16267', 'IT-003', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('16265', 'IT-003', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('16262', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('16263', 'IT-003', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('16264', 'IT-003', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('16261', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('16259', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('16260', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('16257', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('16258', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('16256', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('16253', 'IT-002', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('16254', 'IT-002', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('16255', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('16250', 'IT-002', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('16251', 'IT-002', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('16252', 'IT-002', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('16249', 'IT-002', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('16247', 'IT-002', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('16248', 'IT-002', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('16245', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('16246', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('16244', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('16243', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('16242', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('16241', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('16240', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('16239', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('16238', 'IT-008', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16237', 'IT-008', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16236', 'IT-008', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16235', 'IT-008', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16234', 'IT-008', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16233', 'IT-008', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16232', 'IT-008', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16231', 'IT-008', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16230', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16229', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16228', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16227', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16226', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16225', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16224', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16223', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16222', 'IT-007', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16221', 'IT-007', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16220', 'IT-007', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16219', 'IT-007', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16218', 'IT-007', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16217', 'IT-007', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16216', 'IT-007', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16215', 'IT-007', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16214', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16213', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16212', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16211', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16210', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16208', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16209', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16207', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16206', 'IT-001', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('16205', 'IT-001', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('16204', 'IT-001', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('16202', 'IT-001', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('16203', 'IT-001', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('16201', 'IT-001', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('16198', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('16199', 'IT-001', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('16200', 'IT-001', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('16197', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('16195', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('16196', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('16193', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('16194', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('16192', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('16189', 'IT-009', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16190', 'IT-009', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16191', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('16186', 'IT-009', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16187', 'IT-009', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16188', 'IT-009', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('16185', 'IT-009', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16183', 'IT-009', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16184', 'IT-009', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('16182', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16181', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16180', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16179', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('16177', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16178', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16176', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16175', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('16174', 'IT-006', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16171', 'IT-006', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16172', 'IT-006', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16173', 'IT-006', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16169', 'IT-006', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16170', 'IT-006', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16168', 'IT-006', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16167', 'IT-006', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16165', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16166', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16164', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16163', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16162', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16161', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16160', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16159', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16158', 'IT-005', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16157', 'IT-005', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16156', 'IT-005', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16153', 'IT-005', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16155', 'IT-005', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16154', 'IT-005', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16152', 'IT-005', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16151', 'IT-005', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16148', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16149', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16150', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16147', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16145', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16146', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16143', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16144', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16142', 'IT-004', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16140', 'IT-004', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16141', 'IT-004', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16138', 'IT-004', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16139', 'IT-004', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16135', 'IT-004', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16136', 'IT-004', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16137', 'IT-004', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16133', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16134', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16132', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16129', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16130', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16131', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16128', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16127', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16126', 'IT-003', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('16125', 'IT-003', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('16124', 'IT-003', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('16123', 'IT-003', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('16122', 'IT-003', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('16121', 'IT-003', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('16120', 'IT-003', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('16117', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('16119', 'IT-003', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('16118', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('16116', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('16115', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('16114', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('16113', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('16112', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('16111', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('16110', 'IT-002', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('16109', 'IT-002', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('16108', 'IT-002', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('16107', 'IT-002', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('16106', 'IT-002', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('16105', 'IT-002', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('16104', 'IT-002', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('16103', 'IT-002', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('16102', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('16101', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('16100', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('16099', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('16098', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('16096', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('16097', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('16095', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('16094', 'IT-008', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16093', 'IT-008', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16092', 'IT-008', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16090', 'IT-008', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16091', 'IT-008', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16089', 'IT-008', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16086', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16087', 'IT-008', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16088', 'IT-008', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16085', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16083', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16084', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16081', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16082', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16080', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16077', 'IT-007', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16078', 'IT-007', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16079', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16074', 'IT-007', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16075', 'IT-007', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16076', 'IT-007', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16073', 'IT-007', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16071', 'IT-007', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16072', 'IT-007', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16070', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16069', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16068', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16066', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16067', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16064', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16065', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16061', 'IT-001', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('16062', 'IT-001', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('16063', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16059', 'IT-001', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('16060', 'IT-001', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('16058', 'IT-001', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('16055', 'IT-001', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('16056', 'IT-001', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('16057', 'IT-001', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('16054', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('16053', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('16052', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('16051', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('16050', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('16049', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('16048', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('16047', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('16046', 'IT-009', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16045', 'IT-009', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16044', 'IT-009', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16042', 'IT-009', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16043', 'IT-009', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('16041', 'IT-009', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16040', 'IT-009', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16037', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16038', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16039', 'IT-009', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('16036', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16035', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('16033', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16034', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16032', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16031', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('16030', 'IT-006', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('16027', 'IT-006', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('16028', 'IT-006', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('16029', 'IT-006', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('16024', 'IT-006', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('16025', 'IT-006', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('16026', 'IT-006', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('16022', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('16023', 'IT-006', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('16019', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('16020', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('16021', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('16017', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('16018', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('16016', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('16015', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('16014', 'IT-005', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('16013', 'IT-005', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('16012', 'IT-005', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('16011', 'IT-005', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('16010', 'IT-005', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('16009', 'IT-005', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('16008', 'IT-005', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('16007', 'IT-005', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('16006', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('16005', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('16004', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('16003', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('16002', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('16001', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('16000', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15999', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15998', 'IT-004', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15997', 'IT-004', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15996', 'IT-004', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15995', 'IT-004', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15994', 'IT-004', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15992', 'IT-004', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15993', 'IT-004', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15991', 'IT-004', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15990', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15989', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15988', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15987', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15986', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15985', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15984', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15983', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15982', 'IT-003', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15981', 'IT-003', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15980', 'IT-003', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15979', 'IT-003', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15978', 'IT-003', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15977', 'IT-003', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15976', 'IT-003', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15975', 'IT-003', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15974', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15973', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15972', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15971', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15970', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15969', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15968', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15967', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15966', 'IT-002', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15965', 'IT-002', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15964', 'IT-002', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15963', 'IT-002', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15962', 'IT-002', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15961', 'IT-002', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15960', 'IT-002', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15959', 'IT-002', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15958', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15957', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15956', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15955', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15954', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15953', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15952', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15951', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15950', 'IT-008', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15949', 'IT-008', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15948', 'IT-008', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15947', 'IT-008', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15946', 'IT-008', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15945', 'IT-008', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15944', 'IT-008', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15943', 'IT-008', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15942', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15941', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15940', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15939', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15938', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15937', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15936', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15935', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15934', 'IT-007', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15933', 'IT-007', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15932', 'IT-007', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15931', 'IT-007', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15930', 'IT-007', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15929', 'IT-007', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15928', 'IT-007', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15927', 'IT-007', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15926', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15925', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15924', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15923', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15922', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15921', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15920', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15919', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15918', 'IT-001', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15917', 'IT-001', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15916', 'IT-001', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15915', 'IT-001', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15914', 'IT-001', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15913', 'IT-001', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15912', 'IT-001', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15911', 'IT-001', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15910', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15909', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15908', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15907', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15906', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15905', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15904', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15903', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15902', 'IT-009', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15901', 'IT-009', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15900', 'IT-009', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15899', 'IT-009', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15898', 'IT-009', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15897', 'IT-009', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15896', 'IT-009', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15895', 'IT-009', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15894', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15893', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15892', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15891', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15890', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15889', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15888', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15887', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15886', 'IT-006', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15885', 'IT-006', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15884', 'IT-006', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15883', 'IT-006', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15882', 'IT-006', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15881', 'IT-006', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15880', 'IT-006', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15879', 'IT-006', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15878', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15877', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15876', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15875', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15874', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15873', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15872', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15871', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15870', 'IT-005', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15869', 'IT-005', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15868', 'IT-005', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15867', 'IT-005', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15866', 'IT-005', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15865', 'IT-005', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15864', 'IT-005', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15863', 'IT-005', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15862', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15861', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15860', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15859', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15858', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15857', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15856', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15855', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15854', 'IT-004', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15853', 'IT-004', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15852', 'IT-004', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15851', 'IT-004', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15849', 'IT-004', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15850', 'IT-004', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15848', 'IT-004', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15847', 'IT-004', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15846', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15845', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15844', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15843', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15842', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15841', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15840', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15839', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15838', 'IT-003', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15837', 'IT-003', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15836', 'IT-003', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15835', 'IT-003', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15834', 'IT-003', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15833', 'IT-003', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15832', 'IT-003', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15831', 'IT-003', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15830', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15829', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15828', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15827', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15826', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15825', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15824', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15823', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15822', 'IT-002', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('15821', 'IT-002', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('15820', 'IT-002', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('15819', 'IT-002', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('15818', 'IT-002', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('15817', 'IT-002', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('15816', 'IT-002', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('15815', 'IT-002', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('15814', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('15813', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('15812', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('15811', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('15810', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('15809', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('15808', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('15807', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('15806', 'IT-008', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15805', 'IT-008', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15804', 'IT-008', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15803', 'IT-008', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15802', 'IT-008', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15801', 'IT-008', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15800', 'IT-008', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15799', 'IT-008', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15798', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15797', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15796', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15795', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15794', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15793', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15792', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15791', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15790', 'IT-007', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15789', 'IT-007', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15788', 'IT-007', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15787', 'IT-007', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15786', 'IT-007', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15785', 'IT-007', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15784', 'IT-007', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15783', 'IT-007', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15782', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15781', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15780', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15779', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15778', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15777', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15776', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15775', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15774', 'IT-001', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15773', 'IT-001', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15772', 'IT-001', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15771', 'IT-001', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15770', 'IT-001', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15769', 'IT-001', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15768', 'IT-001', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15767', 'IT-001', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15766', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15765', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15764', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15763', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15762', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15761', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15760', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15759', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15758', 'IT-009', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15757', 'IT-009', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15756', 'IT-009', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15755', 'IT-009', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('15754', 'IT-009', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15753', 'IT-009', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15752', 'IT-009', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15751', 'IT-009', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('15750', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15749', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15748', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15747', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('15746', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15745', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15744', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15743', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('15742', 'IT-006', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15741', 'IT-006', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15740', 'IT-006', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15739', 'IT-006', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15738', 'IT-006', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15737', 'IT-006', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15736', 'IT-006', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15735', 'IT-006', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15734', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15733', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15732', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15731', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15730', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15729', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15728', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15727', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15726', 'IT-005', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15725', 'IT-005', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15724', 'IT-005', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15723', 'IT-005', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15722', 'IT-005', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15721', 'IT-005', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15720', 'IT-005', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15719', 'IT-005', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15718', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15717', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15716', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15715', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15714', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15713', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15712', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15711', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15710', 'IT-004', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15709', 'IT-004', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15708', 'IT-004', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15707', 'IT-004', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15706', 'IT-004', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15705', 'IT-004', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15704', 'IT-004', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15703', 'IT-004', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15702', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15701', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15700', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15699', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15698', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15697', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15696', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15695', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15694', 'IT-003', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('15693', 'IT-003', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('15692', 'IT-003', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('15691', 'IT-003', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('15690', 'IT-003', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('15689', 'IT-003', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('15688', 'IT-003', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('15687', 'IT-003', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('15686', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('15685', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('15684', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('15683', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('15682', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('15681', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('15680', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('15679', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('15678', 'IT-002', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('15677', 'IT-002', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('15676', 'IT-002', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('15675', 'IT-002', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('15674', 'IT-002', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('15673', 'IT-002', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('15672', 'IT-002', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('15671', 'IT-002', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('15670', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('15669', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('15668', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('15667', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('15666', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('15665', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('15664', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('15663', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('15662', 'IT-008', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15661', 'IT-008', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15660', 'IT-008', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15659', 'IT-008', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15658', 'IT-008', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15657', 'IT-008', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15656', 'IT-008', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15655', 'IT-008', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15654', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15653', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15652', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15651', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15650', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15649', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15648', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15647', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15646', 'IT-007', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15645', 'IT-007', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15644', 'IT-007', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15643', 'IT-007', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15642', 'IT-007', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15641', 'IT-007', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15640', 'IT-007', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15639', 'IT-007', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15638', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15637', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15636', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15635', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15634', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15633', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15632', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15631', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15630', 'IT-001', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15629', 'IT-001', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15628', 'IT-001', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15627', 'IT-001', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('15626', 'IT-001', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15625', 'IT-001', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15624', 'IT-001', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15623', 'IT-001', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('15622', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15621', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15620', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15619', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('15618', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15617', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15616', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15615', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('15614', 'IT-009', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15613', 'IT-009', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15612', 'IT-009', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15611', 'IT-009', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('15610', 'IT-009', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15609', 'IT-009', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15608', 'IT-009', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15607', 'IT-009', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('15606', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15605', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15604', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15603', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('15602', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15601', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15600', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15599', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('15598', 'IT-012', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15597', 'IT-012', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15596', 'IT-012', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15595', 'IT-012', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15594', 'IT-012', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15593', 'IT-012', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15592', 'IT-012', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15591', 'IT-012', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15590', 'IT-012', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15589', 'IT-012', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15588', 'IT-012', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15587', 'IT-012', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15586', 'IT-012', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15585', 'IT-012', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15584', 'IT-012', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15583', 'IT-012', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15582', 'IT-009', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15581', 'IT-009', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15580', 'IT-009', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15579', 'IT-009', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15578', 'IT-009', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15577', 'IT-009', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15576', 'IT-009', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15575', 'IT-009', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15574', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15573', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15572', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15571', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15570', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15569', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15568', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15567', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15566', 'IT-008', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15565', 'IT-008', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15564', 'IT-008', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15563', 'IT-008', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15562', 'IT-008', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15561', 'IT-008', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15560', 'IT-008', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15559', 'IT-008', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15558', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15557', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15556', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15555', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15554', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15553', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15552', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15551', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15550', 'IT-007', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15549', 'IT-007', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15548', 'IT-007', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15547', 'IT-007', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15546', 'IT-007', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15545', 'IT-007', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15544', 'IT-007', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15543', 'IT-007', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15542', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15541', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15540', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15539', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15538', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15537', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15536', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15535', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15534', 'IT-006', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15533', 'IT-006', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15532', 'IT-006', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15531', 'IT-006', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15530', 'IT-006', 'SAT', 'Satisfactory', '3', '5.99', '', '#008000', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15529', 'IT-006', 'OS', 'Over Stock', '6', '9999', '', '#6bceff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15528', 'IT-006', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15527', 'IT-006', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15526', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15525', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15524', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15523', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15522', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15521', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15520', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15519', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15518', 'IT-005', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15517', 'IT-005', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15516', 'IT-005', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15515', 'IT-005', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15514', 'IT-005', 'SAT', 'Satisfactory', '3', '5.99', '', '#008000', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15513', 'IT-005', 'OS', 'Over Stock', '6', '9999', '', '#6bceff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15512', 'IT-005', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15511', 'IT-005', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15510', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15509', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15508', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15507', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15506', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15505', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15504', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15503', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15502', 'IT-004', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15501', 'IT-004', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15500', 'IT-004', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15499', 'IT-004', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15498', 'IT-004', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15497', 'IT-004', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15496', 'IT-004', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15495', 'IT-004', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15494', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15493', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15492', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15491', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15490', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15489', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15488', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15487', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15486', 'IT-003', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('15485', 'IT-003', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('15484', 'IT-003', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('15483', 'IT-003', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('15482', 'IT-003', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('15481', 'IT-003', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('15480', 'IT-003', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('15479', 'IT-003', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('15478', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('15477', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('15476', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('15475', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('15474', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('15473', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('15472', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('15471', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('15470', 'IT-002', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('15469', 'IT-002', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('15468', 'IT-002', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('15467', 'IT-002', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('15466', 'IT-002', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('15465', 'IT-002', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('15464', 'IT-002', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('15463', 'IT-002', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('15462', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('15461', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('15460', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('15459', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('15458', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('15457', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('15456', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('15455', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('15454', 'IT-001', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('15453', 'IT-001', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('15452', 'IT-001', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('15451', 'IT-001', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('15450', 'IT-001', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('15449', 'IT-001', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('15448', 'IT-001', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('15447', 'IT-001', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('15446', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('15445', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('15444', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('15443', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('15442', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('15441', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('15440', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('15439', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('15438', 'IT-003', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('15437', 'IT-003', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('15436', 'IT-003', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('15435', 'IT-003', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('15434', 'IT-003', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('15433', 'IT-003', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('15432', 'IT-003', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('15431', 'IT-003', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('15430', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('15429', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('15428', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('15427', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('15426', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('15425', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('15424', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('15423', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('15422', 'IT-004', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15421', 'IT-004', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15420', 'IT-004', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15419', 'IT-004', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15418', 'IT-004', 'SAT', 'Satisfactory', '3', '5.99', '', '#008000', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15417', 'IT-004', 'OS', 'Over Stock', '6', '9999', '', '#6bceff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15416', 'IT-004', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15415', 'IT-004', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15414', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15413', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15412', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15411', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15410', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15409', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15408', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15407', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15406', 'IT-010', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15405', 'IT-010', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15404', 'IT-010', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15403', 'IT-010', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15402', 'IT-010', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15401', 'IT-010', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15400', 'IT-010', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15399', 'IT-010', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15398', 'IT-010', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15397', 'IT-010', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15396', 'IT-010', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15395', 'IT-010', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15394', 'IT-010', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15393', 'IT-010', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15392', 'IT-010', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15391', 'IT-010', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15390', 'IT-007', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15389', 'IT-007', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15388', 'IT-007', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15387', 'IT-007', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15386', 'IT-007', 'SAT', 'Satisfactory', '3', '5.99', '', '#008000', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15385', 'IT-007', 'OS', 'Over Stock', '6', '9999', '', '#6bceff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15384', 'IT-007', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15383', 'IT-007', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15382', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15381', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15380', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15379', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15378', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15377', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15376', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15375', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15374', 'IT-001', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('15373', 'IT-001', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('15372', 'IT-001', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('15371', 'IT-001', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('15370', 'IT-001', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('15369', 'IT-001', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('15368', 'IT-001', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('15367', 'IT-001', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('15366', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('15365', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('15364', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('15363', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('15362', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('15361', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('15360', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('15359', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('15358', 'IT-009', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15357', 'IT-009', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15356', 'IT-009', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15355', 'IT-009', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15354', 'IT-009', 'SAT', 'Satisfactory', '3', '5.99', '', '#008000', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15353', 'IT-009', 'OS', 'Over Stock', '6', '9999', '', '#6bceff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15352', 'IT-009', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15351', 'IT-009', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15350', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15349', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15348', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15347', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15346', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15345', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15344', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15343', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15342', 'IT-008', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15341', 'IT-008', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15340', 'IT-008', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15339', 'IT-008', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('15338', 'IT-008', 'SAT', 'Satisfactory', '3', '5.99', '', '#008000', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15337', 'IT-008', 'OS', 'Over Stock', '6', '9999', '', '#6bceff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15336', 'IT-008', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15335', 'IT-008', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('15334', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15333', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15332', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15331', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('15330', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15329', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15328', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15327', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('15326', 'IT-007', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '2', '4');
INSERT INTO `mosscale_tab` VALUES ('15325', 'IT-007', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '2', '4');
INSERT INTO `mosscale_tab` VALUES ('15324', 'IT-007', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '2', '4');
INSERT INTO `mosscale_tab` VALUES ('15323', 'IT-007', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '2', '4');
INSERT INTO `mosscale_tab` VALUES ('15322', 'IT-007', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '2', '3');
INSERT INTO `mosscale_tab` VALUES ('15321', 'IT-007', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '2', '3');
INSERT INTO `mosscale_tab` VALUES ('15320', 'IT-007', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '2', '3');
INSERT INTO `mosscale_tab` VALUES ('15319', 'IT-007', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '2', '3');
INSERT INTO `mosscale_tab` VALUES ('15318', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '2', '2');
INSERT INTO `mosscale_tab` VALUES ('15317', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '2', '2');
INSERT INTO `mosscale_tab` VALUES ('15316', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '2', '2');
INSERT INTO `mosscale_tab` VALUES ('15315', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '2', '2');
INSERT INTO `mosscale_tab` VALUES ('15314', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '2', '1');
INSERT INTO `mosscale_tab` VALUES ('15313', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '2', '1');
INSERT INTO `mosscale_tab` VALUES ('15312', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '2', '1');
INSERT INTO `mosscale_tab` VALUES ('15311', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '2', '1');
INSERT INTO `mosscale_tab` VALUES ('15310', 'IT-006', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15309', 'IT-006', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15308', 'IT-006', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15307', 'IT-006', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15306', 'IT-006', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15305', 'IT-006', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15304', 'IT-006', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15303', 'IT-006', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15302', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15301', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15300', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15299', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15298', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15297', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15296', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15295', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15294', 'IT-001', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('15293', 'IT-001', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('15292', 'IT-001', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('15291', 'IT-001', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('15290', 'IT-001', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('15289', 'IT-001', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('15288', 'IT-001', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('15287', 'IT-001', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('15286', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('15285', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('15284', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('15283', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('15282', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('15281', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('15280', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('15279', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('15278', 'IT-009', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '2', '4');
INSERT INTO `mosscale_tab` VALUES ('15277', 'IT-009', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '2', '4');
INSERT INTO `mosscale_tab` VALUES ('15276', 'IT-009', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '2', '4');
INSERT INTO `mosscale_tab` VALUES ('15275', 'IT-009', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '2', '4');
INSERT INTO `mosscale_tab` VALUES ('15274', 'IT-009', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '2', '3');
INSERT INTO `mosscale_tab` VALUES ('15273', 'IT-009', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '2', '3');
INSERT INTO `mosscale_tab` VALUES ('15272', 'IT-009', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '2', '3');
INSERT INTO `mosscale_tab` VALUES ('15271', 'IT-009', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '2', '3');
INSERT INTO `mosscale_tab` VALUES ('15270', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '2', '2');
INSERT INTO `mosscale_tab` VALUES ('15269', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '2', '2');
INSERT INTO `mosscale_tab` VALUES ('15268', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '2', '2');
INSERT INTO `mosscale_tab` VALUES ('15267', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '2', '2');
INSERT INTO `mosscale_tab` VALUES ('15266', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '2', '1');
INSERT INTO `mosscale_tab` VALUES ('15265', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '2', '1');
INSERT INTO `mosscale_tab` VALUES ('15264', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '2', '1');
INSERT INTO `mosscale_tab` VALUES ('15263', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '2', '1');
INSERT INTO `mosscale_tab` VALUES ('15262', 'IT-006', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15261', 'IT-006', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15260', 'IT-006', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15259', 'IT-006', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15258', 'IT-006', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15257', 'IT-006', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15256', 'IT-006', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15255', 'IT-006', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15254', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15253', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15252', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15251', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15250', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15249', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15248', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15247', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15246', 'IT-005', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15245', 'IT-005', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15244', 'IT-005', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15243', 'IT-005', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15242', 'IT-005', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15241', 'IT-005', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15240', 'IT-005', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15239', 'IT-005', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15238', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15237', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15236', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15235', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15234', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15233', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15232', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15231', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15230', 'IT-004', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15229', 'IT-004', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15228', 'IT-004', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15227', 'IT-004', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15226', 'IT-004', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15225', 'IT-004', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15224', 'IT-004', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15223', 'IT-004', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15222', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15221', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15220', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15219', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15218', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15217', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15216', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15215', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15214', 'IT-003', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('15213', 'IT-003', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('15212', 'IT-003', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('15211', 'IT-003', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('15210', 'IT-003', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('15209', 'IT-003', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('15208', 'IT-003', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('15207', 'IT-003', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('15206', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('15205', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('15204', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('15203', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('15202', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('15201', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('15200', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('15199', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('15198', 'IT-002', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('15197', 'IT-002', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('15196', 'IT-002', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('15195', 'IT-002', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('15194', 'IT-002', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('15193', 'IT-002', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('15192', 'IT-002', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('15191', 'IT-002', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('15190', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('15189', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('15188', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('15187', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('15186', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('15185', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('15184', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('15183', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('15182', 'IT-009', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15181', 'IT-009', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15180', 'IT-009', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15179', 'IT-009', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15178', 'IT-009', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15177', 'IT-009', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15176', 'IT-009', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15175', 'IT-009', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15174', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15173', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15172', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15171', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15170', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15169', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15168', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15167', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15166', 'IT-007', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15165', 'IT-007', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15164', 'IT-007', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15163', 'IT-007', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15162', 'IT-007', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15161', 'IT-007', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15160', 'IT-007', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15159', 'IT-007', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15158', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15157', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15156', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15155', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15154', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15153', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15152', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15151', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15150', 'IT-006', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15149', 'IT-006', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15148', 'IT-006', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15147', 'IT-006', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15146', 'IT-006', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15145', 'IT-006', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15144', 'IT-006', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15143', 'IT-006', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15142', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15141', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15140', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15139', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15138', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15137', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15136', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15135', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15134', 'IT-005', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15133', 'IT-005', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15132', 'IT-005', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15131', 'IT-005', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('15130', 'IT-005', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15129', 'IT-005', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15128', 'IT-005', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15127', 'IT-005', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('15126', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15125', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15124', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15123', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('15122', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15121', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15120', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15119', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('15118', 'IT-004', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15117', 'IT-004', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15116', 'IT-004', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15115', 'IT-004', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15114', 'IT-004', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15113', 'IT-004', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15112', 'IT-004', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15111', 'IT-004', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15110', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15109', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15108', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15107', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15106', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15105', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15104', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15103', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15102', 'IT-003', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('15101', 'IT-003', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('15100', 'IT-003', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('15099', 'IT-003', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('15098', 'IT-003', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('15097', 'IT-003', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('15096', 'IT-003', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('15095', 'IT-003', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('15094', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('15093', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('15092', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('15091', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('15090', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('15089', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('15088', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('15087', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('15086', 'IT-002', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('15085', 'IT-002', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('15084', 'IT-002', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('15083', 'IT-002', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('15082', 'IT-002', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('15081', 'IT-002', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('15080', 'IT-002', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('15079', 'IT-002', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('15078', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('15077', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('15076', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('15075', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('15074', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('15073', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('15072', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('15071', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('15070', 'IT-001', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('15069', 'IT-001', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('15068', 'IT-001', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('15067', 'IT-001', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('15066', 'IT-001', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('15065', 'IT-001', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('15064', 'IT-001', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('15063', 'IT-001', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('15062', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('15061', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('15060', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('15059', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('15058', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('15057', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('15056', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('15055', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('15054', 'IT-007', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15053', 'IT-007', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15052', 'IT-007', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15051', 'IT-007', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('15050', 'IT-007', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15049', 'IT-007', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15048', 'IT-007', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15047', 'IT-007', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('15046', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15045', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15044', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15043', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('15042', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15041', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15040', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15039', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('15038', 'IT-008', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15037', 'IT-008', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15036', 'IT-008', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15035', 'IT-008', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('15034', 'IT-008', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15033', 'IT-008', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15032', 'IT-008', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15031', 'IT-008', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('15030', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15029', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15028', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15027', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('15026', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15025', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15024', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15021', 'IT-001', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('15022', 'IT-001', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('15023', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('15020', 'IT-001', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('15018', 'IT-001', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('15019', 'IT-001', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('15017', 'IT-001', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('15014', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('15015', 'IT-001', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('15016', 'IT-001', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('15012', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('15013', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('15009', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('15010', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('15011', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('15007', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('15008', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('16895', 'IT-001', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16896', 'IT-001', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16897', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16898', 'IT-001', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16899', 'IT-001', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16900', 'IT-001', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16901', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16902', 'IT-001', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16903', 'IT-001', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16904', 'IT-001', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16905', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16906', 'IT-001', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16907', 'IT-001', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16908', 'IT-001', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16909', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16910', 'IT-001', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16911', 'IT-003', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16912', 'IT-003', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16913', 'IT-003', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16914', 'IT-003', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16915', 'IT-003', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16916', 'IT-003', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16917', 'IT-003', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16918', 'IT-003', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16919', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16920', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16921', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16922', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16923', 'IT-003', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16924', 'IT-003', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16925', 'IT-003', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16926', 'IT-003', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16927', 'IT-002', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16928', 'IT-002', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16929', 'IT-002', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16930', 'IT-002', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16931', 'IT-002', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16932', 'IT-002', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16933', 'IT-002', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16934', 'IT-002', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16935', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16936', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16937', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16938', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16939', 'IT-002', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16940', 'IT-002', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16941', 'IT-002', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16942', 'IT-002', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16943', 'IT-006', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16944', 'IT-006', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16945', 'IT-006', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16946', 'IT-006', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16947', 'IT-006', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16948', 'IT-006', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16949', 'IT-006', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16950', 'IT-006', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16951', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16952', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16953', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16954', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16955', 'IT-006', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16956', 'IT-006', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16957', 'IT-006', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16958', 'IT-006', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16959', 'IT-005', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16960', 'IT-005', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16961', 'IT-005', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16962', 'IT-005', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16963', 'IT-005', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16964', 'IT-005', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16965', 'IT-005', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16966', 'IT-005', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16967', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16968', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16969', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16970', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16971', 'IT-005', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16972', 'IT-005', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16973', 'IT-005', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16974', 'IT-005', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16975', 'IT-004', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16976', 'IT-004', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16977', 'IT-004', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16978', 'IT-004', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16979', 'IT-004', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16980', 'IT-004', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16981', 'IT-004', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16982', 'IT-004', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16983', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16984', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16985', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16986', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('16987', 'IT-004', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16988', 'IT-004', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16989', 'IT-004', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16990', 'IT-004', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('16991', 'IT-007', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16992', 'IT-007', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16993', 'IT-007', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16994', 'IT-007', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('16995', 'IT-007', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16996', 'IT-007', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16997', 'IT-007', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16998', 'IT-007', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('16999', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('17000', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('17001', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('17002', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('17003', 'IT-007', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('17004', 'IT-007', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('17005', 'IT-007', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('17006', 'IT-007', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('17007', 'IT-009', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('17008', 'IT-009', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('17009', 'IT-009', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('17010', 'IT-009', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('17011', 'IT-009', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('17012', 'IT-009', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('17013', 'IT-009', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('17014', 'IT-009', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('17015', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('17016', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('17017', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('17018', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('17019', 'IT-009', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('17020', 'IT-009', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('17021', 'IT-009', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('17022', 'IT-009', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('17023', 'IT-008', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('17024', 'IT-008', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('17025', 'IT-008', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('17026', 'IT-008', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('17027', 'IT-008', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('17028', 'IT-008', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('17029', 'IT-008', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('17030', 'IT-008', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('17031', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('17032', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('17033', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('17034', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('17035', 'IT-008', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('17036', 'IT-008', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('17037', 'IT-008', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('17038', 'IT-008', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('17071', 'IT-013', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('17072', 'IT-013', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('17073', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('17074', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('17075', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('17076', 'IT-013', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('17077', 'IT-013', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('17078', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('17079', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('17080', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('17081', 'IT-013', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('17082', 'IT-013', 'SAT', 'Satisfactory', '3', '5.99', '', '#008000', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('17055', 'IT-014', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('17056', 'IT-014', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('17057', 'IT-014', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('17058', 'IT-014', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('17059', 'IT-014', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('17060', 'IT-014', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('17061', 'IT-014', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('17062', 'IT-014', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('17063', 'IT-014', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('17064', 'IT-014', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('17065', 'IT-014', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('17066', 'IT-014', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('17067', 'IT-014', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '0', '4');
INSERT INTO `mosscale_tab` VALUES ('17068', 'IT-014', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '0', '3');
INSERT INTO `mosscale_tab` VALUES ('17069', 'IT-014', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '2');
INSERT INTO `mosscale_tab` VALUES ('17070', 'IT-014', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('17083', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('17084', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('17085', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('17086', 'IT-013', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '1', '4');
INSERT INTO `mosscale_tab` VALUES ('17087', 'IT-013', 'OS', 'Over Stock', '6', '9999', '', '#6bceff', '1', '3');
INSERT INTO `mosscale_tab` VALUES ('17088', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '2');
INSERT INTO `mosscale_tab` VALUES ('17089', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '1', '1');
INSERT INTO `mosscale_tab` VALUES ('17090', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6BCEFF', '0', '1');
INSERT INTO `mosscale_tab` VALUES ('17091', 'IT-013', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '2', '4');
INSERT INTO `mosscale_tab` VALUES ('17092', 'IT-013', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '2', '4');
INSERT INTO `mosscale_tab` VALUES ('17093', 'IT-013', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '2', '4');
INSERT INTO `mosscale_tab` VALUES ('17094', 'IT-013', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '2', '4');
INSERT INTO `mosscale_tab` VALUES ('17095', 'IT-013', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '2', '3');
INSERT INTO `mosscale_tab` VALUES ('17096', 'IT-013', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '2', '3');
INSERT INTO `mosscale_tab` VALUES ('17097', 'IT-013', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '2', '3');
INSERT INTO `mosscale_tab` VALUES ('17098', 'IT-013', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '2', '3');
INSERT INTO `mosscale_tab` VALUES ('17099', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '2', '2');
INSERT INTO `mosscale_tab` VALUES ('17100', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '2', '2');
INSERT INTO `mosscale_tab` VALUES ('17101', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '2', '2');
INSERT INTO `mosscale_tab` VALUES ('17102', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '2', '2');
INSERT INTO `mosscale_tab` VALUES ('17103', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '2', '1');
INSERT INTO `mosscale_tab` VALUES ('17104', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '2', '1');
INSERT INTO `mosscale_tab` VALUES ('17105', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '2', '1');
INSERT INTO `mosscale_tab` VALUES ('17106', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '2', '1');
INSERT INTO `mosscale_tab` VALUES ('17107', 'IT-013', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('17108', 'IT-013', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('17109', 'IT-013', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('17110', 'IT-013', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('17111', 'IT-013', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('17112', 'IT-013', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '4', '4');
INSERT INTO `mosscale_tab` VALUES ('17113', 'IT-013', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('17114', 'IT-013', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '4', '3');
INSERT INTO `mosscale_tab` VALUES ('17115', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('17116', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('17117', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('17118', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '2');
INSERT INTO `mosscale_tab` VALUES ('17119', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('17120', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('17121', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('17122', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '4', '1');
INSERT INTO `mosscale_tab` VALUES ('17123', 'IT-013', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('17124', 'IT-013', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('17125', 'IT-013', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('17126', 'IT-013', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('17127', 'IT-013', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '5', '4');
INSERT INTO `mosscale_tab` VALUES ('17128', 'IT-013', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('17129', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('17130', 'IT-013', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('17131', 'IT-013', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '5', '3');
INSERT INTO `mosscale_tab` VALUES ('17132', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('17133', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('17134', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '5', '2');
INSERT INTO `mosscale_tab` VALUES ('17135', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('17136', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('17137', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('17138', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '5', '1');
INSERT INTO `mosscale_tab` VALUES ('17139', 'IT-013', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('17140', 'IT-013', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('17141', 'IT-013', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('17142', 'IT-013', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '6', '4');
INSERT INTO `mosscale_tab` VALUES ('17143', 'IT-013', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('17144', 'IT-013', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('17145', 'IT-013', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('17146', 'IT-013', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '6', '3');
INSERT INTO `mosscale_tab` VALUES ('17147', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('17148', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('17149', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('17150', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '2');
INSERT INTO `mosscale_tab` VALUES ('17151', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('17152', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('17153', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('17154', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '6', '1');
INSERT INTO `mosscale_tab` VALUES ('17155', 'IT-013', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('17156', 'IT-013', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('17157', 'IT-013', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('17158', 'IT-013', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '7', '4');
INSERT INTO `mosscale_tab` VALUES ('17159', 'IT-013', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('17160', 'IT-013', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('17161', 'IT-013', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('17162', 'IT-013', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '7', '3');
INSERT INTO `mosscale_tab` VALUES ('17163', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('17164', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('17165', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('17166', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '2');
INSERT INTO `mosscale_tab` VALUES ('17167', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('17168', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('17169', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('17170', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '7', '1');
INSERT INTO `mosscale_tab` VALUES ('17171', 'IT-013', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('17172', 'IT-013', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('17173', 'IT-013', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('17174', 'IT-013', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '8', '4');
INSERT INTO `mosscale_tab` VALUES ('17175', 'IT-013', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('17176', 'IT-013', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('17177', 'IT-013', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('17178', 'IT-013', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '8', '3');
INSERT INTO `mosscale_tab` VALUES ('17179', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('17180', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('17181', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('17182', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '2');
INSERT INTO `mosscale_tab` VALUES ('17183', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('17184', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('17185', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('17186', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '8', '1');
INSERT INTO `mosscale_tab` VALUES ('17187', 'IT-013', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('17188', 'IT-013', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('17189', 'IT-013', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('17190', 'IT-013', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '9', '4');
INSERT INTO `mosscale_tab` VALUES ('17191', 'IT-013', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('17192', 'IT-013', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('17193', 'IT-013', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('17194', 'IT-013', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '9', '3');
INSERT INTO `mosscale_tab` VALUES ('17195', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('17196', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('17197', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('17198', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '2');
INSERT INTO `mosscale_tab` VALUES ('17199', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('17200', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('17201', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('17202', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '9', '1');
INSERT INTO `mosscale_tab` VALUES ('17203', 'IT-013', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('17204', 'IT-013', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('17205', 'IT-013', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('17206', 'IT-013', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '10', '4');
INSERT INTO `mosscale_tab` VALUES ('17207', 'IT-013', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('17208', 'IT-013', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('17209', 'IT-013', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('17210', 'IT-013', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '10', '3');
INSERT INTO `mosscale_tab` VALUES ('17211', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('17212', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('17213', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('17214', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '2');
INSERT INTO `mosscale_tab` VALUES ('17215', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('17216', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('17217', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('17218', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '10', '1');
INSERT INTO `mosscale_tab` VALUES ('17219', 'IT-013', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('17220', 'IT-013', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('17221', 'IT-013', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('17222', 'IT-013', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '11', '4');
INSERT INTO `mosscale_tab` VALUES ('17223', 'IT-013', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('17224', 'IT-013', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('17225', 'IT-013', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('17226', 'IT-013', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '11', '3');
INSERT INTO `mosscale_tab` VALUES ('17227', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('17228', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('17229', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('17230', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '2');
INSERT INTO `mosscale_tab` VALUES ('17231', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('17232', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('17233', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('17234', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '11', '1');
INSERT INTO `mosscale_tab` VALUES ('17235', 'IT-013', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('17236', 'IT-013', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('17237', 'IT-013', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('17238', 'IT-013', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '12', '4');
INSERT INTO `mosscale_tab` VALUES ('17239', 'IT-013', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('17240', 'IT-013', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('17241', 'IT-013', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('17242', 'IT-013', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '12', '3');
INSERT INTO `mosscale_tab` VALUES ('17243', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('17244', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('17245', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('17246', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '2');
INSERT INTO `mosscale_tab` VALUES ('17247', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('17248', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('17249', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('17250', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '12', '1');
INSERT INTO `mosscale_tab` VALUES ('17251', 'IT-013', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('17252', 'IT-013', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('17253', 'IT-013', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('17254', 'IT-013', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '13', '4');
INSERT INTO `mosscale_tab` VALUES ('17255', 'IT-013', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('17256', 'IT-013', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('17257', 'IT-013', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('17258', 'IT-013', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '13', '3');
INSERT INTO `mosscale_tab` VALUES ('17259', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('17260', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('17261', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('17262', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '2');
INSERT INTO `mosscale_tab` VALUES ('17263', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('17264', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('17265', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('17266', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '13', '1');
INSERT INTO `mosscale_tab` VALUES ('17267', 'IT-013', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('17268', 'IT-013', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('17269', 'IT-013', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('17270', 'IT-013', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('17271', 'IT-013', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '14', '4');
INSERT INTO `mosscale_tab` VALUES ('17272', 'IT-013', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('17273', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('17274', 'IT-013', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('17275', 'IT-013', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '14', '3');
INSERT INTO `mosscale_tab` VALUES ('17276', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('17277', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('17278', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('17279', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('17280', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '2');
INSERT INTO `mosscale_tab` VALUES ('17281', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('17282', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '14', '1');
INSERT INTO `mosscale_tab` VALUES ('17283', 'IT-013', 'SO', 'Stock Out', '0', '0.5', '', '#ff370f', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('17284', 'IT-013', 'SO', 'Stock Out', '0', '0.99', '', '#ff370f', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('17285', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('17286', 'IT-013', 'SO', 'Stock Out', '0', '4.99', '', '#ff370f', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('17287', 'IT-013', 'US', 'Under Stock', '0.51', '0.99', '', '#0000ff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('17288', 'IT-013', 'US', 'Under Stock', '1', '2.99', '', '#0000ff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('17289', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('17290', 'IT-013', 'US', 'Under Stock', '5', '6.99', '', '#0000ff', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('17291', 'IT-013', 'SAT', 'Satisfactory', '1', '2.99', '', '#008000', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('17292', 'IT-013', 'SAT', 'Satisfactory', '3', '6.99', '', '#008000', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('17293', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('17294', 'IT-013', 'SAT', 'Satisfactory', '7', '14.99', '', '#008000', '73', '1');
INSERT INTO `mosscale_tab` VALUES ('17295', 'IT-013', 'OS', 'Over Stock', '3', '9999', '', '#6bceff', '73', '4');
INSERT INTO `mosscale_tab` VALUES ('17296', 'IT-013', 'OS', 'Over Stock', '7', '9999', '', '#6bceff', '73', '3');
INSERT INTO `mosscale_tab` VALUES ('17297', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '2');
INSERT INTO `mosscale_tab` VALUES ('17298', 'IT-013', 'OS', 'Over Stock', '15', '9999', '', '#6bceff', '73', '1');

-- ----------------------------
-- Table structure for provincial_cyp_factors
-- ----------------------------
DROP TABLE IF EXISTS `provincial_cyp_factors`;
CREATE TABLE `provincial_cyp_factors` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `stakeholder_id` int(11) DEFAULT NULL,
  `cyp_factor` decimal(11,9) DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT '1',
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=722 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of provincial_cyp_factors
-- ----------------------------
INSERT INTO `provincial_cyp_factors` VALUES ('1', '1', '1', '1', '0.008333330', '1', '2017-10-24 14:39:20', '1', '2017-10-24 14:39:20');
INSERT INTO `provincial_cyp_factors` VALUES ('2', '1', '2', '1', '0.066666670', '1', '2017-10-24 14:39:20', '1', '2017-10-24 14:39:20');
INSERT INTO `provincial_cyp_factors` VALUES ('3', '1', '3', '1', '0.050000000', '1', '2017-10-24 14:39:20', '1', '2017-10-24 14:39:20');
INSERT INTO `provincial_cyp_factors` VALUES ('4', '1', '4', '1', '3.300000000', '1', '2017-10-24 14:39:20', '1', '2017-10-24 14:39:20');
INSERT INTO `provincial_cyp_factors` VALUES ('5', '1', '5', '1', '4.600000000', '1', '2017-10-24 14:39:20', '1', '2017-10-24 14:39:20');
INSERT INTO `provincial_cyp_factors` VALUES ('6', '1', '6', '1', '0.166666000', '1', '2017-10-24 14:39:20', '1', '2017-10-24 14:39:20');
INSERT INTO `provincial_cyp_factors` VALUES ('7', '1', '7', '1', '0.250000000', '1', '2017-10-24 14:39:20', '1', '2017-10-24 14:39:20');
INSERT INTO `provincial_cyp_factors` VALUES ('8', '1', '8', '1', '2.500000000', '1', '2017-10-24 14:39:20', '1', '2017-10-24 14:39:20');
INSERT INTO `provincial_cyp_factors` VALUES ('9', '1', '9', '1', '0.066666670', '1', '2017-10-24 14:39:20', '1', '2017-10-24 14:39:20');
INSERT INTO `provincial_cyp_factors` VALUES ('10', '1', '10', '1', '0.076923080', '1', '2017-10-24 14:39:21', '1', '2017-10-24 14:39:21');
INSERT INTO `provincial_cyp_factors` VALUES ('11', '1', '11', '1', '3.300000000', '1', '2017-10-24 14:39:21', '1', '2017-10-24 14:39:21');
INSERT INTO `provincial_cyp_factors` VALUES ('12', '1', '13', '1', '3.800000000', '1', '2017-10-24 14:39:21', '1', '2017-10-24 14:39:21');
INSERT INTO `provincial_cyp_factors` VALUES ('13', '1', '14', '1', '3.200000000', '1', '2017-10-24 14:39:21', '1', '2017-10-24 14:39:21');
INSERT INTO `provincial_cyp_factors` VALUES ('14', '1', '30', '1', null, '1', '2017-10-24 14:39:21', '1', '2017-10-24 14:39:21');
INSERT INTO `provincial_cyp_factors` VALUES ('15', '1', '31', '1', '13.000000000', '1', '2017-10-24 14:39:21', '1', '2017-10-24 14:39:21');
INSERT INTO `provincial_cyp_factors` VALUES ('16', '1', '32', '1', '13.000000000', '1', '2017-10-24 14:39:21', '1', '2017-10-24 14:39:21');
INSERT INTO `provincial_cyp_factors` VALUES ('17', '1', '33', '1', null, '1', '2017-10-24 14:39:21', '1', '2017-10-24 14:39:21');
INSERT INTO `provincial_cyp_factors` VALUES ('18', '1', '34', '1', null, '1', '2017-10-24 14:39:21', '1', '2017-10-24 14:39:21');
INSERT INTO `provincial_cyp_factors` VALUES ('19', '1', '1', '2', '0.008333330', '1', '2017-10-24 14:39:21', '1', '2017-10-24 14:39:21');
INSERT INTO `provincial_cyp_factors` VALUES ('20', '1', '2', '2', '0.066666670', '1', '2017-10-24 14:39:21', '1', '2017-10-24 14:39:21');
INSERT INTO `provincial_cyp_factors` VALUES ('21', '1', '3', '2', '0.050000000', '1', '2017-10-24 14:39:21', '1', '2017-10-24 14:39:21');
INSERT INTO `provincial_cyp_factors` VALUES ('22', '1', '4', '2', '3.300000000', '1', '2017-10-24 14:39:21', '1', '2017-10-24 14:39:21');
INSERT INTO `provincial_cyp_factors` VALUES ('23', '1', '5', '2', '4.600000000', '1', '2017-10-24 14:39:21', '1', '2017-10-24 14:39:21');
INSERT INTO `provincial_cyp_factors` VALUES ('24', '1', '6', '2', '0.166666000', '1', '2017-10-24 14:39:21', '1', '2017-10-24 14:39:21');
INSERT INTO `provincial_cyp_factors` VALUES ('25', '1', '7', '2', '0.250000000', '1', '2017-10-24 14:39:21', '1', '2017-10-24 14:39:21');
INSERT INTO `provincial_cyp_factors` VALUES ('26', '1', '8', '2', '2.500000000', '1', '2017-10-24 14:39:22', '1', '2017-10-24 14:39:22');
INSERT INTO `provincial_cyp_factors` VALUES ('27', '1', '9', '2', '0.066666670', '1', '2017-10-24 14:39:22', '1', '2017-10-24 14:39:22');
INSERT INTO `provincial_cyp_factors` VALUES ('28', '1', '10', '2', '0.076923080', '1', '2017-10-24 14:39:22', '1', '2017-10-24 14:39:22');
INSERT INTO `provincial_cyp_factors` VALUES ('29', '1', '11', '2', '3.300000000', '1', '2017-10-24 14:39:22', '1', '2017-10-24 14:39:22');
INSERT INTO `provincial_cyp_factors` VALUES ('30', '1', '13', '2', '3.800000000', '1', '2017-10-24 14:39:22', '1', '2017-10-24 14:39:22');
INSERT INTO `provincial_cyp_factors` VALUES ('31', '1', '14', '2', '3.200000000', '1', '2017-10-24 14:39:22', '1', '2017-10-24 14:39:22');
INSERT INTO `provincial_cyp_factors` VALUES ('32', '1', '30', '2', null, '1', '2017-10-24 14:39:22', '1', '2017-10-24 14:39:22');
INSERT INTO `provincial_cyp_factors` VALUES ('33', '1', '31', '2', '13.000000000', '1', '2017-10-24 14:39:22', '1', '2017-10-24 14:39:22');
INSERT INTO `provincial_cyp_factors` VALUES ('34', '1', '32', '2', '13.000000000', '1', '2017-10-24 14:39:22', '1', '2017-10-24 14:39:22');
INSERT INTO `provincial_cyp_factors` VALUES ('35', '1', '33', '2', null, '1', '2017-10-24 14:39:22', '1', '2017-10-24 14:39:22');
INSERT INTO `provincial_cyp_factors` VALUES ('36', '1', '34', '2', null, '1', '2017-10-24 14:39:22', '1', '2017-10-24 14:39:22');
INSERT INTO `provincial_cyp_factors` VALUES ('37', '1', '1', '7', '0.008333330', '1', '2017-10-24 14:39:22', '1', '2017-10-24 14:39:22');
INSERT INTO `provincial_cyp_factors` VALUES ('38', '1', '2', '7', '0.066666670', '1', '2017-10-24 14:39:22', '1', '2017-10-24 14:39:22');
INSERT INTO `provincial_cyp_factors` VALUES ('39', '1', '3', '7', '0.050000000', '1', '2017-10-24 14:39:22', '1', '2017-10-24 14:39:22');
INSERT INTO `provincial_cyp_factors` VALUES ('40', '1', '4', '7', '3.300000000', '1', '2017-10-24 14:39:22', '1', '2017-10-24 14:39:22');
INSERT INTO `provincial_cyp_factors` VALUES ('41', '1', '5', '7', '4.600000000', '1', '2017-10-24 14:39:22', '1', '2017-10-24 14:39:22');
INSERT INTO `provincial_cyp_factors` VALUES ('42', '1', '6', '7', '0.166666000', '1', '2017-10-24 14:39:23', '1', '2017-10-24 14:39:23');
INSERT INTO `provincial_cyp_factors` VALUES ('43', '1', '7', '7', '0.250000000', '1', '2017-10-24 14:39:23', '1', '2017-10-24 14:39:23');
INSERT INTO `provincial_cyp_factors` VALUES ('44', '1', '8', '7', '2.500000000', '1', '2017-10-24 14:39:23', '1', '2017-10-24 14:39:23');
INSERT INTO `provincial_cyp_factors` VALUES ('45', '1', '9', '7', '0.066666670', '1', '2017-10-24 14:39:23', '1', '2017-10-24 14:39:23');
INSERT INTO `provincial_cyp_factors` VALUES ('46', '1', '10', '7', '0.076923080', '1', '2017-10-24 14:39:23', '1', '2017-10-24 14:39:23');
INSERT INTO `provincial_cyp_factors` VALUES ('47', '1', '11', '7', '3.300000000', '1', '2017-10-24 14:39:23', '1', '2017-10-24 14:39:23');
INSERT INTO `provincial_cyp_factors` VALUES ('48', '1', '13', '7', '3.800000000', '1', '2017-10-24 14:39:23', '1', '2017-10-24 14:39:23');
INSERT INTO `provincial_cyp_factors` VALUES ('49', '1', '14', '7', '3.200000000', '1', '2017-10-24 14:39:23', '1', '2017-10-24 14:39:23');
INSERT INTO `provincial_cyp_factors` VALUES ('50', '1', '30', '7', null, '1', '2017-10-24 14:39:23', '1', '2017-10-24 14:39:23');
INSERT INTO `provincial_cyp_factors` VALUES ('51', '1', '31', '7', '13.000000000', '1', '2017-10-24 14:39:23', '1', '2017-10-24 14:39:23');
INSERT INTO `provincial_cyp_factors` VALUES ('52', '1', '32', '7', '13.000000000', '1', '2017-10-24 14:39:23', '1', '2017-10-24 14:39:23');
INSERT INTO `provincial_cyp_factors` VALUES ('53', '1', '33', '7', null, '1', '2017-10-24 14:39:23', '1', '2017-10-24 14:39:23');
INSERT INTO `provincial_cyp_factors` VALUES ('54', '1', '34', '7', null, '1', '2017-10-24 14:39:23', '1', '2017-10-24 14:39:23');
INSERT INTO `provincial_cyp_factors` VALUES ('55', '1', '1', '9', '0.008333330', '1', '2017-10-24 14:39:23', '1', '2017-10-24 14:39:23');
INSERT INTO `provincial_cyp_factors` VALUES ('56', '1', '2', '9', '0.066666670', '1', '2017-10-24 14:39:23', '1', '2017-10-24 14:39:23');
INSERT INTO `provincial_cyp_factors` VALUES ('57', '1', '3', '9', '0.050000000', '1', '2017-10-24 14:39:24', '1', '2017-10-24 14:39:24');
INSERT INTO `provincial_cyp_factors` VALUES ('58', '1', '4', '9', '3.300000000', '1', '2017-10-24 14:39:24', '1', '2017-10-24 14:39:24');
INSERT INTO `provincial_cyp_factors` VALUES ('59', '1', '5', '9', '4.600000000', '1', '2017-10-24 14:39:24', '1', '2017-10-24 14:39:24');
INSERT INTO `provincial_cyp_factors` VALUES ('60', '1', '6', '9', '0.166666000', '1', '2017-10-24 14:39:24', '1', '2017-10-24 14:39:24');
INSERT INTO `provincial_cyp_factors` VALUES ('61', '1', '7', '9', '0.250000000', '1', '2017-10-24 14:39:24', '1', '2017-10-24 14:39:24');
INSERT INTO `provincial_cyp_factors` VALUES ('62', '1', '8', '9', '2.500000000', '1', '2017-10-24 14:39:24', '1', '2017-10-24 14:39:24');
INSERT INTO `provincial_cyp_factors` VALUES ('63', '1', '9', '9', '0.066666670', '1', '2017-10-24 14:39:24', '1', '2017-10-24 14:39:24');
INSERT INTO `provincial_cyp_factors` VALUES ('64', '1', '10', '9', '0.076923080', '1', '2017-10-24 14:39:24', '1', '2017-10-24 14:39:24');
INSERT INTO `provincial_cyp_factors` VALUES ('65', '1', '11', '9', '3.300000000', '1', '2017-10-24 14:39:24', '1', '2017-10-24 14:39:24');
INSERT INTO `provincial_cyp_factors` VALUES ('66', '1', '13', '9', '3.800000000', '1', '2017-10-24 14:39:24', '1', '2017-10-24 14:39:24');
INSERT INTO `provincial_cyp_factors` VALUES ('67', '1', '14', '9', '3.200000000', '1', '2017-10-24 14:39:24', '1', '2017-10-24 14:39:24');
INSERT INTO `provincial_cyp_factors` VALUES ('68', '1', '30', '9', null, '1', '2017-10-24 14:39:24', '1', '2017-10-24 14:39:24');
INSERT INTO `provincial_cyp_factors` VALUES ('69', '1', '31', '9', '13.000000000', '1', '2017-10-24 14:39:24', '1', '2017-10-24 14:39:24');
INSERT INTO `provincial_cyp_factors` VALUES ('70', '1', '32', '9', '13.000000000', '1', '2017-10-24 14:39:24', '1', '2017-10-24 14:39:24');
INSERT INTO `provincial_cyp_factors` VALUES ('71', '1', '33', '9', null, '1', '2017-10-24 14:39:24', '1', '2017-10-24 14:39:24');
INSERT INTO `provincial_cyp_factors` VALUES ('72', '1', '34', '9', null, '1', '2017-10-24 14:39:24', '1', '2017-10-24 14:39:24');
INSERT INTO `provincial_cyp_factors` VALUES ('73', '1', '1', '73', '0.008333330', '1', '2017-10-24 14:39:25', '1', '2017-10-24 14:39:25');
INSERT INTO `provincial_cyp_factors` VALUES ('74', '1', '2', '73', '0.066666670', '1', '2017-10-24 14:39:25', '1', '2017-10-24 14:39:25');
INSERT INTO `provincial_cyp_factors` VALUES ('75', '1', '3', '73', '0.050000000', '1', '2017-10-24 14:39:25', '1', '2017-10-24 14:39:25');
INSERT INTO `provincial_cyp_factors` VALUES ('76', '1', '4', '73', '3.300000000', '1', '2017-10-24 14:39:25', '1', '2017-10-24 14:39:25');
INSERT INTO `provincial_cyp_factors` VALUES ('77', '1', '5', '73', '4.600000000', '1', '2017-10-24 14:39:25', '1', '2017-10-24 14:39:25');
INSERT INTO `provincial_cyp_factors` VALUES ('78', '1', '6', '73', '0.166666000', '1', '2017-10-24 14:39:25', '1', '2017-10-24 14:39:25');
INSERT INTO `provincial_cyp_factors` VALUES ('79', '1', '7', '73', '0.250000000', '1', '2017-10-24 14:39:25', '1', '2017-10-24 14:39:25');
INSERT INTO `provincial_cyp_factors` VALUES ('80', '1', '8', '73', '2.500000000', '1', '2017-10-24 14:39:25', '1', '2017-10-24 14:39:25');
INSERT INTO `provincial_cyp_factors` VALUES ('81', '1', '9', '73', '0.066666670', '1', '2017-10-24 14:39:25', '1', '2017-10-24 14:39:25');
INSERT INTO `provincial_cyp_factors` VALUES ('82', '1', '10', '73', '0.076923080', '1', '2017-10-24 14:39:25', '1', '2017-10-24 14:39:25');
INSERT INTO `provincial_cyp_factors` VALUES ('83', '1', '11', '73', '3.300000000', '1', '2017-10-24 14:39:25', '1', '2017-10-24 14:39:25');
INSERT INTO `provincial_cyp_factors` VALUES ('84', '1', '13', '73', '3.800000000', '1', '2017-10-24 14:39:25', '1', '2017-10-24 14:39:25');
INSERT INTO `provincial_cyp_factors` VALUES ('85', '1', '14', '73', '3.200000000', '1', '2017-10-24 14:39:25', '1', '2017-10-24 14:39:25');
INSERT INTO `provincial_cyp_factors` VALUES ('86', '1', '30', '73', null, '1', '2017-10-24 14:39:25', '1', '2017-10-24 14:39:25');
INSERT INTO `provincial_cyp_factors` VALUES ('87', '1', '31', '73', '13.000000000', '1', '2017-10-24 14:39:25', '1', '2017-10-24 14:39:25');
INSERT INTO `provincial_cyp_factors` VALUES ('88', '1', '32', '73', '13.000000000', '1', '2017-10-24 14:39:25', '1', '2017-10-24 14:39:25');
INSERT INTO `provincial_cyp_factors` VALUES ('89', '1', '33', '73', null, '1', '2017-10-24 14:39:26', '1', '2017-10-24 14:39:26');
INSERT INTO `provincial_cyp_factors` VALUES ('90', '1', '34', '73', null, '1', '2017-10-24 14:39:26', '1', '2017-10-24 14:39:26');
INSERT INTO `provincial_cyp_factors` VALUES ('91', '2', '1', '1', '0.008333330', '1', '2017-10-24 14:39:26', '1', '2017-10-24 14:39:26');
INSERT INTO `provincial_cyp_factors` VALUES ('92', '2', '2', '1', '0.066666670', '1', '2017-10-24 14:39:26', '1', '2017-10-24 14:39:26');
INSERT INTO `provincial_cyp_factors` VALUES ('93', '2', '3', '1', '0.050000000', '1', '2017-10-24 14:39:26', '1', '2017-10-24 14:39:26');
INSERT INTO `provincial_cyp_factors` VALUES ('94', '2', '4', '1', '3.300000000', '1', '2017-10-24 14:39:26', '1', '2017-10-24 14:39:26');
INSERT INTO `provincial_cyp_factors` VALUES ('95', '2', '5', '1', '4.600000000', '1', '2017-10-24 14:39:26', '1', '2017-10-24 14:39:26');
INSERT INTO `provincial_cyp_factors` VALUES ('96', '2', '6', '1', '0.166666000', '1', '2017-10-24 14:39:26', '1', '2017-10-24 14:39:26');
INSERT INTO `provincial_cyp_factors` VALUES ('97', '2', '7', '1', '0.250000000', '1', '2017-10-24 14:39:26', '1', '2017-10-24 14:39:26');
INSERT INTO `provincial_cyp_factors` VALUES ('98', '2', '8', '1', '2.500000000', '1', '2017-10-24 14:39:26', '1', '2017-10-24 14:39:26');
INSERT INTO `provincial_cyp_factors` VALUES ('99', '2', '9', '1', '0.066666670', '1', '2017-10-24 14:39:26', '1', '2017-10-24 14:39:26');
INSERT INTO `provincial_cyp_factors` VALUES ('100', '2', '10', '1', '0.076923080', '1', '2017-10-24 14:39:26', '1', '2017-10-24 14:39:26');
INSERT INTO `provincial_cyp_factors` VALUES ('101', '2', '11', '1', '3.300000000', '1', '2017-10-24 14:39:26', '1', '2017-10-24 14:39:26');
INSERT INTO `provincial_cyp_factors` VALUES ('102', '2', '13', '1', '3.800000000', '1', '2017-10-24 14:39:26', '1', '2017-10-24 14:39:26');
INSERT INTO `provincial_cyp_factors` VALUES ('103', '2', '14', '1', '3.200000000', '1', '2017-10-24 14:39:26', '1', '2017-10-24 14:39:26');
INSERT INTO `provincial_cyp_factors` VALUES ('104', '2', '30', '1', null, '1', '2017-10-24 14:39:26', '1', '2017-10-24 14:39:26');
INSERT INTO `provincial_cyp_factors` VALUES ('105', '2', '31', '1', '10.000000000', '1', '2017-10-24 14:39:27', '1', '2017-10-24 14:39:27');
INSERT INTO `provincial_cyp_factors` VALUES ('106', '2', '32', '1', '10.000000000', '1', '2017-10-24 14:39:27', '1', '2017-10-24 14:39:27');
INSERT INTO `provincial_cyp_factors` VALUES ('107', '2', '33', '1', null, '1', '2017-10-24 14:39:27', '1', '2017-10-24 14:39:27');
INSERT INTO `provincial_cyp_factors` VALUES ('108', '2', '34', '1', null, '1', '2017-10-24 14:39:27', '1', '2017-10-24 14:39:27');
INSERT INTO `provincial_cyp_factors` VALUES ('109', '2', '1', '2', '0.008333330', '1', '2017-10-24 14:39:27', '1', '2017-10-24 14:39:27');
INSERT INTO `provincial_cyp_factors` VALUES ('110', '2', '2', '2', '0.066666670', '1', '2017-10-24 14:39:27', '1', '2017-10-24 14:39:27');
INSERT INTO `provincial_cyp_factors` VALUES ('111', '2', '3', '2', '0.050000000', '1', '2017-10-24 14:39:27', '1', '2017-10-24 14:39:27');
INSERT INTO `provincial_cyp_factors` VALUES ('112', '2', '4', '2', '3.300000000', '1', '2017-10-24 14:39:27', '1', '2017-10-24 14:39:27');
INSERT INTO `provincial_cyp_factors` VALUES ('113', '2', '5', '2', '4.600000000', '1', '2017-10-24 14:39:27', '1', '2017-10-24 14:39:27');
INSERT INTO `provincial_cyp_factors` VALUES ('114', '2', '6', '2', '0.166666000', '1', '2017-10-24 14:39:27', '1', '2017-10-24 14:39:27');
INSERT INTO `provincial_cyp_factors` VALUES ('115', '2', '7', '2', '0.250000000', '1', '2017-10-24 14:39:27', '1', '2017-10-24 14:39:27');
INSERT INTO `provincial_cyp_factors` VALUES ('116', '2', '8', '2', '2.500000000', '1', '2017-10-24 14:39:27', '1', '2017-10-24 14:39:27');
INSERT INTO `provincial_cyp_factors` VALUES ('117', '2', '9', '2', '0.066666670', '1', '2017-10-24 14:39:27', '1', '2017-10-24 14:39:27');
INSERT INTO `provincial_cyp_factors` VALUES ('118', '2', '10', '2', '0.076923080', '1', '2017-10-24 14:39:27', '1', '2017-10-24 14:39:27');
INSERT INTO `provincial_cyp_factors` VALUES ('119', '2', '11', '2', '3.300000000', '1', '2017-10-24 14:39:27', '1', '2017-10-24 14:39:27');
INSERT INTO `provincial_cyp_factors` VALUES ('120', '2', '13', '2', '3.800000000', '1', '2017-10-24 14:39:28', '1', '2017-10-24 14:39:28');
INSERT INTO `provincial_cyp_factors` VALUES ('121', '2', '14', '2', '3.200000000', '1', '2017-10-24 14:39:28', '1', '2017-10-24 14:39:28');
INSERT INTO `provincial_cyp_factors` VALUES ('122', '2', '30', '2', null, '1', '2017-10-24 14:39:28', '1', '2017-10-24 14:39:28');
INSERT INTO `provincial_cyp_factors` VALUES ('123', '2', '31', '2', '10.000000000', '1', '2017-10-24 14:39:28', '1', '2017-10-24 14:39:28');
INSERT INTO `provincial_cyp_factors` VALUES ('124', '2', '32', '2', '10.000000000', '1', '2017-10-24 14:39:28', '1', '2017-10-24 14:39:28');
INSERT INTO `provincial_cyp_factors` VALUES ('125', '2', '33', '2', null, '1', '2017-10-24 14:39:28', '1', '2017-10-24 14:39:28');
INSERT INTO `provincial_cyp_factors` VALUES ('126', '2', '34', '2', null, '1', '2017-10-24 14:39:28', '1', '2017-10-24 14:39:28');
INSERT INTO `provincial_cyp_factors` VALUES ('127', '2', '1', '7', '0.008333330', '1', '2017-10-24 14:39:28', '1', '2017-10-24 14:39:28');
INSERT INTO `provincial_cyp_factors` VALUES ('128', '2', '2', '7', '0.066666670', '1', '2017-10-24 14:39:28', '1', '2017-10-24 14:39:28');
INSERT INTO `provincial_cyp_factors` VALUES ('129', '2', '3', '7', '0.050000000', '1', '2017-10-24 14:39:28', '1', '2017-10-24 14:39:28');
INSERT INTO `provincial_cyp_factors` VALUES ('130', '2', '4', '7', '3.300000000', '1', '2017-10-24 14:39:28', '1', '2017-10-24 14:39:28');
INSERT INTO `provincial_cyp_factors` VALUES ('131', '2', '5', '7', '4.600000000', '1', '2017-10-24 14:39:28', '1', '2017-10-24 14:39:28');
INSERT INTO `provincial_cyp_factors` VALUES ('132', '2', '6', '7', '0.166666000', '1', '2017-10-24 14:39:28', '1', '2017-10-24 14:39:28');
INSERT INTO `provincial_cyp_factors` VALUES ('133', '2', '7', '7', '0.250000000', '1', '2017-10-24 14:39:28', '1', '2017-10-24 14:39:28');
INSERT INTO `provincial_cyp_factors` VALUES ('134', '2', '8', '7', '2.500000000', '1', '2017-10-24 14:39:28', '1', '2017-10-24 14:39:28');
INSERT INTO `provincial_cyp_factors` VALUES ('135', '2', '9', '7', '0.066666670', '1', '2017-10-24 14:39:28', '1', '2017-10-24 14:39:28');
INSERT INTO `provincial_cyp_factors` VALUES ('136', '2', '10', '7', '0.076923080', '1', '2017-10-24 14:39:29', '1', '2017-10-24 14:39:29');
INSERT INTO `provincial_cyp_factors` VALUES ('137', '2', '11', '7', '3.300000000', '1', '2017-10-24 14:39:29', '1', '2017-10-24 14:39:29');
INSERT INTO `provincial_cyp_factors` VALUES ('138', '2', '13', '7', '3.800000000', '1', '2017-10-24 14:39:29', '1', '2017-10-24 14:39:29');
INSERT INTO `provincial_cyp_factors` VALUES ('139', '2', '14', '7', '3.200000000', '1', '2017-10-24 14:39:29', '1', '2017-10-24 14:39:29');
INSERT INTO `provincial_cyp_factors` VALUES ('140', '2', '30', '7', null, '1', '2017-10-24 14:39:29', '1', '2017-10-24 14:39:29');
INSERT INTO `provincial_cyp_factors` VALUES ('141', '2', '31', '7', '10.000000000', '1', '2017-10-24 14:39:29', '1', '2017-10-24 14:39:29');
INSERT INTO `provincial_cyp_factors` VALUES ('142', '2', '32', '7', '10.000000000', '1', '2017-10-24 14:39:29', '1', '2017-10-24 14:39:29');
INSERT INTO `provincial_cyp_factors` VALUES ('143', '2', '33', '7', null, '1', '2017-10-24 14:39:29', '1', '2017-10-24 14:39:29');
INSERT INTO `provincial_cyp_factors` VALUES ('144', '2', '34', '7', null, '1', '2017-10-24 14:39:29', '1', '2017-10-24 14:39:29');
INSERT INTO `provincial_cyp_factors` VALUES ('145', '2', '1', '9', '0.008333330', '1', '2017-10-24 14:39:29', '1', '2017-10-24 14:39:29');
INSERT INTO `provincial_cyp_factors` VALUES ('146', '2', '2', '9', '0.066666670', '1', '2017-10-24 14:39:29', '1', '2017-10-24 14:39:29');
INSERT INTO `provincial_cyp_factors` VALUES ('147', '2', '3', '9', '0.050000000', '1', '2017-10-24 14:39:29', '1', '2017-10-24 14:39:29');
INSERT INTO `provincial_cyp_factors` VALUES ('148', '2', '4', '9', '3.300000000', '1', '2017-10-24 14:39:29', '1', '2017-10-24 14:39:29');
INSERT INTO `provincial_cyp_factors` VALUES ('149', '2', '5', '9', '4.600000000', '1', '2017-10-24 14:39:29', '1', '2017-10-24 14:39:29');
INSERT INTO `provincial_cyp_factors` VALUES ('150', '2', '6', '9', '0.166666000', '1', '2017-10-24 14:39:29', '1', '2017-10-24 14:39:29');
INSERT INTO `provincial_cyp_factors` VALUES ('151', '2', '7', '9', '0.250000000', '1', '2017-10-24 14:39:29', '1', '2017-10-24 14:39:29');
INSERT INTO `provincial_cyp_factors` VALUES ('152', '2', '8', '9', '2.500000000', '1', '2017-10-24 14:39:30', '1', '2017-10-24 14:39:30');
INSERT INTO `provincial_cyp_factors` VALUES ('153', '2', '9', '9', '0.066666670', '1', '2017-10-24 14:39:30', '1', '2017-10-24 14:39:30');
INSERT INTO `provincial_cyp_factors` VALUES ('154', '2', '10', '9', '0.076923080', '1', '2017-10-24 14:39:30', '1', '2017-10-24 14:39:30');
INSERT INTO `provincial_cyp_factors` VALUES ('155', '2', '11', '9', '3.300000000', '1', '2017-10-24 14:39:30', '1', '2017-10-24 14:39:30');
INSERT INTO `provincial_cyp_factors` VALUES ('156', '2', '13', '9', '3.800000000', '1', '2017-10-24 14:39:30', '1', '2017-10-24 14:39:30');
INSERT INTO `provincial_cyp_factors` VALUES ('157', '2', '14', '9', '3.200000000', '1', '2017-10-24 14:39:30', '1', '2017-10-24 14:39:30');
INSERT INTO `provincial_cyp_factors` VALUES ('158', '2', '30', '9', null, '1', '2017-10-24 14:39:30', '1', '2017-10-24 14:39:30');
INSERT INTO `provincial_cyp_factors` VALUES ('159', '2', '31', '9', '10.000000000', '1', '2017-10-24 14:39:30', '1', '2017-10-24 14:39:30');
INSERT INTO `provincial_cyp_factors` VALUES ('160', '2', '32', '9', '10.000000000', '1', '2017-10-24 14:39:30', '1', '2017-10-24 14:39:30');
INSERT INTO `provincial_cyp_factors` VALUES ('161', '2', '33', '9', null, '1', '2017-10-24 14:39:30', '1', '2017-10-24 14:39:30');
INSERT INTO `provincial_cyp_factors` VALUES ('162', '2', '34', '9', null, '1', '2017-10-24 14:39:30', '1', '2017-10-24 14:39:30');
INSERT INTO `provincial_cyp_factors` VALUES ('163', '2', '1', '73', '0.008333330', '1', '2017-10-24 14:39:30', '1', '2017-10-24 14:39:30');
INSERT INTO `provincial_cyp_factors` VALUES ('164', '2', '2', '73', '0.066666670', '1', '2017-10-24 14:39:30', '1', '2017-10-24 14:39:30');
INSERT INTO `provincial_cyp_factors` VALUES ('165', '2', '3', '73', '0.050000000', '1', '2017-10-24 14:39:30', '1', '2017-10-24 14:39:30');
INSERT INTO `provincial_cyp_factors` VALUES ('166', '2', '4', '73', '3.300000000', '1', '2017-10-24 14:39:30', '1', '2017-10-24 14:39:30');
INSERT INTO `provincial_cyp_factors` VALUES ('167', '2', '5', '73', '4.600000000', '1', '2017-10-24 14:39:30', '1', '2017-10-24 14:39:30');
INSERT INTO `provincial_cyp_factors` VALUES ('168', '2', '6', '73', '0.166666000', '1', '2017-10-24 14:39:31', '1', '2017-10-24 14:39:31');
INSERT INTO `provincial_cyp_factors` VALUES ('169', '2', '7', '73', '0.250000000', '1', '2017-10-24 14:39:31', '1', '2017-10-24 14:39:31');
INSERT INTO `provincial_cyp_factors` VALUES ('170', '2', '8', '73', '2.500000000', '1', '2017-10-24 14:39:31', '1', '2017-10-24 14:39:31');
INSERT INTO `provincial_cyp_factors` VALUES ('171', '2', '9', '73', '0.066666670', '1', '2017-10-24 14:39:31', '1', '2017-10-24 14:39:31');
INSERT INTO `provincial_cyp_factors` VALUES ('172', '2', '10', '73', '0.076923080', '1', '2017-10-24 14:39:31', '1', '2017-10-24 14:39:31');
INSERT INTO `provincial_cyp_factors` VALUES ('173', '2', '11', '73', '3.300000000', '1', '2017-10-24 14:39:31', '1', '2017-10-24 14:39:31');
INSERT INTO `provincial_cyp_factors` VALUES ('174', '2', '13', '73', '3.800000000', '1', '2017-10-24 14:39:31', '1', '2017-10-24 14:39:31');
INSERT INTO `provincial_cyp_factors` VALUES ('175', '2', '14', '73', '3.200000000', '1', '2017-10-24 14:39:31', '1', '2017-10-24 14:39:31');
INSERT INTO `provincial_cyp_factors` VALUES ('176', '2', '30', '73', null, '1', '2017-10-24 14:39:31', '1', '2017-10-24 14:39:31');
INSERT INTO `provincial_cyp_factors` VALUES ('177', '2', '31', '73', '10.000000000', '1', '2017-10-24 14:39:31', '1', '2017-10-24 14:39:31');
INSERT INTO `provincial_cyp_factors` VALUES ('178', '2', '32', '73', '10.000000000', '1', '2017-10-24 14:39:31', '1', '2017-10-24 14:39:31');
INSERT INTO `provincial_cyp_factors` VALUES ('179', '2', '33', '73', null, '1', '2017-10-24 14:39:31', '1', '2017-10-24 14:39:31');
INSERT INTO `provincial_cyp_factors` VALUES ('180', '2', '34', '73', null, '1', '2017-10-24 14:39:31', '1', '2017-10-24 14:39:31');
INSERT INTO `provincial_cyp_factors` VALUES ('181', '3', '1', '1', '0.008333330', '1', '2017-10-24 14:39:31', '1', '2017-10-24 14:39:31');
INSERT INTO `provincial_cyp_factors` VALUES ('182', '3', '2', '1', '0.066666670', '1', '2017-10-24 14:39:31', '1', '2017-10-24 14:39:31');
INSERT INTO `provincial_cyp_factors` VALUES ('183', '3', '3', '1', '0.050000000', '1', '2017-10-24 14:39:31', '1', '2017-10-24 14:39:31');
INSERT INTO `provincial_cyp_factors` VALUES ('184', '3', '4', '1', '3.300000000', '1', '2017-10-24 14:39:32', '1', '2017-10-24 14:39:32');
INSERT INTO `provincial_cyp_factors` VALUES ('185', '3', '5', '1', '4.600000000', '1', '2017-10-24 14:39:32', '1', '2017-10-24 14:39:32');
INSERT INTO `provincial_cyp_factors` VALUES ('186', '3', '6', '1', '0.166666000', '1', '2017-10-24 14:39:32', '1', '2017-10-24 14:39:32');
INSERT INTO `provincial_cyp_factors` VALUES ('187', '3', '7', '1', '0.250000000', '1', '2017-10-24 14:39:32', '1', '2017-10-24 14:39:32');
INSERT INTO `provincial_cyp_factors` VALUES ('188', '3', '8', '1', '2.500000000', '1', '2017-10-24 14:39:32', '1', '2017-10-24 14:39:32');
INSERT INTO `provincial_cyp_factors` VALUES ('189', '3', '9', '1', '0.066666670', '1', '2017-10-24 14:39:32', '1', '2017-10-24 14:39:32');
INSERT INTO `provincial_cyp_factors` VALUES ('190', '3', '10', '1', '0.076923080', '1', '2017-10-24 14:39:32', '1', '2017-10-24 14:39:32');
INSERT INTO `provincial_cyp_factors` VALUES ('191', '3', '11', '1', '3.300000000', '1', '2017-10-24 14:39:32', '1', '2017-10-24 14:39:32');
INSERT INTO `provincial_cyp_factors` VALUES ('192', '3', '13', '1', '3.800000000', '1', '2017-10-24 14:39:32', '1', '2017-10-24 14:39:32');
INSERT INTO `provincial_cyp_factors` VALUES ('193', '3', '14', '1', '3.200000000', '1', '2017-10-24 14:39:32', '1', '2017-10-24 14:39:32');
INSERT INTO `provincial_cyp_factors` VALUES ('194', '3', '30', '1', null, '1', '2017-10-24 14:39:32', '1', '2017-10-24 14:39:32');
INSERT INTO `provincial_cyp_factors` VALUES ('195', '3', '31', '1', '13.000000000', '1', '2017-10-24 14:39:32', '1', '2017-10-24 14:39:32');
INSERT INTO `provincial_cyp_factors` VALUES ('196', '3', '32', '1', '13.000000000', '1', '2017-10-24 14:39:32', '1', '2017-10-24 14:39:32');
INSERT INTO `provincial_cyp_factors` VALUES ('197', '3', '33', '1', null, '1', '2017-10-24 14:39:32', '1', '2017-10-24 14:39:32');
INSERT INTO `provincial_cyp_factors` VALUES ('198', '3', '34', '1', null, '1', '2017-10-24 14:39:32', '1', '2017-10-24 14:39:32');
INSERT INTO `provincial_cyp_factors` VALUES ('199', '3', '1', '2', '0.008333330', '1', '2017-10-24 14:39:32', '1', '2017-10-24 14:39:32');
INSERT INTO `provincial_cyp_factors` VALUES ('200', '3', '2', '2', '0.066666670', '1', '2017-10-24 14:39:33', '1', '2017-10-24 14:39:33');
INSERT INTO `provincial_cyp_factors` VALUES ('201', '3', '3', '2', '0.050000000', '1', '2017-10-24 14:39:33', '1', '2017-10-24 14:39:33');
INSERT INTO `provincial_cyp_factors` VALUES ('202', '3', '4', '2', '3.300000000', '1', '2017-10-24 14:39:33', '1', '2017-10-24 14:39:33');
INSERT INTO `provincial_cyp_factors` VALUES ('203', '3', '5', '2', '4.600000000', '1', '2017-10-24 14:39:33', '1', '2017-10-24 14:39:33');
INSERT INTO `provincial_cyp_factors` VALUES ('204', '3', '6', '2', '0.166666000', '1', '2017-10-24 14:39:33', '1', '2017-10-24 14:39:33');
INSERT INTO `provincial_cyp_factors` VALUES ('205', '3', '7', '2', '0.250000000', '1', '2017-10-24 14:39:33', '1', '2017-10-24 14:39:33');
INSERT INTO `provincial_cyp_factors` VALUES ('206', '3', '8', '2', '2.500000000', '1', '2017-10-24 14:39:33', '1', '2017-10-24 14:39:33');
INSERT INTO `provincial_cyp_factors` VALUES ('207', '3', '9', '2', '0.066666670', '1', '2017-10-24 14:39:33', '1', '2017-10-24 14:39:33');
INSERT INTO `provincial_cyp_factors` VALUES ('208', '3', '10', '2', '0.076923080', '1', '2017-10-24 14:39:33', '1', '2017-10-24 14:39:33');
INSERT INTO `provincial_cyp_factors` VALUES ('209', '3', '11', '2', '3.300000000', '1', '2017-10-24 14:39:33', '1', '2017-10-24 14:39:33');
INSERT INTO `provincial_cyp_factors` VALUES ('210', '3', '13', '2', '3.800000000', '1', '2017-10-24 14:39:33', '1', '2017-10-24 14:39:33');
INSERT INTO `provincial_cyp_factors` VALUES ('211', '3', '14', '2', '3.200000000', '1', '2017-10-24 14:39:33', '1', '2017-10-24 14:39:33');
INSERT INTO `provincial_cyp_factors` VALUES ('212', '3', '30', '2', null, '1', '2017-10-24 14:39:33', '1', '2017-10-24 14:39:33');
INSERT INTO `provincial_cyp_factors` VALUES ('213', '3', '31', '2', '13.000000000', '1', '2017-10-24 14:39:33', '1', '2017-10-24 14:39:33');
INSERT INTO `provincial_cyp_factors` VALUES ('214', '3', '32', '2', '13.000000000', '1', '2017-10-24 14:39:33', '1', '2017-10-24 14:39:33');
INSERT INTO `provincial_cyp_factors` VALUES ('215', '3', '33', '2', null, '1', '2017-10-24 14:39:33', '1', '2017-10-24 14:39:33');
INSERT INTO `provincial_cyp_factors` VALUES ('216', '3', '34', '2', null, '1', '2017-10-24 14:39:34', '1', '2017-10-24 14:39:34');
INSERT INTO `provincial_cyp_factors` VALUES ('217', '3', '1', '7', '0.008333330', '1', '2017-10-24 14:39:34', '1', '2017-10-24 14:39:34');
INSERT INTO `provincial_cyp_factors` VALUES ('218', '3', '2', '7', '0.066666670', '1', '2017-10-24 14:39:34', '1', '2017-10-24 14:39:34');
INSERT INTO `provincial_cyp_factors` VALUES ('219', '3', '3', '7', '0.050000000', '1', '2017-10-24 14:39:34', '1', '2017-10-24 14:39:34');
INSERT INTO `provincial_cyp_factors` VALUES ('220', '3', '4', '7', '3.300000000', '1', '2017-10-24 14:39:34', '1', '2017-10-24 14:39:34');
INSERT INTO `provincial_cyp_factors` VALUES ('221', '3', '5', '7', '4.600000000', '1', '2017-10-24 14:39:34', '1', '2017-10-24 14:39:34');
INSERT INTO `provincial_cyp_factors` VALUES ('222', '3', '6', '7', '0.166666000', '1', '2017-10-24 14:39:34', '1', '2017-10-24 14:39:34');
INSERT INTO `provincial_cyp_factors` VALUES ('223', '3', '7', '7', '0.250000000', '1', '2017-10-24 14:39:34', '1', '2017-10-24 14:39:34');
INSERT INTO `provincial_cyp_factors` VALUES ('224', '3', '8', '7', '2.500000000', '1', '2017-10-24 14:39:34', '1', '2017-10-24 14:39:34');
INSERT INTO `provincial_cyp_factors` VALUES ('225', '3', '9', '7', '0.066666670', '1', '2017-10-24 14:39:34', '1', '2017-10-24 14:39:34');
INSERT INTO `provincial_cyp_factors` VALUES ('226', '3', '10', '7', '0.076923080', '1', '2017-10-24 14:39:34', '1', '2017-10-24 14:39:34');
INSERT INTO `provincial_cyp_factors` VALUES ('227', '3', '11', '7', '3.300000000', '1', '2017-10-24 14:39:34', '1', '2017-10-24 14:39:34');
INSERT INTO `provincial_cyp_factors` VALUES ('228', '3', '13', '7', '3.800000000', '1', '2017-10-24 14:39:34', '1', '2017-10-24 14:39:34');
INSERT INTO `provincial_cyp_factors` VALUES ('229', '3', '14', '7', '3.200000000', '1', '2017-10-24 14:39:34', '1', '2017-10-24 14:39:34');
INSERT INTO `provincial_cyp_factors` VALUES ('230', '3', '30', '7', null, '1', '2017-10-24 14:39:34', '1', '2017-10-24 14:39:34');
INSERT INTO `provincial_cyp_factors` VALUES ('231', '3', '31', '7', '13.000000000', '1', '2017-10-24 14:39:35', '1', '2017-10-24 14:39:35');
INSERT INTO `provincial_cyp_factors` VALUES ('232', '3', '32', '7', '13.000000000', '1', '2017-10-24 14:39:35', '1', '2017-10-24 14:39:35');
INSERT INTO `provincial_cyp_factors` VALUES ('233', '3', '33', '7', null, '1', '2017-10-24 14:39:35', '1', '2017-10-24 14:39:35');
INSERT INTO `provincial_cyp_factors` VALUES ('234', '3', '34', '7', null, '1', '2017-10-24 14:39:35', '1', '2017-10-24 14:39:35');
INSERT INTO `provincial_cyp_factors` VALUES ('235', '3', '1', '9', '0.008333330', '1', '2017-10-24 14:39:35', '1', '2017-10-24 14:39:35');
INSERT INTO `provincial_cyp_factors` VALUES ('236', '3', '2', '9', '0.066666670', '1', '2017-10-24 14:39:35', '1', '2017-10-24 14:39:35');
INSERT INTO `provincial_cyp_factors` VALUES ('237', '3', '3', '9', '0.050000000', '1', '2017-10-24 14:39:35', '1', '2017-10-24 14:39:35');
INSERT INTO `provincial_cyp_factors` VALUES ('238', '3', '4', '9', '3.300000000', '1', '2017-10-24 14:39:35', '1', '2017-10-24 14:39:35');
INSERT INTO `provincial_cyp_factors` VALUES ('239', '3', '5', '9', '4.600000000', '1', '2017-10-24 14:39:35', '1', '2017-10-24 14:39:35');
INSERT INTO `provincial_cyp_factors` VALUES ('240', '3', '6', '9', '0.166666000', '1', '2017-10-24 14:39:35', '1', '2017-10-24 14:39:35');
INSERT INTO `provincial_cyp_factors` VALUES ('241', '3', '7', '9', '0.250000000', '1', '2017-10-24 14:39:35', '1', '2017-10-24 14:39:35');
INSERT INTO `provincial_cyp_factors` VALUES ('242', '3', '8', '9', '2.500000000', '1', '2017-10-24 14:39:35', '1', '2017-10-24 14:39:35');
INSERT INTO `provincial_cyp_factors` VALUES ('243', '3', '9', '9', '0.066666670', '1', '2017-10-24 14:39:35', '1', '2017-10-24 14:39:35');
INSERT INTO `provincial_cyp_factors` VALUES ('244', '3', '10', '9', '0.076923080', '1', '2017-10-24 14:39:35', '1', '2017-10-24 14:39:35');
INSERT INTO `provincial_cyp_factors` VALUES ('245', '3', '11', '9', '3.300000000', '1', '2017-10-24 14:39:35', '1', '2017-10-24 14:39:35');
INSERT INTO `provincial_cyp_factors` VALUES ('246', '3', '13', '9', '3.800000000', '1', '2017-10-24 14:39:35', '1', '2017-10-24 14:39:35');
INSERT INTO `provincial_cyp_factors` VALUES ('247', '3', '14', '9', '3.200000000', '1', '2017-10-24 14:39:36', '1', '2017-10-24 14:39:36');
INSERT INTO `provincial_cyp_factors` VALUES ('248', '3', '30', '9', null, '1', '2017-10-24 14:39:36', '1', '2017-10-24 14:39:36');
INSERT INTO `provincial_cyp_factors` VALUES ('249', '3', '31', '9', '13.000000000', '1', '2017-10-24 14:39:36', '1', '2017-10-24 14:39:36');
INSERT INTO `provincial_cyp_factors` VALUES ('250', '3', '32', '9', '13.000000000', '1', '2017-10-24 14:39:36', '1', '2017-10-24 14:39:36');
INSERT INTO `provincial_cyp_factors` VALUES ('251', '3', '33', '9', null, '1', '2017-10-24 14:39:36', '1', '2017-10-24 14:39:36');
INSERT INTO `provincial_cyp_factors` VALUES ('252', '3', '34', '9', null, '1', '2017-10-24 14:39:36', '1', '2017-10-24 14:39:36');
INSERT INTO `provincial_cyp_factors` VALUES ('253', '3', '1', '73', '0.008333330', '1', '2017-10-24 14:39:36', '1', '2017-10-24 14:39:36');
INSERT INTO `provincial_cyp_factors` VALUES ('254', '3', '2', '73', '0.066666670', '1', '2017-10-24 14:39:36', '1', '2017-10-24 14:39:36');
INSERT INTO `provincial_cyp_factors` VALUES ('255', '3', '3', '73', '0.050000000', '1', '2017-10-24 14:39:36', '1', '2017-10-24 14:39:36');
INSERT INTO `provincial_cyp_factors` VALUES ('256', '3', '4', '73', '3.300000000', '1', '2017-10-24 14:39:36', '1', '2017-10-24 14:39:36');
INSERT INTO `provincial_cyp_factors` VALUES ('257', '3', '5', '73', '4.600000000', '1', '2017-10-24 14:39:36', '1', '2017-10-24 14:39:36');
INSERT INTO `provincial_cyp_factors` VALUES ('258', '3', '6', '73', '0.166666000', '1', '2017-10-24 14:39:36', '1', '2017-10-24 14:39:36');
INSERT INTO `provincial_cyp_factors` VALUES ('259', '3', '7', '73', '0.250000000', '1', '2017-10-24 14:39:36', '1', '2017-10-24 14:39:36');
INSERT INTO `provincial_cyp_factors` VALUES ('260', '3', '8', '73', '2.500000000', '1', '2017-10-24 14:39:36', '1', '2017-10-24 14:39:36');
INSERT INTO `provincial_cyp_factors` VALUES ('261', '3', '9', '73', '0.066666670', '1', '2017-10-24 14:39:36', '1', '2017-10-24 14:39:36');
INSERT INTO `provincial_cyp_factors` VALUES ('262', '3', '10', '73', '0.076923080', '1', '2017-10-24 14:39:37', '1', '2017-10-24 14:39:37');
INSERT INTO `provincial_cyp_factors` VALUES ('263', '3', '11', '73', '3.300000000', '1', '2017-10-24 14:39:37', '1', '2017-10-24 14:39:37');
INSERT INTO `provincial_cyp_factors` VALUES ('264', '3', '13', '73', '3.800000000', '1', '2017-10-24 14:39:37', '1', '2017-10-24 14:39:37');
INSERT INTO `provincial_cyp_factors` VALUES ('265', '3', '14', '73', '3.200000000', '1', '2017-10-24 14:39:37', '1', '2017-10-24 14:39:37');
INSERT INTO `provincial_cyp_factors` VALUES ('266', '3', '30', '73', null, '1', '2017-10-24 14:39:37', '1', '2017-10-24 14:39:37');
INSERT INTO `provincial_cyp_factors` VALUES ('267', '3', '31', '73', '13.000000000', '1', '2017-10-24 14:39:37', '1', '2017-10-24 14:39:37');
INSERT INTO `provincial_cyp_factors` VALUES ('268', '3', '32', '73', '13.000000000', '1', '2017-10-24 14:39:37', '1', '2017-10-24 14:39:37');
INSERT INTO `provincial_cyp_factors` VALUES ('269', '3', '33', '73', null, '1', '2017-10-24 14:39:37', '1', '2017-10-24 14:39:37');
INSERT INTO `provincial_cyp_factors` VALUES ('270', '3', '34', '73', null, '1', '2017-10-24 14:39:37', '1', '2017-10-24 14:39:37');
INSERT INTO `provincial_cyp_factors` VALUES ('271', '4', '1', '1', '0.008333330', '1', '2017-10-24 14:39:37', '1', '2017-10-24 14:39:37');
INSERT INTO `provincial_cyp_factors` VALUES ('272', '4', '2', '1', '0.066666670', '1', '2017-10-24 14:39:37', '1', '2017-10-24 14:39:37');
INSERT INTO `provincial_cyp_factors` VALUES ('273', '4', '3', '1', '0.050000000', '1', '2017-10-24 14:39:37', '1', '2017-10-24 14:39:37');
INSERT INTO `provincial_cyp_factors` VALUES ('274', '4', '4', '1', '3.300000000', '1', '2017-10-24 14:39:37', '1', '2017-10-24 14:39:37');
INSERT INTO `provincial_cyp_factors` VALUES ('275', '4', '5', '1', '4.600000000', '1', '2017-10-24 14:39:37', '1', '2017-10-24 14:39:37');
INSERT INTO `provincial_cyp_factors` VALUES ('276', '4', '6', '1', '0.166666000', '1', '2017-10-24 14:39:37', '1', '2017-10-24 14:39:37');
INSERT INTO `provincial_cyp_factors` VALUES ('277', '4', '7', '1', '0.250000000', '1', '2017-10-24 14:39:37', '1', '2017-10-24 14:39:37');
INSERT INTO `provincial_cyp_factors` VALUES ('278', '4', '8', '1', '2.500000000', '1', '2017-10-24 14:39:38', '1', '2017-10-24 14:39:38');
INSERT INTO `provincial_cyp_factors` VALUES ('279', '4', '9', '1', '0.066666670', '1', '2017-10-24 14:39:38', '1', '2017-10-24 14:39:38');
INSERT INTO `provincial_cyp_factors` VALUES ('280', '4', '10', '1', '0.076923080', '1', '2017-10-24 14:39:38', '1', '2017-10-24 14:39:38');
INSERT INTO `provincial_cyp_factors` VALUES ('281', '4', '11', '1', '3.300000000', '1', '2017-10-24 14:39:38', '1', '2017-10-24 14:39:38');
INSERT INTO `provincial_cyp_factors` VALUES ('282', '4', '13', '1', '3.800000000', '1', '2017-10-24 14:39:38', '1', '2017-10-24 14:39:38');
INSERT INTO `provincial_cyp_factors` VALUES ('283', '4', '14', '1', '3.200000000', '1', '2017-10-24 14:39:38', '1', '2017-10-24 14:39:38');
INSERT INTO `provincial_cyp_factors` VALUES ('284', '4', '30', '1', null, '1', '2017-10-24 14:39:38', '1', '2017-10-24 14:39:38');
INSERT INTO `provincial_cyp_factors` VALUES ('285', '4', '31', '1', '13.000000000', '1', '2017-10-24 14:39:38', '1', '2017-10-24 14:39:38');
INSERT INTO `provincial_cyp_factors` VALUES ('286', '4', '32', '1', '13.000000000', '1', '2017-10-24 14:39:38', '1', '2017-10-24 14:39:38');
INSERT INTO `provincial_cyp_factors` VALUES ('287', '4', '33', '1', null, '1', '2017-10-24 14:39:38', '1', '2017-10-24 14:39:38');
INSERT INTO `provincial_cyp_factors` VALUES ('288', '4', '34', '1', null, '1', '2017-10-24 14:39:38', '1', '2017-10-24 14:39:38');
INSERT INTO `provincial_cyp_factors` VALUES ('289', '4', '1', '2', '0.008333330', '1', '2017-10-24 14:39:38', '1', '2017-10-24 14:39:38');
INSERT INTO `provincial_cyp_factors` VALUES ('290', '4', '2', '2', '0.066666670', '1', '2017-10-24 14:39:38', '1', '2017-10-24 14:39:38');
INSERT INTO `provincial_cyp_factors` VALUES ('291', '4', '3', '2', '0.050000000', '1', '2017-10-24 14:39:38', '1', '2017-10-24 14:39:38');
INSERT INTO `provincial_cyp_factors` VALUES ('292', '4', '4', '2', '3.300000000', '1', '2017-10-24 14:39:38', '1', '2017-10-24 14:39:38');
INSERT INTO `provincial_cyp_factors` VALUES ('293', '4', '5', '2', '4.600000000', '1', '2017-10-24 14:39:38', '1', '2017-10-24 14:39:38');
INSERT INTO `provincial_cyp_factors` VALUES ('294', '4', '6', '2', '0.166666000', '1', '2017-10-24 14:39:39', '1', '2017-10-24 14:39:39');
INSERT INTO `provincial_cyp_factors` VALUES ('295', '4', '7', '2', '0.250000000', '1', '2017-10-24 14:39:39', '1', '2017-10-24 14:39:39');
INSERT INTO `provincial_cyp_factors` VALUES ('296', '4', '8', '2', '2.500000000', '1', '2017-10-24 14:39:39', '1', '2017-10-24 14:39:39');
INSERT INTO `provincial_cyp_factors` VALUES ('297', '4', '9', '2', '0.066666670', '1', '2017-10-24 14:39:39', '1', '2017-10-24 14:39:39');
INSERT INTO `provincial_cyp_factors` VALUES ('298', '4', '10', '2', '0.076923080', '1', '2017-10-24 14:39:39', '1', '2017-10-24 14:39:39');
INSERT INTO `provincial_cyp_factors` VALUES ('299', '4', '11', '2', '3.300000000', '1', '2017-10-24 14:39:39', '1', '2017-10-24 14:39:39');
INSERT INTO `provincial_cyp_factors` VALUES ('300', '4', '13', '2', '3.800000000', '1', '2017-10-24 14:39:39', '1', '2017-10-24 14:39:39');
INSERT INTO `provincial_cyp_factors` VALUES ('301', '4', '14', '2', '3.200000000', '1', '2017-10-24 14:39:39', '1', '2017-10-24 14:39:39');
INSERT INTO `provincial_cyp_factors` VALUES ('302', '4', '30', '2', null, '1', '2017-10-24 14:39:39', '1', '2017-10-24 14:39:39');
INSERT INTO `provincial_cyp_factors` VALUES ('303', '4', '31', '2', '13.000000000', '1', '2017-10-24 14:39:39', '1', '2017-10-24 14:39:39');
INSERT INTO `provincial_cyp_factors` VALUES ('304', '4', '32', '2', '13.000000000', '1', '2017-10-24 14:39:39', '1', '2017-10-24 14:39:39');
INSERT INTO `provincial_cyp_factors` VALUES ('305', '4', '33', '2', null, '1', '2017-10-24 14:39:39', '1', '2017-10-24 14:39:39');
INSERT INTO `provincial_cyp_factors` VALUES ('306', '4', '34', '2', null, '1', '2017-10-24 14:39:39', '1', '2017-10-24 14:39:39');
INSERT INTO `provincial_cyp_factors` VALUES ('307', '4', '1', '7', '0.008333330', '1', '2017-10-24 14:39:39', '1', '2017-10-24 14:39:39');
INSERT INTO `provincial_cyp_factors` VALUES ('308', '4', '2', '7', '0.066666670', '1', '2017-10-24 14:39:39', '1', '2017-10-24 14:39:39');
INSERT INTO `provincial_cyp_factors` VALUES ('309', '4', '3', '7', '0.050000000', '1', '2017-10-24 14:39:40', '1', '2017-10-24 14:39:40');
INSERT INTO `provincial_cyp_factors` VALUES ('310', '4', '4', '7', '3.300000000', '1', '2017-10-24 14:39:40', '1', '2017-10-24 14:39:40');
INSERT INTO `provincial_cyp_factors` VALUES ('311', '4', '5', '7', '4.600000000', '1', '2017-10-24 14:39:40', '1', '2017-10-24 14:39:40');
INSERT INTO `provincial_cyp_factors` VALUES ('312', '4', '6', '7', '0.166666000', '1', '2017-10-24 14:39:40', '1', '2017-10-24 14:39:40');
INSERT INTO `provincial_cyp_factors` VALUES ('313', '4', '7', '7', '0.250000000', '1', '2017-10-24 14:39:40', '1', '2017-10-24 14:39:40');
INSERT INTO `provincial_cyp_factors` VALUES ('314', '4', '8', '7', '2.500000000', '1', '2017-10-24 14:39:40', '1', '2017-10-24 14:39:40');
INSERT INTO `provincial_cyp_factors` VALUES ('315', '4', '9', '7', '0.066666670', '1', '2017-10-24 14:39:40', '1', '2017-10-24 14:39:40');
INSERT INTO `provincial_cyp_factors` VALUES ('316', '4', '10', '7', '0.076923080', '1', '2017-10-24 14:39:40', '1', '2017-10-24 14:39:40');
INSERT INTO `provincial_cyp_factors` VALUES ('317', '4', '11', '7', '3.300000000', '1', '2017-10-24 14:39:40', '1', '2017-10-24 14:39:40');
INSERT INTO `provincial_cyp_factors` VALUES ('318', '4', '13', '7', '3.800000000', '1', '2017-10-24 14:39:40', '1', '2017-10-24 14:39:40');
INSERT INTO `provincial_cyp_factors` VALUES ('319', '4', '14', '7', '3.200000000', '1', '2017-10-24 14:39:40', '1', '2017-10-24 14:39:40');
INSERT INTO `provincial_cyp_factors` VALUES ('320', '4', '30', '7', null, '1', '2017-10-24 14:39:40', '1', '2017-10-24 14:39:40');
INSERT INTO `provincial_cyp_factors` VALUES ('321', '4', '31', '7', '13.000000000', '1', '2017-10-24 14:39:40', '1', '2017-10-24 14:39:40');
INSERT INTO `provincial_cyp_factors` VALUES ('322', '4', '32', '7', '13.000000000', '1', '2017-10-24 14:39:40', '1', '2017-10-24 14:39:40');
INSERT INTO `provincial_cyp_factors` VALUES ('323', '4', '33', '7', null, '1', '2017-10-24 14:39:40', '1', '2017-10-24 14:39:40');
INSERT INTO `provincial_cyp_factors` VALUES ('324', '4', '34', '7', null, '1', '2017-10-24 14:39:40', '1', '2017-10-24 14:39:40');
INSERT INTO `provincial_cyp_factors` VALUES ('325', '4', '1', '9', '0.008333330', '1', '2017-10-24 14:39:41', '1', '2017-10-24 14:39:41');
INSERT INTO `provincial_cyp_factors` VALUES ('326', '4', '2', '9', '0.066666670', '1', '2017-10-24 14:39:41', '1', '2017-10-24 14:39:41');
INSERT INTO `provincial_cyp_factors` VALUES ('327', '4', '3', '9', '0.050000000', '1', '2017-10-24 14:39:41', '1', '2017-10-24 14:39:41');
INSERT INTO `provincial_cyp_factors` VALUES ('328', '4', '4', '9', '3.300000000', '1', '2017-10-24 14:39:41', '1', '2017-10-24 14:39:41');
INSERT INTO `provincial_cyp_factors` VALUES ('329', '4', '5', '9', '4.600000000', '1', '2017-10-24 14:39:41', '1', '2017-10-24 14:39:41');
INSERT INTO `provincial_cyp_factors` VALUES ('330', '4', '6', '9', '0.166666000', '1', '2017-10-24 14:39:41', '1', '2017-10-24 14:39:41');
INSERT INTO `provincial_cyp_factors` VALUES ('331', '4', '7', '9', '0.250000000', '1', '2017-10-24 14:39:41', '1', '2017-10-24 14:39:41');
INSERT INTO `provincial_cyp_factors` VALUES ('332', '4', '8', '9', '2.500000000', '1', '2017-10-24 14:39:41', '1', '2017-10-24 14:39:41');
INSERT INTO `provincial_cyp_factors` VALUES ('333', '4', '9', '9', '0.066666670', '1', '2017-10-24 14:39:41', '1', '2017-10-24 14:39:41');
INSERT INTO `provincial_cyp_factors` VALUES ('334', '4', '10', '9', '0.076923080', '1', '2017-10-24 14:39:41', '1', '2017-10-24 14:39:41');
INSERT INTO `provincial_cyp_factors` VALUES ('335', '4', '11', '9', '3.300000000', '1', '2017-10-24 14:39:41', '1', '2017-10-24 14:39:41');
INSERT INTO `provincial_cyp_factors` VALUES ('336', '4', '13', '9', '3.800000000', '1', '2017-10-24 14:39:41', '1', '2017-10-24 14:39:41');
INSERT INTO `provincial_cyp_factors` VALUES ('337', '4', '14', '9', '3.200000000', '1', '2017-10-24 14:39:41', '1', '2017-10-24 14:39:41');
INSERT INTO `provincial_cyp_factors` VALUES ('338', '4', '30', '9', null, '1', '2017-10-24 14:39:41', '1', '2017-10-24 14:39:41');
INSERT INTO `provincial_cyp_factors` VALUES ('339', '4', '31', '9', '13.000000000', '1', '2017-10-24 14:39:41', '1', '2017-10-24 14:39:41');
INSERT INTO `provincial_cyp_factors` VALUES ('340', '4', '32', '9', '13.000000000', '1', '2017-10-24 14:39:41', '1', '2017-10-24 14:39:41');
INSERT INTO `provincial_cyp_factors` VALUES ('341', '4', '33', '9', null, '1', '2017-10-24 14:39:42', '1', '2017-10-24 14:39:42');
INSERT INTO `provincial_cyp_factors` VALUES ('342', '4', '34', '9', null, '1', '2017-10-24 14:39:42', '1', '2017-10-24 14:39:42');
INSERT INTO `provincial_cyp_factors` VALUES ('343', '4', '1', '73', '0.008333330', '1', '2017-10-24 14:39:42', '1', '2017-10-24 14:39:42');
INSERT INTO `provincial_cyp_factors` VALUES ('344', '4', '2', '73', '0.066666670', '1', '2017-10-24 14:39:42', '1', '2017-10-24 14:39:42');
INSERT INTO `provincial_cyp_factors` VALUES ('345', '4', '3', '73', '0.050000000', '1', '2017-10-24 14:39:42', '1', '2017-10-24 14:39:42');
INSERT INTO `provincial_cyp_factors` VALUES ('346', '4', '4', '73', '3.300000000', '1', '2017-10-24 14:39:42', '1', '2017-10-24 14:39:42');
INSERT INTO `provincial_cyp_factors` VALUES ('347', '4', '5', '73', '4.600000000', '1', '2017-10-24 14:39:42', '1', '2017-10-24 14:39:42');
INSERT INTO `provincial_cyp_factors` VALUES ('348', '4', '6', '73', '0.166666000', '1', '2017-10-24 14:39:42', '1', '2017-10-24 14:39:42');
INSERT INTO `provincial_cyp_factors` VALUES ('349', '4', '7', '73', '0.250000000', '1', '2017-10-24 14:39:42', '1', '2017-10-24 14:39:42');
INSERT INTO `provincial_cyp_factors` VALUES ('350', '4', '8', '73', '2.500000000', '1', '2017-10-24 14:39:42', '1', '2017-10-24 14:39:42');
INSERT INTO `provincial_cyp_factors` VALUES ('351', '4', '9', '73', '0.066666670', '1', '2017-10-24 14:39:42', '1', '2017-10-24 14:39:42');
INSERT INTO `provincial_cyp_factors` VALUES ('352', '4', '10', '73', '0.076923080', '1', '2017-10-24 14:39:42', '1', '2017-10-24 14:39:42');
INSERT INTO `provincial_cyp_factors` VALUES ('353', '4', '11', '73', '3.300000000', '1', '2017-10-24 14:39:42', '1', '2017-10-24 14:39:42');
INSERT INTO `provincial_cyp_factors` VALUES ('354', '4', '13', '73', '3.800000000', '1', '2017-10-24 14:39:42', '1', '2017-10-24 14:39:42');
INSERT INTO `provincial_cyp_factors` VALUES ('355', '4', '14', '73', '3.200000000', '1', '2017-10-24 14:39:42', '1', '2017-10-24 14:39:42');
INSERT INTO `provincial_cyp_factors` VALUES ('356', '4', '30', '73', null, '1', '2017-10-24 14:39:43', '1', '2017-10-24 14:39:43');
INSERT INTO `provincial_cyp_factors` VALUES ('357', '4', '31', '73', '13.000000000', '1', '2017-10-24 14:39:43', '1', '2017-10-24 14:39:43');
INSERT INTO `provincial_cyp_factors` VALUES ('358', '4', '32', '73', '13.000000000', '1', '2017-10-24 14:39:43', '1', '2017-10-24 14:39:43');
INSERT INTO `provincial_cyp_factors` VALUES ('359', '4', '33', '73', null, '1', '2017-10-24 14:39:43', '1', '2017-10-24 14:39:43');
INSERT INTO `provincial_cyp_factors` VALUES ('360', '4', '34', '73', null, '1', '2017-10-24 14:39:43', '1', '2017-10-24 14:39:43');
INSERT INTO `provincial_cyp_factors` VALUES ('361', '5', '1', '1', '0.008333330', '1', '2017-10-24 14:39:43', '1', '2017-10-24 14:39:43');
INSERT INTO `provincial_cyp_factors` VALUES ('362', '5', '2', '1', '0.066666670', '1', '2017-10-24 14:39:43', '1', '2017-10-24 14:39:43');
INSERT INTO `provincial_cyp_factors` VALUES ('363', '5', '3', '1', '0.050000000', '1', '2017-10-24 14:39:43', '1', '2017-10-24 14:39:43');
INSERT INTO `provincial_cyp_factors` VALUES ('364', '5', '4', '1', '3.300000000', '1', '2017-10-24 14:39:43', '1', '2017-10-24 14:39:43');
INSERT INTO `provincial_cyp_factors` VALUES ('365', '5', '5', '1', '4.600000000', '1', '2017-10-24 14:39:43', '1', '2017-10-24 14:39:43');
INSERT INTO `provincial_cyp_factors` VALUES ('366', '5', '6', '1', '0.166666000', '1', '2017-10-24 14:39:43', '1', '2017-10-24 14:39:43');
INSERT INTO `provincial_cyp_factors` VALUES ('367', '5', '7', '1', '0.250000000', '1', '2017-10-24 14:39:43', '1', '2017-10-24 14:39:43');
INSERT INTO `provincial_cyp_factors` VALUES ('368', '5', '8', '1', '2.500000000', '1', '2017-10-24 14:39:43', '1', '2017-10-24 14:39:43');
INSERT INTO `provincial_cyp_factors` VALUES ('369', '5', '9', '1', '0.066666670', '1', '2017-10-24 14:39:43', '1', '2017-10-24 14:39:43');
INSERT INTO `provincial_cyp_factors` VALUES ('370', '5', '10', '1', '0.076923080', '1', '2017-10-24 14:39:43', '1', '2017-10-24 14:39:43');
INSERT INTO `provincial_cyp_factors` VALUES ('371', '5', '11', '1', '3.300000000', '1', '2017-10-24 14:39:43', '1', '2017-10-24 14:39:43');
INSERT INTO `provincial_cyp_factors` VALUES ('372', '5', '13', '1', '3.800000000', '1', '2017-10-24 14:39:44', '1', '2017-10-24 14:39:44');
INSERT INTO `provincial_cyp_factors` VALUES ('373', '5', '14', '1', '3.200000000', '1', '2017-10-24 14:39:44', '1', '2017-10-24 14:39:44');
INSERT INTO `provincial_cyp_factors` VALUES ('374', '5', '30', '1', null, '1', '2017-10-24 14:39:44', '1', '2017-10-24 14:39:44');
INSERT INTO `provincial_cyp_factors` VALUES ('375', '5', '31', '1', '13.000000000', '1', '2017-10-24 14:39:44', '1', '2017-10-24 14:39:44');
INSERT INTO `provincial_cyp_factors` VALUES ('376', '5', '32', '1', '13.000000000', '1', '2017-10-24 14:39:44', '1', '2017-10-24 14:39:44');
INSERT INTO `provincial_cyp_factors` VALUES ('377', '5', '33', '1', null, '1', '2017-10-24 14:39:44', '1', '2017-10-24 14:39:44');
INSERT INTO `provincial_cyp_factors` VALUES ('378', '5', '34', '1', null, '1', '2017-10-24 14:39:44', '1', '2017-10-24 14:39:44');
INSERT INTO `provincial_cyp_factors` VALUES ('379', '5', '1', '2', '0.008333330', '1', '2017-10-24 14:39:44', '1', '2017-10-24 14:39:44');
INSERT INTO `provincial_cyp_factors` VALUES ('380', '5', '2', '2', '0.066666670', '1', '2017-10-24 14:39:44', '1', '2017-10-24 14:39:44');
INSERT INTO `provincial_cyp_factors` VALUES ('381', '5', '3', '2', '0.050000000', '1', '2017-10-24 14:39:44', '1', '2017-10-24 14:39:44');
INSERT INTO `provincial_cyp_factors` VALUES ('382', '5', '4', '2', '3.300000000', '1', '2017-10-24 14:39:44', '1', '2017-10-24 14:39:44');
INSERT INTO `provincial_cyp_factors` VALUES ('383', '5', '5', '2', '4.600000000', '1', '2017-10-24 14:39:44', '1', '2017-10-24 14:39:44');
INSERT INTO `provincial_cyp_factors` VALUES ('384', '5', '6', '2', '0.166666000', '1', '2017-10-24 14:39:44', '1', '2017-10-24 14:39:44');
INSERT INTO `provincial_cyp_factors` VALUES ('385', '5', '7', '2', '0.250000000', '1', '2017-10-24 14:39:44', '1', '2017-10-24 14:39:44');
INSERT INTO `provincial_cyp_factors` VALUES ('386', '5', '8', '2', '2.500000000', '1', '2017-10-24 14:39:44', '1', '2017-10-24 14:39:44');
INSERT INTO `provincial_cyp_factors` VALUES ('387', '5', '9', '2', '0.066666670', '1', '2017-10-24 14:39:44', '1', '2017-10-24 14:39:44');
INSERT INTO `provincial_cyp_factors` VALUES ('388', '5', '10', '2', '0.076923080', '1', '2017-10-24 14:39:45', '1', '2017-10-24 14:39:45');
INSERT INTO `provincial_cyp_factors` VALUES ('389', '5', '11', '2', '3.300000000', '1', '2017-10-24 14:39:45', '1', '2017-10-24 14:39:45');
INSERT INTO `provincial_cyp_factors` VALUES ('390', '5', '13', '2', '3.800000000', '1', '2017-10-24 14:39:45', '1', '2017-10-24 14:39:45');
INSERT INTO `provincial_cyp_factors` VALUES ('391', '5', '14', '2', '3.200000000', '1', '2017-10-24 14:39:45', '1', '2017-10-24 14:39:45');
INSERT INTO `provincial_cyp_factors` VALUES ('392', '5', '30', '2', null, '1', '2017-10-24 14:39:45', '1', '2017-10-24 14:39:45');
INSERT INTO `provincial_cyp_factors` VALUES ('393', '5', '31', '2', '13.000000000', '1', '2017-10-24 14:39:45', '1', '2017-10-24 14:39:45');
INSERT INTO `provincial_cyp_factors` VALUES ('394', '5', '32', '2', '13.000000000', '1', '2017-10-24 14:39:45', '1', '2017-10-24 14:39:45');
INSERT INTO `provincial_cyp_factors` VALUES ('395', '5', '33', '2', null, '1', '2017-10-24 14:39:45', '1', '2017-10-24 14:39:45');
INSERT INTO `provincial_cyp_factors` VALUES ('396', '5', '34', '2', null, '1', '2017-10-24 14:39:45', '1', '2017-10-24 14:39:45');
INSERT INTO `provincial_cyp_factors` VALUES ('397', '5', '1', '7', '0.008333330', '1', '2017-10-24 14:39:45', '1', '2017-10-24 14:39:45');
INSERT INTO `provincial_cyp_factors` VALUES ('398', '5', '2', '7', '0.066666670', '1', '2017-10-24 14:39:45', '1', '2017-10-24 14:39:45');
INSERT INTO `provincial_cyp_factors` VALUES ('399', '5', '3', '7', '0.050000000', '1', '2017-10-24 14:39:45', '1', '2017-10-24 14:39:45');
INSERT INTO `provincial_cyp_factors` VALUES ('400', '5', '4', '7', '3.300000000', '1', '2017-10-24 14:39:45', '1', '2017-10-24 14:39:45');
INSERT INTO `provincial_cyp_factors` VALUES ('401', '5', '5', '7', '4.600000000', '1', '2017-10-24 14:39:45', '1', '2017-10-24 14:39:45');
INSERT INTO `provincial_cyp_factors` VALUES ('402', '5', '6', '7', '0.166666000', '1', '2017-10-24 14:39:45', '1', '2017-10-24 14:39:45');
INSERT INTO `provincial_cyp_factors` VALUES ('403', '5', '7', '7', '0.250000000', '1', '2017-10-24 14:39:45', '1', '2017-10-24 14:39:45');
INSERT INTO `provincial_cyp_factors` VALUES ('404', '5', '8', '7', '2.500000000', '1', '2017-10-24 14:39:46', '1', '2017-10-24 14:39:46');
INSERT INTO `provincial_cyp_factors` VALUES ('405', '5', '9', '7', '0.066666670', '1', '2017-10-24 14:39:46', '1', '2017-10-24 14:39:46');
INSERT INTO `provincial_cyp_factors` VALUES ('406', '5', '10', '7', '0.076923080', '1', '2017-10-24 14:39:46', '1', '2017-10-24 14:39:46');
INSERT INTO `provincial_cyp_factors` VALUES ('407', '5', '11', '7', '3.300000000', '1', '2017-10-24 14:39:46', '1', '2017-10-24 14:39:46');
INSERT INTO `provincial_cyp_factors` VALUES ('408', '5', '13', '7', '3.800000000', '1', '2017-10-24 14:39:46', '1', '2017-10-24 14:39:46');
INSERT INTO `provincial_cyp_factors` VALUES ('409', '5', '14', '7', '3.200000000', '1', '2017-10-24 14:39:46', '1', '2017-10-24 14:39:46');
INSERT INTO `provincial_cyp_factors` VALUES ('410', '5', '30', '7', null, '1', '2017-10-24 14:39:46', '1', '2017-10-24 14:39:46');
INSERT INTO `provincial_cyp_factors` VALUES ('411', '5', '31', '7', '13.000000000', '1', '2017-10-24 14:39:46', '1', '2017-10-24 14:39:46');
INSERT INTO `provincial_cyp_factors` VALUES ('412', '5', '32', '7', '13.000000000', '1', '2017-10-24 14:39:46', '1', '2017-10-24 14:39:46');
INSERT INTO `provincial_cyp_factors` VALUES ('413', '5', '33', '7', null, '1', '2017-10-24 14:39:46', '1', '2017-10-24 14:39:46');
INSERT INTO `provincial_cyp_factors` VALUES ('414', '5', '34', '7', null, '1', '2017-10-24 14:39:46', '1', '2017-10-24 14:39:46');
INSERT INTO `provincial_cyp_factors` VALUES ('415', '5', '1', '9', '0.008333330', '1', '2017-10-24 14:39:46', '1', '2017-10-24 14:39:46');
INSERT INTO `provincial_cyp_factors` VALUES ('416', '5', '2', '9', '0.066666670', '1', '2017-10-24 14:39:46', '1', '2017-10-24 14:39:46');
INSERT INTO `provincial_cyp_factors` VALUES ('417', '5', '3', '9', '0.050000000', '1', '2017-10-24 14:39:46', '1', '2017-10-24 14:39:46');
INSERT INTO `provincial_cyp_factors` VALUES ('418', '5', '4', '9', '3.300000000', '1', '2017-10-24 14:39:46', '1', '2017-10-24 14:39:46');
INSERT INTO `provincial_cyp_factors` VALUES ('419', '5', '5', '9', '4.600000000', '1', '2017-10-24 14:39:46', '1', '2017-10-24 14:39:46');
INSERT INTO `provincial_cyp_factors` VALUES ('420', '5', '6', '9', '0.166666000', '1', '2017-10-24 14:39:47', '1', '2017-10-24 14:39:47');
INSERT INTO `provincial_cyp_factors` VALUES ('421', '5', '7', '9', '0.250000000', '1', '2017-10-24 14:39:47', '1', '2017-10-24 14:39:47');
INSERT INTO `provincial_cyp_factors` VALUES ('422', '5', '8', '9', '2.500000000', '1', '2017-10-24 14:39:47', '1', '2017-10-24 14:39:47');
INSERT INTO `provincial_cyp_factors` VALUES ('423', '5', '9', '9', '0.066666670', '1', '2017-10-24 14:39:47', '1', '2017-10-24 14:39:47');
INSERT INTO `provincial_cyp_factors` VALUES ('424', '5', '10', '9', '0.076923080', '1', '2017-10-24 14:39:47', '1', '2017-10-24 14:39:47');
INSERT INTO `provincial_cyp_factors` VALUES ('425', '5', '11', '9', '3.300000000', '1', '2017-10-24 14:39:47', '1', '2017-10-24 14:39:47');
INSERT INTO `provincial_cyp_factors` VALUES ('426', '5', '13', '9', '3.800000000', '1', '2017-10-24 14:39:47', '1', '2017-10-24 14:39:47');
INSERT INTO `provincial_cyp_factors` VALUES ('427', '5', '14', '9', '3.200000000', '1', '2017-10-24 14:39:47', '1', '2017-10-24 14:39:47');
INSERT INTO `provincial_cyp_factors` VALUES ('428', '5', '30', '9', null, '1', '2017-10-24 14:39:47', '1', '2017-10-24 14:39:47');
INSERT INTO `provincial_cyp_factors` VALUES ('429', '5', '31', '9', '13.000000000', '1', '2017-10-24 14:39:47', '1', '2017-10-24 14:39:47');
INSERT INTO `provincial_cyp_factors` VALUES ('430', '5', '32', '9', '13.000000000', '1', '2017-10-24 14:39:47', '1', '2017-10-24 14:39:47');
INSERT INTO `provincial_cyp_factors` VALUES ('431', '5', '33', '9', null, '1', '2017-10-24 14:39:47', '1', '2017-10-24 14:39:47');
INSERT INTO `provincial_cyp_factors` VALUES ('432', '5', '34', '9', null, '1', '2017-10-24 14:39:47', '1', '2017-10-24 14:39:47');
INSERT INTO `provincial_cyp_factors` VALUES ('433', '5', '1', '73', '0.008333330', '1', '2017-10-24 14:39:47', '1', '2017-10-24 14:39:47');
INSERT INTO `provincial_cyp_factors` VALUES ('434', '5', '2', '73', '0.066666670', '1', '2017-10-24 14:39:47', '1', '2017-10-24 14:39:47');
INSERT INTO `provincial_cyp_factors` VALUES ('435', '5', '3', '73', '0.050000000', '1', '2017-10-24 14:39:48', '1', '2017-10-24 14:39:48');
INSERT INTO `provincial_cyp_factors` VALUES ('436', '5', '4', '73', '3.300000000', '1', '2017-10-24 14:39:48', '1', '2017-10-24 14:39:48');
INSERT INTO `provincial_cyp_factors` VALUES ('437', '5', '5', '73', '4.600000000', '1', '2017-10-24 14:39:48', '1', '2017-10-24 14:39:48');
INSERT INTO `provincial_cyp_factors` VALUES ('438', '5', '6', '73', '0.166666000', '1', '2017-10-24 14:39:48', '1', '2017-10-24 14:39:48');
INSERT INTO `provincial_cyp_factors` VALUES ('439', '5', '7', '73', '0.250000000', '1', '2017-10-24 14:39:48', '1', '2017-10-24 14:39:48');
INSERT INTO `provincial_cyp_factors` VALUES ('440', '5', '8', '73', '2.500000000', '1', '2017-10-24 14:39:48', '1', '2017-10-24 14:39:48');
INSERT INTO `provincial_cyp_factors` VALUES ('441', '5', '9', '73', '0.066666670', '1', '2017-10-24 14:39:48', '1', '2017-10-24 14:39:48');
INSERT INTO `provincial_cyp_factors` VALUES ('442', '5', '10', '73', '0.076923080', '1', '2017-10-24 14:39:48', '1', '2017-10-24 14:39:48');
INSERT INTO `provincial_cyp_factors` VALUES ('443', '5', '11', '73', '3.300000000', '1', '2017-10-24 14:39:48', '1', '2017-10-24 14:39:48');
INSERT INTO `provincial_cyp_factors` VALUES ('444', '5', '13', '73', '3.800000000', '1', '2017-10-24 14:39:48', '1', '2017-10-24 14:39:48');
INSERT INTO `provincial_cyp_factors` VALUES ('445', '5', '14', '73', '3.200000000', '1', '2017-10-24 14:39:48', '1', '2017-10-24 14:39:48');
INSERT INTO `provincial_cyp_factors` VALUES ('446', '5', '30', '73', null, '1', '2017-10-24 14:39:48', '1', '2017-10-24 14:39:48');
INSERT INTO `provincial_cyp_factors` VALUES ('447', '5', '31', '73', '13.000000000', '1', '2017-10-24 14:39:48', '1', '2017-10-24 14:39:48');
INSERT INTO `provincial_cyp_factors` VALUES ('448', '5', '32', '73', '13.000000000', '1', '2017-10-24 14:39:48', '1', '2017-10-24 14:39:48');
INSERT INTO `provincial_cyp_factors` VALUES ('449', '5', '33', '73', null, '1', '2017-10-24 14:39:48', '1', '2017-10-24 14:39:48');
INSERT INTO `provincial_cyp_factors` VALUES ('450', '5', '34', '73', null, '1', '2017-10-24 14:39:48', '1', '2017-10-24 14:39:48');
INSERT INTO `provincial_cyp_factors` VALUES ('451', '6', '1', '1', '0.008333330', '1', '2017-10-24 14:39:49', '1', '2017-10-24 14:39:49');
INSERT INTO `provincial_cyp_factors` VALUES ('452', '6', '2', '1', '0.066666670', '1', '2017-10-24 14:39:49', '1', '2017-10-24 14:39:49');
INSERT INTO `provincial_cyp_factors` VALUES ('453', '6', '3', '1', '0.050000000', '1', '2017-10-24 14:39:49', '1', '2017-10-24 14:39:49');
INSERT INTO `provincial_cyp_factors` VALUES ('454', '6', '4', '1', '3.300000000', '1', '2017-10-24 14:39:49', '1', '2017-10-24 14:39:49');
INSERT INTO `provincial_cyp_factors` VALUES ('455', '6', '5', '1', '4.600000000', '1', '2017-10-24 14:39:49', '1', '2017-10-24 14:39:49');
INSERT INTO `provincial_cyp_factors` VALUES ('456', '6', '6', '1', '0.166666000', '1', '2017-10-24 14:39:49', '1', '2017-10-24 14:39:49');
INSERT INTO `provincial_cyp_factors` VALUES ('457', '6', '7', '1', '0.250000000', '1', '2017-10-24 14:39:49', '1', '2017-10-24 14:39:49');
INSERT INTO `provincial_cyp_factors` VALUES ('458', '6', '8', '1', '2.500000000', '1', '2017-10-24 14:39:49', '1', '2017-10-24 14:39:49');
INSERT INTO `provincial_cyp_factors` VALUES ('459', '6', '9', '1', '0.066666670', '1', '2017-10-24 14:39:49', '1', '2017-10-24 14:39:49');
INSERT INTO `provincial_cyp_factors` VALUES ('460', '6', '10', '1', '0.076923080', '1', '2017-10-24 14:39:49', '1', '2017-10-24 14:39:49');
INSERT INTO `provincial_cyp_factors` VALUES ('461', '6', '11', '1', '3.300000000', '1', '2017-10-24 14:39:49', '1', '2017-10-24 14:39:49');
INSERT INTO `provincial_cyp_factors` VALUES ('462', '6', '13', '1', '3.800000000', '1', '2017-10-24 14:39:49', '1', '2017-10-24 14:39:49');
INSERT INTO `provincial_cyp_factors` VALUES ('463', '6', '14', '1', '3.200000000', '1', '2017-10-24 14:39:49', '1', '2017-10-24 14:39:49');
INSERT INTO `provincial_cyp_factors` VALUES ('464', '6', '30', '1', null, '1', '2017-10-24 14:39:49', '1', '2017-10-24 14:39:49');
INSERT INTO `provincial_cyp_factors` VALUES ('465', '6', '31', '1', '13.000000000', '1', '2017-10-24 14:39:49', '1', '2017-10-24 14:39:49');
INSERT INTO `provincial_cyp_factors` VALUES ('466', '6', '32', '1', '13.000000000', '1', '2017-10-24 14:39:49', '1', '2017-10-24 14:39:49');
INSERT INTO `provincial_cyp_factors` VALUES ('467', '6', '33', '1', null, '1', '2017-10-24 14:39:50', '1', '2017-10-24 14:39:50');
INSERT INTO `provincial_cyp_factors` VALUES ('468', '6', '34', '1', null, '1', '2017-10-24 14:39:50', '1', '2017-10-24 14:39:50');
INSERT INTO `provincial_cyp_factors` VALUES ('469', '6', '1', '2', '0.008333330', '1', '2017-10-24 14:39:50', '1', '2017-10-24 14:39:50');
INSERT INTO `provincial_cyp_factors` VALUES ('470', '6', '2', '2', '0.066666670', '1', '2017-10-24 14:39:50', '1', '2017-10-24 14:39:50');
INSERT INTO `provincial_cyp_factors` VALUES ('471', '6', '3', '2', '0.050000000', '1', '2017-10-24 14:39:50', '1', '2017-10-24 14:39:50');
INSERT INTO `provincial_cyp_factors` VALUES ('472', '6', '4', '2', '3.300000000', '1', '2017-10-24 14:39:50', '1', '2017-10-24 14:39:50');
INSERT INTO `provincial_cyp_factors` VALUES ('473', '6', '5', '2', '4.600000000', '1', '2017-10-24 14:39:50', '1', '2017-10-24 14:39:50');
INSERT INTO `provincial_cyp_factors` VALUES ('474', '6', '6', '2', '0.166666000', '1', '2017-10-24 14:39:50', '1', '2017-10-24 14:39:50');
INSERT INTO `provincial_cyp_factors` VALUES ('475', '6', '7', '2', '0.250000000', '1', '2017-10-24 14:39:50', '1', '2017-10-24 14:39:50');
INSERT INTO `provincial_cyp_factors` VALUES ('476', '6', '8', '2', '2.500000000', '1', '2017-10-24 14:39:50', '1', '2017-10-24 14:39:50');
INSERT INTO `provincial_cyp_factors` VALUES ('477', '6', '9', '2', '0.066666670', '1', '2017-10-24 14:39:50', '1', '2017-10-24 14:39:50');
INSERT INTO `provincial_cyp_factors` VALUES ('478', '6', '10', '2', '0.076923080', '1', '2017-10-24 14:39:50', '1', '2017-10-24 14:39:50');
INSERT INTO `provincial_cyp_factors` VALUES ('479', '6', '11', '2', '3.300000000', '1', '2017-10-24 14:39:50', '1', '2017-10-24 14:39:50');
INSERT INTO `provincial_cyp_factors` VALUES ('480', '6', '13', '2', '3.800000000', '1', '2017-10-24 14:39:50', '1', '2017-10-24 14:39:50');
INSERT INTO `provincial_cyp_factors` VALUES ('481', '6', '14', '2', '3.200000000', '1', '2017-10-24 14:39:50', '1', '2017-10-24 14:39:50');
INSERT INTO `provincial_cyp_factors` VALUES ('482', '6', '30', '2', null, '1', '2017-10-24 14:39:50', '1', '2017-10-24 14:39:50');
INSERT INTO `provincial_cyp_factors` VALUES ('483', '6', '31', '2', '13.000000000', '1', '2017-10-24 14:39:51', '1', '2017-10-24 14:39:51');
INSERT INTO `provincial_cyp_factors` VALUES ('484', '6', '32', '2', '13.000000000', '1', '2017-10-24 14:39:51', '1', '2017-10-24 14:39:51');
INSERT INTO `provincial_cyp_factors` VALUES ('485', '6', '33', '2', null, '1', '2017-10-24 14:39:51', '1', '2017-10-24 14:39:51');
INSERT INTO `provincial_cyp_factors` VALUES ('486', '6', '34', '2', null, '1', '2017-10-24 14:39:51', '1', '2017-10-24 14:39:51');
INSERT INTO `provincial_cyp_factors` VALUES ('487', '6', '1', '7', '0.008333330', '1', '2017-10-24 14:39:51', '1', '2017-10-24 14:39:51');
INSERT INTO `provincial_cyp_factors` VALUES ('488', '6', '2', '7', '0.066666670', '1', '2017-10-24 14:39:51', '1', '2017-10-24 14:39:51');
INSERT INTO `provincial_cyp_factors` VALUES ('489', '6', '3', '7', '0.050000000', '1', '2017-10-24 14:39:51', '1', '2017-10-24 14:39:51');
INSERT INTO `provincial_cyp_factors` VALUES ('490', '6', '4', '7', '3.300000000', '1', '2017-10-24 14:39:51', '1', '2017-10-24 14:39:51');
INSERT INTO `provincial_cyp_factors` VALUES ('491', '6', '5', '7', '4.600000000', '1', '2017-10-24 14:39:51', '1', '2017-10-24 14:39:51');
INSERT INTO `provincial_cyp_factors` VALUES ('492', '6', '6', '7', '0.166666000', '1', '2017-10-24 14:39:51', '1', '2017-10-24 14:39:51');
INSERT INTO `provincial_cyp_factors` VALUES ('493', '6', '7', '7', '0.250000000', '1', '2017-10-24 14:39:51', '1', '2017-10-24 14:39:51');
INSERT INTO `provincial_cyp_factors` VALUES ('494', '6', '8', '7', '2.500000000', '1', '2017-10-24 14:39:51', '1', '2017-10-24 14:39:51');
INSERT INTO `provincial_cyp_factors` VALUES ('495', '6', '9', '7', '0.066666670', '1', '2017-10-24 14:39:51', '1', '2017-10-24 14:39:51');
INSERT INTO `provincial_cyp_factors` VALUES ('496', '6', '10', '7', '0.076923080', '1', '2017-10-24 14:39:51', '1', '2017-10-24 14:39:51');
INSERT INTO `provincial_cyp_factors` VALUES ('497', '6', '11', '7', '3.300000000', '1', '2017-10-24 14:39:51', '1', '2017-10-24 14:39:51');
INSERT INTO `provincial_cyp_factors` VALUES ('498', '6', '13', '7', '3.800000000', '1', '2017-10-24 14:39:51', '1', '2017-10-24 14:39:51');
INSERT INTO `provincial_cyp_factors` VALUES ('499', '6', '14', '7', '3.200000000', '1', '2017-10-24 14:39:52', '1', '2017-10-24 14:39:52');
INSERT INTO `provincial_cyp_factors` VALUES ('500', '6', '30', '7', null, '1', '2017-10-24 14:39:52', '1', '2017-10-24 14:39:52');
INSERT INTO `provincial_cyp_factors` VALUES ('501', '6', '31', '7', '13.000000000', '1', '2017-10-24 14:39:52', '1', '2017-10-24 14:39:52');
INSERT INTO `provincial_cyp_factors` VALUES ('502', '6', '32', '7', '13.000000000', '1', '2017-10-24 14:39:52', '1', '2017-10-24 14:39:52');
INSERT INTO `provincial_cyp_factors` VALUES ('503', '6', '33', '7', null, '1', '2017-10-24 14:39:52', '1', '2017-10-24 14:39:52');
INSERT INTO `provincial_cyp_factors` VALUES ('504', '6', '34', '7', null, '1', '2017-10-24 14:39:52', '1', '2017-10-24 14:39:52');
INSERT INTO `provincial_cyp_factors` VALUES ('505', '6', '1', '9', '0.008333330', '1', '2017-10-24 14:39:52', '1', '2017-10-24 14:39:52');
INSERT INTO `provincial_cyp_factors` VALUES ('506', '6', '2', '9', '0.066666670', '1', '2017-10-24 14:39:52', '1', '2017-10-24 14:39:52');
INSERT INTO `provincial_cyp_factors` VALUES ('507', '6', '3', '9', '0.050000000', '1', '2017-10-24 14:39:52', '1', '2017-10-24 14:39:52');
INSERT INTO `provincial_cyp_factors` VALUES ('508', '6', '4', '9', '3.300000000', '1', '2017-10-24 14:39:52', '1', '2017-10-24 14:39:52');
INSERT INTO `provincial_cyp_factors` VALUES ('509', '6', '5', '9', '4.600000000', '1', '2017-10-24 14:39:52', '1', '2017-10-24 14:39:52');
INSERT INTO `provincial_cyp_factors` VALUES ('510', '6', '6', '9', '0.166666000', '1', '2017-10-24 14:39:52', '1', '2017-10-24 14:39:52');
INSERT INTO `provincial_cyp_factors` VALUES ('511', '6', '7', '9', '0.250000000', '1', '2017-10-24 14:39:52', '1', '2017-10-24 14:39:52');
INSERT INTO `provincial_cyp_factors` VALUES ('512', '6', '8', '9', '2.500000000', '1', '2017-10-24 14:39:52', '1', '2017-10-24 14:39:52');
INSERT INTO `provincial_cyp_factors` VALUES ('513', '6', '9', '9', '0.066666670', '1', '2017-10-24 14:39:52', '1', '2017-10-24 14:39:52');
INSERT INTO `provincial_cyp_factors` VALUES ('514', '6', '10', '9', '0.076923080', '1', '2017-10-24 14:39:53', '1', '2017-10-24 14:39:53');
INSERT INTO `provincial_cyp_factors` VALUES ('515', '6', '11', '9', '3.300000000', '1', '2017-10-24 14:39:53', '1', '2017-10-24 14:39:53');
INSERT INTO `provincial_cyp_factors` VALUES ('516', '6', '13', '9', '3.800000000', '1', '2017-10-24 14:39:53', '1', '2017-10-24 14:39:53');
INSERT INTO `provincial_cyp_factors` VALUES ('517', '6', '14', '9', '3.200000000', '1', '2017-10-24 14:39:53', '1', '2017-10-24 14:39:53');
INSERT INTO `provincial_cyp_factors` VALUES ('518', '6', '30', '9', null, '1', '2017-10-24 14:39:53', '1', '2017-10-24 14:39:53');
INSERT INTO `provincial_cyp_factors` VALUES ('519', '6', '31', '9', '13.000000000', '1', '2017-10-24 14:39:53', '1', '2017-10-24 14:39:53');
INSERT INTO `provincial_cyp_factors` VALUES ('520', '6', '32', '9', '13.000000000', '1', '2017-10-24 14:39:53', '1', '2017-10-24 14:39:53');
INSERT INTO `provincial_cyp_factors` VALUES ('521', '6', '33', '9', null, '1', '2017-10-24 14:39:53', '1', '2017-10-24 14:39:53');
INSERT INTO `provincial_cyp_factors` VALUES ('522', '6', '34', '9', null, '1', '2017-10-24 14:39:53', '1', '2017-10-24 14:39:53');
INSERT INTO `provincial_cyp_factors` VALUES ('523', '6', '1', '73', '0.008333330', '1', '2017-10-24 14:39:53', '1', '2017-10-24 14:39:53');
INSERT INTO `provincial_cyp_factors` VALUES ('524', '6', '2', '73', '0.066666670', '1', '2017-10-24 14:39:53', '1', '2017-10-24 14:39:53');
INSERT INTO `provincial_cyp_factors` VALUES ('525', '6', '3', '73', '0.050000000', '1', '2017-10-24 14:39:53', '1', '2017-10-24 14:39:53');
INSERT INTO `provincial_cyp_factors` VALUES ('526', '6', '4', '73', '3.300000000', '1', '2017-10-24 14:39:53', '1', '2017-10-24 14:39:53');
INSERT INTO `provincial_cyp_factors` VALUES ('527', '6', '5', '73', '4.600000000', '1', '2017-10-24 14:39:53', '1', '2017-10-24 14:39:53');
INSERT INTO `provincial_cyp_factors` VALUES ('528', '6', '6', '73', '0.166666000', '1', '2017-10-24 14:39:53', '1', '2017-10-24 14:39:53');
INSERT INTO `provincial_cyp_factors` VALUES ('529', '6', '7', '73', '0.250000000', '1', '2017-10-24 14:39:53', '1', '2017-10-24 14:39:53');
INSERT INTO `provincial_cyp_factors` VALUES ('530', '6', '8', '73', '2.500000000', '1', '2017-10-24 14:39:54', '1', '2017-10-24 14:39:54');
INSERT INTO `provincial_cyp_factors` VALUES ('531', '6', '9', '73', '0.066666670', '1', '2017-10-24 14:39:54', '1', '2017-10-24 14:39:54');
INSERT INTO `provincial_cyp_factors` VALUES ('532', '6', '10', '73', '0.076923080', '1', '2017-10-24 14:39:54', '1', '2017-10-24 14:39:54');
INSERT INTO `provincial_cyp_factors` VALUES ('533', '6', '11', '73', '3.300000000', '1', '2017-10-24 14:39:54', '1', '2017-10-24 14:39:54');
INSERT INTO `provincial_cyp_factors` VALUES ('534', '6', '13', '73', '3.800000000', '1', '2017-10-24 14:39:54', '1', '2017-10-24 14:39:54');
INSERT INTO `provincial_cyp_factors` VALUES ('535', '6', '14', '73', '3.200000000', '1', '2017-10-24 14:39:54', '1', '2017-10-24 14:39:54');
INSERT INTO `provincial_cyp_factors` VALUES ('536', '6', '30', '73', null, '1', '2017-10-24 14:39:54', '1', '2017-10-24 14:39:54');
INSERT INTO `provincial_cyp_factors` VALUES ('537', '6', '31', '73', '13.000000000', '1', '2017-10-24 14:39:54', '1', '2017-10-24 14:39:54');
INSERT INTO `provincial_cyp_factors` VALUES ('538', '6', '32', '73', '13.000000000', '1', '2017-10-24 14:39:54', '1', '2017-10-24 14:39:54');
INSERT INTO `provincial_cyp_factors` VALUES ('539', '6', '33', '73', null, '1', '2017-10-24 14:39:54', '1', '2017-10-24 14:39:54');
INSERT INTO `provincial_cyp_factors` VALUES ('540', '6', '34', '73', null, '1', '2017-10-24 14:39:54', '1', '2017-10-24 14:39:54');
INSERT INTO `provincial_cyp_factors` VALUES ('541', '7', '1', '1', '0.008333330', '1', '2017-10-24 14:39:54', '1', '2017-10-24 14:39:54');
INSERT INTO `provincial_cyp_factors` VALUES ('542', '7', '2', '1', '0.066666670', '1', '2017-10-24 14:39:54', '1', '2017-10-24 14:39:54');
INSERT INTO `provincial_cyp_factors` VALUES ('543', '7', '3', '1', '0.050000000', '1', '2017-10-24 14:39:54', '1', '2017-10-24 14:39:54');
INSERT INTO `provincial_cyp_factors` VALUES ('544', '7', '4', '1', '3.300000000', '1', '2017-10-24 14:39:54', '1', '2017-10-24 14:39:54');
INSERT INTO `provincial_cyp_factors` VALUES ('545', '7', '5', '1', '4.600000000', '1', '2017-10-24 14:39:54', '1', '2017-10-24 14:39:54');
INSERT INTO `provincial_cyp_factors` VALUES ('546', '7', '6', '1', '0.166666000', '1', '2017-10-24 14:39:55', '1', '2017-10-24 14:39:55');
INSERT INTO `provincial_cyp_factors` VALUES ('547', '7', '7', '1', '0.250000000', '1', '2017-10-24 14:39:55', '1', '2017-10-24 14:39:55');
INSERT INTO `provincial_cyp_factors` VALUES ('548', '7', '8', '1', '2.500000000', '1', '2017-10-24 14:39:55', '1', '2017-10-24 14:39:55');
INSERT INTO `provincial_cyp_factors` VALUES ('549', '7', '9', '1', '0.066666670', '1', '2017-10-24 14:39:55', '1', '2017-10-24 14:39:55');
INSERT INTO `provincial_cyp_factors` VALUES ('550', '7', '10', '1', '0.076923080', '1', '2017-10-24 14:39:55', '1', '2017-10-24 14:39:55');
INSERT INTO `provincial_cyp_factors` VALUES ('551', '7', '11', '1', '3.300000000', '1', '2017-10-24 14:39:55', '1', '2017-10-24 14:39:55');
INSERT INTO `provincial_cyp_factors` VALUES ('552', '7', '13', '1', '3.800000000', '1', '2017-10-24 14:39:55', '1', '2017-10-24 14:39:55');
INSERT INTO `provincial_cyp_factors` VALUES ('553', '7', '14', '1', '3.200000000', '1', '2017-10-24 14:39:55', '1', '2017-10-24 14:39:55');
INSERT INTO `provincial_cyp_factors` VALUES ('554', '7', '30', '1', null, '1', '2017-10-24 14:39:55', '1', '2017-10-24 14:39:55');
INSERT INTO `provincial_cyp_factors` VALUES ('555', '7', '31', '1', '13.000000000', '1', '2017-10-24 14:39:55', '1', '2017-10-24 14:39:55');
INSERT INTO `provincial_cyp_factors` VALUES ('556', '7', '32', '1', '13.000000000', '1', '2017-10-24 14:39:55', '1', '2017-10-24 14:39:55');
INSERT INTO `provincial_cyp_factors` VALUES ('557', '7', '33', '1', null, '1', '2017-10-24 14:39:55', '1', '2017-10-24 14:39:55');
INSERT INTO `provincial_cyp_factors` VALUES ('558', '7', '34', '1', null, '1', '2017-10-24 14:39:55', '1', '2017-10-24 14:39:55');
INSERT INTO `provincial_cyp_factors` VALUES ('559', '7', '1', '2', '0.008333330', '1', '2017-10-24 14:39:55', '1', '2017-10-24 14:39:55');
INSERT INTO `provincial_cyp_factors` VALUES ('560', '7', '2', '2', '0.066666670', '1', '2017-10-24 14:39:55', '1', '2017-10-24 14:39:55');
INSERT INTO `provincial_cyp_factors` VALUES ('561', '7', '3', '2', '0.050000000', '1', '2017-10-24 14:39:55', '1', '2017-10-24 14:39:55');
INSERT INTO `provincial_cyp_factors` VALUES ('562', '7', '4', '2', '3.300000000', '1', '2017-10-24 14:39:56', '1', '2017-10-24 14:39:56');
INSERT INTO `provincial_cyp_factors` VALUES ('563', '7', '5', '2', '4.600000000', '1', '2017-10-24 14:39:56', '1', '2017-10-24 14:39:56');
INSERT INTO `provincial_cyp_factors` VALUES ('564', '7', '6', '2', '0.166666000', '1', '2017-10-24 14:39:56', '1', '2017-10-24 14:39:56');
INSERT INTO `provincial_cyp_factors` VALUES ('565', '7', '7', '2', '0.250000000', '1', '2017-10-24 14:39:56', '1', '2017-10-24 14:39:56');
INSERT INTO `provincial_cyp_factors` VALUES ('566', '7', '8', '2', '2.500000000', '1', '2017-10-24 14:39:56', '1', '2017-10-24 14:39:56');
INSERT INTO `provincial_cyp_factors` VALUES ('567', '7', '9', '2', '0.066666670', '1', '2017-10-24 14:39:56', '1', '2017-10-24 14:39:56');
INSERT INTO `provincial_cyp_factors` VALUES ('568', '7', '10', '2', '0.076923080', '1', '2017-10-24 14:39:56', '1', '2017-10-24 14:39:56');
INSERT INTO `provincial_cyp_factors` VALUES ('569', '7', '11', '2', '3.300000000', '1', '2017-10-24 14:39:56', '1', '2017-10-24 14:39:56');
INSERT INTO `provincial_cyp_factors` VALUES ('570', '7', '13', '2', '3.800000000', '1', '2017-10-24 14:39:56', '1', '2017-10-24 14:39:56');
INSERT INTO `provincial_cyp_factors` VALUES ('571', '7', '14', '2', '3.200000000', '1', '2017-10-24 14:39:56', '1', '2017-10-24 14:39:56');
INSERT INTO `provincial_cyp_factors` VALUES ('572', '7', '30', '2', null, '1', '2017-10-24 14:39:56', '1', '2017-10-24 14:39:56');
INSERT INTO `provincial_cyp_factors` VALUES ('573', '7', '31', '2', '13.000000000', '1', '2017-10-24 14:39:56', '1', '2017-10-24 14:39:56');
INSERT INTO `provincial_cyp_factors` VALUES ('574', '7', '32', '2', '13.000000000', '1', '2017-10-24 14:39:56', '1', '2017-10-24 14:39:56');
INSERT INTO `provincial_cyp_factors` VALUES ('575', '7', '33', '2', null, '1', '2017-10-24 14:39:56', '1', '2017-10-24 14:39:56');
INSERT INTO `provincial_cyp_factors` VALUES ('576', '7', '34', '2', null, '1', '2017-10-24 14:39:56', '1', '2017-10-24 14:39:56');
INSERT INTO `provincial_cyp_factors` VALUES ('577', '7', '1', '7', '0.008333330', '1', '2017-10-24 14:39:56', '1', '2017-10-24 14:39:56');
INSERT INTO `provincial_cyp_factors` VALUES ('578', '7', '2', '7', '0.066666670', '1', '2017-10-24 14:39:57', '1', '2017-10-24 14:39:57');
INSERT INTO `provincial_cyp_factors` VALUES ('579', '7', '3', '7', '0.050000000', '1', '2017-10-24 14:39:57', '1', '2017-10-24 14:39:57');
INSERT INTO `provincial_cyp_factors` VALUES ('580', '7', '4', '7', '3.300000000', '1', '2017-10-24 14:39:57', '1', '2017-10-24 14:39:57');
INSERT INTO `provincial_cyp_factors` VALUES ('581', '7', '5', '7', '4.600000000', '1', '2017-10-24 14:39:57', '1', '2017-10-24 14:39:57');
INSERT INTO `provincial_cyp_factors` VALUES ('582', '7', '6', '7', '0.166666000', '1', '2017-10-24 14:39:57', '1', '2017-10-24 14:39:57');
INSERT INTO `provincial_cyp_factors` VALUES ('583', '7', '7', '7', '0.250000000', '1', '2017-10-24 14:39:57', '1', '2017-10-24 14:39:57');
INSERT INTO `provincial_cyp_factors` VALUES ('584', '7', '8', '7', '2.500000000', '1', '2017-10-24 14:39:57', '1', '2017-10-24 14:39:57');
INSERT INTO `provincial_cyp_factors` VALUES ('585', '7', '9', '7', '0.066666670', '1', '2017-10-24 14:39:57', '1', '2017-10-24 14:39:57');
INSERT INTO `provincial_cyp_factors` VALUES ('586', '7', '10', '7', '0.076923080', '1', '2017-10-24 14:39:57', '1', '2017-10-24 14:39:57');
INSERT INTO `provincial_cyp_factors` VALUES ('587', '7', '11', '7', '3.300000000', '1', '2017-10-24 14:39:57', '1', '2017-10-24 14:39:57');
INSERT INTO `provincial_cyp_factors` VALUES ('588', '7', '13', '7', '3.800000000', '1', '2017-10-24 14:39:57', '1', '2017-10-24 14:39:57');
INSERT INTO `provincial_cyp_factors` VALUES ('589', '7', '14', '7', '3.200000000', '1', '2017-10-24 14:39:57', '1', '2017-10-24 14:39:57');
INSERT INTO `provincial_cyp_factors` VALUES ('590', '7', '30', '7', null, '1', '2017-10-24 14:39:57', '1', '2017-10-24 14:39:57');
INSERT INTO `provincial_cyp_factors` VALUES ('591', '7', '31', '7', '13.000000000', '1', '2017-10-24 14:39:57', '1', '2017-10-24 14:39:57');
INSERT INTO `provincial_cyp_factors` VALUES ('592', '7', '32', '7', '13.000000000', '1', '2017-10-24 14:39:57', '1', '2017-10-24 14:39:57');
INSERT INTO `provincial_cyp_factors` VALUES ('593', '7', '33', '7', null, '1', '2017-10-24 14:39:58', '1', '2017-10-24 14:39:58');
INSERT INTO `provincial_cyp_factors` VALUES ('594', '7', '34', '7', null, '1', '2017-10-24 14:39:58', '1', '2017-10-24 14:39:58');
INSERT INTO `provincial_cyp_factors` VALUES ('595', '7', '1', '9', '0.008333330', '1', '2017-10-24 14:39:58', '1', '2017-10-24 14:39:58');
INSERT INTO `provincial_cyp_factors` VALUES ('596', '7', '2', '9', '0.066666670', '1', '2017-10-24 14:39:58', '1', '2017-10-24 14:39:58');
INSERT INTO `provincial_cyp_factors` VALUES ('597', '7', '3', '9', '0.050000000', '1', '2017-10-24 14:39:58', '1', '2017-10-24 14:39:58');
INSERT INTO `provincial_cyp_factors` VALUES ('598', '7', '4', '9', '3.300000000', '1', '2017-10-24 14:39:58', '1', '2017-10-24 14:39:58');
INSERT INTO `provincial_cyp_factors` VALUES ('599', '7', '5', '9', '4.600000000', '1', '2017-10-24 14:39:58', '1', '2017-10-24 14:39:58');
INSERT INTO `provincial_cyp_factors` VALUES ('600', '7', '6', '9', '0.166666000', '1', '2017-10-24 14:39:58', '1', '2017-10-24 14:39:58');
INSERT INTO `provincial_cyp_factors` VALUES ('601', '7', '7', '9', '0.250000000', '1', '2017-10-24 14:39:58', '1', '2017-10-24 14:39:58');
INSERT INTO `provincial_cyp_factors` VALUES ('602', '7', '8', '9', '2.500000000', '1', '2017-10-24 14:39:58', '1', '2017-10-24 14:39:58');
INSERT INTO `provincial_cyp_factors` VALUES ('603', '7', '9', '9', '0.066666670', '1', '2017-10-24 14:39:58', '1', '2017-10-24 14:39:58');
INSERT INTO `provincial_cyp_factors` VALUES ('604', '7', '10', '9', '0.076923080', '1', '2017-10-24 14:39:58', '1', '2017-10-24 14:39:58');
INSERT INTO `provincial_cyp_factors` VALUES ('605', '7', '11', '9', '3.300000000', '1', '2017-10-24 14:39:58', '1', '2017-10-24 14:39:58');
INSERT INTO `provincial_cyp_factors` VALUES ('606', '7', '13', '9', '3.800000000', '1', '2017-10-24 14:39:58', '1', '2017-10-24 14:39:58');
INSERT INTO `provincial_cyp_factors` VALUES ('607', '7', '14', '9', '3.200000000', '1', '2017-10-24 14:39:58', '1', '2017-10-24 14:39:58');
INSERT INTO `provincial_cyp_factors` VALUES ('608', '7', '30', '9', null, '1', '2017-10-24 14:39:58', '1', '2017-10-24 14:39:58');
INSERT INTO `provincial_cyp_factors` VALUES ('609', '7', '31', '9', '13.000000000', '1', '2017-10-24 14:39:59', '1', '2017-10-24 14:39:59');
INSERT INTO `provincial_cyp_factors` VALUES ('610', '7', '32', '9', '13.000000000', '1', '2017-10-24 14:39:59', '1', '2017-10-24 14:39:59');
INSERT INTO `provincial_cyp_factors` VALUES ('611', '7', '33', '9', null, '1', '2017-10-24 14:39:59', '1', '2017-10-24 14:39:59');
INSERT INTO `provincial_cyp_factors` VALUES ('612', '7', '34', '9', null, '1', '2017-10-24 14:39:59', '1', '2017-10-24 14:39:59');
INSERT INTO `provincial_cyp_factors` VALUES ('613', '7', '1', '73', '0.008333330', '1', '2017-10-24 14:39:59', '1', '2017-10-24 14:39:59');
INSERT INTO `provincial_cyp_factors` VALUES ('614', '7', '2', '73', '0.066666670', '1', '2017-10-24 14:39:59', '1', '2017-10-24 14:39:59');
INSERT INTO `provincial_cyp_factors` VALUES ('615', '7', '3', '73', '0.050000000', '1', '2017-10-24 14:39:59', '1', '2017-10-24 14:39:59');
INSERT INTO `provincial_cyp_factors` VALUES ('616', '7', '4', '73', '3.300000000', '1', '2017-10-24 14:39:59', '1', '2017-10-24 14:39:59');
INSERT INTO `provincial_cyp_factors` VALUES ('617', '7', '5', '73', '4.600000000', '1', '2017-10-24 14:39:59', '1', '2017-10-24 14:39:59');
INSERT INTO `provincial_cyp_factors` VALUES ('618', '7', '6', '73', '0.166666000', '1', '2017-10-24 14:39:59', '1', '2017-10-24 14:39:59');
INSERT INTO `provincial_cyp_factors` VALUES ('619', '7', '7', '73', '0.250000000', '1', '2017-10-24 14:39:59', '1', '2017-10-24 14:39:59');
INSERT INTO `provincial_cyp_factors` VALUES ('620', '7', '8', '73', '2.500000000', '1', '2017-10-24 14:39:59', '1', '2017-10-24 14:39:59');
INSERT INTO `provincial_cyp_factors` VALUES ('621', '7', '9', '73', '0.066666670', '1', '2017-10-24 14:39:59', '1', '2017-10-24 14:39:59');
INSERT INTO `provincial_cyp_factors` VALUES ('622', '7', '10', '73', '0.076923080', '1', '2017-10-24 14:39:59', '1', '2017-10-24 14:39:59');
INSERT INTO `provincial_cyp_factors` VALUES ('623', '7', '11', '73', '3.300000000', '1', '2017-10-24 14:39:59', '1', '2017-10-24 14:39:59');
INSERT INTO `provincial_cyp_factors` VALUES ('624', '7', '13', '73', '3.800000000', '1', '2017-10-24 14:39:59', '1', '2017-10-24 14:39:59');
INSERT INTO `provincial_cyp_factors` VALUES ('625', '7', '14', '73', '3.200000000', '1', '2017-10-24 14:40:00', '1', '2017-10-24 14:40:00');
INSERT INTO `provincial_cyp_factors` VALUES ('626', '7', '30', '73', null, '1', '2017-10-24 14:40:00', '1', '2017-10-24 14:40:00');
INSERT INTO `provincial_cyp_factors` VALUES ('627', '7', '31', '73', '13.000000000', '1', '2017-10-24 14:40:00', '1', '2017-10-24 14:40:00');
INSERT INTO `provincial_cyp_factors` VALUES ('628', '7', '32', '73', '13.000000000', '1', '2017-10-24 14:40:00', '1', '2017-10-24 14:40:00');
INSERT INTO `provincial_cyp_factors` VALUES ('629', '7', '33', '73', null, '1', '2017-10-24 14:40:00', '1', '2017-10-24 14:40:00');
INSERT INTO `provincial_cyp_factors` VALUES ('630', '7', '34', '73', null, '1', '2017-10-24 14:40:00', '1', '2017-10-24 14:40:00');
INSERT INTO `provincial_cyp_factors` VALUES ('631', '8', '1', '1', '0.008333330', '1', '2017-10-24 14:40:00', '1', '2017-10-24 14:40:00');
INSERT INTO `provincial_cyp_factors` VALUES ('632', '8', '2', '1', '0.066666670', '1', '2017-10-24 14:40:00', '1', '2017-10-24 14:40:00');
INSERT INTO `provincial_cyp_factors` VALUES ('633', '8', '3', '1', '0.050000000', '1', '2017-10-24 14:40:00', '1', '2017-10-24 14:40:00');
INSERT INTO `provincial_cyp_factors` VALUES ('634', '8', '4', '1', '3.300000000', '1', '2017-10-24 14:40:00', '1', '2017-10-24 14:40:00');
INSERT INTO `provincial_cyp_factors` VALUES ('635', '8', '5', '1', '4.600000000', '1', '2017-10-24 14:40:00', '1', '2017-10-24 14:40:00');
INSERT INTO `provincial_cyp_factors` VALUES ('636', '8', '6', '1', '0.166666000', '1', '2017-10-24 14:40:00', '1', '2017-10-24 14:40:00');
INSERT INTO `provincial_cyp_factors` VALUES ('637', '8', '7', '1', '0.250000000', '1', '2017-10-24 14:40:00', '1', '2017-10-24 14:40:00');
INSERT INTO `provincial_cyp_factors` VALUES ('638', '8', '8', '1', '2.500000000', '1', '2017-10-24 14:40:00', '1', '2017-10-24 14:40:00');
INSERT INTO `provincial_cyp_factors` VALUES ('639', '8', '9', '1', '0.066666670', '1', '2017-10-24 14:40:00', '1', '2017-10-24 14:40:00');
INSERT INTO `provincial_cyp_factors` VALUES ('640', '8', '10', '1', '0.076923080', '1', '2017-10-24 14:40:01', '1', '2017-10-24 14:40:01');
INSERT INTO `provincial_cyp_factors` VALUES ('641', '8', '11', '1', '3.300000000', '1', '2017-10-24 14:40:01', '1', '2017-10-24 14:40:01');
INSERT INTO `provincial_cyp_factors` VALUES ('642', '8', '13', '1', '3.800000000', '1', '2017-10-24 14:40:01', '1', '2017-10-24 14:40:01');
INSERT INTO `provincial_cyp_factors` VALUES ('643', '8', '14', '1', '3.200000000', '1', '2017-10-24 14:40:01', '1', '2017-10-24 14:40:01');
INSERT INTO `provincial_cyp_factors` VALUES ('644', '8', '30', '1', null, '1', '2017-10-24 14:40:01', '1', '2017-10-24 14:40:01');
INSERT INTO `provincial_cyp_factors` VALUES ('645', '8', '31', '1', '13.000000000', '1', '2017-10-24 14:40:01', '1', '2017-10-24 14:40:01');
INSERT INTO `provincial_cyp_factors` VALUES ('646', '8', '32', '1', '13.000000000', '1', '2017-10-24 14:40:01', '1', '2017-10-24 14:40:01');
INSERT INTO `provincial_cyp_factors` VALUES ('647', '8', '33', '1', null, '1', '2017-10-24 14:40:01', '1', '2017-10-24 14:40:01');
INSERT INTO `provincial_cyp_factors` VALUES ('648', '8', '34', '1', null, '1', '2017-10-24 14:40:01', '1', '2017-10-24 14:40:01');
INSERT INTO `provincial_cyp_factors` VALUES ('649', '8', '1', '2', '0.008333330', '1', '2017-10-24 14:40:01', '1', '2017-10-24 14:40:01');
INSERT INTO `provincial_cyp_factors` VALUES ('650', '8', '2', '2', '0.066666670', '1', '2017-10-24 14:40:01', '1', '2017-10-24 14:40:01');
INSERT INTO `provincial_cyp_factors` VALUES ('651', '8', '3', '2', '0.050000000', '1', '2017-10-24 14:40:01', '1', '2017-10-24 14:40:01');
INSERT INTO `provincial_cyp_factors` VALUES ('652', '8', '4', '2', '3.300000000', '1', '2017-10-24 14:40:01', '1', '2017-10-24 14:40:01');
INSERT INTO `provincial_cyp_factors` VALUES ('653', '8', '5', '2', '4.600000000', '1', '2017-10-24 14:40:01', '1', '2017-10-24 14:40:01');
INSERT INTO `provincial_cyp_factors` VALUES ('654', '8', '6', '2', '0.166666000', '1', '2017-10-24 14:40:01', '1', '2017-10-24 14:40:01');
INSERT INTO `provincial_cyp_factors` VALUES ('655', '8', '7', '2', '0.250000000', '1', '2017-10-24 14:40:01', '1', '2017-10-24 14:40:01');
INSERT INTO `provincial_cyp_factors` VALUES ('656', '8', '8', '2', '2.500000000', '1', '2017-10-24 14:40:02', '1', '2017-10-24 14:40:02');
INSERT INTO `provincial_cyp_factors` VALUES ('657', '8', '9', '2', '0.066666670', '1', '2017-10-24 14:40:02', '1', '2017-10-24 14:40:02');
INSERT INTO `provincial_cyp_factors` VALUES ('658', '8', '10', '2', '0.076923080', '1', '2017-10-24 14:40:02', '1', '2017-10-24 14:40:02');
INSERT INTO `provincial_cyp_factors` VALUES ('659', '8', '11', '2', '3.300000000', '1', '2017-10-24 14:40:02', '1', '2017-10-24 14:40:02');
INSERT INTO `provincial_cyp_factors` VALUES ('660', '8', '13', '2', '3.800000000', '1', '2017-10-24 14:40:02', '1', '2017-10-24 14:40:02');
INSERT INTO `provincial_cyp_factors` VALUES ('661', '8', '14', '2', '3.200000000', '1', '2017-10-24 14:40:02', '1', '2017-10-24 14:40:02');
INSERT INTO `provincial_cyp_factors` VALUES ('662', '8', '30', '2', null, '1', '2017-10-24 14:40:02', '1', '2017-10-24 14:40:02');
INSERT INTO `provincial_cyp_factors` VALUES ('663', '8', '31', '2', '13.000000000', '1', '2017-10-24 14:40:02', '1', '2017-10-24 14:40:02');
INSERT INTO `provincial_cyp_factors` VALUES ('664', '8', '32', '2', '13.000000000', '1', '2017-10-24 14:40:02', '1', '2017-10-24 14:40:02');
INSERT INTO `provincial_cyp_factors` VALUES ('665', '8', '33', '2', null, '1', '2017-10-24 14:40:02', '1', '2017-10-24 14:40:02');
INSERT INTO `provincial_cyp_factors` VALUES ('666', '8', '34', '2', null, '1', '2017-10-24 14:40:02', '1', '2017-10-24 14:40:02');
INSERT INTO `provincial_cyp_factors` VALUES ('667', '8', '1', '7', '0.008333330', '1', '2017-10-24 14:40:02', '1', '2017-10-24 14:40:02');
INSERT INTO `provincial_cyp_factors` VALUES ('668', '8', '2', '7', '0.066666670', '1', '2017-10-24 14:40:02', '1', '2017-10-24 14:40:02');
INSERT INTO `provincial_cyp_factors` VALUES ('669', '8', '3', '7', '0.050000000', '1', '2017-10-24 14:40:02', '1', '2017-10-24 14:40:02');
INSERT INTO `provincial_cyp_factors` VALUES ('670', '8', '4', '7', '3.300000000', '1', '2017-10-24 14:40:02', '1', '2017-10-24 14:40:02');
INSERT INTO `provincial_cyp_factors` VALUES ('671', '8', '5', '7', '4.600000000', '1', '2017-10-24 14:40:03', '1', '2017-10-24 14:40:03');
INSERT INTO `provincial_cyp_factors` VALUES ('672', '8', '6', '7', '0.166666000', '1', '2017-10-24 14:40:03', '1', '2017-10-24 14:40:03');
INSERT INTO `provincial_cyp_factors` VALUES ('673', '8', '7', '7', '0.250000000', '1', '2017-10-24 14:40:03', '1', '2017-10-24 14:40:03');
INSERT INTO `provincial_cyp_factors` VALUES ('674', '8', '8', '7', '2.500000000', '1', '2017-10-24 14:40:03', '1', '2017-10-24 14:40:03');
INSERT INTO `provincial_cyp_factors` VALUES ('675', '8', '9', '7', '0.066666670', '1', '2017-10-24 14:40:03', '1', '2017-10-24 14:40:03');
INSERT INTO `provincial_cyp_factors` VALUES ('676', '8', '10', '7', '0.076923080', '1', '2017-10-24 14:40:03', '1', '2017-10-24 14:40:03');
INSERT INTO `provincial_cyp_factors` VALUES ('677', '8', '11', '7', '3.300000000', '1', '2017-10-24 14:40:03', '1', '2017-10-24 14:40:03');
INSERT INTO `provincial_cyp_factors` VALUES ('678', '8', '13', '7', '3.800000000', '1', '2017-10-24 14:40:03', '1', '2017-10-24 14:40:03');
INSERT INTO `provincial_cyp_factors` VALUES ('679', '8', '14', '7', '3.200000000', '1', '2017-10-24 14:40:03', '1', '2017-10-24 14:40:03');
INSERT INTO `provincial_cyp_factors` VALUES ('680', '8', '30', '7', null, '1', '2017-10-24 14:40:03', '1', '2017-10-24 14:40:03');
INSERT INTO `provincial_cyp_factors` VALUES ('681', '8', '31', '7', '13.000000000', '1', '2017-10-24 14:40:03', '1', '2017-10-24 14:40:03');
INSERT INTO `provincial_cyp_factors` VALUES ('682', '8', '32', '7', '13.000000000', '1', '2017-10-24 14:40:03', '1', '2017-10-24 14:40:03');
INSERT INTO `provincial_cyp_factors` VALUES ('683', '8', '33', '7', null, '1', '2017-10-24 14:40:03', '1', '2017-10-24 14:40:03');
INSERT INTO `provincial_cyp_factors` VALUES ('684', '8', '34', '7', null, '1', '2017-10-24 14:40:03', '1', '2017-10-24 14:40:03');
INSERT INTO `provincial_cyp_factors` VALUES ('685', '8', '1', '9', '0.008333330', '1', '2017-10-24 14:40:03', '1', '2017-10-24 14:40:03');
INSERT INTO `provincial_cyp_factors` VALUES ('686', '8', '2', '9', '0.066666670', '1', '2017-10-24 14:40:03', '1', '2017-10-24 14:40:03');
INSERT INTO `provincial_cyp_factors` VALUES ('687', '8', '3', '9', '0.050000000', '1', '2017-10-24 14:40:04', '1', '2017-10-24 14:40:04');
INSERT INTO `provincial_cyp_factors` VALUES ('688', '8', '4', '9', '3.300000000', '1', '2017-10-24 14:40:04', '1', '2017-10-24 14:40:04');
INSERT INTO `provincial_cyp_factors` VALUES ('689', '8', '5', '9', '4.600000000', '1', '2017-10-24 14:40:04', '1', '2017-10-24 14:40:04');
INSERT INTO `provincial_cyp_factors` VALUES ('690', '8', '6', '9', '0.166666000', '1', '2017-10-24 14:40:04', '1', '2017-10-24 14:40:04');
INSERT INTO `provincial_cyp_factors` VALUES ('691', '8', '7', '9', '0.250000000', '1', '2017-10-24 14:40:04', '1', '2017-10-24 14:40:04');
INSERT INTO `provincial_cyp_factors` VALUES ('692', '8', '8', '9', '2.500000000', '1', '2017-10-24 14:40:04', '1', '2017-10-24 14:40:04');
INSERT INTO `provincial_cyp_factors` VALUES ('693', '8', '9', '9', '0.066666670', '1', '2017-10-24 14:40:04', '1', '2017-10-24 14:40:04');
INSERT INTO `provincial_cyp_factors` VALUES ('694', '8', '10', '9', '0.076923080', '1', '2017-10-24 14:40:04', '1', '2017-10-24 14:40:04');
INSERT INTO `provincial_cyp_factors` VALUES ('695', '8', '11', '9', '3.300000000', '1', '2017-10-24 14:40:04', '1', '2017-10-24 14:40:04');
INSERT INTO `provincial_cyp_factors` VALUES ('696', '8', '13', '9', '3.800000000', '1', '2017-10-24 14:40:04', '1', '2017-10-24 14:40:04');
INSERT INTO `provincial_cyp_factors` VALUES ('697', '8', '14', '9', '3.200000000', '1', '2017-10-24 14:40:04', '1', '2017-10-24 14:40:04');
INSERT INTO `provincial_cyp_factors` VALUES ('698', '8', '30', '9', null, '1', '2017-10-24 14:40:04', '1', '2017-10-24 14:40:04');
INSERT INTO `provincial_cyp_factors` VALUES ('699', '8', '31', '9', '13.000000000', '1', '2017-10-24 14:40:04', '1', '2017-10-24 14:40:04');
INSERT INTO `provincial_cyp_factors` VALUES ('700', '8', '32', '9', '13.000000000', '1', '2017-10-24 14:40:04', '1', '2017-10-24 14:40:04');
INSERT INTO `provincial_cyp_factors` VALUES ('701', '8', '33', '9', null, '1', '2017-10-24 14:40:04', '1', '2017-10-24 14:40:04');
INSERT INTO `provincial_cyp_factors` VALUES ('702', '8', '34', '9', null, '1', '2017-10-24 14:40:05', '1', '2017-10-24 14:40:05');
INSERT INTO `provincial_cyp_factors` VALUES ('703', '8', '1', '73', '0.008333330', '1', '2017-10-24 14:40:05', '1', '2017-10-24 14:40:05');
INSERT INTO `provincial_cyp_factors` VALUES ('704', '8', '2', '73', '0.066666670', '1', '2017-10-24 14:40:05', '1', '2017-10-24 14:40:05');
INSERT INTO `provincial_cyp_factors` VALUES ('705', '8', '3', '73', '0.050000000', '1', '2017-10-24 14:40:05', '1', '2017-10-24 14:40:05');
INSERT INTO `provincial_cyp_factors` VALUES ('706', '8', '4', '73', '3.300000000', '1', '2017-10-24 14:40:05', '1', '2017-10-24 14:40:05');
INSERT INTO `provincial_cyp_factors` VALUES ('707', '8', '5', '73', '4.600000000', '1', '2017-10-24 14:40:05', '1', '2017-10-24 14:40:05');
INSERT INTO `provincial_cyp_factors` VALUES ('708', '8', '6', '73', '0.166666000', '1', '2017-10-24 14:40:05', '1', '2017-10-24 14:40:05');
INSERT INTO `provincial_cyp_factors` VALUES ('709', '8', '7', '73', '0.250000000', '1', '2017-10-24 14:40:05', '1', '2017-10-24 14:40:05');
INSERT INTO `provincial_cyp_factors` VALUES ('710', '8', '8', '73', '2.500000000', '1', '2017-10-24 14:40:05', '1', '2017-10-24 14:40:05');
INSERT INTO `provincial_cyp_factors` VALUES ('711', '8', '9', '73', '0.066666670', '1', '2017-10-24 14:40:05', '1', '2017-10-24 14:40:05');
INSERT INTO `provincial_cyp_factors` VALUES ('712', '8', '10', '73', '0.076923080', '1', '2017-10-24 14:40:05', '1', '2017-10-24 14:40:05');
INSERT INTO `provincial_cyp_factors` VALUES ('713', '8', '11', '73', '3.300000000', '1', '2017-10-24 14:40:05', '1', '2017-10-24 14:40:05');
INSERT INTO `provincial_cyp_factors` VALUES ('714', '8', '13', '73', '3.800000000', '1', '2017-10-24 14:40:05', '1', '2017-10-24 14:40:05');
INSERT INTO `provincial_cyp_factors` VALUES ('715', '8', '14', '73', '3.200000000', '1', '2017-10-24 14:40:05', '1', '2017-10-24 14:40:05');
INSERT INTO `provincial_cyp_factors` VALUES ('716', '8', '30', '73', null, '1', '2017-10-24 14:40:05', '1', '2017-10-24 14:40:05');
INSERT INTO `provincial_cyp_factors` VALUES ('717', '8', '31', '73', '13.000000000', '1', '2017-10-24 14:40:05', '1', '2017-10-24 14:40:05');
INSERT INTO `provincial_cyp_factors` VALUES ('718', '8', '32', '73', '13.000000000', '1', '2017-10-24 14:40:06', '1', '2017-10-24 14:40:06');
INSERT INTO `provincial_cyp_factors` VALUES ('719', '8', '33', '73', null, '1', '2017-10-24 14:40:06', '1', '2017-10-24 14:40:06');
INSERT INTO `provincial_cyp_factors` VALUES ('720', '8', '34', '73', null, '1', '2017-10-24 14:40:06', '1', '2017-10-24 14:40:06');
INSERT INTO `provincial_cyp_factors` VALUES ('721', '2', '81', '1', '2.500000000', '1', '2019-03-21 10:41:51', '1', '2019-03-21 10:41:51');

-- ----------------------------
-- Table structure for reports
-- ----------------------------
DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports` (
  `report_id` varchar(60) NOT NULL DEFAULT '',
  `report_group` varchar(100) DEFAULT NULL,
  `report_type` decimal(1,0) DEFAULT NULL COMMENT 'graph or report',
  `report_title` varchar(60) DEFAULT NULL,
  `report_xaxis` varchar(60) DEFAULT NULL,
  `report_yaxis` varchar(60) DEFAULT NULL,
  `report_units` varchar(60) DEFAULT NULL,
  `report_factor` decimal(8,0) DEFAULT NULL COMMENT 'factor to scale down y-axix',
  `report_field` varchar(100) DEFAULT NULL,
  `report_description` text,
  `staticpage` varchar(100) DEFAULT NULL,
  `footer_staticpage` varchar(100) DEFAULT NULL,
  `report_order` smallint(6) DEFAULT NULL,
  `report_show_simple` smallint(1) DEFAULT '1',
  `report_show_comp` smallint(1) DEFAULT '1',
  PRIMARY KEY (`report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reports
-- ----------------------------
INSERT INTO `reports` VALUES ('SNASUM', null, '3', null, null, null, null, null, null, 'SNASUM', 'National Summary Report All Products', null, null, '1', '1');
INSERT INTO `reports` VALUES ('SNASUMSTK', null, '3', null, null, null, null, null, null, null, 'National Summary By Stakeholders Single Product', null, null, '1', '1');
INSERT INTO `reports` VALUES ('SNASUMSTKALLPROD', null, '3', null, null, null, null, null, null, null, 'National Summary By Stakeholders All Products', null, null, '1', '1');
INSERT INTO `reports` VALUES ('SNASUMSTOCKLOC', null, '3', null, null, null, null, null, null, null, 'Stock Locator Report', null, null, '1', '1');
INSERT INTO `reports` VALUES ('SDISTRICTREPORT', null, '3', null, null, null, null, null, null, null, 'District Report', null, null, '1', '1');
INSERT INTO `reports` VALUES ('SFIELDREPORT', null, '3', null, null, null, null, null, null, null, 'Field Report', null, null, '1', '1');
INSERT INTO `reports` VALUES ('SPROVINCEREPORT', null, '3', null, null, null, null, null, null, null, 'Province Report', null, null, '1', '1');
INSERT INTO `reports` VALUES ('GCLOSINGFLD', 'OnHand', '1', 'Stock On Hand - Field', 'Period', 'Closing Balance Field', 'units', '1', 'wh_cbl_a', null, 'Graph Closing Balance Field', null, '4', '1', '1');
INSERT INTO `reports` VALUES ('GAMC', 'Dispensed', '1', 'Avg Monthly Consumption', 'Period', 'AMC', 'units', '1', 'amc', null, 'Average Monthly Consumption', null, '3', '1', '1');
INSERT INTO `reports` VALUES ('GCLOSINGTOTAL', 'OnHand', '1', 'Stock On Hand - Total', 'Period', 'Closing Total', 'units', '1', 'wh_cbl_a+fld_cbl_a', null, 'Graph Total Closing Balance', null, '6', '1', '1');
INSERT INTO `reports` VALUES ('GMOS', 'MOS', '1', 'Months of Stock - Total', 'Period', 'MOS', 'units', '1', 'getMOS()', null, 'Graph MOS', '', '9', '1', '1');
INSERT INTO `reports` VALUES ('GISSUES', 'Dispensed', '1', 'Consumption', 'Period', 'Consumption', 'units', '1', 'wh_issue_up', 'Consumption', 'Graph Consumption', null, '2', '1', '1');
INSERT INTO `reports` VALUES ('GMOSF', 'MOS', '1', 'Months Of Stock - Field', 'Period', 'MOS', 'units', '1', 'getMOSF()', null, 'Graph MOS Field', null, '7', '1', '1');
INSERT INTO `reports` VALUES ('GMOSW', 'MOS', '1', 'Month of Stock - Whse', 'Period', 'MOS', 'units', '1', 'getMOSW()', null, 'Graph MOS Warehouse', null, '8', '1', '1');
INSERT INTO `reports` VALUES ('GCYP', 'CYP', '1', 'Couple Year Protection', 'Period', 'CYP', 'units', '1', 'CYP', 'Couple Year Protection will appear in this graph', 'Graph CYP', null, '1', '1', '1');
INSERT INTO `reports` VALUES ('GCLOSING', 'OnHand', '1', 'Stock On Hand - Whse', 'Period', 'Closing Balance', 'units', '1', 'fld_wbl_a', 'This11 is the closing Balance report', 'Graph Closing Balance', null, '5', '1', '1');
INSERT INTO `reports` VALUES ('STOCKOUTRPT', null, '3', null, null, null, null, null, null, 'STOCKOUTRPT', 'Yearly Stockout Summary Report', null, null, '1', '1');
INSERT INTO `reports` VALUES ('STOCK', '', '3', 'District Stock Yearly Report', '', '', '', null, '', 'SNASUM', 'District Stock Yearly Report', '', null, '1', '1');
INSERT INTO `reports` VALUES ('FSAR', '', '3', 'Field Stock Availibility Report', '', '', '', null, '', 'FSAR', 'Field Stock Availibility Report', '', null, '1', '1');
INSERT INTO `reports` VALUES ('SNONREPDIST', '', '3', 'Reported Stores/Facilities Report', '', '', '', null, '', 'SNONREPDIST', 'Reported Stores/Facilities Report', '', null, '1', '1');
INSERT INTO `reports` VALUES ('QTRREPORT', '', '3', 'Quarterly Reporting Rate', '', '', '', null, '', 'QTRREPORT', 'Quarterly Reporting Rate', '', null, '1', '1');
INSERT INTO `reports` VALUES ('PROVINCERRREPORT', '', '3', 'Provincial Reporting Rate', '', '', '', null, '', 'PROVINCERRREPORT', 'Provincial Reporting Rate', '', null, '1', '1');
INSERT INTO `reports` VALUES ('PROJECTEDCONTRACEPTIVE', null, '3', 'Projected Contraceptive Requirement ', null, null, null, null, null, 'PROJECTEDCONTRACEPTIVE', 'Projected Contraceptive Requirement ', null, null, '1', '1');
INSERT INTO `reports` VALUES ('CENTRALWAREHOUSE', '', '3', 'Central/Provincial Warehouse Report', '', '', '', null, '', 'CENTRALWAREHOUSE', 'Central/Provincial Warehouse Report', '', null, '1', '1');
INSERT INTO `reports` VALUES ('PROVINCIALWAREHOUSE', '', '3', 'Provincial Yearly Report', '', '', '', null, '', 'PROVINCIALWAREHOUSE', 'Provincial Yearly Report', '', null, '1', '1');
INSERT INTO `reports` VALUES ('PRIVATESECTOR', '', '3', 'Private Sector Yearly Report', '', '', '', null, '', 'PRIVATESECTOR', 'Private Sector Yearly Report', '', null, '1', '1');
INSERT INTO `reports` VALUES ('PPSECTORREPORT', '', '3', 'Public Private Sector Report', '', '', '', null, '', 'PPSECTORREPORT', 'Public Private Sector Report', '', null, '1', '1');
INSERT INTO `reports` VALUES ('STOCKSUFFICIENCY', null, '3', 'Provincial Monthly Stock Sufficiency Report', null, null, null, null, null, 'STOCKSUFFICIENCY', 'Provincial Monthly Stock Sufficiency Report', null, null, '1', '1');
INSERT INTO `reports` VALUES ('STOCKISSUANCE', null, '3', 'Stock Issuance Status Report', null, null, null, null, null, 'STOCKISSUANCE', 'Stock Issuance Status Report', null, null, '1', '1');
INSERT INTO `reports` VALUES ('SHIPMENTREPORT', null, '3', 'Shipment Report', null, null, null, null, null, 'SHIPMENTREPORT', 'Shipment Report', null, null, '1', '1');
INSERT INTO `reports` VALUES ('DISTRIBUTIONREPORT', null, '3', 'Contraceptive Distribution Report', null, null, null, null, null, 'DISTRIBUTIONREPORT', 'Contraceptive Distribution Report', null, null, '1', '1');
INSERT INTO `reports` VALUES ('CHF', '', '3', 'Health Facility Wise Compliance Report', '', '', '', null, '', 'CHF', 'Health Facility Wise Compliance Report', '', null, '1', '1');
INSERT INTO `reports` VALUES ('CD', '', '3', 'District Wise Compliance Report', '', '', '', null, '', 'CD', 'District Wise Compliance Report', '', null, '1', '1');

-- ----------------------------
-- Table structure for resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_name` varchar(100) DEFAULT NULL,
  `description` text,
  `page_title` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `resource_type_id` int(11) NOT NULL,
  `icon_class` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`),
  KEY `resource_type_id` (`resource_type_id`),
  KEY `resources_created_by_users_pk` (`created_by`),
  KEY `resources_created_by_users_pk2` (`modified_by`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES ('1', 'application/admin/AdminHome.php', null, 'Home', null, '2', 'fa fa-home', '1', '2016-03-02 15:32:32', '1', '2016-03-11 16:26:09');
INSERT INTO `resources` VALUES ('2', 'application/consumption/data_entry_admin.php', null, 'Data Entry', null, '2', 'fa fa-table', '1', '2016-03-02 15:32:32', '1', '2016-03-11 16:26:09');
INSERT INTO `resources` VALUES ('3', 'application/consumption/data_entry_admin1.php', null, 'Implanon & Jadelle', null, '2', 'fa fa-table', '1', '2016-03-02 15:32:32', '1', '2016-03-11 16:26:09');
INSERT INTO `resources` VALUES ('4', 'application/admin/ManageWarehouse.php', null, 'Warehouses', null, '2', 'fa fa-home', '1', '2016-03-02 15:32:32', '1', '2016-03-11 16:26:09');
INSERT INTO `resources` VALUES ('5', 'application/admin/ManageUser.php', null, 'Users', null, '2', 'fa fa-user', '1', '2016-03-02 15:32:32', '1', '2016-03-11 16:26:09');
INSERT INTO `resources` VALUES ('6', 'application/admin/unlock-data-entry.php', null, 'Unlock Data Entry', null, '2', 'fa fa-unlock', '1', '2016-03-02 15:32:32', '1', '2016-03-11 16:26:09');
INSERT INTO `resources` VALUES ('7', 'application/dashboard/dashboard.php', null, 'Dashboard', '126', '2', '', null, null, '1', '2017-12-18 16:30:18');
INSERT INTO `resources` VALUES ('8', 'Inventory Management', null, null, null, '2', 'fa fa-cubes', '1', '2016-03-02 15:38:44', '1', '2016-03-11 16:26:09');
INSERT INTO `resources` VALUES ('9', 'application/im/new_receive.php', null, 'Stock Receive (Supplier)', '8', '2', null, '1', '2016-03-02 15:40:11', '1', '2016-03-11 16:26:26');
INSERT INTO `resources` VALUES ('10', 'application/im/new_receive_wh.php', null, 'Stock Receive (Warehouse)', '8', '2', null, '1', '2016-03-02 15:40:11', '1', '2016-03-11 16:26:26');
INSERT INTO `resources` VALUES ('11', 'application/im/stock_receive.php', null, 'Stock Receive Search', '8', '2', null, '1', '2016-03-02 15:40:12', '1', '2016-03-11 16:26:26');
INSERT INTO `resources` VALUES ('12', 'application/im/placement_locations.php', null, 'Placement Locations', '8', '2', null, '1', '2016-03-02 15:40:12', '1', '2016-03-11 16:26:26');
INSERT INTO `resources` VALUES ('13', 'application/im/stock_placement.php', null, 'Location Status', '8', '2', null, '1', '2016-03-02 15:40:12', '1', '2016-03-11 16:26:26');
INSERT INTO `resources` VALUES ('14', 'application/im/batch_management.php', null, 'Batch Management', '8', '2', null, '1', '2016-03-02 15:40:12', '1', '2016-03-11 16:26:26');
INSERT INTO `resources` VALUES ('15', 'application/im/new_issue.php', null, 'Stock Issue', '8', '2', null, '1', '2016-03-02 15:40:12', '1', '2016-03-11 16:26:26');
INSERT INTO `resources` VALUES ('16', 'application/im/stock_issue.php', null, 'Stock Issue Search', '8', '2', null, '1', '2016-03-02 15:40:12', '1', '2016-03-11 16:26:26');
INSERT INTO `resources` VALUES ('17', 'application/im/pick_stock.php', null, 'Stock Pick', '8', '2', null, '1', '2016-03-02 15:40:12', '1', '2016-03-11 16:26:26');
INSERT INTO `resources` VALUES ('18', 'application/im/add_adjustment.php', null, 'New Adjustment', '8', '2', null, '1', '2016-03-02 15:40:12', '1', '2016-03-11 16:26:26');
INSERT INTO `resources` VALUES ('19', 'application/im/stock_adjustment.php', null, 'Search Adjustments', '8', '2', null, '1', '2016-03-02 15:40:12', '1', '2016-03-11 16:26:27');
INSERT INTO `resources` VALUES ('20', 'application/im/bin_card.php', null, 'Bin Card', '8', '2', null, '1', '2016-03-02 15:40:12', '1', '2016-03-11 16:26:27');
INSERT INTO `resources` VALUES ('21', 'Gate Pass', null, null, null, '2', 'fa fa-truck', '1', '2016-03-02 15:38:44', '1', '2016-03-11 16:26:09');
INSERT INTO `resources` VALUES ('22', 'application/im/new_gatepass.php', null, 'New Gate Pass', '21', '2', null, '1', '2016-03-02 15:40:15', '1', '2016-03-11 16:26:30');
INSERT INTO `resources` VALUES ('23', 'application/im/view_gatepass.php', null, 'View Gate Pass', '21', '2', null, '1', '2016-03-02 15:40:15', '1', '2016-03-11 16:26:30');
INSERT INTO `resources` VALUES ('24', 'Requisitions', null, null, null, '2', 'fa fa-clipboard', '1', '2016-03-02 15:38:44', '1', '2016-03-11 16:26:09');
INSERT INTO `resources` VALUES ('25', 'application/im/requisitions.php', null, 'Requisition Requests', '24', '2', null, '1', '2016-03-03 10:20:54', '1', '2016-03-11 16:26:34');
INSERT INTO `resources` VALUES ('26', 'application/im/new_clr.php', null, 'New Requisition', '24', '2', null, '1', '2016-03-02 15:40:20', '1', '2016-03-11 16:26:34');
INSERT INTO `resources` VALUES ('27', 'application/im/clr6_list.php', null, 'View Requisitions', '24', '2', null, '1', '2016-03-02 15:40:20', '1', '2017-07-19 14:29:00');
INSERT INTO `resources` VALUES ('28', 'Monthly Reports', null, null, null, '2', 'fa fa-calendar', '1', '2016-03-02 15:40:26', '1', '2016-03-11 16:26:09');
INSERT INTO `resources` VALUES ('29', 'application/reports/my_report.php', null, 'My Reports', '28', '2', null, '1', '2016-03-02 15:40:22', '1', '2016-03-11 16:26:39');
INSERT INTO `resources` VALUES ('30', 'application/reports/explorer.php', null, 'LMIS Explorer', '28', '2', null, '1', '2016-03-02 15:40:22', '1', '2016-03-11 16:26:39');
INSERT INTO `resources` VALUES ('31', 'Reports', null, null, null, '2', 'fa fa-files-o', '1', '2016-03-02 15:40:26', '1', '2016-03-11 16:26:09');
INSERT INTO `resources` VALUES ('32', 'application/reports/nationalreport.php', null, 'National Report', '85', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:26:48');
INSERT INTO `resources` VALUES ('33', 'application/reports/nationalreportstk.php', null, 'Stakeholder Report', '85', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:26:48');
INSERT INTO `resources` VALUES ('34', 'application/reports/provincialreport.php', null, 'Provincial Report', '85', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:26:48');
INSERT INTO `resources` VALUES ('35', 'application/reports/diststkreport.php', null, 'District Report', '85', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:26:48');
INSERT INTO `resources` VALUES ('36', 'application/reports/district_stock_yearly.php', null, 'District Stock Report', '87', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:26:52');
INSERT INTO `resources` VALUES ('37', 'application/reports/stock_availability.php', null, 'Stock Availability Report', '88', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:26:54');
INSERT INTO `resources` VALUES ('38', 'application/reports/field_availibility.php', null, 'Field Availability Report', '88', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:26:54');
INSERT INTO `resources` VALUES ('39', 'application/reports/non_report.php', null, 'Non/Reported Districts', '86', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:26:57');
INSERT INTO `resources` VALUES ('40', 'application/reports/compliance.php', null, 'Compliance Report(District)', '86', '2', null, '1', '2016-03-02 15:40:33', '1', '2018-02-16 10:21:33');
INSERT INTO `resources` VALUES ('41', 'application/reports/compliance_hf.php', null, 'Compliance Report(HF)', '86', '2', null, '1', '2016-03-02 15:40:33', '1', '2018-02-14 16:51:23');
INSERT INTO `resources` VALUES ('42', 'application/reports/quarterly_rate.php', null, 'Quarterly Reporting Rate', '86', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:26:57');
INSERT INTO `resources` VALUES ('43', 'application/reports/province_rate.php', null, 'Provincial Reporting Rate', '86', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:26:57');
INSERT INTO `resources` VALUES ('44', 'application/reports/projected_contraceptive.php', null, 'Projected Contraceptive Requirements', '88', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:27:07');
INSERT INTO `resources` VALUES ('45', 'application/reports/central_warehouse_report.php', null, 'Central/Provincial Warehouse', '87', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:27:10');
INSERT INTO `resources` VALUES ('46', 'application/reports/provincial_warehouse_report.php', null, 'Provincial Report', '87', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:27:10');
INSERT INTO `resources` VALUES ('47', 'application/reports/private_sector_report.php', null, 'Private Sector Report', '87', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:27:10');
INSERT INTO `resources` VALUES ('48', 'application/reports/pp_sector_report.php', null, 'Public-Private Sector Report', '85', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:27:13');
INSERT INTO `resources` VALUES ('49', 'application/reports/stock_sufficiency_report.php', null, 'Stock Sufficiency Report', '88', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:27:15');
INSERT INTO `resources` VALUES ('50', 'application/reports/stock_status.php', null, 'Stock Issuance Report', '88', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:27:15');
INSERT INTO `resources` VALUES ('51', 'application/reports/shipment_rpt.php', null, 'Shipment Report', '88', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:27:15');
INSERT INTO `resources` VALUES ('52', 'application/reports/countrywise_distribution.php', null, 'Country-wide Distribution', '88', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:27:15');
INSERT INTO `resources` VALUES ('53', 'Graphs', null, null, null, '2', 'fa fa-bar-chart-o', '1', '2016-03-02 15:45:49', '1', '2016-03-11 16:26:10');
INSERT INTO `resources` VALUES ('54', 'application/graph/comparison_graphs.php', null, 'Comparison Graphs', '53', '2', null, '1', '2016-03-02 15:40:36', '1', '2016-03-11 16:27:19');
INSERT INTO `resources` VALUES ('55', 'application/graph/simple_graphs.php', null, 'Simple Graphs', '53', '2', null, '1', '2016-03-02 15:40:36', '1', '2016-03-11 16:27:22');
INSERT INTO `resources` VALUES ('56', 'Maps', null, null, null, '2', 'fa fa-map-marker', '1', '2016-03-02 15:45:50', '1', '2016-03-11 16:26:10');
INSERT INTO `resources` VALUES ('57', 'application/maps/mos.php', null, 'Month of Stock', '56', '2', null, '1', '2016-03-02 15:40:41', '1', '2016-03-11 16:27:25');
INSERT INTO `resources` VALUES ('58', 'application/maps/consumption.php', null, 'Consumption', '56', '2', null, '1', '2016-03-02 15:40:40', '1', '2016-03-11 16:27:25');
INSERT INTO `resources` VALUES ('59', 'application/maps/cyp.php', null, 'Couple Year Protection (CYP)', '56', '2', null, '1', '2016-03-02 15:40:40', '1', '2016-03-11 16:27:25');
INSERT INTO `resources` VALUES ('60', 'application/maps/cyp_pop.php', null, 'CYP By Population', '56', '2', null, '1', '2016-03-02 15:40:40', '1', '2016-03-11 16:27:25');
INSERT INTO `resources` VALUES ('61', 'application/maps/reporting_rate.php', null, 'Reporting Rate', '56', '2', null, '1', '2016-03-02 15:40:40', '1', '2016-04-06 11:13:39');
INSERT INTO `resources` VALUES ('62', 'PBS Reports', null, null, '89', '2', null, '1', '2016-03-02 15:45:53', '1', '2016-03-11 16:27:27');
INSERT INTO `resources` VALUES ('63', 'application/reports/form14y.php', null, 'Form-14', '62', '2', null, '1', '2016-03-02 15:41:45', '1', '2017-06-02 15:23:27');
INSERT INTO `resources` VALUES ('64', 'application/reports/clr11y.php', null, 'CLR-11', '62', '2', null, '1', '2016-03-02 15:41:45', '1', '2017-06-02 15:23:31');
INSERT INTO `resources` VALUES ('65', 'application/reports/spr1y.php', null, 'SPR-1', '62', '2', null, '1', '2016-03-02 15:41:45', '1', '2017-06-02 15:23:35');
INSERT INTO `resources` VALUES ('66', 'application/reports/spr2y.php', null, 'SPR-2', '62', '2', null, '1', '2016-03-02 15:41:45', '1', '2017-06-02 15:23:39');
INSERT INTO `resources` VALUES ('67', 'application/reports/pwd3y.php', null, 'PWD-3', '62', '2', null, '1', '2016-03-02 15:41:45', '1', '2017-06-02 15:23:42');
INSERT INTO `resources` VALUES ('68', 'Provincial Reports', null, null, '89', '2', null, '1', '2016-03-02 15:41:53', '1', '2016-03-11 16:33:08');
INSERT INTO `resources` VALUES ('69', 'application/reports/outlet_wise_performance.php', null, 'SPR3 Outlet-wise Performance', '68', '2', null, '1', '2016-03-02 15:42:03', '1', '2017-06-02 16:14:17');
INSERT INTO `resources` VALUES ('70', 'application/reports/outlet_cyp_comparison.php', null, 'Outlet-wise CYP Performance', '68', '2', null, '1', '2016-03-02 15:42:03', '1', '2016-03-11 16:33:16');
INSERT INTO `resources` VALUES ('71', 'application/reports/district_cyp_comparison.php', null, 'District-wise CYP Performance', '68', '2', null, '1', '2016-03-02 15:42:03', '1', '2016-03-11 16:33:16');
INSERT INTO `resources` VALUES ('72', 'District Reports', null, null, '89', '2', null, '1', '2016-03-02 15:42:07', '1', '2016-03-11 16:27:53');
INSERT INTO `resources` VALUES ('73', 'application/reports/spr8.php', null, 'SPR-8', '72', '2', null, '1', '2016-03-02 15:42:32', '1', '2016-03-11 16:27:56');
INSERT INTO `resources` VALUES ('74', 'application/reports/spr9.php', null, 'SPR-9', '72', '2', null, '1', '2016-03-02 15:42:32', '1', '2016-03-11 16:27:57');
INSERT INTO `resources` VALUES ('75', 'application/reports/spr10.php', null, 'SPR-10', '72', '2', null, '1', '2016-03-02 15:42:32', '1', '2016-03-11 16:27:57');
INSERT INTO `resources` VALUES ('76', 'application/reports/spr11.php', null, 'SPR-11', '72', '2', null, '1', '2016-03-02 15:42:32', '1', '2016-03-11 16:27:57');
INSERT INTO `resources` VALUES ('77', 'application/reports/clr13.php', null, 'CLR-13', '72', '2', null, '1', '2016-03-02 15:42:32', '1', '2016-03-11 16:27:57');
INSERT INTO `resources` VALUES ('78', 'application/reports/clr15.php', null, 'CLR-15', '72', '2', null, '1', '2016-03-02 15:42:32', '1', '2016-03-11 16:27:57');
INSERT INTO `resources` VALUES ('79', 'application/reports/dpw_f1.php', null, 'DPW-F1', '72', '2', null, '1', '2016-03-02 15:42:32', '1', '2016-03-11 16:27:57');
INSERT INTO `resources` VALUES ('80', 'application/reports/sale_proceeds.php', null, 'Sales Proceeds', '72', '2', null, '1', '2016-03-02 15:42:32', '1', '2016-03-11 16:27:57');
INSERT INTO `resources` VALUES ('81', 'application/reports/satellite.php', null, 'Satellite Camps', '72', '2', null, '1', '2016-03-02 15:42:32', '1', '2016-03-11 16:27:57');
INSERT INTO `resources` VALUES ('82', 'Data Entry', null, null, null, '2', 'fa fa-table', '1', '2016-03-02 15:43:35', '1', '2016-03-11 16:26:11');
INSERT INTO `resources` VALUES ('83', 'application/consumption/wh_data_entry.php', null, 'Consumption Data Entry', '82', '2', null, '1', '2016-03-02 16:59:17', '1', '2016-03-11 16:28:00');
INSERT INTO `resources` VALUES ('84', 'application/consumption/satellite_wh.php', null, 'Satellite Camps Data Entry', '82', '2', null, '1', '2016-03-02 15:44:28', '1', '2016-03-11 16:28:00');
INSERT INTO `resources` VALUES ('85', 'Summary Reports', null, null, '31', '2', null, '1', '2016-03-07 12:08:19', '1', '2016-03-11 16:28:02');
INSERT INTO `resources` VALUES ('86', 'Performance Reports', null, null, '31', '2', null, '1', '2016-03-07 12:09:54', '1', '2016-03-11 16:28:06');
INSERT INTO `resources` VALUES ('87', 'Yearly Reports', null, null, '31', '2', null, '1', '2016-03-07 12:10:06', '1', '2016-03-11 16:28:06');
INSERT INTO `resources` VALUES ('88', 'Stock Reports', null, null, '31', '2', null, '1', '2016-03-07 12:12:02', '1', '2016-03-11 16:28:06');
INSERT INTO `resources` VALUES ('89', 'PWD Reports', null, null, '31', '2', null, '1', '2016-03-07 12:15:28', '1', '2016-03-11 16:28:06');
INSERT INTO `resources` VALUES ('90', 'application/dashboard/shipment.php', null, 'Distribution and SOH', null, '1', null, '1', '2016-03-10 16:10:15', '1', '2016-03-11 16:26:11');
INSERT INTO `resources` VALUES ('91', 'application/reports/inventory-turn-over.php', null, 'Inventory Turnover', '86', '2', null, '1', '2016-04-11 16:02:13', '1', '2016-04-11 16:02:13');
INSERT INTO `resources` VALUES ('92', 'application/reports/ppmr.php', null, 'Procurement Planning Monitoring Report(PPMR)', '88', '2', null, '1', '2016-04-11 16:02:51', '1', '2017-08-15 11:59:58');
INSERT INTO `resources` VALUES ('94', 'application/im/add-shipments.php', '', 'Add Shipments', '137', '2', '', '1', '2016-03-02 15:40:12', '1', '2017-06-08 11:17:17');
INSERT INTO `resources` VALUES ('95', 'application/im/search-shipments.php', '', 'Search Shipments', '137', '2', '', '1', '2016-03-02 15:40:12', '1', '2017-06-08 11:17:19');
INSERT INTO `resources` VALUES ('96', 'application/reports/district_wise_performance.php', '', 'SPR3 District-wise Performance', '68', '2', '', '1', '2016-03-02 15:42:03', '1', '2017-03-16 11:18:39');
INSERT INTO `resources` VALUES ('97', 'application/im/product-ledger.php', '', 'Stock Ledger', '88', '2', '', '1', '2016-03-02 15:40:33', '1', '2017-03-29 10:30:57');
INSERT INTO `resources` VALUES ('98', 'application/reports/stock_issue_summary.php', '', 'Stock Issue Summary', '88', '2', '', '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:27:15');
INSERT INTO `resources` VALUES ('99', 'application/reports/referral_cases_performed.php', '', 'Referral Cases Performed', '72', '2', '', '1', '2017-04-19 15:58:57', '1', '2017-04-10 09:59:24');
INSERT INTO `resources` VALUES ('100', 'application/consumption/data_entry_surgery.php', '', 'Surgery Cases', null, '2', 'fa fa-table', '1', '2017-04-19 15:58:57', '1', '2017-04-10 14:45:20');
INSERT INTO `resources` VALUES ('101', 'application/reports/district_performance_report.php', '', 'District Performance Report', '72', '2', '', '1', '2017-04-19 15:58:57', '1', '2017-04-11 14:57:07');
INSERT INTO `resources` VALUES ('102', 'application/admin/assign_resources.php', '', 'Assign Resources', null, '2', 'fa fa-wrench', '1', '2017-04-19 15:58:57', '1', '2017-04-12 15:37:14');
INSERT INTO `resources` VALUES ('103', 'application/reports/sector_wise_performance.php', '', 'Sector Wise Performance', '72', '2', '', '1', '2017-04-19 15:58:57', '1', '2017-04-13 16:31:08');
INSERT INTO `resources` VALUES ('104', 'application/reports/referral_cases_performed_ftype_wise.php', '', 'Facility Type wise Referral Cases', '72', '2', '', '1', '2017-04-19 15:58:57', '1', '2017-04-13 16:31:00');
INSERT INTO `resources` VALUES ('105', 'application/im/requisition_approvals.php', '', 'Search Requisitions', '24', '2', '', '1', '2017-04-19 15:58:57', '1', '2017-06-09 14:27:21');
INSERT INTO `resources` VALUES ('106', 'application/im/distribution_plan.php', '', 'Distribution Plan', '24', '2', '', '1', '2017-05-04 16:49:32', '1', '2017-05-04 16:49:32');
INSERT INTO `resources` VALUES ('107', 'application/im/clr_all_district_approval.php', '', 'Provincial Approval Plan', '24', '2', '', '1', '2017-05-04 16:50:31', '1', '2017-05-04 16:50:31');
INSERT INTO `resources` VALUES ('108', 'application/im/distribution_plan_central.php', 'Distribution Plan Central', 'Distribution Plan Central', '24', '2', '', '1', '2017-05-19 10:11:31', '1', '2017-05-19 10:13:48');
INSERT INTO `resources` VALUES ('109', 'application/dashboard/shipment.php', '', 'Dashlet 1', '90', '3', '', '1', '2016-03-10 16:10:15', '1', '2016-03-11 16:26:11');
INSERT INTO `resources` VALUES ('110', 'application/dashboard/dashboard_cws.php', 'CWH & Supplies - FP Products Transactional Dashboard', 'FP Products Dashboard', '126', '1', '', '1', '2017-05-23 10:22:33', '1', '2017-05-23 11:01:55');
INSERT INTO `resources` VALUES ('111', 'application/dashboard/executive_dashboard.php', 'Executive Dashboard', 'Executive Dashboard', null, '2', 'fa fa-bar-chart-o', '1', '2017-05-23 10:26:27', '1', '2019-04-03 11:22:41');
INSERT INTO `resources` VALUES ('112', 'application/dashboard/dashboard_stock_status_stk.php', 'Stock Sufficiency Dashboard - Stakeholder Wise for Donors', 'Provincial Stock Sufficiency Dashboard', '126', '1', '', '1', '2017-05-23 10:27:19', '1', '2017-06-01 10:39:53');
INSERT INTO `resources` VALUES ('113', 'application/dashboard/dashboard_cws_a1.php', 'cws a1 - Incoming Pipeline Supplies', 'cws a1', '110', '3', '', '1', '2017-05-23 10:34:39', '1', '2017-05-23 11:14:27');
INSERT INTO `resources` VALUES ('114', 'application/dashboard/dashboard_cws_a2.php', 'cws a2 - Storage vs Space Occupation Trend', 'cws a2', '110', '3', '', '1', '2017-05-23 10:35:29', '1', '2017-05-23 10:54:16');
INSERT INTO `resources` VALUES ('115', 'application/dashboard/dashboard_cws_b1.php', 'cws b1 -National and Provincial MOS - Current Stock', 'cws b1', '110', '3', '', '1', '2017-05-23 10:36:07', '1', '2017-05-23 10:54:17');
INSERT INTO `resources` VALUES ('116', 'application/dashboard/dashboard_cws_b2.php', 'cws b2 - Receipt During quarter', 'cws b2', '110', '3', '', '1', '2017-05-23 10:36:33', '1', '2017-05-23 10:54:18');
INSERT INTO `resources` VALUES ('117', 'application/dashboard/dashboard_cws_b3.php', 'cws b3 - Issue / Dispatch Status', 'cws b3', '110', '3', '', '1', '2017-05-23 10:37:17', '1', '2017-05-23 10:54:19');
INSERT INTO `resources` VALUES ('118', 'application/dashboard/dashboard_cws_c1.php', 'cws c1 - Product Wise Capacity Occupation', 'cws c1', '110', '3', '', '1', '2017-05-23 10:37:46', '1', '2017-05-23 10:54:20');
INSERT INTO `resources` VALUES ('119', 'application/dashboard/dashboard_cws_c2.php', 'cws c2- Quarter Wise Issue Trend', 'cws c2', '110', '3', '', '1', '2017-05-23 10:38:08', '1', '2017-05-23 10:54:22');
INSERT INTO `resources` VALUES ('120', 'application/dashboard/dashboard_ss_pro_a1.php', 'ss pro a1 - Provincial Stock out status', 'Stock Table', '111', '3', null, '1', '2017-05-23 10:40:11', '1', '2017-12-28 12:51:50');
INSERT INTO `resources` VALUES ('121', 'application/dashboard/dashboard_ss_pro_b1.php', 'ss pro b1 - Provincial Stock out rate at SDPs', 'Stock Availability at District', '111', '3', null, '1', '2017-05-23 10:40:43', '1', '2017-12-28 12:54:25');
INSERT INTO `resources` VALUES ('122', 'application/dashboard/dashboard_ss_pro_b2.php', 'ss pro b2 - Avg Stock out rate at District Store', 'Stock Availability at SDP', '111', '3', null, '1', '2017-05-23 10:41:09', '1', '2017-12-28 12:54:14');
INSERT INTO `resources` VALUES ('123', 'application/dashboard/dashboard_ss_stk_a1.php', 'ss stk a1 - Donors Stock Status', 'ss stk a1', '112', '3', '', '1', '2017-05-23 10:41:50', '1', '2017-05-23 10:54:34');
INSERT INTO `resources` VALUES ('124', 'application/dashboard/dashboard_ss_stk_b1.php', 'ss stk b1 - Donors Stock out rate at SDPs', 'ss stk b1', '112', '3', '', '1', '2017-05-23 10:42:17', '1', '2017-05-23 10:54:37');
INSERT INTO `resources` VALUES ('125', 'application/dashboard/dashboard_ss_stk_b2.php', 'ss stk b2 - Donors Avg Stock rate at District Stores', 'ss stk b2', '112', '3', '', '1', '2017-05-23 10:43:26', '1', '2017-05-23 10:54:39');
INSERT INTO `resources` VALUES ('126', 'Dashboards', 'Dashboards', 'Dashboards', null, '2', 'fa fa-bar-chart-o', '1', '2017-05-23 10:53:29', '1', '2017-09-26 17:40:46');
INSERT INTO `resources` VALUES ('127', 'application/im/dispatches_list.php', 'In-Transit Dispatches', 'In-Transit Dispatches', '24', '2', null, '1', '2017-05-29 16:05:52', '1', '2017-05-29 16:05:52');
INSERT INTO `resources` VALUES ('128', 'Dashboard', '', 'Multiple Dashboards', '126', '1', 'fa fa-home', '1', '2017-05-23 10:53:29', '1', '2017-08-22 15:56:18');
INSERT INTO `resources` VALUES ('137', 'Pipeline Shipments', '', 'Pipeline Shipments', null, '2', 'fa fa-cubes', '1', '2017-06-08 15:38:44', '1', '2017-06-08 16:26:09');
INSERT INTO `resources` VALUES ('138', 'Stakeholders', '', 'Stakeholders', null, '2', 'fa fa-users', '1', '0000-00-00 00:00:00', '1', '2017-07-12 10:46:54');
INSERT INTO `resources` VALUES ('139', 'application/admin/ManageStakeholders.php', '', 'Manage Stakeholders', '138', '2', '', '1', '2017-06-22 16:08:49', '1', '2017-07-12 10:45:47');
INSERT INTO `resources` VALUES ('140', 'application/admin/ManageManufacturers.php', '', 'Manage Manufacturers', '138', '2', '', '1', '0000-00-00 00:00:00', '1', '2017-07-12 10:45:49');
INSERT INTO `resources` VALUES ('141', 'application/admin/ManageStakeholdersOfficeTypes.php', '', 'Stakeholder Offices', '138', '2', '', '1', '0000-00-00 00:00:00', '1', '2017-07-12 10:45:52');
INSERT INTO `resources` VALUES ('142', 'application/admin/ManageStakeholdersItems.php', '', 'Stakeholder Products', '138', '2', '', '1', '0000-00-00 00:00:00', '1', '2017-07-12 10:45:53');
INSERT INTO `resources` VALUES ('143', 'Manage ACL', '', 'Manage ACL', null, '2', 'fa fa-wrench', '1', '0000-00-00 00:00:00', '1', '2017-07-12 10:46:50');
INSERT INTO `resources` VALUES ('144', 'application/admin/role_management.php', '', 'Role Management', '143', '2', '', '1', '0000-00-00 00:00:00', '1', '2017-07-12 10:46:05');
INSERT INTO `resources` VALUES ('145', 'application/admin/resource_management.php', '', 'Resource Management', '143', '2', '', '1', '0000-00-00 00:00:00', '1', '2017-07-12 10:46:06');
INSERT INTO `resources` VALUES ('146', 'application/admin/assign_resources.php', '', 'Assign Resources', '143', '2', '', '1', '0000-00-00 00:00:00', '1', '2017-07-12 10:46:07');
INSERT INTO `resources` VALUES ('147', 'application/admin/ManageLocations.php', '', 'Manage Locations', null, '2', '', '1', '0000-00-00 00:00:00', '1', '2017-06-22 16:16:09');
INSERT INTO `resources` VALUES ('148', 'application/admin/ManageReqAccess.php', 'Manage Requisition Access for multiple stakeholders against one user', 'Requisition Access', null, '2', '', '1', '2017-07-10 15:46:58', '1', '2017-07-10 15:48:08');
INSERT INTO `resources` VALUES ('149', 'Merged Reports', 'Merged Reports', 'Merged Reports', null, '2', 'fa fa-files-o', '1', '2017-07-27 13:20:23', '1', '2017-08-28 16:16:38');
INSERT INTO `resources` VALUES ('150', 'application/summarized_reports/performance_report_main.php', 'Merged Performance Report', 'Performance Report.', '86', '2', null, '1', '2017-07-27 13:20:55', '1', '2017-09-26 23:01:04');
INSERT INTO `resources` VALUES ('151', 'application/summarized_reports/summary_report_main.php', 'Merged Summary Report', 'Summary Report.', '85', '2', null, '1', '2017-07-27 13:21:55', '1', '2017-09-26 22:51:47');
INSERT INTO `resources` VALUES ('152', 'application/summarized_reports/yearly_report_main.php', 'Merged Yearly Report', 'Yearly Reports', '87', '2', null, '1', '2017-07-27 13:22:25', '1', '2017-09-26 23:01:19');
INSERT INTO `resources` VALUES ('153', 'application/admin/Manage_list_master.php', 'Manage List Master/Detail', 'Manage List Master/Detail', null, '2', '', '1', '2017-08-30 14:27:11', '1', '2017-08-30 14:27:11');
INSERT INTO `resources` VALUES ('154', 'application/reports/dev_results_sdp.php', 'DevResults B01 SDP Level', 'Dev Results Reports SDP', '186', '2', null, '1', '2017-09-06 10:01:24', '1', '2018-08-28 12:20:26');
INSERT INTO `resources` VALUES ('155', 'application/reports/dev_results_dist.php', 'DevResults B02 District Stores', 'Dev Results Report (District)', '186', '2', null, '1', '2017-09-06 10:02:06', '1', '2018-08-28 12:20:33');
INSERT INTO `resources` VALUES ('156', 'application/admin/Assign_reporting_stakeholders.php', 'Manage Reporting Stakeholders', 'Manage Reporting Stakeholders', '138', '2', '', '1', '2017-09-06 19:37:32', '1', '2017-09-06 19:37:32');
INSERT INTO `resources` VALUES ('157', 'application/dashboard/dashboard_ss_dist.php', 'District Stock Sufficiency', 'District Stock Sufficiency', '126', '2', '', '1', '2017-09-19 17:28:22', '1', '2017-09-19 17:31:40');
INSERT INTO `resources` VALUES ('158', 'application/reports/funding_source_rep_stk_wise.php', 'National Stock', 'National Stock', '126', '1', '', '1', '2017-05-23 10:26:27', '1', '2017-09-26 17:10:13');
INSERT INTO `resources` VALUES ('159', 'application/admin/awstats.php', 'Stats', 'Stats', '126', '2', null, '1', '2017-09-22 21:01:09', '1', '2017-09-26 17:44:05');
INSERT INTO `resources` VALUES ('160', 'application/dashboard/dashboard_mne.php', 'M&E Dashboard', 'M&E Dashboard', '126', '2', null, '1', '2017-09-26 17:19:52', '1', '2017-09-26 17:40:34');
INSERT INTO `resources` VALUES ('161', 'application/reports/funding_source_rep_stk_wise_v3.php', 'USAID Supported Stock v3', 'USAID Supported Stock', '126', '2', null, '1', '2017-09-27 16:01:15', '1', '2018-03-05 17:25:11');
INSERT INTO `resources` VALUES ('162', 'application/reports/requisitions_report.php', 'Requisitions History', 'Requisitions History', '24', '2', null, '1', '2017-10-03 12:37:37', '1', '2017-10-03 12:37:37');
INSERT INTO `resources` VALUES ('163', 'application/reports/funding_source_rep.php', 'Funding Report Test', 'Funding Report Test', '126', '2', null, '1', '2017-10-06 15:40:46', '1', '2017-10-06 15:26:24');
INSERT INTO `resources` VALUES ('164', 'application/admin/user_list.php', 'Users list with history and email option', 'Users List', '5', '2', null, '1', '2017-10-20 09:13:33', '1', '2017-10-20 09:13:33');
INSERT INTO `resources` VALUES ('165', 'BI Tool', 'BI Tool', 'BI Tool', null, '2', 'fa fa-files-o', '1', '2017-09-22 21:01:09', '1', '2017-10-17 17:25:48');
INSERT INTO `resources` VALUES ('166', 'application/pivot/index.php', 'Data from 2015 to 2018', 'Data from 2015 to 2018', '165', '2', null, '1', '2017-09-22 21:01:09', '1', '2018-10-25 12:12:39');
INSERT INTO `resources` VALUES ('167', 'application/pivot/import.php', 'Data Import', 'Data Import', '165', '2', null, '1', '2017-09-22 21:01:09', '1', '2017-10-24 18:14:10');
INSERT INTO `resources` VALUES ('168', 'application/admin/ManageDashboardComments.php', 'Dashboard Comments', 'Dashboard Comments', null, '1', null, '1', '2017-10-26 16:53:34', '1', '2017-10-26 16:53:37');
INSERT INTO `resources` VALUES ('169', 'application/admin/email_control.php', 'Emails list for shooting in different scenarios', 'Emails List', null, '2', null, '1', '2017-11-02 11:34:51', '1', '2017-11-02 11:35:30');
INSERT INTO `resources` VALUES ('170', 'M&E Reports', null, null, '31', '2', null, '1', '2016-03-07 12:12:02', '1', '2016-03-11 16:28:06');
INSERT INTO `resources` VALUES ('171', 'application/reports/avg_stock_out_rate.php', 'Avg Stock Out Rate for MNE Calculations', 'Avg Stock Out Rate', '126', '2', null, '1', '2018-01-04 12:03:39', '1', '2018-01-04 12:05:07');
INSERT INTO `resources` VALUES ('172', 'application/reports/user_list.php', 'Users List', 'Users Contact Details', null, '2', null, '1', '2018-01-22 12:02:07', '1', '2018-01-22 12:02:07');
INSERT INTO `resources` VALUES ('173', 'application/fasp/forecasting_list.php', 'Forecasting Home Page', 'Forecasting Module', null, '2', 'fa fa-bar-chart-o', '1', '2018-01-23 16:37:28', '1', '2019-01-08 16:49:42');
INSERT INTO `resources` VALUES ('174', 'application/reports/data_cube.php', null, 'Data Cube', '88', '2', null, '1', '2016-03-02 15:40:33', '1', '2018-02-15 09:44:31');
INSERT INTO `resources` VALUES ('175', 'application/reports/m-report.php', null, 'M&E Summary Report', '31', '2', null, '1', '2018-03-05 12:27:12', '1', '2018-03-05 13:44:21');
INSERT INTO `resources` VALUES ('176', 'application/mne/report_1.php', null, 'Report1', '31', '2', null, '1', '2018-03-05 12:54:47', '1', '2018-03-05 12:54:47');
INSERT INTO `resources` VALUES ('177', 'application/reports/commodity_security_de.php', 'Commodity Security Data Entry', 'Commodity Security Data Entry', null, '2', 'fa fa-table', '1', '2018-03-13 13:18:27', '1', '2018-03-13 13:22:06');
INSERT INTO `resources` VALUES ('178', 'application/dashboard/moderation_list.php', 'Moderation List', 'Moderation List', null, '2', null, '1', '2018-03-15 15:34:47', '1', '2018-03-15 15:35:29');
INSERT INTO `resources` VALUES ('179', 'application/pivot/msbi.php', 'Power BI', 'Power BI', '165', '1', null, '1', '2017-09-22 21:01:09', '1', '2018-04-03 11:03:18');
INSERT INTO `resources` VALUES ('180', 'application/reports/dev_results_summary.php', 'Stockout Data Table', 'Stockout Data Table', '126', '2', null, '1', '2018-06-12 13:32:58', '1', '2018-06-12 14:39:30');
INSERT INTO `resources` VALUES ('181', 'application/dashboard/mos_soh_comparison_monthly.php', 'MOS Trend Graph', 'MOS Trend Graph', '126', '2', null, '1', '2018-06-27 14:28:10', '1', '2018-06-27 14:28:10');
INSERT INTO `resources` VALUES ('182', 'application/reports/avg_stock_out_rate_summary.php', 'Stock Out Trends', 'Stock Out Trends', '126', '2', null, '1', '2018-07-11 11:45:35', '1', '2018-07-11 11:45:35');
INSERT INTO `resources` VALUES ('183', 'application/admin/ManageItems_by_stk.php', 'Add Products', 'Add Products', '8', '2', null, '1', '2018-08-03 15:02:37', '1', '2018-08-03 15:02:37');
INSERT INTO `resources` VALUES ('184', 'application/dashboard/dashboard_stock_situation.php', 'Stock Situation Dashboard', 'Stock Situation Dashboard', '126', '2', null, '1', '2018-08-09 10:21:39', '1', '2018-10-18 12:36:35');
INSERT INTO `resources` VALUES ('185', 'application/reports/dev_results_prov.php', 'Dev Results Province', 'Dev Results Province', '186', '2', null, '1', '2018-08-28 12:18:54', '1', '2018-08-28 12:20:43');
INSERT INTO `resources` VALUES ('186', 'Dev Results', 'Dev Results', 'Dev Results', null, '2', 'fa fa-files-o', '1', '2018-08-28 12:19:57', '1', '2018-08-28 12:23:32');
INSERT INTO `resources` VALUES ('187', 'application/reports/stock_optimization.php', 'Stock Optimization', 'Stock Optimization', '126', '2', null, '1', '2018-09-04 16:02:42', '1', '2018-09-04 16:02:42');
INSERT INTO `resources` VALUES ('188', 'data/index.php', 'Raw Districts Stock Data', 'Raw Districts Stock Data', '186', '2', null, '1', '2018-09-17 14:00:10', '1', '2018-09-18 15:50:47');
INSERT INTO `resources` VALUES ('189', 'data/index2.php', 'Raw SDP Stock Data', 'Raw SDP Stock Data', '186', '2', null, '1', '2018-09-17 14:00:29', '1', '2018-09-18 15:48:16');
INSERT INTO `resources` VALUES ('190', 'public/html/indicator_definitions.php', 'Indicator Definitions', 'Indicator Definitions', null, '2', 'fa fa-files-o', '1', '2017-09-22 21:01:09', '1', '2018-10-01 12:37:56');
INSERT INTO `resources` VALUES ('191', 'application/im/distribution_plan_district_level.php', 'District Distribution Plan', 'District Distribution Plan', '8', '2', null, '1', '2018-10-01 12:39:09', '1', '2018-10-01 12:39:09');
INSERT INTO `resources` VALUES ('192', 'application/im/prov_to_sdp_issue.php', 'Issue Prov to SDP', 'Issue Prov to SDP', '8', '2', null, '1', null, '1', '2018-10-03 09:56:54');
INSERT INTO `resources` VALUES ('193', 'application/im/bulk_open_batches.php', 'Add Opening Balance', 'Add Opening Balance', '8', '2', null, '1', null, '1', '2018-10-03 09:57:28');
INSERT INTO `resources` VALUES ('194', 'application/reports/field_availibility_1.php', 'Stock at SDP', 'Stock at SDP', '88', '2', null, '1', null, '1', '2018-10-03 09:58:33');
INSERT INTO `resources` VALUES ('195', 'application/im/edit_batch_status.php', 'Edit Batch', 'Edit Batch', '8', '2', null, '1', '2018-10-03 09:59:28', '1', '2018-10-03 09:59:28');
INSERT INTO `resources` VALUES ('196', 'application/reports/sdp_batches.php', 'Batches at SDP', 'Batches at SDP', '8', '2', null, '1', '2018-10-03 10:02:52', '1', '2018-10-03 10:02:52');
INSERT INTO `resources` VALUES ('197', 'application/reports/sdp_hf_wh.php', 'Dormant Facilities Report', 'Dormant Facilities Report', '126', '2', null, '1', '2018-10-10 12:03:39', '1', '2018-10-10 09:17:57');
INSERT INTO `resources` VALUES ('198', 'Alerts Mapping', 'Alerts Mapping', 'Alerts Mapping', null, '2', 'fa fa-files-o', '1', '2017-09-22 21:01:09', '1', '2017-10-17 17:25:48');
INSERT INTO `resources` VALUES ('199', 'application/admin/mapping/stockout.php', 'Stockout', 'Stockout', '198', '2', null, '1', '2017-09-22 21:01:09', '1', '2017-10-24 18:14:10');
INSERT INTO `resources` VALUES ('200', 'application/reports/manufacturer_wise_stock.php', 'Manufacturer Wise Pallets', 'Manufacturer Wise Pallets', '88', '2', null, '1', '2018-10-18 11:37:42', '1', '2018-10-18 11:37:42');
INSERT INTO `resources` VALUES ('201', 'application/reports/cyp_with_demographics.php', 'CYP with Demographics', 'CYP with Demographics', '88', '2', null, '1', '2018-10-18 14:59:48', '1', '2018-10-18 14:59:48');
INSERT INTO `resources` VALUES ('202', 'application/reports/demographics.php', 'Demographics Report', 'Demographics Report', '88', '2', null, '1', '2018-10-18 15:00:38', '1', '2018-10-18 15:00:38');
INSERT INTO `resources` VALUES ('203', 'application/pivot/index_old.php', 'Data from 2010 to 2014', 'Data from 2010 to 2014', '165', '2', null, '1', '2017-09-22 21:01:09', '1', '2018-10-25 12:12:39');
INSERT INTO `resources` VALUES ('204', 'application/reports/tower.php', 'Tower Report', 'Tower Report', '88', '2', null, '1', '2016-03-02 15:40:33', '1', '2016-03-11 16:26:54');
INSERT INTO `resources` VALUES ('205', 'application/admin/ManageUserUSSD.php', 'Manage USSD Users', 'Manage USSD Users', '206', '2', null, '1', '2019-04-01 12:08:22', '1', '2019-04-12 09:34:38');
INSERT INTO `resources` VALUES ('206', 'USSD', 'USSD Menu Items', 'USSD', null, '2', 'fa fa-mobile', '1', '2019-04-12 09:34:15', '1', '2019-04-16 14:28:14');
INSERT INTO `resources` VALUES ('207', 'application/reports/ussd_weekly_report.php', 'USSD Weekly Report', 'USSD Weekly Report', '206', '2', null, '1', '2019-04-12 09:35:04', '1', '2019-04-12 09:35:04');
INSERT INTO `resources` VALUES ('208', 'application/reports/ussd_log_report.php', 'USSD Log Report', 'USSD Log Report', '206', '2', null, '1', '2019-04-12 09:35:22', '1', '2019-04-12 09:35:22');
INSERT INTO `resources` VALUES ('209', 'application/admin/ManageUserUSSD.php', 'USSD Users Management', 'USSD Users Management', '206', '2', null, '1', '2019-04-12 09:35:51', '1', '2019-04-12 09:35:51');
INSERT INTO `resources` VALUES ('210', 'application/admin/ussd_approval_screen.php', 'USSD Data Approvals', 'USSD Data Approvals', '206', '2', null, '1', '2019-04-12 09:36:22', '1', '2019-04-12 09:36:22');
INSERT INTO `resources` VALUES ('211', 'application/reports/ussd_reporting_rate.php', 'USSD Reporting Rate', 'USSD Reporting Rate', '206', '2', null, '1', '2019-04-16 14:26:54', '1', '2019-04-16 14:26:54');

-- ----------------------------
-- Table structure for resource_types
-- ----------------------------
DROP TABLE IF EXISTS `resource_types`;
CREATE TABLE `resource_types` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_type` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `created_by` (`created_by`),
  KEY `modified_by` (`modified_by`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of resource_types
-- ----------------------------
INSERT INTO `resource_types` VALUES ('1', 'Dashboard', '1', '2016-03-02 11:39:29', '1', '2016-03-02 11:39:29');
INSERT INTO `resource_types` VALUES ('2', 'Menu Item', '1', '2016-03-02 11:39:29', '1', '2016-03-02 11:39:29');
INSERT INTO `resource_types` VALUES ('3', 'Dashlet', '1', '2016-03-02 11:39:29', '1', '2016-03-02 11:39:29');
INSERT INTO `resource_types` VALUES ('4', 'Other', '1', '2016-03-02 11:39:29', '1', '2016-03-02 11:39:29');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL,
  `role_level` int(11) DEFAULT NULL,
  `role_category_id` int(11) DEFAULT '1' COMMENT 'list master id 29',
  `description` text,
  `status` tinyint(1) DEFAULT NULL,
  `landing_resource_id` varchar(250) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`),
  KEY `roles_users_fk2` (`created_by`) USING BTREE,
  KEY `roles_users_fk3` (`modified_by`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='contain user type information';

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Administrator', null, '221', 'Administrator', '1', '1', '1', '2016-03-03 14:39:08', '1', '2018-12-07 09:22:39');
INSERT INTO `roles` VALUES ('13', 'Data Entry District', '3', '219', 'Data Entry District PWD', '1', '83', '1', '2016-03-03 14:39:08', '1', '2019-04-25 14:21:20');

-- ----------------------------
-- Table structure for role_resources
-- ----------------------------
DROP TABLE IF EXISTS `role_resources`;
CREATE TABLE `role_resources` (
  `pk_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `role_resources_roles_fk1` (`role_id`),
  KEY `role_resources_resources_fk2` (`resource_id`),
  CONSTRAINT `role_resources_ibfk_1` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`pk_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12675 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of role_resources
-- ----------------------------
INSERT INTO `role_resources` VALUES ('458', '3', '28', '2');
INSERT INTO `role_resources` VALUES ('459', '3', '30', '1');
INSERT INTO `role_resources` VALUES ('912', '17', '28', '1');
INSERT INTO `role_resources` VALUES ('913', '17', '30', '1');
INSERT INTO `role_resources` VALUES ('1172', '19', '28', '3');
INSERT INTO `role_resources` VALUES ('1173', '19', '30', '0');
INSERT INTO `role_resources` VALUES ('1240', '18', '28', '4');
INSERT INTO `role_resources` VALUES ('1241', '18', '29', '1');
INSERT INTO `role_resources` VALUES ('1242', '18', '30', '2');
INSERT INTO `role_resources` VALUES ('1342', '21', '28', '4');
INSERT INTO `role_resources` VALUES ('1343', '21', '29', '1');
INSERT INTO `role_resources` VALUES ('1344', '21', '30', '2');
INSERT INTO `role_resources` VALUES ('1379', '21', '82', '3');
INSERT INTO `role_resources` VALUES ('1380', '21', '83', '1');
INSERT INTO `role_resources` VALUES ('1407', '22', '28', '4');
INSERT INTO `role_resources` VALUES ('1408', '22', '29', '1');
INSERT INTO `role_resources` VALUES ('1409', '22', '30', '2');
INSERT INTO `role_resources` VALUES ('1444', '22', '82', '3');
INSERT INTO `role_resources` VALUES ('1446', '22', '83', '1');
INSERT INTO `role_resources` VALUES ('2279', '8', '28', '5');
INSERT INTO `role_resources` VALUES ('2280', '8', '29', '1');
INSERT INTO `role_resources` VALUES ('2281', '8', '30', '2');
INSERT INTO `role_resources` VALUES ('2764', '28', '28', '4');
INSERT INTO `role_resources` VALUES ('2765', '28', '29', '1');
INSERT INTO `role_resources` VALUES ('2766', '28', '30', '2');
INSERT INTO `role_resources` VALUES ('3027', '34', '28', '3');
INSERT INTO `role_resources` VALUES ('3028', '34', '30', '2');
INSERT INTO `role_resources` VALUES ('4965', '25', '28', '3');
INSERT INTO `role_resources` VALUES ('4966', '25', '29', '1');
INSERT INTO `role_resources` VALUES ('4967', '25', '30', '2');
INSERT INTO `role_resources` VALUES ('5043', '29', '28', '4');
INSERT INTO `role_resources` VALUES ('5044', '29', '29', '1');
INSERT INTO `role_resources` VALUES ('5045', '29', '30', '2');
INSERT INTO `role_resources` VALUES ('7255', '47', '28', '3');
INSERT INTO `role_resources` VALUES ('7256', '47', '29', '1');
INSERT INTO `role_resources` VALUES ('7257', '47', '30', '2');
INSERT INTO `role_resources` VALUES ('7622', '35', '28', '3');
INSERT INTO `role_resources` VALUES ('7623', '35', '29', '1');
INSERT INTO `role_resources` VALUES ('7624', '35', '30', '2');
INSERT INTO `role_resources` VALUES ('7705', '41', '28', '3');
INSERT INTO `role_resources` VALUES ('7706', '41', '29', '1');
INSERT INTO `role_resources` VALUES ('7707', '41', '30', '2');
INSERT INTO `role_resources` VALUES ('7977', '43', '28', '3');
INSERT INTO `role_resources` VALUES ('7978', '43', '29', '1');
INSERT INTO `role_resources` VALUES ('7979', '43', '30', '2');
INSERT INTO `role_resources` VALUES ('8061', '16', '28', '2');
INSERT INTO `role_resources` VALUES ('8062', '16', '30', '1');
INSERT INTO `role_resources` VALUES ('8122', '48', '28', '1');
INSERT INTO `role_resources` VALUES ('8123', '48', '29', '1');
INSERT INTO `role_resources` VALUES ('8124', '48', '30', '2');
INSERT INTO `role_resources` VALUES ('8406', '31', '28', '7');
INSERT INTO `role_resources` VALUES ('8407', '31', '29', '1');
INSERT INTO `role_resources` VALUES ('8408', '31', '30', '2');
INSERT INTO `role_resources` VALUES ('8933', '42', '28', '3');
INSERT INTO `role_resources` VALUES ('8934', '42', '29', '1');
INSERT INTO `role_resources` VALUES ('8935', '42', '30', '2');
INSERT INTO `role_resources` VALUES ('9412', '50', '28', '9');
INSERT INTO `role_resources` VALUES ('9413', '50', '29', '1');
INSERT INTO `role_resources` VALUES ('9414', '50', '30', '2');
INSERT INTO `role_resources` VALUES ('9492', '52', '28', '4');
INSERT INTO `role_resources` VALUES ('9493', '52', '30', '1');
INSERT INTO `role_resources` VALUES ('9494', '52', '82', '3');
INSERT INTO `role_resources` VALUES ('9495', '52', '83', '1');
INSERT INTO `role_resources` VALUES ('9500', '5', '28', '3');
INSERT INTO `role_resources` VALUES ('9501', '5', '29', '1');
INSERT INTO `role_resources` VALUES ('9502', '5', '30', '2');
INSERT INTO `role_resources` VALUES ('9662', '27', '28', '6');
INSERT INTO `role_resources` VALUES ('9663', '27', '29', '1');
INSERT INTO `role_resources` VALUES ('9664', '27', '30', '2');
INSERT INTO `role_resources` VALUES ('10379', '55', '28', '5');
INSERT INTO `role_resources` VALUES ('10380', '55', '29', '1');
INSERT INTO `role_resources` VALUES ('10381', '55', '30', '2');
INSERT INTO `role_resources` VALUES ('10416', '6', '28', '4');
INSERT INTO `role_resources` VALUES ('10417', '6', '30', '1');
INSERT INTO `role_resources` VALUES ('10529', '56', '28', '7');
INSERT INTO `role_resources` VALUES ('10530', '56', '29', '1');
INSERT INTO `role_resources` VALUES ('10531', '56', '30', '2');
INSERT INTO `role_resources` VALUES ('10563', '56', '82', '4');
INSERT INTO `role_resources` VALUES ('10564', '56', '83', '1');
INSERT INTO `role_resources` VALUES ('10683', '57', '28', '7');
INSERT INTO `role_resources` VALUES ('10684', '57', '29', '1');
INSERT INTO `role_resources` VALUES ('10685', '57', '30', '2');
INSERT INTO `role_resources` VALUES ('10717', '57', '82', '4');
INSERT INTO `role_resources` VALUES ('10718', '57', '83', '1');
INSERT INTO `role_resources` VALUES ('10738', '53', '28', '7');
INSERT INTO `role_resources` VALUES ('10739', '53', '29', '1');
INSERT INTO `role_resources` VALUES ('10740', '53', '30', '2');
INSERT INTO `role_resources` VALUES ('10772', '53', '82', '4');
INSERT INTO `role_resources` VALUES ('10773', '53', '83', '1');
INSERT INTO `role_resources` VALUES ('10788', '46', '28', '3');
INSERT INTO `role_resources` VALUES ('10789', '46', '29', '1');
INSERT INTO `role_resources` VALUES ('10790', '46', '30', '2');
INSERT INTO `role_resources` VALUES ('10956', '58', '28', '7');
INSERT INTO `role_resources` VALUES ('10957', '58', '29', '1');
INSERT INTO `role_resources` VALUES ('10958', '58', '30', '2');
INSERT INTO `role_resources` VALUES ('10990', '58', '82', '4');
INSERT INTO `role_resources` VALUES ('10991', '58', '83', '1');
INSERT INTO `role_resources` VALUES ('11331', '37', '28', '13');
INSERT INTO `role_resources` VALUES ('11332', '37', '29', '1');
INSERT INTO `role_resources` VALUES ('11333', '37', '30', '2');
INSERT INTO `role_resources` VALUES ('11439', '59', '28', '2');
INSERT INTO `role_resources` VALUES ('11440', '59', '30', '1');
INSERT INTO `role_resources` VALUES ('11532', '44', '28', '5');
INSERT INTO `role_resources` VALUES ('11533', '44', '29', '1');
INSERT INTO `role_resources` VALUES ('11534', '44', '30', '2');
INSERT INTO `role_resources` VALUES ('11607', '60', '28', '2');
INSERT INTO `role_resources` VALUES ('11608', '60', '29', '1');
INSERT INTO `role_resources` VALUES ('11609', '60', '30', '2');
INSERT INTO `role_resources` VALUES ('11654', '61', '28', '2');
INSERT INTO `role_resources` VALUES ('11655', '61', '29', '1');
INSERT INTO `role_resources` VALUES ('11656', '61', '30', '2');
INSERT INTO `role_resources` VALUES ('11782', '13', '28', '5');
INSERT INTO `role_resources` VALUES ('11783', '13', '29', '1');
INSERT INTO `role_resources` VALUES ('11784', '13', '30', '2');
INSERT INTO `role_resources` VALUES ('11842', '13', '82', '3');
INSERT INTO `role_resources` VALUES ('11843', '13', '83', '1');
INSERT INTO `role_resources` VALUES ('11844', '13', '84', '2');
INSERT INTO `role_resources` VALUES ('12010', '20', '28', '2');
INSERT INTO `role_resources` VALUES ('12011', '20', '30', '1');
INSERT INTO `role_resources` VALUES ('12083', '39', '28', '3');
INSERT INTO `role_resources` VALUES ('12084', '39', '29', '1');
INSERT INTO `role_resources` VALUES ('12085', '39', '30', '2');
INSERT INTO `role_resources` VALUES ('12207', '45', '28', '4');
INSERT INTO `role_resources` VALUES ('12208', '45', '30', '1');
INSERT INTO `role_resources` VALUES ('12209', '45', '82', '1');
INSERT INTO `role_resources` VALUES ('12210', '45', '83', '2');
INSERT INTO `role_resources` VALUES ('12249', '12', '28', '4');
INSERT INTO `role_resources` VALUES ('12250', '12', '29', '1');
INSERT INTO `role_resources` VALUES ('12251', '12', '30', '2');
INSERT INTO `role_resources` VALUES ('12307', '12', '82', '3');
INSERT INTO `role_resources` VALUES ('12308', '12', '83', '1');
INSERT INTO `role_resources` VALUES ('12438', '4', '28', '5');
INSERT INTO `role_resources` VALUES ('12439', '4', '29', '1');
INSERT INTO `role_resources` VALUES ('12440', '4', '30', '2');
INSERT INTO `role_resources` VALUES ('12493', '63', '82', '1');
INSERT INTO `role_resources` VALUES ('12494', '63', '83', '2');
INSERT INTO `role_resources` VALUES ('12506', '7', '28', '3');
INSERT INTO `role_resources` VALUES ('12507', '7', '30', '1');
INSERT INTO `role_resources` VALUES ('12594', '2', '28', '3');
INSERT INTO `role_resources` VALUES ('12595', '2', '30', '1');

-- ----------------------------
-- Table structure for stakeholder
-- ----------------------------
DROP TABLE IF EXISTS `stakeholder`;
CREATE TABLE `stakeholder` (
  `stkid` int(9) NOT NULL AUTO_INCREMENT COMMENT 'stakeholder id',
  `stkname` varchar(44) DEFAULT NULL,
  `report_title1` varchar(60) DEFAULT NULL,
  `report_title2` varchar(60) DEFAULT NULL,
  `report_title3` varchar(60) DEFAULT NULL,
  `report_logo` varchar(60) DEFAULT NULL,
  `stkcode` varchar(10) DEFAULT NULL,
  `stkorder` int(11) unsigned DEFAULT NULL COMMENT 'the order in which stakeholder will appear in report or data entry form',
  `ParentID` int(9) DEFAULT NULL,
  `stk_type_id` int(11) DEFAULT '0',
  `lvl` int(11) DEFAULT NULL,
  `MainStakeholder` int(11) DEFAULT NULL,
  `is_reporting` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`stkid`),
  KEY `stkid` (`stkid`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8 COMMENT='contain information about stakeholders';

-- ----------------------------
-- Records of stakeholder
-- ----------------------------
INSERT INTO `stakeholder` VALUES ('1', 'PWD', null, null, 'Population Welfare Departments', null, null, '1', null, '0', '1', '1', '1');
INSERT INTO `stakeholder` VALUES ('2', 'DOH (LHW)', 'Govt. of Pakistan', 'Ministry of Health', 'Lady Health Workers Program', null, null, '2', null, '0', '1', '2', '1');
INSERT INTO `stakeholder` VALUES ('4', 'FPAP', null, null, 'Family Planning Association of Pakistan', null, null, '5', null, '1', '1', '4', '1');
INSERT INTO `stakeholder` VALUES ('5', 'GS', null, null, 'Greenstar Social Marketing', null, null, '3', null, '1', '1', '5', '1');
INSERT INTO `stakeholder` VALUES ('6', 'MSS', null, null, 'Marie Stopes International', null, null, '4', null, '1', '1', '6', '1');
INSERT INTO `stakeholder` VALUES ('7', 'DOH (Static HF)', null, null, 'Department of Health', null, null, '6', null, '0', '1', '7', '1');
INSERT INTO `stakeholder` VALUES ('8', 'MCHIP', null, null, null, null, null, '7', null, '1', '1', '48', '1');
INSERT INTO `stakeholder` VALUES ('9', 'PPHI', null, null, null, null, null, '8', null, '0', '1', '9', '1');
INSERT INTO `stakeholder` VALUES ('16', 'Provincial PWD', null, null, null, null, null, '9', '1', '0', '2', '1', '1');
INSERT INTO `stakeholder` VALUES ('17', 'District PWD', null, null, null, null, null, '10', '16', '0', '3', '1', '1');
INSERT INTO `stakeholder` VALUES ('18', 'Field PWD', null, null, null, null, null, '11', '17', '0', '4', '1', '1');
INSERT INTO `stakeholder` VALUES ('19', 'Provincial DOH (LHW)', null, null, null, null, null, '12', '2', '0', '2', '2', '1');
INSERT INTO `stakeholder` VALUES ('20', 'District DOH (LHW)', null, null, null, null, null, '13', '19', '0', '3', '2', '1');
INSERT INTO `stakeholder` VALUES ('21', 'Field DOH (LHW)', null, null, null, null, null, '14', '20', '0', '4', '2', '1');
INSERT INTO `stakeholder` VALUES ('22', 'Provincial FPAP', null, null, null, null, null, '15', '4', '1', '2', '4', '1');
INSERT INTO `stakeholder` VALUES ('23', 'District FPAP', null, null, null, null, null, '16', '22', '1', '3', '4', '1');
INSERT INTO `stakeholder` VALUES ('24', 'Field FPAP', null, null, null, null, null, '17', '23', '1', '4', '4', '1');
INSERT INTO `stakeholder` VALUES ('25', 'Provincial GS', null, null, null, null, null, '18', '5', '1', '2', '5', '1');
INSERT INTO `stakeholder` VALUES ('26', 'District GS', null, null, null, null, null, '19', '25', '1', '3', '5', '1');
INSERT INTO `stakeholder` VALUES ('27', 'Field GS', null, null, null, null, null, '20', '26', '1', '4', '5', '1');
INSERT INTO `stakeholder` VALUES ('28', 'Provincial MSS', null, null, null, null, null, '21', '6', '1', '2', '6', '1');
INSERT INTO `stakeholder` VALUES ('29', 'District MSS', null, null, null, null, null, '22', '28', '1', '3', '6', '1');
INSERT INTO `stakeholder` VALUES ('30', 'Field MSS', null, null, null, null, null, '23', '29', '1', '4', '6', '1');
INSERT INTO `stakeholder` VALUES ('31', 'Provincial DOH (Static HF)', null, null, null, null, null, '24', '7', '0', '2', '7', '1');
INSERT INTO `stakeholder` VALUES ('32', 'District DOH (Static HF)', null, null, null, null, null, '25', '31', '0', '3', '7', '1');
INSERT INTO `stakeholder` VALUES ('33', 'Field DOH (Static HF)', null, null, null, null, null, '26', '32', '0', '4', '7', '1');
INSERT INTO `stakeholder` VALUES ('67', 'Provincial MCHIP', null, null, null, null, null, '27', '8', '1', '2', '8', '1');
INSERT INTO `stakeholder` VALUES ('68', 'District MCHIP', null, null, null, null, null, '28', '8', '1', '3', '8', '1');
INSERT INTO `stakeholder` VALUES ('69', 'Field MCHIP', null, null, null, null, null, '29', '8', '1', '4', '8', '1');
INSERT INTO `stakeholder` VALUES ('70', 'Provincial PPHI', null, null, null, null, null, '30', '9', '0', '3', '9', '1');
INSERT INTO `stakeholder` VALUES ('71', 'District PPHI', null, null, null, null, null, '31', '9', '0', '3', '9', '1');
INSERT INTO `stakeholder` VALUES ('72', 'Field PPHI', null, null, null, null, null, '32', '9', '0', '4', '9', '1');
INSERT INTO `stakeholder` VALUES ('73', 'DOH (MNCH)', null, null, null, null, null, '33', null, '0', '1', '73', '1');
INSERT INTO `stakeholder` VALUES ('74', 'CMIPHC', null, null, null, null, null, '34', null, '0', '1', '74', '1');
INSERT INTO `stakeholder` VALUES ('75', 'District DOH (MNCH)', null, null, null, null, null, '35', '73', '0', '3', '73', '1');
INSERT INTO `stakeholder` VALUES ('76', 'District CMIPHC', null, null, null, null, null, '36', '74', '0', '3', '74', '1');
INSERT INTO `stakeholder` VALUES ('77', 'Field DOH (MNCH)', null, null, null, null, null, '37', '73', '0', '4', '73', '1');
INSERT INTO `stakeholder` VALUES ('78', 'Field CMIPHC', null, null, null, null, null, '38', '74', '0', '4', '74', '1');
INSERT INTO `stakeholder` VALUES ('79', 'WHO', '', '', '', '', '', '56', null, '2', '1', null, '1');
INSERT INTO `stakeholder` VALUES ('80', 'DKT', null, null, null, null, null, '39', null, '1', '1', '80', '1');
INSERT INTO `stakeholder` VALUES ('81', 'Provincial DKT', null, null, null, null, null, '40', '80', '1', '2', '80', '1');
INSERT INTO `stakeholder` VALUES ('82', 'District DKT', null, null, null, null, null, '41', '81', '1', '3', '80', '1');
INSERT INTO `stakeholder` VALUES ('83', 'Field DKT', null, null, null, null, null, '42', '82', '1', '4', '80', '1');
INSERT INTO `stakeholder` VALUES ('84', 'USAID - All', '', '', '', '', '', '61', null, '2', '1', '84', '1');
INSERT INTO `stakeholder` VALUES ('85', 'UNFPA', '', '', '', '', '', '110', null, '2', '1', '85', '1');
INSERT INTO `stakeholder` VALUES ('86', 'Data Bank CW&S', null, null, null, null, null, '69', null, '4', '1', '86', '1');
INSERT INTO `stakeholder` VALUES ('87', 'Other (NGO)', null, null, null, null, null, '100', null, '4', '1', '87', '1');
INSERT INTO `stakeholder` VALUES ('90', 'RSPN', null, null, null, null, null, '70', null, '4', '1', '90', '1');
INSERT INTO `stakeholder` VALUES ('92', 'PPW', null, null, null, null, null, '43', null, '0', '2', '92', '1');
INSERT INTO `stakeholder` VALUES ('94', 'District RTI', null, null, null, null, null, '44', '16', '0', '3', '1', '1');
INSERT INTO `stakeholder` VALUES ('95', 'Provincial Other (NGO)', null, null, null, null, null, '71', '87', '4', '2', '87', '1');
INSERT INTO `stakeholder` VALUES ('96', 'Health Facility PWD', null, null, null, null, null, '45', '18', '0', '7', '1', '1');
INSERT INTO `stakeholder` VALUES ('97', 'PWD Individuals', null, null, null, null, null, '46', '96', '0', '8', '1', '1');
INSERT INTO `stakeholder` VALUES ('98', 'Provincial RSPN', null, null, null, null, null, '72', '90', '4', '2', '90', '1');
INSERT INTO `stakeholder` VALUES ('99', 'District RSPN', null, null, null, null, null, '73', '98', '4', '3', '90', '1');
INSERT INTO `stakeholder` VALUES ('100', 'District Other (NGO)', null, null, null, null, null, '74', '95', '4', '3', '87', '1');
INSERT INTO `stakeholder` VALUES ('101', 'District NRIFC', null, null, null, null, null, '47', '1', '0', '3', '1', '1');
INSERT INTO `stakeholder` VALUES ('102', 'Provincial PPW', null, null, null, null, null, '48', '92', '0', '2', '92', '1');
INSERT INTO `stakeholder` VALUES ('103', 'District PPW', null, null, null, null, null, '49', '102', '0', '3', '92', '1');
INSERT INTO `stakeholder` VALUES ('104', 'Injeflex', null, null, null, null, null, '75', null, '3', '1', '104', '1');
INSERT INTO `stakeholder` VALUES ('105', 'Gedeon Richter Plc', null, null, null, null, null, '76', null, '3', '1', '105', '1');
INSERT INTO `stakeholder` VALUES ('106', 'PFIZER-BELGIUM NV', null, null, null, null, null, '77', null, '3', '1', '106', '1');
INSERT INTO `stakeholder` VALUES ('107', 'Bayer Pharma AG', null, null, null, null, null, '78', null, '3', '1', '107', '1');
INSERT INTO `stakeholder` VALUES ('108', 'PREGNA INTERNATIONAL', null, null, null, null, null, '79', null, '3', '1', '108', '1');
INSERT INTO `stakeholder` VALUES ('109', 'LHW - DOH (LHW)', '', '', '', '', '', '50', '21', '0', '7', '2', '1');
INSERT INTO `stakeholder` VALUES ('110', 'Health Facility DOH (Static HF)', '', '', '', '', '', '51', '33', '0', '7', '7', '1');
INSERT INTO `stakeholder` VALUES ('111', 'CMW', '', '', '', '', '', '52', '77', '0', '7', '73', '1');
INSERT INTO `stakeholder` VALUES ('112', 'Health Facility PPHI', '', '', '', '', '', '53', '72', '0', '7', '9', '1');
INSERT INTO `stakeholder` VALUES ('113', 'USAID - Punjab', '', '', '', '', '', '62', null, '2', '1', '113', '1');
INSERT INTO `stakeholder` VALUES ('114', 'USAID - Sindh', '', '', '', '', '', '63', null, '2', '1', '114', '1');
INSERT INTO `stakeholder` VALUES ('115', 'USAID - KP', '', '', '', '', '', '64', null, '2', '1', '115', '1');
INSERT INTO `stakeholder` VALUES ('116', 'USAID - Balochistan', '', '', '', '', '', '65', null, '2', '1', '116', '1');
INSERT INTO `stakeholder` VALUES ('117', 'Govt. of Punjab - PWD', '', '', '', '', '', '66', null, '2', '1', '117', '1');
INSERT INTO `stakeholder` VALUES ('118', 'Govt. of Punjab - IRMNCH', '', '', '', '', '', '67', null, '2', '1', '118', '1');
INSERT INTO `stakeholder` VALUES ('119', 'Hansel Pharmaceuticals', null, null, null, null, null, '80', null, '3', '1', '119', '1');
INSERT INTO `stakeholder` VALUES ('120', 'Zafa Pharmaceuticals', null, null, null, null, null, '59', null, '3', '1', '120', '1');
INSERT INTO `stakeholder` VALUES ('121', 'Unidus Corp', null, null, null, null, null, '57', null, '3', '1', '121', '1');
INSERT INTO `stakeholder` VALUES ('122', 'Thai Nippon Rubber Industry', null, null, null, null, null, '58', null, '3', '1', '122', '1');
INSERT INTO `stakeholder` VALUES ('123', 'Karex Industries', null, null, null, null, null, '60', null, '3', '1', '123', '1');
INSERT INTO `stakeholder` VALUES ('124', 'DOH (Static HF) Individuals', '', '', '', '', '', '54', '110', '0', '8', '7', '1');
INSERT INTO `stakeholder` VALUES ('127', 'Bayer Oy', null, null, null, null, null, '81', null, '3', '1', '127', '1');
INSERT INTO `stakeholder` VALUES ('128', 'MSD OSS B.V.OSS the Netherlands', null, null, null, null, null, '82', null, '3', '1', '128', '1');
INSERT INTO `stakeholder` VALUES ('129', 'SMB Coorporation of India', null, null, null, null, null, '83', null, '3', '1', '129', '1');
INSERT INTO `stakeholder` VALUES ('130', 'SMB Corporation of India', null, null, null, null, null, '84', null, '3', '1', '130', '1');
INSERT INTO `stakeholder` VALUES ('131', 'Sukh Initiative', '', '', '', '', '', '85', null, '4', '1', '131', '1');
INSERT INTO `stakeholder` VALUES ('132', 'MSD Provincial', null, null, null, null, null, '102', '73', '0', '2', '73', '1');
INSERT INTO `stakeholder` VALUES ('133', 'Govt. of Sindh - PWD', '', '', '', '', '', '103', null, '2', '1', '133', '1');
INSERT INTO `stakeholder` VALUES ('134', 'Govt. of Sindh - IRMNCH', '', '', '', '', '', '104', null, '2', '1', '134', '1');
INSERT INTO `stakeholder` VALUES ('135', 'Govt. of KP - PWD', '', '', '', '', '', '105', null, '2', '1', '135', '1');
INSERT INTO `stakeholder` VALUES ('136', 'Govt. of KP - IRMNCH', '', '', '', '', '', '106', null, '2', '1', '136', '1');
INSERT INTO `stakeholder` VALUES ('137', 'Guangzhou Doubl One Latex', null, null, null, null, null, '85', null, '3', '1', '137', '1');
INSERT INTO `stakeholder` VALUES ('139', 'Govt. of Balochistan - PWD', '', '', '', '', '', '107', null, '2', '1', '139', '1');
INSERT INTO `stakeholder` VALUES ('140', 'Wuxi Yushou  Medical Appliances', null, null, null, null, null, '86', null, '3', '1', '140', '1');
INSERT INTO `stakeholder` VALUES ('141', 'Wuxi Yushou Medical Appliances', null, null, null, null, null, '87', null, '3', '1', '141', '1');
INSERT INTO `stakeholder` VALUES ('142', 'Wuxi Yushou Medical Syringes', null, null, null, null, null, '88', null, '3', '1', '142', '1');
INSERT INTO `stakeholder` VALUES ('143', 'Depot medroxyprogesterone Acetate', null, null, null, null, null, '89', null, '3', '1', '143', '1');
INSERT INTO `stakeholder` VALUES ('144', 'Pfizer', null, null, null, null, null, '90', null, '3', '1', '144', '1');
INSERT INTO `stakeholder` VALUES ('145', 'IRMNCH', null, null, null, null, null, '33', null, '0', '1', '145', '0');
INSERT INTO `stakeholder` VALUES ('146', 'jiangsu', null, null, null, null, null, '91', null, '3', '1', '146', '1');
INSERT INTO `stakeholder` VALUES ('147', 'Suzhou Colour way Enterprises', null, null, null, null, null, '92', null, '3', '1', '147', '1');
INSERT INTO `stakeholder` VALUES ('148', 'GUILIN ZIZHU LATEX Co', null, null, null, null, null, '93', null, '3', '1', '148', '1');
INSERT INTO `stakeholder` VALUES ('152', 'IHP', null, null, null, null, null, '112', null, '0', '1', '152', '1');
INSERT INTO `stakeholder` VALUES ('153', 'Sukh Aman', null, null, null, null, null, '114', null, '1', '1', '153', '1');
INSERT INTO `stakeholder` VALUES ('154', 'Hands', null, null, null, null, null, '116', null, '1', '1', '154', '1');
INSERT INTO `stakeholder` VALUES ('155', 'Save the Children', null, null, null, null, null, '118', null, '1', '1', '155', '1');
INSERT INTO `stakeholder` VALUES ('156', 'NCMNH', null, null, null, null, null, '120', null, '1', '1', '156', '1');
INSERT INTO `stakeholder` VALUES ('157', 'Health Facility Sukh Aman', null, null, null, null, null, '122', '185', '1', '7', '153', '1');
INSERT INTO `stakeholder` VALUES ('163', 'RSPN', null, null, null, null, null, '124', null, '1', '1', '163', '1');
INSERT INTO `stakeholder` VALUES ('166', 'Health Facility Hands', null, null, null, null, null, '126', '186', '1', '7', '154', '1');
INSERT INTO `stakeholder` VALUES ('167', 'Health Facility Save the children', null, null, null, null, null, '128', '175', '1', '7', '155', '1');
INSERT INTO `stakeholder` VALUES ('168', 'Health Facility NCMNH', null, null, null, null, null, '130', '179', '1', '7', '156', '1');
INSERT INTO `stakeholder` VALUES ('169', 'Health Facility RSPN', null, null, null, null, null, '132', '182', '1', '7', '163', '1');
INSERT INTO `stakeholder` VALUES ('171', 'DOH - KP', '', '', '', '', '', '108', null, '2', '1', '171', '1');
INSERT INTO `stakeholder` VALUES ('172', 'DOH - Punjab', null, null, null, null, null, '109', null, '2', '1', '172', '1');
INSERT INTO `stakeholder` VALUES ('173', 'DOH - Sindh', null, null, null, null, null, '110', null, '2', '1', '173', '1');
INSERT INTO `stakeholder` VALUES ('174', 'DOH - Balochistan', null, null, null, null, null, '111', null, '2', '1', '174', '1');
INSERT INTO `stakeholder` VALUES ('175', 'Field Save the Children', null, null, null, null, null, '134', '177', '1', '4', '155', '1');
INSERT INTO `stakeholder` VALUES ('176', 'Provincial Save the Children', null, null, null, null, null, '136', '155', '1', '2', '155', '1');
INSERT INTO `stakeholder` VALUES ('177', 'District Save the Children', null, null, null, null, null, '138', '176', '1', '3', '155', '1');
INSERT INTO `stakeholder` VALUES ('178', 'M/S HLL lifecare ltd India', null, null, null, null, null, '94', null, '3', '1', '178', '1');
INSERT INTO `stakeholder` VALUES ('179', 'Field NCMNH', null, null, null, null, null, '134', '181', '1', '4', '156', '1');
INSERT INTO `stakeholder` VALUES ('180', 'Provincial NCMNH', null, null, null, null, null, '136', '156', '1', '2', '156', '1');
INSERT INTO `stakeholder` VALUES ('181', 'District NCMNH', null, null, null, null, null, '138', '180', '1', '3', '156', '1');
INSERT INTO `stakeholder` VALUES ('182', 'District RSPN', null, null, null, null, null, '132', '163', '1', '3', '163', '1');
INSERT INTO `stakeholder` VALUES ('183', 'District Hands', null, null, null, null, null, '126', '285', '1', '3', '154', '1');
INSERT INTO `stakeholder` VALUES ('184', 'District Sukh Aman', null, null, null, null, null, '122', '153', '1', '3', '153', '1');
INSERT INTO `stakeholder` VALUES ('185', 'Field Sukh Aman', null, null, null, null, null, '122', '184', '1', '4', '153', '1');
INSERT INTO `stakeholder` VALUES ('186', 'Field Hands', null, null, null, null, null, '126', '183', '1', '4', '154', '1');
INSERT INTO `stakeholder` VALUES ('187', 'Field RSPN', null, null, null, null, null, '132', '169', '1', '4', '163', '1');
INSERT INTO `stakeholder` VALUES ('188', 'P&SHC Dept.', null, null, null, null, null, '140', null, '2', '1', '188', '1');
INSERT INTO `stakeholder` VALUES ('189', 'UNICEF', null, null, null, null, null, '142', null, '2', '1', '189', '1');
INSERT INTO `stakeholder` VALUES ('190', 'Save the Children', null, null, null, null, null, '118', null, '2', '1', '190', '1');
INSERT INTO `stakeholder` VALUES ('191', 'alpha', null, null, null, null, null, '95', null, '3', '1', '191', '1');
INSERT INTO `stakeholder` VALUES ('192', 'USAID', null, null, null, null, null, '96', null, '3', '1', '192', '1');
INSERT INTO `stakeholder` VALUES ('193', 'FPAP Health Facility', null, null, null, null, null, '144', '24', '1', '7', '4', '1');
INSERT INTO `stakeholder` VALUES ('194', 'Peace Foundation', null, null, null, null, null, '146', null, '1', '1', '194', '1');
INSERT INTO `stakeholder` VALUES ('195', 'Provincial Peace Foundation', null, null, null, null, null, '148', '194', '1', '2', '194', '1');
INSERT INTO `stakeholder` VALUES ('196', 'District Peace Foundation', null, null, null, null, null, '150', '195', '1', '3', '194', '1');
INSERT INTO `stakeholder` VALUES ('197', 'Field Peace Foundation', null, null, null, null, null, '152', '196', '1', '4', '194', '1');
INSERT INTO `stakeholder` VALUES ('198', 'HF Peace Foundation', null, null, null, null, null, '154', '197', '1', '7', '194', '1');
INSERT INTO `stakeholder` VALUES ('199', 'Indus Hospital Network', null, null, null, null, null, '156', null, '1', '1', '199', '1');
INSERT INTO `stakeholder` VALUES ('200', 'Provincial Indus Hospital Network', null, null, null, null, null, '158', '199', '1', '2', '199', '1');
INSERT INTO `stakeholder` VALUES ('201', 'District Indus Hospital Network', null, null, null, null, null, '160', '200', '1', '3', '199', '1');
INSERT INTO `stakeholder` VALUES ('202', 'Field Indus Hospital Network', null, null, null, null, null, '162', '201', '1', '4', '199', '1');
INSERT INTO `stakeholder` VALUES ('203', 'HF Indus Hospital Network', null, null, null, null, null, '164', '202', '1', '7', '199', '1');
INSERT INTO `stakeholder` VALUES ('204', 'Sehatmand Zindgi ', null, null, null, null, null, '166', null, '1', '1', '204', '1');
INSERT INTO `stakeholder` VALUES ('205', 'Provincial Sehatmand Zindgi', null, null, null, null, null, '168', '204', '1', '2', '204', '1');
INSERT INTO `stakeholder` VALUES ('206', 'District Sehatmand Zindgi', null, null, null, null, null, '170', '205', '1', '3', '204', '1');
INSERT INTO `stakeholder` VALUES ('207', 'Field Sehatmand Zindgi', null, null, null, null, null, '172', '206', '1', '4', '204', '1');
INSERT INTO `stakeholder` VALUES ('208', 'HF Sehatmand Zindgi', null, null, null, null, null, '174', '207', '1', '7', '204', '1');
INSERT INTO `stakeholder` VALUES ('209', 'Aga Khan Health Services', null, null, null, null, null, '176', null, '1', '1', '209', '1');
INSERT INTO `stakeholder` VALUES ('210', 'Provincial Aga Khan Health Services', null, null, null, null, null, '178', '209', '1', '2', '209', '1');
INSERT INTO `stakeholder` VALUES ('211', 'District Aga Khan Health Services', null, null, null, null, null, '180', '210', '1', '3', '209', '1');
INSERT INTO `stakeholder` VALUES ('212', 'Field Aga Khan Health Services', null, null, null, null, null, '182', '211', '1', '4', '209', '1');
INSERT INTO `stakeholder` VALUES ('213', 'HF Aga Khan Health Services', null, null, null, null, null, '184', '212', '1', '7', '209', '1');
INSERT INTO `stakeholder` VALUES ('214', 'Merck Sharp (N.V. Organon)', null, null, null, null, null, '81', null, '3', '1', '214', '1');
INSERT INTO `stakeholder` VALUES ('215', 'HF DKT', null, null, null, null, null, '186', '83', '1', '7', '80', '1');
INSERT INTO `stakeholder` VALUES ('216', 'LHS - DOH (LHW)', '', '', '', '', '', '54', '109', '0', '7', '2', '1');
INSERT INTO `stakeholder` VALUES ('217', 'gsk', null, null, null, null, null, '97', null, '3', '1', '217', '1');
INSERT INTO `stakeholder` VALUES ('218', 'Nutriset', null, null, null, null, null, '98', null, '3', '1', '218', '1');
INSERT INTO `stakeholder` VALUES ('219', 'Standard Diagnostic', null, null, null, null, null, '99', null, '3', '1', '219', '1');
INSERT INTO `stakeholder` VALUES ('220', 'Nabi Qasim', null, null, null, null, null, '100', null, '3', '1', '220', '1');
INSERT INTO `stakeholder` VALUES ('221', 'Saffron', null, null, null, null, null, '101', null, '3', '1', '221', '1');
INSERT INTO `stakeholder` VALUES ('222', 'Brookes Pharma', null, null, null, null, null, '102', null, '3', '1', '222', '1');
INSERT INTO `stakeholder` VALUES ('223', 'Universal Corporation ', null, null, null, null, null, '103', null, '3', '1', '223', '1');
INSERT INTO `stakeholder` VALUES ('224', 'Remedica.ltd', null, null, null, null, null, '104', null, '3', '1', '224', '1');
INSERT INTO `stakeholder` VALUES ('225', 'Renata ltd./Squre', null, null, null, null, null, '105', null, '3', '1', '225', '1');
INSERT INTO `stakeholder` VALUES ('226', 'SEARLE', null, null, null, null, null, '106', null, '3', '1', '226', '1');
INSERT INTO `stakeholder` VALUES ('227', 'SERRLE', null, null, null, null, null, '107', null, '3', '1', '227', '1');
INSERT INTO `stakeholder` VALUES ('228', 'Carex', null, null, null, null, null, '108', null, '3', '1', '228', '1');
INSERT INTO `stakeholder` VALUES ('229', 'ZAFA Pharmaceutical', null, null, null, null, null, '109', null, '3', '1', '229', '1');
INSERT INTO `stakeholder` VALUES ('230', 'Local Purchase', null, null, null, null, null, '110', null, '3', '1', '230', '1');
INSERT INTO `stakeholder` VALUES ('231', 'M/S Ferozesons', null, null, null, null, null, '111', null, '3', '1', '231', '1');
INSERT INTO `stakeholder` VALUES ('232', 'Usman', null, null, null, null, null, '112', null, '3', '1', '232', '1');
INSERT INTO `stakeholder` VALUES ('233', 'ADE', null, null, null, null, null, '113', null, '3', '1', '233', '1');
INSERT INTO `stakeholder` VALUES ('234', 'HSHCO', null, null, null, null, null, '114', null, '3', '1', '234', '1');
INSERT INTO `stakeholder` VALUES ('235', 'Remedica', null, null, null, null, null, '115', null, '3', '1', '235', '1');
INSERT INTO `stakeholder` VALUES ('236', 'Dawlance', null, null, null, null, null, '116', null, '3', '1', '236', '1');
INSERT INTO `stakeholder` VALUES ('237', 'Samsung', null, null, null, null, null, '117', null, '3', '1', '237', '1');
INSERT INTO `stakeholder` VALUES ('238', 'Panasonic', null, null, null, null, null, '118', null, '3', '1', '238', '1');
INSERT INTO `stakeholder` VALUES ('239', 'GREE', null, null, null, null, null, '119', null, '3', '1', '239', '1');
INSERT INTO `stakeholder` VALUES ('240', 'Hill Bro', null, null, null, null, null, '120', null, '3', '1', '240', '1');
INSERT INTO `stakeholder` VALUES ('241', 'Safdar Brothers ', null, null, null, null, null, '121', null, '3', '1', '241', '1');
INSERT INTO `stakeholder` VALUES ('242', 'LP/IRMNCH', null, null, null, null, null, '122', null, '3', '1', '242', '1');
INSERT INTO `stakeholder` VALUES ('243', 'M/s Ferozsons', null, null, null, null, null, '123', null, '3', '1', '243', '1');
INSERT INTO `stakeholder` VALUES ('244', 'BOSCH', null, null, null, null, null, '124', null, '3', '1', '244', '1');
INSERT INTO `stakeholder` VALUES ('245', 'AS enterprises', null, null, null, null, null, '125', null, '3', '1', '245', '1');
INSERT INTO `stakeholder` VALUES ('246', 'Hospitals & Homecare', null, null, null, null, null, '126', null, '3', '1', '246', '1');
INSERT INTO `stakeholder` VALUES ('247', 'Riester', null, null, null, null, null, '127', null, '3', '1', '247', '1');
INSERT INTO `stakeholder` VALUES ('248', 'UNICEF', null, null, null, null, null, '128', null, '3', '1', '248', '1');
INSERT INTO `stakeholder` VALUES ('249', 'OASIS', null, null, null, null, null, '129', null, '3', '1', '249', '1');
INSERT INTO `stakeholder` VALUES ('251', 'BICA KCILAR', null, null, null, null, null, '130', null, '3', '1', '251', '1');
INSERT INTO `stakeholder` VALUES ('252', 'Delex', null, null, null, null, null, '131', null, '3', '1', '252', '1');
INSERT INTO `stakeholder` VALUES ('253', 'SECA', null, null, null, null, null, '132', null, '3', '1', '253', '1');
INSERT INTO `stakeholder` VALUES ('254', 'Benson', null, null, null, null, null, '133', null, '3', '1', '254', '1');
INSERT INTO `stakeholder` VALUES ('255', 'Abbott', null, null, null, null, null, '134', null, '3', '1', '255', '1');
INSERT INTO `stakeholder` VALUES ('256', 'Dynek Pty LTD', null, null, null, null, null, '135', null, '3', '1', '256', '1');
INSERT INTO `stakeholder` VALUES ('257', 'Accu Check ', null, null, null, null, null, '136', null, '3', '1', '257', '1');
INSERT INTO `stakeholder` VALUES ('258', 'YUSHU', null, null, null, null, null, '137', null, '3', '1', '258', '1');
INSERT INTO `stakeholder` VALUES ('259', 'M/s Ali Jan Printers ', null, null, null, null, null, '138', null, '3', '1', '259', '1');
INSERT INTO `stakeholder` VALUES ('260', 'Maxi Tex', null, null, null, null, null, '139', null, '3', '1', '260', '1');
INSERT INTO `stakeholder` VALUES ('261', 'Ferozsons', null, null, null, null, null, '140', null, '3', '1', '261', '1');
INSERT INTO `stakeholder` VALUES ('262', 'QUINTEX', null, null, null, null, null, '141', null, '3', '1', '262', '1');
INSERT INTO `stakeholder` VALUES ('263', 'WHO', null, null, null, null, null, '142', null, '3', '1', '263', '1');
INSERT INTO `stakeholder` VALUES ('264', 'GOP', null, null, null, null, null, '143', null, '3', '1', '264', '1');
INSERT INTO `stakeholder` VALUES ('265', 'M/S HSHCO', null, null, null, null, null, '144', null, '3', '1', '265', '1');
INSERT INTO `stakeholder` VALUES ('266', 'Lenovo', null, null, null, null, null, '145', null, '3', '1', '266', '1');
INSERT INTO `stakeholder` VALUES ('267', 'M/s Waheed Enterprises', null, null, null, null, null, '146', null, '3', '1', '267', '1');
INSERT INTO `stakeholder` VALUES ('268', 'MSD/OSS Neitherlands', null, null, null, null, null, '147', null, '3', '1', '268', '1');
INSERT INTO `stakeholder` VALUES ('269', 'MediPak Ltd', null, null, null, null, null, '148', null, '3', '1', '269', '1');
INSERT INTO `stakeholder` VALUES ('270', 'LP / IRMNCH', null, null, null, null, null, '149', null, '3', '1', '270', '1');
INSERT INTO `stakeholder` VALUES ('271', 'Books', null, null, null, null, null, '150', null, '3', '1', '271', '1');
INSERT INTO `stakeholder` VALUES ('272', 'FDC LTD', null, null, null, null, null, '151', null, '3', '1', '272', '1');
INSERT INTO `stakeholder` VALUES ('273', 'Honda', null, null, null, null, null, '152', null, '3', '1', '273', '1');
INSERT INTO `stakeholder` VALUES ('274', 'FerozeSons', null, null, null, null, null, '153', null, '3', '1', '274', '1');
INSERT INTO `stakeholder` VALUES ('275', 'USAID Pregna', null, null, null, null, null, '154', null, '3', '1', '275', '1');
INSERT INTO `stakeholder` VALUES ('276', 'DHA', null, null, null, null, null, '188', null, '0', '1', '276', '0');
INSERT INTO `stakeholder` VALUES ('277', 'DHA Prov', null, null, null, null, null, '190', '276', '0', '2', '276', '1');
INSERT INTO `stakeholder` VALUES ('278', 'District DHA', null, null, null, null, null, '192', '277', '0', '3', '276', '1');
INSERT INTO `stakeholder` VALUES ('279', 'SDP GS', null, null, null, null, null, '194', '27', '1', '7', '5', '1');
INSERT INTO `stakeholder` VALUES ('280', 'UNFPA - Punjab', null, null, null, null, null, '196', null, '2', '1', '280', '1');
INSERT INTO `stakeholder` VALUES ('281', 'UNFPA - KP', null, null, null, null, null, '198', null, '2', '1', '281', '1');
INSERT INTO `stakeholder` VALUES ('282', 'UNFPA - Balochistan', null, null, null, null, null, '200', null, '2', '1', '282', '1');
INSERT INTO `stakeholder` VALUES ('283', 'UNFPA - Sindh', null, null, null, null, null, '202', null, '2', '1', '283', '1');
INSERT INTO `stakeholder` VALUES ('284', 'SDP MSS', null, null, null, null, null, '204', '30', '1', '7', '6', '1');
INSERT INTO `stakeholder` VALUES ('285', 'Provincial Hands', null, null, null, null, null, '206', '154', '1', '2', '154', '1');
INSERT INTO `stakeholder` VALUES ('286', 'M/S Amson Vaccines & Pharma Pvt. Ltd. ', null, null, null, null, null, '155', null, '3', '1', '286', '1');
INSERT INTO `stakeholder` VALUES ('287', 'M/S Amson Vaccines & Pharma Pvt Ltd.', null, null, null, null, null, '156', null, '3', '1', '287', '1');
INSERT INTO `stakeholder` VALUES ('288', 'M/S Amson Vaccines & Pharma Pvt Ltd', null, null, null, null, null, '157', null, '3', '1', '288', '1');
INSERT INTO `stakeholder` VALUES ('289', 'GlaxoSmithKline Pakistan Limited ', null, null, null, null, null, '158', null, '3', '1', '289', '1');
INSERT INTO `stakeholder` VALUES ('290', 'ABBOTT LABORATRIES (PAKISTAN) LTD', null, null, null, null, null, '159', null, '3', '1', '290', '1');
INSERT INTO `stakeholder` VALUES ('291', 'ABBOTT LABORATORIES (PAKISTAN) LTD', null, null, null, null, null, '160', null, '3', '1', '291', '1');

-- ----------------------------
-- Table structure for stakeholder_item
-- ----------------------------
DROP TABLE IF EXISTS `stakeholder_item`;
CREATE TABLE `stakeholder_item` (
  `stk_id` int(8) NOT NULL AUTO_INCREMENT COMMENT 'stakeholder id (primary key)',
  `stkid` int(11) NOT NULL,
  `stk_item` varchar(255) DEFAULT NULL,
  `type` varchar(222) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `quantity_per_pack` double DEFAULT NULL,
  `gtin` varchar(255) DEFAULT NULL,
  `gross_capacity` double DEFAULT NULL,
  `net_capacity` double DEFAULT NULL,
  `pack_length` double DEFAULT NULL,
  `pack_width` double DEFAULT NULL,
  `pack_height` double DEFAULT NULL,
  `carton_per_pallet` int(11) DEFAULT NULL,
  `carton_volume` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`stk_id`),
  KEY `stkid` (`stkid`),
  KEY `stk_item` (`stk_item`)
) ENGINE=InnoDB AUTO_INCREMENT=1347 DEFAULT CHARSET=utf8 COMMENT='contains detail information of stakeholder and itm_info_tab';

-- ----------------------------
-- Records of stakeholder_item
-- ----------------------------
INSERT INTO `stakeholder_item` VALUES ('255', '4', '4', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('256', '5', '4', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('257', '6', '4', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('268', '2', '7', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('270', '4', '7', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('271', '5', '7', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('272', '6', '7', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('296', '5', '10', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('300', '4', '5', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('301', '6', '5', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('313', '8', '7', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('317', '8', '4', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('318', '8', '5', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('331', '10', '7', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('335', '10', '4', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('336', '10', '5', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('340', '11', '7', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('344', '11', '4', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('345', '11', '5', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('349', '12', '7', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('353', '12', '4', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('354', '12', '5', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('358', '13', '7', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('362', '13', '4', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('363', '13', '5', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('367', '14', '7', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('371', '14', '4', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('372', '14', '5', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('381', '5', '11', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('513', '2', '1', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('514', '4', '1', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('515', '5', '1', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('516', '6', '1', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('518', '8', '1', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('520', '10', '1', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('521', '11', '1', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('522', '12', '1', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('523', '13', '1', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('524', '14', '1', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('526', '2', '9', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('527', '4', '9', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('528', '6', '9', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('530', '8', '9', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('532', '10', '9', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('533', '11', '9', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('534', '12', '9', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('535', '13', '9', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('536', '14', '9', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('537', '5', '9', 'itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('538', '15', '1', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('539', '15', '9', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('540', '15', '4', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('541', '15', '5', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('543', '15', '7', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('544', '15', '12', '', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('546', '15', '14', '', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('547', '15', '15', '', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('548', '15', '16', '', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('549', '15', '17', '', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('550', '15', '18', '', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('551', '15', '19', '', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('552', '15', '20', '', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('553', '15', '21', '', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('554', '15', '22', '', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('555', '15', '23', '', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('556', '15', '24', '', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('557', '15', '25', '', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('558', '15', '26', '', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('572', '4', '14', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('573', '6', '14', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('574', '8', '14', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('607', '80', '5', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('609', '80', '4', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('610', '80', '7', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('612', '80', '1', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('613', '80', '9', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('618', '80', '14', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('619', '80', '10', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('621', '104', '5', null, 'Model T Cu 380 A\r\n', null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('622', '104', '1', null, 'No logo', null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('623', '1', '31', null, null, null, null, null, null, null, null, null, null, null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('624', '1', '32', null, null, null, null, null, null, null, null, null, '0', '0', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('625', '105', '3', null, 'Postinor - 2', '300', null, null, null, null, null, null, '36', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('626', '106', '7', null, 'Depo Provera Contraceptive Injection 150mg per ml\r\n', '400', null, null, null, null, null, null, '24', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('627', '107', '9', null, 'Microgynon ED Fe\r\n', '720', null, null, null, null, null, null, '16', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('628', '108', '5', null, 'Model T Cu 380 A\r\n', '300', null, null, null, null, null, null, '24', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('629', '119', '3', null, 'Postinor - 2', '525', null, null, null, null, null, null, '36', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('630', '120', '7', null, 'Depo Provera Contraceptive Injection 150mg per ml\r\n', '1200', null, null, null, null, null, null, '60', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('631', '121', '1', null, 'No logo', null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('633', '122', '1', null, 'No logo', null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('634', '108', '1', null, 'No logo', null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('635', '123', '1', null, 'No logo', null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('636', '120', '9', null, 'Microgynon ED Fe\r\n', '960', null, null, null, null, null, null, '36', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('637', '120', '3', null, 'Postinor - 2', '260', null, null, null, null, null, null, '80', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('640', '127', '13', null, 'Jadelle Implants', '100', '', '0', '0', '0', '0', '0', '36', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('644', '130', '5', null, 'SMB/TCu 380A', '600', '', '0', '0', '0', '0', '0', '18', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('645', '123', '1', null, 'Carex Brand', '3000', '', '0', '0', '0', '0', '0', '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('646', '119', '9', null, null, '2000', null, null, null, null, null, null, '20', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('647', '137', '1', null, 'Double One', '3000', '', '0', '0', '0', '0', '0', '18', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('656', '143', '7', null, 'Sayana Press', '200', '', '0', '0', '0', '0', '0', '1', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('658', '144', '34', null, 'Sayana Press', '200', '', '97336', '31000', '46', '46', '46', '2', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('660', '92', '30', null, null, null, null, null, null, null, null, null, null, null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('661', '146', '30', null, 'kanghau rubber', '1800', '', '1820', '0', '20', '13', '7', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('662', '147', '1', null, 'Condom', '4800', '', '0', '0', '0', '53', '2', '13', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('663', '148', '1', null, 'Rubber ', '7200', '', '0', '0', '0', '0', '0', '12', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('667', '1', '1', null, '', '0', '', '0', '0', '0', '0', '0', '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('669', '1', '9', null, '', '0', '', '0', '0', '0', '0', '0', '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('671', '1', '5', null, '', '0', '', '0', '0', '0', '0', '0', '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('672', '1', '7', null, '', '0', '', '0', '0', '0', '0', '0', '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('675', '1', '30', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('676', '1', '34', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('677', '7', '1', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('679', '7', '9', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('681', '7', '5', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('682', '7', '7', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('685', '9', '1', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('687', '9', '9', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('689', '9', '5', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('690', '9', '7', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('693', '73', '1', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('695', '73', '9', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('697', '73', '5', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('698', '73', '7', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('701', '73', '33', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('702', '74', '1', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('704', '74', '9', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('706', '74', '5', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('707', '74', '7', null, '', '0', '', '0', '0', '0', '0', '0', '0', null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('710', '153', '31', null, null, null, null, null, null, null, null, null, '0', '0', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('711', '153', '32', null, null, null, null, null, null, null, null, null, '0', '0', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('712', '153', '1', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('714', '153', '9', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('716', '153', '5', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('717', '153', '7', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('720', '153', '30', null, null, null, null, null, null, null, null, null, null, null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('721', '153', '34', null, null, null, null, null, null, null, null, null, null, null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('722', '154', '31', null, null, null, null, null, null, null, null, null, '0', '0', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('723', '154', '32', null, null, null, null, null, null, null, null, null, '0', '0', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('724', '154', '1', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('726', '154', '9', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('728', '154', '5', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('729', '154', '7', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('732', '154', '30', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('733', '154', '34', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('734', '155', '31', null, null, null, null, null, null, null, null, null, '0', '0', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('735', '155', '32', null, null, null, null, null, null, null, null, null, '0', '0', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('736', '155', '1', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('738', '155', '9', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('740', '155', '5', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('741', '155', '7', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('744', '155', '30', null, null, null, null, null, null, null, null, null, null, null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('745', '155', '34', null, null, null, null, null, null, null, null, null, null, null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('746', '156', '31', null, null, null, null, null, null, null, null, null, '0', '0', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('747', '156', '32', null, null, null, null, null, null, null, null, null, '0', '0', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('748', '156', '1', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('750', '156', '9', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('752', '156', '5', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('753', '156', '7', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('756', '156', '30', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('757', '156', '34', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('758', '163', '31', null, null, null, null, null, null, null, null, null, '0', '0', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('759', '163', '32', null, null, null, null, null, null, null, null, null, '0', '0', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('760', '163', '1', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('762', '163', '9', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('764', '163', '5', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('765', '163', '7', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('768', '163', '30', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('769', '163', '34', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('773', '2', '67', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-27 17:04:41');
INSERT INTO `stakeholder_item` VALUES ('774', '2', '68', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-27 17:04:41');
INSERT INTO `stakeholder_item` VALUES ('775', '2', '69', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-27 17:04:41');
INSERT INTO `stakeholder_item` VALUES ('776', '2', '70', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-27 17:04:41');
INSERT INTO `stakeholder_item` VALUES ('780', '2', '74', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-27 17:04:41');
INSERT INTO `stakeholder_item` VALUES ('781', '2', '75', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-27 17:04:41');
INSERT INTO `stakeholder_item` VALUES ('782', '2', '76', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-27 17:04:41');
INSERT INTO `stakeholder_item` VALUES ('783', '2', '77', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-27 17:04:41');
INSERT INTO `stakeholder_item` VALUES ('784', '2', '78', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-27 17:04:41');
INSERT INTO `stakeholder_item` VALUES ('785', '2', '79', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-27 17:04:41');
INSERT INTO `stakeholder_item` VALUES ('786', '2', '80', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-04-27 17:04:41');
INSERT INTO `stakeholder_item` VALUES ('787', '178', '5', null, 'M/S HLL lifecare ltd India', '600', '', '0', '0', '0', '0', '0', '16', '200', '2018-06-21 13:28:57');
INSERT INTO `stakeholder_item` VALUES ('794', '145', '67', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-07-31 17:08:31');
INSERT INTO `stakeholder_item` VALUES ('795', '145', '68', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-07-31 17:08:31');
INSERT INTO `stakeholder_item` VALUES ('796', '145', '69', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-07-31 17:08:31');
INSERT INTO `stakeholder_item` VALUES ('797', '145', '70', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-07-31 17:08:31');
INSERT INTO `stakeholder_item` VALUES ('801', '145', '74', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-07-31 17:08:31');
INSERT INTO `stakeholder_item` VALUES ('802', '145', '75', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-07-31 17:08:31');
INSERT INTO `stakeholder_item` VALUES ('803', '145', '76', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-07-31 17:08:31');
INSERT INTO `stakeholder_item` VALUES ('804', '145', '77', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-07-31 17:08:31');
INSERT INTO `stakeholder_item` VALUES ('805', '145', '78', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-07-31 17:08:32');
INSERT INTO `stakeholder_item` VALUES ('806', '145', '79', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-07-31 17:08:32');
INSERT INTO `stakeholder_item` VALUES ('807', '145', '80', 'Itm', null, null, null, null, null, null, null, null, '23', '200', '2018-07-31 17:08:32');
INSERT INTO `stakeholder_item` VALUES ('808', '1', '81', null, null, null, null, null, null, null, null, null, '23', null, '2018-09-06 14:42:05');
INSERT INTO `stakeholder_item` VALUES ('809', '128', '81', null, null, null, null, null, null, null, null, null, '23', '200', '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('810', '191', '30', null, 'alpha syringe', '1800', null, null, null, null, null, null, null, null, '2018-10-17 13:51:44');
INSERT INTO `stakeholder_item` VALUES ('811', '192', '1', null, 'No Logo', '3000', null, null, null, null, null, null, '20', null, '2018-10-18 10:08:53');
INSERT INTO `stakeholder_item` VALUES ('830', '7', '35', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 12:41:08');
INSERT INTO `stakeholder_item` VALUES ('831', '73', '35', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 12:41:08');
INSERT INTO `stakeholder_item` VALUES ('889', '1', '3', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:47:37');
INSERT INTO `stakeholder_item` VALUES ('890', '5', '3', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:47:37');
INSERT INTO `stakeholder_item` VALUES ('891', '6', '3', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:47:37');
INSERT INTO `stakeholder_item` VALUES ('892', '4', '3', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:47:37');
INSERT INTO `stakeholder_item` VALUES ('893', '8', '3', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:47:37');
INSERT INTO `stakeholder_item` VALUES ('894', '9', '3', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:47:37');
INSERT INTO `stakeholder_item` VALUES ('895', '74', '3', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:47:37');
INSERT INTO `stakeholder_item` VALUES ('896', '80', '3', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:47:37');
INSERT INTO `stakeholder_item` VALUES ('897', '153', '3', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:47:37');
INSERT INTO `stakeholder_item` VALUES ('898', '154', '3', null, null, null, null, null, null, null, null, null, '23', '200', '2018-10-30 15:47:37');
INSERT INTO `stakeholder_item` VALUES ('899', '155', '3', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:47:37');
INSERT INTO `stakeholder_item` VALUES ('900', '156', '3', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:47:37');
INSERT INTO `stakeholder_item` VALUES ('901', '163', '3', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:47:37');
INSERT INTO `stakeholder_item` VALUES ('902', '1', '13', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:48:08');
INSERT INTO `stakeholder_item` VALUES ('903', '5', '13', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:48:08');
INSERT INTO `stakeholder_item` VALUES ('904', '6', '13', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:48:08');
INSERT INTO `stakeholder_item` VALUES ('905', '8', '13', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:48:08');
INSERT INTO `stakeholder_item` VALUES ('906', '9', '13', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:48:08');
INSERT INTO `stakeholder_item` VALUES ('907', '74', '13', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:48:08');
INSERT INTO `stakeholder_item` VALUES ('908', '80', '13', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:48:08');
INSERT INTO `stakeholder_item` VALUES ('909', '153', '13', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:48:08');
INSERT INTO `stakeholder_item` VALUES ('910', '154', '13', null, null, null, null, null, null, null, null, null, '23', '200', '2018-10-30 15:48:08');
INSERT INTO `stakeholder_item` VALUES ('911', '155', '13', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:48:08');
INSERT INTO `stakeholder_item` VALUES ('912', '156', '13', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:48:08');
INSERT INTO `stakeholder_item` VALUES ('913', '163', '13', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:48:08');
INSERT INTO `stakeholder_item` VALUES ('914', '7', '36', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:49:10');
INSERT INTO `stakeholder_item` VALUES ('915', '73', '36', null, null, null, null, null, null, null, null, null, null, null, '2018-10-30 15:49:10');
INSERT INTO `stakeholder_item` VALUES ('932', '194', '31', null, null, null, null, null, null, null, null, null, '0', '0', '2018-11-08 14:19:23');
INSERT INTO `stakeholder_item` VALUES ('933', '194', '32', null, null, null, null, null, null, null, null, null, '0', '0', '2018-11-08 14:19:23');
INSERT INTO `stakeholder_item` VALUES ('934', '194', '1', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:23');
INSERT INTO `stakeholder_item` VALUES ('936', '194', '9', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:23');
INSERT INTO `stakeholder_item` VALUES ('937', '194', '5', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:23');
INSERT INTO `stakeholder_item` VALUES ('938', '194', '7', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:23');
INSERT INTO `stakeholder_item` VALUES ('940', '194', '30', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:23');
INSERT INTO `stakeholder_item` VALUES ('941', '194', '34', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:24');
INSERT INTO `stakeholder_item` VALUES ('942', '194', '3', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:24');
INSERT INTO `stakeholder_item` VALUES ('943', '194', '13', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:24');
INSERT INTO `stakeholder_item` VALUES ('944', '199', '31', null, null, null, null, null, null, null, null, null, '0', '0', '2018-11-08 14:19:33');
INSERT INTO `stakeholder_item` VALUES ('945', '199', '32', null, null, null, null, null, null, null, null, null, '0', '0', '2018-11-08 14:19:33');
INSERT INTO `stakeholder_item` VALUES ('946', '199', '1', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:33');
INSERT INTO `stakeholder_item` VALUES ('948', '199', '9', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:33');
INSERT INTO `stakeholder_item` VALUES ('949', '199', '5', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:33');
INSERT INTO `stakeholder_item` VALUES ('950', '199', '7', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:33');
INSERT INTO `stakeholder_item` VALUES ('952', '199', '30', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:33');
INSERT INTO `stakeholder_item` VALUES ('953', '199', '34', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:33');
INSERT INTO `stakeholder_item` VALUES ('954', '199', '3', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:33');
INSERT INTO `stakeholder_item` VALUES ('955', '199', '13', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:33');
INSERT INTO `stakeholder_item` VALUES ('956', '204', '31', null, null, null, null, null, null, null, null, null, '0', '0', '2018-11-08 14:19:41');
INSERT INTO `stakeholder_item` VALUES ('957', '204', '32', null, null, null, null, null, null, null, null, null, '0', '0', '2018-11-08 14:19:41');
INSERT INTO `stakeholder_item` VALUES ('958', '204', '1', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:41');
INSERT INTO `stakeholder_item` VALUES ('960', '204', '9', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:41');
INSERT INTO `stakeholder_item` VALUES ('961', '204', '5', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:41');
INSERT INTO `stakeholder_item` VALUES ('962', '204', '7', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:41');
INSERT INTO `stakeholder_item` VALUES ('964', '204', '30', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:41');
INSERT INTO `stakeholder_item` VALUES ('965', '204', '34', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:41');
INSERT INTO `stakeholder_item` VALUES ('966', '204', '3', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:41');
INSERT INTO `stakeholder_item` VALUES ('967', '204', '13', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:41');
INSERT INTO `stakeholder_item` VALUES ('968', '209', '31', null, null, null, null, null, null, null, null, null, '0', '0', '2018-11-08 14:19:52');
INSERT INTO `stakeholder_item` VALUES ('969', '209', '32', null, null, null, null, null, null, null, null, null, '0', '0', '2018-11-08 14:19:52');
INSERT INTO `stakeholder_item` VALUES ('970', '209', '1', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:52');
INSERT INTO `stakeholder_item` VALUES ('972', '209', '9', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:52');
INSERT INTO `stakeholder_item` VALUES ('973', '209', '5', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:52');
INSERT INTO `stakeholder_item` VALUES ('974', '209', '7', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:52');
INSERT INTO `stakeholder_item` VALUES ('976', '209', '30', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:52');
INSERT INTO `stakeholder_item` VALUES ('977', '209', '34', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:52');
INSERT INTO `stakeholder_item` VALUES ('978', '209', '3', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:52');
INSERT INTO `stakeholder_item` VALUES ('979', '209', '13', null, null, null, null, null, null, null, null, null, '23', '200', '2018-11-08 14:19:52');
INSERT INTO `stakeholder_item` VALUES ('981', '73', '94', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 11:21:41');
INSERT INTO `stakeholder_item` VALUES ('983', '73', '93', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:18:18');
INSERT INTO `stakeholder_item` VALUES ('984', '73', '123', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:20:07');
INSERT INTO `stakeholder_item` VALUES ('985', '73', '95', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:22:01');
INSERT INTO `stakeholder_item` VALUES ('988', '73', '96', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:28:02');
INSERT INTO `stakeholder_item` VALUES ('989', '73', '124', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:31:34');
INSERT INTO `stakeholder_item` VALUES ('990', '73', '125', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:33:39');
INSERT INTO `stakeholder_item` VALUES ('991', '73', '97', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:34:20');
INSERT INTO `stakeholder_item` VALUES ('995', '73', '56', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:36:48');
INSERT INTO `stakeholder_item` VALUES ('996', '2', '71', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:37:36');
INSERT INTO `stakeholder_item` VALUES ('997', '145', '71', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:37:36');
INSERT INTO `stakeholder_item` VALUES ('998', '73', '71', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:37:36');
INSERT INTO `stakeholder_item` VALUES ('1000', '73', '91', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:46:14');
INSERT INTO `stakeholder_item` VALUES ('1001', '7', '50', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:50:50');
INSERT INTO `stakeholder_item` VALUES ('1002', '7', '55', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:51:29');
INSERT INTO `stakeholder_item` VALUES ('1003', '7', '46', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:52:21');
INSERT INTO `stakeholder_item` VALUES ('1004', '7', '114', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:53:31');
INSERT INTO `stakeholder_item` VALUES ('1005', '7', '111', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:53:54');
INSERT INTO `stakeholder_item` VALUES ('1006', '7', '58', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:55:00');
INSERT INTO `stakeholder_item` VALUES ('1007', '7', '122', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:55:32');
INSERT INTO `stakeholder_item` VALUES ('1008', '7', '121', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:56:04');
INSERT INTO `stakeholder_item` VALUES ('1009', '7', '117', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:56:29');
INSERT INTO `stakeholder_item` VALUES ('1010', '7', '45', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:56:53');
INSERT INTO `stakeholder_item` VALUES ('1011', '7', '49', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:57:19');
INSERT INTO `stakeholder_item` VALUES ('1012', '7', '54', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:57:52');
INSERT INTO `stakeholder_item` VALUES ('1013', '7', '42', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:58:08');
INSERT INTO `stakeholder_item` VALUES ('1015', '7', '37', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 14:59:22');
INSERT INTO `stakeholder_item` VALUES ('1016', '7', '51', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:00:17');
INSERT INTO `stakeholder_item` VALUES ('1017', '2', '59', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:01:12');
INSERT INTO `stakeholder_item` VALUES ('1018', '145', '59', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:01:12');
INSERT INTO `stakeholder_item` VALUES ('1019', '73', '59', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:01:12');
INSERT INTO `stakeholder_item` VALUES ('1020', '7', '119', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:01:32');
INSERT INTO `stakeholder_item` VALUES ('1021', '7', '85', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:02:03');
INSERT INTO `stakeholder_item` VALUES ('1022', '2', '66', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:02:25');
INSERT INTO `stakeholder_item` VALUES ('1023', '6', '66', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:02:25');
INSERT INTO `stakeholder_item` VALUES ('1024', '7', '66', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:02:25');
INSERT INTO `stakeholder_item` VALUES ('1025', '8', '66', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:02:25');
INSERT INTO `stakeholder_item` VALUES ('1026', '145', '66', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:02:25');
INSERT INTO `stakeholder_item` VALUES ('1027', '7', '52', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:02:47');
INSERT INTO `stakeholder_item` VALUES ('1028', '7', '57', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:03:05');
INSERT INTO `stakeholder_item` VALUES ('1029', '7', '120', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:03:24');
INSERT INTO `stakeholder_item` VALUES ('1030', '7', '53', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:03:59');
INSERT INTO `stakeholder_item` VALUES ('1031', '2', '73', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:11:39');
INSERT INTO `stakeholder_item` VALUES ('1032', '145', '73', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:11:39');
INSERT INTO `stakeholder_item` VALUES ('1033', '73', '73', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:11:39');
INSERT INTO `stakeholder_item` VALUES ('1034', '7', '40', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:12:21');
INSERT INTO `stakeholder_item` VALUES ('1035', '73', '40', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:12:21');
INSERT INTO `stakeholder_item` VALUES ('1036', '5', '6', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:39');
INSERT INTO `stakeholder_item` VALUES ('1037', '6', '6', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:39');
INSERT INTO `stakeholder_item` VALUES ('1038', '4', '6', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:39');
INSERT INTO `stakeholder_item` VALUES ('1039', '7', '6', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:39');
INSERT INTO `stakeholder_item` VALUES ('1040', '8', '6', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:39');
INSERT INTO `stakeholder_item` VALUES ('1041', '80', '6', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:39');
INSERT INTO `stakeholder_item` VALUES ('1042', '1', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1043', '6', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1044', '4', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1045', '7', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1046', '8', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1047', '9', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1048', '74', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1049', '80', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1050', '153', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1051', '154', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1052', '155', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1053', '156', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1054', '163', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1055', '194', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1056', '199', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1057', '204', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1058', '209', '2', null, null, null, null, null, null, null, null, null, null, null, '2018-11-16 15:17:56');
INSERT INTO `stakeholder_item` VALUES ('1059', '1', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1060', '5', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1061', '6', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1062', '4', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1063', '7', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1064', '8', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1065', '9', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1066', '74', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1067', '80', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1068', '153', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1069', '154', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1070', '155', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1071', '156', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1072', '163', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1073', '194', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1074', '199', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1075', '204', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1076', '209', '8', null, null, null, null, null, null, null, null, null, null, null, '2018-11-20 14:32:25');
INSERT INTO `stakeholder_item` VALUES ('1077', '214', '81', null, 'Implanon NXT', '0', '', '0', '0', '0', '0', '0', null, null, '2018-04-11 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('1080', '145', '128', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 12:09:40');
INSERT INTO `stakeholder_item` VALUES ('1081', '217', '128', null, 'Augmentin Syrup', '70', null, null, null, null, null, null, '13', null, '2018-12-28 12:17:55');
INSERT INTO `stakeholder_item` VALUES ('1082', '145', '129', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 12:19:53');
INSERT INTO `stakeholder_item` VALUES ('1083', '145', '130', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 12:24:48');
INSERT INTO `stakeholder_item` VALUES ('1084', '145', '131', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 12:30:52');
INSERT INTO `stakeholder_item` VALUES ('1085', '145', '132', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 12:31:53');
INSERT INTO `stakeholder_item` VALUES ('1086', '145', '133', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 12:34:53');
INSERT INTO `stakeholder_item` VALUES ('1087', '145', '134', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 12:36:35');
INSERT INTO `stakeholder_item` VALUES ('1090', '145', '135', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 13:34:52');
INSERT INTO `stakeholder_item` VALUES ('1091', '145', '136', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 13:37:32');
INSERT INTO `stakeholder_item` VALUES ('1092', '145', '137', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 13:42:59');
INSERT INTO `stakeholder_item` VALUES ('1093', '145', '138', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 13:43:56');
INSERT INTO `stakeholder_item` VALUES ('1094', '145', '139', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 13:45:58');
INSERT INTO `stakeholder_item` VALUES ('1095', '145', '140', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 13:46:56');
INSERT INTO `stakeholder_item` VALUES ('1096', '145', '141', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 13:47:52');
INSERT INTO `stakeholder_item` VALUES ('1097', '145', '142', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 13:48:33');
INSERT INTO `stakeholder_item` VALUES ('1100', '145', '143', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 13:52:09');
INSERT INTO `stakeholder_item` VALUES ('1101', '145', '144', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 13:53:27');
INSERT INTO `stakeholder_item` VALUES ('1102', '145', '145', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 13:55:36');
INSERT INTO `stakeholder_item` VALUES ('1103', '145', '146', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 13:57:04');
INSERT INTO `stakeholder_item` VALUES ('1104', '145', '147', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 13:57:55');
INSERT INTO `stakeholder_item` VALUES ('1105', '145', '148', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 13:58:55');
INSERT INTO `stakeholder_item` VALUES ('1106', '145', '149', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 13:59:19');
INSERT INTO `stakeholder_item` VALUES ('1107', '145', '150', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:06:22');
INSERT INTO `stakeholder_item` VALUES ('1108', '145', '151', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:10:16');
INSERT INTO `stakeholder_item` VALUES ('1109', '145', '152', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:11:22');
INSERT INTO `stakeholder_item` VALUES ('1110', '145', '153', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:12:03');
INSERT INTO `stakeholder_item` VALUES ('1111', '145', '154', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:14:01');
INSERT INTO `stakeholder_item` VALUES ('1112', '145', '155', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:16:18');
INSERT INTO `stakeholder_item` VALUES ('1113', '145', '156', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:16:38');
INSERT INTO `stakeholder_item` VALUES ('1114', '145', '157', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:17:08');
INSERT INTO `stakeholder_item` VALUES ('1115', '145', '158', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:17:33');
INSERT INTO `stakeholder_item` VALUES ('1116', '145', '159', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:18:45');
INSERT INTO `stakeholder_item` VALUES ('1117', '145', '160', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:19:53');
INSERT INTO `stakeholder_item` VALUES ('1118', '145', '161', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:20:29');
INSERT INTO `stakeholder_item` VALUES ('1119', '145', '162', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:21:23');
INSERT INTO `stakeholder_item` VALUES ('1120', '145', '163', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:21:56');
INSERT INTO `stakeholder_item` VALUES ('1121', '145', '164', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:22:36');
INSERT INTO `stakeholder_item` VALUES ('1122', '145', '165', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:23:33');
INSERT INTO `stakeholder_item` VALUES ('1123', '145', '166', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:24:48');
INSERT INTO `stakeholder_item` VALUES ('1124', '145', '167', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:25:19');
INSERT INTO `stakeholder_item` VALUES ('1125', '145', '168', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:25:50');
INSERT INTO `stakeholder_item` VALUES ('1126', '145', '169', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:28:41');
INSERT INTO `stakeholder_item` VALUES ('1127', '145', '170', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:29:25');
INSERT INTO `stakeholder_item` VALUES ('1128', '145', '171', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:30:20');
INSERT INTO `stakeholder_item` VALUES ('1129', '145', '172', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:31:24');
INSERT INTO `stakeholder_item` VALUES ('1130', '145', '173', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:32:40');
INSERT INTO `stakeholder_item` VALUES ('1131', '145', '174', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:34:03');
INSERT INTO `stakeholder_item` VALUES ('1132', '145', '175', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:34:26');
INSERT INTO `stakeholder_item` VALUES ('1133', '145', '176', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:34:58');
INSERT INTO `stakeholder_item` VALUES ('1134', '145', '177', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:35:42');
INSERT INTO `stakeholder_item` VALUES ('1135', '145', '178', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:36:30');
INSERT INTO `stakeholder_item` VALUES ('1136', '145', '179', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:38:41');
INSERT INTO `stakeholder_item` VALUES ('1137', '145', '180', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:39:36');
INSERT INTO `stakeholder_item` VALUES ('1138', '145', '181', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:40:35');
INSERT INTO `stakeholder_item` VALUES ('1139', '145', '182', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:41:35');
INSERT INTO `stakeholder_item` VALUES ('1140', '145', '183', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:42:16');
INSERT INTO `stakeholder_item` VALUES ('1141', '145', '184', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:42:49');
INSERT INTO `stakeholder_item` VALUES ('1142', '145', '185', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:43:56');
INSERT INTO `stakeholder_item` VALUES ('1143', '145', '186', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:44:25');
INSERT INTO `stakeholder_item` VALUES ('1145', '145', '187', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:46:11');
INSERT INTO `stakeholder_item` VALUES ('1146', '145', '188', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:47:15');
INSERT INTO `stakeholder_item` VALUES ('1147', '145', '189', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:47:44');
INSERT INTO `stakeholder_item` VALUES ('1148', '145', '190', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:48:20');
INSERT INTO `stakeholder_item` VALUES ('1149', '145', '191', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:49:31');
INSERT INTO `stakeholder_item` VALUES ('1150', '145', '192', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 14:50:23');
INSERT INTO `stakeholder_item` VALUES ('1151', '145', '193', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:01:10');
INSERT INTO `stakeholder_item` VALUES ('1152', '145', '194', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:01:51');
INSERT INTO `stakeholder_item` VALUES ('1153', '145', '195', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:02:22');
INSERT INTO `stakeholder_item` VALUES ('1154', '145', '196', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:02:56');
INSERT INTO `stakeholder_item` VALUES ('1155', '145', '197', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:03:20');
INSERT INTO `stakeholder_item` VALUES ('1156', '145', '198', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:03:59');
INSERT INTO `stakeholder_item` VALUES ('1157', '145', '199', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:04:31');
INSERT INTO `stakeholder_item` VALUES ('1158', '145', '200', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:05:18');
INSERT INTO `stakeholder_item` VALUES ('1159', '145', '201', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:05:40');
INSERT INTO `stakeholder_item` VALUES ('1160', '145', '202', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:06:05');
INSERT INTO `stakeholder_item` VALUES ('1162', '145', '203', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:08:17');
INSERT INTO `stakeholder_item` VALUES ('1163', '145', '204', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:08:56');
INSERT INTO `stakeholder_item` VALUES ('1164', '145', '205', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:09:33');
INSERT INTO `stakeholder_item` VALUES ('1166', '145', '207', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:11:09');
INSERT INTO `stakeholder_item` VALUES ('1167', '145', '208', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:11:46');
INSERT INTO `stakeholder_item` VALUES ('1168', '145', '209', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:12:25');
INSERT INTO `stakeholder_item` VALUES ('1169', '145', '210', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:12:54');
INSERT INTO `stakeholder_item` VALUES ('1170', '145', '211', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:13:43');
INSERT INTO `stakeholder_item` VALUES ('1171', '145', '212', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:14:11');
INSERT INTO `stakeholder_item` VALUES ('1172', '145', '213', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:14:42');
INSERT INTO `stakeholder_item` VALUES ('1173', '145', '214', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:54:16');
INSERT INTO `stakeholder_item` VALUES ('1176', '145', '216', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 15:59:58');
INSERT INTO `stakeholder_item` VALUES ('1177', '145', '206', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 16:06:02');
INSERT INTO `stakeholder_item` VALUES ('1178', '145', '217', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 16:07:57');
INSERT INTO `stakeholder_item` VALUES ('1179', '145', '218', null, null, null, null, null, null, null, null, null, null, null, '2018-12-28 16:09:19');
INSERT INTO `stakeholder_item` VALUES ('1180', '217', '129', null, 'Calpol', '30', null, null, null, null, null, null, '25', null, '2018-12-28 16:16:38');
INSERT INTO `stakeholder_item` VALUES ('1181', '218', '146', null, 'Rutf', '150', null, null, null, null, null, null, '1', null, '2018-12-28 16:28:52');
INSERT INTO `stakeholder_item` VALUES ('1182', '219', '161', null, 'HCV Kit', '45', null, null, null, null, null, null, '1', null, '2018-12-28 17:04:32');
INSERT INTO `stakeholder_item` VALUES ('1183', '217', '130', null, 'Zynq Syrup', '120', null, null, null, null, null, null, '1', null, '2018-12-29 23:59:29');
INSERT INTO `stakeholder_item` VALUES ('1184', '217', '129', null, 'Calpol Syrup', '70', null, null, null, null, null, null, '1', null, '2018-12-30 09:44:40');
INSERT INTO `stakeholder_item` VALUES ('1185', '220', '130', null, 'Zynq Syrup', '70', null, null, null, null, null, null, '1', null, '2018-12-30 09:48:22');
INSERT INTO `stakeholder_item` VALUES ('1186', '221', '133', null, 'Cytotol', '2240', null, null, null, null, null, null, '1', null, '2018-12-30 14:51:30');
INSERT INTO `stakeholder_item` VALUES ('1187', '217', '134', null, 'Fefol', '10080', null, null, null, null, null, null, '1', null, '2018-12-30 16:08:53');
INSERT INTO `stakeholder_item` VALUES ('1188', '222', '131', null, 'Payodine 450 ml', '20', null, null, null, null, null, null, '1', null, '2018-12-30 17:03:37');
INSERT INTO `stakeholder_item` VALUES ('1189', '223', '137', null, 'Combi-Pack', '208', null, null, null, null, null, null, '1', null, '2018-12-30 17:11:16');
INSERT INTO `stakeholder_item` VALUES ('1190', '224', '165', null, 'Amoxil DT', '15000', null, null, null, null, null, null, '1', null, '2018-12-30 18:38:30');
INSERT INTO `stakeholder_item` VALUES ('1191', '225', '138', null, 'Co-Pack', '640', null, null, null, null, null, null, '1', null, '2018-12-30 18:59:29');
INSERT INTO `stakeholder_item` VALUES ('1193', '145', '72', null, null, null, null, null, null, null, null, null, null, null, '2018-12-30 20:28:51');
INSERT INTO `stakeholder_item` VALUES ('1194', '227', '72', null, 'Peditral', '400', null, null, null, null, null, null, '1', null, '2018-12-30 20:31:13');
INSERT INTO `stakeholder_item` VALUES ('1196', '145', '219', null, null, null, null, null, null, null, null, null, null, null, '2019-01-02 12:22:55');
INSERT INTO `stakeholder_item` VALUES ('1197', '217', '219', null, 'Qalsan/D', '30', null, null, null, null, null, null, '1', null, '2019-01-02 12:26:00');
INSERT INTO `stakeholder_item` VALUES ('1200', '145', '215', null, null, null, null, null, null, null, null, null, null, null, '2019-01-02 23:01:16');
INSERT INTO `stakeholder_item` VALUES ('1201', '217', '215', null, 'Calpol Tablet 90 Pack', '90', null, null, null, null, null, null, '1', null, '2019-01-02 23:08:05');
INSERT INTO `stakeholder_item` VALUES ('1202', '145', '127', null, null, null, null, null, null, null, null, null, null, null, '2019-01-02 23:30:31');
INSERT INTO `stakeholder_item` VALUES ('1203', '217', '127', null, 'Calpol Tablet 40 Pack', '40', null, null, null, null, null, null, '1', null, '2019-01-02 23:33:51');
INSERT INTO `stakeholder_item` VALUES ('1204', '228', '150', null, 'Condoms', '30', null, null, null, null, null, null, '1', null, '2019-01-02 23:58:00');
INSERT INTO `stakeholder_item` VALUES ('1205', '217', '132', null, 'Amoxil syrup', '70', null, null, null, null, null, null, '1', null, '2019-01-03 10:22:30');
INSERT INTO `stakeholder_item` VALUES ('1206', '229', '139', null, 'Famila Inj', '24', null, null, null, null, null, null, '1', null, '2019-01-03 15:29:35');
INSERT INTO `stakeholder_item` VALUES ('1207', '230', '135', null, 'Steel Dishes', '1', null, null, null, null, null, null, '1', null, '2019-01-03 16:27:13');
INSERT INTO `stakeholder_item` VALUES ('1208', '231', '140', null, 'Ultrasound machines', '1', null, null, null, null, null, null, '1', null, '2019-01-03 16:30:52');
INSERT INTO `stakeholder_item` VALUES ('1209', '232', '144', null, 'Nitto Surgical Tape', '40', null, null, null, null, null, null, '1', null, '2019-01-03 16:42:21');
INSERT INTO `stakeholder_item` VALUES ('1210', '229', '145', null, 'Emkit Tab', '260', null, null, null, null, null, null, '1', null, '2019-01-03 16:44:54');
INSERT INTO `stakeholder_item` VALUES ('1211', '233', '147', null, 'Weighing Scale ', '1', null, null, null, null, null, null, '1', null, '2019-01-03 16:45:52');
INSERT INTO `stakeholder_item` VALUES ('1212', '234', '151', null, 'Pigeon Hole Box', '1', null, null, null, null, null, null, '1', null, '2019-01-03 16:48:49');
INSERT INTO `stakeholder_item` VALUES ('1213', '235', '152', null, 'Mebandazole Chewable', '140', null, null, null, null, null, null, '1', null, '2019-01-03 16:50:54');
INSERT INTO `stakeholder_item` VALUES ('1214', '218', '154', null, 'F-100', '24', null, null, null, null, null, null, '1', null, '2019-01-03 16:56:33');
INSERT INTO `stakeholder_item` VALUES ('1215', '236', '155', null, 'Microwave Oven', '1', null, null, null, null, null, null, '1', null, '2019-01-03 16:58:00');
INSERT INTO `stakeholder_item` VALUES ('1216', '237', '156', null, 'LED', '1', null, null, null, null, null, null, '1', null, '2019-01-03 16:58:57');
INSERT INTO `stakeholder_item` VALUES ('1217', '238', '157', null, 'Juicer Blender', '1', null, null, null, null, null, null, '1', null, '2019-01-03 17:00:18');
INSERT INTO `stakeholder_item` VALUES ('1218', '239', '158', null, 'Air Conditioner ', '1', null, null, null, null, null, null, '1', null, '2019-01-03 17:39:10');
INSERT INTO `stakeholder_item` VALUES ('1219', '240', '160', null, 'CMW Kit', '1', null, null, null, null, null, null, '1', null, '2019-01-03 17:39:57');
INSERT INTO `stakeholder_item` VALUES ('1220', '241', '162', null, 'Safe Delivery Kit', '60', null, null, null, null, null, null, '1', null, '2019-01-03 17:41:25');
INSERT INTO `stakeholder_item` VALUES ('1221', '234', '163', null, 'Length Measuring Board', '20', null, null, null, null, null, null, '1', null, '2019-01-03 17:45:30');
INSERT INTO `stakeholder_item` VALUES ('1222', '242', '166', null, 'CMW Manual I & II', '1', null, null, null, null, null, null, '1', null, '2019-01-03 17:50:03');
INSERT INTO `stakeholder_item` VALUES ('1223', '230', '167', null, 'LHS Report', '1', null, null, null, null, null, null, '1', null, '2019-01-03 17:51:00');
INSERT INTO `stakeholder_item` VALUES ('1224', '243', '168', null, 'Ultrasound UPS', '1', null, null, null, null, null, null, '1', null, '2019-01-03 17:51:43');
INSERT INTO `stakeholder_item` VALUES ('1225', '220', '169', null, 'Gynosporin', '6', null, null, null, null, null, null, '1', null, '2019-01-03 17:52:34');
INSERT INTO `stakeholder_item` VALUES ('1226', '244', '170', null, 'Calamox', '300', null, null, null, null, null, null, '1', null, '2019-01-03 17:53:08');
INSERT INTO `stakeholder_item` VALUES ('1227', '245', '171', null, 'HB Strips', '50', null, null, null, null, null, null, '1', null, '2019-01-03 17:54:45');
INSERT INTO `stakeholder_item` VALUES ('1228', '220', '172', null, 'Folitab', '189', null, null, null, null, null, null, '1', null, '2019-01-03 17:55:20');
INSERT INTO `stakeholder_item` VALUES ('1229', '246', '173', null, 'BP Appratus (Dial type)', '1', null, null, null, null, null, null, '1', null, '2019-01-03 17:56:10');
INSERT INTO `stakeholder_item` VALUES ('1230', '247', '174', null, 'BP Appratus (Mercurial)', '50', null, null, null, null, null, null, '1', null, '2019-01-03 17:56:57');
INSERT INTO `stakeholder_item` VALUES ('1231', '242', '175', null, 'Syringe Cutter', '1', null, null, null, null, null, null, '1', null, '2019-01-03 17:58:03');
INSERT INTO `stakeholder_item` VALUES ('1232', '248', '176', null, 'Ari Timer', '5', null, null, null, null, null, null, '1', null, '2019-01-03 17:58:31');
INSERT INTO `stakeholder_item` VALUES ('1233', '249', '177', null, 'Aqua Tab', '1000', null, null, null, null, null, null, '1', null, '2019-01-03 17:59:06');
INSERT INTO `stakeholder_item` VALUES ('1234', '214', '8', null, 'Implanon', '0', '', '0', '0', '0', '0', '0', null, null, '2019-01-04 10:37:11');
INSERT INTO `stakeholder_item` VALUES ('1235', '251', '178', null, 'IV Canula', '10', null, null, null, null, null, null, '1', null, '2019-01-04 10:52:30');
INSERT INTO `stakeholder_item` VALUES ('1236', '252', '179', null, 'Stethoscope', '1', null, null, null, null, null, null, '1', null, '2019-01-04 10:57:44');
INSERT INTO `stakeholder_item` VALUES ('1237', '253', '180', null, 'Seca 354 Baby Weighing Scale', '1', null, null, null, null, null, null, '1', null, '2019-01-04 11:07:24');
INSERT INTO `stakeholder_item` VALUES ('1238', '253', '181', null, 'Seca 213 Adult Height Scale', '1', null, null, null, null, null, null, '1', null, '2019-01-04 11:11:56');
INSERT INTO `stakeholder_item` VALUES ('1239', '242', '182', null, 'Muac Tape Adult', '1', null, null, null, null, null, null, '1', null, '2019-01-04 11:14:32');
INSERT INTO `stakeholder_item` VALUES ('1240', '254', '183', null, 'Foliron', '1', null, null, null, null, null, null, '1', null, '2019-01-04 11:15:02');
INSERT INTO `stakeholder_item` VALUES ('1241', '255', '184', null, 'Vidaylin-T', '210', null, null, null, null, null, null, '1', null, '2019-01-04 11:19:09');
INSERT INTO `stakeholder_item` VALUES ('1242', '220', '185', null, 'IRPO - FA', '41', null, null, null, null, null, null, '1', null, '2019-01-04 11:22:32');
INSERT INTO `stakeholder_item` VALUES ('1243', '256', '186', null, 'Cat Gut1', '1', null, null, null, null, null, null, '1', null, '2019-01-04 11:27:53');
INSERT INTO `stakeholder_item` VALUES ('1244', '226', '187', null, 'Metrozine', '173', null, null, null, null, null, null, '1', null, '2019-01-04 11:31:55');
INSERT INTO `stakeholder_item` VALUES ('1245', '257', '188', null, 'Accu Check Strips', '46', null, null, null, null, null, null, '1', null, '2019-01-04 11:36:10');
INSERT INTO `stakeholder_item` VALUES ('1246', '258', '190', null, '1ml Syringe', '16', null, null, null, null, null, null, '1', null, '2019-01-04 11:43:58');
INSERT INTO `stakeholder_item` VALUES ('1247', '245', '192', null, 'HB Meter', '1', null, null, null, null, null, null, '1', null, '2019-01-04 11:45:24');
INSERT INTO `stakeholder_item` VALUES ('1248', '257', '193', null, 'Accu Check Meter', '1', null, null, null, null, null, null, '1', null, '2019-01-04 11:46:36');
INSERT INTO `stakeholder_item` VALUES ('1249', '230', '194', null, 'Trainer Guide', '1', null, null, null, null, null, null, '1', null, '2019-01-04 11:51:25');
INSERT INTO `stakeholder_item` VALUES ('1250', '259', '195', null, 'LHW Books', '1', null, null, null, null, null, null, '1', null, '2019-01-04 11:52:51');
INSERT INTO `stakeholder_item` VALUES ('1251', '260', '199', null, 'Surgical Gloves', '1', null, null, null, null, null, null, '1', null, '2019-01-04 12:02:34');
INSERT INTO `stakeholder_item` VALUES ('1252', '253', '200', null, 'Seca 210 Baby Length Scale ', '10', null, null, null, null, null, null, '1', null, '2019-01-04 12:15:05');
INSERT INTO `stakeholder_item` VALUES ('1253', '243', '203', null, 'Ultrasound Gel Ferozsons', '4', null, null, null, null, null, null, '1', null, '2019-01-04 12:22:24');
INSERT INTO `stakeholder_item` VALUES ('1254', '261', '204', null, 'Printer Rolls', '20', null, null, null, null, null, null, '1', null, '2019-01-04 12:26:13');
INSERT INTO `stakeholder_item` VALUES ('1255', '248', '148', null, 'Muac Tape Large', '100', null, null, null, null, null, null, '1', null, '2019-01-04 12:26:43');
INSERT INTO `stakeholder_item` VALUES ('1256', '262', '206', null, 'Ambu Bag (Bottles)', '1', null, null, null, null, null, null, '1', null, '2019-01-04 12:27:33');
INSERT INTO `stakeholder_item` VALUES ('1257', '263', '202', null, 'Wrist Band', '1', null, null, null, null, null, null, '1', null, '2019-01-04 12:28:24');
INSERT INTO `stakeholder_item` VALUES ('1258', '262', '207', null, 'Sterlizer', '8', null, null, null, null, null, null, '1', null, '2019-01-04 12:28:57');
INSERT INTO `stakeholder_item` VALUES ('1259', '259', '208', null, 'LHW Report', '1', null, null, null, null, null, null, '1', null, '2019-01-04 12:29:42');
INSERT INTO `stakeholder_item` VALUES ('1260', '248', '149', null, 'MuacTape Small', '100', null, null, null, null, null, null, '1', null, '2019-01-04 12:30:32');
INSERT INTO `stakeholder_item` VALUES ('1261', '264', '209', null, 'Counselling Book', '1', null, null, null, null, null, null, '1', null, '2019-01-04 12:31:27');
INSERT INTO `stakeholder_item` VALUES ('1262', '248', '211', null, 'Measuring System', '1', null, null, null, null, null, null, '1', null, '2019-01-04 12:32:28');
INSERT INTO `stakeholder_item` VALUES ('1263', '265', '212', null, 'LHW Shoulder Bag', '1', null, null, null, null, null, null, '1', null, '2019-01-04 12:33:46');
INSERT INTO `stakeholder_item` VALUES ('1264', '266', '213', null, 'Lenovo Tab', '4', null, null, null, null, null, null, '1', null, '2019-01-04 12:35:42');
INSERT INTO `stakeholder_item` VALUES ('1265', '267', '216', null, 'MMS Cards', '1', null, null, null, null, null, null, '1', null, '2019-01-04 12:36:22');
INSERT INTO `stakeholder_item` VALUES ('1266', '268', '217', null, 'Implanon', '64', null, null, null, null, null, null, '1', null, '2019-01-04 12:38:02');
INSERT INTO `stakeholder_item` VALUES ('1267', '269', '191', null, 'IV Set', '1', null, null, null, null, null, null, '1', null, '2019-01-04 15:33:27');
INSERT INTO `stakeholder_item` VALUES ('1268', '270', '196', null, 'Diary Register', '1', null, null, null, null, null, null, '1', null, '2019-01-04 16:02:32');
INSERT INTO `stakeholder_item` VALUES ('1269', '270', '197', null, 'Register Khandan', '1', null, null, null, null, null, null, '1', null, '2019-01-04 16:06:30');
INSERT INTO `stakeholder_item` VALUES ('1270', '271', '198', null, 'KPI Books', '1', null, null, null, null, null, null, '1', null, '2019-01-04 16:08:58');
INSERT INTO `stakeholder_item` VALUES ('1271', '230', '210', null, 'Register Curative', '70', null, null, null, null, null, null, '1', null, '2019-01-07 10:49:32');
INSERT INTO `stakeholder_item` VALUES ('1272', '222', '136', null, 'Pyodine 60ml', '833', null, null, null, null, null, null, '1', null, '2019-01-15 15:32:32');
INSERT INTO `stakeholder_item` VALUES ('1273', '272', '214', null, 'Resomal / ORS', '100', null, null, null, null, null, null, '1', null, '2019-01-15 16:32:58');
INSERT INTO `stakeholder_item` VALUES ('1274', '145', '220', null, null, null, null, null, null, null, null, null, null, null, '2019-01-16 10:32:03');
INSERT INTO `stakeholder_item` VALUES ('1275', '273', '140', null, 'Ultrasound Machine', '1', null, null, null, null, null, null, '1', null, '2019-01-16 10:46:44');
INSERT INTO `stakeholder_item` VALUES ('1276', '274', '205', null, 'Ultrasound Machine', '1', null, null, null, null, null, null, '1', null, '2019-01-16 11:00:51');
INSERT INTO `stakeholder_item` VALUES ('1277', '242', '153', null, 'Card Boards', '1', null, null, null, null, null, null, '1', null, '2019-01-16 11:15:09');
INSERT INTO `stakeholder_item` VALUES ('1278', '273', '141', null, 'Ultrasound Smart ups', '1', null, null, null, null, null, null, '1', null, '2019-01-16 11:19:16');
INSERT INTO `stakeholder_item` VALUES ('1279', '273', '142', null, 'Ultrasound Carts', '1', null, null, null, null, null, null, '1', null, '2019-01-16 11:24:49');
INSERT INTO `stakeholder_item` VALUES ('1280', '275', '159', null, 'Copper-T', '128', null, null, null, null, null, null, '1', null, '2019-01-16 11:46:36');
INSERT INTO `stakeholder_item` VALUES ('1281', '145', '221', null, null, null, null, null, null, null, null, null, null, null, '2019-01-23 12:59:58');
INSERT INTO `stakeholder_item` VALUES ('1282', '7', '222', null, null, null, null, null, null, null, null, null, null, null, '2019-03-20 16:53:32');
INSERT INTO `stakeholder_item` VALUES ('1283', '7', '223', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 17:32:37');
INSERT INTO `stakeholder_item` VALUES ('1284', '7', '224', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 17:34:06');
INSERT INTO `stakeholder_item` VALUES ('1285', '7', '225', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 17:35:26');
INSERT INTO `stakeholder_item` VALUES ('1286', '7', '226', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 17:36:04');
INSERT INTO `stakeholder_item` VALUES ('1287', '7', '227', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 17:37:04');
INSERT INTO `stakeholder_item` VALUES ('1288', '7', '228', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 17:39:00');
INSERT INTO `stakeholder_item` VALUES ('1289', '7', '229', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 17:43:13');
INSERT INTO `stakeholder_item` VALUES ('1290', '7', '230', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 17:44:49');
INSERT INTO `stakeholder_item` VALUES ('1291', '7', '231', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 17:46:04');
INSERT INTO `stakeholder_item` VALUES ('1292', '7', '232', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 17:48:25');
INSERT INTO `stakeholder_item` VALUES ('1293', '7', '233', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 17:52:01');
INSERT INTO `stakeholder_item` VALUES ('1294', '7', '234', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 17:53:32');
INSERT INTO `stakeholder_item` VALUES ('1295', '7', '235', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:12:08');
INSERT INTO `stakeholder_item` VALUES ('1296', '7', '236', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:13:10');
INSERT INTO `stakeholder_item` VALUES ('1297', '7', '237', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:13:17');
INSERT INTO `stakeholder_item` VALUES ('1298', '7', '238', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:14:51');
INSERT INTO `stakeholder_item` VALUES ('1299', '7', '239', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:15:26');
INSERT INTO `stakeholder_item` VALUES ('1300', '7', '240', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:17:22');
INSERT INTO `stakeholder_item` VALUES ('1301', '7', '241', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:18:13');
INSERT INTO `stakeholder_item` VALUES ('1302', '7', '242', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:19:01');
INSERT INTO `stakeholder_item` VALUES ('1303', '7', '243', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:19:52');
INSERT INTO `stakeholder_item` VALUES ('1304', '7', '244', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:20:58');
INSERT INTO `stakeholder_item` VALUES ('1305', '7', '245', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:21:00');
INSERT INTO `stakeholder_item` VALUES ('1306', '7', '246', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:21:41');
INSERT INTO `stakeholder_item` VALUES ('1307', '7', '247', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:22:06');
INSERT INTO `stakeholder_item` VALUES ('1308', '7', '248', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:22:53');
INSERT INTO `stakeholder_item` VALUES ('1309', '7', '249', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:23:21');
INSERT INTO `stakeholder_item` VALUES ('1310', '7', '250', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:23:47');
INSERT INTO `stakeholder_item` VALUES ('1311', '7', '251', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:27:16');
INSERT INTO `stakeholder_item` VALUES ('1312', '7', '252', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:29:28');
INSERT INTO `stakeholder_item` VALUES ('1313', '7', '253', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:29:48');
INSERT INTO `stakeholder_item` VALUES ('1314', '7', '254', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:30:23');
INSERT INTO `stakeholder_item` VALUES ('1315', '7', '255', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:31:03');
INSERT INTO `stakeholder_item` VALUES ('1316', '7', '256', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:32:11');
INSERT INTO `stakeholder_item` VALUES ('1317', '7', '257', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:33:04');
INSERT INTO `stakeholder_item` VALUES ('1318', '7', '258', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:44:32');
INSERT INTO `stakeholder_item` VALUES ('1319', '7', '259', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:46:09');
INSERT INTO `stakeholder_item` VALUES ('1320', '7', '260', null, null, null, null, null, null, null, null, null, null, null, '2019-03-21 18:47:27');
INSERT INTO `stakeholder_item` VALUES ('1321', '7', '261', null, null, null, null, null, null, null, null, null, null, null, '2019-03-22 09:50:48');
INSERT INTO `stakeholder_item` VALUES ('1322', '7', '262', null, null, null, null, null, null, null, null, null, null, null, '2019-03-22 09:53:14');
INSERT INTO `stakeholder_item` VALUES ('1323', '7', '263', null, null, null, null, null, null, null, null, null, null, null, '2019-03-22 09:57:07');
INSERT INTO `stakeholder_item` VALUES ('1324', '7', '264', null, null, null, null, null, null, null, null, null, null, null, '2019-03-22 10:00:25');
INSERT INTO `stakeholder_item` VALUES ('1325', '7', '265', null, null, null, null, null, null, null, null, null, null, null, '2019-03-22 10:03:00');
INSERT INTO `stakeholder_item` VALUES ('1326', '7', '266', null, null, null, null, null, null, null, null, null, null, null, '2019-03-22 10:09:17');
INSERT INTO `stakeholder_item` VALUES ('1327', '4', '31', null, null, null, null, null, null, null, null, null, null, null, '2019-04-11 10:36:58');
INSERT INTO `stakeholder_item` VALUES ('1328', '4', '32', null, null, null, null, null, null, null, null, null, null, null, '2019-04-11 10:37:47');
INSERT INTO `stakeholder_item` VALUES ('1329', '5', '31', null, null, null, null, null, null, null, null, null, null, null, '2019-04-11 10:39:14');
INSERT INTO `stakeholder_item` VALUES ('1330', '5', '32', null, null, null, null, null, null, null, null, null, null, null, '2019-04-11 10:39:18');
INSERT INTO `stakeholder_item` VALUES ('1331', '4', '13', null, null, null, null, null, null, null, null, null, null, null, '2019-04-11 16:57:13');
INSERT INTO `stakeholder_item` VALUES ('1332', '286', '245', null, 'Tab. Fefan', '100', null, null, null, null, null, null, null, null, '2019-04-18 14:26:22');
INSERT INTO `stakeholder_item` VALUES ('1333', '287', '245', null, 'Tab. Fefan', '18000', null, null, null, null, null, null, '1', null, '2019-04-18 14:53:15');
INSERT INTO `stakeholder_item` VALUES ('1334', '288', '237', null, 'Hyzonate Injection 250 mg', '200', null, null, null, null, null, null, '1', null, '2019-04-18 15:56:21');
INSERT INTO `stakeholder_item` VALUES ('1335', '289', '85', null, 'Amoxil Syrup 250mg/5ml', '70', null, null, null, null, null, null, '1', null, '2019-04-19 11:59:59');
INSERT INTO `stakeholder_item` VALUES ('1336', '289', '231', null, 'Amoxil Capsules 500mg', '8000', null, null, null, null, null, null, '1', null, '2019-04-19 12:24:30');
INSERT INTO `stakeholder_item` VALUES ('1337', '289', '228', null, 'Augmentin Tablets 625mg', '1080', null, null, null, null, null, null, '1', null, '2019-04-19 12:35:11');
INSERT INTO `stakeholder_item` VALUES ('1338', '289', '222', null, 'Calpol Tablets 500mg', '8000', null, null, null, null, null, null, '1', null, '2019-04-19 12:40:22');
INSERT INTO `stakeholder_item` VALUES ('1339', '289', '223', null, 'Calpol Paed. Susp. 120mg/5ml', '70', null, null, null, null, null, null, '1', null, '2019-04-19 12:55:50');
INSERT INTO `stakeholder_item` VALUES ('1340', '289', '233', null, 'Piriton Tablets 4mg', '36000', null, null, null, null, null, null, '1', null, '2019-04-19 13:00:14');
INSERT INTO `stakeholder_item` VALUES ('1341', '290', '226', null, 'Brufen 400mg', '10250', null, null, null, null, null, null, '1', null, '2019-04-22 10:21:56');
INSERT INTO `stakeholder_item` VALUES ('1342', '291', '226', null, 'Brufen 400mg', '10250', null, null, null, null, null, null, '1', null, '2019-04-22 11:36:45');
INSERT INTO `stakeholder_item` VALUES ('1343', '291', '227', null, 'Brufen 100 mg/5ml', '60', null, null, null, null, null, null, '1', null, '2019-04-22 12:12:00');
INSERT INTO `stakeholder_item` VALUES ('1344', '291', '227', null, 'Brufen 100mg/5ml', '60', null, null, null, null, null, null, '1', null, '2019-04-22 12:21:10');
INSERT INTO `stakeholder_item` VALUES ('1345', '73', '92', null, null, null, null, null, null, null, null, null, null, null, '2019-04-25 12:19:19');
INSERT INTO `stakeholder_item` VALUES ('1346', '1', '267', null, null, null, null, null, null, null, null, null, null, null, '2019-04-25 12:19:45');

-- ----------------------------
-- Table structure for stakeholder_type
-- ----------------------------
DROP TABLE IF EXISTS `stakeholder_type`;
CREATE TABLE `stakeholder_type` (
  `stk_type_id` int(11) NOT NULL DEFAULT '0',
  `stk_type_descr` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`stk_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stakeholder_type
-- ----------------------------
INSERT INTO `stakeholder_type` VALUES ('0', 'Public Sector');
INSERT INTO `stakeholder_type` VALUES ('1', 'Private Sector');
INSERT INTO `stakeholder_type` VALUES ('2', 'Supplier');
INSERT INTO `stakeholder_type` VALUES ('3', 'Manufacturer');
INSERT INTO `stakeholder_type` VALUES ('4', 'NGO');

-- ----------------------------
-- Table structure for stock_sources
-- ----------------------------
DROP TABLE IF EXISTS `stock_sources`;
CREATE TABLE `stock_sources` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_source_id` int(11) DEFAULT NULL,
  `stakeholder_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `lvl` int(11) DEFAULT '7',
  `is_default` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  UNIQUE KEY `pk_id` (`stock_source_id`,`stakeholder_id`,`province_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stock_sources
-- ----------------------------
INSERT INTO `stock_sources` VALUES ('1', '201', '2', '1', '2018-02-28 11:32:04', '2018-03-28 13:30:06', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('2', '202', '2', '1', '2018-02-28 11:32:14', '2018-03-28 13:30:11', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('8', '216', '1', '1', '2018-06-29 02:16:55', '2018-06-29 14:04:22', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('9', '217', '1', '1', '2018-06-29 02:17:55', '2018-06-29 14:05:22', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('10', '216', '7', '1', '2018-06-29 03:14:16', '2018-06-29 15:01:43', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('11', '217', '7', '1', '2018-06-29 03:14:27', '2018-06-29 15:01:54', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('12', '216', '1', '2', '2018-06-29 03:14:49', '2018-06-29 15:02:16', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('13', '217', '1', '2', '2018-06-29 03:15:03', '2018-06-29 15:02:29', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('14', '216', '9', '2', '2018-06-29 03:17:49', '2018-06-29 15:05:16', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('15', '217', '9', '2', '2018-06-29 03:18:01', '2018-06-29 15:05:28', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('16', '216', '1', '3', '2018-06-29 03:18:16', '2018-06-29 15:05:42', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('17', '217', '1', '3', '2018-06-29 03:18:24', '2018-06-29 15:05:50', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('18', '216', '1', '4', '2018-06-29 03:18:48', '2018-06-29 15:06:14', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('19', '217', '1', '4', '2018-06-29 03:19:03', '2018-06-29 15:06:30', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('22', '218', '155', '2', '2018-07-18 10:24:59', '2018-07-18 10:11:24', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('23', '217', '155', '2', '2018-07-18 10:25:13', '2018-07-18 10:11:38', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('26', '218', '154', '2', '2018-07-18 10:53:13', '2018-07-18 10:39:38', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('27', '217', '154', '2', '2018-07-18 10:53:34', '2018-07-18 10:39:59', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('28', '218', '156', '2', '2018-07-18 10:53:51', '2018-07-18 10:40:16', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('30', '217', '156', '2', '2018-07-18 10:55:16', '2018-07-18 10:41:42', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('31', '218', '163', '2', '2018-07-18 10:55:46', '2018-07-18 10:42:11', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('32', '217', '163', '2', '2018-07-18 10:55:59', '2018-07-18 10:42:24', '1', '1', '7', null);
INSERT INTO `stock_sources` VALUES ('33', '218', '1', '2', '2018-10-23 11:05:25', '2018-10-23 10:46:37', '1', '1', '7', null);

-- ----------------------------
-- Table structure for stock_sources_data
-- ----------------------------
DROP TABLE IF EXISTS `stock_sources_data`;
CREATE TABLE `stock_sources_data` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_sources_id` int(11) DEFAULT NULL,
  `hf_data_id` int(11) DEFAULT NULL,
  `received` double DEFAULT NULL,
  `created_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `wh_data_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `hf_data_id` (`hf_data_id`),
  CONSTRAINT `stock_sources_data_ibfk_1` FOREIGN KEY (`hf_data_id`) REFERENCES `tbl_hf_data` (`pk_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stock_sources_data
-- ----------------------------

-- ----------------------------
-- Table structure for summary_data_myisam
-- ----------------------------
DROP TABLE IF EXISTS `summary_data_myisam`;
CREATE TABLE `summary_data_myisam` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `Stakeholder` varchar(255) DEFAULT NULL,
  `Province` varchar(255) DEFAULT NULL,
  `District` varchar(255) DEFAULT NULL,
  `Product` varchar(255) DEFAULT NULL,
  `Reporting_Month` varchar(255) DEFAULT NULL,
  `Reporting_Year` varchar(255) DEFAULT NULL,
  `Health_Facility` varchar(255) DEFAULT NULL,
  `opening_balance` varchar(255) DEFAULT NULL,
  `received_balance` varchar(255) DEFAULT NULL,
  `issue_balance` varchar(255) DEFAULT NULL,
  `closing_balance` varchar(255) DEFAULT NULL,
  `adjustment_positive` varchar(255) DEFAULT NULL,
  `adjustment_negative` varchar(255) DEFAULT NULL,
  `avg_consumption` varchar(255) DEFAULT NULL,
  `new` varchar(255) DEFAULT NULL,
  `old` varchar(255) DEFAULT NULL,
  `reporting_date` varchar(255) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `last_update` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `Stakeholder` (`Stakeholder`),
  KEY `Province` (`Province`),
  KEY `District` (`District`),
  KEY `Product` (`Product`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of summary_data_myisam
-- ----------------------------

-- ----------------------------
-- Table structure for summary_district
-- ----------------------------
DROP TABLE IF EXISTS `summary_district`;
CREATE TABLE `summary_district` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(10) DEFAULT NULL,
  `stakeholder_id` int(11) DEFAULT NULL,
  `reporting_date` date DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `district_id` int(11) NOT NULL,
  `consumption` double DEFAULT NULL,
  `avg_consumption` double DEFAULT NULL,
  `soh_district_store` double DEFAULT NULL,
  `soh_district_lvl` double DEFAULT NULL,
  `dist_reporting_rate` decimal(6,2) DEFAULT NULL,
  `field_reporting_rate` decimal(6,2) DEFAULT NULL,
  `reporting_rate` decimal(6,2) DEFAULT NULL,
  `total_health_facilities` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`),
  KEY `pk_id` (`pk_id`),
  KEY `item_id` (`item_id`),
  KEY `stakeholder_id` (`stakeholder_id`),
  KEY `reporting_date` (`reporting_date`),
  KEY `province_id` (`province_id`),
  KEY `district_id` (`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of summary_district
-- ----------------------------

-- ----------------------------
-- Table structure for summary_national
-- ----------------------------
DROP TABLE IF EXISTS `summary_national`;
CREATE TABLE `summary_national` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(11) DEFAULT NULL,
  `stakeholder_id` int(11) DEFAULT NULL,
  `reporting_date` date DEFAULT NULL,
  `consumption` double DEFAULT NULL,
  `avg_consumption` double DEFAULT NULL,
  `soh_national_store` double DEFAULT NULL,
  `soh_national_lvl` double DEFAULT NULL,
  `reporting_rate` decimal(6,2) DEFAULT NULL,
  `total_health_facilities` int(11) DEFAULT NULL,
  `is_copied` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`pk_id`),
  KEY `pk_id` (`pk_id`),
  KEY `item_id` (`item_id`),
  KEY `stakeholder_id` (`stakeholder_id`),
  KEY `reporting_date` (`reporting_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of summary_national
-- ----------------------------

-- ----------------------------
-- Table structure for summary_province
-- ----------------------------
DROP TABLE IF EXISTS `summary_province`;
CREATE TABLE `summary_province` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(10) DEFAULT NULL,
  `stakeholder_id` int(11) DEFAULT NULL,
  `reporting_date` date DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `consumption` double DEFAULT NULL,
  `avg_consumption` double DEFAULT NULL,
  `soh_province_store` double DEFAULT NULL,
  `soh_province_lvl` double DEFAULT NULL,
  `reporting_rate` decimal(6,2) DEFAULT NULL,
  `total_health_facilities` int(11) DEFAULT NULL,
  `is_copied` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`pk_id`),
  KEY `pk_id` (`pk_id`),
  KEY `item_id` (`item_id`),
  KEY `stakeholder_id` (`stakeholder_id`),
  KEY `reporting_date` (`reporting_date`),
  KEY `province_id` (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of summary_province
-- ----------------------------

-- ----------------------------
-- Table structure for system_settings
-- ----------------------------
DROP TABLE IF EXISTS `system_settings`;
CREATE TABLE `system_settings` (
  `pk_id` int(255) NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(255) DEFAULT NULL,
  `setting_value` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of system_settings
-- ----------------------------
INSERT INTO `system_settings` VALUES ('1', 'dashboard_email', 'active', 'Enable Emails from fp2020 dashboard (active/inactive)', '2018-02-27 11:59:05');
INSERT INTO `system_settings` VALUES ('2', 'dashboard_sms', 'active', 'Enable SMS from fp2020 dashboard (active/inactive)', '2018-02-27 11:59:16');
INSERT INTO `system_settings` VALUES ('3', 'dashboard_call', 'active', 'Enable Calls from fp2020 dashboard (active/inactive)', '2018-02-06 13:53:36');

-- ----------------------------
-- Table structure for sysuser_tab
-- ----------------------------
DROP TABLE IF EXISTS `sysuser_tab`;
CREATE TABLE `sysuser_tab` (
  `sysusrrec_id` varchar(15) NOT NULL DEFAULT '',
  `sysusr_type` varchar(15) DEFAULT NULL,
  `user_level` tinyint(4) DEFAULT NULL,
  `whrec_id` varchar(15) DEFAULT NULL,
  `usrlogin_id` varchar(155) DEFAULT NULL,
  `stkid` varchar(200) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `sysusr_pwd` varchar(50) DEFAULT NULL,
  `sysgroup_id` varchar(15) DEFAULT NULL,
  `sysgroup_prv` text,
  `sysgroup_subprv` text,
  `sysusr_name` varchar(40) DEFAULT NULL,
  `vis_org` varchar(50) DEFAULT NULL,
  `sysusr_dgcode` varchar(10) DEFAULT NULL,
  `sysusr_deg` varchar(150) DEFAULT NULL,
  `sysusr_dept` varchar(150) DEFAULT NULL,
  `sysusr_photo` blob COMMENT 'user photo - not implemented in v1',
  `sysusr_addr` text,
  `sysusr_ph` varchar(25) DEFAULT NULL,
  `sysusr_cell` varchar(25) DEFAULT NULL,
  `sysusr_email` varchar(50) NOT NULL,
  `sysgroup_type` varchar(10) DEFAULT NULL,
  `sysusr_status` varchar(10) DEFAULT NULL,
  `acopen_dt` bigint(20) NOT NULL DEFAULT '0' COMMENT 'date when account was opened',
  `extra` varchar(20) DEFAULT NULL,
  `homepage` varchar(100) DEFAULT NULL,
  `staticmenu` varchar(100) DEFAULT NULL,
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `auth` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  KEY `UserID` (`UserID`),
  KEY `stkid` (`stkid`)
) ENGINE=InnoDB AUTO_INCREMENT=10042 DEFAULT CHARSET=utf8 COMMENT='contain user information';

-- ----------------------------
-- Records of sysuser_tab
-- ----------------------------
INSERT INTO `sysuser_tab` VALUES ('SU-0022', '1', '1', '12', 'Administrator', '-1', '-1', '202cb962ac59075b964b07152d234b70', 'SG-001', 'MP-001~MP-002~MP-003~MP-004~MP-005~MP-008~MP-009~MP-010~MP-012~MP-013~MP-014~MP-015~MP-016~MP-017~MP-018~MP-019~MP-020~MP-023~MP-026~MP-027~MP-028~MP-029', 'SP-002~SP-003~SP-006~SP-009~SP-010~SP-012~SP-014~SP-016~SP-017~SP-018~SP-019~SP-021~SP-027~SP-028~SP-029~SP-030~SP-032~SP-034~SP-035~SP-036~SP-037~SP-038~SP-039~SP-040~SP-041~SP-042~SP-043~SP-044~SP-045~SP-046~SP-050~SP-056~SP-057~SP-058~SP-059~SP-061~SP-062~SP-063~SP-065~SP-066~SP-067~SP-069~SP-071~SP-073~SP-074~SP-075~SP-076~SP-077~SP-078~SP-079~SP-080~SP-081~SP-086~SP-087~SP-089~SP-090~SP-091~SP-095~SP-100~SP-110~SP-115~SP-116~SP-119~SP-120~SP-121~SP-122~SP-123~SP-124~SP-127~SP-130~SP-131~SP-136~SP-139~SP-140~SP-143~SP-144~SP-145~SP-148~SP-150~SP-151~SP-155~SP-159~SP-163~SP-164~SP-165~SP-166~SP-167', 'Administrator', '', '', 'Administrator', 'DELIVER MIS', '', '', '', '', 'aun.irtaza@gmail.com', 'Default', 'Active', '1164727530', 'Sindh', 'DOH Sindh', 'Static DOH', '1', '13d62c47bb173a4bc8715ce8178e3764');
INSERT INTO `sysuser_tab` VALUES ('SU-930', '13', '3', '170', 'DPWO_Attock', '1', '1', '202cb962ac59075b964b07152d234b70', 'SG-014', 'MP-028~MP-008~MP-026', 'SP-122~SP-120~SP-148~SP-124~SP-140~SP-123~SP-131~SP-090~SP-091~SP-150~SP-151~SP-163~SP-165~SP-166~SP-167~SP-115~SP-116~SP-139', 'DPWO Attock', '', '', 'Store Keeper', 'PWD', 0x313535363138383435352E, '		  		    ', '923335522530', '923335522530', 'dpwo.attock@yahoo.com', 'Default', 'Active', '0', 'Punjab', 'MOPW', '', '930', '811a0cc964d3cf6333fffe23be118ed8');
INSERT INTO `sysuser_tab` VALUES ('', '13', '3', null, 'test_attock', '1', '1', '202cb962ac59075b964b07152d234b70', null, null, null, 'Test ATtock', null, null, 'No Designation', 'No Department', 0x313535363138383436302E, '', '', '', '', null, 'Active', '20190425142151', null, null, null, '931', 'd924e48f313a1f3ceebf02cc3735ce84');

-- ----------------------------
-- Table structure for tbl_cms
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cms`;
CREATE TABLE `tbl_cms` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'static page id',
  `title` varchar(500) DEFAULT NULL,
  `description` text,
  `Stkid` int(11) DEFAULT NULL,
  `homepage_chk` int(1) DEFAULT '0' COMMENT 'flag for homepage',
  `homepageflag` tinyint(1) DEFAULT NULL,
  `heading` varchar(500) NOT NULL,
  `content` varchar(100) NOT NULL,
  `province_id` int(11) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `LogoFeild` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='contain information about static pages';

-- ----------------------------
-- Records of tbl_cms
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dist_levels
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dist_levels`;
CREATE TABLE `tbl_dist_levels` (
  `lvl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'distribution level id',
  `lvl_name` varchar(40) DEFAULT NULL,
  `lvl_desc` text,
  PRIMARY KEY (`lvl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='distribution level like district, province, national';

-- ----------------------------
-- Records of tbl_dist_levels
-- ----------------------------
INSERT INTO `tbl_dist_levels` VALUES ('1', 'National', 'National');
INSERT INTO `tbl_dist_levels` VALUES ('2', 'Provincial', 'Provincial');
INSERT INTO `tbl_dist_levels` VALUES ('3', 'District', 'District');
INSERT INTO `tbl_dist_levels` VALUES ('4', 'Field', 'Field');
INSERT INTO `tbl_dist_levels` VALUES ('7', 'Health Facility', 'Health Facility');
INSERT INTO `tbl_dist_levels` VALUES ('8', 'Individuals', 'Individuals');

-- ----------------------------
-- Table structure for tbl_hf_data
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hf_data`;
CREATE TABLE `tbl_hf_data` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `opening_balance` double DEFAULT NULL,
  `received_balance` double DEFAULT NULL,
  `issue_balance` double DEFAULT NULL,
  `closing_balance` double DEFAULT NULL,
  `adjustment_positive` double DEFAULT NULL,
  `adjustment_negative` double DEFAULT NULL,
  `avg_consumption` double DEFAULT NULL,
  `new` int(11) DEFAULT NULL,
  `old` int(11) DEFAULT NULL,
  `reporting_date` date NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_amc_calculated` tinyint(4) NOT NULL DEFAULT '0',
  `temp` tinyint(4) DEFAULT '1',
  `removals` double DEFAULT NULL,
  `dropouts` double DEFAULT NULL,
  `demand` double DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `pk_id` (`pk_id`),
  KEY `warehouse_id` (`warehouse_id`),
  KEY `item_id` (`item_id`),
  KEY `reporting_date` (`reporting_date`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hf_data
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_hf_data_reffered_by
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hf_data_reffered_by`;
CREATE TABLE `tbl_hf_data_reffered_by` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `hf_data_id` int(11) NOT NULL,
  `hf_type_id` int(11) NOT NULL,
  `ref_surgeries` int(11) DEFAULT NULL,
  `static` int(11) DEFAULT NULL,
  `camp` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `hf_data_id` (`hf_data_id`),
  CONSTRAINT `tbl_hf_data_reffered_by_ibfk_1` FOREIGN KEY (`hf_data_id`) REFERENCES `tbl_hf_data` (`pk_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hf_data_reffered_by
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_hf_mother_care
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hf_mother_care`;
CREATE TABLE `tbl_hf_mother_care` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) NOT NULL,
  `pre_natal_new` int(11) DEFAULT NULL,
  `pre_natal_old` int(11) DEFAULT NULL,
  `post_natal_new` int(11) DEFAULT NULL,
  `post_natal_old` int(11) DEFAULT NULL,
  `ailment_children` int(11) DEFAULT NULL,
  `ailment_adults` int(11) DEFAULT NULL,
  `general_ailment` int(11) DEFAULT NULL,
  `reporting_date` date NOT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `warehouse_id` (`warehouse_id`),
  KEY `reporting_date` (`reporting_date`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hf_mother_care
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_hf_mother_care_ngo_breakdown
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hf_mother_care_ngo_breakdown`;
CREATE TABLE `tbl_hf_mother_care_ngo_breakdown` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `reporting_date` date NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `hf_type_id` int(11) DEFAULT NULL,
  `pre_natal_new` int(11) DEFAULT NULL,
  `pre_natal_old` int(11) DEFAULT NULL,
  `post_natal_new` int(11) DEFAULT NULL,
  `post_natal_old` int(11) DEFAULT NULL,
  `ailment_children` int(11) DEFAULT NULL,
  `ailment_adults` int(11) DEFAULT NULL,
  `general_ailment` int(11) DEFAULT NULL,
  `referred_implants` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `pk_id` (`pk_id`),
  KEY `warehouse_id` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hf_mother_care_ngo_breakdown
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_hf_non_program_count
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hf_non_program_count`;
CREATE TABLE `tbl_hf_non_program_count` (
  `pk_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(10) unsigned NOT NULL,
  `reporting_date` date NOT NULL,
  `total_facilities` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `warehouse_id` (`warehouse_id`),
  KEY `reporting_date` (`reporting_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hf_non_program_count
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_hf_satellite_data
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hf_satellite_data`;
CREATE TABLE `tbl_hf_satellite_data` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `issue_balance` double DEFAULT NULL,
  `new` int(11) DEFAULT NULL,
  `old` int(11) DEFAULT NULL,
  `reporting_date` date NOT NULL,
  `created_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `pk_id` (`pk_id`),
  KEY `warehouse_id` (`warehouse_id`),
  KEY `item_id` (`item_id`),
  KEY `reporting_date` (`reporting_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hf_satellite_data
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_hf_satellite_data_reffered_by
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hf_satellite_data_reffered_by`;
CREATE TABLE `tbl_hf_satellite_data_reffered_by` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `hf_data_id` int(11) NOT NULL,
  `hf_type_id` int(11) NOT NULL,
  `ref_surgeries` int(11) DEFAULT NULL,
  `static` int(11) DEFAULT NULL,
  `camp` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `hf_data_id` (`hf_data_id`),
  CONSTRAINT `tbl_hf_satellite_data_reffered_by_ibfk_1` FOREIGN KEY (`hf_data_id`) REFERENCES `tbl_hf_satellite_data` (`pk_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hf_satellite_data_reffered_by
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_hf_satellite_mother_care
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hf_satellite_mother_care`;
CREATE TABLE `tbl_hf_satellite_mother_care` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) NOT NULL,
  `pre_natal_new` int(11) DEFAULT NULL,
  `pre_natal_old` int(11) DEFAULT NULL,
  `post_natal_new` int(11) DEFAULT NULL,
  `post_natal_old` int(11) DEFAULT NULL,
  `ailment_children` int(11) DEFAULT NULL,
  `ailment_adults` int(11) DEFAULT NULL,
  `general_ailment` int(11) DEFAULT NULL,
  `reporting_date` date NOT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `pk_id` (`pk_id`),
  KEY `warehouse_id` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hf_satellite_mother_care
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_hf_satellite_rep_start_date
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hf_satellite_rep_start_date`;
CREATE TABLE `tbl_hf_satellite_rep_start_date` (
  `pk_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) DEFAULT NULL,
  `reporting_start_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hf_satellite_rep_start_date
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_hf_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hf_type`;
CREATE TABLE `tbl_hf_type` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `hf_type` varchar(50) NOT NULL,
  `stakeholder_id` int(11) NOT NULL COMMENT 'Use ZERO stk for HF types used everywhere.',
  `hf_rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `pk_id` (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hf_type
-- ----------------------------
INSERT INTO `tbl_hf_type` VALUES ('1', 'FWC', '1', '1');
INSERT INTO `tbl_hf_type` VALUES ('2', 'MSU', '1', '4');
INSERT INTO `tbl_hf_type` VALUES ('3', 'Social Mobilizer', '1', '5');
INSERT INTO `tbl_hf_type` VALUES ('4', 'RHS-A/FHC', '1', '2');
INSERT INTO `tbl_hf_type` VALUES ('5', 'RHS-B', '1', '3');
INSERT INTO `tbl_hf_type` VALUES ('6', 'RMPS', '1', '7');
INSERT INTO `tbl_hf_type` VALUES ('7', 'Hakeems', '1', '8');
INSERT INTO `tbl_hf_type` VALUES ('8', 'Homeopaths', '1', '9');
INSERT INTO `tbl_hf_type` VALUES ('9', 'PLDs', '1', '6');
INSERT INTO `tbl_hf_type` VALUES ('10', 'TBAs', '1', '11');
INSERT INTO `tbl_hf_type` VALUES ('11', 'Counters', '1', '12');
INSERT INTO `tbl_hf_type` VALUES ('12', 'DDPs', '1', '10');
INSERT INTO `tbl_hf_type` VALUES ('13', 'Others', '1', '99999');
INSERT INTO `tbl_hf_type` VALUES ('14', 'RTI', '1', '14');
INSERT INTO `tbl_hf_type` VALUES ('15', 'VBFPWs', '1', '15');
INSERT INTO `tbl_hf_type` VALUES ('16', 'Male Mobilizer', '1', '16');
INSERT INTO `tbl_hf_type` VALUES ('17', 'DOH (LHW)', '2', '17');
INSERT INTO `tbl_hf_type` VALUES ('18', 'DOH (Static HF)', '7', '18');
INSERT INTO `tbl_hf_type` VALUES ('19', 'CMW', '73', '19');
INSERT INTO `tbl_hf_type` VALUES ('20', 'PPHI', '9', '20');
INSERT INTO `tbl_hf_type` VALUES ('21', 'CBFWs', '1', '21');
INSERT INTO `tbl_hf_type` VALUES ('22', 'SDP Sukh Aman', '153', '1');
INSERT INTO `tbl_hf_type` VALUES ('23', 'SDP Hands', '154', '1');
INSERT INTO `tbl_hf_type` VALUES ('24', 'SDP Save the children', '155', '1');
INSERT INTO `tbl_hf_type` VALUES ('25', 'SDP MCMNH', '156', '1');
INSERT INTO `tbl_hf_type` VALUES ('26', 'SDP RSPN', '163', '1');
INSERT INTO `tbl_hf_type` VALUES ('27', 'SDP FPAP', '193', '1');
INSERT INTO `tbl_hf_type` VALUES ('28', 'SDP Peace Foundation', '194', '1');
INSERT INTO `tbl_hf_type` VALUES ('29', 'SDP IHN', '199', '1');
INSERT INTO `tbl_hf_type` VALUES ('30', 'SDP Sehatmand Zindagi', '204', '1');
INSERT INTO `tbl_hf_type` VALUES ('31', 'SDP Agha Khan', '209', '1');
INSERT INTO `tbl_hf_type` VALUES ('32', 'DOH (MNCH)', '73', '19');
INSERT INTO `tbl_hf_type` VALUES ('33', 'LHW', '2', '17');
INSERT INTO `tbl_hf_type` VALUES ('51', 'SDP GS', '5', '1');
INSERT INTO `tbl_hf_type` VALUES ('52', 'SDP MSS', '6', '1');
INSERT INTO `tbl_hf_type` VALUES ('53', 'SDOs', '0', '1');
INSERT INTO `tbl_hf_type` VALUES ('54', 'Clinic', '0', '2');
INSERT INTO `tbl_hf_type` VALUES ('55', 'MHSU', '0', '3');
INSERT INTO `tbl_hf_type` VALUES ('56', 'Outreach Worker', '0', '4');
INSERT INTO `tbl_hf_type` VALUES ('57', 'Others', '0', '5');

-- ----------------------------
-- Table structure for tbl_hf_type_data
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hf_type_data`;
CREATE TABLE `tbl_hf_type_data` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `district_id` int(11) NOT NULL,
  `facility_type_id` int(11) NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `opening_balance` double DEFAULT NULL,
  `received_balance` double DEFAULT NULL,
  `issue_balance` double DEFAULT NULL,
  `closing_balance` double DEFAULT NULL,
  `adjustment_positive` double DEFAULT NULL,
  `adjustment_negative` double DEFAULT NULL,
  `new` int(11) DEFAULT NULL,
  `old` int(11) DEFAULT NULL,
  `reporting_date` date NOT NULL,
  `created_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`pk_id`),
  UNIQUE KEY `unique_index` (`district_id`,`facility_type_id`,`item_id`,`reporting_date`),
  KEY `pk_id` (`pk_id`),
  KEY `district_id` (`district_id`),
  KEY `facility_type_id` (`facility_type_id`),
  KEY `item_id` (`item_id`),
  KEY `reporting_date` (`reporting_date`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hf_type_data
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_hf_type_mother_care
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hf_type_mother_care`;
CREATE TABLE `tbl_hf_type_mother_care` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `facility_type_id` int(11) DEFAULT NULL,
  `district_id` int(11) NOT NULL,
  `pre_natal_new` int(11) DEFAULT NULL,
  `pre_natal_old` int(11) DEFAULT NULL,
  `post_natal_new` int(11) DEFAULT NULL,
  `post_natal_old` int(11) DEFAULT NULL,
  `ailment_children` int(11) DEFAULT NULL,
  `ailment_adults` int(11) DEFAULT NULL,
  `general_ailment` int(11) DEFAULT NULL,
  `reporting_date` date NOT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `pk_id` (`pk_id`),
  KEY `facility_type_id` (`facility_type_id`),
  KEY `district_id` (`district_id`),
  KEY `reporting_date` (`reporting_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hf_type_mother_care
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_hf_type_province
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hf_type_province`;
CREATE TABLE `tbl_hf_type_province` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `stakeholder_id` int(11) NOT NULL,
  `hf_type_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `pk_id` (`pk_id`),
  KEY `stakeholder_id` (`stakeholder_id`),
  KEY `hf_type_id` (`hf_type_id`),
  KEY `province_id` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hf_type_province
-- ----------------------------
INSERT INTO `tbl_hf_type_province` VALUES ('1', '1', '1', '1');
INSERT INTO `tbl_hf_type_province` VALUES ('2', '1', '4', '1');
INSERT INTO `tbl_hf_type_province` VALUES ('4', '1', '5', '1');
INSERT INTO `tbl_hf_type_province` VALUES ('5', '1', '2', '3');
INSERT INTO `tbl_hf_type_province` VALUES ('6', '1', '1', '3');
INSERT INTO `tbl_hf_type_province` VALUES ('7', '1', '4', '3');
INSERT INTO `tbl_hf_type_province` VALUES ('8', '1', '5', '3');
INSERT INTO `tbl_hf_type_province` VALUES ('9', '1', '13', '3');
INSERT INTO `tbl_hf_type_province` VALUES ('10', '1', '4', '2');
INSERT INTO `tbl_hf_type_province` VALUES ('11', '1', '5', '2');
INSERT INTO `tbl_hf_type_province` VALUES ('12', '1', '1', '2');
INSERT INTO `tbl_hf_type_province` VALUES ('13', '1', '13', '2');
INSERT INTO `tbl_hf_type_province` VALUES ('14', '1', '13', '1');
INSERT INTO `tbl_hf_type_province` VALUES ('15', '1', '11', '3');

-- ----------------------------
-- Table structure for tbl_hf_type_rank
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hf_type_rank`;
CREATE TABLE `tbl_hf_type_rank` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `stakeholder_id` int(11) NOT NULL,
  `hf_type_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `hf_type_rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `pk_id` (`pk_id`),
  KEY `stakeholder_id` (`stakeholder_id`),
  KEY `hf_type_id` (`hf_type_id`),
  KEY `province_id` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hf_type_rank
-- ----------------------------
INSERT INTO `tbl_hf_type_rank` VALUES ('1', '1', '1', '1', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('2', '1', '2', '1', '4');
INSERT INTO `tbl_hf_type_rank` VALUES ('3', '1', '3', '1', '5');
INSERT INTO `tbl_hf_type_rank` VALUES ('4', '1', '4', '1', '2');
INSERT INTO `tbl_hf_type_rank` VALUES ('5', '1', '5', '1', '3');
INSERT INTO `tbl_hf_type_rank` VALUES ('6', '1', '6', '1', '7');
INSERT INTO `tbl_hf_type_rank` VALUES ('7', '1', '7', '1', '8');
INSERT INTO `tbl_hf_type_rank` VALUES ('8', '1', '8', '1', '9');
INSERT INTO `tbl_hf_type_rank` VALUES ('9', '1', '9', '1', '6');
INSERT INTO `tbl_hf_type_rank` VALUES ('10', '1', '10', '1', '11');
INSERT INTO `tbl_hf_type_rank` VALUES ('11', '1', '11', '1', '12');
INSERT INTO `tbl_hf_type_rank` VALUES ('12', '1', '12', '1', '10');
INSERT INTO `tbl_hf_type_rank` VALUES ('13', '1', '13', '1', '13');
INSERT INTO `tbl_hf_type_rank` VALUES ('14', '1', '14', '1', '14');
INSERT INTO `tbl_hf_type_rank` VALUES ('15', '1', '1', '3', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('16', '1', '2', '3', '2');
INSERT INTO `tbl_hf_type_rank` VALUES ('17', '1', '16', '3', '4');
INSERT INTO `tbl_hf_type_rank` VALUES ('18', '1', '4', '3', '3');
INSERT INTO `tbl_hf_type_rank` VALUES ('19', '1', '5', '3', '5');
INSERT INTO `tbl_hf_type_rank` VALUES ('20', '1', '6', '3', '6');
INSERT INTO `tbl_hf_type_rank` VALUES ('21', '1', '7', '3', '7');
INSERT INTO `tbl_hf_type_rank` VALUES ('22', '1', '8', '3', '8');
INSERT INTO `tbl_hf_type_rank` VALUES ('23', '1', '9', '3', '9');
INSERT INTO `tbl_hf_type_rank` VALUES ('24', '1', '10', '3', '10');
INSERT INTO `tbl_hf_type_rank` VALUES ('25', '1', '11', '3', '11');
INSERT INTO `tbl_hf_type_rank` VALUES ('29', '1', '15', '3', '12');
INSERT INTO `tbl_hf_type_rank` VALUES ('30', '1', '1', '2', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('31', '1', '2', '2', '2');
INSERT INTO `tbl_hf_type_rank` VALUES ('32', '1', '3', '2', '5');
INSERT INTO `tbl_hf_type_rank` VALUES ('33', '1', '4', '2', '3');
INSERT INTO `tbl_hf_type_rank` VALUES ('34', '1', '5', '2', '4');
INSERT INTO `tbl_hf_type_rank` VALUES ('35', '1', '6', '2', '7');
INSERT INTO `tbl_hf_type_rank` VALUES ('36', '1', '7', '2', '8');
INSERT INTO `tbl_hf_type_rank` VALUES ('37', '1', '8', '2', '9');
INSERT INTO `tbl_hf_type_rank` VALUES ('38', '1', '9', '2', '6');
INSERT INTO `tbl_hf_type_rank` VALUES ('39', '1', '10', '2', '11');
INSERT INTO `tbl_hf_type_rank` VALUES ('40', '1', '11', '2', '12');
INSERT INTO `tbl_hf_type_rank` VALUES ('41', '1', '12', '2', '10');
INSERT INTO `tbl_hf_type_rank` VALUES ('42', '1', '13', '2', '13');
INSERT INTO `tbl_hf_type_rank` VALUES ('43', '1', '14', '2', '14');
INSERT INTO `tbl_hf_type_rank` VALUES ('44', '2', '17', '1', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('45', '7', '18', '1', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('46', '9', '20', '3', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('47', '73', '19', '1', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('48', '9', '20', '2', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('49', '9', '20', '14', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('50', '1', '14', '3', '13');
INSERT INTO `tbl_hf_type_rank` VALUES ('51', '1', '21', '1', '15');
INSERT INTO `tbl_hf_type_rank` VALUES ('52', '1', '1', '4', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('53', '1', '2', '4', '2');
INSERT INTO `tbl_hf_type_rank` VALUES ('54', '1', '4', '4', '3');
INSERT INTO `tbl_hf_type_rank` VALUES ('55', '1', '3', '4', '4');
INSERT INTO `tbl_hf_type_rank` VALUES ('56', '1', '6', '4', '7');
INSERT INTO `tbl_hf_type_rank` VALUES ('57', '1', '7', '4', '8');
INSERT INTO `tbl_hf_type_rank` VALUES ('58', '153', '22', '2', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('59', '154', '23', '2', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('60', '155', '24', '2', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('61', '156', '25', '2', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('62', '163', '26', '2', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('63', '2', '17', '3', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('64', '1', '14', '4', '15');
INSERT INTO `tbl_hf_type_rank` VALUES ('65', '4', '27', '2', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('66', '7', '18', '3', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('67', '194', '28', '2', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('68', '199', '29', '2', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('69', '204', '30', '2', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('70', '209', '31', '2', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('71', '73', '19', '3', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('72', '163', '26', '1', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('73', '199', '29', '1', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('75', '4', '27', '1', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('76', '4', '27', '8', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('77', '5', '51', '1', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('78', '6', '52', '1', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('79', '154', '23', '1', '1');
INSERT INTO `tbl_hf_type_rank` VALUES ('80', '156', '25', '1', '1');

-- ----------------------------
-- Table structure for tbl_itemunits
-- ----------------------------
DROP TABLE IF EXISTS `tbl_itemunits`;
CREATE TABLE `tbl_itemunits` (
  `pkUnitID` int(11) NOT NULL AUTO_INCREMENT,
  `UnitType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pkUnitID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_itemunits
-- ----------------------------
INSERT INTO `tbl_itemunits` VALUES ('1', 'PCs');
INSERT INTO `tbl_itemunits` VALUES ('2', 'Pills');
INSERT INTO `tbl_itemunits` VALUES ('3', 'IUD');
INSERT INTO `tbl_itemunits` VALUES ('4', 'Vials');
INSERT INTO `tbl_itemunits` VALUES ('5', 'Tab');
INSERT INTO `tbl_itemunits` VALUES ('6', 'IMP');
INSERT INTO `tbl_itemunits` VALUES ('7', 'Cycles');
INSERT INTO `tbl_itemunits` VALUES ('8', 'Cases');
INSERT INTO `tbl_itemunits` VALUES ('9', 'Doses');
INSERT INTO `tbl_itemunits` VALUES ('10', 'Infusion');
INSERT INTO `tbl_itemunits` VALUES ('11', 'Injection');
INSERT INTO `tbl_itemunits` VALUES ('12', 'Suppository');
INSERT INTO `tbl_itemunits` VALUES ('13', 'Gel Tube');
INSERT INTO `tbl_itemunits` VALUES ('14', 'Capsule');
INSERT INTO `tbl_itemunits` VALUES ('15', 'Syrup');
INSERT INTO `tbl_itemunits` VALUES ('16', 'Sachet/Packet');
INSERT INTO `tbl_itemunits` VALUES ('17', 'Bottle');
INSERT INTO `tbl_itemunits` VALUES ('18', 'Piece');

-- ----------------------------
-- Table structure for tbl_locations
-- ----------------------------
DROP TABLE IF EXISTS `tbl_locations`;
CREATE TABLE `tbl_locations` (
  `PkLocID` int(11) NOT NULL AUTO_INCREMENT,
  `LocName` varchar(100) DEFAULT NULL,
  `LocLvl` int(11) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `LocType` int(11) DEFAULT NULL,
  `temp_id` varchar(20) DEFAULT NULL,
  `dhis_code` varchar(15) DEFAULT NULL,
  `pop_male_rural` int(11) DEFAULT NULL,
  `pop_female_rural` int(11) DEFAULT NULL,
  `growth_rate_rural` decimal(15,4) DEFAULT NULL,
  `pop_male_urban` int(11) DEFAULT NULL,
  `pop_female_urban` int(11) DEFAULT NULL,
  `growth_rate_urban` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`PkLocID`),
  KEY `PkLocID` (`PkLocID`)
) ENGINE=InnoDB AUTO_INCREMENT=1746 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_locations
-- ----------------------------
INSERT INTO `tbl_locations` VALUES ('1', 'Punjab', '2', '10', '2', '', '1', '32301797', '31455617', null, '19932170', '18816867', null);
INSERT INTO `tbl_locations` VALUES ('2', 'Sindh', '2', '10', '2', '', '2', '12702174', '11689965', null, '11956429', '10914528', null);
INSERT INTO `tbl_locations` VALUES ('3', 'Khyber Pakhtunkhwa', '2', '10', '2', '', '3', '12495278', '12298236', null, '3260731', '3047766', null);
INSERT INTO `tbl_locations` VALUES ('4', 'Balochistan', '2', '10', '2', '', '4', '1817530', '1640225', null, '721765', '646706', null);
INSERT INTO `tbl_locations` VALUES ('5', 'AJK', '2', '10', '3', '', '5', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('6', 'KP Trible Districts (X FATA)', '2', '10', '3', '', '8', '2213816', '2106379', '2.4000', '54112', '47789', '2.7000');
INSERT INTO `tbl_locations` VALUES ('7', 'Gilgit Baltistan', '2', '10', '3', '', '6', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('8', 'Islamabad', '2', '10', '3', '', '7', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('9', 'Private Sector', '2', null, '1', '', null, null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('10', 'National', '2', null, '1', '', null, null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('11', 'Lahore', '3', '1', '4', 'WH-001', '152', '0', '0', '0.0000', '5824131', '5300931', '4.0700');
INSERT INTO `tbl_locations` VALUES ('12', 'Abbottabad', '3', '3', '4', 'WH-002', '321', '522601', '517153', '1.9300', '154969', '138128', '3.3000');
INSERT INTO `tbl_locations` VALUES ('13', 'Rawalpindi', '3', '1', '4', 'WH-003', '174', '1262511', '1267536', '2.9500', '1479361', '1395539', '2.1800');
INSERT INTO `tbl_locations` VALUES ('14', 'Charsadda', '3', '3', '4', 'WH-004', '361', '681659', '664355', '2.5800', '138861', '131302', '1.7900');
INSERT INTO `tbl_locations` VALUES ('15', 'Islamabad', '3', '8', '4', 'WH-005', '', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('16', 'Mardan', '3', '3', '4', 'WH-006', '351', '975545', '958179', '2.7000', '225326', '213933', '2.1100');
INSERT INTO `tbl_locations` VALUES ('17', 'Gwadar', '3', '4', '4', 'WH-007', '421', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('18', 'Bolan', '3', '4', '4', 'WH-008', '433', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('19', 'Kalat', '3', '4', '4', 'WH-009', '411', '175406', '164367', '2.7100', '36289', '36169', '4.0900');
INSERT INTO `tbl_locations` VALUES ('20', 'Dera Bugti', '3', '4', '4', 'WH-010', '451', '112834', '100468', '2.3400', '51002', '48299', '4.3600');
INSERT INTO `tbl_locations` VALUES ('21', 'Badin', '3', '2', '4', 'WH-011', '211', '731235', '682883', '2.5700', '201253', '189096', '2.7300');
INSERT INTO `tbl_locations` VALUES ('22', 'Dadu', '3', '2', '4', 'WH-012', '212', '601163', '565927', '1.5500', '196694', '186458', '2.6000');
INSERT INTO `tbl_locations` VALUES ('23', 'Larkana', '3', '2', '4', 'WH-013', '232', '419609', '403141', '1.7100', '358640', '342952', '2.9200');
INSERT INTO `tbl_locations` VALUES ('24', 'Karachi North', '3', '2', '4', 'WH-014', '', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('25', 'Khyber Agency', '3', '6', '4', 'WH-015', '', '454605', '434817', '3.1500', '50870', '46670', '3.1200');
INSERT INTO `tbl_locations` VALUES ('26', 'Bajaur Agency', '3', '6', '4', 'WH-016', '', '557160', '536520', '3.2500', '0', '0', '0.0000');
INSERT INTO `tbl_locations` VALUES ('27', 'Bagh', '3', '5', '4', 'WH-017', '531', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('28', 'Bhimber', '3', '5', '4', 'WH-018', '511', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('29', 'Gilgit', '3', '7', '4', 'WH-019', '605', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('30', 'Skardu', '3', '7', '4', 'WH-020', '601', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('31', 'Bannu', '3', '3', '4', 'WH-021', '311', '565822', '552097', '3.0800', '27670', '22294', '0.2500');
INSERT INTO `tbl_locations` VALUES ('32', 'Batagram', '3', '3', '4', 'WH-022', '325', '238209', '238393', '2.3300', '0', '0', '0.0000');
INSERT INTO `tbl_locations` VALUES ('33', 'Buner', '3', '3', '4', 'WH-023', '342', '446997', '450317', '3.0500', '0', '0', '0.0000');
INSERT INTO `tbl_locations` VALUES ('34', 'Chitral', '3', '3', '4', 'WH-024', '343', '199489', '198078', '1.7100', '26357', '23437', '2.5900');
INSERT INTO `tbl_locations` VALUES ('35', 'Dera Ismail Khan', '3', '3', '4', 'WH-025', '312', '649934', '614958', '3.6900', '188859', '173336', '2.6900');
INSERT INTO `tbl_locations` VALUES ('36', 'Hangu', '3', '3', '4', 'WH-026', '335', '199104', '217252', '2.7100', '50450', '51985', '2.4800');
INSERT INTO `tbl_locations` VALUES ('37', 'Okara', '3', '1', '4', 'WH-100', '153', '1132673', '1074628', '1.4000', '431803', '399867', '2.2900');
INSERT INTO `tbl_locations` VALUES ('38', 'Pakpattan', '3', '1', '4', 'WH-101', '164', '781886', '753630', '1.7900', '145995', '142026', '2.1600');
INSERT INTO `tbl_locations` VALUES ('39', 'Rahim Yar Khan', '3', '1', '4', 'WH-102', '113', '1940753', '1840528', '2.1500', '527087', '505410', '2.7400');
INSERT INTO `tbl_locations` VALUES ('40', 'Rajanpur', '3', '1', '4', 'WH-103', '124', '855347', '803380', '3.1600', '172668', '164498', '3.1600');
INSERT INTO `tbl_locations` VALUES ('41', 'Sahiwal', '3', '1', '4', 'WH-104', '165', '1017981', '982379', '1.5900', '263091', '253990', '1.8900');
INSERT INTO `tbl_locations` VALUES ('42', 'Sargodha', '3', '1', '4', 'WH-105', '184', '1319324', '1293104', '1.6500', '552846', '538010', '1.9500');
INSERT INTO `tbl_locations` VALUES ('43', 'Sheikhupura', '3', '1', '4', 'WH-106', '154', '1171760', '1086810', '1.9600', '618196', '583500', '2.7700');
INSERT INTO `tbl_locations` VALUES ('44', 'Sialkot', '3', '1', '4', 'WH-107', '144', '1345275', '1404872', '1.8500', '576368', '566874', '2.0000');
INSERT INTO `tbl_locations` VALUES ('45', 'Toba Tek Singh', '3', '1', '4', 'WH-108', '133', '879774', '868263', '1.5400', '220274', '221566', '1.8200');
INSERT INTO `tbl_locations` VALUES ('46', 'Vehari', '3', '1', '4', 'WH-109', '166', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('47', 'Awaran', '3', '4', '4', 'WH-110', '416', '45349', '42087', '-0.3400', '17674', '16570', '1.7000');
INSERT INTO `tbl_locations` VALUES ('48', 'Barkhan', '3', '4', '4', 'WH-111', '461', '83886', '75493', '2.7000', '6310', '5866', '2.4600');
INSERT INTO `tbl_locations` VALUES ('49', 'Chaghi', '3', '4', '4', 'WH-112', '441', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('50', 'Harnai', '3', '4', '4', 'WH-113', '455', '38049', '34414', '0.9400', '13860', '10694', '2.2700');
INSERT INTO `tbl_locations` VALUES ('51', 'Jaffarabad', '3', '4', '4', 'WH-114', '435', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('52', 'Jhal Magsi', '3', '4', '4', 'WH-115', '436', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('53', 'Kech', '3', '4', '4', 'WH-116', '423', '329222', '277758', '3.7000', '165221', '136905', '5.4800');
INSERT INTO `tbl_locations` VALUES ('54', 'Kharan', '3', '4', '4', 'WH-117', '412', '57625', '53872', '2.5400', '23180', '21475', '2.5200');
INSERT INTO `tbl_locations` VALUES ('55', 'Khuzdar', '3', '4', '4', 'WH-118', '413', '275488', '249583', '3.2100', '145780', '131356', '4.0700');
INSERT INTO `tbl_locations` VALUES ('56', 'Kohlu', '3', '4', '4', 'WH-119', '452', '103158', '93766', '4.1900', '8984', '8442', '3.1400');
INSERT INTO `tbl_locations` VALUES ('57', 'Lasbella', '3', '4', '4', 'WH-120', '414', '153295', '141750', '2.4500', '146004', '133235', '4.2400');
INSERT INTO `tbl_locations` VALUES ('58', 'Loralai', '3', '4', '4', 'WH-121', '463', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('59', 'Mastung', '3', '4', '4', 'WH-122', '415', '120040', '111292', '3.2200', '17923', '17206', '1.9900');
INSERT INTO `tbl_locations` VALUES ('60', 'Musakhel', '3', '4', '4', 'WH-123', '464', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('61', 'Naseerabad', '3', '4', '4', 'WH-124', '434', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('62', 'Nushki', '3', '4', '4', 'WH-125', '445', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('63', 'Panjgur', '3', '4', '4', 'WH-126', '422', '123864', '112197', '0.9400', '42867', '37457', '4.2300');
INSERT INTO `tbl_locations` VALUES ('64', 'Pishin', '3', '4', '4', 'WH-127', '442', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('65', 'Qilla Abdullah', '3', '4', '4', 'WH-128', '444', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('66', 'Qilla Saifullah', '3', '4', '4', 'WH-129', '462', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('67', 'Quetta', '3', '4', '4', 'WH-130', '443', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('68', 'Sherani', '3', '4', '4', 'WH-131', '466', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('69', 'Sibi', '3', '4', '4', 'WH-132', '453', '38131', '33014', '1.3300', '33521', '30904', '1.5100');
INSERT INTO `tbl_locations` VALUES ('70', 'Washuk', '3', '4', '4', 'WH-133', '417', '80583', '73751', '2.7100', '11448', '10424', '1.2700');
INSERT INTO `tbl_locations` VALUES ('71', 'Zhob', '3', '4', '4', 'WH-134', '465', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('72', 'Ziarat', '3', '4', '4', 'WH-135', '454', '80600', '76413', '3.6000', '1702', '1704', '9.2100');
INSERT INTO `tbl_locations` VALUES ('73', 'Haripur', '3', '3', '4', 'WH-27', '322', '434053', '442369', '1.9300', '64428', '62114', '2.2600');
INSERT INTO `tbl_locations` VALUES ('74', 'Karak', '3', '3', '4', 'WH-28', '331', '323752', '331395', '2.5900', '25681', '25468', '3.2400');
INSERT INTO `tbl_locations` VALUES ('75', 'Kohat', '3', '3', '4', 'WH-29', '332', '354533', '369186', '3.0200', '142060', '128052', '3.0700');
INSERT INTO `tbl_locations` VALUES ('76', 'Kohistan', '3', '3', '4', 'WH-30', '323', '434956', '349746', '2.7000', '288364', '291189', '1.6700');
INSERT INTO `tbl_locations` VALUES ('77', 'Lakki Marwat', '3', '3', '4', 'WH-31', '313', '395953', '390804', '3.0600', '45863', '43553', '3.4500');
INSERT INTO `tbl_locations` VALUES ('78', 'Lower Dir', '3', '3', '4', 'WH-32', '344', '689443', '706096', '3.9000', '20892', '19480', '-0.4900');
INSERT INTO `tbl_locations` VALUES ('79', 'Malakand', '3', '3', '4', 'WH-33', '345', '326925', '325167', '2.4800', '35164', '33036', '2.4300');
INSERT INTO `tbl_locations` VALUES ('80', 'Mansehra', '3', '3', '4', 'WH-34', '324', '698676', '712893', '2.2900', '73447', '71288', '4.6100');
INSERT INTO `tbl_locations` VALUES ('81', 'Nowshera', '3', '3', '4', 'WH-35', '364', '598236', '581649', '3.2000', '183486', '155129', '2.1200');
INSERT INTO `tbl_locations` VALUES ('82', 'Peshawar', '3', '3', '4', 'WH-36', '365', '1175112', '1123915', '4.2300', '1026145', '943676', '3.7200');
INSERT INTO `tbl_locations` VALUES ('83', 'Shangla', '3', '3', '4', 'WH-37', '348', '385471', '372338', '2.9600', '0', '0', '0.0000');
INSERT INTO `tbl_locations` VALUES ('84', 'Swabi', '3', '3', '4', 'WH-38', '352', '678809', '669870', '2.4700', '136717', '139177', '2.2900');
INSERT INTO `tbl_locations` VALUES ('85', 'Tank', '3', '3', '4', 'WH-39', '316', '175827', '168889', '2.8300', '24860', '22305', '1.4700');
INSERT INTO `tbl_locations` VALUES ('86', 'Upper Dir', '3', '3', '4', 'WH-40', '347', '443488', '458767', '2.6100', '22685', '21480', '3.5100');
INSERT INTO `tbl_locations` VALUES ('87', 'Ghanche', '3', '7', '4', 'WH-41', '603', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('88', 'Astore', '3', '7', '4', 'WH-42', '606', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('89', 'Diamer', '3', '7', '4', 'WH-43', '602', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('90', 'Ghizer', '3', '7', '4', 'WH-44', '604', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('91', 'Hunza-Nagar District', '3', '7', '4', 'WH-45', '607', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('92', 'Kurram Agency', '3', '6', '4', 'WH-46', '', '20340', '19657', '2.4700', '0', '0', '0.0000');
INSERT INTO `tbl_locations` VALUES ('93', 'Mohmand Agency', '3', '6', '4', 'WH-47', '', '238003', '228981', '1.7700', '0', '0', '0.0000');
INSERT INTO `tbl_locations` VALUES ('94', 'NW Agency', '3', '6', '4', 'WH-48', '', '276990', '261896', '2.2100', '3242', '1119', '-1.6300');
INSERT INTO `tbl_locations` VALUES ('95', 'Orakzai Agency', '3', '6', '4', 'WH-49', '', '127477', '126879', '0.6400', '0', '0', '0.0000');
INSERT INTO `tbl_locations` VALUES ('96', 'SW Agency', '3', '6', '4', 'WH-50', '', '357889', '321294', '2.4300', '0', '0', '0.0000');
INSERT INTO `tbl_locations` VALUES ('97', 'Kotli', '3', '5', '4', 'WH-51', '512', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('98', 'Mirpur', '3', '5', '4', 'WH-52', '513', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('99', 'Poonch', '3', '5', '4', 'WH-53', '533', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('100', 'Muzaffarabad', '3', '5', '4', 'WH-55', '522', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('101', 'Neelum', '3', '5', '4', 'WH-56', '523', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('102', 'Attock', '3', '1', '4', 'WH-57', '171', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('103', 'Bahawalnagar', '3', '1', '4', 'WH-58', '111', '1200605', '1160124', '1.8900', '314261', '306752', '2.2400');
INSERT INTO `tbl_locations` VALUES ('104', 'Bahawalpur', '3', '1', '4', 'WH-59', '112', '1274019', '1222729', '2.0900', '605292', '565849', '2.3800');
INSERT INTO `tbl_locations` VALUES ('105', 'Bhakkar', '3', '1', '4', 'WH-60', '181', '710842', '679552', '2.4600', '133405', '126683', '2.0600');
INSERT INTO `tbl_locations` VALUES ('106', 'Chakwal', '3', '1', '4', 'WH-61', '172', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('107', 'Chiniot', '3', '1', '4', 'WH-62', '134', '484076', '463093', '1.6400', '216525', '205964', '2.3700');
INSERT INTO `tbl_locations` VALUES ('108', 'Dera Ghazi Khan', '3', '1', '4', 'WH-63', '121', '1171502', '1152806', '2.8700', '278603', '269217', '3.4600');
INSERT INTO `tbl_locations` VALUES ('109', 'Faisalabad', '3', '1', '4', 'WH-64', '131', '2102745', '2010623', '1.4800', '1931770', '1828231', '2.5700');
INSERT INTO `tbl_locations` VALUES ('110', 'Gujranwala', '3', '1', '4', 'WH-65', '141', '1034636', '1030581', '1.6100', '1498481', '1450247', '2.4000');
INSERT INTO `tbl_locations` VALUES ('111', 'Gujrat', '3', '1', '4', 'WH-66', '142', '918538', '1010113', '1.4900', '416801', '410515', '1.7800');
INSERT INTO `tbl_locations` VALUES ('112', 'Hafizabad', '3', '1', '4', 'WH-67', '145', '381464', '372635', '1.1600', '203359', '199448', '3.0500');
INSERT INTO `tbl_locations` VALUES ('113', 'Jhang', '3', '1', '4', 'WH-68', '132', '1091984', '1053172', '2.0900', '304628', '293488', '1.8600');
INSERT INTO `tbl_locations` VALUES ('114', 'Jehlum', '3', '1', '4', 'WH-69', '173', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('115', 'Kasur', '3', '1', '4', 'WH-70', '151', '1329764', '1234347', '1.9300', '460489', '430259', '2.3500');
INSERT INTO `tbl_locations` VALUES ('116', 'Khanewal', '3', '1', '4', 'WH-71', '161', '1198308', '1159546', '1.8000', '286384', '277625', '1.9800');
INSERT INTO `tbl_locations` VALUES ('117', 'Khushab', '3', '1', '4', 'WH-72', '182', '461052', '467406', '1.6700', '177019', '175775', '2.3000');
INSERT INTO `tbl_locations` VALUES ('118', 'Layyah', '3', '1', '4', 'WH-73', '122', '762399', '740300', '2.5800', '162934', '158517', '2.6600');
INSERT INTO `tbl_locations` VALUES ('119', 'Lodhran', '3', '1', '4', 'WH-74', '162', '728058', '706811', '1.9000', '134605', '131062', '2.3700');
INSERT INTO `tbl_locations` VALUES ('120', 'Mandi Bahauddin', '3', '1', '4', 'WH-75', '146', '616302', '650550', '1.5600', '159903', '166421', '2.1800');
INSERT INTO `tbl_locations` VALUES ('121', 'Mianwali', '3', '1', '4', 'WH-76', '183', '607657', '610026', '1.9900', '166403', '161969', '2.1300');
INSERT INTO `tbl_locations` VALUES ('122', 'Ghotki', '3', '2', '4', 'WH-77', '245', '640467', '602300', '2.5800', '208759', '194751', '3.6500');
INSERT INTO `tbl_locations` VALUES ('123', 'Hyderabad', '3', '2', '4', 'WH-78', '213', '189696', '177009', '2.4000', '956092', '876501', '1.9800');
INSERT INTO `tbl_locations` VALUES ('124', 'Jacobabad', '3', '2', '4', 'WH-79', '231', '363684', '345486', '1.4700', '151796', '145292', '2.3700');
INSERT INTO `tbl_locations` VALUES ('125', 'Jamshoro', '3', '2', '4', 'WH-80', '215', '296145', '262809', '1.3000', '227114', '207030', '5.9400');
INSERT INTO `tbl_locations` VALUES ('126', 'Kashmore ', '3', '2', '4', 'WH-81', '235', '433475', '402076', '2.6400', '131368', '122231', '2.1900');
INSERT INTO `tbl_locations` VALUES ('127', 'Khairpur', '3', '2', '4', 'WH-82', '241', '839708', '788759', '2.3700', '400716', '375047', '2.2800');
INSERT INTO `tbl_locations` VALUES ('128', 'Matiari', '3', '2', '4', 'WH-83', '218', '302258', '284485', '2.2900', '94541', '88033', '2.5400');
INSERT INTO `tbl_locations` VALUES ('129', 'Mirpurkhas', '3', '2', '4', 'WH-84', '251', '558838', '521274', '2.4300', '219334', '206376', '1.4700');
INSERT INTO `tbl_locations` VALUES ('130', 'Naushahro Feroze', '3', '2', '4', 'WH-85', '242', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('131', 'Shaheed Benazir Abad', '3', '2', '4', 'WH-86', '243', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('132', 'Qambar', '3', '2', '4', 'WH-87', '234', '480164', '463297', '1.6500', '202695', '194851', '2.8300');
INSERT INTO `tbl_locations` VALUES ('133', 'Sanghar', '3', '2', '4', 'WH-88', '252', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('134', 'Shikarpur', '3', '2', '4', 'WH-89', '233', '479419', '448803', '1.7400', '155566', '147674', '1.9000');
INSERT INTO `tbl_locations` VALUES ('135', 'Sukkur', '3', '2', '4', 'WH-90', '244', '399295', '368485', '2.8600', '376964', '343102', '2.1300');
INSERT INTO `tbl_locations` VALUES ('136', 'Tando Allahyar', '3', '2', '4', 'WH-91', '216', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('137', 'Tando Muhammad Khan', '3', '2', '4', 'WH-92', '219', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('138', 'Tharparkar', '3', '2', '4', 'WH-93', '253', '812320', '705251', '2.9800', '70045', '62015', '5.6800');
INSERT INTO `tbl_locations` VALUES ('139', 'Thatta', '3', '2', '4', 'WH-94', '217', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('140', 'Umerkot', '3', '2', '4', 'WH-95', '254', '429945', '399834', '2.3300', '127612', '115735', '3.3700');
INSERT INTO `tbl_locations` VALUES ('141', 'Multan', '3', '1', '4', 'WH-96', '163', '1376006', '1310725', '2.4700', '1061406', '996779', '1.9400');
INSERT INTO `tbl_locations` VALUES ('142', 'Muzaffargarh', '3', '1', '4', 'WH-97', '123', '1862671', '1764477', '2.6400', '356073', '338655', '2.6000');
INSERT INTO `tbl_locations` VALUES ('143', 'Narowal', '3', '1', '4', 'WH-98', '143', '714922', '737547', '1.4200', '127028', '130165', '2.7200');
INSERT INTO `tbl_locations` VALUES ('144', 'Nankana Sahib', '3', '1', '4', 'WH-99', '155', '566963', '543324', '1.1900', '124981', '121035', '2.3500');
INSERT INTO `tbl_locations` VALUES ('145', 'Sudhnoti', '3', '5', '4', 'WH-136', '534', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('146', 'Karachi East', '3', '2', '4', 'WH-137', '', '1528019', '1379225', '3.6400', '1528019', '1379225', '3.6400');
INSERT INTO `tbl_locations` VALUES ('147', 'Karachi South', '3', '2', '4', 'WH-138', '', '943546', '848010', '1.0200', '943546', '848010', '1.0200');
INSERT INTO `tbl_locations` VALUES ('148', 'Karachi West', '3', '2', '4', 'WH-139', '', '149220', '134014', '7.3400', '1916627', '1714539', '3.1400');
INSERT INTO `tbl_locations` VALUES ('149', 'Swat', '3', '3', '4', 'WH-140', '346', '814527', '799140', '3.2200', '358447', '337404', '3.3100');
INSERT INTO `tbl_locations` VALUES ('150', 'Kachhi', '3', '4', '4', 'WH-141', '433', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('151', 'Karachi', '3', '2', '4', 'WH-346', '221', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('152', 'Malir Town-Karachi', '3', '2', '11', 'WH-361', '', '457368', '400485', '5.0800', '616914', '534006', '3.1100');
INSERT INTO `tbl_locations` VALUES ('153', 'Korangi Town-Karachi', '3', '2', '11', 'WH-362', '', '1284015', '1172737', '2.4100', '1284015', '1172737', '2.4100');
INSERT INTO `tbl_locations` VALUES ('169', 'Tor Ghar', '3', '3', '4', 'WH-378', '326', '86157', '85230', '-0.1000', '0', '0', '0.0000');
INSERT INTO `tbl_locations` VALUES ('171', 'Hattian Bala', '3', '5', '4', 'WH-380', '521', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('172', 'Haveli', '3', '5', '4', 'WH-381', '532', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('173', 'FR Peshawar', '3', '6', '6', 'WH-382', '', '31563', '33128', '0.9700', '0', '0', '0.0000');
INSERT INTO `tbl_locations` VALUES ('174', 'FR Kohat ', '3', '6', '6', 'WH-383', '', '59733', '58845', '1.5500', '0', '0', '0.0000');
INSERT INTO `tbl_locations` VALUES ('175', 'FR Bannu ', '3', '6', '6', 'WH-384', '', '22298', '20816', '4.2300', '0', '0', '0.0000');
INSERT INTO `tbl_locations` VALUES ('176', 'FR Lakki Marwat ', '3', '6', '6', 'WH-385', '', '13612', '12747', '7.2200', '0', '0', '0.0000');
INSERT INTO `tbl_locations` VALUES ('177', 'FR Tank ', '3', '6', '6', 'WH-386', '', '18785', '17604', '1.5400', '0', '0', '0.0000');
INSERT INTO `tbl_locations` VALUES ('178', 'FR Dera Ismail Khan ', '3', '6', '6', 'WH-387', '', '35361', '33195', '3.0100', '0', '0', '0.0000');
INSERT INTO `tbl_locations` VALUES ('179', 'Lower Kurram Agency', '3', '6', '4', 'WH-388', '', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('180', 'Turbat', '3', '4', '4', '', '', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('1732', 'Green Town', '6', '107', '6', '1', null, null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('1733', 'Miran Shah', '3', '6', '4', '', '', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('1734', 'Tando Jam', '3', '2', '4', '', '', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('1735', 'Rawalakote', '3', '5', '4', '', '', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('1736', 'Rohri', '3', '2', '4', '', '', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('1737', 'Gulshan-e-Iqbal Karachi', '3', '2', '4', '', '', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('1738', 'Miran Shah1', '3', '6', '4', '', '', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('1739', 'Sujawal', '3', '2', '4', 'WH-94', null, '362585', '333675', '2.2900', '44169', '41518', '1.8000');
INSERT INTO `tbl_locations` VALUES ('1740', 'Karachi Central', '3', '2', '4', 'WH-138', '', '0', '0', '0.0000', '1543950', '1427349', '1.4100');
INSERT INTO `tbl_locations` VALUES ('1741', 'Kharmang', '3', '7', '4', 'WH-42', '606', null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('1742', 'Khairpur B', '3', '2', '4', null, null, null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('1743', 'Badin B', '3', '2', '4', null, null, null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('1744', 'Sanghar B', '3', '2', '4', null, null, null, null, null, null, null, null);
INSERT INTO `tbl_locations` VALUES ('1745', 'Mirpurkhas B', '3', '2', '4', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for tbl_locationtype
-- ----------------------------
DROP TABLE IF EXISTS `tbl_locationtype`;
CREATE TABLE `tbl_locationtype` (
  `LoctypeID` int(11) NOT NULL AUTO_INCREMENT,
  `LoctypeName` varchar(255) DEFAULT NULL,
  `TypeLvl` int(11) NOT NULL,
  PRIMARY KEY (`LoctypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_locationtype
-- ----------------------------
INSERT INTO `tbl_locationtype` VALUES ('1', 'Country', '1');
INSERT INTO `tbl_locationtype` VALUES ('2', 'Province', '2');
INSERT INTO `tbl_locationtype` VALUES ('3', 'Region', '2');
INSERT INTO `tbl_locationtype` VALUES ('4', 'District', '3');
INSERT INTO `tbl_locationtype` VALUES ('5', 'Agency', '3');
INSERT INTO `tbl_locationtype` VALUES ('6', 'FR', '3');
INSERT INTO `tbl_locationtype` VALUES ('7', 'DHQ', '4');
INSERT INTO `tbl_locationtype` VALUES ('8', 'THQ', '4');
INSERT INTO `tbl_locationtype` VALUES ('9', 'Tertiary Hospital', '4');
INSERT INTO `tbl_locationtype` VALUES ('10', 'BMU', '4');
INSERT INTO `tbl_locationtype` VALUES ('11', 'Towns', '3');

-- ----------------------------
-- Table structure for tbl_product_category
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_category`;
CREATE TABLE `tbl_product_category` (
  `PKItemCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemCategoryName` varchar(255) NOT NULL,
  PRIMARY KEY (`PKItemCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_category
-- ----------------------------
INSERT INTO `tbl_product_category` VALUES ('1', 'Contraceptive');
INSERT INTO `tbl_product_category` VALUES ('2', 'Surgeries');
INSERT INTO `tbl_product_category` VALUES ('3', 'Empty');
INSERT INTO `tbl_product_category` VALUES ('4', 'Others');
INSERT INTO `tbl_product_category` VALUES ('5', 'MCH Products');
INSERT INTO `tbl_product_category` VALUES ('6', 'Medicines ');
INSERT INTO `tbl_product_category` VALUES ('7', 'Equipment ');
INSERT INTO `tbl_product_category` VALUES ('8', 'Furniture and fixtures ');
INSERT INTO `tbl_product_category` VALUES ('9', 'Stationary/IEC');
INSERT INTO `tbl_product_category` VALUES ('10', 'Medical/surgical supplies ');
INSERT INTO `tbl_product_category` VALUES ('11', 'Lab Items');

-- ----------------------------
-- Table structure for tbl_product_status
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_status`;
CREATE TABLE `tbl_product_status` (
  `PKItemStatusID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemStatusName` varchar(255) NOT NULL,
  PRIMARY KEY (`PKItemStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_status
-- ----------------------------
INSERT INTO `tbl_product_status` VALUES ('1', 'Current');
INSERT INTO `tbl_product_status` VALUES ('2', 'onGoing');

-- ----------------------------
-- Table structure for tbl_product_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_type`;
CREATE TABLE `tbl_product_type` (
  `PKItemTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemTypeName` varchar(255) NOT NULL,
  PRIMARY KEY (`PKItemTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_type
-- ----------------------------
INSERT INTO `tbl_product_type` VALUES ('3', 'IUD');
INSERT INTO `tbl_product_type` VALUES ('4', 'Pill');
INSERT INTO `tbl_product_type` VALUES ('5', 'Vials');
INSERT INTO `tbl_product_type` VALUES ('6', 'PCs');
INSERT INTO `tbl_product_type` VALUES ('7', 'Cycle');

-- ----------------------------
-- Table structure for tbl_satellite_camps
-- ----------------------------
DROP TABLE IF EXISTS `tbl_satellite_camps`;
CREATE TABLE `tbl_satellite_camps` (
  `pk_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(10) unsigned NOT NULL,
  `reporting_date` date NOT NULL,
  `camps_target` int(10) unsigned NOT NULL,
  `camps_held` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `pk_id` (`pk_id`),
  KEY `warehouse_id` (`warehouse_id`),
  KEY `reporting_date` (`reporting_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_satellite_camps
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_system
-- ----------------------------
DROP TABLE IF EXISTS `tbl_system`;
CREATE TABLE `tbl_system` (
  `sys_id` smallint(1) NOT NULL DEFAULT '0' COMMENT 'id',
  `sys_version` float(11,1) DEFAULT NULL COMMENT 'application version',
  `sys_tagline` varchar(100) DEFAULT NULL,
  `sys_start_date` varchar(100) DEFAULT NULL,
  `sys_show_rate_summary` smallint(1) DEFAULT NULL COMMENT 'flags control if summary percentages are shown in reports',
  `sys_show_rate_detail` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`sys_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='contains system wide global information.';

-- ----------------------------
-- Records of tbl_system
-- ----------------------------
INSERT INTO `tbl_system` VALUES ('1', '1.0', 'Welcome to Pakistan Logistic', '201001', '0', '1');
INSERT INTO `tbl_system` VALUES ('2', '2.0', 'Data Entry Lock for PWD Sindh', '15', '0', '0');

-- ----------------------------
-- Table structure for tbl_trans_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_trans_type`;
CREATE TABLE `tbl_trans_type` (
  `trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_type` varchar(255) DEFAULT NULL,
  `trans_nature` varchar(1) DEFAULT NULL,
  `is_adjustment` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`trans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_trans_type
-- ----------------------------
INSERT INTO `tbl_trans_type` VALUES ('1', 'Receive', '+', '0');
INSERT INTO `tbl_trans_type` VALUES ('2', 'Issue', '-', '0');
INSERT INTO `tbl_trans_type` VALUES ('7', 'Lost / Theft', '-', '1');
INSERT INTO `tbl_trans_type` VALUES ('8', 'Lost Recovered', '+', '2');
INSERT INTO `tbl_trans_type` VALUES ('9', 'Expired', '-', '2');
INSERT INTO `tbl_trans_type` VALUES ('10', 'Damaged', '-', '1');
INSERT INTO `tbl_trans_type` VALUES ('11', 'Return', '+', '2');
INSERT INTO `tbl_trans_type` VALUES ('12', 'Loan Issued', '-', '2');
INSERT INTO `tbl_trans_type` VALUES ('13', 'Loan Returned', '+', '2');
INSERT INTO `tbl_trans_type` VALUES ('14', 'Returned to Supplier', '-', '2');
INSERT INTO `tbl_trans_type` VALUES ('15', 'Wrong Entry (-)', '-', '2');
INSERT INTO `tbl_trans_type` VALUES ('16', 'Opening Balance', '+', '2');
INSERT INTO `tbl_trans_type` VALUES ('17', 'Excess Received', '+', '1');
INSERT INTO `tbl_trans_type` VALUES ('18', 'Excess Packing', '+', '1');
INSERT INTO `tbl_trans_type` VALUES ('19', 'Counting Error Positive', '+', '1');
INSERT INTO `tbl_trans_type` VALUES ('20', 'Donation Received', '+', '1');
INSERT INTO `tbl_trans_type` VALUES ('21', 'Short Received ', '-', '1');
INSERT INTO `tbl_trans_type` VALUES ('22', 'Packing Break/Unpacked', '-', '1');
INSERT INTO `tbl_trans_type` VALUES ('23', 'Short Packing', '-', '1');
INSERT INTO `tbl_trans_type` VALUES ('24', 'Donated To', '-', '1');
INSERT INTO `tbl_trans_type` VALUES ('25', 'Counting Error Negative', '-', '1');

-- ----------------------------
-- Table structure for tbl_user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_login_log`;
CREATE TABLE `tbl_user_login_log` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user_login_log
-- ----------------------------
INSERT INTO `tbl_user_login_log` VALUES ('14', '930', '::1', '2019-04-25 15:32:20');
INSERT INTO `tbl_user_login_log` VALUES ('15', '1', '::1', '2019-04-25 15:33:35');
INSERT INTO `tbl_user_login_log` VALUES ('16', '930', '::1', '2019-04-25 15:34:25');

-- ----------------------------
-- Table structure for tbl_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `tbl_warehouse`;
CREATE TABLE `tbl_warehouse` (
  `wh_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `wh_name` varchar(255) DEFAULT NULL,
  `dist_id` varchar(50) DEFAULT NULL,
  `prov_id` int(11) DEFAULT NULL COMMENT 'province of warehouse',
  `stkid` int(11) DEFAULT NULL COMMENT 'stakeholder',
  `wh_type_id` varchar(255) DEFAULT NULL,
  `locid` int(11) DEFAULT NULL,
  `stkofficeid` int(11) DEFAULT NULL,
  `is_allowed_im` tinyint(1) NOT NULL DEFAULT '0',
  `hf_type_id` int(11) DEFAULT NULL,
  `hf_cat_id` int(11) DEFAULT NULL COMMENT '1=Primary, 2=Secondary, 3=Tertiary',
  `wh_rank` decimal(10,0) DEFAULT NULL,
  `dhis_code` varchar(20) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `reporting_start_month` date DEFAULT NULL,
  `editable_data_entry_months` tinyint(4) NOT NULL DEFAULT '2',
  `is_lock_data_entry` tinyint(4) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT '1',
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT '1',
  `im_start_month` date DEFAULT NULL,
  PRIMARY KEY (`wh_id`),
  KEY `fk_whtype` (`wh_type_id`),
  KEY `fk_dist` (`dist_id`),
  KEY `fk_prov` (`prov_id`),
  KEY `fk_stk` (`stkid`)
) ENGINE=InnoDB AUTO_INCREMENT=72640 DEFAULT CHARSET=utf8 COMMENT='contain information about warehouse';

-- ----------------------------
-- Records of tbl_warehouse
-- ----------------------------
INSERT INTO `tbl_warehouse` VALUES ('123', 'CWH', '151', '10', '1', 'CWH', '15', '1', '1', null, null, null, null, '1', '2019-01-01', '2', '0', '2010-01-01 00:00:00', '1', '2019-04-25 15:22:03', '1', null);
INSERT INTO `tbl_warehouse` VALUES ('72638', 'Test 3', '102', '1', '1', null, '102', '96', '0', '1', null, '0', '', '1', '2019-01-01', '2', '0', '2019-04-25 12:49:42', '1', '2019-04-25 12:49:42', '1', '0000-00-00');
INSERT INTO `tbl_warehouse` VALUES ('72639', 'Test Dist Store', '102', '1', '1', null, '102', '17', '0', '0', null, '0', '', '1', '2019-01-01', '2', '0', '2019-04-25 15:33:55', '1', '2019-04-25 15:33:55', '1', '0000-00-00');

-- ----------------------------
-- Table structure for tbl_warehouse_config
-- ----------------------------
DROP TABLE IF EXISTS `tbl_warehouse_config`;
CREATE TABLE `tbl_warehouse_config` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `wh_id` int(11) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `month` date DEFAULT NULL,
  `config` enum('Enable','Disable') DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_warehouse_config
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_warehouse_copy
-- ----------------------------
DROP TABLE IF EXISTS `tbl_warehouse_copy`;
CREATE TABLE `tbl_warehouse_copy` (
  `wh_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `wh_name` varchar(255) DEFAULT NULL,
  `dist_id` varchar(50) DEFAULT NULL,
  `prov_id` int(11) DEFAULT NULL COMMENT 'province of warehouse',
  `stkid` int(11) DEFAULT NULL COMMENT 'stakeholder',
  `wh_type_id` varchar(255) DEFAULT NULL,
  `locid` int(11) DEFAULT NULL,
  `stkofficeid` int(11) DEFAULT NULL,
  `is_allowed_im` tinyint(1) NOT NULL DEFAULT '0',
  `hf_type_id` int(11) DEFAULT NULL,
  `hf_cat_id` int(11) DEFAULT NULL COMMENT '1=Primary, 2=Secondary, 3=Tertiary',
  `wh_rank` decimal(10,0) DEFAULT NULL,
  `dhis_code` varchar(20) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `reporting_start_month` date DEFAULT NULL,
  `editable_data_entry_months` tinyint(4) NOT NULL DEFAULT '2',
  `is_lock_data_entry` tinyint(4) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT '1',
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT '1',
  `im_start_month` date DEFAULT NULL,
  PRIMARY KEY (`wh_id`),
  KEY `fk_whtype` (`wh_type_id`),
  KEY `fk_dist` (`dist_id`),
  KEY `fk_prov` (`prov_id`),
  KEY `fk_stk` (`stkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='contain information about warehouse';

-- ----------------------------
-- Records of tbl_warehouse_copy
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_wh_data
-- ----------------------------
DROP TABLE IF EXISTS `tbl_wh_data`;
CREATE TABLE `tbl_wh_data` (
  `w_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `report_month` int(11) DEFAULT NULL,
  `report_year` int(11) DEFAULT NULL,
  `item_id` varchar(15) DEFAULT NULL,
  `wh_id` int(11) DEFAULT NULL,
  `wh_obl_a` int(11) DEFAULT NULL,
  `wh_obl_c` int(11) DEFAULT NULL,
  `wh_received` int(11) DEFAULT NULL,
  `wh_issue_up` int(11) DEFAULT NULL,
  `wh_cbl_c` int(11) DEFAULT NULL,
  `wh_cbl_a` int(11) DEFAULT NULL,
  `wh_adja` int(11) DEFAULT NULL,
  `wh_adjb` int(11) DEFAULT NULL,
  `lvl` smallint(6) DEFAULT NULL,
  `RptDate` date DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_calculated` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`w_id`),
  KEY `item_id` (`item_id`),
  KEY `wh_id` (`wh_id`),
  KEY `RptDate` (`RptDate`),
  KEY `report_month` (`report_month`),
  KEY `report_year` (`report_year`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 61440 kB; (`item_id`) REFER `paklmis/itminfo_ta';

-- ----------------------------
-- Records of tbl_wh_data
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_wh_data_draft
-- ----------------------------
DROP TABLE IF EXISTS `tbl_wh_data_draft`;
CREATE TABLE `tbl_wh_data_draft` (
  `w_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_month` int(11) DEFAULT NULL,
  `report_year` int(11) DEFAULT NULL,
  `item_id` varchar(15) DEFAULT NULL,
  `wh_id` int(11) DEFAULT NULL,
  `wh_obl_a` int(11) DEFAULT NULL,
  `wh_obl_c` int(11) DEFAULT NULL,
  `wh_received` int(11) DEFAULT NULL,
  `wh_issue_up` int(11) DEFAULT NULL,
  `wh_cbl_c` int(11) DEFAULT NULL,
  `wh_cbl_a` int(11) DEFAULT NULL,
  `wh_adja` int(11) DEFAULT NULL,
  `wh_adjb` int(11) DEFAULT NULL,
  `lvl` smallint(6) DEFAULT NULL,
  `RptDate` date DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`w_id`),
  KEY `item_id` (`item_id`),
  KEY `wh_id` (`wh_id`),
  KEY `RptDate` (`RptDate`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 61440 kB; (`item_id`) REFER `paklmis/itminfo_ta';

-- ----------------------------
-- Records of tbl_wh_data_draft
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_wh_data_history
-- ----------------------------
DROP TABLE IF EXISTS `tbl_wh_data_history`;
CREATE TABLE `tbl_wh_data_history` (
  `w_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_month` int(11) DEFAULT NULL,
  `report_year` int(11) DEFAULT NULL,
  `item_id` varchar(15) DEFAULT NULL,
  `wh_id` int(11) DEFAULT NULL,
  `wh_obl_a` int(11) DEFAULT NULL,
  `wh_received` int(11) DEFAULT NULL,
  `wh_issue_up` int(11) DEFAULT NULL,
  `wh_cbl_a` int(11) DEFAULT NULL,
  `wh_adja` int(11) DEFAULT NULL,
  `wh_adjb` int(11) DEFAULT NULL,
  `RptDate` date DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`w_id`),
  KEY `item_id` (`item_id`),
  KEY `wh_id` (`wh_id`),
  KEY `RptDate` (`RptDate`),
  KEY `wh_id_2` (`wh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 61440 kB; (`item_id`) REFER `paklmis/itminfo_ta';

-- ----------------------------
-- Records of tbl_wh_data_history
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_wh_update_history
-- ----------------------------
DROP TABLE IF EXISTS `tbl_wh_update_history`;
CREATE TABLE `tbl_wh_update_history` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `wh_id` int(11) NOT NULL,
  `reporting_date` date NOT NULL,
  `update_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_wh_update_history
-- ----------------------------

-- ----------------------------
-- Table structure for user_click_paths
-- ----------------------------
DROP TABLE IF EXISTS `user_click_paths`;
CREATE TABLE `user_click_paths` (
  `pk_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `resource_id` tinyint(4) NOT NULL,
  `user_login_log_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`),
  KEY `user_id` (`user_id`),
  KEY `resource_id` (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_click_paths
-- ----------------------------

-- ----------------------------
-- Table structure for user_prov
-- ----------------------------
DROP TABLE IF EXISTS `user_prov`;
CREATE TABLE `user_prov` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prov_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_prov
-- ----------------------------

-- ----------------------------
-- Table structure for user_status_history
-- ----------------------------
DROP TABLE IF EXISTS `user_status_history`;
CREATE TABLE `user_status_history` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `comments` text,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_status_history
-- ----------------------------

-- ----------------------------
-- Table structure for user_stk
-- ----------------------------
DROP TABLE IF EXISTS `user_stk`;
CREATE TABLE `user_stk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stk_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_stk
-- ----------------------------

-- ----------------------------
-- Table structure for warehouse_status_history
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_status_history`;
CREATE TABLE `warehouse_status_history` (
  `pk_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `reporting_month` date NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of warehouse_status_history
-- ----------------------------

-- ----------------------------
-- Table structure for wh_user
-- ----------------------------
DROP TABLE IF EXISTS `wh_user`;
CREATE TABLE `wh_user` (
  `wh_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `sysusrrec_id` int(11) NOT NULL,
  `wh_id` int(11) NOT NULL,
  `is_default` int(11) DEFAULT '1',
  PRIMARY KEY (`wh_user_id`),
  KEY `sysusrrec_id` (`sysusrrec_id`),
  KEY `wh_id` (`wh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120886 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wh_user
-- ----------------------------
INSERT INTO `wh_user` VALUES ('70368', '930', '170', '1');
INSERT INTO `wh_user` VALUES ('70369', '930', '4248', '1');
INSERT INTO `wh_user` VALUES ('75192', '1', '1', '1');
INSERT INTO `wh_user` VALUES ('120803', '930', '7920', '1');
INSERT INTO `wh_user` VALUES ('120804', '930', '7921', '1');
INSERT INTO `wh_user` VALUES ('120805', '930', '7922', '1');
INSERT INTO `wh_user` VALUES ('120806', '930', '7923', '1');
INSERT INTO `wh_user` VALUES ('120807', '930', '7924', '1');
INSERT INTO `wh_user` VALUES ('120808', '930', '7930', '1');
INSERT INTO `wh_user` VALUES ('120809', '930', '7931', '1');
INSERT INTO `wh_user` VALUES ('120810', '930', '7932', '1');
INSERT INTO `wh_user` VALUES ('120811', '930', '7933', '1');
INSERT INTO `wh_user` VALUES ('120812', '930', '7934', '1');
INSERT INTO `wh_user` VALUES ('120813', '930', '7935', '1');
INSERT INTO `wh_user` VALUES ('120814', '930', '7936', '1');
INSERT INTO `wh_user` VALUES ('120815', '930', '7937', '1');
INSERT INTO `wh_user` VALUES ('120816', '930', '7938', '1');
INSERT INTO `wh_user` VALUES ('120817', '930', '7939', '1');
INSERT INTO `wh_user` VALUES ('120818', '930', '7940', '1');
INSERT INTO `wh_user` VALUES ('120819', '930', '7941', '1');
INSERT INTO `wh_user` VALUES ('120820', '930', '7942', '1');
INSERT INTO `wh_user` VALUES ('120821', '930', '7943', '1');
INSERT INTO `wh_user` VALUES ('120822', '930', '7944', '1');
INSERT INTO `wh_user` VALUES ('120823', '930', '7945', '1');
INSERT INTO `wh_user` VALUES ('120824', '930', '7946', '1');
INSERT INTO `wh_user` VALUES ('120825', '930', '7947', '1');
INSERT INTO `wh_user` VALUES ('120826', '930', '7948', '1');
INSERT INTO `wh_user` VALUES ('120827', '930', '7949', '1');
INSERT INTO `wh_user` VALUES ('120828', '930', '7950', '1');
INSERT INTO `wh_user` VALUES ('120829', '930', '7951', '1');
INSERT INTO `wh_user` VALUES ('120830', '930', '7952', '1');
INSERT INTO `wh_user` VALUES ('120831', '930', '7953', '1');
INSERT INTO `wh_user` VALUES ('120832', '930', '7954', '1');
INSERT INTO `wh_user` VALUES ('120833', '930', '7955', '1');
INSERT INTO `wh_user` VALUES ('120834', '930', '7956', '1');
INSERT INTO `wh_user` VALUES ('120835', '930', '8720', '1');
INSERT INTO `wh_user` VALUES ('120836', '930', '9391', '1');
INSERT INTO `wh_user` VALUES ('120837', '930', '9427', '1');
INSERT INTO `wh_user` VALUES ('120838', '930', '9463', '1');
INSERT INTO `wh_user` VALUES ('120839', '930', '9499', '1');
INSERT INTO `wh_user` VALUES ('120840', '930', '9535', '1');
INSERT INTO `wh_user` VALUES ('120841', '930', '9571', '1');
INSERT INTO `wh_user` VALUES ('120842', '930', '9607', '1');
INSERT INTO `wh_user` VALUES ('120843', '930', '9643', '1');
INSERT INTO `wh_user` VALUES ('120844', '930', '9691', '1');
INSERT INTO `wh_user` VALUES ('120845', '930', '29172', '1');
INSERT INTO `wh_user` VALUES ('120846', '930', '29173', '1');
INSERT INTO `wh_user` VALUES ('120847', '930', '29174', '1');
INSERT INTO `wh_user` VALUES ('120848', '930', '29175', '1');
INSERT INTO `wh_user` VALUES ('120849', '930', '29176', '1');
INSERT INTO `wh_user` VALUES ('120850', '930', '29177', '1');
INSERT INTO `wh_user` VALUES ('120851', '930', '29178', '1');
INSERT INTO `wh_user` VALUES ('120852', '930', '29179', '1');
INSERT INTO `wh_user` VALUES ('120853', '930', '29180', '1');
INSERT INTO `wh_user` VALUES ('120854', '930', '29181', '1');
INSERT INTO `wh_user` VALUES ('120855', '930', '29182', '1');
INSERT INTO `wh_user` VALUES ('120856', '930', '29183', '1');
INSERT INTO `wh_user` VALUES ('120857', '930', '29184', '1');
INSERT INTO `wh_user` VALUES ('120858', '930', '29185', '1');
INSERT INTO `wh_user` VALUES ('120859', '930', '29186', '1');
INSERT INTO `wh_user` VALUES ('120860', '930', '29187', '1');
INSERT INTO `wh_user` VALUES ('120861', '930', '29188', '1');
INSERT INTO `wh_user` VALUES ('120862', '930', '29189', '1');
INSERT INTO `wh_user` VALUES ('120863', '930', '29190', '1');
INSERT INTO `wh_user` VALUES ('120864', '930', '29191', '1');
INSERT INTO `wh_user` VALUES ('120865', '930', '30071', '1');
INSERT INTO `wh_user` VALUES ('120866', '930', '31545', '1');
INSERT INTO `wh_user` VALUES ('120867', '930', '31546', '1');
INSERT INTO `wh_user` VALUES ('120868', '930', '31547', '1');
INSERT INTO `wh_user` VALUES ('120869', '930', '31549', '1');
INSERT INTO `wh_user` VALUES ('120870', '930', '31550', '1');
INSERT INTO `wh_user` VALUES ('120871', '930', '31552', '1');
INSERT INTO `wh_user` VALUES ('120872', '930', '31553', '1');
INSERT INTO `wh_user` VALUES ('120873', '930', '31554', '1');
INSERT INTO `wh_user` VALUES ('120874', '930', '31555', '1');
INSERT INTO `wh_user` VALUES ('120875', '930', '68613', '1');
INSERT INTO `wh_user` VALUES ('120876', '930', '68614', '1');
INSERT INTO `wh_user` VALUES ('120877', '930', '68615', '1');
INSERT INTO `wh_user` VALUES ('120878', '930', '68616', '1');
INSERT INTO `wh_user` VALUES ('120879', '930', '68617', '1');
INSERT INTO `wh_user` VALUES ('120880', '930', '72638', '1');
INSERT INTO `wh_user` VALUES ('120882', '931', '72638', '1');
INSERT INTO `wh_user` VALUES ('120883', '931', '170', '1');
INSERT INTO `wh_user` VALUES ('120884', '930', '72639', '1');
INSERT INTO `wh_user` VALUES ('120885', '931', '72639', '1');

-- ----------------------------
-- Procedure structure for REPUpdateDistrictStockWHData
-- ----------------------------
DROP PROCEDURE IF EXISTS `REPUpdateDistrictStockWHData`;
DELIMITER ;;
CREATE   PROCEDURE `REPUpdateDistrictStockWHData`(in_wh_id INT, itmRecId VARCHAR(15), in_rpt_date DATE)
    READS SQL DATA
    DETERMINISTIC
BEGIN

DECLARE pkId INTEGER;
DECLARE whId INTEGER;
DECLARE distId INTEGER;
DECLARE stkId DOUBLE;
DECLARE totalRecord INTEGER;
DECLARE OB DOUBLE;
DECLARE Rcv DOUBLE;
DECLARE Issue DOUBLE;
DECLARE CB DOUBLE;
DECLARE AdjPos DOUBLE;
DECLARE AdjNeg DOUBLE;
DECLARE AddDate DATETIME;
DECLARE IPAddress VARCHAR(15);
DECLARE Userid INTEGER;
DECLARE cur_year INTEGER;
DECLARE lvlId INTEGER;

#Debugging Variables
DECLARE code CHAR(5) DEFAULT '00000';
DECLARE msg TEXT;
DECLARE rows INT;
DECLARE result TEXT;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS CONDITION 1
		code = RETURNED_SQLSTATE, msg = MESSAGE_TEXT;
END;
#END Debugging Variables

SET cur_year = (SELECT YEAR(CURRENT_DATE()));

IF (cur_year > 2017) THEN

#Get District and stakeholder of the health facility
SELECT
	tbl_warehouse.dist_id,
	tbl_warehouse.stkid,
	stakeholder.lvl
	INTO distId, stkId, lvlId
FROM
	tbl_warehouse
INNER JOIN stakeholder ON tbl_warehouse.stkofficeid = stakeholder.stkid
WHERE
	tbl_warehouse.wh_id = in_wh_id
LIMIT 1;

IF (lvlId = 4) THEN
#Get the district store Id of the health facility
SELECT
	wh_id INTO whId
FROM
	tbl_warehouse
INNER JOIN stakeholder ON tbl_warehouse.stkofficeid = stakeholder.stkid
WHERE
	tbl_warehouse.dist_id = distId
AND stakeholder.lvl = 3
AND tbl_warehouse.stkid = stkId
LIMIT 1;

# Get previous month Closing Balance
SELECT
	tbl_wh_data.wh_cbl_a INTO OB
FROM
	tbl_wh_data
WHERE
	tbl_wh_data.wh_id = whId
AND tbl_wh_data.item_id = itmRecId
AND tbl_wh_data.RptDate = DATE_ADD(in_rpt_date, INTERVAL -1 MONTH) LIMIT 1;

SELECT
	tbl_wh_data.w_id,
tbl_wh_data.wh_adja,
tbl_wh_data.wh_adjb
	INTO pkId, AdjPos, AdjNeg
FROM
	tbl_wh_data
WHERE
	tbl_wh_data.wh_id = whId
AND tbl_wh_data.item_id = itmRecId
AND tbl_wh_data.RptDate = in_rpt_date;

SELECT
	IFNULL(ABS(SUM(tbl_stock_detail.Qty)),0) INTO Rcv
FROM
	tbl_stock_master
INNER JOIN tbl_stock_detail ON tbl_stock_master.PkStockID = tbl_stock_detail.fkStockID
INNER JOIN stock_batch ON tbl_stock_detail.BatchID = stock_batch.batch_id
WHERE
	tbl_stock_master.WHIDFrom = 123
AND tbl_stock_master.WHIDTo = whId
AND tbl_stock_master.TranTypeID = 2
AND tbl_stock_master.temp = 0
AND stock_batch.item_id = in_item
AND DATE_FORMAT(
	tbl_stock_master.TranDate,
	"%Y-%m-01"
) = in_rpt_date;

#Get data
SELECT
	tbl_wh_data.wh_received,
	tbl_wh_data.add_date,
	tbl_wh_data.ip_address,
	tbl_wh_data.created_by
INTO Issue, AddDate, IPAddress, Userid
FROM
	tbl_wh_data
WHERE
	tbl_wh_data.wh_id = in_wh_id
AND tbl_wh_data.item_id = itmRecId
AND tbl_wh_data.RptDate = in_rpt_date;

SET CB = (OB + Rcv + AdjPos) - (Issue + AdjNeg);

	#Update the table
	UPDATE tbl_wh_data
	SET
		tbl_wh_data.report_month = MONTH(tbl_wh_data.RptDate),
		tbl_wh_data.report_year = YEAR(tbl_wh_data.RptDate),
		tbl_wh_data.item_id = itmRecId,
		tbl_wh_data.wh_id = whId,
		tbl_wh_data.wh_obl_a = OB,
		tbl_wh_data.wh_issue_up = Issue,
		tbl_wh_data.wh_received = Rcv,
		tbl_wh_data.wh_adja = AdjPos,
		tbl_wh_data.wh_adjb = AdjNeg,
		tbl_wh_data.wh_cbl_a = CB,
		tbl_wh_data.RptDate = in_rpt_date,
		tbl_wh_data.add_date = AddDate,
		tbl_wh_data.last_update = NOW(),
		tbl_wh_data.ip_address = IPAddress,
		tbl_wh_data.created_by = Userid,
		tbl_wh_data.is_calculated = 0
	WHERE
		tbl_wh_data.w_id = pkId;
END IF;
END IF;

-- Check whether the insert was successful
IF code = '00000' THEN
	GET DIAGNOSTICS rows = ROW_COUNT;
	SET result = CONCAT('insert succeeded, row count = ',rows);
ELSE
	SET result = CONCAT('insert failed, error = ',code,', message = ',msg);
END IF;
-- Say what happened

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for REPUpdateHFData
-- ----------------------------
DROP PROCEDURE IF EXISTS `REPUpdateHFData`;
DELIMITER ;;
CREATE   PROCEDURE `REPUpdateHFData`(in_wh_id INT, in_item INT, in_rpt_date DATE)
    READS SQL DATA
    DETERMINISTIC
BEGIN

DECLARE pkId INTEGER;
DECLARE whId INTEGER;
DECLARE distId INTEGER;
DECLARE stkId DOUBLE;
DECLARE totalRecord INTEGER;
DECLARE OB DOUBLE;
DECLARE Rcv DOUBLE;
DECLARE Issue DOUBLE;
DECLARE CB DOUBLE;
DECLARE AdjPos DOUBLE;
DECLARE AdjNeg DOUBLE;
DECLARE AddDate DATETIME;
DECLARE itmRecId VARCHAR(15);
DECLARE IPAddress VARCHAR(15);
DECLARE Userid INTEGER;

#Get itmRec_id for tbl_wh_data
SELECT
	itminfo_tab.itmrec_id INTO itmRecId
FROM
	itminfo_tab
WHERE
	itminfo_tab.itm_id = in_item;

#Get District and stakeholder of the health facility
SELECT
	tbl_warehouse.dist_id,
	tbl_warehouse.stkid
	INTO distId, stkId
FROM
	tbl_warehouse
WHERE
	tbl_warehouse.wh_id = in_wh_id
LIMIT 1;

#Get the field store Id of the health facility
SELECT
	wh_id INTO whId
FROM
	tbl_warehouse
INNER JOIN stakeholder ON tbl_warehouse.stkofficeid = stakeholder.stkid
WHERE
	tbl_warehouse.dist_id = distId
AND stakeholder.lvl = 4
AND tbl_warehouse.stkid = stkId
LIMIT 1;

#Check if data already exixts for this field store
SELECT
	tbl_wh_data.w_id,
	COUNT(tbl_wh_data.w_id)
	INTO pkId, totalRecord
FROM
	tbl_wh_data
WHERE
	tbl_wh_data.wh_id = whId
AND tbl_wh_data.item_id = itmRecId
AND tbl_wh_data.RptDate = in_rpt_date;

IF (totalRecord = 0) THEN
	#Aggregate the health facility data and update the tbl_wh_data table accorindgly
	INSERT INTO tbl_wh_data
	(
		tbl_wh_data.report_month,
		tbl_wh_data.report_year,
		tbl_wh_data.item_id,
		tbl_wh_data.wh_id,
		tbl_wh_data.wh_obl_a,
		tbl_wh_data.wh_received,
		tbl_wh_data.wh_issue_up,
		tbl_wh_data.wh_cbl_a,
		tbl_wh_data.wh_adja,
		tbl_wh_data.wh_adjb,
		tbl_wh_data.RptDate,
		tbl_wh_data.add_date,
		tbl_wh_data.last_update,
		tbl_wh_data.ip_address,
		tbl_wh_data.created_by)
	SELECT
		MONTH(tbl_hf_data.reporting_date),
		YEAR(tbl_hf_data.reporting_date),
		itmRecId,
		whId,
		SUM(tbl_hf_data.opening_balance),
		SUM(tbl_hf_data.received_balance),
		SUM(tbl_hf_data.issue_balance),
		SUM(tbl_hf_data.closing_balance),
		SUM(tbl_hf_data.adjustment_positive),
		SUM(tbl_hf_data.adjustment_negative),
		tbl_hf_data.reporting_date,
		tbl_hf_data.created_date,
		tbl_hf_data.last_update,
		tbl_hf_data.ip_address,
		tbl_hf_data.created_by
	FROM
		tbl_hf_data
	INNER JOIN tbl_warehouse ON tbl_warehouse.wh_id = tbl_hf_data.warehouse_id
	WHERE
		tbl_warehouse.dist_id = distId
	AND tbl_warehouse.stkid = stkId
	AND tbl_hf_data.item_id = in_item
	AND tbl_hf_data.reporting_date = in_rpt_date;

ELSEIF(totalRecord > 0) THEN
	#Get data
	SELECT
		SUM(tbl_hf_data.opening_balance),
		SUM(tbl_hf_data.received_balance),
		SUM(tbl_hf_data.issue_balance),
		SUM(tbl_hf_data.closing_balance),
		SUM(tbl_hf_data.adjustment_positive),
		SUM(tbl_hf_data.adjustment_negative),
		tbl_hf_data.created_date,
		tbl_hf_data.ip_address,
		tbl_hf_data.created_by
	INTO OB, Rcv, Issue, CB, AdjPos, AdjNeg, AddDate, IPAddress, Userid
	FROM
		tbl_hf_data
	INNER JOIN tbl_warehouse ON tbl_warehouse.wh_id = tbl_hf_data.warehouse_id
	WHERE
		tbl_warehouse.dist_id = distId
	AND tbl_warehouse.stkid = stkId
	AND tbl_hf_data.item_id = in_item
	AND tbl_hf_data.reporting_date = in_rpt_date;
	
	#Update the table
	UPDATE tbl_wh_data
	SET
		tbl_wh_data.report_month = MONTH(tbl_wh_data.RptDate),
		tbl_wh_data.report_year = YEAR(tbl_wh_data.RptDate),
		tbl_wh_data.item_id = itmRecId,
		tbl_wh_data.wh_id = whId,
		tbl_wh_data.wh_obl_a = OB,
		tbl_wh_data.wh_received = Rcv,
		tbl_wh_data.wh_issue_up = Issue,
		tbl_wh_data.wh_cbl_a = CB,
		tbl_wh_data.wh_adja = AdjPos,
		tbl_wh_data.wh_adjb = AdjNeg,
		tbl_wh_data.RptDate = in_rpt_date,
		tbl_wh_data.add_date = AddDate,
		tbl_wh_data.last_update = NOW(),
		tbl_wh_data.ip_address = IPAddress,
		tbl_wh_data.created_by = Userid,
		tbl_wh_data.is_calculated = 0
	WHERE
		tbl_wh_data.w_id = pkId;

END IF;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for REPUpdateHFTypeFromHF
-- ----------------------------
DROP PROCEDURE IF EXISTS `REPUpdateHFTypeFromHF`;
DELIMITER ;;
CREATE   PROCEDURE `REPUpdateHFTypeFromHF`(in_wh_id INT, in_item INT, in_rpt_date DATE)
    READS SQL DATA
    DETERMINISTIC
BEGIN

DECLARE distId INTEGER;
DECLARE hfType INTEGER;
DECLARE totalRecord INTEGER;
DECLARE OB DOUBLE;
DECLARE Rcv DOUBLE;
DECLARE Issue DOUBLE;
DECLARE CB DOUBLE;
DECLARE AdjPos DOUBLE;
DECLARE AdjNeg DOUBLE;
DECLARE New DOUBLE;
DECLARE Old DOUBLE;
DECLARE AddDate DATETIME;
DECLARE lastUpdate DATETIME;
DECLARE IPAddress VARCHAR(15);
DECLARE Userid INTEGER;


#Get wqarehouse of the same type and district
SELECT
	tbl_warehouse.dist_id,
	tbl_warehouse.hf_type_id,
	tbl_hf_data.created_date,
	tbl_hf_data.last_update,
	tbl_hf_data.ip_address,
	tbl_hf_data.created_by,
	SUM(tbl_hf_data.opening_balance),
	SUM(tbl_hf_data.received_balance),
	SUM(tbl_hf_data.issue_balance),
	SUM(tbl_hf_data.closing_balance),
	SUM(tbl_hf_data.adjustment_positive),
	SUM(tbl_hf_data.adjustment_negative),
	SUM(tbl_hf_data.new),
	SUM(tbl_hf_data.old)
INTO distId, hfType, AddDate, lastUpdate, IPAddress, Userid, OB, Rcv, Issue, CB, AdjPos, AdjNeg, New, Old
FROM
	tbl_hf_data
INNER JOIN tbl_warehouse ON tbl_hf_data.warehouse_id = tbl_warehouse.wh_id
WHERE
	tbl_hf_data.reporting_date = in_rpt_date
AND tbl_warehouse.wh_id IN (
	SELECT DISTINCT
		tbl_warehouse.wh_id
	FROM
		(
			SELECT
				tbl_warehouse.hf_type_id,
				tbl_warehouse.dist_id
			FROM
				tbl_warehouse
			WHERE
				tbl_warehouse.wh_id = in_wh_id
		) A
	JOIN tbl_warehouse ON tbl_warehouse.dist_id = A.dist_id
	AND tbl_warehouse.hf_type_id = A.hf_type_id
)
AND tbl_hf_data.item_id = in_item
GROUP BY
	tbl_hf_data.item_id;

#Check if data already exixts
SELECT
	COUNT(tbl_hf_type_data.pk_id) INTO totalRecord
FROM
	tbl_hf_type_data
WHERE
	tbl_hf_type_data.district_id = distId
AND tbl_hf_type_data.facility_type_id = hfType
AND tbl_hf_type_data.item_id = in_item
AND tbl_hf_type_data.reporting_date = in_rpt_date;

IF (totalRecord = 0) THEN
	INSERT INTO tbl_hf_type_data
	SET
		tbl_hf_type_data.district_id = distId,
		tbl_hf_type_data.facility_type_id = hfType,
		tbl_hf_type_data.item_id = in_item,
		tbl_hf_type_data.opening_balance = OB,
		tbl_hf_type_data.received_balance = Rcv,
		tbl_hf_type_data.issue_balance = Issue,
		tbl_hf_type_data.closing_balance = CB,
		tbl_hf_type_data.adjustment_positive = AdjPos,
		tbl_hf_type_data.adjustment_negative = AdjNeg,
		tbl_hf_type_data.new = New,
		tbl_hf_type_data.old = Old,
		tbl_hf_type_data.reporting_date = in_rpt_date,
		tbl_hf_type_data.created_date = AddDate,
		tbl_hf_type_data.last_update = lastUpdate,
		tbl_hf_type_data.ip_address = IPAddress,
		tbl_hf_type_data.created_by = Userid;

ELSEIF(totalRecord > 0) THEN
	UPDATE tbl_hf_type_data
	SET
		tbl_hf_type_data.district_id = distId,
		tbl_hf_type_data.facility_type_id = hfType,
		tbl_hf_type_data.item_id = in_item,
		tbl_hf_type_data.opening_balance = OB,
		tbl_hf_type_data.received_balance = Rcv,
		tbl_hf_type_data.issue_balance = Issue,
		tbl_hf_type_data.closing_balance = CB,
		tbl_hf_type_data.adjustment_positive = AdjPos,
		tbl_hf_type_data.adjustment_negative = AdjNeg,
		tbl_hf_type_data.new = New,
		tbl_hf_type_data.old = Old,
		tbl_hf_type_data.reporting_date = in_rpt_date,
		tbl_hf_type_data.created_date = AddDate,
		tbl_hf_type_data.last_update = lastUpdate,
		tbl_hf_type_data.ip_address = IPAddress,
		tbl_hf_type_data.created_by = Userid
	WHERE
		tbl_hf_type_data.district_id = distId
	AND tbl_hf_type_data.facility_type_id = hfType
	AND tbl_hf_type_data.item_id = in_item
	AND tbl_hf_type_data.reporting_date = in_rpt_date;

END IF;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for REPUpdateSummaryDistrict
-- ----------------------------
DROP PROCEDURE IF EXISTS `REPUpdateSummaryDistrict`;
DELIMITER ;;
CREATE   PROCEDURE `REPUpdateSummaryDistrict`(in_wh_id INTEGER, in_item VARCHAR(10), in_month INTEGER, in_year INTEGER)
    READS SQL DATA
    DETERMINISTIC
BEGIN

DECLARE distId DOUBLE;
DECLARE stkId INTEGER;
DECLARE provId INTEGER;
DECLARE itemId INTEGER;
DECLARE consumption DOUBLE;
DECLARE AMC DOUBLE;
DECLARE SOH DOUBLE;
DECLARE SOHStore DOUBLE;
DECLARE DistPer DOUBLE;
DECLARE FieldPer DOUBLE;
DECLARE HFPer DOUBLE;
DECLARE RRPer DOUBLE;
DECLARE totalRecord DOUBLE;
DECLARE totalWH DOUBLE;
DECLARE pkId INTEGER;
DECLARE rptDate DATE;

#Debugging Variables
DECLARE code CHAR(5) DEFAULT '00000';
DECLARE msg TEXT;
DECLARE rows INT;
DECLARE result TEXT;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS CONDITION 1
		code = RETURNED_SQLSTATE, msg = MESSAGE_TEXT;
END;
#END Debugging Variables

SET rptDate = CONCAT(in_year, '-', LPAD(in_month,2,0), '-01');

#Get location ID and stakeholder of the warehouse
SELECT
	tbl_warehouse.dist_id,
	tbl_warehouse.stkid,
	tbl_warehouse.prov_id
INTO distId, stkId, provId
FROM
	tbl_warehouse
WHERE
	tbl_warehouse.wh_id = in_wh_id;

SELECT
	itminfo_tab.itm_id INTO itemId
FROM
	itminfo_tab
WHERE
	itminfo_tab.itmrec_id = in_item;

/*IF(in_wh_id = 123) THEN #For Central Warehouse
	#Calculate the Consumption for that Month
	SELECT COALESCE(REPgetConsumption('WS',  in_month, in_year, in_item, stkid, 0, 0), NULL, 0) INTO consumption FROM DUAL;
	#Calculate the Average Monthly Consumption for that Month
	SELECT COALESCE(REPgetConsumptionAVG('WS',  in_month, in_year, in_item, stkid, 0, 0), NULL, 0) INTO AMC FROM DUAL;
	#Calculate the District Level Closing Balance for that Month 
	SELECT COALESCE(REPgetCB('W',  in_month, in_year, in_item, stkid, 0, 0), NULL, 0) INTO SOH FROM DUAL;
	#Calculate the District Store Closing Balance for that Month 
	SELECT COALESCE(REPgetCB('WS',  in_month, in_year, in_item, stkid, 0, 0), NULL, 0) INTO SOHStore FROM DUAL;
	SET totalWH = 1;
	SET RRPer = 100;
ELSE */
IF(in_wh_id != 123) THEN
	#Calculate the Consumption for that Month
	SELECT COALESCE(REPgetConsumption('WSPD',  in_month, in_year, in_item, stkid, 0, distId), NULL, 0) INTO consumption FROM DUAL;
	#Calculate the Average Monthly Consumption for that Month
	SELECT COALESCE(REPgetConsumptionAVG('WSPD',  in_month, in_year, in_item, stkid, 0, distId), NULL, 0) INTO AMC FROM DUAL;
	#Calculate the District Level Closing Balance for that Month 
	SELECT COALESCE(REPgetCB('TSPD',  in_month, in_year, in_item, stkid, 0, distId), NULL, 0) INTO SOH FROM DUAL;
	#Calculate the District Store Closing Balance for that Month 
	SELECT COALESCE(REPgetCB('WSPD',  in_month, in_year, in_item, stkid, 0, distId), NULL, 0) INTO SOHStore FROM DUAL;

#IF (consumption != 0 OR AMC != 0 OR SOH != 0 OR SOHStore != 0) THEN
	# Get Reporting Rate of the district

SELECT
SUM(case when B.lvl = 7 AND B.wh_id > 0 then 1 else 0 end),
ROUND(((COALESCE(SUM(case when B.lvl = 3 AND NULLIF(TRIM(A.add_date),'')!='' then 1 else 0 end), NULL, 0) / SUM(case when B.lvl = 3 then 1 else 0 end)) * 100),2),
ROUND(((COALESCE(SUM(case when B.lvl = 4 AND NULLIF(TRIM(A.add_date),'')!='' then 1 else 0 end), NULL, 0) / SUM(case when B.lvl = 4 then 1 else 0 end)) * 100),2),
ROUND(((COALESCE(SUM(case when B.lvl = 7 AND NULLIF(TRIM(A.add_date),'')!='' then 1 else 0 end), NULL, 0) / SUM(case when B.lvl = 7 then 1 else 0 end)) * 100),2),
ROUND(((COALESCE(SUM(case when NULLIF(TRIM(A.add_date),'')!='' then 1 else 0 end), NULL, 0) / SUM(case when B.wh_id >0 then 1 else 0 end)) * 100),2)
INTO totalWH, DistPer, FieldPer, HFPer, RRPer
FROM
	(
		SELECT
			tbl_warehouse.wh_id,
			stakeholder.lvl,
			tbl_warehouse.wh_name,
			tbl_warehouse.dist_id,
			tbl_warehouse.prov_id,
			tbl_warehouse.stkid,
			tbl_warehouse.stkofficeid,
			tbl_warehouse.wh_rank,
			tbl_wh_data.add_date,
			tbl_wh_data.last_update,
			tbl_wh_data.ip_address
		FROM
			tbl_warehouse
		INNER JOIN wh_user ON tbl_warehouse.wh_id = wh_user.wh_id
		INNER JOIN tbl_wh_data ON tbl_warehouse.wh_id = tbl_wh_data.wh_id
		INNER JOIN stakeholder ON tbl_warehouse.stkofficeid = stakeholder.stkid
		WHERE
			tbl_wh_data.report_month = in_month
		AND tbl_wh_data.report_year = in_year
		AND tbl_wh_data.item_id = in_item
		AND tbl_warehouse.stkid = stkId
		AND tbl_warehouse.prov_id = provId
		AND tbl_warehouse.dist_id = distId
		AND stakeholder.lvl IN (3,4, 7)
		GROUP BY
			tbl_warehouse.wh_id
		UNION
			SELECT
				tbl_warehouse.wh_id,
				stakeholder.lvl,
				tbl_warehouse.wh_name,
				tbl_warehouse.dist_id,
				tbl_warehouse.prov_id,
				tbl_warehouse.stkid,
				tbl_warehouse.stkofficeid,
				tbl_warehouse.wh_rank,
				tbl_hf_data.created_date AS add_date,
				tbl_hf_data.last_update,
				tbl_hf_data.ip_address
			FROM
				tbl_warehouse
			INNER JOIN wh_user ON tbl_warehouse.wh_id = wh_user.wh_id
			INNER JOIN tbl_hf_data ON tbl_warehouse.wh_id = tbl_hf_data.warehouse_id
			INNER JOIN stakeholder ON tbl_warehouse.stkofficeid = stakeholder.stkid
			WHERE
				MONTH (tbl_hf_data.reporting_date) = in_month
			AND YEAR (tbl_hf_data.reporting_date) = in_year
			AND tbl_hf_data.item_id = itemId
			AND tbl_warehouse.stkid = stkId
			AND tbl_warehouse.prov_id = provId
			AND tbl_warehouse.dist_id = distId
			AND stakeholder.lvl IN (3,4, 7)
			GROUP BY
				tbl_warehouse.wh_id
	) A
RIGHT JOIN (
	SELECT DISTINCT
		tbl_warehouse.wh_id,
stakeholder.lvl,
		tbl_warehouse.wh_name,
		tbl_warehouse.dist_id,
		tbl_warehouse.prov_id,
		tbl_warehouse.stkid,
		tbl_warehouse.stkofficeid,
		tbl_warehouse.wh_rank,
		MainStk.stkorder,
		MainStk.stkname AS stkMain,
		stakeholder.stkname AS stkOffice,
		District.PkLocID AS districtId,
		District.LocName AS district,
		Province.PkLocID AS provinceId,
		Province.LocName AS province
	FROM
		tbl_warehouse
	INNER JOIN wh_user ON tbl_warehouse.wh_id = wh_user.wh_id
	INNER JOIN stakeholder ON tbl_warehouse.stkofficeid = stakeholder.stkid
	INNER JOIN stakeholder AS MainStk ON tbl_warehouse.stkid = MainStk.stkid
	INNER JOIN tbl_locations AS District ON tbl_warehouse.dist_id = District.PkLocID
	INNER JOIN tbl_locations AS Province ON tbl_warehouse.prov_id = Province.PkLocID
	WHERE
		tbl_warehouse.wh_id NOT IN (
			SELECT
				warehouse_status_history.warehouse_id
			FROM
				warehouse_status_history
			INNER JOIN tbl_warehouse ON warehouse_status_history.warehouse_id = tbl_warehouse.wh_id
			WHERE
				warehouse_status_history.reporting_month = rptDate
			AND warehouse_status_history.`status` = 0
			AND tbl_warehouse.stkid = stkId
		)
	AND tbl_warehouse.reporting_start_month <= rptDate
	AND tbl_warehouse.is_active = 1
	AND tbl_warehouse.stkid = stkId
	AND tbl_warehouse.prov_id = provId
	AND tbl_warehouse.dist_id = distId
	AND stakeholder.lvl IN (3,4, 7)
) B ON A.wh_id = B.wh_id
AND A.prov_id = B.prov_id
AND A.dist_id = B.dist_id
AND A.stkid = B.stkid
AND A.stkofficeid = B.stkofficeid
ORDER BY
	B.provinceId ASC,
	B.district ASC,
	B.stkorder ASC,
	B.wh_name,

IF (
	A.wh_rank = ''
	OR A.wh_rank IS NULL,
	1,
	0
),
 A.wh_rank,
 A.wh_name ASC;
#END IF;

	#Check if data already present for this district in the Summary Table
	SET totalRecord = '';
	SET pkId = '';
	SELECT
		summary_district.pk_id,
		COUNT(summary_district.pk_id)
		INTO pkId, totalRecord
	FROM
		summary_district
	WHERE
		summary_district.district_id = distId
	AND summary_district.item_id = in_item
	AND summary_district.stakeholder_id = stkId
	AND summary_district.reporting_date = rptDate;

	IF(totalRecord = 0) THEN
		INSERT INTO summary_district SET
			stakeholder_id = stkId,
			item_id = in_item,
			district_id = distId,
			province_id = provId,
			reporting_date = rptDate,
			avg_consumption = AMC,
			consumption = consumption,
			soh_district_store = SOHStore,
			soh_district_lvl = SOH,
dist_reporting_rate = DistPer,
field_reporting_rate = FieldPer,
			reporting_rate = RRPer,
			total_health_facilities = totalWH;
	ELSEIF(totalRecord > 0) THEN
		UPDATE summary_district SET
			stakeholder_id = stkId,
			item_id = in_item,
			district_id = distId,
			province_id = provId,
			reporting_date = rptDate,
			avg_consumption = AMC,
			consumption = consumption,
			soh_district_store = SOHStore,
			soh_district_lvl = SOH,
dist_reporting_rate = DistPer,
field_reporting_rate = FieldPer,
			reporting_rate = HFPer,
			total_health_facilities = totalWH
		WHERE
			pk_id = pkId;
	END IF;

ELSE
	UPDATE tbl_wh_data SET
		tbl_wh_data.is_calculated = 1
	WHERE
		tbl_wh_data.is_calculated = 0
	AND tbl_wh_data.wh_id = 123;

END IF;

-- Check whether the insert was successful
IF code = '00000' THEN
	GET DIAGNOSTICS rows = ROW_COUNT;
	SET result = CONCAT('insert succeeded, row count = ',rows);
ELSE
	SET result = CONCAT('insert failed, error = ',code,', message = ',msg);
END IF;
-- Say what happened
#SELECT result, DistPer, FieldPer,HFPer, RRPer, totalWH;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for REPUpdateSummaryDistrict2
-- ----------------------------
DROP PROCEDURE IF EXISTS `REPUpdateSummaryDistrict2`;
DELIMITER ;;
CREATE   PROCEDURE `REPUpdateSummaryDistrict2`(provId INTEGER,distId INTEGER,stkId INTEGER, in_item VARCHAR(10), in_month INTEGER, in_year INTEGER)
    READS SQL DATA
    DETERMINISTIC
BEGIN

DECLARE itemId INTEGER;
DECLARE consumption DOUBLE;
DECLARE AMC DOUBLE;
DECLARE SOH DOUBLE;
DECLARE SOHStore DOUBLE;
DECLARE DistPer DOUBLE;
DECLARE FieldPer DOUBLE;
DECLARE HFPer DOUBLE;
DECLARE RRPer DOUBLE;
DECLARE totalRecord DOUBLE;
DECLARE totalWH DOUBLE;
DECLARE pkId INTEGER;
DECLARE rptDate DATE;

#Debugging Variables
DECLARE code CHAR(5) DEFAULT '00000';
DECLARE msg TEXT;
DECLARE rows INT;
DECLARE result TEXT;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
BEGIN
	GET DIAGNOSTICS CONDITION 1
		code = RETURNED_SQLSTATE, msg = MESSAGE_TEXT;
END;
#END Debugging Variables

SET rptDate = CONCAT(in_year, '-', LPAD(in_month,2,0), '-01');


SELECT
	itminfo_tab.itm_id INTO itemId
FROM
	itminfo_tab
WHERE
	itminfo_tab.itmrec_id = in_item;

/*IF(in_wh_id = 123) THEN #For Central Warehouse
	#Calculate the Consumption for that Month
	SELECT COALESCE(REPgetConsumption('WS',  in_month, in_year, in_item, stkid, 0, 0), NULL, 0) INTO consumption FROM DUAL;
	#Calculate the Average Monthly Consumption for that Month
	SELECT COALESCE(REPgetConsumptionAVG('WS',  in_month, in_year, in_item, stkid, 0, 0), NULL, 0) INTO AMC FROM DUAL;
	#Calculate the District Level Closing Balance for that Month 
	SELECT COALESCE(REPgetCB('W',  in_month, in_year, in_item, stkid, 0, 0), NULL, 0) INTO SOH FROM DUAL;
	#Calculate the District Store Closing Balance for that Month 
	SELECT COALESCE(REPgetCB('WS',  in_month, in_year, in_item, stkid, 0, 0), NULL, 0) INTO SOHStore FROM DUAL;
	SET totalWH = 1;
	SET RRPer = 100;
ELSE */
IF(1=1) THEN
	#Calculate the Consumption for that Month
	SELECT COALESCE(REPgetConsumption('WSPD',  in_month, in_year, in_item, stkid, 0, distId), NULL, 0) INTO consumption FROM DUAL;
	#Calculate the Average Monthly Consumption for that Month
	SELECT COALESCE(REPgetConsumptionAVG('WSPD',  in_month, in_year, in_item, stkid, 0, distId), NULL, 0) INTO AMC FROM DUAL;
	#Calculate the District Level Closing Balance for that Month 
	SELECT COALESCE(REPgetCB('TSPD',  in_month, in_year, in_item, stkid, 0, distId), NULL, 0) INTO SOH FROM DUAL;
	#Calculate the District Store Closing Balance for that Month 
	SELECT COALESCE(REPgetCB('WSPD',  in_month, in_year, in_item, stkid, 0, distId), NULL, 0) INTO SOHStore FROM DUAL;

#IF (consumption != 0 OR AMC != 0 OR SOH != 0 OR SOHStore != 0) THEN
	# Get Reporting Rate of the district

SELECT
SUM(case when B.wh_id >0 then 1 else 0 end),
ROUND(((COALESCE(SUM(case when B.lvl = 3 AND NULLIF(TRIM(A.add_date),'')!='' then 1 else 0 end), NULL, 0) / SUM(case when B.lvl = 3 then 1 else 0 end)) * 100)),
ROUND(((COALESCE(SUM(case when B.lvl = 4 AND NULLIF(TRIM(A.add_date),'')!='' then 1 else 0 end), NULL, 0) / SUM(case when B.lvl = 4 then 1 else 0 end)) * 100)),
ROUND(((COALESCE(SUM(case when B.lvl = 7 AND NULLIF(TRIM(A.add_date),'')!='' then 1 else 0 end), NULL, 0) / SUM(case when B.lvl = 7 then 1 else 0 end)) * 100)),
ROUND(((COALESCE(SUM(case when NULLIF(TRIM(A.add_date),'')!='' then 1 else 0 end), NULL, 0) / SUM(case when B.wh_id >0 then 1 else 0 end)) * 100))
INTO totalWH, DistPer, FieldPer, HFPer, RRPer
FROM
	(
		SELECT
			tbl_warehouse.wh_id,
			stakeholder.lvl,
			tbl_warehouse.wh_name,
			tbl_warehouse.dist_id,
			tbl_warehouse.prov_id,
			tbl_warehouse.stkid,
			tbl_warehouse.stkofficeid,
			tbl_warehouse.wh_rank,
			tbl_wh_data.add_date,
			tbl_wh_data.last_update,
			tbl_wh_data.ip_address
		FROM
			tbl_warehouse
		INNER JOIN wh_user ON tbl_warehouse.wh_id = wh_user.wh_id
		INNER JOIN tbl_wh_data ON tbl_warehouse.wh_id = tbl_wh_data.wh_id
		INNER JOIN stakeholder ON tbl_warehouse.stkofficeid = stakeholder.stkid
		WHERE
			tbl_wh_data.report_month = in_month
		AND tbl_wh_data.report_year = in_year
		AND tbl_wh_data.item_id = in_item
		AND tbl_warehouse.stkid = stkId
		AND tbl_warehouse.prov_id = provId
		AND tbl_warehouse.dist_id = distId
		AND stakeholder.lvl IN (3, 4, 7)
		GROUP BY
			tbl_warehouse.wh_id
		UNION
			SELECT
				tbl_warehouse.wh_id,
				stakeholder.lvl,
				tbl_warehouse.wh_name,
				tbl_warehouse.dist_id,
				tbl_warehouse.prov_id,
				tbl_warehouse.stkid,
				tbl_warehouse.stkofficeid,
				tbl_warehouse.wh_rank,
				tbl_hf_data.created_date AS add_date,
				tbl_hf_data.last_update,
				tbl_hf_data.ip_address
			FROM
				tbl_warehouse
			INNER JOIN wh_user ON tbl_warehouse.wh_id = wh_user.wh_id
			INNER JOIN tbl_hf_data ON tbl_warehouse.wh_id = tbl_hf_data.warehouse_id
			INNER JOIN stakeholder ON tbl_warehouse.stkofficeid = stakeholder.stkid
			WHERE
				MONTH (tbl_hf_data.reporting_date) = in_month
			AND YEAR (tbl_hf_data.reporting_date) = in_year
			AND tbl_hf_data.item_id = itemId
			AND tbl_warehouse.stkid = stkId
			AND tbl_warehouse.prov_id = provId
			AND tbl_warehouse.dist_id = distId
			AND stakeholder.lvl IN (3, 4, 7)
			GROUP BY
				tbl_warehouse.wh_id
	) A
RIGHT JOIN (
	SELECT DISTINCT
		tbl_warehouse.wh_id,
stakeholder.lvl,
		tbl_warehouse.wh_name,
		tbl_warehouse.dist_id,
		tbl_warehouse.prov_id,
		tbl_warehouse.stkid,
		tbl_warehouse.stkofficeid,
		tbl_warehouse.wh_rank,
		MainStk.stkorder,
		MainStk.stkname AS stkMain,
		stakeholder.stkname AS stkOffice,
		District.PkLocID AS districtId,
		District.LocName AS district,
		Province.PkLocID AS provinceId,
		Province.LocName AS province
	FROM
		tbl_warehouse
	INNER JOIN wh_user ON tbl_warehouse.wh_id = wh_user.wh_id
	INNER JOIN stakeholder ON tbl_warehouse.stkofficeid = stakeholder.stkid
	INNER JOIN stakeholder AS MainStk ON tbl_warehouse.stkid = MainStk.stkid
	INNER JOIN tbl_locations AS District ON tbl_warehouse.dist_id = District.PkLocID
	INNER JOIN tbl_locations AS Province ON tbl_warehouse.prov_id = Province.PkLocID
	WHERE
		tbl_warehouse.wh_id NOT IN (
			SELECT
				warehouse_status_history.warehouse_id
			FROM
				warehouse_status_history
			INNER JOIN tbl_warehouse ON warehouse_status_history.warehouse_id = tbl_warehouse.wh_id
			WHERE
				warehouse_status_history.reporting_month = rptDate
			AND warehouse_status_history.`status` = 0
			AND tbl_warehouse.stkid = stkId
		)
	AND tbl_warehouse.reporting_start_month <= rptDate
	AND tbl_warehouse.is_active = 1
	AND tbl_warehouse.stkid = stkId
	AND tbl_warehouse.prov_id = provId
	AND tbl_warehouse.dist_id = distId
	AND stakeholder.lvl IN (3, 4, 7)
) B ON A.wh_id = B.wh_id
AND A.prov_id = B.prov_id
AND A.dist_id = B.dist_id
AND A.stkid = B.stkid
AND A.stkofficeid = B.stkofficeid
ORDER BY
	B.provinceId ASC,
	B.district ASC,
	B.stkorder ASC,
	B.wh_name,

IF (
	A.wh_rank = ''
	OR A.wh_rank IS NULL,
	1,
	0
),
 A.wh_rank,
 A.wh_name ASC;
#END IF;

	#Check if data already present for this district in the Summary Table
	SET totalRecord = '';
	SET pkId = '';
	SELECT
		summary_district.pk_id,
		COUNT(summary_district.pk_id)
		INTO pkId, totalRecord
	FROM
		summary_district
	WHERE
		summary_district.district_id = distId
	AND summary_district.item_id = in_item
	AND summary_district.stakeholder_id = stkId
	AND summary_district.reporting_date = rptDate;

	IF(totalRecord = 0) THEN
		INSERT INTO summary_district SET
			stakeholder_id = stkId,
			item_id = in_item,
			district_id = distId,
			province_id = provId,
			reporting_date = rptDate,
			avg_consumption = AMC,
			consumption = consumption,
			soh_district_store = SOHStore,
			soh_district_lvl = SOH,
dist_reporting_rate = DistPer,
field_reporting_rate = FieldPer,
			reporting_rate = RRPer,
			total_health_facilities = totalWH;
	ELSEIF(totalRecord > 0) THEN
		UPDATE summary_district SET
			stakeholder_id = stkId,
			item_id = in_item,
			district_id = distId,
			province_id = provId,
			reporting_date = rptDate,
			avg_consumption = AMC,
			consumption = consumption,
			soh_district_store = SOHStore,
			soh_district_lvl = SOH,
dist_reporting_rate = DistPer,
field_reporting_rate = FieldPer,
			reporting_rate = RRPer,
			total_health_facilities = totalWH
		WHERE
			pk_id = pkId;
	END IF;

ELSE
	UPDATE tbl_wh_data SET
		tbl_wh_data.is_calculated = 1
	WHERE
		tbl_wh_data.is_calculated = 0
	AND tbl_wh_data.wh_id = 123;

END IF;

-- Check whether the insert was successful
IF code = '00000' THEN
	GET DIAGNOSTICS rows = ROW_COUNT;
	SET result = CONCAT('insert succeeded, row count = ',rows);
ELSE
	SET result = CONCAT('insert failed, error = ',code,', message = ',msg);
END IF;
-- Say what happened
#SELECT result, DistPer, FieldPer,HFPer, RRPer, totalWH;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for REPUpdateSummaryNational
-- ----------------------------
DROP PROCEDURE IF EXISTS `REPUpdateSummaryNational`;
DELIMITER ;;
CREATE   PROCEDURE `REPUpdateSummaryNational`(in_item VARCHAR(10),  in_rpt_date DATE, in_stk INTEGER)
    READS SQL DATA
    DETERMINISTIC
BEGIN

DECLARE stkId INTEGER;
DECLARE consumption DOUBLE;
DECLARE AMC DOUBLE;
DECLARE SOH DOUBLE;
DECLARE SOHStore DOUBLE;
DECLARE RRPer DOUBLE;
DECLARE totalRecord DOUBLE;
DECLARE totalWH DOUBLE;
DECLARE pkId INTEGER;
DECLARE in_month INTEGER;
DECLARE in_year INTEGER;

SELECT SUBSTRING(in_rpt_date, 1, 4) INTO in_year;
SELECT SUBSTRING(in_rpt_date, 6, 2) INTO in_month;

#Calculate the Consumption for that Month
SELECT COALESCE(REPgetConsumption('TS',  in_month, in_year, in_item, in_stk, 0, 0), NULL, 0) INTO consumption FROM DUAL;
#Calculate the Average Monthly Consumption for that Month
SELECT COALESCE(REPgetConsumptionAVG('TS',  in_month, in_year, in_item, in_stk, 0, 0), NULL, 0) INTO AMC FROM DUAL;
#Calculate the National Level Closing Balance for that Month 
SELECT COALESCE(REPgetCB('TS',  in_month, in_year, in_item, in_stk, 0, 0), NULL, 0) INTO SOH FROM DUAL;
#Calculate the National Store Closing Balance for that Month 
SELECT COALESCE(REPgetCB('WS',  in_month, in_year, in_item, in_stk, 0, 0), NULL, 0) INTO SOHStore FROM DUAL;

#IF (consumption != 0 OR AMC != 0 OR SOH != 0 OR SOHStore != 0) THEN
	# Get Reporting Rate of the district
	SELECT
		ROUND(AVG(summary_district.reporting_rate)),
		SUM(summary_district.total_health_facilities)
		INTO RRPer, totalWH
	FROM
		summary_district
	WHERE
		summary_district.stakeholder_id = in_stk
	AND summary_district.item_id = in_item
	AND summary_district.reporting_date = in_rpt_date;

	#Check if data already present for this district in the Summary Table
	SET totalRecord = '';
	SET pkId = '';
	SELECT
		summary_national.pk_id,
		COUNT(summary_national.pk_id)
		INTO pkId, totalRecord
	FROM
		summary_national
	WHERE
		summary_national.item_id = in_item
	AND summary_national.stakeholder_id = in_stk
	AND summary_national.reporting_date = in_rpt_date;

	IF(totalRecord = 0) THEN
		INSERT INTO summary_national SET
			stakeholder_id = in_stk,
			item_id = in_item,
			reporting_date = in_rpt_date,
			avg_consumption = AMC,
			consumption = consumption,
			soh_national_store = SOHStore,
			soh_national_lvl = SOH,
			reporting_rate = RRPer,
			total_health_facilities = totalWH;
	ELSEIF(totalRecord > 0) THEN
		UPDATE summary_national SET
			stakeholder_id = in_stk,
			item_id = in_item,
			reporting_date = in_rpt_date,
			avg_consumption = AMC,
			consumption = consumption,
			soh_national_store = SOHStore,
			soh_national_lvl = SOH,
			reporting_rate = RRPer,
			total_health_facilities = totalWH,
			is_copied = 0
		WHERE
			pk_id = pkId;
	END IF;

#END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for REPUpdateSummaryProvince
-- ----------------------------
DROP PROCEDURE IF EXISTS `REPUpdateSummaryProvince`;
DELIMITER ;;
CREATE   PROCEDURE `REPUpdateSummaryProvince`(in_item VARCHAR(10), in_rpt_date DATE, in_stk INTEGER, in_prov INTEGER)
    READS SQL DATA
    DETERMINISTIC
BEGIN

DECLARE stkId INTEGER;
DECLARE provId INTEGER;
DECLARE consumption DOUBLE;
DECLARE AMC DOUBLE;
DECLARE SOH DOUBLE;
DECLARE SOHStore DOUBLE;
DECLARE RRPer DOUBLE;
DECLARE totalRecord DOUBLE;
DECLARE totalWH DOUBLE;
DECLARE pkId INTEGER;
DECLARE in_month INTEGER;
DECLARE in_year INTEGER;

SELECT SUBSTRING(in_rpt_date, 1, 4) INTO in_year;
SELECT SUBSTRING(in_rpt_date, 6, 2) INTO in_month;

IF(in_prov = 10) THEN #For Central Warehosue
	SELECT
		summary_district.consumption,
		summary_district.avg_consumption,
		summary_district.soh_district_store,
		summary_district.soh_district_lvl
	INTO consumption, AMC, SOH, SOHStore
	FROM
		summary_district
	WHERE
		summary_district.reporting_date = in_rpt_date
	AND summary_district.item_id = in_item
	AND summary_district.province_id = in_prov
	AND summary_district.stakeholder_id = in_stk;
ELSE 
	#Calculate the Consumption for that Month
	SELECT COALESCE(REPgetConsumption('TSP',  in_month, in_year, in_item, in_stk, in_prov, 0), NULL, 0) INTO consumption FROM DUAL;
	#Calculate the Average Monthly Consumption for that Month
	SELECT COALESCE(REPgetConsumptionAVG('TSP',  in_month, in_year, in_item, in_stk, in_prov, 0), NULL, 0) INTO AMC FROM DUAL;
	#Calculate the Province Level Closing Balance for that Month 
	SELECT COALESCE(REPgetCB('TSP',  in_month, in_year, in_item, in_stk, in_prov, 0), NULL, 0) INTO SOH FROM DUAL;
	#Calculate the Province Store Closing Balance for that Month 
	SELECT
		COALESCE(SUM(tbl_wh_data.wh_cbl_a), NULL, 0) INTO SOHStore
	FROM
		tbl_warehouse
	INNER JOIN tbl_wh_data ON tbl_warehouse.wh_id = tbl_wh_data.wh_id
	INNER JOIN stakeholder ON tbl_warehouse.stkofficeid = stakeholder.stkid
	WHERE
		tbl_wh_data.item_id = in_item
	AND tbl_wh_data.report_month = in_month
	AND tbl_wh_data.report_year = in_year
	AND tbl_warehouse.stkid = in_stk
	AND tbl_warehouse.prov_id = in_prov
	AND stakeholder.lvl = 2;

END IF;

#IF (consumption != 0 OR AMC != 0 OR SOH != 0 OR SOHStore != 0) THEN
	# Get Reporting Rate of the district
	SELECT
		ROUND(AVG(summary_district.reporting_rate)),
		SUM(summary_district.total_health_facilities)
		INTO RRPer, totalWH
	FROM
		summary_district
	WHERE
		summary_district.stakeholder_id = in_stk
	AND summary_district.item_id = in_item
	AND summary_district.province_id = in_prov
	AND summary_district.reporting_date = in_rpt_date;

	#Check if data already present for this district in the Summary Table
	SET totalRecord = '';
	SET pkId = '';
	SELECT
		summary_province.pk_id,
		COUNT(summary_province.pk_id)
		INTO pkId, totalRecord
	FROM
		summary_province
	WHERE
		summary_province.province_id = in_prov
	AND summary_province.item_id = in_item
	AND summary_province.stakeholder_id = in_stk
	AND summary_province.reporting_date = in_rpt_date;

	IF(totalRecord = 0) THEN
		INSERT INTO summary_province SET
			stakeholder_id = in_stk,
			item_id = in_item,
			province_id = in_prov,
			reporting_date = in_rpt_date,
			avg_consumption = AMC,
			consumption = consumption,
			soh_province_store = SOHStore,
			soh_province_lvl = SOH,
			reporting_rate = RRPer,
			total_health_facilities = totalWH;
	ELSEIF(totalRecord > 0) THEN
		UPDATE summary_province SET
			stakeholder_id = in_stk,
			item_id = in_item,
			province_id = in_prov,
			reporting_date = in_rpt_date,
			avg_consumption = AMC,
			consumption = consumption,
			soh_province_store = SOHStore,
			soh_province_lvl = SOH,
			reporting_rate = RRPer,
			total_health_facilities = totalWH,
			is_copied = 0
		WHERE
			pk_id = pkId;
	END IF;

#END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for REPUpdateSummaryTableFromWHData
-- ----------------------------
DROP PROCEDURE IF EXISTS `REPUpdateSummaryTableFromWHData`;
DELIMITER ;;
CREATE   PROCEDURE `REPUpdateSummaryTableFromWHData`(in_item VARCHAR(10), in_month INTEGER, in_year INTEGER, in_prov INTEGER, in_dist INTEGER, in_stk INTEGER)
    READS SQL DATA
    DETERMINISTIC
BEGIN

DECLARE consumption DOUBLE;
DECLARE AMC DOUBLE;
DECLARE SOH DOUBLE;
DECLARE RRPer DOUBLE;
DECLARE totalRecord DOUBLE;
DECLARE totalWH DOUBLE;
DECLARE pkId INTEGER;

#Calculate the Consumption for that Month
SELECT COALESCE(REPgetConsumption('WSPD',  in_month, in_year, in_item, in_stk, in_dist, in_dist), NULL, 0) INTO consumption FROM DUAL;
#Calculate the Average Monthly Consumption for that Month
SELECT COALESCE(REPgetConsumptionAVG('WSPD',  in_month, in_year, in_item, in_stk, in_dist, in_dist), NULL, 0) INTO AMC FROM DUAL;
#Calculate the Closing Balance for that Month
SELECT COALESCE(REPgetCB('TSPD',  in_month, in_year, in_item, in_stk, in_dist, in_dist), NULL, 0) INTO SOH FROM DUAL;

IF (consumption != 0 OR AMC != 0 OR SOH != 0) THEN

	# Get Reporting Rate of the district
	SELECT
		A.TotalWH,
		ROUND((COALESCE(B.RptWH, NULL, 0) / A.TotalWH) * 100)
		INTO totalWH, RRPer
	FROM
		(
			SELECT
				tbl_locations.PkLocID,
				tbl_locations.LocName,
				COUNT(tbl_warehouse.wh_id) AS TotalWH
			FROM
				tbl_locations
			INNER JOIN tbl_warehouse ON tbl_locations.PkLocID = tbl_warehouse.dist_id
			WHERE tbl_warehouse.dist_id = in_dist
				AND tbl_warehouse.stkid = in_stk
		) A
	LEFT JOIN (
		SELECT
			tbl_locations.PkLocID,
			COUNT(tbl_wh_data.wh_id) AS RptWH
		FROM
			tbl_locations
		INNER JOIN tbl_warehouse ON tbl_locations.PkLocID = tbl_warehouse.dist_id
		INNER JOIN tbl_wh_data ON tbl_warehouse.wh_id = tbl_wh_data.wh_id
		WHERE
			tbl_wh_data.report_month = in_month
		AND tbl_wh_data.report_year = in_year
		AND tbl_wh_data.item_id = in_item
		AND tbl_warehouse.dist_id = in_dist
		AND tbl_warehouse.stkid = in_stk
	) B ON A.PkLocID = B.PkLocID;

	#Check if data already present for this district in the Summary Table
	SELECT
		summary_table.pk_id,
		COUNT(summary_table.pk_id)
		INTO pkId, totalRecord
	FROM
		summary_table
	WHERE
		summary_table.district_id = in_dist
	AND summary_table.item_id = in_item
	AND summary_table.rpt_date = CONCAT(in_year, '-', LPAD(in_month,2,0), '-01')
	AND summary_table.stakeholder_id = in_stk;

	IF(totalRecord > 0) THEN
		UPDATE summary_table SET
			stakeholder_id = in_stk,
			item_id = in_item,
			district_id = in_dist,
			province_id = in_prov,
			rpt_date = CONCAT(in_year, '-', LPAD(in_month,2,0), '-01'),
			avg_monthly_consumption = AMC,
			consumption = consumption,
			stock_on_hand = SOH,
			reporting_rate = RRPer,
			total_health_facilities = totalWH
		WHERE
			pk_id = pkId;
	ELSE
		INSERT INTO summary_table SET
			stakeholder_id = in_stk,
			item_id = in_item,
			district_id = in_dist,
			province_id = in_prov,
			rpt_date = CONCAT(in_year, '-', LPAD(in_month,2,0), '-01'),
			avg_monthly_consumption = AMC,
			consumption = consumption,
			stock_on_hand = SOH,
			reporting_rate = RRPer,
			total_health_facilities = totalWH;
	END IF;

END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for AdjustQty
-- ----------------------------
DROP FUNCTION IF EXISTS `AdjustQty`;
DELIMITER ;;
CREATE   FUNCTION `AdjustQty`(batchId INTEGER,whId INTEGER) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN 
  DECLARE receive INT;
  DECLARE issue INT;
  DECLARE adjustment INT;
  DECLARE quantity INT;

  SELECT
	IFNULL(Sum(tbl_stock_detail.Qty),0) INTO receive
	FROM
	tbl_stock_detail 
	INNER JOIN stock_batch ON tbl_stock_detail.BatchID = stock_batch.batch_id
  INNER JOIN tbl_stock_master ON tbl_stock_detail.fkStockID = tbl_stock_master.PkStockID
	WHERE
	tbl_stock_master.TranTypeID = 1 AND
	tbl_stock_detail.BatchID = batchId AND
	tbl_stock_master.WHIDTo = whId;

	SELECT
	IFNULL(Sum(tbl_stock_detail.Qty),0) INTO issue
	FROM
	tbl_stock_detail 
	INNER JOIN stock_batch ON tbl_stock_detail.BatchID = stock_batch.batch_id
  INNER JOIN tbl_stock_master ON tbl_stock_detail.fkStockID = tbl_stock_master.PkStockID
	WHERE
	tbl_stock_master.TranTypeID = 2 AND
	tbl_stock_detail.BatchID = batchId AND
	tbl_stock_master.WHIDFrom = whId;

	SELECT
	IFNULL(Sum(tbl_stock_detail.Qty),0) INTO adjustment
	FROM
	tbl_stock_detail
	INNER JOIN stock_batch ON tbl_stock_detail.BatchID = stock_batch.batch_id
  INNER JOIN tbl_stock_master ON tbl_stock_detail.fkStockID = tbl_stock_master.PkStockID
	WHERE
	tbl_stock_master.TranTypeID > 2 AND
	tbl_stock_detail.BatchID = batchId AND
	tbl_stock_master.WHIDFrom = whId;

	SET quantity = receive + issue + adjustment;

	IF(quantity >= 0) THEN
		UPDATE stock_batch SET Qty=quantity	WHERE batch_id=batchId;
	END IF;

	UPDATE stock_batch SET status='Stacked'	WHERE status='Finished' and Qty > 0;
	UPDATE stock_batch SET status='Finished'	WHERE Qty <= 0;


  RETURN(quantity);
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for AdjustQty2
-- ----------------------------
DROP FUNCTION IF EXISTS `AdjustQty2`;
DELIMITER ;;
CREATE   FUNCTION `AdjustQty2`(batchId INTEGER) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN 
  DECLARE receive INT;
  DECLARE issue INT;
  DECLARE adjustment INT;
  DECLARE quantity INT;
DECLARE whId INT;

SELECT
	stock_batch.wh_id INTO whId
	FROM
	stock_batch
	WHERE
	stock_batch.batch_id = batchId;

  SELECT
	IFNULL(Sum(tbl_stock_detail.Qty),0) INTO receive
	FROM
	tbl_stock_detail 
	INNER JOIN stock_batch ON tbl_stock_detail.BatchID = stock_batch.batch_id
  INNER JOIN tbl_stock_master ON tbl_stock_detail.fkStockID = tbl_stock_master.PkStockID
	WHERE
	tbl_stock_master.TranTypeID = 1 AND
	tbl_stock_detail.BatchID = batchId AND
	tbl_stock_master.WHIDTo = whId;

	SELECT
	IFNULL(Sum(tbl_stock_detail.Qty),0) INTO issue
	FROM
	tbl_stock_detail 
	INNER JOIN stock_batch ON tbl_stock_detail.BatchID = stock_batch.batch_id
  INNER JOIN tbl_stock_master ON tbl_stock_detail.fkStockID = tbl_stock_master.PkStockID
	WHERE
	tbl_stock_master.TranTypeID = 2 AND
	tbl_stock_detail.BatchID = batchId AND
	tbl_stock_master.WHIDFrom = whId;

	SELECT
	IFNULL(Sum(tbl_stock_detail.Qty),0) INTO adjustment
	FROM
	tbl_stock_detail
	INNER JOIN stock_batch ON tbl_stock_detail.BatchID = stock_batch.batch_id
  INNER JOIN tbl_stock_master ON tbl_stock_detail.fkStockID = tbl_stock_master.PkStockID
	WHERE
	tbl_stock_master.TranTypeID > 2 AND
	tbl_stock_detail.BatchID = batchId AND
	tbl_stock_master.WHIDFrom = whId;

	SET quantity = receive + issue + adjustment;

	IF(quantity >= 0) THEN
		UPDATE stock_batch SET Qty=quantity	WHERE batch_id=batchId;
	END IF;

	UPDATE stock_batch SET status='Stacked'	WHERE status='Finished' and Qty > 0;
	UPDATE stock_batch SET status='Finished'	WHERE Qty <= 0;

  RETURN(quantity);
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for REPUpdateData_for_dist_wh
-- ----------------------------
DROP FUNCTION IF EXISTS `REPUpdateData_for_dist_wh`;
DELIMITER ;;
CREATE  FUNCTION `REPUpdateData_for_dist_wh`(in_month INTEGER, in_year INTEGER, in_item INTEGER, in_wh INTEGER, in_created_by INTEGER,in_itemrec VARCHAR(20)) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
 
DECLARE openingb INTEGER;
DECLARE receive INTEGER;
DECLARE issue INTEGER;
DECLARE adjustment INTEGER;
DECLARE obadjustment INTEGER;
DECLARE closingb INTEGER;
DECLARE lastrecid INTEGER;
DECLARE lastmonth INTEGER;
DECLARE lastyear INTEGER;
DECLARE wh_dist INTEGER;
DECLARE wh_prov INTEGER;
DECLARE wh_stk INTEGER;
DECLARE adjustmenta INTEGER;
DECLARE adjustmentb INTEGER;
SET adjustmenta = 0;
SET adjustmentb = 0;


SELECT
tbl_warehouse.dist_id,
tbl_warehouse.prov_id,
tbl_warehouse.stkid
INTO 
wh_dist,wh_prov,wh_stk
FROM
tbl_warehouse
WHERE
tbl_warehouse.wh_id = in_wh;



SELECT MONTH(DATE_ADD(CONCAT(in_year, '-', in_month, '-01'),INTERVAL -1 MONTH)) into lastmonth from DUAL;

SELECT YEAR(DATE_ADD(CONCAT(in_year, '-', in_month, '-01'),INTERVAL -1 MONTH)) into lastyear from DUAL;

/*SET openingb = REPgetCB('WSPD',lastmonth,lastyear,in_itemrec,wh_stk,wh_prov,wh_dist);*/
/*SET openingb_old = REPgetCBWHData(lastmonth, lastyear, in_item, in_wh) ;*/
SET openingb = REPgetCBWHData(lastmonth, lastyear, in_item, in_wh);

SET receive = REPgetTransWHData(1,in_month, in_year, in_item, in_wh);

SET issue = REPgetTransWHData(2,in_month, in_year, in_item, in_wh) ;

SET obadjustment = REPgetTransWHData(4,in_month, in_year, in_item, in_wh);

SET adjustment = REPgetTransWHData(3,in_month, in_year, in_item, in_wh);

SET adjustment = adjustment - obadjustment;
SET openingb = openingb + obadjustment;

IF adjustment < 0 THEN
SET adjustmentb = ABS(adjustment);
SET closingb = ( IFNULL(openingb,0)  +  IFNULL(receive,0)  - ABS(adjustment) ) - IFNULL(issue,0);
ELSE 
SET adjustmenta = ABS(adjustment);
SET closingb = ( IFNULL(openingb,0)  + IFNULL(receive,0) + adjustment) -  IFNULL(issue,0);
END IF;



DELETE from tbl_wh_data WHERE report_month=in_month AND report_year=in_year AND item_id=in_itemrec AND wh_id=in_wh;



INSERT into tbl_wh_data (report_month,report_year,item_id,wh_id,wh_obl_a,wh_received,wh_issue_up,wh_cbl_a,wh_adja,wh_adjb,RptDate,created_by,add_date,last_update) 
VALUES(in_month,in_year,in_itemrec,in_wh,openingb,receive,issue,closingb,adjustmenta,adjustmentb,CONCAT(in_year, '-', in_month, '-01'),in_created_by,NOW(),NOW());

return 1;

END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Update Province Summary Table Insert`;
DELIMITER ;;
CREATE TRIGGER `Update Province Summary Table Insert` AFTER INSERT ON `summary_district` FOR EACH ROW BEGIN
    CALL REPUpdateSummaryProvince(NEW.item_id, NEW.reporting_date, NEW.stakeholder_id, NEW.province_id);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Update Province Summary Table Update`;
DELIMITER ;;
CREATE TRIGGER `Update Province Summary Table Update` AFTER UPDATE ON `summary_district` FOR EACH ROW BEGIN
    CALL REPUpdateSummaryProvince(NEW.item_id, NEW.reporting_date, NEW.stakeholder_id, NEW.province_id);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Update National Summary Table Insert`;
DELIMITER ;;
CREATE TRIGGER `Update National Summary Table Insert` AFTER INSERT ON `summary_province` FOR EACH ROW BEGIN
    CALL REPUpdateSummaryNational(NEW.item_id, NEW.reporting_date, NEW.stakeholder_id);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Update National Summary Table Update`;
DELIMITER ;;
CREATE TRIGGER `Update National Summary Table Update` AFTER UPDATE ON `summary_province` FOR EACH ROW BEGIN
    IF(NEW.consumption <> OLD.consumption || NEW.avg_consumption <> OLD.avg_consumption || NEW.soh_province_store <> OLD.soh_province_store || NEW.soh_province_lvl <> OLD.soh_province_lvl || NEW.reporting_rate <> OLD.reporting_rate || NEW.total_health_facilities <> OLD.total_health_facilities) THEN
        CALL REPUpdateSummaryNational(NEW.item_id, NEW.reporting_date, NEW.stakeholder_id);
    END IF;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Add Facility Type Data`;
DELIMITER ;;
CREATE TRIGGER `Add Facility Type Data` AFTER INSERT ON `tbl_hf_data` FOR EACH ROW BEGIN
    CALL REPUpdateHFTypeFromHF(NEW.warehouse_id, NEW.item_id, NEW.reporting_date);
    CALL REPUpdateHFData(NEW.warehouse_id, NEW.item_id, NEW.reporting_date);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `AddDistrictSum`;
DELIMITER ;;
CREATE TRIGGER `AddDistrictSum` AFTER INSERT ON `tbl_wh_data` FOR EACH ROW BEGIN
    CALL REPUpdateDistrictStockWHData(NEW.wh_id, NEW.item_id, NEW.RptDate);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `UpdateDistrictSum`;
DELIMITER ;;
CREATE TRIGGER `UpdateDistrictSum` AFTER UPDATE ON `tbl_wh_data` FOR EACH ROW BEGIN
    CALL REPUpdateDistrictStockWHData(NEW.wh_id, NEW.item_id, NEW.RptDate);
END
;;
DELIMITER ;
