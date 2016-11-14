/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : yiiboot

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2016-11-09 16:22:27
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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', 'menu_manger', '菜单管理', '1', '菜单管理', '菜单管理', '1', '菜单管理', 'admin-module/index', 'index', 'backend\\controllers\\AdminMenuController', 'n', 'admin', '2016-08-11 16:44:11', 'admin', '2016-08-11 16:44:11');
INSERT INTO `admin_menu` VALUES ('2', 'menu_role', '角色管理', '1', '角色管理', '角色管理', '2', '角色管理', 'admin-role/index', 'index', 'backend\\controllers\\AdminRoleController', 'n', 'admin', '2016-08-11 16:51:56', 'admin', '2016-08-11 16:51:56');
INSERT INTO `admin_menu` VALUES ('3', 'menu_user', '用户管理', '1', '用户管理', '用户管理', '3', '用户管理', 'admin-user/index', 'index', 'backend\\controllers\\AdminUserController', 'n', 'admin', '2016-08-11 16:58:43', 'admin', '2016-08-11 16:58:43');
INSERT INTO `admin_menu` VALUES ('4', 'coazaorizhi', '操作日志', '2', '操作日志', '操作日志', '1', '', 'admin-log/index', 'index', 'backend\\controllers\\AdminLogController', 'n', 'test', '2016-08-14 06:54:17', 'test', '2016-08-14 06:54:17');
INSERT INTO `admin_menu` VALUES ('7', 'school_rank', '学校排名', '5', '学校排名', '学校排名', '1', '学校排名', 'school-rank/index', 'index', 'backend\\controllers\\SchoolRankController', 'n', 'admin', '2016-11-08 17:52:36', 'admin', '2016-11-08 17:52:36');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;

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
INSERT INTO `admin_role_right` VALUES ('141', '1', '13', null, 'admin', '2016-11-08 17:53:08', 'admin', '2016-11-08 17:53:08');
INSERT INTO `admin_role_right` VALUES ('142', '1', '14', null, 'admin', '2016-11-08 17:53:08', 'admin', '2016-11-08 17:53:08');
INSERT INTO `admin_role_right` VALUES ('143', '1', '15', null, 'admin', '2016-11-08 17:53:08', 'admin', '2016-11-08 17:53:08');
INSERT INTO `admin_role_right` VALUES ('144', '1', '16', null, 'admin', '2016-11-08 17:53:08', 'admin', '2016-11-08 17:53:08');
INSERT INTO `admin_role_right` VALUES ('145', '1', '17', null, 'admin', '2016-11-08 17:53:08', 'admin', '2016-11-08 17:53:08');
INSERT INTO `admin_role_right` VALUES ('146', '1', '18', null, 'admin', '2016-11-08 17:53:08', 'admin', '2016-11-08 17:53:08');
INSERT INTO `admin_role_right` VALUES ('147', '1', '19', null, 'admin', '2016-11-08 17:53:08', 'admin', '2016-11-08 17:53:08');
INSERT INTO `admin_role_right` VALUES ('148', '1', '20', null, 'admin', '2016-11-08 17:53:08', 'admin', '2016-11-08 17:53:08');
INSERT INTO `admin_role_right` VALUES ('149', '1', '21', null, 'admin', '2016-11-08 17:53:08', 'admin', '2016-11-08 17:53:08');
INSERT INTO `admin_role_right` VALUES ('150', '1', '4', null, 'admin', '2016-11-08 17:53:08', 'admin', '2016-11-08 17:53:08');
INSERT INTO `admin_role_right` VALUES ('151', '1', '5', null, 'admin', '2016-11-08 17:53:08', 'admin', '2016-11-08 17:53:08');
INSERT INTO `admin_role_right` VALUES ('152', '1', '6', null, 'admin', '2016-11-08 17:53:08', 'admin', '2016-11-08 17:53:08');
INSERT INTO `admin_role_right` VALUES ('153', '1', '7', null, 'admin', '2016-11-08 17:53:08', 'admin', '2016-11-08 17:53:08');
INSERT INTO `admin_role_right` VALUES ('154', '1', '8', null, 'admin', '2016-11-08 17:53:08', 'admin', '2016-11-08 17:53:08');
INSERT INTO `admin_role_right` VALUES ('155', '1', '23', null, 'admin', '2016-11-08 17:53:08', 'admin', '2016-11-08 17:53:08');

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
-- Table structure for `school_rank`
-- ----------------------------
DROP TABLE IF EXISTS `school_rank`;
CREATE TABLE `school_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '学校名称',
  `total` int(10) NOT NULL COMMENT '总步数',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_rank
-- ----------------------------
INSERT INTO `school_rank` VALUES ('1', '成都信息工程大学', '100000', '2016-11-08 17:54:12');
INSERT INTO `school_rank` VALUES ('2', '西南民族大学', '10000', '2016-11-08 17:55:57');
INSERT INTO `school_rank` VALUES ('3', '四川大学', '50000', '2016-11-08 17:56:08');
INSERT INTO `school_rank` VALUES ('4', '电子科大', '40000', '2016-11-08 17:56:20');
