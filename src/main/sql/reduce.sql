/*
 Navicat Premium Data Transfer

 Source Server         : localhost(root root)
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : reduce

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 27/03/2020 17:58:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_info
-- ----------------------------
DROP TABLE IF EXISTS `app_info`;
CREATE TABLE `app_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `unionId` varchar(32) DEFAULT NULL,
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_uk` (`unionId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of app_info
-- ----------------------------
BEGIN;
INSERT INTO `app_info` VALUES (1, 'test', 1, '4bed66e03e6448698e4fc21ab4de7964', '2020-03-09 16:51:35', 1);
COMMIT;

-- ----------------------------
-- Table structure for email_queue
-- ----------------------------
DROP TABLE IF EXISTS `email_queue`;
CREATE TABLE `email_queue` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `unionId` varchar(32) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `context` varchar(256) DEFAULT NULL,
  `targeEmail` varchar(32) DEFAULT NULL,
  `status` int(2) DEFAULT '0',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `millisecond` bigint(32) DEFAULT NULL,
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of email_queue
-- ----------------------------
BEGIN;
INSERT INTO `email_queue` VALUES (1, '6afdad63de0bba58b706f622c5ed97b8', 'Reduce 验证邮件', '您的验证码是：3460', 'test@qq.com', 1, '2020-03-09 16:50:12', 1583743812326, '2020-03-09 16:50:12');
INSERT INTO `email_queue` VALUES (2, 'd6a0932de9458e542f937270462c9460', 'Reduce 验证邮件', '您的验证码是：7412', 'test11@qq.com', 1, '2020-03-09 17:02:18', 1583744537602, '2020-03-09 17:02:18');
INSERT INTO `email_queue` VALUES (10, '9142f4b30db717165119b6f8a022f2a7', 'Reduce 验证邮件', '您的验证码是：4166', '448609605@qq.com', 1, '2020-03-10 11:21:03', 1583810463387, '2020-03-10 11:21:03');
COMMIT;

-- ----------------------------
-- Table structure for short_info
-- ----------------------------
DROP TABLE IF EXISTS `short_info`;
CREATE TABLE `short_info` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `frequency` bigint(32) NOT NULL DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `appId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9223372036854775807 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of short_info
-- ----------------------------
BEGIN;
INSERT INTO `short_info` VALUES (9223372036854775807, 1, 1, 1, 1, 'http://baidu.com?f=334334', '2020-03-09 19:21:42');
COMMIT;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(32) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_uk` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_info
-- ----------------------------
BEGIN;
INSERT INTO `user_info` VALUES (1, 'test@qq.com', 'testtest', 1, '2020-03-09 16:50:44');
INSERT INTO `user_info` VALUES (2, 'test11@qq.com', 'testtest', 1, '2020-03-09 17:02:46');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
