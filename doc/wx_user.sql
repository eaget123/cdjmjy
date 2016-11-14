/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : yiiboot

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2016-11-10 17:03:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wx_user`
-- ----------------------------
DROP TABLE IF EXISTS `wx_user`;
CREATE TABLE `wx_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `open_id` varchar(50) NOT NULL COMMENT 'openid',
  `nike_name` varchar(30) NOT NULL COMMENT '昵称',
  `head_img_url` varchar(255) NOT NULL COMMENT '头像',
  `sex` varchar(20) NOT NULL COMMENT '性别',
  `city` varchar(50) NOT NULL COMMENT '所在城市',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_user
-- ----------------------------
INSERT INTO `wx_user` VALUES ('1', 'ozRSwwvdtiIIOa3gJvNbO23OOaS0', '简jian单dan', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELvh9RrMj8LsUg2s6QxkMxBxB3j5iaBs32tL9WnGgmp4GdeCMaPn9A090Q3icnfGx4K5nUfUP0lnyAg/0', '1', '成都', '2016-11-10 16:44:03');
INSERT INTO `wx_user` VALUES ('3', 'ozRSwwvdtiIIOa3gJvNbO23OOaS0', '简jian单dan', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELvh9RrMj8LsUg2s6QxkMxBxB3j5iaBs32tL9WnGgmp4GdeCMaPn9A090Q3icnfGx4K5nUfUP0lnyAg/0', '1', '成都', '2016-11-10 17:00:22');
