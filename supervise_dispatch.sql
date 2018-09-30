/*
Navicat MySQL Data Transfer

Source Server         : supervise_dispatch
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : supervise_dispatch

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-08-27 15:00:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Index', 'fa-bar-chart', '/', null, null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '用户管理', 'fa-users', 'auth/users', null, '2018-07-24 14:14:38');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色管理', 'fa-user', 'auth/roles', null, '2018-07-24 14:14:50');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', 'Permission', 'fa-ban', 'auth/permissions', null, null);
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单管理', 'fa-bars', 'auth/menu', null, '2018-07-24 14:15:01');
INSERT INTO `admin_menu` VALUES ('7', '2', '7', '操作日志', 'fa-history', 'auth/logs', null, '2018-07-24 14:15:14');
INSERT INTO `admin_menu` VALUES ('9', '0', '0', 'Category', 'fa-bars', null, '2018-07-20 17:49:38', '2018-07-20 17:58:05');
INSERT INTO `admin_menu` VALUES ('10', '9', '0', '类型管理', 'fa-bars', '/category', '2018-07-20 17:50:29', '2018-07-24 14:14:15');
INSERT INTO `admin_menu` VALUES ('11', '9', '0', '物品管理', 'fa-bars', '/goods', '2018-07-21 11:49:00', '2018-07-24 14:14:25');
INSERT INTO `admin_menu` VALUES ('12', '0', '8', 'Log viewer', 'fa-database', 'logs', '2018-07-24 14:48:06', '2018-07-24 14:48:06');
INSERT INTO `admin_menu` VALUES ('13', '9', '0', '数据查看', 'fa-bars', '/links', '2018-07-25 10:23:43', '2018-07-25 10:23:43');

-- ----------------------------
-- Table structure for `admin_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-24 14:21:20', '2018-07-24 14:21:20');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-24 14:21:22', '2018-07-24 14:21:22');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/goods', 'POST', '127.0.0.1', '{\"name\":\"task_dispatch\",\"\\u4f4d\\u7f6e\":\"\\u516c\\u53f8\",\"\\u6301\\u6709\\u4eba\":\"\\u674e\\u56db\",\"\\u6570\\u91cf\":\"2\",\"\\u578b\\u53f7\":\"6\",\"_token\":\"W40wI23RGZ9qywfs1ls7caV0YoRHTGkEQvJcD4GX\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/goods\"}', '2018-07-24 14:21:34', '2018-07-24 14:21:34');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-07-24 14:21:34', '2018-07-24 14:21:34');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-07-24 16:36:24', '2018-07-24 16:36:24');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-07-24 16:36:37', '2018-07-24 16:36:37');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"id\":null,\"name\":\"hhc\",\"_pjax\":\"#pjax-container\"}', '2018-07-24 16:36:43', '2018-07-24 16:36:43');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"id\":null,\"name\":\"hhc\"}', '2018-07-24 18:09:22', '2018-07-24 18:09:22');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-25 10:23:17', '2018-07-25 10:23:17');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u6570\\u636e\\u67e5\\u770b\",\"icon\":\"fa-bars\",\"uri\":\"\\/links\",\"roles\":[\"1\",null],\"_token\":\"wDvxljjDpI5s5v5lFn5zsf1mAoQHiSwaSqpo7CHg\"}', '2018-07-25 10:23:43', '2018-07-25 10:23:43');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-25 10:23:43', '2018-07-25 10:23:43');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-07-25 10:23:46', '2018-07-25 10:23:46');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-25 10:23:48', '2018-07-25 10:23:48');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 10:24:20', '2018-07-25 10:24:20');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 10:25:38', '2018-07-25 10:25:38');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 10:36:57', '2018-07-25 10:36:57');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 10:46:29', '2018-07-25 10:46:29');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 10:46:45', '2018-07-25 10:46:45');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:00:32', '2018-07-25 11:00:32');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:08:36', '2018-07-25 11:08:36');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:08:57', '2018-07-25 11:08:57');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:09:44', '2018-07-25 11:09:44');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:09:56', '2018-07-25 11:09:56');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:11:06', '2018-07-25 11:11:06');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:13:46', '2018-07-25 11:13:46');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:14:39', '2018-07-25 11:14:39');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:15:07', '2018-07-25 11:15:07');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:15:39', '2018-07-25 11:15:39');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:16:17', '2018-07-25 11:16:17');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:16:36', '2018-07-25 11:16:36');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:17:03', '2018-07-25 11:17:03');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:17:05', '2018-07-25 11:17:05');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:17:14', '2018-07-25 11:17:14');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:19:54', '2018-07-25 11:19:54');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:21:37', '2018-07-25 11:21:37');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:22:24', '2018-07-25 11:22:24');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:24:20', '2018-07-25 11:24:20');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/links', 'GET', '127.0.0.1', '{\"\\u516c\\u53f8\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:24:21', '2018-07-25 11:24:21');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/links', 'GET', '127.0.0.1', '{\"\\u516c\\u53f8\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:24:23', '2018-07-25 11:24:23');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/links', 'GET', '127.0.0.1', '{\"\\u516c\\u53f8\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:24:24', '2018-07-25 11:24:24');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/links', 'GET', '127.0.0.1', '{\"1\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:24:26', '2018-07-25 11:24:26');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/links', 'GET', '127.0.0.1', '{\"1\":null}', '2018-07-25 11:24:48', '2018-07-25 11:24:48');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:24:52', '2018-07-25 11:24:52');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:24:53', '2018-07-25 11:24:53');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null}', '2018-07-25 11:25:34', '2018-07-25 11:25:34');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:25:50', '2018-07-25 11:25:50');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:26:00', '2018-07-25 11:26:00');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:26:02', '2018-07-25 11:26:02');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null}', '2018-07-25 11:27:10', '2018-07-25 11:27:10');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null}', '2018-07-25 11:27:24', '2018-07-25 11:27:24');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null}', '2018-07-25 11:27:27', '2018-07-25 11:27:27');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null}', '2018-07-25 11:27:35', '2018-07-25 11:27:35');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null}', '2018-07-25 11:27:37', '2018-07-25 11:27:37');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null}', '2018-07-25 11:27:49', '2018-07-25 11:27:49');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:27:52', '2018-07-25 11:27:52');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-25 11:28:02', '2018-07-25 11:28:02');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:28:03', '2018-07-25 11:28:03');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null}', '2018-07-25 11:28:15', '2018-07-25 11:28:15');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:28:18', '2018-07-25 11:28:18');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:28:22', '2018-07-25 11:28:22');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null}', '2018-07-25 11:28:30', '2018-07-25 11:28:30');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:28:33', '2018-07-25 11:28:33');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:28:35', '2018-07-25 11:28:35');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:28:36', '2018-07-25 11:28:36');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:28:37', '2018-07-25 11:28:37');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null,\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:28:38', '2018-07-25 11:28:38');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null}', '2018-07-25 11:30:21', '2018-07-25 11:30:21');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/links', 'GET', '127.0.0.1', '{\"2\":null}', '2018-07-25 11:30:36', '2018-07-25 11:30:36');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"\\u674e\\u56db\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:30:41', '2018-07-25 11:30:41');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"\\u5bb6\\u91cc\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:30:44', '2018-07-25 11:30:44');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"\\u516c\\u53f8\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:30:46', '2018-07-25 11:30:46');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"\\u5f20\\u4e09\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:30:48', '2018-07-25 11:30:48');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"2\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:30:50', '2018-07-25 11:30:50');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"\\u516c\\u53f8\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:31:11', '2018-07-25 11:31:11');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"\\u516c\\u53f8\"}', '2018-07-25 11:32:48', '2018-07-25 11:32:48');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"\\u516c\\u53f8\"}', '2018-07-25 11:41:35', '2018-07-25 11:41:35');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"\\u516c\\u53f8\"}', '2018-07-25 11:43:09', '2018-07-25 11:43:09');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:43:11', '2018-07-25 11:43:11');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"\\u516c\\u53f8\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:43:20', '2018-07-25 11:43:20');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:43:25', '2018-07-25 11:43:25');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:43:27', '2018-07-25 11:43:27');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:43:29', '2018-07-25 11:43:29');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"6\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:43:31', '2018-07-25 11:43:31');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"id\":\"4\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:43:33', '2018-07-25 11:43:33');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"6\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:43:35', '2018-07-25 11:43:35');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"6\"}', '2018-07-25 11:43:53', '2018-07-25 11:43:53');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"\\u516c\\u53f8\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:44:07', '2018-07-25 11:44:07');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/links', 'GET', '127.0.0.1', '{\"data\":\"\\u516c\\u53f8\"}', '2018-07-25 11:44:24', '2018-07-25 11:44:24');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/links', 'GET', '127.0.0.1', '{\"id\":null,\"data\":\"\\u516c\\u53f8\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:45:03', '2018-07-25 11:45:03');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"data\":\"2\"}', '2018-07-25 11:45:15', '2018-07-25 11:45:15');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"data\":\"9\"}', '2018-07-25 11:45:22', '2018-07-25 11:45:22');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"data\":\"\\u5f20\\u4e09\"}', '2018-07-25 11:45:33', '2018-07-25 11:45:33');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-25 11:45:40', '2018-07-25 11:45:40');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-26 16:40:54', '2018-07-26 16:40:54');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-07-26 16:40:55', '2018-07-26 16:40:55');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-26 16:42:11', '2018-07-26 16:42:11');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-07-26 16:42:11', '2018-07-26 16:42:11');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-26 16:42:33', '2018-07-26 16:42:33');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-07-26 16:42:33', '2018-07-26 16:42:33');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-07-26 16:42:59', '2018-07-26 16:42:59');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-26 16:43:05', '2018-07-26 16:43:05');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-26 16:43:37', '2018-07-26 16:43:37');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-26 16:43:47', '2018-07-26 16:43:47');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-26 16:44:06', '2018-07-26 16:44:06');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-26 16:44:25', '2018-07-26 16:44:25');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-26 16:44:54', '2018-07-26 16:44:54');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-27 11:37:50', '2018-07-27 11:37:50');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-07-27 11:37:50', '2018-07-27 11:37:50');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/goods/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:38:00', '2018-07-27 11:38:00');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:38:05', '2018-07-27 11:38:05');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/goods/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:38:16', '2018-07-27 11:38:16');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:38:20', '2018-07-27 11:38:20');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/goods/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:38:22', '2018-07-27 11:38:22');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:38:24', '2018-07-27 11:38:24');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/goods/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:38:56', '2018-07-27 11:38:56');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:39:01', '2018-07-27 11:39:01');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/goods/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:39:03', '2018-07-27 11:39:03');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:39:05', '2018-07-27 11:39:05');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:39:07', '2018-07-27 11:39:07');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:39:11', '2018-07-27 11:39:11');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:39:21', '2018-07-27 11:39:21');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:39:23', '2018-07-27 11:39:23');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u989c\\u8272\",\"_token\":\"AeF6wmJFG0qv74VqUGiEvMlSj3hhOUyFtU39cmDm\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-27 11:39:28', '2018-07-27 11:39:28');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-27 11:39:29', '2018-07-27 11:39:29');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:39:30', '2018-07-27 11:39:30');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u9ec4\\u8272\",\"_token\":\"AeF6wmJFG0qv74VqUGiEvMlSj3hhOUyFtU39cmDm\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-27 11:39:37', '2018-07-27 11:39:37');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-27 11:39:37', '2018-07-27 11:39:37');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:39:39', '2018-07-27 11:39:39');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u7ea2\\u8272\",\"_token\":\"AeF6wmJFG0qv74VqUGiEvMlSj3hhOUyFtU39cmDm\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-27 11:39:46', '2018-07-27 11:39:46');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-27 11:39:47', '2018-07-27 11:39:47');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:39:54', '2018-07-27 11:39:54');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:39:57', '2018-07-27 11:39:57');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/goods/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:40:00', '2018-07-27 11:40:00');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:40:02', '2018-07-27 11:40:02');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/goods/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:40:04', '2018-07-27 11:40:04');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 11:40:06', '2018-07-27 11:40:06');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/goods/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-27 13:39:03', '2018-07-27 13:39:03');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-30 09:38:22', '2018-07-30 09:38:22');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-07-30 09:38:23', '2018-07-30 09:38:23');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:38:30', '2018-07-30 09:38:30');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/category/1,2,3,4,5,6,7,8,9,10,11,12,13,14', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:38:41', '2018-07-30 09:38:41');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/category/1,2,3,4,5,6,7,8,9,10,11,12,13,14', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:38:42', '2018-07-30 09:38:42');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/category/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:38:49', '2018-07-30 09:38:49');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/category/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:38:50', '2018-07-30 09:38:50');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/category/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:38:51', '2018-07-30 09:38:51');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/category/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:38:55', '2018-07-30 09:38:55');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/category/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:38:55', '2018-07-30 09:38:55');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/category/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:38:56', '2018-07-30 09:38:56');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/category/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:38:56', '2018-07-30 09:38:56');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/category/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:38:58', '2018-07-30 09:38:58');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/category/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:39:01', '2018-07-30 09:39:01');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/category/14', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:39:05', '2018-07-30 09:39:05');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:39:05', '2018-07-30 09:39:05');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/category/13', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:39:09', '2018-07-30 09:39:09');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:39:10', '2018-07-30 09:39:10');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/category/12', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:39:20', '2018-07-30 09:39:20');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:39:20', '2018-07-30 09:39:20');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/category/11', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:39:23', '2018-07-30 09:39:23');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:39:24', '2018-07-30 09:39:24');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/category/10', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:39:27', '2018-07-30 09:39:27');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:39:27', '2018-07-30 09:39:27');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/category/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:39:30', '2018-07-30 09:39:30');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:39:31', '2018-07-30 09:39:31');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/category/7', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 09:39:37', '2018-07-30 09:39:37');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:39:37', '2018-07-30 09:39:37');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 09:39:40', '2018-07-30 09:39:40');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:39:42', '2018-07-30 09:39:42');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7c7b\\u578b\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 09:39:58', '2018-07-30 09:39:58');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 09:39:59', '2018-07-30 09:39:59');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:40:01', '2018-07-30 09:40:01');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"11A\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 09:40:16', '2018-07-30 09:40:16');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 09:40:17', '2018-07-30 09:40:17');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:40:31', '2018-07-30 09:40:31');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"A\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 09:40:48', '2018-07-30 09:40:48');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 09:40:48', '2018-07-30 09:40:48');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:40:50', '2018-07-30 09:40:50');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"C\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 09:41:04', '2018-07-30 09:41:04');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 09:41:04', '2018-07-30 09:41:04');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:41:08', '2018-07-30 09:41:08');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"D\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 09:41:15', '2018-07-30 09:41:15');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 09:41:15', '2018-07-30 09:41:15');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:41:26', '2018-07-30 09:41:26');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"E\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 09:41:33', '2018-07-30 09:41:33');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 09:41:33', '2018-07-30 09:41:33');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:41:39', '2018-07-30 09:41:39');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"F\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 09:41:53', '2018-07-30 09:41:53');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 09:41:53', '2018-07-30 09:41:53');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:41:56', '2018-07-30 09:41:56');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"G\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 09:42:07', '2018-07-30 09:42:07');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 09:42:07', '2018-07-30 09:42:07');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/category/22/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:42:22', '2018-07-30 09:42:22');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/category/22', 'PUT', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"G\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 09:42:28', '2018-07-30 09:42:28');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 09:42:28', '2018-07-30 09:42:28');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:42:48', '2018-07-30 09:42:48');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"H\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 09:42:53', '2018-07-30 09:42:53');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 09:42:53', '2018-07-30 09:42:53');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:42:54', '2018-07-30 09:42:54');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"I\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 09:43:00', '2018-07-30 09:43:00');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 09:43:00', '2018-07-30 09:43:00');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:43:02', '2018-07-30 09:43:02');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"J\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 09:43:08', '2018-07-30 09:43:08');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 09:43:08', '2018-07-30 09:43:08');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:43:12', '2018-07-30 09:43:12');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"K\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 09:43:18', '2018-07-30 09:43:18');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 09:43:18', '2018-07-30 09:43:18');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:43:20', '2018-07-30 09:43:20');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"M\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 09:43:26', '2018-07-30 09:43:26');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 09:43:27', '2018-07-30 09:43:27');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:43:29', '2018-07-30 09:43:29');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"P\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 09:43:37', '2018-07-30 09:43:37');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 09:43:38', '2018-07-30 09:43:38');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 09:43:47', '2018-07-30 09:43:47');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-07-30 09:43:55', '2018-07-30 09:43:55');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-07-30 09:43:59', '2018-07-30 09:43:59');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-30 10:00:13', '2018-07-30 10:00:13');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-07-30 10:00:13', '2018-07-30 10:00:13');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/goods/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:00:22', '2018-07-30 10:00:22');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:00:22', '2018-07-30 10:00:22');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/goods/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:00:26', '2018-07-30 10:00:26');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:00:27', '2018-07-30 10:00:27');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/goods/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:00:29', '2018-07-30 10:00:29');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:00:30', '2018-07-30 10:00:30');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:00:54', '2018-07-30 10:00:54');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:00:57', '2018-07-30 10:00:57');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6301\\u6709\\u4eba\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:01:03', '2018-07-30 10:01:03');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:01:04', '2018-07-30 10:01:04');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:01:08', '2018-07-30 10:01:08');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"29\",\"title\":\"data\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:01:21', '2018-07-30 10:01:21');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:01:21', '2018-07-30 10:01:21');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/category/30', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:01:35', '2018-07-30 10:01:35');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:01:35', '2018-07-30 10:01:35');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/category/29', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:01:42', '2018-07-30 10:01:42');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/category/29', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:01:43', '2018-07-30 10:01:43');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/category/29', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:01:47', '2018-07-30 10:01:47');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/category/29', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:02:20', '2018-07-30 10:02:20');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:02:20', '2018-07-30 10:02:20');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:02:30', '2018-07-30 10:02:30');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:02:46', '2018-07-30 10:02:46');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6301\\u6709\\u4eba\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:02:53', '2018-07-30 10:02:53');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:02:53', '2018-07-30 10:02:53');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/category/31', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:02:57', '2018-07-30 10:02:57');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:02:57', '2018-07-30 10:02:57');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:03:47', '2018-07-30 10:03:47');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u673a\\u5668\\u4f4d\\u7f6e\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:03:54', '2018-07-30 10:03:54');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:03:54', '2018-07-30 10:03:54');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:04:02', '2018-07-30 10:04:02');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"32\",\"title\":\"\\u7ba1\\u7406\\u5458\\u5904\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:04:11', '2018-07-30 10:04:11');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:04:11', '2018-07-30 10:04:11');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:04:13', '2018-07-30 10:04:13');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"32\",\"title\":\"\\u6280\\u672f\\u90e8\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:04:21', '2018-07-30 10:04:21');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:04:21', '2018-07-30 10:04:21');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:04:48', '2018-07-30 10:04:48');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"32\",\"title\":\"\\u67dc\\u5b50\\u91cc\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:04:54', '2018-07-30 10:04:54');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:04:54', '2018-07-30 10:04:54');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:06:14', '2018-07-30 10:06:14');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"32\",\"title\":\"\\u8001\\u677f\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:06:23', '2018-07-30 10:06:23');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:06:24', '2018-07-30 10:06:24');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:06:25', '2018-07-30 10:06:25');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"32\",\"title\":\"\\u9759\\u9759\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:06:33', '2018-07-30 10:06:33');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:06:33', '2018-07-30 10:06:33');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:06:35', '2018-07-30 10:06:35');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"32\",\"title\":\"\\uff1f\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:06:52', '2018-07-30 10:06:52');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:06:53', '2018-07-30 10:06:53');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:07:00', '2018-07-30 10:07:00');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u673a\\u5668\\u95ee\\u9898\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:07:18', '2018-07-30 10:07:18');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:07:18', '2018-07-30 10:07:18');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:08:28', '2018-07-30 10:08:28');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u673a\\u5668\\u578b\\u53f7\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:08:34', '2018-07-30 10:08:34');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:08:35', '2018-07-30 10:08:35');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:08:37', '2018-07-30 10:08:37');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"40\",\"title\":\"6\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:08:50', '2018-07-30 10:08:50');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:08:51', '2018-07-30 10:08:51');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:08:52', '2018-07-30 10:08:52');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"40\",\"title\":\"6s\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:09:01', '2018-07-30 10:09:01');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:09:01', '2018-07-30 10:09:01');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:09:06', '2018-07-30 10:09:06');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u662f\\u5426\\u7f3a\\u5931\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:09:19', '2018-07-30 10:09:19');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:09:19', '2018-07-30 10:09:19');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:09:21', '2018-07-30 10:09:21');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"43\",\"title\":\"\\u662f\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:09:30', '2018-07-30 10:09:30');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:09:30', '2018-07-30 10:09:30');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:09:31', '2018-07-30 10:09:31');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/category', 'POST', '127.0.0.1', '{\"parent_id\":\"43\",\"title\":\"\\u5426\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\",\"_previous_\":\"http:\\/\\/supervise-dispatch.cn\\/admin\\/category\"}', '2018-07-30 10:09:38', '2018-07-30 10:09:38');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-07-30 10:09:38', '2018-07-30 10:09:38');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:15:36', '2018-07-30 10:15:36');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/category/42', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:15:42', '2018-07-30 10:15:42');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:15:43', '2018-07-30 10:15:43');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/category/41', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:15:46', '2018-07-30 10:15:46');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:15:47', '2018-07-30 10:15:47');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/category/40', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:15:51', '2018-07-30 10:15:51');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:15:52', '2018-07-30 10:15:52');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2018-07-30 10:19:41', '2018-07-30 10:19:41');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/category/28', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:19:46', '2018-07-30 10:19:46');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:19:46', '2018-07-30 10:19:46');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/category/16,17,18,19,20,21,22,23,24,25,26,27', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:20:01', '2018-07-30 10:20:01');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:20:01', '2018-07-30 10:20:01');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2018-07-30 10:20:08', '2018-07-30 10:20:08');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/category/27', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:20:11', '2018-07-30 10:20:11');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:20:11', '2018-07-30 10:20:11');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin/category/25', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:20:14', '2018-07-30 10:20:14');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:20:15', '2018-07-30 10:20:15');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/category/26', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:20:18', '2018-07-30 10:20:18');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:20:18', '2018-07-30 10:20:18');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin/category/24', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:20:21', '2018-07-30 10:20:21');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:20:21', '2018-07-30 10:20:21');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin/category/23', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:20:25', '2018-07-30 10:20:25');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:20:26', '2018-07-30 10:20:26');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/category/22', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:20:28', '2018-07-30 10:20:28');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:20:29', '2018-07-30 10:20:29');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin/category/21', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:20:32', '2018-07-30 10:20:32');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:20:32', '2018-07-30 10:20:32');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin/category/20', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:20:34', '2018-07-30 10:20:34');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:20:35', '2018-07-30 10:20:35');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'admin/category/19', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:20:38', '2018-07-30 10:20:38');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:20:38', '2018-07-30 10:20:38');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/category/18', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:20:41', '2018-07-30 10:20:41');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:20:41', '2018-07-30 10:20:41');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/category/17', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:20:44', '2018-07-30 10:20:44');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:20:44', '2018-07-30 10:20:44');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/category/15', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 10:20:57', '2018-07-30 10:20:57');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 10:20:57', '2018-07-30 10:20:57');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2018-07-30 11:29:44', '2018-07-30 11:29:44');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/category/35', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 11:29:49', '2018-07-30 11:29:49');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:29:50', '2018-07-30 11:29:50');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin/category/45', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 11:29:56', '2018-07-30 11:29:56');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:29:57', '2018-07-30 11:29:57');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/category/32', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 11:30:00', '2018-07-30 11:30:00');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:30:00', '2018-07-30 11:30:00');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/category/39', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 11:30:03', '2018-07-30 11:30:03');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:30:03', '2018-07-30 11:30:03');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:30:07', '2018-07-30 11:30:07');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2018-07-30 11:30:08', '2018-07-30 11:30:08');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:30:11', '2018-07-30 11:30:11');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2018-07-30 11:30:11', '2018-07-30 11:30:11');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2018-07-30 11:31:00', '2018-07-30 11:31:00');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin/category/33', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 11:31:05', '2018-07-30 11:31:05');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:31:05', '2018-07-30 11:31:05');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/category/34', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 11:31:09', '2018-07-30 11:31:09');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:31:09', '2018-07-30 11:31:09');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin/category/36', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 11:31:12', '2018-07-30 11:31:12');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:31:12', '2018-07-30 11:31:12');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/category/37', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 11:31:20', '2018-07-30 11:31:20');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:31:20', '2018-07-30 11:31:20');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/category/38', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 11:31:24', '2018-07-30 11:31:24');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:31:24', '2018-07-30 11:31:24');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/category/43', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 11:31:27', '2018-07-30 11:31:27');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:31:28', '2018-07-30 11:31:28');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin/category/44', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"u7KgtzkJTQFPYCHaVrQNkNsNVGBA6HxigXekNw6V\"}', '2018-07-30 11:31:30', '2018-07-30 11:31:30');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:31:31', '2018-07-30 11:31:31');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin/category', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2018-07-30 11:31:33', '2018-07-30 11:31:33');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:31:35', '2018-07-30 11:31:35');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/links', 'GET', '127.0.0.1', '[]', '2018-07-30 11:31:37', '2018-07-30 11:31:37');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:40:27', '2018-07-30 11:40:27');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"name\":null,\"type\":null,\"version\":\"6\",\"location\":null,\"question\":null}', '2018-07-30 11:40:52', '2018-07-30 11:40:52');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"version\":\"6\",\"page\":\"60\"}', '2018-07-30 11:41:31', '2018-07-30 11:41:31');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"version\":\"6\",\"page\":\"1\"}', '2018-07-30 11:41:38', '2018-07-30 11:41:38');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\",\"id\":null,\"name\":null,\"type\":\"P\",\"version\":null,\"location\":null,\"question\":null}', '2018-07-30 11:41:57', '2018-07-30 11:41:57');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"type\":\"P\",\"page\":\"4\"}', '2018-07-30 11:42:03', '2018-07-30 11:42:03');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"type\":\"P\",\"page\":\"3\"}', '2018-07-30 11:42:08', '2018-07-30 11:42:08');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/links', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-30 11:42:13', '2018-07-30 11:42:13');

-- ----------------------------
-- Table structure for `admin_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `admin_permissions` VALUES ('6', 'Logs', 'ext.log-viewer', null, '/logs*', '2018-07-24 14:48:06', '2018-07-24 14:48:06');

-- ----------------------------
-- Table structure for `admin_roles`
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-07-20 08:50:14', '2018-07-20 08:50:14');

-- ----------------------------
-- Table structure for `admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '9', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '10', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '11', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '13', null, null);

-- ----------------------------
-- Table structure for `admin_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for `admin_role_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for `admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$TMWevx/dibnyMsFN8iY5COViYaGnyt/GF8KAPUABUBz9LMU7K2nfO', 'Administrator', null, null, '2018-07-20 08:50:14', '2018-07-20 08:50:14');

-- ----------------------------
-- Table structure for `admin_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------

-- ----------------------------
-- Table structure for `contact`
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cate_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `log` text COMMENT '备注',
  `version` varchar(5) DEFAULT '' COMMENT '机器型号',
  `type` varchar(5) DEFAULT '',
  `location` varchar(64) DEFAULT '' COMMENT '机器位置',
  `question` varchar(32) DEFAULT '' COMMENT '机器问题',
  `defect` varchar(16) DEFAULT '' COMMENT '是否缺失',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1414 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('5', '  p001', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('6', '  p002', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('7', '  p003', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('8', '  p004', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('9', '  p005', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('10', '  p006', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('11', '  p007', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('12', '  p008', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('13', '  p009', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('14', '  p010', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('15', '  p011', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('16', '  p001', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('17', '  p002', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('18', '  p003', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('19', '  p004', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('20', '  p005', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('21', '  p006', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('22', '  p007', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('23', '  p008', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('24', '  p009', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('25', '  p010', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('26', '  p011', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('27', '  p012', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('28', '  p013', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('29', '  p014', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('30', '  p015', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('31', '  p016', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('32', '  p017', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('33', '  p018', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('34', '  p019', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('35', '  p020', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('36', '  p021', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('37', '  p022', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('38', '  p023', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('39', '  p024', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('40', '  p025', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('41', '  p026', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('42', '  p027', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('43', '  p028', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('44', '  p029', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('45', '  p030', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('46', '  p031', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('47', '  p032', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('48', '  p033', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('49', '  p034', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('50', '  p035', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('51', '  p036', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('52', '  p037', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('53', '  p038', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('54', '  p039', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('55', '  p040', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('56', '  p041', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('57', '  p042', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('58', '  p043', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('59', '  p044', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('60', '  p045', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('61', '  p046', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('62', '  p047', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('63', '  p048', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('64', '  p049', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('65', '  p050', '2018-07-30 10:16:35', '2018-07-30 10:25:03', null, '6', 'p', '', '', null);
INSERT INTO `goods` VALUES ('66', 'M001                ', '2018-07-30 10:29:12', '2018-07-30 10:31:47', null, '6', 'M', '老板那', '11.3.1', null);
INSERT INTO `goods` VALUES ('67', 'M002', '2018-07-30 10:29:12', '2018-07-30 10:31:47', null, '6', 'M', '', '', null);
INSERT INTO `goods` VALUES ('68', 'M003', '2018-07-30 10:29:12', '2018-07-30 10:31:47', null, '6', 'M', '', '', null);
INSERT INTO `goods` VALUES ('69', 'M004', '2018-07-30 10:29:12', '2018-07-30 10:31:47', null, '6', 'M', '', '', null);
INSERT INTO `goods` VALUES ('70', 'M005', '2018-07-30 10:29:12', '2018-07-30 10:31:47', null, '6', 'M', '', '', null);
INSERT INTO `goods` VALUES ('71', 'M006', '2018-07-30 10:29:12', '2018-07-30 10:31:47', null, '6', 'M', '', '', null);
INSERT INTO `goods` VALUES ('72', 'M007', '2018-07-30 10:29:12', '2018-07-30 10:31:47', null, '6', 'M', '', '', null);
INSERT INTO `goods` VALUES ('73', 'M008', '2018-07-30 10:29:12', '2018-07-30 10:31:47', null, '6', 'M', '', '', null);
INSERT INTO `goods` VALUES ('74', 'M009', '2018-07-30 10:29:12', '2018-07-30 10:31:47', null, '6', 'M', '', '', null);
INSERT INTO `goods` VALUES ('75', 'M010', '2018-07-30 10:29:12', '2018-07-30 10:31:47', null, '6', 'M', '', '', null);
INSERT INTO `goods` VALUES ('76', 'M011', '2018-07-30 10:29:12', '2018-07-30 10:31:47', null, '6', 'M', '', '', null);
INSERT INTO `goods` VALUES ('77', 'M012', '2018-07-30 10:29:12', '2018-07-30 10:31:47', null, '6', 'M', '', '', null);
INSERT INTO `goods` VALUES ('78', 'K001                                              ', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('79', 'K002', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('80', 'K003', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('81', 'K004', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('82', 'K005', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('83', 'K006', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('84', 'K007', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('85', 'K008', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('86', 'K009', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('87', 'K010', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('88', 'K011', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '我这', 'ios11.3.1', null);
INSERT INTO `goods` VALUES ('89', 'K012', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('90', 'K013', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('91', 'K014', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('92', 'K015', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('93', 'K016', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('94', 'K017', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('95', 'K018', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('96', 'K019', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('97', 'K020', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '我这', 'ios11.3.1 ', null);
INSERT INTO `goods` VALUES ('98', 'K021', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('99', 'K022', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('100', 'K023', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('101', 'K024', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('102', 'K025', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('103', 'K026', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('104', 'K027', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '我这', 'ios11.3.1 ', null);
INSERT INTO `goods` VALUES ('105', 'K028', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('106', 'K029', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('107', 'K030', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('108', 'K031', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('109', 'K032', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('110', 'K033', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('111', 'K034', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '我这', 'ios11.3.1 ', null);
INSERT INTO `goods` VALUES ('112', 'K035', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('113', 'K036', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('114', 'K037', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('115', 'K038', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('116', 'K039', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('117', 'K040', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('118', 'K041', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('119', 'K042', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('120', 'K043', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('121', 'K044', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('122', 'K045', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('123', 'K046', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('124', 'K047', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('125', 'K048', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('126', 'K049', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('127', 'K050', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('128', 'K051', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('129', 'K052', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('130', 'K053', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('131', 'K054', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('132', 'K055', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('133', 'K056', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('134', 'K057', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('135', 'K058', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('136', 'K059', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('137', 'K060', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('138', 'K061', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('139', 'K062', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('140', 'K063', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('141', 'K064', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('142', 'K065', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('143', 'K066', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('144', 'K067', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('145', 'K068', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('146', 'K069', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('147', 'K070', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('148', 'K071', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('149', 'K072', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('150', 'K073', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('151', 'K074', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('152', 'K075', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('153', 'K076', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('154', 'K077', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('155', 'K078', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('156', 'K079', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('157', 'K080', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('158', 'K081', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('159', 'K082', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('160', 'K083', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('161', 'K084', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('162', 'K085', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('163', 'K086', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('164', 'K087', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('165', 'K088', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('166', 'K089', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('167', 'K090', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('168', 'K091', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '我这', 'ios11.3.1', null);
INSERT INTO `goods` VALUES ('169', 'K092', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '我这', 'ios11.3.1', null);
INSERT INTO `goods` VALUES ('170', 'K093', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('171', 'K094', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('172', 'K095', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('173', 'K096', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('174', 'K097', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('175', 'K098', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('176', 'K099', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('177', 'K100', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('178', 'K101', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('179', 'K102', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('180', 'K103', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('181', 'K104', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('182', 'K105', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('183', 'K106', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('184', 'K107', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('185', 'K108', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('186', 'K109', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('187', 'K110', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('188', 'K111', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('189', 'K112', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('190', 'K113', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('191', 'K114', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('192', 'K115', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('193', 'K116', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('194', 'K117', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('195', 'K118', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('196', 'K119', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('197', 'K120', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('198', 'K121', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('199', 'K122', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('200', 'K123', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('201', 'K124', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('202', 'K125', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('203', 'K126', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('204', 'K127', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('205', 'K128', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('206', 'K129', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('207', 'K130', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('208', 'K131', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('209', 'K132', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('210', 'K133', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('211', 'K134', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('212', 'K135', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('213', 'K136', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('214', 'K137', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('215', 'K138', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('216', 'K139', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('217', 'K140', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('218', 'K141', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('219', 'K142', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('220', 'K143', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('221', 'K144', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('222', 'K145', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('223', 'K146', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('224', 'K147', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('225', 'K148', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('226', 'K149', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('227', 'K150', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('228', 'K151', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('229', 'K152', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('230', 'K153', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('231', 'K154', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('232', 'K155', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('233', 'K156', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('234', 'K157', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('235', 'K158', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('236', 'K159', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('237', 'K160', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('238', 'K161', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('239', 'K162', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('240', 'K163', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('241', 'K164', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('242', 'K165', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('243', 'K166', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('244', 'K167', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('245', 'K168', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('246', 'K169', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('247', 'K170', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('248', 'K171', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('249', 'K172', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('250', 'K173', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('251', 'K174', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('252', 'K175', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('253', 'K176', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('254', 'K177', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('255', 'K178', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('256', 'K179', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('257', 'K180', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('258', 'K181', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('259', 'K182', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('260', 'K183', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('261', 'K184', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('262', 'K185', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('263', 'K186', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('264', 'K187', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('265', 'K188', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('266', 'K189', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('267', 'K190', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('268', 'K191', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('269', 'K192', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('270', 'K193', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('271', 'K194', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('272', 'K195', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('273', 'K196', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('274', 'K197', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('275', 'K198', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('276', 'K199', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('277', 'K200', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('278', 'K201', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('279', 'K202', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('280', 'K203', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('281', 'K204', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('282', 'K205', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('283', 'K206', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('284', 'K207', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('285', 'K208', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('286', 'K209', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('287', 'K210', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('288', 'K211', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('289', 'K212', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('290', 'K213', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('291', 'K214', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('292', 'K215', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('293', 'K216', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('294', 'K217', '2018-07-30 10:38:27', '2018-07-30 10:41:36', null, '5s', 'K', '', '', null);
INSERT INTO `goods` VALUES ('296', 'J001               ', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '老板那', '', null);
INSERT INTO `goods` VALUES ('297', 'J002              ', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '老板那', '', null);
INSERT INTO `goods` VALUES ('298', 'J003', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('299', 'J004', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('300', 'J005', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('301', 'J006', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('302', 'J007', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('303', 'J008', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('304', 'J009', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('305', 'J010', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('306', 'J011', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('307', 'J012', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('308', 'J013', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('309', 'J014', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('310', 'J015', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('311', 'J016', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('312', 'J017', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('313', 'J018', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('314', 'J019', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('315', 'J020', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('316', 'J021', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('317', 'J022', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('318', 'J023', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('319', 'J024', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('320', 'J025', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('321', 'J026', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('322', 'J027', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('323', 'J028', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('324', 'J029', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('325', 'J030', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('326', 'J031', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('327', 'J032', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('328', 'J033', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('329', 'J034', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('330', 'J035', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('331', 'J036', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('332', 'J037', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('333', 'J038', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('334', 'J039', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('335', 'J040', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('336', 'J041', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('337', 'J042', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('338', 'J043', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('339', 'J044', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('340', 'J045', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('341', 'J046', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('342', 'J047', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('343', 'J048', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('344', 'J049', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('345', 'J050', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('346', 'J051', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('347', 'J052', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('348', 'J053', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('349', 'J054', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('350', 'J055', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('351', 'J056', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('352', 'J057', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('353', 'J058', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('354', 'J059', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('355', 'J060', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('356', 'J061', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('357', 'J062', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('358', 'J063', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('359', 'J064', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('360', 'J065', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('361', 'J066', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('362', 'J067', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('363', 'J068', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('364', 'J069', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('365', 'J070', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('366', 'J071', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('367', 'J072', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('368', 'J073', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('369', 'J074', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('370', 'J075', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('371', 'J076', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('372', 'J077', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('373', 'J078', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('374', 'J079', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('375', 'J080', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('376', 'J081', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('377', 'J082', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('378', 'J083', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('379', 'J084', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('380', 'J085', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('381', 'J086', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('382', 'J087', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('383', 'J088', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('384', 'J089', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('385', 'J090', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('386', 'J091', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('387', 'J092', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('388', 'J093', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('389', 'J094', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('390', 'J095', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('391', 'J096', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '', '', null);
INSERT INTO `goods` VALUES ('392', 'J097           ', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '老板那', '', null);
INSERT INTO `goods` VALUES ('393', 'J098          ', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '老板那', '', null);
INSERT INTO `goods` VALUES ('394', 'J099           ', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '老板那', '', null);
INSERT INTO `goods` VALUES ('395', 'J100           ', '2018-07-30 10:45:03', '2018-07-30 10:48:19', null, '6s', 'J', '老板那', '', null);
INSERT INTO `goods` VALUES ('396', 'I001', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('397', 'I002', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('398', 'I003', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('399', 'I004', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('400', 'I005', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('401', 'I006', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('402', 'I007', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('403', 'I008', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('404', 'I009', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('405', 'I010', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('406', 'I011', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('407', 'I012', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('408', 'I013             ', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '老板那', '11.2.6', null);
INSERT INTO `goods` VALUES ('409', 'I014 ', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('410', 'I015', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('411', 'I016', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('412', 'I017', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('413', 'I018', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('414', 'I019', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('415', 'I020', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('416', 'I021', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('417', 'I022', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('418', 'I023', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('419', 'I024', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('420', 'I025', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('421', 'I026', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('422', 'I027', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('423', 'I028', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('424', 'I029', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('425', 'I030', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('426', 'I031', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('427', 'I032', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('428', 'I033', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('429', 'I034', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('430', 'I035', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('431', 'I036', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('432', 'I037', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('433', 'I038', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('434', 'I039', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('435', 'I040', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('436', 'I041', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('437', 'I042', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('438', 'I043', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('439', 'I044', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('440', 'I045', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('441', 'I046', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('442', 'I047', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('443', 'I048', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('444', 'I049', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('445', 'I050', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('446', 'I051', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('447', 'I052', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('448', 'I053', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('449', 'I054', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('450', 'I055', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('451', 'I056', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('452', 'I057', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('453', 'I058', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('454', 'I059', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('455', 'I060', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('456', 'I061', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('457', 'I062', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('458', 'I063', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('459', 'I064', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('460', 'I065', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('461', 'I066', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('462', 'I067', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('463', 'I068', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('464', 'I069', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('465', 'I070', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('466', 'I071', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('467', 'I072', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('468', 'I073', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('469', 'I074', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('470', 'I075', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('471', 'I076', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('472', 'I077', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('473', 'I078', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('474', 'I079', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('475', 'I080', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('476', 'I081', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('477', 'I082', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('478', 'I083', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('479', 'I084', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('480', 'I085', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('481', 'I086', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('482', 'I087', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('483', 'I088', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('484', 'I089', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('485', 'I090', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('486', 'I091', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('487', 'I092', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('488', 'I093', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('489', 'I094', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('490', 'I095', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('491', 'I096', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '', '', null);
INSERT INTO `goods` VALUES ('492', 'I097           ', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '老板那', '', null);
INSERT INTO `goods` VALUES ('493', 'I098          ', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '老板那', '', null);
INSERT INTO `goods` VALUES ('494', 'I099          ', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '静静那', '', null);
INSERT INTO `goods` VALUES ('495', 'I100          ', '2018-07-30 10:49:53', '2018-07-30 10:51:53', null, '6s', 'I', '老板那', '', null);
INSERT INTO `goods` VALUES ('496', 'H001', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('497', 'H002', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('498', 'H003', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('499', 'H004', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('500', 'H005', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('501', 'H006', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('502', 'H007', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('503', 'H008', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('504', 'H009', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('505', 'H010', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('506', 'H011', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('507', 'H012', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('508', 'H013', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('509', 'H014', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('510', 'H015', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('511', 'H016', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('512', 'H017', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('513', 'H018', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('514', 'H019', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('515', 'H020', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('516', 'H021', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('517', 'H022', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('518', 'H023', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('519', 'H024', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('520', 'H025', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('521', 'H026', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('522', 'H027', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('523', 'H028             ', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '老板那', '11.3.1', null);
INSERT INTO `goods` VALUES ('524', 'H029', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('525', 'H030', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('526', 'H031', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('527', 'H032', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('528', 'H033', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('529', 'H034', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('530', 'H035', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('531', 'H036', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('532', 'H037', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('533', 'H038', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('534', 'H039', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('535', 'H040', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('536', 'H041', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('537', 'H042', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('538', 'H043', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('539', 'H044', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('540', 'H045', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('541', 'H046', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('542', 'H047', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('543', 'H048', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('544', 'H049', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('545', 'H050', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('546', 'H051', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('547', 'H052', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('548', 'H053', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('549', 'H054', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('550', 'H055', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('551', 'H056', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('552', 'H057', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('553', 'H058', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('554', 'H059', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('555', 'H060', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('556', 'H061', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('557', 'H062', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('558', 'H063', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('559', 'H064', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('560', 'H065', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('561', 'H066', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('562', 'H067', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('563', 'H068', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('564', 'H069', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('565', 'H070', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('566', 'H071', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('567', 'H072', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('568', 'H073', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('569', 'H074', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('570', 'H075', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('571', 'H076', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('572', 'H077', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('573', 'H078', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('574', 'H079', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('575', 'H080', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('576', 'H081', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('577', 'H082', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('578', 'H083', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('579', 'H084', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('580', 'H085', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('581', 'H086', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('582', 'H087', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('583', 'H088', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('584', 'H089', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('585', 'H090', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('586', 'H091', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('587', 'H092', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('588', 'H093', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('589', 'H094', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('590', 'H095', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('591', 'H096', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '', '', null);
INSERT INTO `goods` VALUES ('592', 'H097          ', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '老板那', '', null);
INSERT INTO `goods` VALUES ('593', 'H098          ', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '老板那', '', null);
INSERT INTO `goods` VALUES ('594', 'H099          ', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '老板那', '', null);
INSERT INTO `goods` VALUES ('595', 'H100          ', '2018-07-30 10:53:27', '2018-07-30 10:56:00', null, '6s', 'H', '老板那', '', null);
INSERT INTO `goods` VALUES ('596', 'G001              ', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('597', 'G002', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('598', 'G003', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('599', 'G004', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('600', 'G005', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('601', 'G006', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('602', 'G007', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('603', 'G008', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('604', 'G009', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('605', 'G010', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('606', 'G011', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('607', 'G012', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('608', 'G013', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('609', 'G014               ', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '我这', '11.4.1', null);
INSERT INTO `goods` VALUES ('610', 'G015               ', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '技术部', '', null);
INSERT INTO `goods` VALUES ('611', 'G016', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('612', 'G017', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('613', 'G018', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('614', 'G019', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('615', 'G020', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('616', 'G021', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('617', 'G022', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('618', 'G023', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('619', 'G024', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('620', 'G025', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('621', 'G026', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('622', 'G027', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('623', 'G028', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('624', 'G029', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('625', 'G030               ', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '？', '', null);
INSERT INTO `goods` VALUES ('626', 'G031', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('627', 'G032', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('628', 'G033', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('629', 'G034', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('630', 'G035', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('631', 'G036', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('632', 'G037', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('633', 'G038', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('634', 'G039', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('635', 'G040', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('636', 'G041', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('637', 'G042', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('638', 'G043', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('639', 'G044', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('640', 'G045', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('641', 'G046', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('642', 'G047', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('643', 'G048', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('644', 'G049', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('645', 'G050', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('646', 'G051', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('647', 'G052', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('648', 'G053', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('649', 'G054', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('650', 'G055               ', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '？', '', null);
INSERT INTO `goods` VALUES ('651', 'G056', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('652', 'G057', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('653', 'G058', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('654', 'G059', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('655', 'G060', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('656', 'G061', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('657', 'G062', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('658', 'G063', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('659', 'G064', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('660', 'G065', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('661', 'G066', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('662', 'G067', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('663', 'G068', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('664', 'G069', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('665', 'G070         ', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '老板那', '', null);
INSERT INTO `goods` VALUES ('666', 'G071', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('667', 'G072         ', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '老板那', '', null);
INSERT INTO `goods` VALUES ('668', 'G073', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('669', 'G074          ', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '老板那', '', null);
INSERT INTO `goods` VALUES ('670', 'G075', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('671', 'G076', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('672', 'G077', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('673', 'G078', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('674', 'G079', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('675', 'G080', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('676', 'G081', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('677', 'G082', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('678', 'G083', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('679', 'G084', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('680', 'G085', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('681', 'G086', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('682', 'G087', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('683', 'G088', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('684', 'G089', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('685', 'G090', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('686', 'G091', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('687', 'G092', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('688', 'G093', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('689', 'G094', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('690', 'G095', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('691', 'G096', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', null);
INSERT INTO `goods` VALUES ('692', 'G097          ', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '老板那', '', null);
INSERT INTO `goods` VALUES ('693', 'G098         ', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '老板那', '', null);
INSERT INTO `goods` VALUES ('694', 'G099                                       ', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', '缺失');
INSERT INTO `goods` VALUES ('695', 'G100                                     ', '2018-07-30 10:57:15', '2018-07-30 11:02:57', null, '6', 'G', '', '', '缺失');
INSERT INTO `goods` VALUES ('696', 'F001', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('697', 'F002', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('698', 'F003', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('699', 'F004', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('700', 'F005', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('701', 'F006', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('702', 'F007', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('703', 'F008', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('704', 'F009', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('705', 'F010', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('706', 'F011', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('707', 'F012', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('708', 'F013', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('709', 'F014', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('710', 'F015', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('711', 'F016', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('712', 'F017', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('713', 'F018', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('714', 'F019', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('715', 'F020', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('716', 'F021', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('717', 'F022', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('718', 'F023', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('719', 'F024', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('720', 'F025', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('721', 'F026         ', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '老板那', '修不好', '');
INSERT INTO `goods` VALUES ('722', 'F027', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('723', 'F028', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('724', 'F029', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('725', 'F030', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('726', 'F031', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('727', 'F032', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('728', 'F033        ', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '技术部', '', '');
INSERT INTO `goods` VALUES ('729', 'F034', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('730', 'F035', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('731', 'F036', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('732', 'F037', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('733', 'F038', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('734', 'F039', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('735', 'F040', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('736', 'F041', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('737', 'F042', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('738', 'F043', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('739', 'F044', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('740', 'F045', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('741', 'F046', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('742', 'F047', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('743', 'F048', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('744', 'F049', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('745', 'F050', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('746', 'F051', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('747', 'F052', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('748', 'F053', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('749', 'F054', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('750', 'F055', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('751', 'F056', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('752', 'F057', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('753', 'F058', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('754', 'F059', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('755', 'F060', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('756', 'F061', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('757', 'F062', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('758', 'F063', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('759', 'F064', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('760', 'F065', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('761', 'F066', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('762', 'F067', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('763', 'F068', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('764', 'F069', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('765', 'F070', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('766', 'F071', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('767', 'F072', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('768', 'F073', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('769', 'F074', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('770', 'F075', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('771', 'F076', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('772', 'F077', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('773', 'F078', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('774', 'F079', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('775', 'F080', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('776', 'F081', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('777', 'F082', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('778', 'F083', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('779', 'F084', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('780', 'F085', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('781', 'F086', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('782', 'F087', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('783', 'F088', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('784', 'F089', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('785', 'F090', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('786', 'F091', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('787', 'F092', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('788', 'F093', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('789', 'F094', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('790', 'F095', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('791', 'F096', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '', '', '');
INSERT INTO `goods` VALUES ('792', 'F097         ', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '老板那', '', '');
INSERT INTO `goods` VALUES ('793', 'F098        ', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '老板那', '', '');
INSERT INTO `goods` VALUES ('794', 'F099         ', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '老板那', '', '');
INSERT INTO `goods` VALUES ('795', 'F100        ', '2018-07-30 11:03:54', '2018-07-30 11:05:36', null, '6s', 'F', '老板那', '', '');
INSERT INTO `goods` VALUES ('796', 'E001', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('797', 'E002', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('798', 'E003', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('799', 'E004', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('800', 'E005', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('801', 'E006', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('802', 'E007', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('803', 'E008', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('804', 'E009', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('805', 'E010', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('806', 'E011', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('807', 'E012', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('808', 'E013', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('809', 'E014', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('810', 'E015              ', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '老板那', '11.2.6 连接不上电脑', '');
INSERT INTO `goods` VALUES ('811', 'E016', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('812', 'E017             ', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '技术部', '', '');
INSERT INTO `goods` VALUES ('813', 'E018', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('814', 'E019', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('815', 'E020', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('816', 'E021', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('817', 'E022', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('818', 'E023', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('819', 'E024', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('820', 'E025', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('821', 'E026', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('822', 'E027', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('823', 'E028', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('824', 'E029', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('825', 'E030', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('826', 'E031', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('827', 'E032', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('828', 'E033', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('829', 'E034', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('830', 'E035', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('831', 'E036', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('832', 'E037', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('833', 'E038', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('834', 'E039', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('835', 'E040             ', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '老板那', '', '');
INSERT INTO `goods` VALUES ('836', 'E041', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('837', 'E042', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('838', 'E043', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('839', 'E044', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('840', 'E045', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('841', 'E046', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('842', 'E047', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('843', 'E048', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('844', 'E049', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('845', 'E050', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('846', 'E051', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('847', 'E052', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('848', 'E053', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('849', 'E054', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('850', 'E055', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('851', 'E056            ', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '技术部', '', '');
INSERT INTO `goods` VALUES ('852', 'E057', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('853', 'E058', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('854', 'E059', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('855', 'E060', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('856', 'E061', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('857', 'E062', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('858', 'E063', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('859', 'E064', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('860', 'E065', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('861', 'E066', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('862', 'E067', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('863', 'E068', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('864', 'E069', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('865', 'E070', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('866', 'E071              ', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', ' 我这', '', '');
INSERT INTO `goods` VALUES ('867', 'E072', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('868', 'E073', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('869', 'E074', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('870', 'E075             ', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '我这', '', '');
INSERT INTO `goods` VALUES ('871', 'E076', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('872', 'E077', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('873', 'E078', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('874', 'E079            ', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '老板那', '', '');
INSERT INTO `goods` VALUES ('875', 'E080', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('876', 'E081', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('877', 'E082', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('878', 'E083', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('879', 'E084', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('880', 'E085', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('881', 'E086', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('882', 'E087', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('883', 'E088', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('884', 'E089', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('885', 'E090', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('886', 'E091', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('887', 'E092', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('888', 'E093', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('889', 'E094', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('890', 'E095', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('891', 'E096', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('892', 'E097', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '', '', '');
INSERT INTO `goods` VALUES ('893', 'E098              ', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '老板那', '', '');
INSERT INTO `goods` VALUES ('894', 'E099              ', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '老板那', '', '');
INSERT INTO `goods` VALUES ('895', 'E100              ', '2018-07-30 11:06:32', '2018-07-30 11:08:47', null, '6', 'E', '老板那', '', '');
INSERT INTO `goods` VALUES ('896', 'D001', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('897', 'D002', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('898', 'D003', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('899', 'D004', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('900', 'D005', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('901', 'D006', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('902', 'D007', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('903', 'D008', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('904', 'D009', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('905', 'D010                ', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '技术部', '', '');
INSERT INTO `goods` VALUES ('906', 'D011', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('907', 'D012', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('908', 'D013', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('909', 'D014', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('910', 'D015', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('911', 'D016', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('912', 'D017', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('913', 'D018', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('914', 'D019', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('915', 'D020', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('916', 'D021', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('917', 'D022', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('918', 'D023', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('919', 'D024', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('920', 'D025', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('921', 'D026', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('922', 'D027', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('923', 'D028', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('924', 'D029', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('925', 'D030', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('926', 'D031', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('927', 'D032', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('928', 'D033', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('929', 'D034', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('930', 'D035', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('931', 'D036', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('932', 'D037', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('933', 'D038', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('934', 'D039', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('935', 'D040', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('936', 'D041', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('937', 'D042', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('938', 'D043', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('939', 'D044', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('940', 'D045', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('941', 'D046', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('942', 'D047', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('943', 'D048', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('944', 'D049', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('945', 'D050', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('946', 'D051', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('947', 'D052', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('948', 'D053', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('949', 'D054', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('950', 'D055', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('951', 'D056', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('952', 'D057', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('953', 'D058', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('954', 'D059', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('955', 'D060            ', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '我这', '11.4.1', '');
INSERT INTO `goods` VALUES ('956', 'D061', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('957', 'D062', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('958', 'D063', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('959', 'D064', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('960', 'D065', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('961', 'D066           ', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '技术部', '', '');
INSERT INTO `goods` VALUES ('962', 'D067', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('963', 'D068', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('964', 'D069', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('965', 'D070', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('966', 'D071', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('967', 'D072', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('968', 'D073', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('969', 'D074', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('970', 'D075', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('971', 'D076', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('972', 'D077', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('973', 'D078', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('974', 'D079', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('975', 'D080', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('976', 'D081', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('977', 'D082', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('978', 'D083', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('979', 'D084', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('980', 'D085', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('981', 'D086', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('982', 'D087', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('983', 'D088', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('984', 'D089', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('985', 'D090', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('986', 'D091', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('987', 'D092', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('988', 'D093', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('989', 'D094', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('990', 'D095', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('991', 'D096', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '');
INSERT INTO `goods` VALUES ('992', 'D097               ', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '老板那', '', '');
INSERT INTO `goods` VALUES ('993', 'D098               ', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '老板那', '', '');
INSERT INTO `goods` VALUES ('994', 'D099               ', '2018-07-30 11:09:42', '2018-07-30 11:13:37', null, '6s', 'D', '老板那', '', '');
INSERT INTO `goods` VALUES ('995', 'D100', '2018-07-30 11:12:21', '2018-07-30 11:13:37', null, '6s', 'D', '', '', '缺失');
INSERT INTO `goods` VALUES ('996', 'C001                                              ', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('997', 'C002', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('998', 'C003', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('999', 'C004', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1000', 'C005', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1001', 'C006', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1002', 'C007', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1003', 'C008', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1004', 'C009', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1005', 'C010', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1006', 'C011', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1007', 'C012', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1008', 'C013', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1009', 'C014', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1010', 'C015', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1011', 'C016', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1012', 'C017', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1013', 'C018', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1014', 'C019', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1015', 'C020', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1016', 'C021', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1017', 'C022', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1018', 'C023', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1019', 'C024', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1020', 'C025', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1021', 'C026', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1022', 'C027', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1023', 'C028', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1024', 'C029', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1025', 'C030', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1026', 'C031', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1027', 'C032', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1028', 'C033', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1029', 'C034', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1030', 'C035', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1031', 'C036', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1032', 'C037', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1033', 'C038', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1034', 'C039', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1035', 'C040', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1036', 'C041', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1037', 'C042', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1038', 'C043', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1039', 'C044', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1040', 'C045', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1041', 'C046', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1042', 'C047', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1043', 'C048', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1044', 'C049', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1045', 'C050', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1046', 'C051', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1047', 'C052', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1048', 'C053', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1049', 'C054', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1050', 'C055', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1051', 'C056', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1052', 'C057', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1053', 'C058', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1054', 'C059', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1055', 'C060', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1056', 'C061', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1057', 'C062', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1058', 'C063', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1059', 'C064', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1060', 'C065', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1061', 'C066', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1062', 'C067', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1063', 'C068', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1064', 'C069', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1065', 'C070', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1066', 'C071', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1067', 'C072', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1068', 'C073', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1069', 'C074', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1070', 'C075', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1071', 'C076', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1072', 'C077', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1073', 'C078', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1074', 'C079', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1075', 'C080', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1076', 'C081', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1077', 'C082', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1078', 'C083', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1079', 'C084', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1080', 'C085', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1081', 'C086', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1082', 'C087', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1083', 'C088', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1084', 'C089', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1085', 'C090', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1086', 'C091', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1087', 'C092', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1088', 'C093', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1089', 'C094', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1090', 'C095', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1091', 'C096', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '', '', '');
INSERT INTO `goods` VALUES ('1092', 'C097          ', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '老板那', '', '');
INSERT INTO `goods` VALUES ('1093', 'C098           ', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '老板那', '', '');
INSERT INTO `goods` VALUES ('1094', 'C099           ', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '老板那', '', '');
INSERT INTO `goods` VALUES ('1095', 'C100           ', '2018-07-30 11:14:24', '2018-07-30 11:15:18', null, '6s', 'C', '老板那', '', '');
INSERT INTO `goods` VALUES ('1096', 'A001                ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1097', 'A002               ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '刷机了', '');
INSERT INTO `goods` VALUES ('1098', 'A003', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1099', 'A004', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1100', 'A005', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1101', 'A006', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1102', 'A007                ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '刷机了', '');
INSERT INTO `goods` VALUES ('1103', 'A008', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1104', 'A009', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1105', 'A010', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1106', 'A011', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1107', 'A012', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1108', 'A013', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1109', 'A014', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1110', 'A015', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1111', 'A016', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1112', 'A017', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1113', 'A018', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1114', 'A019', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1115', 'A020', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1116', 'A021', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1117', 'A022', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1118', 'A023', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1119', 'A024', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1120', 'A025', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1121', 'A026', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1122', 'A027', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1123', 'A028', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1124', 'A029', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1125', 'A030', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1126', 'A031', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1127', 'A032', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1128', 'A033', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1129', 'A034', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1130', 'A035', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1131', 'A036', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1132', 'A037', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1133', 'A038              ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '刷机了', '');
INSERT INTO `goods` VALUES ('1134', 'A039', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1135', 'A040', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1136', 'A041', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1137', 'A042', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1138', 'A043', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1139', 'A044', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1140', 'A045', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1141', 'A046', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1142', 'A047', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1143', 'A048', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1144', 'A049', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1145', 'A050                ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '刷机了', '');
INSERT INTO `goods` VALUES ('1146', 'A051', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1147', 'A052', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1148', 'A053', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1149', 'A054', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1150', 'A055', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1151', 'A056', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1152', 'A057', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1153', 'A058', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1154', 'A059', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1155', 'A060', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1156', 'A061', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1157', 'A062', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1158', 'A063', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1159', 'A064                ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '刷机了', '');
INSERT INTO `goods` VALUES ('1160', 'A065', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1161', 'A066', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1162', 'A067', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1163', 'A068', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1164', 'A069', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1165', 'A070', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1166', 'A071', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1167', 'A072', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1168', 'A073', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1169', 'A074', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1170', 'A075', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1171', 'A076', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1172', 'A077', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1173', 'A078', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1174', 'A079               ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '刷机了', '');
INSERT INTO `goods` VALUES ('1175', 'A080', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1176', 'A081', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1177', 'A082', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1178', 'A083', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1179', 'A084', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1180', 'A085', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1181', 'A086', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1182', 'A087', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1183', 'A088', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1184', 'A089', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1185', 'A090', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1186', 'A091', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1187', 'A092', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1188', 'A093', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1189', 'A094                ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '刷机了', '');
INSERT INTO `goods` VALUES ('1190', 'A095', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1191', 'A096', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1192', 'A097', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1193', 'A098', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1194', 'A099', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1195', 'A100               ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '屏幕不灵敏', '');
INSERT INTO `goods` VALUES ('1196', 'A101', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1197', 'A102', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1198', 'A103', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1199', 'A104', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1200', 'A105', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1201', 'A106', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1202', 'A107               ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '刷机了', '');
INSERT INTO `goods` VALUES ('1203', 'A108', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1204', 'A109', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1205', 'A110', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1206', 'A111', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1207', 'A112', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1208', 'A113', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1209', 'A114', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1210', 'A115               ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '有锁机无法激活', '');
INSERT INTO `goods` VALUES ('1211', 'A116', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1212', 'A117', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1213', 'A118', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1214', 'A119', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1215', 'A120', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1216', 'A121', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1217', 'A122', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1218', 'A123', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1219', 'A124', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1220', 'A125', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1221', 'A126', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1222', 'A127', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1223', 'A128', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1224', 'A129', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1225', 'A130               ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '屏幕不灵敏', '');
INSERT INTO `goods` VALUES ('1226', 'A131', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1227', 'A132', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1228', 'A133', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1229', 'A134', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1230', 'A135', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1231', 'A136', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1232', 'A137', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1233', 'A138', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1234', 'A139', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1235', 'A140', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1236', 'A141', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1237', 'A142', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1238', 'A143', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1239', 'A144', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1240', 'A145', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1241', 'A146', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1242', 'A147', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1243', 'A148               ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '刷机了', '');
INSERT INTO `goods` VALUES ('1244', 'A149', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1245', 'A150', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1246', 'A151', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1247', 'A152', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1248', 'A153', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1249', 'A154', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1250', 'A155', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1251', 'A156', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1252', 'A157', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1253', 'A158', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1254', 'A159', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1255', 'A160', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1256', 'A161', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1257', 'A162', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1258', 'A163', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1259', 'A164', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1260', 'A165', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1261', 'A166', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1262', 'A167', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1263', 'A168                 ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '有锁机无法激活', '');
INSERT INTO `goods` VALUES ('1264', 'A169', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1265', 'A170', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1266', 'A171', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1267', 'A172', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1268', 'A173', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1269', 'A174', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1270', 'A175', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1271', 'A176', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1272', 'A177', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1273', 'A178', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1274', 'A179', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1275', 'A180', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1276', 'A181', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1277', 'A182', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1278', 'A183', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1279', 'A184', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1280', 'A185                ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '刷机了', '');
INSERT INTO `goods` VALUES ('1281', 'A186', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1282', 'A187', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1283', 'A188', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1284', 'A189', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1285', 'A190', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1286', 'A191                ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '刷机了', '');
INSERT INTO `goods` VALUES ('1287', 'A192', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1288', 'A193', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1289', 'A194', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1290', 'A195', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1291', 'A196', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1292', 'A197', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1293', 'A198', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1294', 'A199', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1295', 'A200', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1296', 'A201', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1297', 'A202', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1298', 'A203', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1299', 'A204', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1300', 'A205               ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '刷机了', '');
INSERT INTO `goods` VALUES ('1301', 'A206', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1302', 'A207', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1303', 'A208', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '', '', '');
INSERT INTO `goods` VALUES ('1304', 'A209                ', '2018-07-30 11:16:42', '2018-07-30 11:22:23', null, '6', 'A', '柜子里', '刷机了', '');
INSERT INTO `goods` VALUES ('1305', '11A001           ', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', ' 我这', '11.3.1', '');
INSERT INTO `goods` VALUES ('1306', '11A002', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1307', '11A003            ', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', ' 我这', '11.3.1', '');
INSERT INTO `goods` VALUES ('1308', '11A004', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1309', '11A005           ', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', ' 我这', '11.3.1', '');
INSERT INTO `goods` VALUES ('1310', '11A006          ', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', ' 我这', '11.3.1', '');
INSERT INTO `goods` VALUES ('1311', '11A007', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1312', '11A008', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1313', '11A009             ', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', ' 我这', '11.3.1', '');
INSERT INTO `goods` VALUES ('1314', '11A010', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1315', '11A011            ', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', ' 我这', '11.3.1', '');
INSERT INTO `goods` VALUES ('1316', '11A012', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1317', '11A013           ', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', ' 我这', '11.3.1', '');
INSERT INTO `goods` VALUES ('1318', '11A014', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1319', '11A015', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1320', '11A016', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1321', '11A017', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1322', '11A018', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1323', '11A019', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1324', '11A020', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1325', '11A021', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1326', '11A022', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1327', '11A023', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1328', '11A024', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1329', '11A025', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1330', '11A026', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1331', '11A027', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1332', '11A028', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1333', '11A029', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1334', '11A030', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1335', '11A031', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1336', '11A032', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1337', '11A033', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1338', '11A034', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1339', '11A035', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1340', '11A036', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1341', '11A037', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1342', '11A038', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1343', '11A039', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1344', '11A040', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1345', '11A041', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1346', '11A042', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1347', '11A043', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1348', '11A044', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1349', '11A045', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1350', '11A046', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1351', '11A047', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1352', '11A048', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1353', '11A049', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1354', '11A050', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1355', '11A051', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1356', '11A052', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1357', '11A053', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1358', '11A054', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1359', '11A055', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1360', '11A056', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1361', '11A057', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1362', '11A058           ', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', ' 我这', '越狱有问题', '');
INSERT INTO `goods` VALUES ('1363', '11A059', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1364', '11A060', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1365', '11A061', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1366', '11A062', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1367', '11A063', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1368', '11A064', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1369', '11A065', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1370', '11A066', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1371', '11A067', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1372', '11A068', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1373', '11A069', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1374', '11A070', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1375', '11A071', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1376', '11A072', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1377', '11A073', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1378', '11A074', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1379', '11A075', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1380', '11A076', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1381', '11A077', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1382', '11A078', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1383', '11A079', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1384', '11A080', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1385', '11A081', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1386', '11A082            ', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', ' 我这', ' 越狱有问题', '');
INSERT INTO `goods` VALUES ('1387', '11A083', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1388', '11A084', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1389', '11A085', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1390', '11A086', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1391', '11A087', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1392', '11A088', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1393', '11A089', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1394', '11A090', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1395', '11A091', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1396', '11A092', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1397', '11A093', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1398', '11A094', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1399', '11A095', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1400', '11A096', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1401', '11A097             ', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', ' 我这', ' 越狱有问题', '');
INSERT INTO `goods` VALUES ('1402', '11A098', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '', '', '');
INSERT INTO `goods` VALUES ('1403', '11A099              ', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '技术部', '', '');
INSERT INTO `goods` VALUES ('1404', '11A100              ', '2018-07-30 11:23:20', '2018-07-30 11:26:24', null, '6s', '11A', '技术部', '', '');
INSERT INTO `goods` VALUES ('1405', '5S170        ', '2018-07-30 11:27:48', '2018-07-30 11:28:44', null, '5s', '5S', '我这', '', '');
INSERT INTO `goods` VALUES ('1406', '5S205         ', '2018-07-30 11:27:48', '2018-07-30 11:28:44', null, '5s', '5S', '我这', '', '');
INSERT INTO `goods` VALUES ('1407', '5S206         ', '2018-07-30 11:27:48', '2018-07-30 11:28:44', null, '5s', '5S', '我这', '', '');
INSERT INTO `goods` VALUES ('1408', '5S207         ', '2018-07-30 11:27:48', '2018-07-30 11:28:44', null, '5s', '5S', '我这', '', '');
INSERT INTO `goods` VALUES ('1409', '5S208        ', '2018-07-30 11:27:48', '2018-07-30 11:28:44', null, '5s', '5S', '我这', '', '');
INSERT INTO `goods` VALUES ('1410', '5S209        ', '2018-07-30 11:27:48', '2018-07-30 11:28:44', null, '5s', '5S', '我这', '', '');
INSERT INTO `goods` VALUES ('1411', '5S210         ', '2018-07-30 11:27:48', '2018-07-30 11:28:44', null, '5s', '5S', '我这', '', '');
INSERT INTO `goods` VALUES ('1412', '5S211          ', '2018-07-30 11:27:48', '2018-07-30 11:29:02', null, '5s', '5S', '我这', '11.3.1', '');
INSERT INTO `goods` VALUES ('1413', '5S219         ', '2018-07-30 11:27:48', '2018-07-30 11:28:44', null, '5s', '5S', '我这', '', '');

-- ----------------------------
-- Table structure for `link`
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `cate` varchar(50) NOT NULL DEFAULT '0',
  `data` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
