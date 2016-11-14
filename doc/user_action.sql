/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : yiiboot

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2016-11-10 17:30:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user_action`
-- ----------------------------
DROP TABLE IF EXISTS `user_action`;
CREATE TABLE `user_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `open_id` varchar(50) NOT NULL COMMENT 'openid',
  `walk` int(10) NOT NULL DEFAULT '0' COMMENT '行走步数',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_action
-- ----------------------------
INSERT INTO `user_action` VALUES ('1', 'ozRSwwvdtiIIOa3gJvNbO23OOaS0', '30', '2016-11-10 17:24:02');
INSERT INTO `user_action` VALUES ('2', 'ozRSwwvdtiIIOa3gJvNbO23OOaS0', '40', '2016-11-10 17:24:15');
INSERT INTO `user_action` VALUES ('3', 'ozRSwwvdtiIIOa3gJvNbO23OOaS0', '35', '2016-11-10 17:24:26');
