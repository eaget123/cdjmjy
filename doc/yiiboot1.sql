/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : yiiboot

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2016-11-10 16:00:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `controller_id` varchar(20) DEFAULT NULL COMMENT '控制器ID',
  `action_id` varchar(20) DEFAULT NULL COMMENT '方法ID',
  `url` varchar(200) DEFAULT NULL COMMENT '访问地址',
  `module_name` varchar(50) DEFAULT NULL COMMENT '模块',
  `func_name` varchar(50) DEFAULT NULL COMMENT '功能',
  `right_name` varchar(50) DEFAULT NULL COMMENT '方法',
  `client_ip` varchar(15) DEFAULT NULL COMMENT '客户端IP',
  `create_user` varchar(50) DEFAULT NULL COMMENT '用户',
  `create_date` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `index_create_date` (`create_date`),
  KEY `index_create_index` (`create_user`),
  KEY `index_url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=493 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_log
-- ----------------------------
INSERT INTO `admin_log` VALUES ('1', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-08 17:38:57');
INSERT INTO `admin_log` VALUES ('2', 'admin-module', 'create', 'admin-module/create', '菜单用户权限', '菜单管理', '一级菜单添加', '127.0.0.1', 'admin', '2016-11-08 17:39:21');
INSERT INTO `admin_log` VALUES ('3', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-08 17:39:22');
INSERT INTO `admin_log` VALUES ('4', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2016-11-08 17:39:26');
INSERT INTO `admin_log` VALUES ('5', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', '127.0.0.1', 'admin', '2016-11-08 17:39:52');
INSERT INTO `admin_log` VALUES ('6', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2016-11-08 17:39:53');
INSERT INTO `admin_log` VALUES ('7', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-08 17:39:56');
INSERT INTO `admin_log` VALUES ('8', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-08 17:40:00');
INSERT INTO `admin_log` VALUES ('9', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', '127.0.0.1', 'admin', '2016-11-08 17:40:37');
INSERT INTO `admin_log` VALUES ('10', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-08 17:40:38');
INSERT INTO `admin_log` VALUES ('11', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-08 17:40:51');
INSERT INTO `admin_log` VALUES ('12', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-08 17:40:56');
INSERT INTO `admin_log` VALUES ('13', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-08 17:40:59');
INSERT INTO `admin_log` VALUES ('14', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:41:10');
INSERT INTO `admin_log` VALUES ('15', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:41:37');
INSERT INTO `admin_log` VALUES ('16', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:41:38');
INSERT INTO `admin_log` VALUES ('17', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:41:44');
INSERT INTO `admin_log` VALUES ('18', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:41:49');
INSERT INTO `admin_log` VALUES ('19', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:41:51');
INSERT INTO `admin_log` VALUES ('20', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:44:14');
INSERT INTO `admin_log` VALUES ('21', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-08 17:50:29');
INSERT INTO `admin_log` VALUES ('22', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-08 17:50:31');
INSERT INTO `admin_log` VALUES ('23', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-08 17:50:35');
INSERT INTO `admin_log` VALUES ('24', 'admin-module', 'delete', 'admin-module/delete', '菜单用户权限', '菜单管理', '一级菜单删除', '127.0.0.1', 'admin', '2016-11-08 17:50:40');
INSERT INTO `admin_log` VALUES ('25', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-08 17:50:41');
INSERT INTO `admin_log` VALUES ('26', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-08 17:50:43');
INSERT INTO `admin_log` VALUES ('27', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-08 17:50:56');
INSERT INTO `admin_log` VALUES ('28', 'admin-module', 'create', 'admin-module/create', '菜单用户权限', '菜单管理', '一级菜单添加', '127.0.0.1', 'admin', '2016-11-08 17:51:16');
INSERT INTO `admin_log` VALUES ('29', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-08 17:51:18');
INSERT INTO `admin_log` VALUES ('30', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2016-11-08 17:51:20');
INSERT INTO `admin_log` VALUES ('31', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', '127.0.0.1', 'admin', '2016-11-08 17:52:36');
INSERT INTO `admin_log` VALUES ('32', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2016-11-08 17:52:37');
INSERT INTO `admin_log` VALUES ('33', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-08 17:52:40');
INSERT INTO `admin_log` VALUES ('34', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-08 17:52:43');
INSERT INTO `admin_log` VALUES ('35', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', '127.0.0.1', 'admin', '2016-11-08 17:52:56');
INSERT INTO `admin_log` VALUES ('36', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-08 17:52:57');
INSERT INTO `admin_log` VALUES ('37', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-08 17:53:02');
INSERT INTO `admin_log` VALUES ('38', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-08 17:53:05');
INSERT INTO `admin_log` VALUES ('39', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-08 17:53:08');
INSERT INTO `admin_log` VALUES ('40', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:53:20');
INSERT INTO `admin_log` VALUES ('41', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:54:00');
INSERT INTO `admin_log` VALUES ('42', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:54:02');
INSERT INTO `admin_log` VALUES ('43', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:54:07');
INSERT INTO `admin_log` VALUES ('44', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:54:12');
INSERT INTO `admin_log` VALUES ('45', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:54:13');
INSERT INTO `admin_log` VALUES ('46', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:55:20');
INSERT INTO `admin_log` VALUES ('47', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:55:56');
INSERT INTO `admin_log` VALUES ('48', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:55:58');
INSERT INTO `admin_log` VALUES ('49', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:56:08');
INSERT INTO `admin_log` VALUES ('50', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:56:10');
INSERT INTO `admin_log` VALUES ('51', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:56:20');
INSERT INTO `admin_log` VALUES ('52', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:56:21');
INSERT INTO `admin_log` VALUES ('53', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:56:26');
INSERT INTO `admin_log` VALUES ('54', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:56:30');
INSERT INTO `admin_log` VALUES ('55', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:57:00');
INSERT INTO `admin_log` VALUES ('56', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:57:06');
INSERT INTO `admin_log` VALUES ('57', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:57:14');
INSERT INTO `admin_log` VALUES ('58', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:58:00');
INSERT INTO `admin_log` VALUES ('59', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:58:03');
INSERT INTO `admin_log` VALUES ('60', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:58:05');
INSERT INTO `admin_log` VALUES ('61', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:58:07');
INSERT INTO `admin_log` VALUES ('62', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:58:17');
INSERT INTO `admin_log` VALUES ('63', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:58:22');
INSERT INTO `admin_log` VALUES ('64', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:58:26');
INSERT INTO `admin_log` VALUES ('65', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:58:28');
INSERT INTO `admin_log` VALUES ('66', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 17:58:31');
INSERT INTO `admin_log` VALUES ('67', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 18:02:30');
INSERT INTO `admin_log` VALUES ('68', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 18:02:35');
INSERT INTO `admin_log` VALUES ('69', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 18:02:49');
INSERT INTO `admin_log` VALUES ('70', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 18:02:53');
INSERT INTO `admin_log` VALUES ('71', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 18:02:56');
INSERT INTO `admin_log` VALUES ('72', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 18:02:59');
INSERT INTO `admin_log` VALUES ('73', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 18:05:26');
INSERT INTO `admin_log` VALUES ('74', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 18:05:30');
INSERT INTO `admin_log` VALUES ('75', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 18:05:33');
INSERT INTO `admin_log` VALUES ('76', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 18:05:36');
INSERT INTO `admin_log` VALUES ('77', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 18:05:48');
INSERT INTO `admin_log` VALUES ('78', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-08 18:05:52');
INSERT INTO `admin_log` VALUES ('79', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-08 18:06:47');
INSERT INTO `admin_log` VALUES ('80', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-08 18:06:50');
INSERT INTO `admin_log` VALUES ('81', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', '127.0.0.1', 'admin', '2016-11-08 18:06:56');
INSERT INTO `admin_log` VALUES ('82', 'admin-user', 'create', 'admin-user/create', '菜单用户权限', '用户管理', '用户操作', '127.0.0.1', 'admin', '2016-11-08 18:07:07');
INSERT INTO `admin_log` VALUES ('83', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', '127.0.0.1', 'admin', '2016-11-08 18:07:09');
INSERT INTO `admin_log` VALUES ('84', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-08 18:07:12');
INSERT INTO `admin_log` VALUES ('85', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-08 18:07:15');
INSERT INTO `admin_log` VALUES ('86', 'admin-user-role', 'index', 'admin-user-role/index', '菜单用户权限', '角色管理', '分配用户', '127.0.0.1', 'admin', '2016-11-08 18:07:18');
INSERT INTO `admin_log` VALUES ('87', 'admin-user-role', 'create', 'admin-user-role/create', '菜单用户权限', '角色管理', '分配用户', '127.0.0.1', 'admin', '2016-11-08 18:07:25');
INSERT INTO `admin_log` VALUES ('88', 'admin-user-role', 'create', 'admin-user-role/create', '菜单用户权限', '角色管理', '分配用户', '127.0.0.1', 'admin', '2016-11-08 18:07:31');
INSERT INTO `admin_log` VALUES ('89', 'admin-user-role', 'index', 'admin-user-role/index', '菜单用户权限', '角色管理', '分配用户', '127.0.0.1', 'admin', '2016-11-08 18:07:33');
INSERT INTO `admin_log` VALUES ('90', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 09:59:08');
INSERT INTO `admin_log` VALUES ('91', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:05:55');
INSERT INTO `admin_log` VALUES ('92', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:06:36');
INSERT INTO `admin_log` VALUES ('93', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:09:09');
INSERT INTO `admin_log` VALUES ('94', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:09:40');
INSERT INTO `admin_log` VALUES ('95', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:10:22');
INSERT INTO `admin_log` VALUES ('96', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:10:58');
INSERT INTO `admin_log` VALUES ('97', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:12:09');
INSERT INTO `admin_log` VALUES ('98', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:12:12');
INSERT INTO `admin_log` VALUES ('99', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-09 10:13:34');
INSERT INTO `admin_log` VALUES ('100', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-09 10:15:34');
INSERT INTO `admin_log` VALUES ('101', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:15:38');
INSERT INTO `admin_log` VALUES ('102', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:15:53');
INSERT INTO `admin_log` VALUES ('103', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:16:02');
INSERT INTO `admin_log` VALUES ('104', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:16:07');
INSERT INTO `admin_log` VALUES ('105', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:16:10');
INSERT INTO `admin_log` VALUES ('106', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-09 10:45:02');
INSERT INTO `admin_log` VALUES ('107', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2016-11-09 10:45:14');
INSERT INTO `admin_log` VALUES ('108', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-09 10:45:17');
INSERT INTO `admin_log` VALUES ('109', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-09 10:45:25');
INSERT INTO `admin_log` VALUES ('110', 'admin-right', 'update', 'admin-right/update', '菜单用户权限', '菜单管理', '路由添加', '127.0.0.1', 'admin', '2016-11-09 10:45:39');
INSERT INTO `admin_log` VALUES ('111', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-09 10:45:40');
INSERT INTO `admin_log` VALUES ('112', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:45:45');
INSERT INTO `admin_log` VALUES ('113', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:45:58');
INSERT INTO `admin_log` VALUES ('114', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:46:17');
INSERT INTO `admin_log` VALUES ('115', 'school-rank', 'test', 'school-rank/test', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:46:23');
INSERT INTO `admin_log` VALUES ('116', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:46:29');
INSERT INTO `admin_log` VALUES ('117', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-09 10:47:50');
INSERT INTO `admin_log` VALUES ('118', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2016-11-09 10:47:53');
INSERT INTO `admin_log` VALUES ('119', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-09 10:48:05');
INSERT INTO `admin_log` VALUES ('120', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2016-11-09 10:48:16');
INSERT INTO `admin_log` VALUES ('121', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-09 10:48:19');
INSERT INTO `admin_log` VALUES ('122', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2016-11-09 10:48:22');
INSERT INTO `admin_log` VALUES ('123', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-09 10:48:26');
INSERT INTO `admin_log` VALUES ('124', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-09 10:48:34');
INSERT INTO `admin_log` VALUES ('125', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-09 10:48:40');
INSERT INTO `admin_log` VALUES ('126', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-09 10:48:48');
INSERT INTO `admin_log` VALUES ('127', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-09 10:49:01');
INSERT INTO `admin_log` VALUES ('128', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-09 10:49:07');
INSERT INTO `admin_log` VALUES ('129', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-09 10:49:13');
INSERT INTO `admin_log` VALUES ('130', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:56:34');
INSERT INTO `admin_log` VALUES ('131', 'school-rank', 'test', 'school-rank/test', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 10:56:42');
INSERT INTO `admin_log` VALUES ('132', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 11:27:18');
INSERT INTO `admin_log` VALUES ('133', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-09 11:27:23');
INSERT INTO `admin_log` VALUES ('134', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-09 11:27:24');
INSERT INTO `admin_log` VALUES ('135', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-09 11:27:28');
INSERT INTO `admin_log` VALUES ('136', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2016-11-09 11:27:32');
INSERT INTO `admin_log` VALUES ('137', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-09 11:27:35');
INSERT INTO `admin_log` VALUES ('138', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-09 11:27:38');
INSERT INTO `admin_log` VALUES ('139', 'admin-right', 'update', 'admin-right/update', '菜单用户权限', '菜单管理', '路由添加', '127.0.0.1', 'admin', '2016-11-09 11:27:42');
INSERT INTO `admin_log` VALUES ('140', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-09 11:27:43');
INSERT INTO `admin_log` VALUES ('141', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 11:27:46');
INSERT INTO `admin_log` VALUES ('142', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 11:27:58');
INSERT INTO `admin_log` VALUES ('143', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 11:28:14');
INSERT INTO `admin_log` VALUES ('144', 'school-rank', 'page1', 'school-rank/page1', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 11:28:21');
INSERT INTO `admin_log` VALUES ('145', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 11:28:27');
INSERT INTO `admin_log` VALUES ('146', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 11:29:25');
INSERT INTO `admin_log` VALUES ('147', 'school-rank', 'page1', 'school-rank/page1', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 11:29:32');
INSERT INTO `admin_log` VALUES ('148', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 17:11:41');
INSERT INTO `admin_log` VALUES ('149', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-09 17:11:48');
INSERT INTO `admin_log` VALUES ('150', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'eaget', '2016-11-09 17:12:41');
INSERT INTO `admin_log` VALUES ('151', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'eaget', '2016-11-09 17:12:58');
INSERT INTO `admin_log` VALUES ('152', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'eaget', '2016-11-09 17:13:00');
INSERT INTO `admin_log` VALUES ('153', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'eaget', '2016-11-09 17:13:08');
INSERT INTO `admin_log` VALUES ('154', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'eaget', '2016-11-09 17:13:21');
INSERT INTO `admin_log` VALUES ('155', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'eaget', '2016-11-09 17:13:26');
INSERT INTO `admin_log` VALUES ('156', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', '127.0.0.1', 'eaget', '2016-11-09 17:14:04');
INSERT INTO `admin_log` VALUES ('157', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', '127.0.0.1', 'eaget', '2016-11-09 17:14:12');
INSERT INTO `admin_log` VALUES ('158', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', '127.0.0.1', 'eaget', '2016-11-09 17:14:43');
INSERT INTO `admin_log` VALUES ('159', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', '127.0.0.1', 'eaget', '2016-11-09 17:14:58');
INSERT INTO `admin_log` VALUES ('160', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', '127.0.0.1', 'eaget', '2016-11-09 17:15:02');
INSERT INTO `admin_log` VALUES ('161', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', '127.0.0.1', 'eaget', '2016-11-09 17:15:05');
INSERT INTO `admin_log` VALUES ('162', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', '127.0.0.1', 'eaget', '2016-11-09 17:15:09');
INSERT INTO `admin_log` VALUES ('163', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'eaget', '2016-11-09 17:15:17');
INSERT INTO `admin_log` VALUES ('164', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 10:11:43');
INSERT INTO `admin_log` VALUES ('165', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 10:40:55');
INSERT INTO `admin_log` VALUES ('166', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 10:42:47');
INSERT INTO `admin_log` VALUES ('167', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 10:43:04');
INSERT INTO `admin_log` VALUES ('168', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 10:45:26');
INSERT INTO `admin_log` VALUES ('169', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 10:45:43');
INSERT INTO `admin_log` VALUES ('170', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 10:46:05');
INSERT INTO `admin_log` VALUES ('171', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 10:46:45');
INSERT INTO `admin_log` VALUES ('172', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 10:47:37');
INSERT INTO `admin_log` VALUES ('173', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 10:49:49');
INSERT INTO `admin_log` VALUES ('174', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 10:49:51');
INSERT INTO `admin_log` VALUES ('175', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 10:49:52');
INSERT INTO `admin_log` VALUES ('176', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 10:51:39');
INSERT INTO `admin_log` VALUES ('177', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 10:55:26');
INSERT INTO `admin_log` VALUES ('178', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:02:59');
INSERT INTO `admin_log` VALUES ('179', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:05:54');
INSERT INTO `admin_log` VALUES ('180', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:08:24');
INSERT INTO `admin_log` VALUES ('181', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:08:52');
INSERT INTO `admin_log` VALUES ('182', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:09:01');
INSERT INTO `admin_log` VALUES ('183', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:09:07');
INSERT INTO `admin_log` VALUES ('184', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:09:08');
INSERT INTO `admin_log` VALUES ('185', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:14:31');
INSERT INTO `admin_log` VALUES ('186', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:14:47');
INSERT INTO `admin_log` VALUES ('187', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:14:53');
INSERT INTO `admin_log` VALUES ('188', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:18:17');
INSERT INTO `admin_log` VALUES ('189', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:18:47');
INSERT INTO `admin_log` VALUES ('190', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:19:03');
INSERT INTO `admin_log` VALUES ('191', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:19:09');
INSERT INTO `admin_log` VALUES ('192', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:19:16');
INSERT INTO `admin_log` VALUES ('193', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:20:53');
INSERT INTO `admin_log` VALUES ('194', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:21:05');
INSERT INTO `admin_log` VALUES ('195', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:21:48');
INSERT INTO `admin_log` VALUES ('196', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:21:58');
INSERT INTO `admin_log` VALUES ('197', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:24:24');
INSERT INTO `admin_log` VALUES ('198', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:24:35');
INSERT INTO `admin_log` VALUES ('199', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:25:46');
INSERT INTO `admin_log` VALUES ('200', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:26:01');
INSERT INTO `admin_log` VALUES ('201', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:27:45');
INSERT INTO `admin_log` VALUES ('202', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:27:55');
INSERT INTO `admin_log` VALUES ('203', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:28:31');
INSERT INTO `admin_log` VALUES ('204', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:28:41');
INSERT INTO `admin_log` VALUES ('205', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:31:35');
INSERT INTO `admin_log` VALUES ('206', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:31:44');
INSERT INTO `admin_log` VALUES ('207', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:31:45');
INSERT INTO `admin_log` VALUES ('208', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:34:28');
INSERT INTO `admin_log` VALUES ('209', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:34:42');
INSERT INTO `admin_log` VALUES ('210', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:36:48');
INSERT INTO `admin_log` VALUES ('211', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:36:57');
INSERT INTO `admin_log` VALUES ('212', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:37:30');
INSERT INTO `admin_log` VALUES ('213', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:37:40');
INSERT INTO `admin_log` VALUES ('214', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:37:41');
INSERT INTO `admin_log` VALUES ('215', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:39:00');
INSERT INTO `admin_log` VALUES ('216', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:39:12');
INSERT INTO `admin_log` VALUES ('217', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:39:35');
INSERT INTO `admin_log` VALUES ('218', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:39:44');
INSERT INTO `admin_log` VALUES ('219', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:40:50');
INSERT INTO `admin_log` VALUES ('220', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:41:00');
INSERT INTO `admin_log` VALUES ('221', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:41:08');
INSERT INTO `admin_log` VALUES ('222', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:41:29');
INSERT INTO `admin_log` VALUES ('223', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:41:38');
INSERT INTO `admin_log` VALUES ('224', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:42:08');
INSERT INTO `admin_log` VALUES ('225', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:42:18');
INSERT INTO `admin_log` VALUES ('226', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:46:10');
INSERT INTO `admin_log` VALUES ('227', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:46:18');
INSERT INTO `admin_log` VALUES ('228', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:49:28');
INSERT INTO `admin_log` VALUES ('229', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:49:41');
INSERT INTO `admin_log` VALUES ('230', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:50:01');
INSERT INTO `admin_log` VALUES ('231', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:50:13');
INSERT INTO `admin_log` VALUES ('232', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:51:06');
INSERT INTO `admin_log` VALUES ('233', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:51:15');
INSERT INTO `admin_log` VALUES ('234', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:51:56');
INSERT INTO `admin_log` VALUES ('235', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:52:03');
INSERT INTO `admin_log` VALUES ('236', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:53:51');
INSERT INTO `admin_log` VALUES ('237', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:55:26');
INSERT INTO `admin_log` VALUES ('238', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:55:33');
INSERT INTO `admin_log` VALUES ('239', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:55:42');
INSERT INTO `admin_log` VALUES ('240', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:55:49');
INSERT INTO `admin_log` VALUES ('241', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:56:14');
INSERT INTO `admin_log` VALUES ('242', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:56:23');
INSERT INTO `admin_log` VALUES ('243', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:57:36');
INSERT INTO `admin_log` VALUES ('244', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:57:47');
INSERT INTO `admin_log` VALUES ('245', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:58:15');
INSERT INTO `admin_log` VALUES ('246', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:58:32');
INSERT INTO `admin_log` VALUES ('247', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:58:39');
INSERT INTO `admin_log` VALUES ('248', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:58:48');
INSERT INTO `admin_log` VALUES ('249', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 11:58:49');
INSERT INTO `admin_log` VALUES ('250', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:24:00');
INSERT INTO `admin_log` VALUES ('251', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:24:23');
INSERT INTO `admin_log` VALUES ('252', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:24:24');
INSERT INTO `admin_log` VALUES ('253', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:27:22');
INSERT INTO `admin_log` VALUES ('254', 'school-rank', 'delete', 'school-rank/delete', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:29:40');
INSERT INTO `admin_log` VALUES ('255', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:29:42');
INSERT INTO `admin_log` VALUES ('256', 'school-rank', 'create', 'school-rank/create', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:29:54');
INSERT INTO `admin_log` VALUES ('257', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:29:56');
INSERT INTO `admin_log` VALUES ('258', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:30:39');
INSERT INTO `admin_log` VALUES ('259', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:30:56');
INSERT INTO `admin_log` VALUES ('260', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:33:03');
INSERT INTO `admin_log` VALUES ('261', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:33:08');
INSERT INTO `admin_log` VALUES ('262', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:33:17');
INSERT INTO `admin_log` VALUES ('263', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:33:19');
INSERT INTO `admin_log` VALUES ('264', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:33:46');
INSERT INTO `admin_log` VALUES ('265', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:35:06');
INSERT INTO `admin_log` VALUES ('266', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:35:09');
INSERT INTO `admin_log` VALUES ('267', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:35:11');
INSERT INTO `admin_log` VALUES ('268', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:35:14');
INSERT INTO `admin_log` VALUES ('269', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:35:17');
INSERT INTO `admin_log` VALUES ('270', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:35:24');
INSERT INTO `admin_log` VALUES ('271', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:35:25');
INSERT INTO `admin_log` VALUES ('272', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:35:28');
INSERT INTO `admin_log` VALUES ('273', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:35:33');
INSERT INTO `admin_log` VALUES ('274', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:35:44');
INSERT INTO `admin_log` VALUES ('275', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:35:45');
INSERT INTO `admin_log` VALUES ('276', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:35:48');
INSERT INTO `admin_log` VALUES ('277', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:35:56');
INSERT INTO `admin_log` VALUES ('278', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:35:57');
INSERT INTO `admin_log` VALUES ('279', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:36:00');
INSERT INTO `admin_log` VALUES ('280', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:36:08');
INSERT INTO `admin_log` VALUES ('281', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:36:10');
INSERT INTO `admin_log` VALUES ('282', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:36:13');
INSERT INTO `admin_log` VALUES ('283', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:36:21');
INSERT INTO `admin_log` VALUES ('284', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:36:22');
INSERT INTO `admin_log` VALUES ('285', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:36:27');
INSERT INTO `admin_log` VALUES ('286', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:36:36');
INSERT INTO `admin_log` VALUES ('287', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:36:38');
INSERT INTO `admin_log` VALUES ('288', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:36:40');
INSERT INTO `admin_log` VALUES ('289', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:36:48');
INSERT INTO `admin_log` VALUES ('290', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:36:50');
INSERT INTO `admin_log` VALUES ('291', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:39:17');
INSERT INTO `admin_log` VALUES ('292', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:39:44');
INSERT INTO `admin_log` VALUES ('293', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:39:48');
INSERT INTO `admin_log` VALUES ('294', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:39:50');
INSERT INTO `admin_log` VALUES ('295', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:48:01');
INSERT INTO `admin_log` VALUES ('296', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:52:18');
INSERT INTO `admin_log` VALUES ('297', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:52:29');
INSERT INTO `admin_log` VALUES ('298', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 12:54:41');
INSERT INTO `admin_log` VALUES ('299', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:54:56');
INSERT INTO `admin_log` VALUES ('300', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:55:04');
INSERT INTO `admin_log` VALUES ('301', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:55:18');
INSERT INTO `admin_log` VALUES ('302', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:55:35');
INSERT INTO `admin_log` VALUES ('303', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:55:39');
INSERT INTO `admin_log` VALUES ('304', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:55:48');
INSERT INTO `admin_log` VALUES ('305', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:55:51');
INSERT INTO `admin_log` VALUES ('306', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:56:09');
INSERT INTO `admin_log` VALUES ('307', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:56:12');
INSERT INTO `admin_log` VALUES ('308', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:56:15');
INSERT INTO `admin_log` VALUES ('309', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:56:25');
INSERT INTO `admin_log` VALUES ('310', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:56:28');
INSERT INTO `admin_log` VALUES ('311', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:57:36');
INSERT INTO `admin_log` VALUES ('312', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:58:16');
INSERT INTO `admin_log` VALUES ('313', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:58:19');
INSERT INTO `admin_log` VALUES ('314', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:58:54');
INSERT INTO `admin_log` VALUES ('315', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:58:59');
INSERT INTO `admin_log` VALUES ('316', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:59:31');
INSERT INTO `admin_log` VALUES ('317', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:59:34');
INSERT INTO `admin_log` VALUES ('318', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:59:50');
INSERT INTO `admin_log` VALUES ('319', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 13:59:51');
INSERT INTO `admin_log` VALUES ('320', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:00:10');
INSERT INTO `admin_log` VALUES ('321', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:00:13');
INSERT INTO `admin_log` VALUES ('322', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:00:57');
INSERT INTO `admin_log` VALUES ('323', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:01:23');
INSERT INTO `admin_log` VALUES ('324', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:01:38');
INSERT INTO `admin_log` VALUES ('325', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:01:58');
INSERT INTO `admin_log` VALUES ('326', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:02:48');
INSERT INTO `admin_log` VALUES ('327', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:02:51');
INSERT INTO `admin_log` VALUES ('328', 'school-rank', 'delete', 'school-rank/delete', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:04:02');
INSERT INTO `admin_log` VALUES ('329', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:04:04');
INSERT INTO `admin_log` VALUES ('330', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:04:14');
INSERT INTO `admin_log` VALUES ('331', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:06:11');
INSERT INTO `admin_log` VALUES ('332', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:06:14');
INSERT INTO `admin_log` VALUES ('333', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:07:39');
INSERT INTO `admin_log` VALUES ('334', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:07:41');
INSERT INTO `admin_log` VALUES ('335', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:07:53');
INSERT INTO `admin_log` VALUES ('336', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:07:57');
INSERT INTO `admin_log` VALUES ('337', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:08:08');
INSERT INTO `admin_log` VALUES ('338', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:08:12');
INSERT INTO `admin_log` VALUES ('339', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:08:21');
INSERT INTO `admin_log` VALUES ('340', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:08:25');
INSERT INTO `admin_log` VALUES ('341', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:09:05');
INSERT INTO `admin_log` VALUES ('342', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:09:07');
INSERT INTO `admin_log` VALUES ('343', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:09:46');
INSERT INTO `admin_log` VALUES ('344', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:10:14');
INSERT INTO `admin_log` VALUES ('345', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:10:19');
INSERT INTO `admin_log` VALUES ('346', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:11:13');
INSERT INTO `admin_log` VALUES ('347', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:11:15');
INSERT INTO `admin_log` VALUES ('348', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:12:24');
INSERT INTO `admin_log` VALUES ('349', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:12:25');
INSERT INTO `admin_log` VALUES ('350', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:12:26');
INSERT INTO `admin_log` VALUES ('351', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:12:27');
INSERT INTO `admin_log` VALUES ('352', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:12:29');
INSERT INTO `admin_log` VALUES ('353', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:12:55');
INSERT INTO `admin_log` VALUES ('354', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:12:58');
INSERT INTO `admin_log` VALUES ('355', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:14:17');
INSERT INTO `admin_log` VALUES ('356', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:14:19');
INSERT INTO `admin_log` VALUES ('357', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:17:35');
INSERT INTO `admin_log` VALUES ('358', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:17:38');
INSERT INTO `admin_log` VALUES ('359', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:17:40');
INSERT INTO `admin_log` VALUES ('360', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:19:00');
INSERT INTO `admin_log` VALUES ('361', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:19:03');
INSERT INTO `admin_log` VALUES ('362', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:19:05');
INSERT INTO `admin_log` VALUES ('363', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:19:07');
INSERT INTO `admin_log` VALUES ('364', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:19:10');
INSERT INTO `admin_log` VALUES ('365', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:19:20');
INSERT INTO `admin_log` VALUES ('366', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:19:21');
INSERT INTO `admin_log` VALUES ('367', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:21:48');
INSERT INTO `admin_log` VALUES ('368', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:21:51');
INSERT INTO `admin_log` VALUES ('369', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:21:53');
INSERT INTO `admin_log` VALUES ('370', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:21:54');
INSERT INTO `admin_log` VALUES ('371', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:21:57');
INSERT INTO `admin_log` VALUES ('372', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:22:05');
INSERT INTO `admin_log` VALUES ('373', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:22:07');
INSERT INTO `admin_log` VALUES ('374', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:23:07');
INSERT INTO `admin_log` VALUES ('375', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:23:10');
INSERT INTO `admin_log` VALUES ('376', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:23:18');
INSERT INTO `admin_log` VALUES ('377', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:24:08');
INSERT INTO `admin_log` VALUES ('378', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:24:11');
INSERT INTO `admin_log` VALUES ('379', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:24:14');
INSERT INTO `admin_log` VALUES ('380', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:24:15');
INSERT INTO `admin_log` VALUES ('381', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:24:17');
INSERT INTO `admin_log` VALUES ('382', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:24:22');
INSERT INTO `admin_log` VALUES ('383', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:24:25');
INSERT INTO `admin_log` VALUES ('384', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:24:29');
INSERT INTO `admin_log` VALUES ('385', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:24:31');
INSERT INTO `admin_log` VALUES ('386', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:24:34');
INSERT INTO `admin_log` VALUES ('387', 'school-rank', 'update', 'school-rank/update', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:24:42');
INSERT INTO `admin_log` VALUES ('388', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:24:44');
INSERT INTO `admin_log` VALUES ('389', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:26:44');
INSERT INTO `admin_log` VALUES ('390', 'school-rank', 'view', 'school-rank/view', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:26:54');
INSERT INTO `admin_log` VALUES ('391', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:27:08');
INSERT INTO `admin_log` VALUES ('392', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:27:13');
INSERT INTO `admin_log` VALUES ('393', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:27:17');
INSERT INTO `admin_log` VALUES ('394', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:35:07');
INSERT INTO `admin_log` VALUES ('395', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-10 14:36:51');
INSERT INTO `admin_log` VALUES ('396', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2016-11-10 14:36:54');
INSERT INTO `admin_log` VALUES ('397', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', '127.0.0.1', 'admin', '2016-11-10 14:37:28');
INSERT INTO `admin_log` VALUES ('398', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2016-11-10 14:37:29');
INSERT INTO `admin_log` VALUES ('399', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-10 14:37:37');
INSERT INTO `admin_log` VALUES ('400', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-10 14:37:40');
INSERT INTO `admin_log` VALUES ('401', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', '127.0.0.1', 'admin', '2016-11-10 14:38:20');
INSERT INTO `admin_log` VALUES ('402', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-10 14:38:21');
INSERT INTO `admin_log` VALUES ('403', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-10 14:38:25');
INSERT INTO `admin_log` VALUES ('404', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-10 14:38:28');
INSERT INTO `admin_log` VALUES ('405', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-10 14:38:34');
INSERT INTO `admin_log` VALUES ('406', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:38:55');
INSERT INTO `admin_log` VALUES ('407', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:40:29');
INSERT INTO `admin_log` VALUES ('408', 'index-img', 'view', 'index-img/view', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:40:38');
INSERT INTO `admin_log` VALUES ('409', 'index-img', 'view', 'index-img/view', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:40:42');
INSERT INTO `admin_log` VALUES ('410', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:41:46');
INSERT INTO `admin_log` VALUES ('411', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:42:07');
INSERT INTO `admin_log` VALUES ('412', 'index-img', 'view', 'index-img/view', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:42:25');
INSERT INTO `admin_log` VALUES ('413', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:43:47');
INSERT INTO `admin_log` VALUES ('414', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:44:13');
INSERT INTO `admin_log` VALUES ('415', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:44:44');
INSERT INTO `admin_log` VALUES ('416', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:44:56');
INSERT INTO `admin_log` VALUES ('417', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:45:20');
INSERT INTO `admin_log` VALUES ('418', 'index-img', 'view', 'index-img/view', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:45:57');
INSERT INTO `admin_log` VALUES ('419', 'school-rank', 'index', 'school-rank/index', '新功能', '学校排名', '操作', '127.0.0.1', 'admin', '2016-11-10 14:47:52');
INSERT INTO `admin_log` VALUES ('420', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:48:33');
INSERT INTO `admin_log` VALUES ('421', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:53:18');
INSERT INTO `admin_log` VALUES ('422', 'index-img', 'view', 'index-img/view', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:53:20');
INSERT INTO `admin_log` VALUES ('423', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:53:46');
INSERT INTO `admin_log` VALUES ('424', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:54:17');
INSERT INTO `admin_log` VALUES ('425', 'index-img', 'view', 'index-img/view', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:54:20');
INSERT INTO `admin_log` VALUES ('426', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:54:38');
INSERT INTO `admin_log` VALUES ('427', 'index-img', 'view', 'index-img/view', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:54:41');
INSERT INTO `admin_log` VALUES ('428', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:54:53');
INSERT INTO `admin_log` VALUES ('429', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:57:46');
INSERT INTO `admin_log` VALUES ('430', 'index-img', 'view', 'index-img/view', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:57:48');
INSERT INTO `admin_log` VALUES ('431', 'index-img', 'update', 'index-img/update', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:57:59');
INSERT INTO `admin_log` VALUES ('432', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:58:39');
INSERT INTO `admin_log` VALUES ('433', 'index-img', 'view', 'index-img/view', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:58:42');
INSERT INTO `admin_log` VALUES ('434', 'index-img', 'update', 'index-img/update', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 14:58:47');
INSERT INTO `admin_log` VALUES ('435', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 15:00:46');
INSERT INTO `admin_log` VALUES ('436', 'index-img', 'view', 'index-img/view', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 15:00:49');
INSERT INTO `admin_log` VALUES ('437', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 15:01:43');
INSERT INTO `admin_log` VALUES ('438', 'index-img', 'view', 'index-img/view', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 15:01:46');
INSERT INTO `admin_log` VALUES ('439', 'index-img', 'update', 'index-img/update', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 15:01:49');
INSERT INTO `admin_log` VALUES ('440', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 15:01:50');
INSERT INTO `admin_log` VALUES ('441', 'index-img', 'view', 'index-img/view', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 15:01:52');
INSERT INTO `admin_log` VALUES ('442', 'index-img', 'update', 'index-img/update', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 15:02:00');
INSERT INTO `admin_log` VALUES ('443', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 15:02:01');
INSERT INTO `admin_log` VALUES ('444', 'index-img', 'view', 'index-img/view', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 15:02:04');
INSERT INTO `admin_log` VALUES ('445', 'index-img', 'update', 'index-img/update', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 15:02:08');
INSERT INTO `admin_log` VALUES ('446', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 15:02:10');
INSERT INTO `admin_log` VALUES ('447', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 15:02:14');
INSERT INTO `admin_log` VALUES ('448', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-10 15:07:17');
INSERT INTO `admin_log` VALUES ('449', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2016-11-10 15:07:20');
INSERT INTO `admin_log` VALUES ('450', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', '127.0.0.1', 'admin', '2016-11-10 15:07:55');
INSERT INTO `admin_log` VALUES ('451', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2016-11-10 15:07:56');
INSERT INTO `admin_log` VALUES ('452', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-10 15:07:59');
INSERT INTO `admin_log` VALUES ('453', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-10 15:08:02');
INSERT INTO `admin_log` VALUES ('454', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', '127.0.0.1', 'admin', '2016-11-10 15:08:27');
INSERT INTO `admin_log` VALUES ('455', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2016-11-10 15:08:28');
INSERT INTO `admin_log` VALUES ('456', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2016-11-10 15:08:37');
INSERT INTO `admin_log` VALUES ('457', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-10 15:08:38');
INSERT INTO `admin_log` VALUES ('458', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-10 15:08:41');
INSERT INTO `admin_log` VALUES ('459', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_log` VALUES ('460', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:08:59');
INSERT INTO `admin_log` VALUES ('461', 'index-text', 'create', 'index-text/create', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:09:24');
INSERT INTO `admin_log` VALUES ('462', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:09:25');
INSERT INTO `admin_log` VALUES ('463', 'index-text', 'create', 'index-text/create', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:09:48');
INSERT INTO `admin_log` VALUES ('464', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:09:49');
INSERT INTO `admin_log` VALUES ('465', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:13:32');
INSERT INTO `admin_log` VALUES ('466', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:13:43');
INSERT INTO `admin_log` VALUES ('467', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:13:58');
INSERT INTO `admin_log` VALUES ('468', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:14:08');
INSERT INTO `admin_log` VALUES ('469', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:14:26');
INSERT INTO `admin_log` VALUES ('470', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:15:08');
INSERT INTO `admin_log` VALUES ('471', 'index-text', 'view', 'index-text/view', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:15:11');
INSERT INTO `admin_log` VALUES ('472', 'index-text', 'view', 'index-text/view', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:15:17');
INSERT INTO `admin_log` VALUES ('473', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:15:43');
INSERT INTO `admin_log` VALUES ('474', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:16:50');
INSERT INTO `admin_log` VALUES ('475', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:17:25');
INSERT INTO `admin_log` VALUES ('476', 'index-text', 'view', 'index-text/view', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:17:27');
INSERT INTO `admin_log` VALUES ('477', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:17:47');
INSERT INTO `admin_log` VALUES ('478', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:18:44');
INSERT INTO `admin_log` VALUES ('479', 'index-text', 'create', 'index-text/create', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:19:05');
INSERT INTO `admin_log` VALUES ('480', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:19:07');
INSERT INTO `admin_log` VALUES ('481', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:19:29');
INSERT INTO `admin_log` VALUES ('482', 'index-text', 'view', 'index-text/view', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:19:31');
INSERT INTO `admin_log` VALUES ('483', 'index-text', 'view', 'index-text/view', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:19:36');
INSERT INTO `admin_log` VALUES ('484', 'index-text', 'view', 'index-text/view', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:19:43');
INSERT INTO `admin_log` VALUES ('485', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:20:16');
INSERT INTO `admin_log` VALUES ('486', 'index-text', 'view', 'index-text/view', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:20:18');
INSERT INTO `admin_log` VALUES ('487', 'index-text', 'index', 'index-text/index', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:20:41');
INSERT INTO `admin_log` VALUES ('488', 'index-text', 'view', 'index-text/view', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:20:54');
INSERT INTO `admin_log` VALUES ('489', 'index-text', 'view', 'index-text/view', '新功能', '首页文字', '操作', '127.0.0.1', 'admin', '2016-11-10 15:20:58');
INSERT INTO `admin_log` VALUES ('490', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 15:21:53');
INSERT INTO `admin_log` VALUES ('491', 'index-img', 'view', 'index-img/view', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 15:22:07');
INSERT INTO `admin_log` VALUES ('492', 'index-img', 'index', 'index-img/index', '新功能', '首页图片', '操作', '127.0.0.1', 'admin', '2016-11-10 15:46:31');

-- ----------------------------
-- Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT 'code',
  `menu_name` varchar(200) NOT NULL COMMENT '名称',
  `module_id` int(11) NOT NULL COMMENT '模块id',
  `display_label` varchar(200) DEFAULT NULL COMMENT '显示名',
  `des` varchar(400) DEFAULT NULL COMMENT '描述',
  `display_order` int(5) DEFAULT NULL COMMENT '显示顺序',
  `entry_right_name` varchar(50) DEFAULT NULL COMMENT '入口地址名称',
  `entry_url` varchar(200) NOT NULL COMMENT '入口地址',
  `action` varchar(50) NOT NULL COMMENT '操作ID',
  `controller` varchar(100) NOT NULL COMMENT '控制器ID',
  `has_lef` varchar(1) NOT NULL DEFAULT 'n' COMMENT '是否有子',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_code` (`code`),
  KEY `fk_module_id` (`module_id`),
  CONSTRAINT `fk_module_id` FOREIGN KEY (`module_id`) REFERENCES `admin_module` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', 'menu_manger', '菜单管理', '1', '菜单管理', '菜单管理', '1', '菜单管理', 'admin-module/index', 'index', 'backend\\controllers\\AdminMenuController', 'n', 'admin', '2016-08-11 16:44:11', 'admin', '2016-08-11 16:44:11');
INSERT INTO `admin_menu` VALUES ('2', 'menu_role', '角色管理', '1', '角色管理', '角色管理', '2', '角色管理', 'admin-role/index', 'index', 'backend\\controllers\\AdminRoleController', 'n', 'admin', '2016-08-11 16:51:56', 'admin', '2016-08-11 16:51:56');
INSERT INTO `admin_menu` VALUES ('3', 'menu_user', '用户管理', '1', '用户管理', '用户管理', '3', '用户管理', 'admin-user/index', 'index', 'backend\\controllers\\AdminUserController', 'n', 'admin', '2016-08-11 16:58:43', 'admin', '2016-08-11 16:58:43');
INSERT INTO `admin_menu` VALUES ('4', 'coazaorizhi', '操作日志', '2', '操作日志', '操作日志', '1', '', 'admin-log/index', 'index', 'backend\\controllers\\AdminLogController', 'n', 'test', '2016-08-14 06:54:17', 'test', '2016-08-14 06:54:17');
INSERT INTO `admin_menu` VALUES ('7', 'school_rank', '学校排名', '5', '学校排名', '学校排名', '1', '学校排名', 'school-rank/index', 'index', 'backend\\controllers\\SchoolRankController', 'n', 'admin', '2016-11-08 17:52:36', 'admin', '2016-11-08 17:52:36');
INSERT INTO `admin_menu` VALUES ('8', 'index_img', '首页图片', '5', '首页图片', '首页图片', '2', '首页图片', 'index-img/index', 'index', 'backend\\controllers\\IndexImgController', 'n', 'admin', '2016-11-10 14:37:28', 'admin', '2016-11-10 14:37:28');
INSERT INTO `admin_menu` VALUES ('9', 'index_text', '首页文字', '5', '首页文字', '首页文字', '3', '首页文字', 'index-text/index', 'index', 'backend\\controllers\\IndexTextController', 'n', 'admin', '2016-11-10 15:07:55', 'admin', '2016-11-10 15:07:55');

-- ----------------------------
-- Table structure for `admin_message`
-- ----------------------------
DROP TABLE IF EXISTS `admin_message`;
CREATE TABLE `admin_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `msg` varchar(1000) DEFAULT NULL COMMENT '留言内容',
  `expiry_days` int(5) unsigned DEFAULT NULL COMMENT '有效天数',
  `create_user` varchar(50) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_message
-- ----------------------------
INSERT INTO `admin_message` VALUES ('1', '测试文本', '1', 'admin', '2014-11-21 18:47:20', 'admin', '2014-11-21 18:47:27');

-- ----------------------------
-- Table structure for `admin_module`
-- ----------------------------
DROP TABLE IF EXISTS `admin_module`;
CREATE TABLE `admin_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT 'code',
  `display_label` varchar(200) NOT NULL COMMENT '显示名称',
  `has_lef` varchar(1) NOT NULL DEFAULT 'n' COMMENT '是否有子',
  `des` varchar(400) DEFAULT NULL COMMENT '描述',
  `entry_url` varchar(100) DEFAULT NULL COMMENT '入口地址',
  `display_order` int(5) DEFAULT NULL COMMENT '顺序',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_module
-- ----------------------------
INSERT INTO `admin_module` VALUES ('1', 'menu_manage', '菜单用户权限', 'n', '菜单管理', '', '1', 'admin', '2016-08-11 15:26:21', 'admin', '2016-08-11 16:31:08');
INSERT INTO `admin_module` VALUES ('2', 'rizhimaanage', '日志管理', 'n', '日志管理', '', '2', 'test', '2016-08-14 06:53:13', 'test', '2016-08-14 06:53:13');
INSERT INTO `admin_module` VALUES ('5', 'newmenu', '新功能', 'n', '新功能', null, '3', 'admin', '2016-11-08 17:51:16', 'admin', '2016-11-08 17:51:16');

-- ----------------------------
-- Table structure for `admin_right`
-- ----------------------------
DROP TABLE IF EXISTS `admin_right`;
CREATE TABLE `admin_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu_id` int(11) NOT NULL COMMENT '功能主键',
  `right_name` varchar(200) NOT NULL COMMENT '名称',
  `display_label` varchar(200) DEFAULT NULL COMMENT '显示名',
  `des` varchar(200) DEFAULT NULL COMMENT '描述',
  `display_order` int(5) DEFAULT NULL COMMENT '显示顺序',
  `has_lef` varchar(1) NOT NULL DEFAULT 'n' COMMENT '是否有子',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_admin_right` (`menu_id`),
  KEY `index_menu_id` (`menu_id`),
  CONSTRAINT `FK_admin_right` FOREIGN KEY (`menu_id`) REFERENCES `admin_menu` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_right
-- ----------------------------
INSERT INTO `admin_right` VALUES ('4', '2', '角色操作', '角色操作', '角色操作', '1', 'n', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right` VALUES ('5', '2', '分配用户', '分配用户', '分配用户', '2', 'n', 'admin', '2016-08-13 17:05:04', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right` VALUES ('6', '2', '分配权限', '分配权限', '分配权限', '3', 'n', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right` VALUES ('7', '3', '用户操作', '用户操作', '用户操作', '1', 'n', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right` VALUES ('8', '4', '操作', '操作', '操作', '1', 'n', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right` VALUES ('13', '1', '一级菜单查看', '一级菜单查看', '一级菜单查看', '1', 'n', 'test', '2016-08-16 15:52:45', 'test', '2016-08-16 15:52:45');
INSERT INTO `admin_right` VALUES ('14', '1', '一级菜单添加', '一级菜单添加', '一级菜单添加', '2', 'n', 'test', '2016-08-16 15:53:10', 'test', '2016-08-16 15:58:30');
INSERT INTO `admin_right` VALUES ('15', '1', '一级菜单删除', '一级菜单删除', '一级菜单删除', '3', 'n', 'test', '2016-08-16 15:53:44', 'test', '2016-08-16 15:53:44');
INSERT INTO `admin_right` VALUES ('16', '1', '二级菜单查看', '二级菜单查看', '二级菜单查看', '4', 'n', 'test', '2016-08-16 15:55:02', 'test', '2016-08-16 15:55:02');
INSERT INTO `admin_right` VALUES ('17', '1', '二级菜单添加', '二级菜单修改', '二级菜单添加', '5', 'n', 'test', '2016-08-16 15:55:21', 'test', '2016-08-16 15:58:50');
INSERT INTO `admin_right` VALUES ('18', '1', '二级菜单删除', '二级菜单删除', '二级菜单删除', '6', 'n', 'test', '2016-08-16 15:55:58', 'test', '2016-08-16 15:55:58');
INSERT INTO `admin_right` VALUES ('19', '1', '路由查看', '路由查看', '路由查看', '7', 'n', 'test', '2016-08-16 15:56:32', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right` VALUES ('20', '1', '路由添加', '路由添加', '路由添加', '8', 'n', 'test', '2016-08-16 15:57:46', 'test', '2016-08-16 15:57:46');
INSERT INTO `admin_right` VALUES ('21', '1', '路由删除', '路由删除', '路由删除', '9', 'n', 'test', '2016-08-16 15:58:05', 'test', '2016-08-16 15:58:05');
INSERT INTO `admin_right` VALUES ('23', '7', '操作', '操作', '学校排名操作', '1', 'n', 'admin', '2016-11-08 17:52:56', 'admin', '2016-11-09 11:27:42');
INSERT INTO `admin_right` VALUES ('24', '8', '操作', '操作', '首页图片操作', '1', 'n', 'admin', '2016-11-10 14:38:20', 'admin', '2016-11-10 14:38:20');
INSERT INTO `admin_right` VALUES ('25', '9', '操作', '操作', '首页文字操作', '1', 'n', 'admin', '2016-11-10 15:08:27', 'admin', '2016-11-10 15:08:27');

-- ----------------------------
-- Table structure for `admin_right_url`
-- ----------------------------
DROP TABLE IF EXISTS `admin_right_url`;
CREATE TABLE `admin_right_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `right_id` int(11) NOT NULL COMMENT 'right主键',
  `url` varchar(200) DEFAULT NULL COMMENT 'url',
  `para_name` varchar(40) DEFAULT NULL COMMENT '参数名',
  `para_value` varchar(40) DEFAULT NULL COMMENT '参数值',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_admin_right_url` (`right_id`),
  KEY `index_right_id` (`right_id`),
  CONSTRAINT `FK_admin_right_url` FOREIGN KEY (`right_id`) REFERENCES `admin_right` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_right_url
-- ----------------------------
INSERT INTO `admin_right_url` VALUES ('16', '4', 'admin-role/index', 'admin-role', 'index', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('17', '4', 'admin-role/view', 'admin-role', 'view', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('18', '4', 'admin-role/create', 'admin-role', 'create', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('19', '4', 'admin-role/update', 'admin-role', 'update', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('20', '4', 'admin-role/delete', 'admin-role', 'delete', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('21', '4', 'admin-role/get-all-rights', 'admin-role', 'get-all-rights', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('22', '4', 'admin-role/save-rights', 'admin-role', 'save-rights', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('30', '6', 'admin-role/index', 'admin-role', 'index', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('31', '6', 'admin-role/view', 'admin-role', 'view', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('32', '6', 'admin-role/create', 'admin-role', 'create', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('33', '6', 'admin-role/update', 'admin-role', 'update', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('34', '6', 'admin-role/delete', 'admin-role', 'delete', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('35', '6', 'admin-role/get-all-rights', 'admin-role', 'get-all-rights', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('36', '6', 'admin-role/save-rights', 'admin-role', 'save-rights', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('37', '7', 'admin-user/index', 'admin-user', 'index', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('38', '7', 'admin-user/view', 'admin-user', 'view', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('39', '7', 'admin-user/create', 'admin-user', 'create', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('40', '7', 'admin-user/update', 'admin-user', 'update', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('41', '7', 'admin-user/delete', 'admin-user', 'delete', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('42', '8', 'admin-log/index', 'admin-log', 'index', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('43', '8', 'admin-log/view', 'admin-log', 'view', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('44', '8', 'admin-log/create', 'admin-log', 'create', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('45', '8', 'admin-log/update', 'admin-log', 'update', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('46', '8', 'admin-log/delete', 'admin-log', 'delete', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('81', '5', 'admin-user-role/index', 'admin-user-role', 'index', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('82', '5', 'admin-user-role/view', 'admin-user-role', 'view', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('83', '5', 'admin-user-role/create', 'admin-user-role', 'create', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('84', '5', 'admin-user-role/update', 'admin-user-role', 'update', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('85', '5', 'admin-user-role/delete', 'admin-user-role', 'delete', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('112', '13', 'admin-module/index', 'admin-module', 'index', 'test', '2016-08-16 15:52:45', 'test', '2016-08-16 15:52:45');
INSERT INTO `admin_right_url` VALUES ('113', '13', 'admin-module/view', 'admin-module', 'view', 'test', '2016-08-16 15:52:45', 'test', '2016-08-16 15:52:45');
INSERT INTO `admin_right_url` VALUES ('115', '15', 'admin-module/delete', 'admin-module', 'delete', 'test', '2016-08-16 15:53:44', 'test', '2016-08-16 15:53:44');
INSERT INTO `admin_right_url` VALUES ('118', '16', 'admin-menu/index', 'admin-menu', 'index', 'test', '2016-08-16 15:55:02', 'test', '2016-08-16 15:55:02');
INSERT INTO `admin_right_url` VALUES ('119', '16', 'admin-menu/view', 'admin-menu', 'view', 'test', '2016-08-16 15:55:02', 'test', '2016-08-16 15:55:02');
INSERT INTO `admin_right_url` VALUES ('122', '18', 'admin-menu/delete', 'admin-menu', 'delete', 'test', '2016-08-16 15:55:58', 'test', '2016-08-16 15:55:58');
INSERT INTO `admin_right_url` VALUES ('125', '19', 'admin-right/index', 'admin-right', 'index', 'test', '2016-08-16 15:57:14', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right_url` VALUES ('126', '19', 'admin-right/view', 'admin-right', 'view', 'test', '2016-08-16 15:57:14', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right_url` VALUES ('127', '19', 'admin-right/right-action', 'admin-right', 'right-action', 'test', '2016-08-16 15:57:14', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right_url` VALUES ('128', '20', 'admin-right/create', 'admin-right', 'create', 'test', '2016-08-16 15:57:46', 'test', '2016-08-16 15:57:46');
INSERT INTO `admin_right_url` VALUES ('129', '20', 'admin-right/update', 'admin-right', 'update', 'test', '2016-08-16 15:57:46', 'test', '2016-08-16 15:57:46');
INSERT INTO `admin_right_url` VALUES ('130', '21', 'admin-right/delete', 'admin-right', 'delete', 'test', '2016-08-16 15:58:05', 'test', '2016-08-16 15:58:05');
INSERT INTO `admin_right_url` VALUES ('131', '14', 'admin-module/create', 'admin-module', 'create', 'test', '2016-08-16 15:58:30', 'test', '2016-08-16 15:58:30');
INSERT INTO `admin_right_url` VALUES ('132', '14', 'admin-module/update', 'admin-module', 'update', 'test', '2016-08-16 15:58:30', 'test', '2016-08-16 15:58:30');
INSERT INTO `admin_right_url` VALUES ('133', '17', 'admin-menu/create', 'admin-menu', 'create', 'test', '2016-08-16 15:58:51', 'test', '2016-08-16 15:58:51');
INSERT INTO `admin_right_url` VALUES ('134', '17', 'admin-menu/update', 'admin-menu', 'update', 'test', '2016-08-16 15:58:51', 'test', '2016-08-16 15:58:51');
INSERT INTO `admin_right_url` VALUES ('151', '23', 'school-rank/index', 'school-rank', 'index', 'admin', '2016-11-09 11:27:42', 'admin', '2016-11-09 11:27:42');
INSERT INTO `admin_right_url` VALUES ('152', '23', 'school-rank/view', 'school-rank', 'view', 'admin', '2016-11-09 11:27:42', 'admin', '2016-11-09 11:27:42');
INSERT INTO `admin_right_url` VALUES ('153', '23', 'school-rank/create', 'school-rank', 'create', 'admin', '2016-11-09 11:27:42', 'admin', '2016-11-09 11:27:42');
INSERT INTO `admin_right_url` VALUES ('154', '23', 'school-rank/update', 'school-rank', 'update', 'admin', '2016-11-09 11:27:42', 'admin', '2016-11-09 11:27:42');
INSERT INTO `admin_right_url` VALUES ('155', '23', 'school-rank/delete', 'school-rank', 'delete', 'admin', '2016-11-09 11:27:42', 'admin', '2016-11-09 11:27:42');
INSERT INTO `admin_right_url` VALUES ('156', '23', 'school-rank/page1', 'school-rank', 'page1', 'admin', '2016-11-09 11:27:42', 'admin', '2016-11-09 11:27:42');
INSERT INTO `admin_right_url` VALUES ('157', '24', 'index-img/index', 'index-img', 'index', 'admin', '2016-11-10 14:38:20', 'admin', '2016-11-10 14:38:20');
INSERT INTO `admin_right_url` VALUES ('158', '24', 'index-img/view', 'index-img', 'view', 'admin', '2016-11-10 14:38:20', 'admin', '2016-11-10 14:38:20');
INSERT INTO `admin_right_url` VALUES ('159', '24', 'index-img/update', 'index-img', 'update', 'admin', '2016-11-10 14:38:20', 'admin', '2016-11-10 14:38:20');
INSERT INTO `admin_right_url` VALUES ('160', '25', 'index-text/index', 'index-text', 'index', 'admin', '2016-11-10 15:08:27', 'admin', '2016-11-10 15:08:27');
INSERT INTO `admin_right_url` VALUES ('161', '25', 'index-text/view', 'index-text', 'view', 'admin', '2016-11-10 15:08:27', 'admin', '2016-11-10 15:08:27');
INSERT INTO `admin_right_url` VALUES ('162', '25', 'index-text/create', 'index-text', 'create', 'admin', '2016-11-10 15:08:27', 'admin', '2016-11-10 15:08:27');
INSERT INTO `admin_right_url` VALUES ('163', '25', 'index-text/update', 'index-text', 'update', 'admin', '2016-11-10 15:08:27', 'admin', '2016-11-10 15:08:27');
INSERT INTO `admin_right_url` VALUES ('164', '25', 'index-text/delete', 'index-text', 'delete', 'admin', '2016-11-10 15:08:27', 'admin', '2016-11-10 15:08:27');

-- ----------------------------
-- Table structure for `admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT '角色编号',
  `name` varchar(50) NOT NULL COMMENT '角色名称',
  `des` varchar(400) DEFAULT NULL COMMENT '角色描述',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('1', 'superadmin', '超级管理员', '拥有所有权限', 'test', '2016-08-12 15:33:01', 'test', '2016-08-12 15:33:01');
INSERT INTO `admin_role` VALUES ('2', 'testuser', '测试人员', '测试人员', 'test', '2016-08-12 15:33:45', 'test', '2016-08-12 15:33:45');

-- ----------------------------
-- Table structure for `admin_role_right`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_right`;
CREATE TABLE `admin_role_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(11) NOT NULL COMMENT '角色主键',
  `right_id` int(11) NOT NULL COMMENT '权限主键',
  `full_path` varchar(250) DEFAULT NULL COMMENT '全路径',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_role_id` (`role_id`),
  KEY `index_right_id` (`right_id`),
  CONSTRAINT `admin_role_right_ibfk_1` FOREIGN KEY (`right_id`) REFERENCES `admin_right` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role_right
-- ----------------------------
INSERT INTO `admin_role_right` VALUES ('112', '2', '13', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('113', '2', '14', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('114', '2', '15', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('115', '2', '16', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('116', '2', '17', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('117', '2', '18', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('118', '2', '19', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('119', '2', '20', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('120', '2', '21', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('121', '2', '4', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('122', '2', '5', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('123', '2', '6', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('124', '2', '7', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('125', '2', '8', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('172', '1', '13', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_role_right` VALUES ('173', '1', '14', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_role_right` VALUES ('174', '1', '15', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_role_right` VALUES ('175', '1', '16', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_role_right` VALUES ('176', '1', '17', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_role_right` VALUES ('177', '1', '18', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_role_right` VALUES ('178', '1', '19', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_role_right` VALUES ('179', '1', '20', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_role_right` VALUES ('180', '1', '21', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_role_right` VALUES ('181', '1', '4', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_role_right` VALUES ('182', '1', '5', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_role_right` VALUES ('183', '1', '6', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_role_right` VALUES ('184', '1', '7', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_role_right` VALUES ('185', '1', '8', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_role_right` VALUES ('186', '1', '23', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_role_right` VALUES ('187', '1', '24', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');
INSERT INTO `admin_role_right` VALUES ('188', '1', '25', null, 'admin', '2016-11-10 15:08:45', 'admin', '2016-11-10 15:08:45');

-- ----------------------------
-- Table structure for `admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `auth_key` varchar(50) DEFAULT NULL COMMENT '自动登录key',
  `last_ip` varchar(50) DEFAULT NULL COMMENT '最近一次登录ip',
  `is_online` char(1) DEFAULT 'n' COMMENT '是否在线',
  `domain_account` varchar(100) DEFAULT NULL COMMENT '域账号',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态',
  `create_user` varchar(100) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_user` varchar(101) NOT NULL COMMENT '更新人',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('156', 'admin', '$2y$13$9O6bKJieocg//oSax9fZOOuljAKarBXknqD8.RyYg60FfNjS7SoqK', null, '127.0.0.1', 'n', null, '10', 'admin', '2014-07-07 00:05:47', 'admin', '2014-09-03 12:19:12');
INSERT INTO `admin_user` VALUES ('158', 'test', '$2y$13$9O6bKJieocg//oSax9fZOOuljAKarBXknqD8.RyYg60FfNjS7SoqK', null, '', 'n', null, '10', 'admin', '2014-09-03 12:19:52', 'admin', '2014-11-21 19:19:22');
INSERT INTO `admin_user` VALUES ('159', 'eaget', '$2y$13$caVg4.NGe1wSB31nCnsnCOWf0lqFhlugXXEsPGCdXcKz.Mi/Zt64.', null, '127.0.0.1', 'n', '', '10', 'admin', '2016-11-08 18:07:08', 'admin', '2016-11-08 18:07:08');

-- ----------------------------
-- Table structure for `admin_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_role`;
CREATE TABLE `admin_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_user_id` (`user_id`),
  KEY `index_role_id` (`role_id`),
  CONSTRAINT `admin_user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user_role
-- ----------------------------
INSERT INTO `admin_user_role` VALUES ('1', '156', '1', 'admin', '2016-08-12 17:03:13', 'admin', '2016-08-12 17:03:13');
INSERT INTO `admin_user_role` VALUES ('2', '158', '2', 'test', '2016-08-13 16:34:20', 'test', '2016-08-13 16:34:20');
INSERT INTO `admin_user_role` VALUES ('3', '159', '1', 'admin', '2016-11-08 18:07:31', 'admin', '2016-11-08 18:07:31');

-- ----------------------------
-- Table structure for `index_img`
-- ----------------------------
DROP TABLE IF EXISTS `index_img`;
CREATE TABLE `index_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '图片名称',
  `img_url` varchar(255) NOT NULL COMMENT '图片',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_img
-- ----------------------------
INSERT INTO `index_img` VALUES ('1', '关爱留守儿童1', 'uploads/14787613204127.jpg', '2016-11-10 15:02:08');

-- ----------------------------
-- Table structure for `index_text`
-- ----------------------------
DROP TABLE IF EXISTS `index_text`;
CREATE TABLE `index_text` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '内容',
  `order` int(10) NOT NULL COMMENT '顺序',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_text
-- ----------------------------
INSERT INTO `index_text` VALUES ('1', '这是第一段', '1', '2016-11-10 15:09:24');
INSERT INTO `index_text` VALUES ('2', '这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段这是第二段', '2', '2016-11-10 15:09:48');
INSERT INTO `index_text` VALUES ('3', '这是第三段这是第三段这是第三段这是第三段这是第三段这是第三段这是第三段这是第三段这是第三段这是第三段这是第三段这是第三段这是第三段这是第三段这是第三段', '3', '2016-11-10 15:19:05');

-- ----------------------------
-- Table structure for `school_rank`
-- ----------------------------
DROP TABLE IF EXISTS `school_rank`;
CREATE TABLE `school_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '学校名称',
  `head_url` varchar(255) DEFAULT NULL,
  `total` int(10) NOT NULL COMMENT '总步数',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_rank
-- ----------------------------
INSERT INTO `school_rank` VALUES ('1', '成都信息工程大学', 'uploads/14787590821148.jpg', '100000', '2016-11-10 14:24:42');
INSERT INTO `school_rank` VALUES ('2', '西南民族大学', 'uploads/14787525249551.png', '10000', '2016-11-10 12:35:24');
INSERT INTO `school_rank` VALUES ('3', '四川大学', 'uploads/14787525441976.jpg', '50000', '2016-11-10 12:35:44');
INSERT INTO `school_rank` VALUES ('4', '电子科大', 'uploads/14787525563189.png', '40000', '2016-11-10 12:35:56');
INSERT INTO `school_rank` VALUES ('5', 'aaa', 'uploads/14787525687654.jpg', '111', '2016-11-10 12:36:08');
INSERT INTO `school_rank` VALUES ('6', '1', 'uploads/14787525813439.png', '1', '2016-11-10 12:36:21');
INSERT INTO `school_rank` VALUES ('7', '2', 'uploads/14787525963748.jpg', '2', '2016-11-10 12:36:36');
INSERT INTO `school_rank` VALUES ('8', '11', 'uploads/14787526088526.jpg', '11', '2016-11-10 12:36:48');
