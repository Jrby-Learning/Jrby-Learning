/*
 Navicat Premium Data Transfer

 Source Server         : conn1
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : neusoftedu

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 20/07/2022 15:35:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access_log
-- ----------------------------
DROP TABLE IF EXISTS `access_log`;
CREATE TABLE `access_log`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `user_account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户帐号',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名',
  `user_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户类型',
  `access_time` datetime NOT NULL COMMENT '访问时间',
  `ip_address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'IP地址',
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所在城市',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 226 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of access_log
-- ----------------------------
INSERT INTO `access_log` VALUES (160, '未登录', '--', '普通用户', '2022-07-11 20:14:33', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：8.218.18.8');
INSERT INTO `access_log` VALUES (161, 'jasonchu68@163.com', 'jasonchu68', '普通用户', '2022-07-11 20:33:57', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：8.218.18.8');
INSERT INTO `access_log` VALUES (162, 'jasonchu68@163.com', 'jasonchu68', '普通用户', '2022-07-11 20:35:02', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：8.218.18.8');
INSERT INTO `access_log` VALUES (163, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-11 20:37:50', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：8.218.18.8');
INSERT INTO `access_log` VALUES (164, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-11 20:39:15', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：8.218.18.8');
INSERT INTO `access_log` VALUES (165, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-11 20:40:38', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：8.218.18.8');
INSERT INTO `access_log` VALUES (166, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-11 20:42:53', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：8.218.18.8');
INSERT INTO `access_log` VALUES (167, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-11 20:43:58', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：8.218.18.8');
INSERT INTO `access_log` VALUES (168, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-11 20:54:48', '192.168.1.201', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：8.218.18.8');
INSERT INTO `access_log` VALUES (169, 'jasonchu68@163.com', 'Jason', '人事部门管理员', '2022-07-11 21:04:07', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：8.218.18.8');
INSERT INTO `access_log` VALUES (170, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-11 21:06:33', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：8.218.18.8');
INSERT INTO `access_log` VALUES (171, '未登录', '--', '普通用户', '2022-07-11 21:22:41', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：8.218.18.8');
INSERT INTO `access_log` VALUES (172, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-11 21:24:42', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：8.218.18.8');
INSERT INTO `access_log` VALUES (173, '未登录', '--', '普通用户', '2022-07-11 21:51:30', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：8.218.18.8');
INSERT INTO `access_log` VALUES (174, '未登录', '--', '普通用户', '2022-07-11 21:51:48', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：8.218.18.8');
INSERT INTO `access_log` VALUES (175, '未登录', '--', '普通用户', '2022-07-11 21:53:01', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：8.218.18.8');
INSERT INTO `access_log` VALUES (176, '未登录', '--', '普通用户', '2022-07-11 21:57:55', '192.168.1.201', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：112.32.203.197');
INSERT INTO `access_log` VALUES (177, '未登录', '--', '普通用户', '2022-07-11 22:02:08', '192.168.1.201', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：112.32.203.197');
INSERT INTO `access_log` VALUES (178, '未登录', '--', '普通用户', '2022-07-11 22:03:47', '192.168.1.201', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：112.32.203.197');
INSERT INTO `access_log` VALUES (179, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-11 22:23:11', '192.168.1.201', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：112.32.203.197');
INSERT INTO `access_log` VALUES (180, '799343537@qq.com', '田所君今天雷普了吗', '普通用户', '2022-07-11 22:33:36', '192.168.1.201', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：112.32.203.197');
INSERT INTO `access_log` VALUES (181, 'jasonchu68@163.com', 'Jason', '人事部门管理员', '2022-07-11 22:40:08', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：112.32.203.197');
INSERT INTO `access_log` VALUES (182, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-11 22:40:37', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：112.32.203.197');
INSERT INTO `access_log` VALUES (183, '未登录', '--', '普通用户', '2022-07-11 23:13:58', '192.168.1.201', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：112.32.203.197');
INSERT INTO `access_log` VALUES (184, 'jasonchu34@gmail.com', '专业配音员纪伯', '普通用户', '2022-07-11 23:26:58', '192.168.1.201', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：112.32.203.197');
INSERT INTO `access_log` VALUES (185, 'jasonchu34@gmail.com', '专业配音员纪伯', '普通用户', '2022-07-11 23:43:22', '192.168.1.201', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：112.32.203.197');
INSERT INTO `access_log` VALUES (186, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-11 23:47:06', '192.168.1.201', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：112.32.203.197');
INSERT INTO `access_log` VALUES (187, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-12 09:26:13', '192.168.1.201', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：112.32.203.197');
INSERT INTO `access_log` VALUES (188, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-12 22:12:08', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (189, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-13 09:09:23', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (190, '未登录', '--', '普通用户', '2022-07-13 09:25:20', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (191, '未登录', '--', '普通用户', '2022-07-13 09:25:25', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (192, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-13 09:28:47', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (193, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-13 09:35:15', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (194, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-13 09:37:32', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (195, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-13 09:39:29', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (196, '未登录', '--', '普通用户', '2022-07-13 09:41:03', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (197, '未登录', '--', '普通用户', '2022-07-13 09:41:25', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (198, '未登录', '--', '普通用户', '2022-07-13 09:42:01', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (199, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-13 09:42:15', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (200, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-13 09:45:20', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (201, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-13 09:46:10', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (202, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-13 10:55:27', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (203, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-13 11:02:39', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (204, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-13 11:47:49', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (205, 'jasonchu68@163.com', 'jasonchu68', 'VIP用户', '2022-07-13 11:48:23', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (206, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-13 12:35:33', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (207, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-13 13:18:13', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (208, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-13 13:20:21', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (209, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-13 13:31:45', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (210, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-14 12:19:12', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (211, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-14 12:20:17', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (212, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-14 12:40:28', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (213, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-14 13:35:48', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (214, '未登录', '--', '普通用户', '2022-07-14 18:27:07', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (215, '未登录', '--', '普通用户', '2022-07-14 18:27:46', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (216, '未登录', '--', '普通用户', '2022-07-14 18:46:50', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (217, '未登录', '--', '普通用户', '2022-07-14 18:59:46', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (218, '未登录', '--', '普通用户', '2022-07-14 19:06:58', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (219, '未登录', '--', '普通用户', '2022-07-14 19:07:59', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (220, '未登录', '--', '普通用户', '2022-07-14 19:13:18', '127.0.0.1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (221, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-16 03:46:28', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (222, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-17 21:20:13', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (223, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-18 01:59:15', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (224, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-19 17:33:05', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (225, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-20 15:02:53', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');
INSERT INTO `access_log` VALUES (226, 'neuadminsofte@126.com', 'admin', '人事部门管理员', '2022-07-20 15:32:29', '0:0:0:0:0:0:0:1', '来源IP未被授权，解决方法见：https://lbs.qq.com/faq/serverFaq/webServiceKey，当前IP：117.90.46.19');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `article_id` int NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `article_title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `reading_count` int NULL DEFAULT 0 COMMENT '阅读量',
  `publish_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  `text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `cover_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '封面url',
  `type_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类',
  `publish_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '发布状态',
  `audit_state` int NOT NULL DEFAULT -1 COMMENT '审核状态',
  `reprint_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转载链接',
  `publisher` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `publisher_id` int NOT NULL COMMENT '发布人id',
  `delete_state` tinyint(1) NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (11, '田所浩二先生：下北泽的伟大科学家', 2, '2022-07-11 14:44:50', '田所浩二（1919年8月10日—2034年1月24日）下北泽沼气研究所高级工程师，作家，音乐家1919年8月10日出生于下北泽地区，24岁时毕业于下北泽大学，毕业后投身于下北泽地区的沼气田事业，曾带领1145人开发下北泽地区第14号沼气田并取得重大科研成果，中年开始创作音乐，晚年开始写作，代表作有小说《呐喊》自传《三哼经》钢琴曲《114514号旋律》《下北泽狂想曲》2034年1月24日在昏睡中长眠（悲）终年114岁5月14天\n\n悲惨的经历和伟大的志向\n\n1919年8月10日，田所浩二出生于下北泽地区，当时正值西班牙大流感，田所浩二的父亲因为流感死去，被母亲一手带大，母亲一直跟他说一句话：逸一时，误一世。田所浩二从这句话中受到很大启发，决心努力学习报效祖国，这句话也成了他在科研时期的座右铭\n\n下北泽大学“理科第一人”\n\n21岁时，田所浩二以极其优异的成绩考上了下北泽大学，由于物理化学成绩优异经常被老师和同学夸赞，每个过路的同学都会对她发出压力马撕内的夸赞声，甚至有“下北泽理科第一人”的美誉，此外在校中还学习了声乐和语言，成绩较为突出不过没有物理化学突出所以被人提起的不多，25岁毕业\n\n田所浩二的毕业照（拍摄于1944年）\n那个夏天\n\n正在上大学的田所浩二由于家境贫苦导致学费与生活费不足，于是他决定凭借自己的才华在大三暑假打两个月工赚一笔钱以补足自己最后一年学费与生活费，1943年7月，田所浩二踏上了求职道路，两天后他来到了真夏公司，却不料开公司的老板原野事homo，原野问了田所浩二几个问题，发现田所浩二很合他的口味于是对田所浩二实行了雷普行为，田所浩二被撅后并没有恐惧原野选择了第一时间报警，很快警察将原野抓获，原来原野已雷普114人，并且在雷普后进行威胁，这114都不敢去报警，只有田所浩二勇敢的去报了警，田所浩二因此收到了学校和警察局的夸奖，并获得了学校的补贴\n\n科研狂人\n\n田所浩二在大学毕业后选择了去研究沼气，下北泽沼气资源极其丰富，有“沼气王国”之称。26岁的田所浩二进入下北泽沼气研究所，政府给他分配了下辈子第14号沼气田后开始了长达几十年两点一线的生活，每天不是泡在研究所就是在家里睡觉，“科研难搞，那就更加努力的搞”这就是他坚持了几十年两点一线生活的原因\n\n1959年8月10日，40岁的田所浩二像往常一样一天有十几个小时泡在研究所，看似一切照旧，但这天对于田所浩二来说是非同寻常的一天，这天他取得了一份重大研究成果，8月14日发表论文《沼气清洁能源的合理开发利用》论文一发表立即在学术界引起极大轰动，认为田所浩二先生对沼气资源的新利用方式已经和20世纪50年代前的传统利用方式有了很大的区别，因此将田所浩二先生研发出的新利用方式称为田所方式，即使到今天田所方式依旧是沼气资源最合理的利用方式，田所浩二也就成了今天研究沼气的工程师的先辈\n\n中晚年的文学生活\n\n1974年，55岁的田所浩二用脑已经用了半辈子，自己的大脑早已没有他刚进研究所时的灵活，田所浩二多次意识到了这一点，于是56岁辞职，在家中的田所浩二也没有感到闲，由于他的大学学过声乐和语言，于是他在70岁前时创作音乐70岁后开始写作，他在14年的时间里创作了11首钢琴曲，最有名的便是《114514号旋律》《下北泽狂想曲》这两首钢琴曲在发布后的一年时间里在维也纳金色大厅里共响起了11遍，全球4514位音乐家称赞，专辑发售量更是达到1919810张，70岁以后的田所浩二开始写作，写出了《三哼经》《呐喊》等著作，《呐喊》描写了田所浩二在科研时遇到的困难，之所以取名呐喊是因为田所浩二每次遇到难以攻克的难题就会在在回家途中对着夕阳大喊，《呐喊》语言丰富，描写生动，是不可多得的佳作，看了以后会让人对田所浩二不怕困难坚持科研的精神加以称赞，《呐喊》仅在日本国内就卖出了1919810本\n\n巨星陨落\n\n2034年1月23日，114岁大寿的田所浩二像往常一样睡前喝了一杯红茶，结果突发冠心病（田所浩二由于在饮食上偏重口患上了冠心病）于2034年1月24日1:14分在昏睡中去世，人们纷纷哀悼这位伟大的科学家，在全球举行了哀悼活动，下北泽地区的人都会到田所浩二的墓碑前送上一杯红茶和花，并流着泪说你是一个一个一个然后啊的一声哭出来，联合国也决定将8月10日定为世界沼气日。', '/upload/article/16575506746449e88e8e83ec83be05195b4486ee1923d0e813bdc.jpg@450w_450h_progressive.jpg', '人工智能', 1, 1, 'https://www.bilibili.com/read/cv13194465', 'admin', 1, 0);
INSERT INTO `article` VALUES (12, '我们世界的TNO人物 美乐帝 肯尼迪', 1, '2022-07-11 14:48:55', '姓名：约翰菲茨杰拉德肯尼迪\n\nJohn FitzgeraldKennedy\n\n生卒：(1917.5.29-1963.11.12)\n\n职业：美国第35任总统\n\n成就：\n\n执政时间从1961年1月20日开始到1963年11月22日在达拉斯遇刺身亡为止。1946年-1960年期间曾先后任众议员和参议员，1960年当选为美国总统，成为美国历史上最年轻的当选总统，也是美国历史.上唯一信奉罗马天主教的总统和唯一获得普利策奖的总统。\n\n\n\n肯尼迪的猪湾事件\n\n\n\n肯尼迪猪湾事件又称“猪猡湾事件”、“吉隆滩之战”是1961年04月17日在中央情报局的协助下逃脱的美国古巴人，在古巴西南海外的猪湾,向菲德尔.卡斯特罗领导的古巴革命政府发动的一-次入侵。1961年4月17日，由1500人组成的美国雇佣军对古巴发起进攻，在美国飞机与 战舰的掩护下在古巴中部的拉斯维利亚斯省的南部登陆，很快就占领了长滩和吉隆滩，并且继续向北进攻。古巴的军队与百姓同美国雇佣军开启了生死搏斗。当年34岁的卡斯特罗把吉隆滩附近的一-座制糖厂改建成了指挥部，他下令击沉所有轮船，还告诉最亲密的战友,这是真正的战斗胜利只属于我们，这就是肯尼迪猪湾事件的开始。\n\n\n\n后来古巴军队与百姓经过72小时的艰苦奋战将美国军队全部歼灭，90多名美国雇佣军被古巴军队击杀，其余1000多人全部被俘。肯尼迪猪湾事件最终以失败告终。这次入侵计划并不是保密的，于是很多因参战而流亡的古巴人在迈阿密高调宣布,说要参加古巴的秘密入侵。为此，古巴早有防备。这次肯尼迪猪湾事件的失败也标志美国反对古巴的行动达到了第一个高峰期。因而刚刚上任的肯尼迪总统为此大失信任，并且古巴害怕再次遭到美国的进攻，于是与苏联结盟，最终在1962年导致了古巴的导弹危机。\n\n\n\n肯尼迪的遇刺事件\n\n\n\n1963年11月22日12:30pm，肯尼迪在副总统约翰逊陪同下到得克萨斯州的达拉斯市访问。12时30分，肯尼迪乘坐一辆敞蓬汽车游街拜会市民,行至一个拐弯处时(美茵街，Main Street)， 埋伏的枪手向他开了枪，子弹命中头部,他的妻子很惊慌的抱住他（实际上是迅速跑了），全身都沾满鲜血，送往医院后很快不治而亡。数小时后，李.奥斯瓦尔德被警方抓获，初步认定为刺杀总统的嫌疑犯;但此人仅两天后亦被枪杀，使案情趋于复杂化。林登约翰逊宣誓就任总统后下令组成以最高法院院长沃伦为首的调查组。一年后，调查组提交报告(即著名的《沃伦报告》)认为整个事件全是李奥斯瓦尔德一人作案。 美国民众普遍表示不相信这个结论。此后数年，民间有很多人士尝试调查此案，并出版了相当数量的畅销书。在层出不穷的结论中，古巴政府、中央情报局.甚至副总统约翰逊都曾被列为主要怀疑对象。按照当局的说法，《沃伦报告》 将会保密至公元2047年。当局表示要待所有当事人也过世后才公开。\n\n\n\n肯尼迪的历史评价\n\n\n\n约翰.肯尼迪是美国历史上支持率最高的总统。肯尼迪的遇害引发了公众对他深深的怀念。在一次民意调查中，1000名美国人中有30%认为此案应被列为20世纪头号犯罪案件。如今,虽然这一事件过去已经40多年了，但是美国人仍然将肯尼迪评为美国历史上最伟大的五位总统之一。在1975年进行的一-次 盖洛普民意测验(Galluppoll)为总统排名的调查中，52%的答卷人将肯尼迪排在首位，位居林肯和罗斯福之.上。\n\n\n\n1985年时，他仍然位居第一-位,支持率达56%。1982年， 2000名学者被邀请来将美国总统分别按照相当伟大、伟大、优秀、-般、较差和失败的标准进行评分，肯尼迪排名第13位，属于优秀类别的底部。\n\n\n\n在\"盖洛普二十世纪最令人敬佩的人物”中约翰.肯尼迪排名第三[仅次于小马丁:路德金和特里萨修女]。1999年2月总统日上公布的一项民意调查显示，人们认为林肯是最伟大的一个总统，并列排在第二位的是华盛顿、肯尼迪、里根和克林顿。2000年时，肯尼迪名居排名榜首，其后是林肯、罗斯福和里根。同年10月，78位历史学家、政治和法律领域的权威学者在一项相当重视总统任期长短的调查中，将肯尼迪排在第18位，属于优秀类别的底部。\n\n\n\n2001年，有关里根90岁生日的报道中，将里根提到了排名的首位，肯尼迪排名第二，林肯排名第三。', '/upload/article/1657550932674fc873a65ed866eb97ad9895604879bedf96993e2.jpg@569w_435h_progressive.jpg', '机械设计', 1, 1, 'https://www.bilibili.com/read/cv15072768?from=search&spm_id_from=333.337.0.0', 'admin', 1, 0);
INSERT INTO `article` VALUES (13, '深度解析虎哥大战杀马特剧情', 1, '2022-07-11 14:54:37', '  东百大决战是2016年著名狠活动漫公司紗岚梓出品的经典老番，讲述了公元前2016年柴浩同张志轩的宿命对决。 该番一经播出旋即轰动全东百，一时间有“开口不谈虎对杀 纵看番剧也枉然”之说。紗岚梓公司CEO蔡豪先生曾为杀马特团长题字为“行天道自立团长，聚众义集作杀家。”也赞叹虎哥“进可麻袋沉江生死无从晓，退可遗像蹦迪阴阳难以分。” 高度赞扬了古东百整活家“把一切都奉献给狠活”的豪情壮志。\n\n自古红蓝出cp诚不欺我\n   有传言说在番剧制作后期蔡豪先生遭到了人肉威胁，被迫烂尾。这实在是无稽之谈，第一，蔡豪先生已经公布了自己的公民个人代码，无所谓什么人肉威胁；第二，结尾并非烂尾，而是紗岚梓公司高超的剧情安排技巧，这个番剧其实是在晦涩的展现团长的足智多谋使柴浩折服这一历史事件。\n\n（科普：东百大决战是系列作品。由前传《命运的交织点》和正传《决定未来的一战》组成。）\n\n  我们要先从前传1《独属于整活家的孤独》入手，柴浩身为农村小伙，在生活的淫威下被迫选择了整活，一步步从弟中之弟成为狠活天尊。他所能依靠的只有自己的毅力，那种为了狠活能奉献一切的无畏，身为东百第一代整活家，他用实际行动诠释了他对狠活的热情之深厚：当红牛一下又一下在他的头上发出声响，他没吭声；当致命的震天雷离他只有一盆之隔，他没有害怕；当泥鳅，蝎子，墨水在他的嘴里散发出恶心的味道时，他没有哀嚎。他没有细致描述过自己的苦痛，而是用行动去证明，粉丝们更能真切的感受到那种痛苦，仿佛鞭炮确实是在自己的裤裆爆炸。这样的男人，不畏惧任何肉体的折磨，到底要怎么样的方法才能使她折服？\n\n   在前传2《情丝缠绕英雄体》中， 我们终于得以了解到虎哥那不为人知的过去，下体被驴痛击后侥幸报住一个蛋，以后只能天天吃药拍x光，要知道驴踢死的人比飞机失事而死的人还多！柴浩能有擎天柱和独头蒜就已经是万幸！然而那一踢似乎是命运所注定的一般，柴浩开始对男人有了感觉，“是男银还是女银？”青年虎哥望着一班同学如此想道。可以说两性问题就是柴浩的软肋。与此同时杀马特团长被人横刀夺爱，富二代的他接受不了这种打击而发疯。他比谁都了解失爱的痛苦，毫无疑问，团长最了解虎哥的迷茫，这也为第三部埋下伏笔。\n\n   前传3《情迷意乱终害己》主要是讲述虎哥追求彪姐，杀家浮出水面。很多人只把这当做引子，其实在此时团长就已经在为战斗做铺垫了。你且听我道来。前传3剧情可以简要概括为旋风追求彪姐，虎哥横刀夺爱，旋风警告柴浩，柴浩一意孤行前往调兵山（2016.8.17）（这里还附带外传《蛇邪师徒情》）彪姐和虎哥爆杀旋风，游戏厅真实拳皇格斗 。虎哥旋风和谈，彪姐孤独寻爱。那么其中最耐人寻味的就是彪姐放弃虎哥，虎哥曾说过“你那五十万是啥 太俗了往后稍稍 你懂浪漫吗 这叫肉丝 你那是玛丽”彪姐拒绝了旋风的五十万 宁愿跟虎哥在一起逛街吃饭，并且虎哥也明确表示过要追求彪姐（“彪姐，我爱你你让我陷入疯狂！”）如果彪姐真的对虎弟没点意思，那么这场爱恋还没开始虎弟就要蹲班房被人撅皮炎去了。极有可能是彪姐因无法接受柴浩只有一个蛋而离去，柴浩后期也说“旋风你憋占着茅坑不拉屎”都把彪姐比喻成茅坑了，可见此时彪姐对虎弟的伤害之深。这段戛然而止的热恋可以说给了虎弟极大的伤害，虎弟为了彪姐可以说不惜一切，然而彪姐依然因为虎哥的一个蛋而抛弃了他。柴浩因此开始怀疑自己的取向。恰好此时杀家来战，虎弟只得匆忙应战，从一开始的准备上虎弟就处于下风。但是彪姐真的是单纯因为虎弟孤高而抛弃他吗，彪姐拒绝了五十万，难道只是为了同柴浩一夜之欢吗？至始至终彪姐都给我们展现的是一个敢于追求爱情，独立自主的现代女性形象，难道这种女人会是lkd吗？我们可以从旋风的言论中发现一些线索“（社会虎）你上我这淘地沟汁来了吧”旋风同彪姐的恋情不可谓不深厚，蛇哥曾说“他们俩之间滴风风雨雨，你蛇哥是见识过的奥”就连外人蛇哥都对他们的恩情赞叹有加。所以很难想象刚开始的旋风会把彪姐比喻成地沟汁。但是联系一下杀马特团长在本篇里的几处唐突出现，可以说神龙见首不见尾，可团长似乎在本篇里对剧情妹有任何推动，公司也不可能安插这么一个大boss在这种恋爱篇，并且虎哥旋风逐爱的主题基调同虎哥杀马特的血海深仇根本不符。极有可能，彪姐是被指示到虎哥身边的！那为什么旋风对她的恋情如此深厚？团长难不成喜欢ntr？我们仔细想想，彪姐有什么？她该如何证明自己对柴浩的真爱？彪姐她有热度，有好活，有粉丝，可这并没有被彪姐用来向虎哥求爱，因为这些的力量还不够！只有先给彪姐安排一个苦主，然后彪姐毅然抛弃苦主，抛弃50万的生活，不顾流言蜚语的去追求柴浩，这样才能让柴浩认为彪姐跟自己是真爱，这样当彪姐抛弃虎哥时，虎哥受到的伤害愈深！这样虎哥才会怀疑自己的取向，才会更加怨恨自己的孤睾。此时真相已然明了，旋风跟彪姐的爱恋不过是幕后boss团长一手安排的，除了东百吕布团长之外，谁有威力让一众整活家乖乖听话？最后让彪姐假借虎哥孤睾离开合情合理。（注：此时团长外传未出，没有败在裴小八手下，是公认的东百第一战力）\n\n   \n\n正在整事儿弄景的旋风\n   另外刀蛇邪这三人也非常值得讨论，可以说是出来跑个龙套就溜了，可事实果真如此吗？其实是用了极高超的蒙太奇手法，刀蛇邪三人在本篇中最大的变化是蛇邪对立，解除师徒关系变为父子关系，然后又跟刀哥结成兄弟。刀哥的出场非常之唐突只有一句“这是更是重量级” 并且从此之后没出现过，可以看出虎弟对刀哥非常不重视甚至有些冷落的意味，并且刀哥居功自傲，居然称柴浩为虎弟，虎哥虽表面不说，但实际上早已有厌恶之心，碍于好哥们关系妹有把刀哥踢出去。而蛇哥和邪哥就更值得讨论了，前文提到过蛇哥声称自己见过旋风和彪姐的风风雨雨，可是旋风和彪姐本就是团长一手安排的，怎么会见过呢，可见蛇哥其实也是团长一方的人。邪哥本来是蛇哥师傅，他徒弟搞得这点b事他自然明白，在团长营造的虎彪矛盾走向顶点，蛇邪解除师徒关系正式宣战，但是邪哥显然无心参加这场疯狂的逐爱斗争，留下了一句“你来沈阳我等你”后便不见踪影，可见邪哥本来就是被虎弟强行拉进来的。更何况虎哥对邪哥也是表面上拉拢，实际上敌对，邪哥也难舍师徒之情。就这样，本应该同虎哥做斗争的刀哥邪哥滋生了反叛之意。，最后刀蛇邪结盟表面上是给蛇邪两人和稀泥，实则是标志刀哥邪哥正式背叛虎哥，加入团长一方。刀蛇邪结盟也暗示着虎哥被众人孤立（虎刀蛇邪唯独少虎）本片其实是在讲述柴浩众叛亲离，逐渐走向危机，自己开始动摇，最后落败也不稀奇了。\n\n苍天在上厚土在下\n         \n\n正传1从一开始虎弟就占上风，无论是狂飙垃圾话还是嘲讽，团长都只能勉强守住，接着大败杀家，只能说是非常俗套狗血的龙傲天剧情，这样是不足以成就一部经典老番的，但它首次引入了以小视频记录战斗的方式，达到了一种伪纪录片和正常拍摄手法之间的微妙平衡，给人以一种《楚门的世界》一般的优雅而荒诞的感觉 可以说从拍摄手法上就暗示了虎哥和团长战斗的本质—被完全拿捏。\n\n   那么就如同黑客帝国2一般，东百大决战在正传2开始出现巨大转折也是诸多粉丝争议的地方，承接上文，虎哥对擒获的白牛疯子进行拷打，团长寻找徒弟，首先白牛疯子被擒获这一段就很值得讨论，大半夜的不是主场作战，乌漆麻黑的还一个一个单独去，极有可能白牛疯子是被团长指示这么做的，目的有二，一是麻痹柴浩，二是为后文黑牛投降做衬托。接着这段剧情有些晦涩，很多人认为打斗过程全部公开，怎么团长还不知道自己徒弟在哪？其实这就是高超的留白技法，白牛疯子确实是被虎哥小亮打败了，却戛然而止，明眼人都知道肯定是被虎弟带回去狠狠地拷打一番，但团长抱着死马当活马医的心态，充分向虎哥证明了自己对徒弟的爱（这段极有可能是表演）目的是制止虎哥对白牛疯子的拷打，让柴浩认为团长异常在乎徒弟，便放弃对忠贞不屈的白牛疯子的无谓拷打，从而选择用徒弟去引诱团长上钩，事实上柴浩确实这么做了。接着黑牛自我献祭打入虎帮 ，为后文反杀做铺垫，这是团长针对柴浩心理而特意设置的计划：虎哥之前因彪姐离去而万分伤心空虚，他急需要胜利来填补空虚，因为他现在正在怀疑而不是否定自己的取向，认同自己是一个txl需要经过痛苦的挣扎，而柴浩不敢面对，才需要胜利来麻痹自己，于是团长就给了他胜利，不得不说团长艺高人胆大，这就跟之前的白牛疯子被擒获呼应上了，只有白牛疯子忠贞不屈，才能更凸显黑牛此时的识时务，虎弟才会偏爱黑牛，以便给黑牛下手的机会，因为只有黑牛才掌握了核心技术—借捶背打入杀马特基因，如果都投降，虎弟也很可能怀疑这是有意而为之。（不然就这种傻篮子还组成杀家？）此时柴浩集团走向巅峰，堪称第二个开元盛世，结果盛极而衰，孤身一人的团长单枪赴会拯救爱徒（其实派遣黑牛投降也给了团长出兵借口），柴浩估计也认为团长妹有回天之力，麻痹轻敌，团长也开始决定在战力上让虎哥折服，所以引出了本番的关键一战—公园之斗。\n\n剑拔弩张，让整个东百为之颤动\n         \n\n 对于惜时如金的紗岚梓公司来说，他们特意用了两话描绘了这场惊天地动鬼神的的战斗。我认为这场战斗是二次元中的代表之作，小亮的勇猛体术，唐老鸭机智灵敏，团长的傲人战力，刀哥的见风使舵都得到充分的展现。\n\n   先不谈出色的打戏，此时唐老鸭的叛徒之心也已露出水面，刀哥说别吵吵时 唐老鸭笑场 说明唐老鸭早已预料到刀哥的fw程度和团长必胜的结局 暗示唐老鸭在决战中其实并没有使出全力 联合刀哥叛徒的推论 可以说唐老鸭和刀哥对柴浩的背叛是不约而同 也侧面反映出柴犬的不得人心 充分证明了团长统治东百是历史的潮流 而逆时代而前行的柴浩 必然失败的结局，那唐老鸭为什么背叛呢，关键还是在于他的罗生门狠活—上吊。虎哥在里面曾说“新收的徒弟”可见此活发生在沈阳大战之前（“你们师徒三人面对我们师徒三人”），而从视频上来看，虎哥根本没准备救唐老鸭，一直搁哪喊双击，很明显是自来虎调动忍术预测了几个月后大蛇丸将施展秽土转生，决定先发制人练习秽土转生，但又不敢在自己身上试（疯子也应该有所耳闻所以才说“怂逼你就是个怂逼你没牌面在我这”），只得抓来唐老鸭测验，幸好最后大齐见义勇为救下了唐老鸭，但大齐也因此收到柴浩排挤，在之后的狠活中极少出场，很有可能唐老鸭通过虎哥老徒弟大齐了解到虎哥的卑劣，恰逢团长大战虎哥，便见风使舵加入团长一方。还有一个证据是唐老鸭施展声波忍术“弟中之弟”我们都明白声音能在空气中传播，团长能听到自然虎哥和小亮也能听到，因此对虎哥和小亮造成了伤害，但他俩怎么没有察觉？很简单，唐老鸭是声优上忍，控制声音自然是易如反掌，而前庭器官是耳内控制平衡非常重要的器官，唐老鸭很可能是通过声音重创了柴浩和小亮的前庭器官指使其战斗力大幅下降。\n\n        \n\n点点关注！双击！双击！\n   那么在公园大战中，本番的战力排名已经初见端倪，那么先给一下我个人对此时（注意是此时）的排名\n\n1.团长，实至名归，东百吕布，轻松秒杀亮鸭刀三人小组，\n\n2.小亮，体术上忍，后空翻忍术强劲，能和团长正面对抗几招\n\n3.黑牛，法术忍者，擅长头套精神控制，团长也评价过他的实力，明明是应对刀鸭亮三人联合却说“你没把握（全胜）”而不是“你不行”，可见其战斗力至少跟唐老鸭一个级别，并且这种情况几乎不可能展现近身偷袭的头套忍术\n\n4..唐老鸭，声优上忍，偷袭险些拿下团长一条腿，没出全力只能屈尊在此\n\n5.白牛，柴浩构建大型强子对撞机时都控制不住已经假装投降的白牛，面对柴浩的拷打也宁死不屈，精神力强大。\n\n6.疯子，被小亮一击秒杀，面对拷打宁死不屈，\n\n6.fw刀，纯纯死胖子，老东西\n\n7.柴浩，被刀哥绝对力量轻松压制\n\n\n\n  有人要问，既然刀哥已经背叛了柴浩，那为什么不当场联合团长反叛而是逃跑？因为柴浩此时还有团长的三个徒弟，有可能破罐子破摔；东百集团的核心是柴浩，擒贼当擒王，让刀哥假装战败把柴浩引诱出来，到时候瓮中捉鳖，关门打狗；已经有了亮鸭两个筹码，能够跟柴浩叫板；为了保险暂时向虎哥隐瞒刀哥的叛徒身份，最后迫不得已了再撕破脸。\n\n   在红山果之章中我们也可以窥见柴浩集团的人际关系，尤其是虎刀，虎哥大喊“我徒弟呢” 刀哥说“我不到啊”（此时已经明确指出刀哥的叛徒身份）虎哥却对此妹有表示疑问，可见虎刀两人至少是在同一个政治级别，并且这次出征是刀哥故意瞒着虎哥的，并且权利应该跟柴浩相当（不然小亮也不会跟他了）这里也能见识到刀哥的精明，如果是跟虎哥说了，首先柴浩大概率跟着去，团长有可能翻车，其次就算柴浩没去，自己孤身一人回来也很难不被柴浩怀疑（柴浩之前一直排挤关瑞生）第三瞒着柴浩，想编啥理由都行，比如柴浩大喊“我徒弟呢”有可能是关瑞生告诉他团长突然来袭。并且也借刀哥之口向柴浩介绍了团长的恐怖战力。在东百集团中俩战力地板管着俩天花板（体术第二和音波第一）还不是中央集权，大概率优柔寡断。两个集团的核心战力相差如此之大就已经能证明很多问题了：这说明杀马特家族成员是对团长绝对实力的崇拜，相当之稳固；而东百虎哥集团则是类似于师徒好哥们这种人际关系。首先从结构上就有根本性的差距，东百集团同杀马特集团的斗争可以说是以卵击石。\n\n \n\n狗也能发出海豚音 东百实属人杰地灵\n        \n\n后面的团长军训小亮唐老鸭，可以看出小亮受的训明显比唐老鸭重（站好几个点vs柜子里睡一晚上 大力揉搓vs倒立男酮宣言）唐老鸭很明显是叛徒，并且团长对两人进行的艾斯爱慕男酮特训，也深深触怒了虎弟，龙有逆鳞，碰其诛之。男同问题正是柴浩内心的软肋，他一直在借胜利去掩盖，去否定这些东西，总之他不愿承认自己的男同身份并极力否定男同，如今东百大败，团长又刻意激起柴浩心头无名火，柴浩开始厌恶自己心头对txl的怀疑和动摇，内心的矛盾激化到了极点，又有对徒弟的关切和战败的耻辱，可谓心乱如麻。为后面被黑牛出其不意拿下做了铺垫。\n\n  但是柴浩不傻，他知道自己俩徒弟现在在团长手里当筹码，也知道团长徒弟全部被擒，团长孤身一人。便想出了交换徒弟这一招，因为虎哥自知他跟刀哥加起来也是被团长秒杀的玩意，如果集齐亮鸭尚有希望一战，所以才自导自演了走廊量子纠缠这一出好戏，柴浩和团长都明白对方的战力如何，而此时柴浩却拼了*命的决定和团长决一死战，刀哥自然拦住他说“他们银多”，意思就是团长一个银相当于很多个银的战斗力。向团长展现了自己对徒弟的爱，让他陷入疯狂，迫使团长开始考虑用虎哥对徒弟的爱来对决，从之前一系列计划来看，团长意图在激怒柴浩，使其被愤怒冲昏头脑，单刀赴会被团长拿捏， 然后由黑牛进行头套控制，使其变成杀马特，然后刀哥在敌方保护自己的爱徒，最后鸭刀杀携手拿捏小亮，如果不出意外团长应该会继续疯狂拷打亮鸭，但是意识到虎哥对徒弟的爱之后就开始考虑交换徒弟，尽可能保护黑牛白牛疯子的安全，这也和虎弟下面的计划一拍即合，但聪明反被聪明误，团长意识到虎哥交换完徒弟之后便是最松懈的时候，可以在此对虎哥进行头套忍术偷袭。果不其然，团长停止了对亮鸭的拷打，虎杀两人开始携手推进交换徒弟。\n\n   剧情一路进展到了最终斗舞决战，在虎哥的决战前宣言中，黑牛忍辱负重给虎哥捶背，偷偷打入杀马特基因，因为黑牛是这几个银里头唯一的本科，掌握基因技术也不稀奇。在交换徒弟（即东百第一代大型强子对撞机）时，白牛对虎哥的怨气终于泄露出来，在推动强子时竟故意不受柴浩控制，让柴浩认识到了，即使是被自己秒杀的白牛也绝不是自己能轻易控制的，这说明之前完全是白牛放水，自己很可能是被团长玩弄于股掌之间！柴浩也开始怀疑自己能否胜利，提高了警惕，团长见白牛如此义气用事，只得临时改变计划，把让黑牛留在敌方的命令通过唐老鸭转告给黑牛，更是跟黑牛一问一答彻底消除了虎哥对黑牛的疑心，也为虎哥平添了一丝信心（喜提一帮手）团长也故意落败给虎哥，但是很多人都意识到了一点：唐老鸭到哪了？其实唐老鸭在被交换过来之后就直接被虎弟残忍安排了，虎哥意识到在跟团长一战中，唐老鸭并未使用声波忍术，怀疑唐老鸭是叛徒自然而然，加上之前欲谋害唐老鸭未遂，决心把它做了吊炉烤鸭以绝后患，所以交换完徒弟之后有一个明显的切片迹象，暗示世界已经改变了（没有了唐老鸭）。\n\n   在最终决战中，东百阵营是虎刀亮，杀马特阵营是团长白牛疯子，那为什么叛徒黑牛没有和虎哥并肩作战呢。很显然柴浩已经看破了自己的处境，唐老鸭已绝，小亮被团长秒杀，刀哥比自己强还被团长吓跑，团长一个人就能吧他们仨收拾了，白牛实力远在自己之上，疯子也差不到哪去，绝对比向自己“直接”投降的黑牛强，自己必败。所以向团长提出公平竞争3v3，效仿上古整活家的高尚。团长也不傻，看清楚了柴浩的意思是破罐子破摔，出于对整活大家的敬畏，斗舞失败不过是给他一点点安慰，给他带头套更是给他一个台阶下，虎弟就这么心甘情愿的接下了头套，带着这样的心理回审团长的单膝下跪和虎弟的开怀大笑，那粗劣的演技明显是有意而为之，藏着一丝丝的悲哀，充分证明了团长的惜英雄敬英雄，堪称一代豪杰！小亮更不用说，虎弟都是杀马特的手下败将了，完全受团长的逼迫，把小亮作为男宠送给男同团长更是理所当然，所以在之后的宣读仪式上小亮妹有出场，大概率是被进行艾斯爱慕调教睡柜子去了…这又是对柴浩摇摆不定的性向的一次打击…虎弟大概真的疯了。\n\n \n\n（仿佛小孩被逗乐了一般，开心又疯狂的笑）\n   前面也说过，对于虎弟这种人，必须要从心理上击溃他，那现在已经在战力上压制了他，怎么从心理上完全制裁呢？很简单，团长把这一切的经过都告诉虎弟就行了。\n\n   “现在是2016年8月21日23点20分，我自愿加入杀家！”\n\n   综上所述，不难发现这其中对局之精彩，不愧是二次元经典番剧。主人公社会你虎哥，自小被取向所困扰，为自己的fw而愤怒，为自己的徒弟痛哭流涕，面对敌方俘虏时毫不留情，光荣的接下团长递给的头套，在同疯狂的命运抗争中，他终于英雄地退幕了！不管是杀家还是虎帮，都承载着那个狠活的年代最为重要的东西… 作者：虎哥-ニ次元  出处：bilibili\n', '/upload/article/1657551273943100a74436a2b82496be542f2abe38518663ab522.jpg@942w_947h_progressive.jpg', '人工智能', 1, 1, 'https://www.bilibili.com/read/cv15955202?from=search&spm_id_from=333.337.0.0', 'admin', 1, 0);

-- ----------------------------
-- Table structure for article_audit
-- ----------------------------
DROP TABLE IF EXISTS `article_audit`;
CREATE TABLE `article_audit`  (
  `audit_id` int NOT NULL AUTO_INCREMENT COMMENT '审核ID',
  `article_id` int NOT NULL COMMENT '文章ID',
  `article_title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章名',
  `reviewer_id` int NULL DEFAULT NULL COMMENT '审核人ID',
  `reviewer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `publisher_id` int NOT NULL COMMENT '发布人ID',
  `publisher` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `audit_state` int NOT NULL DEFAULT 0 COMMENT '审核状态',
  `audit_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核备注',
  PRIMARY KEY (`audit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章审核表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of article_audit
-- ----------------------------
INSERT INTO `article_audit` VALUES (11, 11, '田所浩二先生：下北泽的伟大科学家', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:55:43', 0, 'niuzhi');
INSERT INTO `article_audit` VALUES (12, 12, '我们世界的TNO人物 美乐帝 肯尼迪', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:55:59', 0, 'hao');
INSERT INTO `article_audit` VALUES (13, 13, '深度解析虎哥大战杀马特剧情', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:56:20', 0, '我徒弟呢');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `banner_id` int NOT NULL AUTO_INCREMENT COMMENT '轮播图Id',
  `course_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `course_id` int NOT NULL COMMENT '课程ID',
  `banner_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '宣传图url',
  `banner_state` tinyint(1) NOT NULL DEFAULT 1 COMMENT '轮播图状态',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`banner_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '轮播图表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, 'HTML5+CSS3零基础教学', 1, '/upload/banner/1649937906761162303635373404054805a22632f5c927063208e5b84e.png', 0, 0);
INSERT INTO `banner` VALUES (2, 'HTML5+CSS3零基础教学', 1, '/upload/banner/1649937921900162303635373404054805a22632f5c927063208e5b84e.png', 0, 0);
INSERT INTO `banner` VALUES (3, 'JavaScript零基础进阶班', 2, '/upload/banner/1649937930261162303635373404054805a22632f5c927063208e5b84e.png', 0, 0);
INSERT INTO `banner` VALUES (4, 'JavaScript零基础进阶班', 2, '/upload/banner/1649937937826162303635373404054805a22632f5c927063208e5b84e.png', 0, 0);

-- ----------------------------
-- Table structure for coach_apply
-- ----------------------------
DROP TABLE IF EXISTS `coach_apply`;
CREATE TABLE `coach_apply`  (
  `coach_id` int NOT NULL AUTO_INCREMENT COMMENT '特训班ID',
  `course_id` int NOT NULL COMMENT '课程ID',
  `course_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '开课时间',
  `user_id` int NOT NULL COMMENT '用户ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `user_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `user_email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `coach_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '报名时间',
  `apply_state` int NOT NULL DEFAULT 0 COMMENT '报名状态',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`coach_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '特训班报名表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of coach_apply
-- ----------------------------

-- ----------------------------
-- Table structure for coin_record
-- ----------------------------
DROP TABLE IF EXISTS `coin_record`;
CREATE TABLE `coin_record`  (
  `record_id` int NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `user_id` int NOT NULL COMMENT '用户ID',
  `record_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `vary` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '变化',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注（原因）',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of coin_record
-- ----------------------------
INSERT INTO `coin_record` VALUES (30, 2, '2022-07-11 14:17:40', '+50', '注册账户赠送50积分');
INSERT INTO `coin_record` VALUES (31, 1, '2022-07-11 14:39:09', '+15', '签到奖励');
INSERT INTO `coin_record` VALUES (32, 7, '2022-07-11 15:21:04', '+50', '注册账户赠送50积分');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `course_id` int NOT NULL AUTO_INCREMENT COMMENT '课程ID',
  `course_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `type_id` int NOT NULL COMMENT '类别ID',
  `type_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类别名称',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程简介',
  `teacher_id` int NOT NULL COMMENT '讲师ID',
  `vip_state` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否VIP',
  `online` tinyint(1) NOT NULL COMMENT '是否线上',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '开课时间',
  `course_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程时长',
  `put_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上架时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `publisher` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `publisher_id` int NOT NULL COMMENT '发布人ID',
  `price` double NULL DEFAULT 0 COMMENT '课程价格',
  `publish_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '发布状态',
  `audit_state` int NOT NULL DEFAULT -1 COMMENT '审核状态',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  `play_count` int NOT NULL DEFAULT 0 COMMENT '课程播放量',
  `cover_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程封面URL',
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 'HTML5+CSS3零基础教学', 3, 'Web前端', '本课程以项目实战为核心，通过实际商业项目的深度讲解剖析，帮助学员掌握HTML5和CSS3知识体系、经典布局等必备技能。通过一个又一个细致经典的案例，带领学员感受真实的HTML5+CSS3开发场景。', 1, 1, 1, NULL, NULL, '2022-06-20 20:19:43', '2022-07-03 02:15:56', 'admin', 1, 0, 1, 1, 0, 102, '/upload/course/HTML5+CSS3零基础教学/16474545533521622981930850html.png');
INSERT INTO `course` VALUES (2, 'JavaScript零基础进阶班', 3, 'Web前端', '本课程从前端工程师的职业发展和JavaScript的发展历程入手，从基本的环境配置讲起，告诉你如何搭建开发环境，细致讲解每一个例子，让你在观看代码编写的过程中，学会程序开发的基本步骤，掌握核心概念，在实战演练中实现从零基础到达精通的跨越。', 1, 1, 1, NULL, NULL, '2022-06-20 20:28:50', '2022-07-03 02:16:20', 'admin', 1, 0, 1, 1, 0, 10, '/upload/course/JavaScript零基础进阶班/1647454577593162298251912260c8e6272e4d600d012432ee7932741f.png');
INSERT INTO `course` VALUES (3, 'Excel“脱白课”：基础入门', 6, '办公软件', 'Excel是职场人的必备技能，工作中的常用工具，掌握Excel技巧可以倍数提升工作效率。想要提升Excel技能，但是基础薄弱，很多内容看不懂。你需要的是一门可以从基础入手、稳扎稳打学习，一步步走入Excel神奇世界的课程。', 5, 0, 1, NULL, NULL, '2022-06-20 20:34:47', '2022-07-03 02:16:34', 'admin', 1, 0, 1, 1, 0, 10, '/upload/course/Excel“脱白课”：基础入门/16474545922631622982876830fd2ca5e8252294df74aecba971d37c8a.png');
INSERT INTO `course` VALUES (4, '证券投资入门：组合决策与管理', 6, '办公软件', '本课程将从宏观定性分析开始，通过多种定量方法循序渐进讲解。从大类资产配置、核心+卫星模式、标的证券选择、交易周期决策四个维度逐步建立起投资组合的框架，再通过动态管理方法和绩效的持续改进来对组合进行持续管理，最终完成投资组合管理的流程闭环，建立一套行之有效的规程。来本课程，帮你找到最适合自己的投资道路！', 4, 1, 1, NULL, NULL, '2022-06-20 20:39:42', '2022-07-03 02:16:50', 'admin', 1, 0, 1, 1, 0, 11, '/upload/course/证券投资入门：组合决策与管理/16474546068981622983181382touzi.png');
INSERT INTO `course` VALUES (5, 'MySQL零基础特训班', 4, 'Web后端', '本课程主要针对零基础学员，从MySQL数据库的使用环境及工具入手，把课程分为数据库入门、数据库建模、数据库分析、数据库优化及整合四个阶段。以详尽细致、通俗易懂的原则讲解数据库的基本知识，在实例讲解的过程中，带领大家学习如何使用和设计数据库，深入了解SQL基本语法，规范使用SQL语言，在实战演练中实现从零基础到精通的跨越。', 1, 1, 0, '2022-06-23 00:00:00', '168.5', '2022-06-20 20:42:22', '2022-07-03 13:31:03', 'admin', 1, 3998, 0, 1, 0, 0, '/upload/course/MySQL零基础特训班/1623216660794a4.jpg');
INSERT INTO `course` VALUES (6, 'BEC商务英语一月特训班', 5, '求职应聘', '我们不难发现，在中国市场逐渐融入国际经济市场的同时，也有大批外资公司纷纷涌进我国，这使得商务英语的人才需求急剧增加。如果你也想进入外企，提高自己的英语能力水平，本课程将会是你的优质之选。课程摒弃了传统教学方式，结合商务英语类话题，通过大量听力、真题及口语练习素材，给你提供自由发挥的空间，激发学习积极性，让你在听、说、读、写方面得到快速提升。课程授课氛围轻松愉悦，培养学习能动性，帮你养成持续学习的习惯！', 3, 1, 0, '2022-06-23 00:00:00', '180', '2022-06-20 20:44:05', '2022-07-03 02:30:58', 'admin', 1, 3998, 1, 1, 0, 0, '/upload/course/BEC商务英语一月特训班/16474551255741622983439420txb2.png');
INSERT INTO `course` VALUES (7, '数据结构与算法进阶班', 1, '计算机专业基础', '本门课程将系统化讲解数据结构与算法进阶知识及面试必考内容。讲解过程遵循通俗易懂、详尽细致、知行统一的原则，将复杂难懂的知识点简单化、实用化，以满足学员理论联系实践的实操需要。另外，本次学习还将带你探索计算机行业内情、了解岗位需求，知己知彼，方能百战百胜。', 2, 1, 0, '2022-06-23 00:00:00', '180', '2022-06-20 20:45:41', '2022-07-03 02:25:42', 'admin', 1, 3998, 1, 1, 0, 0, '/upload/course/数据结构与算法进阶班/16474551391581622983530481aw.png');
INSERT INTO `course` VALUES (8, '经济金融一月特训班', 5, '求职应聘', '本课程覆盖经济和金融专业本科期间的11门核心课程，包括：微观经济学、博弈论与信息经济学、宏观经济学、货币银行学、财政学、计量经济学、会计学、公司金融学、投资学、衍生品定价、固定收益。旨在通过27天的学习，帮助学生理解经济和金融主干知识及其结构联系，搭建一套完整的知识框架，养成正确的学科思维，从而使获取新知的速度更快、吸收度更高，为深入学习打下扎实的基础！', 4, 1, 0, '2022-06-23 00:00:00', '135.5', '2022-06-20 20:46:50', '2022-07-03 02:25:53', 'admin', 1, 3998, 1, 1, 0, 0, '/upload/course/经济金融一月特训班/16474551517831622983588538txb3.png');
INSERT INTO `course` VALUES (9, '人像修图入门课', 1, '计算机专业基础', '本课程主要针对零基础学员，讲解关于人像修图的思路和流程，包含ACR转图、PS调整、优秀作品分析、流行色彩风格、质感皮肤、形体液化等。学完之后可以让你快速掌握人像修图各环节的方法和技巧。为了方便学员学习，教程中使用到的原片均可供学员下载、练习和使用。', 6, 0, 1, NULL, NULL, '2022-06-20 11:14:15', '2022-07-03 02:17:03', 'admin', 1, 0, 1, 1, 0, 5, '/upload/course/人像修图入门课/16474546211911623035640978renxiang.png');
INSERT INTO `course` VALUES (10, 'Python基础趣讲精练', 2, '人工智能', 'Python是时下最热门的编程语言之一，爬虫批量抓取和处理信息、用于商业决策的数据分析、数倍提高效率的办公自动化、快速开发Web应用的框架、创造神迹的人工智能技术……作为一门随处可用的胶水语言，无论是专业程序开发、测试、运维人员，还是普通的职场白领，掌握Python都能大大提高个人效能，促进事业提升！', 7, 0, 1, NULL, NULL, '2022-06-20 11:21:45', '2022-07-03 02:17:17', 'admin', 1, 0, 1, 1, 0, 7, '/upload/course/Python基础趣讲精练/16474546348471623036098040python.png');
INSERT INTO `course` VALUES (11, '计算机基础', 1, '计算机专业基础', '每一个程序员都应该花时间学习的基础课！', 1, 0, 1, NULL, NULL, '2022-06-20 11:40:39', '2022-07-03 02:17:30', 'admin', 1, 0, 1, 1, 0, 4, '/upload/course/计算机基础/16474546474591623037213558jsj.png');
INSERT INTO `course` VALUES (12, 'Python零基础10天进阶班', 2, '人工智能', 'Python 是一种高级编程语言，它优雅而不失实用，语法简单易学，又具有极高的可读性和灵活性，相比“前编程明星”C++和Java等更简单易操作。KDnuggets调查显示，目前Python已成为最受AI从业者欢迎的语言。学会Python已经是程序猿必备技能！', 6, 1, 1, NULL, NULL, '2022-06-20 11:48:33', '2022-07-03 02:17:51', 'admin', 1, 0, 1, 1, 0, 11, '/upload/course/Python零基础10天进阶班/16474546691351623037692795rgzn.png');
INSERT INTO `course` VALUES (13, '程序员成长攻略零基础特训班', 1, '计算机专业基础', '本课程包括软件工程理论、敏捷开发理论等基础知识，结合一线互联网公司的实际工作经验，列举市场对程序员的最新技术要求，提出并讲解五层塔模型，重点介绍程序员在工作中的方法论，给出程序员成长的四类基本技能：技术技能，工作技能，管理技能和商业技能，并做一一讲解，提高职业素养，帮助认知升级。本课程从专业基础到核心技能，再到职场素养，全面培训，促进认知升级，帮助程序员更好更快成长。', 6, 1, 0, '2022-06-23 00:00:00', '49.5', '2022-06-20 12:11:44', '2022-07-03 20:24:15', 'admin', 1, 1998, 1, 1, 0, 0, '/upload/course/程序员成长攻略零基础特训班/1623216752364a8.jpg');
INSERT INTO `course` VALUES (14, '商业数据分析特训班', 2, '人工智能', '数字化正在变革我们认知的所有行业，传统的商业逻辑和商业模式逐渐被无边界的用户需求和跨界竞争所颠覆，交叉的商业价值挖掘，需要大量的数据作为支撑。数据人才已经成为各企业争夺未来市场的标配。\r\n\r\n基于市场对人才的需求分析，万门联合北美数据分析团队，推出一门从基础到实战的商业数据分析课程，内容涵盖Excel数据分析、Python数据分析、基础统计学、 SQL基础、数据可视化、机器学习基础、市场营销分析、A/B测试、游戏数据分析、电商数据分析、零售数据分析等，并结合企业真实数据场景，一步步带你走入数据分析的大门。', 7, 1, 0, '2022-06-23 00:00:00', '132.4', '2022-06-20 12:14:05', '2022-07-03 13:31:16', 'admin', 1, 3998, 1, 1, 0, 0, '/upload/course/商业数据分析特训班/1623216674051a5.jpg');
INSERT INTO `course` VALUES (15, '云计算与大数据零基础特训班', 2, '人工智能', '互联网时代，云计算和大数据成为热门技术。大数据人才缺口已高达百万，未来将达到千万。业内人才需求量远远大于从业者的增长，因此，大数据人才需求将出现“井喷”现象。想要抓住这个绝佳的入行时机？你大可从学习这门课开始！', 6, 1, 0, '2022-07-12 00:00:00', '180', '2022-06-20 12:16:31', '2022-07-03 13:32:50', 'admin', 1, 3998, 1, 1, 0, 0, '/upload/course/云计算与大数据零基础特训班/1623216768214a10.jpg');
INSERT INTO `course` VALUES (16, '机械设计制造及自动化一月特训班', 7, '机械设计', '本课程将为你理清机械专业的课程脉络，从如何学习机械制图到机械制造过程，从机械原理到机械设计。讲师从基础开始，讲述一件机械产品从图纸上的平面线框，到成为满足使用需求的机械运动系统的全过程，助你了解机械设计制造的相关知识。', 4, 1, 0, '2022-06-23 00:00:00', '168.5', '2022-06-20 12:20:16', '2022-07-03 20:26:47', 'admin', 1, 2998, 0, 1, 1, 0, '/upload/course/机械设计制造及自动化一月特训班/1623216760394a9.jpg');
INSERT INTO `course` VALUES (17, 'AJAX+jQuery实战提高特训班', 3, 'Web前端', 'AJAX+jQuery是前端工程师的高级进阶技能，涉及较多的JavaScript语言技术以及计算机网络的底层技术，需要系统的学习和在实战中的大量积累和磨练才能掌握。\r\n\r\n本课程针对有一定基础的同学开设，首先讲解怎样零基础用jQ实现瀑布流，帮助学员形成基础认知，接着重点介绍jQuery对象和选择器、jQuery源代码Sizzle、AJAX等具体知识内容，最后提供电商网站的案例实战，帮助理解知识点。本课程从宏观概览到微观知识点详解，从理论知识到案例实战，全面培训，提高素养，帮你牢牢掌握前端工程师的高级进阶技能。', 1, 1, 0, '2022-07-13 00:00:00', '30.2', '2022-06-20 12:21:27', '2022-07-03 13:31:52', 'admin', 1, 798, 1, 1, 0, 0, '/upload/course/AJAX+jQuery实战提高特训班/1623216709840a6.jpg');
INSERT INTO `course` VALUES (18, 'Java零基础特训班', 3, 'Web前端', '本门课程基于Java 8新特性，围绕网站开发主题，帮助零基础学员从基础上了解Java语言本身及计算机工程开发全貌。课程将结合一线互联网项目实战经验，助你掌握核心技术，无惧开发框架，同时养成知识迁移能力，为后续通往大数据、移动开发等多领域深入学习奠定基础，带你从零基础入手，快速入门计算机工程和软件开发工程！', 1, 1, 0, '2022-08-16 00:00:00', '168.5', '2022-06-20 12:24:40', '2022-07-03 20:23:47', 'admin', 1, 998, 1, 1, 0, 0, '/upload/course/Java零基础特训班/1623216724026a7.jpg');
INSERT INTO `course` VALUES (19, '机械设计', 7, '机械设计', '该课程的主要任务是培养学生掌握通用机械零件的设计原理、方法和机械设计的一般规律，具有设计一般简单机械的能力；具有应用标准、规范、手册、图册等技术资料的能力，掌握典型机械零件的实验方法。', 2, 1, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 901, '/upload/course/cover/19.png');
INSERT INTO `course` VALUES (20, '计算机网络', 1, '计算机专业基础', '《计算机网络》课程围绕计算机网络体系结构及相关协议的基本原理和工作内容展开讲解，通过对网络基本原理的学习，培养学生具备对计算机网络进行实践应用、环境部署、故障分析等能力，并可以根据用户网络建设需求分析并规划设计网络建设方案，具备一定的实际网络架设实施的能力。\r\n', 1, 0, 1, NULL, '608', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 13, '/upload/course/cover/20.png');
INSERT INTO `course` VALUES (21, '计算机组成原理', 1, '计算机专业基础', '《计算机组成原理》课程在计算机类专业的教学计划中占有重要地位和作用，是一门重要技术基础课。学习本课程旨在使学生掌握计算机硬件各子系统的组成原理及实现技术，建立计算机系统的整体概念，对培养学生设计开发计算机系统的能力有重要作用。', 2, 0, 1, NULL, '608', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 100, '/upload/course/cover/21.png');
INSERT INTO `course` VALUES (22, '操作系统', 1, '计算机专业基础', '本课程的教学组织为六个部分：计算机操作系统概述、处理器管理、内存管理、文件管理和设备管理。在教学中将结合实例操作系统来进行操作系统基本原理的讲解，使得学习者不仅能够认识和掌握操作系统的基本概念与实现原理，也能够深入理解实例操作系统的设计方法与实现技术。', 3, 0, 1, NULL, '608', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 200, '/upload/course/cover/22.png');
INSERT INTO `course` VALUES (23, '数据结构', 1, '计算机专业基础', '数据结构是学习计算机程序设计的核心课程，对学生组织数据、设计程序及分析算法至关重要。本课程讲授数据元素之间存在的各种逻辑关系、采取的存储方式和相应算法，并分析了算法的时间复杂性和空间复杂性。通过本课程的学习，学生将掌握组织数据和存储数据的方法，进而设计出的满足需求的高效算法。', 4, 0, 1, NULL, '912', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 401, '/upload/course/cover/23.png');
INSERT INTO `course` VALUES (24, '程序设计基础（C语言）', 1, '计算机专业基础', '本课程是计算机类I、人工智能、电信类等专业本科生的必修课。本课程的任务是结合一般数值计算向学生介绍计算机程序设计的基本知识，使学生掌握C语言的基本语法，掌握程序设计的基本思想、基本概念和基本方法和技巧，养成良好的程序设计风格，并能运用所学的知识和技能对一般问题进行分析和程序设计，编制出高效的C语言应用程序；同时了解进行科学计算的一般思路，培养应用计算机解决和处理实际问题的思维方法与基本能力，为进一步学习和应用计算机打下基础。', 5, 0, 1, NULL, '912', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 800, '/upload/course/cover/24.png');
INSERT INTO `course` VALUES (25, '面向对象程序设计', 1, '计算机专业基础', '本门课程主要讲授面向对象的基本思想和基本概念，内容有类、对象、属性、行为、消息和对象关系等是面向对象主要概念，同时结合Java语言中的类、对象、属性、方法、消息、对象关系的定义和使用方式，以及Java语言的高级特性多态、抽象类、接口、静态特性、文件、异常等机制，讲授面向对象系统的设计和实现方法。', 2, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 200, '/upload/course/cover/25.png');
INSERT INTO `course` VALUES (26, 'Python语言程序设计', 1, '计算机专业基础', '计算机是运算工具，更是创新平台，高效有趣地利用计算机需要更简洁实用的编程语言。Python简洁却强大、简单却专业，它是当今世界最受欢迎的编程语言，学好它终身受用。请跟随我们，学习并掌握Python语言，一起动起来，站在风口、享受创新！', 4, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 350, '/upload/course/cover/26.png');
INSERT INTO `course` VALUES (27, '离散数学', 1, '计算机专业基础', '思维能力很重要，主要包括理解能力、分析能力、抽象能力、推理能力、概括能力等。那么如何提高一个人的思维能力呢？人的思维能力是可以训练的，《离散数学》就是训练大家思维能力的课程。它可以培养大家的思维能力和推理能力，帮助提高分析与解决问题的能力，为后继课程的学习、工作打下坚实的基础。', 1, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 66, '/upload/course/cover/27.png');
INSERT INTO `course` VALUES (28, '概率论与数理统计', 1, '计算机专业基础', '介绍概率论与数理统计的基本知识，帮助学生掌握概率论与数理统计的基本概念、方法和应用，使学生初步掌握处理随机现象的基本思想和方法，培养学生运用概率统计方法分析和解决实际问题的能力。概率论与数理统计在自然科学和社会科学中的众多领域有着广泛的应用，特别是在当今的互联网+及大数据时代。', 3, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 780, '/upload/course/cover/28.png');
INSERT INTO `course` VALUES (29, '人工智能原理', 2, '人工智能', '在汹涌澎湃的科技创新大潮中，人工智能时代已经到来，准备好去拥抱这个时代了吗？那么，究竟什么是人工智能？人工智能研究什么？人工智能的理论基础是什么？其最新的发展与应用会如何影响我们的社会、工作和生活？本课程将系统介绍人工智能的发展历程、核心思想、基本理论与应用。\r\n', 5, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 906, '/upload/course/cover/29.png');
INSERT INTO `course` VALUES (30, '机器学习', 2, '人工智能', '本课程重点介绍机器学习中的核心算法和理论，使学生通过理论学习掌握机器学习中的经典理论，了解当前最新发展，并学会针对各自学科的具体问题设计机器学习算法。课程内容包括支持向量机、人工神经网络、深度学习、强化学习、传统的机器学习五个模块，用丰富的理论推导和实验案例加深学生的理解。', 4, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/30.png');
INSERT INTO `course` VALUES (31, '人工智能基础', 2, '人工智能', '智能，是人类得以脱胎于万灵的根本因素；人工智能，力图赋智能于机器，必将深刻改变人类文明进程。 你我何其荣幸，得以亲历人类历史上第三次、也是最为激涌澎湃的一次人工智能发展浪潮。请跟随国防科技大学《人工智能基础》教学团队，一起徜徉于人工智能知识的海洋，去追逐和实现人类最伟大的人工智能梦想吧！', 5, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 901, '/upload/course/cover/31.png');
INSERT INTO `course` VALUES (32, '智能电子与信息技术', 2, '人工智能', '智能电子与信息技术课程通过课程了解电路与系统、人工智能信息技术的发展，以及智能信息处理技术在生活中的各种应用。 通过学习课程，使学生了解电子技术、人工智能技术与信息技术的发展及其在智能化生活中的作用。培训学生创新性思维，提升学生的科学素养，培养学生自主学习和终身学习的意识。达到毕业要求的技能。', 1, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/32.png');
INSERT INTO `course` VALUES (33, '用Python学人工智能', 2, '人工智能', '本课程是教育部-百度产学合作协同育人项目成果，课程将介绍智能计算机系统设计的基本思想和技术，具体重点将放在使用Python语言实现上述的智能系统。课程中学习的技术适用于各类人工智能问题，并将作为学习者在任何应用领域开展进一步研究的基础。课程要求学习者学习过线性代数、数据结构的相关知识。', 6, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/33.png');
INSERT INTO `course` VALUES (34, '移动应用程序开发', 3, 'Web前端', '通过本课程的学习，使学生系统地掌握移动跨平台开发的基本原理和基本技术，移动应用开发的方法和步骤。能熟练使用开发工具，并结合当前主流移动开发框架，进行移动应用开发；培养学生在移动应用开发与解决相应工程问题方面的专业能力。', 5, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/34.png');
INSERT INTO `course` VALUES (35, 'Vue最新快速上手教程通俗易懂', 3, 'Web前端', '最全最新Vue、Vuejs教程，从入门到精通', 7, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 901, '/upload/course/cover/35.jpeg');
INSERT INTO `course` VALUES (36, 'axios入门与源码解析', 3, 'Web前端', 'axios是一个基于Promise的HTTP客户端，可以用在浏览器和node.js中，向服务器发送AJAX请求进行数据交换，是现在前端最热门的请求工具。', 2, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 901, '/upload/course/cover/36.jpeg');
INSERT INTO `course` VALUES (37, 'React上手应用', 3, 'Web前端', '所有知识点都以案例为驱动，演绎式教学，生活化举例，保姆式解读官网，授之以渔更授之以渔！讲解细致，幽默风趣，让你听着上头，学到痴迷。即便零基础的小伙伴也可以愉快地学会React技术！', 1, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/37.jpeg');
INSERT INTO `course` VALUES (38, 'MyBatis零基础入门教程', 4, 'Web后端', '课程包括MyBatis框架搭建，MyBatis配置文件以及映射文件的讲解以及编写，MyBatis获取参数值的方式，MyBatis中的各种查询功能，MyBatis的自定义映射，MyBatis动态SQL，MyBatis的缓存机制，MyBatis逆向工程...', 4, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/38.jpeg');
INSERT INTO `course` VALUES (39, 'Maven基础实战入门', 4, 'Web后端', 'Maven的主要目标是希望开发人员能在最短的时间内理解开发的完整状态。为了达到这个目标，Maven在下面几个方面做出了努力：简化构建过程、统一构建体系、提供高质量的项目信息、提供开发的最佳实践指南、实现透明的向新特性的迁移、简化构建过程。使用Maven不须要知道一些潜在的或底层的机制，Maven屏蔽了非常多细节', 3, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/39.jpeg');
INSERT INTO `course` VALUES (40, 'SSM框架全套教程', 4, 'Web后端', 'SSM本套视频是一款当前主流的基础框架组合，Spring和SpringMVC是当前企业开发必用框架之一，MyBatis则是与数据库交互的持久层框架之一，由于易用性和轻便性，则被大多互联网公司所选用。SSM基础框架的掌握是当前企业开发最基本的要求，也是其他技术学习和进阶的必要基础。', 1, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/40.jpeg');
INSERT INTO `course` VALUES (41, 'SpringBoot2零基础入门教程', 4, 'Web后端', 'SpringBoot2升级之后，带来了非常多的新特性，以及底层源码设计的差异。本套视频教程基于SpringBoot2.3与2.4版本讲解，适用于有Spring、SpringMVC基础，初学或想深入了解SpringBoot的学习者。', 4, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/41.jpeg');
INSERT INTO `course` VALUES (42, 'SpringCloud框架开发教程', 4, 'Web后端', 'SpringCloudAlibaba、RabbitMQ、Docker、Redis、Elasticsearch等众多行业大厂必备技术一网打尽。\r\n实用篇、高级篇、面试篇分层次教学，由易到难，层层推进，高潮不断！\r\n该套教程技术体系完整，即使在职或者曾学过的话也强烈建议你再刷一遍这套教程！', 1, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/42.jpeg');
INSERT INTO `course` VALUES (43, '职业规划与求职攻略', 5, '求职应聘', '在这里你能得到很专业的就业指导，高薪工作不是梦！冲就完事辣', 6, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/43.png');
INSERT INTO `course` VALUES (44, '求职攻略', 5, '求职应聘', '春暖花开之际，求职之旅即将开启，你，准备好了吗？如果你对求职感到迷茫、感到焦虑、感到忐忑……不用担心，快来参加《求职攻略》慕课学习吧！在这里，你将能了解到最新的就业形势、学习到求职的基本常识与技巧，增强自己的就业信心，更能结识许多志同道合的学习伙伴，分享求职过程中的心得与体会！', 5, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/44.png');
INSERT INTO `course` VALUES (45, '求职礼仪与职场形象塑造', 5, '求职应聘', '本课程选取对求职与职场形象塑造起着至关重要作用的十六个方面，给应届毕业生提出中肯的、行之有效的意见建议，旨在有针对性地指导同学顺利通过求职和职场新鲜人这一特殊的“转型”阶段。\r\n', 1, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/45.png');
INSERT INTO `course` VALUES (46, '求职OMG-大学生就业指导与技能开发', 5, '求职应聘', '在“就业难”的新常态下，如何拿到令自己满意的offer呢？国家级精品课求职OMG将带给你一个新的求职心经，陪伴你在求职路上升级打怪。这里不仅有长期从事就业指导工作的高校老师为你传授求职经验，有大学生本色出演求职糗事，更有来自政府、企业、科研院所等的招聘达人为你揭秘幕后。\r\n', 6, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/46.png');
INSERT INTO `course` VALUES (47, '毕业生就业指导', 5, '求职应聘', '由辽宁省职业发展与就业指导专家组成员、东北大学职业发展指导中心资深讲师、骨干辅导员组成，围绕就业形势、求职技能、就业心理和权益保护等内容，引导学生明辨发展大势、承载责任使命、崇尚事业追求，提供多元化、科学化、专业化的就业指导方案', 3, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/47.png');
INSERT INTO `course` VALUES (48, '21天Word新手到高手', 6, '办公软件', '一步变成word达人，解决你有关word的所有烦恼', 5, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/48.png');
INSERT INTO `course` VALUES (49, 'Excel进阶教程', 6, '办公软件', '《Excel进阶教程》是办公软件学习的高级阶段，该课程的教学目标是培养学生操作和使用Excel软件的能力；学会使用Excel解决实际工作情境中的信息与数据处理的能力，从而提升学生的办公能力与效率，提高学生的综合职业能力。', 3, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/49.png');
INSERT INTO `course` VALUES (50, '21天PPT新手到高手', 6, '办公软件', 'Office PPT上手简单却无法精通？选择业界知名教师秋叶老师，让你远离PPT魔咒，绩点加满升学无忧，求职就业不再发愁，升职加薪不再熬夜，让汇报技能上升到一个新的高度！', 8, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/50.png');
INSERT INTO `course` VALUES (51, 'Office高级应用', 6, '办公软件', '本课程结合日常办公应用需求，讲解最常用的Word、Excel、PowerPoint三个应用组件以及Word-Python初阶编程，让学习者较系统地掌握Office的科学用法，在实际工作中能高质、高效使用Office解决问题，做到事半功倍，同时有助于顺利通过相关考试。', 7, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/51.png');
INSERT INTO `course` VALUES (52, '机械设计基础', 7, '机械设计', '机械设计基础课程是近机械类和非机械类各专业作为了解机械的运动和零部件结构的基础知识的一门技术基础课。通过本课程的学习，使学生掌握机械设计的基本理论、基本知识和基本技能，初步具有确定机械运动方案和设计简单机械的能力。', 6, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/52.png');
INSERT INTO `course` VALUES (53, '机械原理', 7, '机械设计', '机械原理是高等院校机械类专业系列技术基础课程中的核心课程，研究机械系统的运动学和动力学分析、机械系统方案设计的基本理论以及常用机构的设计问题；通过本课程的学习可以使学生初步具有确定机械运动方案、分析和设计机构的能力。相信你在这里学习能够得到意想不到的收获！', 5, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/53.png');
INSERT INTO `course` VALUES (54, '画法几何及机械制图', 7, '机械设计', '“画法几何及机械制图”是机械类类各专业必修的技术基础课，用于研究表达机械设计对象技术信息的理论、方法与技能。在机械类系列课程中，作为先修课程，对培养学生正确表达设计对象产品信息的能力和空间形象思维能力具有重要的意义，良好的图形表达与理解能力也是工程技术人员不可缺少的专业素质。', 2, 0, 1, NULL, '760', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 900, '/upload/course/cover/54.png');
INSERT INTO `course` VALUES (55, '大数据StreamX流处理平台', 4, 'Web后端', 'StreamX项目让Flink&Spark的开发变得更简单。我们在使用StreamX进行开发工作的时候，可以降低学习成本与开发难度，大大简化了Flink任务的日常操作和维护工作。', 3, 0, 1, NULL, '7732', '2022-06-20 12:20:16', '2022-07-03 20:23:47', 'admin', 1, 0, 1, 1, 0, 909, '/upload/course/StreamX/55.jpeg');
INSERT INTO `course` VALUES (56, '简单聊一下私家车如何托运？价格有什么不同', 7, '机械设计', '教你咋干10个壮馍', 10, 1, 0, '2022-07-19 16:00:00', '10', '2022-07-11 15:41:18', '2022-07-12 01:17:33', 'admin', 1, 10, 0, -1, 0, 0, '/upload/course/简单聊一下私家车如何托运？价格有什么不同/1657554053145截屏2022-07-11 23.40.44.png');
INSERT INTO `course` VALUES (57, '如何用108天开一盏灯', 2, '人工智能', '真是闲的', 9, 1, 0, '2022-07-10 16:00:00', '108', '2022-07-11 15:43:09', '2022-07-11 15:43:09', 'admin', 1, 1, 1, 1, 0, 0, '/upload/course/如何用108天开一盏灯/1657554176209截屏2022-07-11 23.42.46.png');
INSERT INTO `course` VALUES (58, '离散数学速成班', 1, '计算机专业基础', '离散数学是计算机学科的经典核心基础课程。课程内容主要包括集合论，数理逻辑，关系理论，图论相关内容，为进一步学习计算机科学的基本理论和方法以及之后的专业课打下良好的基础。', 9, 1, 0, '2022-07-13 16:00:00', '10', '2022-07-12 01:08:26', '2022-07-12 01:08:57', 'admin', 1, 100, 0, -1, 0, 0, '/upload/course/离散数学速成班/1657588082525截屏2022-07-12 09.07.52.png');
INSERT INTO `course` VALUES (59, '黑马程序员前端Web全套教程，会打字就能学会的Web前端课程', 3, 'Web前端', '前端学习路线第一、二阶段讲解前端入门HTML5 +Css3+电商网页制作以及JavaScript系列 学习内容： 1、HTML5 网页开发基础，使用常见的标签制作网页内容 2、Css3精细控制网页布局，装饰美化网页内容，增强用户体验，能够编写大型综合性网页。 3、电商网页制作，借助蓝湖协同平台，体验真实团队开发流程。 4、JavaScript 基础语法 5、WebAPI/Dom Bom操作方法 6、jQuery 7、数据可视化 ECharts 实战', 11, 1, 0, '2022-07-13 16:00:00', '15', '2022-07-12 01:10:47', '2022-07-12 01:10:47', 'admin', 1, 145, 1, 1, 0, 0, '/upload/course/黑马程序员前端Web全套教程，会打字就能学会的Web前端课程/1657588225329截屏2022-07-12 09.10.13.png');
INSERT INTO `course` VALUES (60, 'web全栈工程师全套教程（上部）【前端+后端+运动端】', 4, 'Web后端', 'web全栈全套教程（上部）【前端+后端+运动端】，该教程由于视频数量较多，所以分上部、中部、下部三部分。该部分为上部，下部和中部可以在小up主的个人页面找：web全栈全套教程（中部）【前端+后端+运动端】，web全栈全套教程（下部部）【前端+后端+运动端】', 10, 1, 0, '2022-07-14 16:00:00', '18', '2022-07-12 01:12:21', '2022-07-12 01:12:21', 'admin', 1, 112, 1, 1, 0, 0, '/upload/course/web全栈工程师全套教程（上部）【前端+后端+运动端】/1657588330367截屏2022-07-12 09.11.30.png');
INSERT INTO `course` VALUES (61, '计算机视觉-Opencv项目实战(Python版)惊喜来袭！', 2, '人工智能', '人工智能学习必读的电子数据深度学习神经网络+CV计算机视觉学习资料一份，\n内含：两大Pytorch、TensorFlow实战框架视频、图像识别、\nOpenCV、计算机视觉、深度学习与神经网络等视频、代码、PPT以及深度学习书籍', 9, 1, 0, '2022-07-18 16:00:00', '15', '2022-07-12 01:17:17', '2022-07-12 01:17:17', 'admin', 1, 110, 1, 1, 0, 0, '/upload/course/计算机视觉-Opencv项目实战(Python版)惊喜来袭！/1657588614660截屏2022-07-12 09.16.06.png');
INSERT INTO `course` VALUES (62, 'Excel全套新手自学教程，从零开始超详细讲解', 6, '办公软件', '新手自学office Excel表格教程 从入门到精通', 12, 1, 0, '2022-07-19 16:00:00', '13', '2022-07-12 01:19:24', '2022-07-12 01:19:24', 'admin', 1, 123, 1, 0, 0, 0, '/upload/course/Excel全套新手自学教程，从零开始超详细讲解/1657588731700截屏2022-07-12 09.18.26.png');

-- ----------------------------
-- Table structure for course_audit
-- ----------------------------
DROP TABLE IF EXISTS `course_audit`;
CREATE TABLE `course_audit`  (
  `audit_id` int NOT NULL AUTO_INCREMENT COMMENT '审核ID',
  `course_id` int NOT NULL COMMENT '课程ID',
  `course_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名',
  `reviewer_id` int NULL DEFAULT NULL COMMENT '审核人ID',
  `reviewer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `publisher_id` int NOT NULL COMMENT '发布人ID',
  `publisher` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `audit_state` int NOT NULL DEFAULT 0 COMMENT '审核状态',
  `audit_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核备注',
  PRIMARY KEY (`audit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程审核表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_audit
-- ----------------------------
INSERT INTO `course_audit` VALUES (1, 1, 'HTML5+CSS3零基础特训班', 1, 'admin', 1, 'admin', 3, '2022-06-29 20:59:57', 0, '审核通过');
INSERT INTO `course_audit` VALUES (2, 2, 'JavaScript零基础进阶班', 1, 'admin', 1, 'admin', 3, '2022-06-29 21:00:04', 0, '审核通过');
INSERT INTO `course_audit` VALUES (3, 3, 'Excel“脱白课”：基础入门', 1, 'admin', 1, 'admin', 3, '2022-06-29 21:00:09', 0, '审核通过');
INSERT INTO `course_audit` VALUES (4, 4, '证券投资入门：组合决策与管理', 1, 'admin', 1, 'admin', 3, '2022-06-29 21:00:14', 0, '审核通过');
INSERT INTO `course_audit` VALUES (5, 9, '人像修图入门课', 1, 'admin', 1, 'admin', 3, '2022-06-29 11:23:55', 0, '审核通过');
INSERT INTO `course_audit` VALUES (6, 10, 'Python基础趣讲精练', 1, 'admin', 1, 'admin', 3, '2022-06-29 11:24:35', 0, '审核通过');
INSERT INTO `course_audit` VALUES (7, 11, '计算机基础', 1, 'admin', 1, 'admin', 3, '2022-06-29 11:46:48', 0, '审核通过');
INSERT INTO `course_audit` VALUES (8, 12, 'Python零基础10天进阶班', 1, 'admin', 1, 'admin', 3, '2022-06-29 11:53:06', 0, '审核通过');
INSERT INTO `course_audit` VALUES (26, 1, 'HTML5+CSS3零基础教学', NULL, NULL, 1, 'admin', 3, '2022-06-29 00:00:00', 0, '审核通过');
INSERT INTO `course_audit` VALUES (27, 2, 'JavaScript零基础进阶班', NULL, NULL, 1, 'admin', 3, '2022-06-29 00:00:00', 0, '审核通过');
INSERT INTO `course_audit` VALUES (28, 3, 'Excel“脱白课”：基础入门', 1, 'admin', 1, 'admin', 3, '2022-06-29 14:52:49', 0, '审核通过');
INSERT INTO `course_audit` VALUES (29, 4, '证券投资入门：组合决策与管理', 1, 'admin', 1, 'admin', 3, '2022-06-29 14:52:56', 0, '审核通过');
INSERT INTO `course_audit` VALUES (30, 9, '人像修图入门课', 1, 'admin', 1, 'admin', 3, '2022-06-29 14:53:04', 0, '审核通过');
INSERT INTO `course_audit` VALUES (31, 10, 'Python基础趣讲精练', 1, 'admin', 1, 'admin', 3, '2022-06-29 14:53:12', 0, '审核通过');
INSERT INTO `course_audit` VALUES (32, 11, '计算机基础', 1, 'admin', 1, 'admin', 3, '2022-06-29 14:53:20', 0, '审核通过');
INSERT INTO `course_audit` VALUES (33, 12, 'Python零基础10天进阶班', 1, 'admin', 1, 'admin', 3, '2022-06-29 14:53:31', 0, '审核通过');
INSERT INTO `course_audit` VALUES (34, 1, 'HTML5+CSS3零基础教学', 1, 'admin', 1, 'admin', 3, '2022-06-29 14:53:42', 0, '审核通过');
INSERT INTO `course_audit` VALUES (35, 1, 'HTML5+CSS3零基础教学', 1, 'admin', 1, 'admin', 3, '2022-06-29 00:43:22', 0, '11');
INSERT INTO `course_audit` VALUES (36, 12, 'Python零基础10天进阶班', NULL, NULL, 1, 'admin', 3, '2022-06-29 00:43:22', 0, '审核通过');
INSERT INTO `course_audit` VALUES (37, 10, 'Python基础趣讲精练', NULL, NULL, 1, 'admin', 3, '2022-06-29 00:43:22', 0, '审核通过');
INSERT INTO `course_audit` VALUES (38, 1, 'HTML5+CSS3零基础教学', 1, 'admin', 1, 'admin', 3, '2022-06-29 02:21:17', 0, '1');
INSERT INTO `course_audit` VALUES (39, 2, 'JavaScript零基础进阶班', 1, 'admin', 1, 'admin', 3, '2022-06-29 02:21:30', 0, '1');
INSERT INTO `course_audit` VALUES (40, 1, 'HTML5+CSS3零基础教学', 1, 'admin', 1, 'admin', 3, '2022-06-29 22:27:36', 0, '111');
INSERT INTO `course_audit` VALUES (41, 1, 'HTML5+CSS3零基础教学', 1, 'admin', 1, 'admin', 3, '2022-06-29 15:09:49', 0, '11111');
INSERT INTO `course_audit` VALUES (42, 1, 'HTML5+CSS3零基础教学', 1, 'admin', 1, 'admin', 3, '2022-06-29 15:14:00', 0, '1111111');
INSERT INTO `course_audit` VALUES (43, 1, 'HTML5+CSS3零基础教学', 1, 'admin', 1, 'admin', 3, '2022-06-29 15:16:37', 0, '11111111');
INSERT INTO `course_audit` VALUES (44, 1, 'HTML5+CSS3零基础教学', 1, 'admin', 1, 'admin', 3, '2022-06-29 16:18:50', 0, '11111111');
INSERT INTO `course_audit` VALUES (45, 2, 'JavaScript零基础进阶班', 1, 'admin', 1, 'admin', 3, '2022-07-07 20:52:07', 0, '1');
INSERT INTO `course_audit` VALUES (46, 4, '证券投资入门：组合决策与管理', 1, 'admin', 1, 'admin', 3, '2022-07-07 20:52:21', 0, '1');
INSERT INTO `course_audit` VALUES (47, 3, 'Excel“脱白课”：基础入门', 1, 'admin', 1, 'admin', 3, '2022-07-07 20:52:41', 0, '1');
INSERT INTO `course_audit` VALUES (48, 9, '人像修图入门课', 1, 'admin', 1, 'admin', 3, '2022-07-07 20:52:50', 0, '1');
INSERT INTO `course_audit` VALUES (49, 10, 'Python基础趣讲精练', 1, 'admin', 1, 'admin', 3, '2022-07-07 20:53:08', 0, '1');
INSERT INTO `course_audit` VALUES (50, 11, '计算机基础', 1, 'admin', 1, 'admin', 3, '2022-07-07 20:52:59', 0, '1');
INSERT INTO `course_audit` VALUES (51, 12, 'Python零基础10天进阶班', 1, 'admin', 1, 'admin', 3, '2022-07-07 20:53:14', 0, '1');
INSERT INTO `course_audit` VALUES (52, 2, 'JavaScript零基础进阶班', 1, 'admin', 1, 'admin', 3, NULL, 0, NULL);
INSERT INTO `course_audit` VALUES (53, 1, 'HTML5+CSS3零基础教学', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (54, 9, '人像修图入门课', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (55, 20, '计算机网络', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (56, 53, '机械原理', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, '11');
INSERT INTO `course_audit` VALUES (57, 52, '机械设计基础', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (58, 51, 'Office高级应用', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (59, 50, '21天PPT新手到高手', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (60, 48, '21天Word新手到高手', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (61, 47, '毕业生就业指导', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (62, 46, '求职OMG-大学生就业指导与技能开发', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (63, 45, '求职礼仪与职场形象塑造', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (64, 44, '求职攻略', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (65, 43, '职业规划与求职攻略', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (66, 42, 'SpringCloud框架开发教程', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (67, 41, 'SpringBoot2零基础入门教程', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (68, 40, 'SSM框架全套教程', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (69, 39, 'Maven基础实战入门', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (70, 38, 'MyBatis零基础入门教程', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (71, 37, 'React上手应用', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (72, 36, 'axios入门与源码解析', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (73, 35, 'Vue最新快速上手教程通俗易懂', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (74, 34, '移动应用程序开发', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (75, 2, 'JavaScript零基础进阶班', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (76, 33, '用Python学人工智能', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (77, 31, '人工智能基础', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (78, 49, 'Excel进阶教程', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (79, 28, '概率论与数理统计', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (80, 30, '机器学习', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (81, 26, 'Python语言程序设计', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (82, 25, '面向对象程序设计', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (83, 27, '离散数学', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (84, 23, '数据结构', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (85, 22, '操作系统', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (86, 21, '计算机组成原理', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (87, 29, '人工智能原理', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (88, 19, '机械设计', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (89, 12, 'Python零基础10天进阶班', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (90, 11, '计算机基础', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (91, 10, 'Python基础趣讲精练', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (92, 32, '智能电子与信息技术', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (93, 4, '证券投资入门：组合决策与管理', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (94, 3, 'Excel“脱白课”：基础入门', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (95, 24, '程序设计基础（C语言）', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (96, 54, '画法几何及机械制图', 1, 'admin', 1, 'admin', 1, '2022-07-11 14:29:27', 0, NULL);
INSERT INTO `course_audit` VALUES (97, 55, '大数据StreamX流处理平台', 1, 'admin', 1, 'admin', 1, '2022-07-11 16:07:27', 0, 'niu ');

-- ----------------------------
-- Table structure for course_list
-- ----------------------------
DROP TABLE IF EXISTS `course_list`;
CREATE TABLE `course_list`  (
  `list_id` int NOT NULL AUTO_INCREMENT COMMENT '课程目录ID',
  `list_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程目录名称',
  `course_id` int NOT NULL COMMENT '课程ID',
  `course_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `video_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频url',
  `time_minute` int NOT NULL COMMENT '视频分钟',
  `time_second` int NOT NULL COMMENT '视频秒数',
  `lock_state` tinyint(1) NOT NULL COMMENT '是否锁定',
  `delete_state` int NOT NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`list_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 222 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程目录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_list
-- ----------------------------
INSERT INTO `course_list` VALUES (1, '1.1 讲师介绍', 1, 'HTML5+CSS3零基础教学', '/upload/course/HTML5+CSS3零基础教学/1650870956877数学.mp4', 1, 53, 0, 0);
INSERT INTO `course_list` VALUES (2, '1.2 课程介绍', 1, 'HTML5+CSS3零基础教学', '/upload/course/HTML5+CSS3零基础教学/1650870937471数学.mp4', 1, 53, 0, 0);
INSERT INTO `course_list` VALUES (3, '1.3 前端工程师的职业发展', 1, 'HTML5+CSS3零基础教学', '/upload/course/HTML5+CSS3零基础教学/1650870794372数学.mp4', 1, 53, 1, 0);
INSERT INTO `course_list` VALUES (4, '1.4 HTML江湖', 1, 'HTML5+CSS3零基础教学', '/upload/course/HTML5+CSS3零基础教学/1650870670662商城效果视频.mp4', 2, 43, 1, 0);
INSERT INTO `course_list` VALUES (5, '1.5 总结', 1, 'HTML5+CSS3零基础教学', '/upload/course/HTML5+CSS3零基础教学/1650870538806ssm酒店管理系统.mp4', 1, 55, 1, 0);
INSERT INTO `course_list` VALUES (6, '1.1 自我介绍与参考书目', 2, 'JavaScript零基础进阶班', '/upload/course/JavaScript零基础进阶班/16474548035651622982942772HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (7, '1.2 前端工程师职业发展知识点', 2, 'JavaScript零基础进阶班', '/upload/course/JavaScript零基础进阶班/1623221531333HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (8, '1.3 JavaScript简介知识点', 2, 'JavaScript零基础进阶班', '/upload/course/JavaScript零基础进阶班/16508104095811.mp4', 0, 17, 1, 0);
INSERT INTO `course_list` VALUES (9, '1.1 认识Excel', 3, 'Excel“脱白课”：基础入门', '/upload/course/Excel“脱白课”：基础入门/1622982914277HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (10, '1.2 表格格式设计', 3, 'Excel“脱白课”：基础入门', '/upload/course/Excel“脱白课”：基础入门/1622982942772HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (11, '1.3 表格视图设计', 3, 'Excel“脱白课”：基础入门', '/upload/course/Excel“脱白课”：基础入门/1622982969428HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (12, '1.1 课程概论：目标与效用', 4, '证券投资入门：组合决策与管理', '/upload/course/证券投资入门：组合决策与管理/1622983206629HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (13, '1.2 定性分析：明确个人投资预期与风险承', 4, '证券投资入门：组合决策与管理', '/upload/course/证券投资入门：组合决策与管理/1622983226211HEBTU.mp4', 0, 17, 1, 0);
INSERT INTO `course_list` VALUES (14, '1.3 评估成本与支出的刚性约束', 4, '证券投资入门：组合决策与管理', '/upload/course/证券投资入门：组合决策与管理/1622983252842HEBTU.mp4', 0, 17, 1, 0);
INSERT INTO `course_list` VALUES (15, '1. 了解—商业修图应用领域', 9, '人像修图入门课', '/upload/course/人像修图入门课/1623035714447HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (16, '2. 准备—设备与软件', 9, '人像修图入门课', '/upload/course/人像修图入门课/1623035744763HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (17, '3. 初步—完美还原色彩', 9, '人像修图入门课', '/upload/course/人像修图入门课/1623035771679HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (18, '1. 趣识计算机与编程', 10, 'Python基础趣讲精练', '/upload/course/Python基础趣讲精练/1623036140095HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (19, '2. Python编程里的“量”', 10, 'Python基础趣讲精练', '/upload/course/Python基础趣讲精练/1623036162294HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (20, '3. Python的逻辑与循环', 10, 'Python基础趣讲精练', '/upload/course/Python基础趣讲精练/1623036185671HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (21, '4. 实践与探讨', 10, 'Python基础趣讲精练', '/upload/course/Python基础趣讲精练/1623036204143HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (22, '1.1 C语言:课前导读', 11, '计算机基础', '/upload/course/计算机基础/1623037353611HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (23, '1.2 程序与设计语言', 11, '计算机基础', '/upload/course/计算机基础/1623037393806HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (24, '1.3 C语言的发展与特点', 11, '计算机基础', '/upload/course/计算机基础/1623037436410HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (25, '1. 课程介绍', 12, 'Python零基础10天进阶班', '/upload/course/Python零基础10天进阶班/1623037735988HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (26, '2. 软件下载及安装', 12, 'Python零基础10天进阶班', '/upload/course/Python零基础10天进阶班/1623037793898HEBTU.mp4', 0, 17, 0, 0);
INSERT INTO `course_list` VALUES (27, '3. 计算机语言与程序', 12, 'Python零基础10天进阶班', '/upload/course/Python零基础10天进阶班/1623037831200HEBTU.mp4', 0, 17, 1, 0);
INSERT INTO `course_list` VALUES (28, '4. Python介绍', 12, 'Python零基础10天进阶班', '/upload/course/Python零基础10天进阶班/1623037855616HEBTU.mp4', 0, 17, 1, 0);
INSERT INTO `course_list` VALUES (29, '1.1 编写样式_CSS属性_Chrome调试_浏览器渲染', 19, 'coderwhy前端系统课', '/upload/course/coderwhy前端系统课/165087434261542、day03_编写样式_CSS属性_Chrome调试_浏览器渲_02_(理解)元素语义化和作用.mp4', 18, 12, 1, 1);
INSERT INTO `course_list` VALUES (30, '1.1 计算计网络的早期发展', 20, '计算机网络', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (31, '1.2 分组交换网', 20, '计算机网络', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (32, '1.3 Internet的发展与网络的分类', 20, '计算机网络', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (33, '1.4 计算机网络体系结构', 20, '计算机网络', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (34, '1.1 课程计划', 21, '计算机组成原理', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (35, '1.2 课程研究范围', 21, '计算机组成原理', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (36, '1.3 控制复杂性的艺术', 21, '计算机组成原理', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (37, '1.4 数制系统', 21, '计算机组成原理', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (38, '1.1 什么是操作系统', 22, '操作系统', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (39, '1.2 多道程序设计和分时', 22, '操作系统', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (40, '1.3 操作系统类型', 22, '操作系统', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (41, '1.4 操作系统操作和功能', 22, '操作系统', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (42, '1.1 数据结构的概念', 23, '数据结构', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (43, '1.2 抽象数据类型表示和实现', 23, '数据结构', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (44, '1.3 算法和算法分析', 23, '数据结构', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (45, '2.1 线性表的类型定义', 23, '数据结构', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (46, '2.2 线性表顺序表示和实现', 23, '数据结构', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (47, '2.3 线性表链式表示和实现', 23, '数据结构', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (48, '1.1 计算机系统基本知识概述', 24, '程序设计基础（C语言）', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (49, '1.2 计算机程序、计算机语言的概念', 24, '程序设计基础（C语言）', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (50, '1.3 C语言发展历程', 24, '程序设计基础（C语言）', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (51, '1.4 运行C程序的步骤与方法', 24, '程序设计基础（C语言）', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (52, '1.5 程序设计的任务', 24, '程序设计基础（C语言）', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (53, '2.1 算法的概念和特点', 24, '程序设计基础（C语言）', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (54, '1.1 课程简介', 25, '面向对象程序设计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (55, '1.2 Java语言简介', 25, '面向对象程序设计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (56, '1.3 Java程序基本构成', 25, '面向对象程序设计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (57, '1.4 Java中的控制结构', 25, '面向对象程序设计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (58, '1.5 Java中的数组', 25, '面向对象程序设计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (59, '1.1 程序设计基本方法', 26, 'Python语言程序设计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (60, '1.2 Python开发环境配置', 26, 'Python语言程序设计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (61, '1.3 实例1: 温度转换', 26, 'Python语言程序设计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (62, '1.4 Python程序语法元素分析', 26, 'Python语言程序设计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (63, '1.5 深入理解Python语言', 26, 'Python语言程序设计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (64, '1.1 数理逻辑', 27, '离散数学', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (65, '1.2 命题逻辑', 27, '离散数学', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (66, '1.3 谓词逻辑 ', 27, '离散数学', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (67, '1.4 集合论', 27, '离散数学', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (68, '1.5 集合论初步', 27, '离散数学', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (69, '1.1 绪论', 28, '概率论与数理统计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (70, '1.2 随机事件', 28, '概率论与数理统计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (71, '1.3 样本空间和随机事件 ', 28, '概率论与数理统计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (72, '1.4 事件的关系和运算', 28, '概率论与数理统计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (73, '1.5 随机事件的概率', 28, '概率论与数理统计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (74, '1.1 Overview of Artificial Intelligence', 29, '人工智能原理', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (75, '1.2 Foundations of Artificial Intelligence', 29, '人工智能原理', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (76, '1.3 History of Artificial Intelligence ', 29, '人工智能原理', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (77, '1.4 The State of The Art', 29, '人工智能原理', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (78, '1.5 Summary', 29, '人工智能原理', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (79, '1.1 机器学习定义', 30, '机器学习', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (80, '1.2 机器学习的分类', 30, '机器学习', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (81, '1.3 机器学习算法的过程 ', 30, '机器学习', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (82, '1.4 没有免费午餐定理', 30, '机器学习', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (83, '1.5 总结', 30, '机器学习', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (84, '1.1 什么是智能', 31, '人工智能基础', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (85, '1.2 人工智能的基本概念', 31, '人工智能基础', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (86, '1.3 人工智能的三大学派 ', 31, '人工智能基础', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (87, '1.4 人工智能的四种研究途径', 31, '人工智能基础', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (88, '1.5 状态空间基本概念', 31, '人工智能基础', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (89, '1.1 绪论', 32, '智能电子与信息技术', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (90, '1.2 稳压器件', 32, '智能电子与信息技术', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (91, '1.3 电阻 ', 32, '智能电子与信息技术', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (92, '1.4 电容', 32, '智能电子与信息技术', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (93, '1.5 电感 ', 32, '智能电子与信息技术', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (94, '1.1 人工智能概述', 33, '用Python学人工智能', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (95, '1.2 知识表示', 33, '用Python学人工智能', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (96, '1.3 产生式推理 ', 33, '用Python学人工智能', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (97, '1.4 自然演绎推理', 33, '用Python学人工智能', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (98, '1.5 归结演绎推理 ', 33, '用Python学人工智能', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (99, '1.1 移动应用开发简介', 34, '移动应用程序开发', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (100, '1.2 开发环境及框架使用', 34, '移动应用程序开发', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (101, '1.3 框架基本语法 ', 34, '移动应用程序开发', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (102, '1.4 事件机制', 34, '移动应用程序开发', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (103, '1.5 动态样式绑定 ', 34, '移动应用程序开发', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (104, '1.1 第一个Vue程序', 35, 'Vue最新快速上手教程通俗易懂', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (105, '1.2 Vue基本语法', 35, 'Vue最新快速上手教程通俗易懂', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (106, '1.3 Vue绑定时间 ', 35, 'Vue最新快速上手教程通俗易懂', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (107, '1.4 Vue双向绑定', 35, 'Vue最新快速上手教程通俗易懂', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (108, '1.5 Vue组件讲解 ', 35, 'Vue最新快速上手教程通俗易懂', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (109, '1.1 axios的介绍与页面配置', 36, 'axios入门与源码解析', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (110, '1.2 axios的基本使用', 36, 'axios入门与源码解析', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (111, '1.3 axios其他方式发送请求 ', 36, 'axios入门与源码解析', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (112, '1.4 axios请求响应结果的结构', 36, 'axios入门与源码解析', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (113, '1.5 axios配置对象详细说明 ', 36, 'axios入门与源码解析', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (114, '1.1 react简介', 37, 'React上手应用', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (115, '1.2 hello_react案例', 37, 'React上手应用', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (116, '1.3 虚拟DOM的两种创建方法 ', 37, 'React上手应用', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (117, '1.4 jsx语法规则', 37, 'React上手应用', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (118, '1.5 组件与模块 ', 37, 'React上手应用', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (119, '1.1 Mybaitis课程介绍', 38, 'MyBatis零基础入门教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (120, '1.2 Mybaitis的历史', 38, 'MyBatis零基础入门教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (121, '1.3 Mybaitis的特性 ', 38, 'MyBatis零基础入门教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (122, '1.4 Mybaitis的下载', 38, 'MyBatis零基础入门教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (123, '1.5 搭建Mybaitis框架的开发环境', 38, 'MyBatis零基础入门教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (124, '1.1 课程介绍', 39, 'Maven基础实战入门', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (125, '1.2 Maven的作用', 39, 'Maven基础实战入门', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (126, '1.3 Maven中的概念 ', 39, 'Maven基础实战入门', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (127, '1.4 Maven资源获取和安装步骤', 39, 'Maven基础实战入门', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (128, '1.5 Maven的安装与测试', 39, 'Maven基础实战入门', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (129, '1.1 Spring是什么', 40, 'SSM框架全套教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (130, '1.2 Spring的发展历程', 40, 'SSM框架全套教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (131, '1.3 Spring的优势 ', 40, 'SSM框架全套教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (132, '1.4 Spring的体系结构', 40, 'SSM框架全套教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (133, '1.5 Spring的开发步骤', 40, 'SSM框架全套教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (134, '1.1 SpringBoot2课程介绍', 41, 'SpringBoot2零基础入门教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (135, '1.2 Spring生态圈', 41, 'SpringBoot2零基础入门教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (136, '1.3 SpringBoot的大时代背景 ', 41, 'SpringBoot2零基础入门教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (137, '1.4 SpringBoot的官方文档架构', 41, 'SpringBoot2零基础入门教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (138, '1.5 SpringBoot依赖管理特性', 41, 'SpringBoot2零基础入门教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (139, '1.1 微服务技术栈导学', 42, 'SpringCloud框架开发教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (140, '1.2 认识微服务-服务架构的演变', 42, 'SpringCloud框架开发教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (141, '1.3 认识微服务-微服务技术对比', 42, 'SpringCloud框架开发教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (142, '1.4 认识微服务-SpringCloud', 42, 'SpringCloud框架开发教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (143, '1.5 认识微服务-服务远程调用', 42, 'SpringCloud框架开发教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (144, '1.1 行业分析-资深猎头手把手教你选好行业', 43, '职业规划与求职攻略', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (145, '1.2 岗位选择-如何找到最适合你的心仪岗位', 43, '职业规划与求职攻略', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (146, '1.3 职场思维-2+3法则，让你在职场脱颖而出', 43, '职业规划与求职攻略', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (147, '1.4 认知升级-如何用一份行研报告，打动面试官', 43, '职业规划与求职攻略', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (148, '1.5 求职渠道-掌握3种方式，助你抢占先机', 43, '职业规划与求职攻略', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (149, '1.1 课程导学图', 44, '求职攻略', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (150, '1.2 知己知彼定目标', 44, '求职攻略', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (151, '1.3 制作让HR心动的简历', 44, '求职攻略', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (152, '1.4 如何修炼成“面霸”？', 44, '求职攻略', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (153, '1.5 完美避开求职陷阱', 44, '求职攻略', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (154, '1.1 求职礼仪对于职场形象塑造的作用', 45, '求职礼仪与职场形象塑造', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (155, '1.2 合礼修饰，建立得体职场形象', 45, '求职礼仪与职场形象塑造', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (156, '1.3 注重搭配，优化专业职场形象', 45, '求职礼仪与职场形象塑造', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (157, '1.4 调整表情，传递友善职场形象', 45, '求职礼仪与职场形象塑造', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (158, '1.5 优雅仪态，展现庄重职场形象', 45, '求职礼仪与职场形象塑造', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (159, '1.1 OMG求职法概论', 46, '求职OMG-大学生就业指导与技能开发', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (160, '1.2 搜集就业信息', 46, '求职OMG-大学生就业指导与技能开发', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (161, '1.3 简历', 46, '求职OMG-大学生就业指导与技能开发', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (162, '1.4 网申', 46, '求职OMG-大学生就业指导与技能开发', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (163, '1.5 面试概论', 46, '求职OMG-大学生就业指导与技能开发', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (164, '1.1 当下的就业形势及对策', 47, '毕业生就业指导', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (165, '1.2 面试技巧', 47, '毕业生就业指导', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (166, '1.3 面试基本内容和面试种类', 47, '毕业生就业指导', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (167, '1.4 简历制作', 47, '毕业生就业指导', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (168, '1.5 就业权益保护', 47, '毕业生就业指导', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (169, '1.1 掌握这些高频快捷键，效率立马翻倍', 48, '21天Word新手到高手', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (170, '1.2 查找与替换，小技能能帮你解决大问题', 48, '21天Word新手到高手', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (171, '1.3 不带拖的，如何快速选择Word文本', 48, '21天Word新手到高手', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (172, '1.4 不带敲的，如何优雅设置段落缩进', 48, '21天Word新手到高手', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (173, '1.5 2个让你相见恨晚的Word小技巧', 48, '21天Word新手到高手', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (174, '1.1 Excel2016简介', 49, 'Excel进阶教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (175, '1.2 数据输入', 49, 'Excel进阶教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (176, '1.3 美化工作表', 49, 'Excel进阶教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (177, '1.4 条件格式设置', 49, 'Excel进阶教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (178, '1.5 工作表保护设置', 49, 'Excel进阶教程', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (179, '1.1 简单四步，让你的PPT秒变高大上', 50, '21天PPT新手到高手', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (180, '1.2 搞定团队组织介绍，四步法还有新玩法', 50, '21天PPT新手到高手', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (181, '1.3 拒绝催眠，教学培训课件你得这么做', 50, '21天PPT新手到高手', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (182, '1.4 一通百通，各类页面的四步法实战', 50, '21天PPT新手到高手', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (183, '1.5 梦想成真，四步让Word自动变成PPT', 50, '21天PPT新手到高手', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (184, '1.1 Office基础及Word基本操作', 51, 'Office高级应用', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (185, '1.2 Word2010图文混排', 51, 'Office高级应用', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (186, '1.3 Word2010表格与公式', 51, 'Office高级应用', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (187, '1.4 Word2010长文档排版与提高', 51, 'Office高级应用', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (188, '1.5 Excel2010基础', 51, 'Office高级应用', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (189, '1.1 绪论', 19, '机械设计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (190, '1.2 机械设计总论', 19, '机械设计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (191, '1.3 机械零件的强度', 19, '机械设计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (192, '1.4 摩擦、磨损及润滑概述', 19, '机械设计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (193, '1.5 螺纹连接与螺旋传动', 19, '机械设计', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (194, '1.1 绪论', 52, '机械设计基础', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (195, '1.2 平面机构的结构分析和速度分析', 52, '机械设计基础', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (196, '1.3 平面连杆机构及其设计', 52, '机械设计基础', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (197, '1.4 凸轮机构及其设计', 52, '机械设计基础', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (198, '1.5 齿轮机构及其设计', 52, '机械设计基础', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (199, '1.1 绪论', 53, '机械原理', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (200, '1.2 机构的组成原理及结构分析', 53, '机械原理', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (201, '1.3 平面机构的运动分析', 53, '机械原理', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (202, '1.4 平面机构的动态静力分析', 53, '机械原理', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (203, '1.5 平面连杆机构及其设计', 53, '机械原理', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (204, '1.1 投影和视图', 54, '画法几何及机械制图', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (205, '1.2 点、直线和平面的投影', 54, '画法几何及机械制图', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (206, '1.3 直线、平面的相对位置关系', 54, '画法几何及机械制图', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (207, '1.4 投影变换', 54, '画法几何及机械制图', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (208, '1.5 立体的投影', 54, '画法几何及机械制图', '/upload/course/common/video.mp4', 2, 32, 0, 0);
INSERT INTO `course_list` VALUES (209, '1. 课程介绍', 55, '大数据StreamX流处理平台', '/upload/course/StreamX/1.mp4', 5, 33, 0, 0);
INSERT INTO `course_list` VALUES (210, '2. StreamX介绍', 55, '大数据StreamX流处理平台', '/upload/course/StreamX/2.mp4', 11, 25, 0, 0);
INSERT INTO `course_list` VALUES (211, '3. StreamX架构', 55, '大数据StreamX流处理平台', '/upload/course/StreamX/3.mp4', 6, 4, 0, 0);
INSERT INTO `course_list` VALUES (212, '4. StreamX部署-环境准备', 55, '大数据StreamX流处理平台', '/upload/course/StreamX/4.mp4', 11, 49, 0, 0);
INSERT INTO `course_list` VALUES (213, '5. StreamX部署-安装和配置', 55, '大数据StreamX流处理平台', '/upload/course/StreamX/5.mp4', 10, 4, 0, 0);
INSERT INTO `course_list` VALUES (214, '6. 通过StreamX部署Flink流式应用', 55, '大数据StreamX流处理平台', '/upload/course/StreamX/6.mp4', 14, 58, 0, 0);
INSERT INTO `course_list` VALUES (215, '7. 通过StreamX部署Flink SQL应用', 55, '大数据StreamX流处理平台', '/upload/course/StreamX/7.mp4', 8, 32, 0, 0);
INSERT INTO `course_list` VALUES (216, '8. 使用StreamX API开发应用-配置介绍', 55, '大数据StreamX流处理平台', '/upload/course/StreamX/8.mp4', 8, 14, 0, 0);
INSERT INTO `course_list` VALUES (217, '9. 使用StreamX API开发应用-项目配置', 55, '大数据StreamX流处理平台', '/upload/course/StreamX/9.mp4', 9, 16, 0, 0);
INSERT INTO `course_list` VALUES (218, '10. 使用StreamX API开发流式应用-消费Kafka', 55, '大数据StreamX流处理平台', '/upload/course/StreamX/10.mp4', 13, 31, 0, 0);
INSERT INTO `course_list` VALUES (219, '11. 使用StreamX API开发流式应用-写入MySQL', 55, '大数据StreamX流处理平台', '/upload/course/StreamX/11.mp4', 11, 53, 0, 0);
INSERT INTO `course_list` VALUES (220, '12. 使用StreamX API开发流式应用-使用StreamX平台提交', 55, '大数据StreamX流处理平台', '/upload/course/StreamX/12.mp4', 9, 25, 0, 0);
INSERT INTO `course_list` VALUES (221, '13. 使用StreamX API开发SQL应用', 55, '大数据StreamX流处理平台', '/upload/course/StreamX/13.mp4', 8, 8, 0, 0);

-- ----------------------------
-- Table structure for course_preview
-- ----------------------------
DROP TABLE IF EXISTS `course_preview`;
CREATE TABLE `course_preview`  (
  `preview_id` int NOT NULL AUTO_INCREMENT COMMENT '课程预告ID',
  `course_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程介绍',
  `start_time` date NULL DEFAULT NULL COMMENT '开课时间',
  `time_length` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预计时长',
  `teacher_id` int NOT NULL COMMENT '讲师ID',
  `teacher_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '讲师姓名',
  `teacher_des` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '讲师介绍',
  `preview_state` tinyint(1) NOT NULL DEFAULT 1 COMMENT '预告状态',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`preview_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程预告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_preview
-- ----------------------------
INSERT INTO `course_preview` VALUES (1, '计算机二级Python备考指南', 'Python是一种计算机程序设计语言。是一种面向对象的动态类型语言，最初被设计用于编写自动化脚本，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。', '2023-06-23', '18', 1, '王伟', '曾经在微软、阿里工作十年以上，参与友盟、芒果移动的收购过程，在离职前最后职位是芒果移动的总负责人\r\n曾经为百变空间CTO联合创始人董事、连续创业者，现在为立芳教育创始人\r\n拥有18项发明专利', 1, 0);
INSERT INTO `course_preview` VALUES (2, 'Excel实战：打造高质量商务图表', '学好Excel各项操作技巧可大幅提高工作效率，如果你经常要用数据向老板汇报业绩、沟通工作，学会用Excel做商务图表，可以帮你解决90%的展示汇报问题！如何用Excel制作高大上的商务动态图表？来本课程，学习商务图表的制作方法。', '2023-06-29', '10.9', 5, '凌祯', '畅销Office课程资深培训讲师\r\n网易云课堂授权讲师\r\n美国PMI认证PMP（项目管理经理）\r\n《数据呈现之美：Excel商务图表实战大全》作者', 1, 0);
INSERT INTO `course_preview` VALUES (3, 'Vue基础特训营', 'Vue.Js是一套用于构建用户界面的渐进式JavaScript框架。因其体积小、易上手、生态丰富、灵活性强且运行效率高等特点，使其成为了目前各大互联网公司最受欢迎的前端开发框架之一，可以说Vue.Js的使用是现如今前端开发工程师的必备技能。', '2023-06-30', '10', 2, '吴海洋', '米修科技创始人、教学总监\r\n曾任用友软件、优步中国前端主程\r\n6年互联网行业开发经验、4年教学经验', 1, 0);
INSERT INTO `course_preview` VALUES (4, 'Go语言基础', '本课程将从基本语法讲起，逐渐深入，帮助同学深度理解Go语言。讲师将带大家分析Go语言面向接口、面向对象、错误处理、Goroutine 与 Channel类型等知识，并构建秒杀系统实战，步步深入，带你快速掌握Go语言！', '2022-09-29', '18', 1, '王立', '曾经在微软、阿里工作十年以上，参与友盟、芒果移动的收购过程，在离职前最后职位是芒果移动的总负责人\r\n曾经为百变空间CTO联合创始人董事、连续创业者，现在为立芳教育创始人\r\n拥有18项发明专利', 0, 0);
INSERT INTO `course_preview` VALUES (5, 'Vue实战-仿饿了么点餐App', '如果你掌握了Vue基础，却在进阶之路上遇到了瓶颈，那这门课就是你快速提升前端技术的突破口。\r\n本课选取真实饿了么点餐App为实战案例，运用前端框架Vue来实现，从整体架构分析开始，环境搭建、具体开发、以及最终的项目上线，完整呈现一个前端项目开发的全过程。', '2022-06-28', '18', 2, '吴海洋', '米修科技创始人、教学总监\r\n曾任用友软件、优步中国前端主程\r\n6年互联网行业开发经验、4年教学经验', 0, 0);
INSERT INTO `course_preview` VALUES (6, 'Web安全基础', '课程内包含大量的实际项目案例，采用一讲一实战的教学模式，通过案例阐述Web安全知识在实际项目中的应用，让学员深入理解各种漏洞的原理、测试、预防措施，为学员建立完整的Web安全基础概念体系，掌握Web安全知识，一步步走进网络安全世界。', '2022-06-28', '18', 1, '王立', '曾经在微软、阿里工作十年以上，参与友盟、芒果移动的收购过程，在离职前最后职位是芒果移动的总负责人\r\n曾经为百变空间CTO联合创始人董事、连续创业者，现在为立芳教育创始人\r\n拥有18项发明专利', 0, 0);

-- ----------------------------
-- Table structure for course_type
-- ----------------------------
DROP TABLE IF EXISTS `course_type`;
CREATE TABLE `course_type`  (
  `type_id` int NOT NULL AUTO_INCREMENT COMMENT '类别ID',
  `type_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类别名称',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类别描述',
  `type_state` tinyint(1) NOT NULL DEFAULT 1 COMMENT '类别状态',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程类别' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_type
-- ----------------------------
INSERT INTO `course_type` VALUES (1, '计算机专业基础', '计算机专业基础包括数据结构，操作系统，计算机原理，计算机网络等基础课程', 1, 0);
INSERT INTO `course_type` VALUES (2, '人工智能', '带你了解人工智能从感知走向认知的发展趋势，解读深度学习中的关键技术！', 1, 0);
INSERT INTO `course_type` VALUES (3, 'Web前端', '带你学会HTML5+CSS3 亲自动手开发静态网站，深度讲解Vue3.0新特性，提升你的核心竞争力！', 1, 0);
INSERT INTO `course_type` VALUES (4, 'Web后端', '深入讲解Web安全方面的基础知识，帮助掌握漏洞原理和预防措施；关注网络安全，重视和保护个人隐私安全。', 1, 0);
INSERT INTO `course_type` VALUES (5, '求职应聘', '讲解商科三大就业方向，助你规划职业生涯路线；详解求职、入职、离职时各类法律风险，以及劳动法及维权知识，帮助学员提高防范意识。', 1, 0);
INSERT INTO `course_type` VALUES (6, '办公软件', '带你掌握Word实用技巧，摆脱低级操作，大大提升工作效率！旨在帮助大家快速、高效地掌握各类常用Excel函数，并应用到具体的实践中。', 1, 0);
INSERT INTO `course_type` VALUES (7, '机械设计', '机械设计制造及自动化涉及机械行业中的设计制造、科技开发、应用研究、运行管理和经营销售等诸多的方向，这些方向需要有专业的课程教导学员学习。', 1, 0);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `department_id` int NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `department_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门描述',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `department_state` tinyint(1) NULL DEFAULT 1 COMMENT '部门状态',
  `delete_state` tinyint(1) NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`department_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '人事部门', '负责公司人力资源工作的规划、建立、考勤、劳动纪律等人事程序或规章制度；做好各岗位的职位说明书，并根据公司职位调整组要进行相应的变更；建立并及时更新员工档案；', '2022-06-27 20:06:34', 1, 0);
INSERT INTO `department` VALUES (2, '营销部门', '完成公司制定的营销指标、营销策略、计划的拟订、实施和改进；负责市场调研、市场分析工作，制定业务推进计划；向顾客介绍产品，与顾客洽谈合同和签订合同，确保所签合同规范、有效和可行；', '2022-06-27 19:29:25', 1, 0);
INSERT INTO `department` VALUES (3, '课程部门', '完成公司制定的课程计划，保证课程质量，并及时更新课程信息', '2022-06-27 19:33:21', 1, 0);
INSERT INTO `department` VALUES (4, '审核部门', '负责公司内的课程、资料、文章等审核信息，确保质量问题', '2022-06-27 19:34:14', 1, 0);

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `manager_id` int NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `manager_account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员账户',
  `manager_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员姓名',
  `pass_word` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员密码',
  `manager_gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `manager_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `id_card` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `department_id` int NOT NULL COMMENT '部门ID',
  `department_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
  `register_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `locked_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '锁定状态',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  `avatar_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像URL',
  PRIMARY KEY (`manager_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES (1, 'neuadminsofte@126.com', 'admin', '$2a$10$vGDyPOyDGDn4.fUJefp2Uek8.4WXvUAUM0oxaUke2Jzde1sJct2sy', '男', '16605110016', '131121200001121415', 1, '人事部门', '2022-06-07 12:20:56', '2022-06-06 11:18:34', 0, 0, '/upload/avatar/1647454256136timg.jpg');
INSERT INTO `manager` VALUES (2, 'jasonchu68@163.com', 'Jason', '$2a$10$IE4tCQmoFf.B8Rn3vXHUVe9GviEEXBHWt9h10eFFGOE.TxFSD2/TK', '男', '13940239341', '342111200001012418', 1, '人事部门', '2022-07-11 12:49:36', '2022-07-11 12:49:36', 0, 0, '/upload/avatar/1657544678645截屏2022-07-01 20.22.54.png');

-- ----------------------------
-- Table structure for manager_role
-- ----------------------------
DROP TABLE IF EXISTS `manager_role`;
CREATE TABLE `manager_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `manager_id` int NOT NULL COMMENT '管理员ID',
  `role_id` int NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员-角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of manager_role
-- ----------------------------
INSERT INTO `manager_role` VALUES (1, 1, 1);
INSERT INTO `manager_role` VALUES (2, 2, 5);
INSERT INTO `manager_role` VALUES (3, 2, 15);
INSERT INTO `manager_role` VALUES (4, 2, 17);
INSERT INTO `manager_role` VALUES (5, 3, 8);
INSERT INTO `manager_role` VALUES (6, 3, 10);
INSERT INTO `manager_role` VALUES (7, 3, 11);
INSERT INTO `manager_role` VALUES (8, 3, 12);
INSERT INTO `manager_role` VALUES (9, 3, 13);
INSERT INTO `manager_role` VALUES (10, 3, 14);

-- ----------------------------
-- Table structure for my_message
-- ----------------------------
DROP TABLE IF EXISTS `my_message`;
CREATE TABLE `my_message`  (
  `message_id` int NOT NULL AUTO_INCREMENT COMMENT '消息ID',
  `user_id` int NOT NULL COMMENT '用户ID',
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `publish_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  `read_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否已读',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '超链接',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '个人消息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of my_message
-- ----------------------------
INSERT INTO `my_message` VALUES (1, 1, '新用户注册', '【jasonchu68】你好，恭喜您注册成功！', '2022-07-11 10:33:18', 1, '#/accountCenter', 0);
INSERT INTO `my_message` VALUES (28, 2, '新用户注册', '【田所君今天雷普了吗】你好，恭喜您注册成功！', '2022-07-11 14:17:40', 0, '#/accountCenter', 0);
INSERT INTO `my_message` VALUES (29, 1, '你好', '你好，这是一个测试消息', '2022-07-11 14:22:37', 0, '#/accountCenter', 0);
INSERT INTO `my_message` VALUES (30, 7, '新用户注册', '【专业配音员纪伯】你好，恭喜您注册成功！', '2022-07-11 15:21:04', 0, '#/accountCenter', 0);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `order_id` int NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `order_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单名称',
  `user_id` int NOT NULL COMMENT '用户ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `course_id` int NULL DEFAULT NULL COMMENT '特训班ID',
  `pay_price` int NOT NULL COMMENT '支付金额',
  `order_state` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单状态',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, '2ce105b4-3db8-46a4-8005-31c3833fae63', '开通终身会员', 1, '2022-07-11 19:41:06', NULL, 520, '已支付');
INSERT INTO `order` VALUES (2, '531bc8be-07fb-47bf-a10f-6dfd56379c34', '开通月会员', 2, '2022-07-11 22:23:46', NULL, 25, '已支付');
INSERT INTO `order` VALUES (3, 'ec033185-79dd-4a84-88e1-6e091545e20c', '报名云计算与大数据零基础特训班', 3, '2022-03-15 03:02:42', 15, 3998, '已支付');
INSERT INTO `order` VALUES (4, 'ba7e875d-0f9b-4d15-92a6-4c74a0026b30', '开通终身会员', 3, '2022-03-17 02:28:44', NULL, 9999, '已支付');

-- ----------------------------
-- Table structure for resource_audit
-- ----------------------------
DROP TABLE IF EXISTS `resource_audit`;
CREATE TABLE `resource_audit`  (
  `audit_id` int NOT NULL AUTO_INCREMENT COMMENT '审核ID',
  `resource_id` int NOT NULL COMMENT '资料ID',
  `resource_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资料名',
  `reviewer_id` int NULL DEFAULT NULL COMMENT '审核人ID',
  `reviewer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `publisher_id` int NOT NULL COMMENT '发布人ID',
  `publisher` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `audit_state` int NOT NULL DEFAULT 0 COMMENT '审核状态',
  `audit_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核备注',
  PRIMARY KEY (`audit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资料审核表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of resource_audit
-- ----------------------------
INSERT INTO `resource_audit` VALUES (7, 7, '花花与三猫——论猫届蔡徐坤是如何炼成的', NULL, NULL, 1, 'admin', 0, NULL, 0, NULL);
INSERT INTO `resource_audit` VALUES (8, 8, '【干货】如何制造一艘小型飞船完成水星飞地的开拓', 1, 'admin', 1, 'admin', 1, '2022-07-11 15:08:33', 0, 'aaa');

-- ----------------------------
-- Table structure for resource_list
-- ----------------------------
DROP TABLE IF EXISTS `resource_list`;
CREATE TABLE `resource_list`  (
  `resource_id` int NOT NULL AUTO_INCREMENT COMMENT '资料ID',
  `resource_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资料名称',
  `coin` int NOT NULL COMMENT '所需积分',
  `file_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件类型',
  `file_size` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件大小',
  `uploader` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '上传人',
  `file_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件url',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注',
  `publish_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '发布状态',
  `audit_state` int NOT NULL DEFAULT -1 COMMENT '审核状态',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`resource_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学习资料表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of resource_list
-- ----------------------------
INSERT INTO `resource_list` VALUES (7, '花花与三猫——论猫届蔡徐坤是如何炼成的', 10, '.pdf', '225.72KB', 'admin', 'material/1657551851140求锤得锤.pdf', '猫徐坤啊，想抱大V的腿就好好认真抱。人家大V是真被后院骗了写的科普文，你又看科普文做了功课又转发科普文打了一大串心得，最后还是接了后院，现在引导自己粉丝刷屏说被后院骗了？', 1, 0, 0);
INSERT INTO `resource_list` VALUES (8, '【干货】如何制造一艘小型飞船完成水星飞地的开拓', 100, '.pdf', '136.78KB', 'admin', 'material/1657552033852【干货】如何制造一艘小型飞船完成水星飞地的开拓.pdf', '在发达的现代化世界，我们不得不面对地球人口暴涨而带来的环境问题，包括房价暴涨，资源紧张，交通堵塞等一系列环境问题，你有没有想过在我们的其他类地行星开拓一片属于自己的飞地呢?它的距离离地球只有1.5亿公里，同时距离太阳极近，早晚昼夜温差极大，不过幸运的是，你可以在这片不毛之地上多过几个生日，因为它的自传周期只有88天，而且从来没有探测器成功着陆，虽然这是一片不毛之地，但仍然阻断不了这位光荣的引路人的脚步。', 1, 1, 0);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` int NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名称',
  `role_url` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限路径',
  `role_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限类别',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `role_describe` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `role_state` tinyint(1) NOT NULL DEFAULT 1 COMMENT '角色状态',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'admin', '/**/**', '超级权限', '2022-06-27 20:06:48', '超级管理员权限', 1);
INSERT INTO `role` VALUES (5, 'manager', '/manager/**', '人事管理', '2022-06-27 20:08:27', '员工管理权限', 1);
INSERT INTO `role` VALUES (8, 'course', '/course/**', '课程管理', '2022-06-27 10:03:27', '课程管理权限', 1);
INSERT INTO `role` VALUES (9, 'data', '/data/**', '营销管理', '2022-06-27 10:04:07', '数据分析权限', 1);
INSERT INTO `role` VALUES (10, 'directory', '/directory/**', '课程管理', '2022-06-27 10:03:32', '课程目录权限', 1);
INSERT INTO `role` VALUES (11, 'type', '/type/**', '课程管理', '2022-06-27 10:03:33', '课程类别权限', 1);
INSERT INTO `role` VALUES (12, 'teacher', '/teacher/**', '人事管理', '2022-06-27 20:07:57', '讲师管理权限', 1);
INSERT INTO `role` VALUES (13, 'special', '/special/**', '课程管理', '2022-06-27 10:03:37', '特训班管理权限', 1);
INSERT INTO `role` VALUES (14, 'preview', '/preview/**', '课程管理', '2022-06-27 10:03:47', '课程预告管理权限', 1);
INSERT INTO `role` VALUES (15, 'department', '/department/**', '人事管理', '2022-06-27 19:36:49', '部门管理权限', 1);
INSERT INTO `role` VALUES (16, 'role', '/role/**', '人事管理', '2022-06-27 19:36:50', '角色管理权限', 1);
INSERT INTO `role` VALUES (17, 'user', '/user/**', '人事管理', '2022-06-27 19:36:56', '用户管理权限', 1);
INSERT INTO `role` VALUES (18, 'message', '/message/**', '营销管理', '2022-06-27 10:04:04', '公告管理权限', 1);
INSERT INTO `role` VALUES (19, 'vip', '/vip/**', '营销管理', '2022-06-27 10:04:08', 'VIP管理权限', 1);
INSERT INTO `role` VALUES (20, 'banner', '/banner/**', '营销管理', '2022-06-27 10:04:12', '轮播图管理权限', 1);
INSERT INTO `role` VALUES (21, 'orderInfo', '/orderInfo/**', '营销管理', '2022-06-27 10:04:17', '订单管理权限', 1);
INSERT INTO `role` VALUES (22, 'courseAudit', '/courseAudit/**', '审核管理', '2022-06-27 10:04:22', '课程审核权限', 1);
INSERT INTO `role` VALUES (23, 'resourceAudit', '/resourceAudit/**', '审核管理', '2022-06-27 10:04:23', '资料审核权限', 1);
INSERT INTO `role` VALUES (24, 'articleAudit', '/articleAudit/**', '审核管理', '2022-06-27 10:04:26', '文章审核权限', 1);
INSERT INTO `role` VALUES (25, 'specialAudit', '/specialAudit/**', '审核管理', '2022-06-27 10:04:27', '特训班审核权限', 1);
INSERT INTO `role` VALUES (26, 'resource', '/resource/**', '资料管理', '2022-06-27 10:04:32', '资料管理权限', 1);
INSERT INTO `role` VALUES (27, 'article', '/article/**', '文章管理', '2022-06-27 10:04:49', '锦囊管理权限', 1);

-- ----------------------------
-- Table structure for special_audit
-- ----------------------------
DROP TABLE IF EXISTS `special_audit`;
CREATE TABLE `special_audit`  (
  `audit_id` int NOT NULL AUTO_INCREMENT COMMENT '审核ID',
  `course_id` int NOT NULL COMMENT '课程ID',
  `course_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名',
  `reviewer_id` int NULL DEFAULT NULL COMMENT '审核人ID',
  `reviewer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `publisher_id` int NOT NULL COMMENT '发布人ID',
  `publisher` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `audit_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '审核状态',
  `audit_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核备注',
  PRIMARY KEY (`audit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of special_audit
-- ----------------------------
INSERT INTO `special_audit` VALUES (1, 5, 'MySQL零基础特训班', 1, 'admin', 1, 'admin', 3, '2021-06-06 13:01:19', 0, '审核通过');
INSERT INTO `special_audit` VALUES (2, 6, 'BEC商务英语一月特训班', 1, 'admin', 1, 'admin', 3, '2021-06-06 13:01:23', 0, '审核通过');
INSERT INTO `special_audit` VALUES (3, 7, '数据结构与算法进阶班', 1, 'admin', 1, 'admin', 3, '2021-06-06 13:01:31', 0, '审核通过');
INSERT INTO `special_audit` VALUES (4, 8, '经济金融一月特训班', 1, 'admin', 1, 'admin', 3, '2021-06-06 13:01:38', 0, '审核通过');
INSERT INTO `special_audit` VALUES (5, 14, '商业数据分析特训班', 1, 'admin', 1, 'admin', 3, '2021-06-07 04:14:40', 0, '审核通过');
INSERT INTO `special_audit` VALUES (6, 13, '程序员成长攻略零基础特训班', 1, 'admin', 1, 'admin', 3, '2021-06-07 04:14:47', 0, '审核通过');
INSERT INTO `special_audit` VALUES (7, 17, 'AJAX+jQuery实战提高特训班', 1, 'admin', 1, 'admin', 3, '2021-06-07 04:25:07', 0, '审核通过');
INSERT INTO `special_audit` VALUES (8, 18, 'Java零基础特训班', 1, 'admin', 1, 'admin', 3, '2021-06-07 04:25:15', 0, '审核通过');
INSERT INTO `special_audit` VALUES (9, 16, '机械设计制造及自动化一月特训班', 1, 'admin', 1, 'admin', 3, '2021-06-07 04:25:21', 0, '审核通过');
INSERT INTO `special_audit` VALUES (10, 15, '云计算与大数据零基础特训班', 1, 'admin', 1, 'admin', 3, '2021-06-07 04:25:26', 0, '审核通过');
INSERT INTO `special_audit` VALUES (11, 6, 'BEC商务英语一月特训班', 1, 'admin', 1, 'admin', 3, '2021-06-09 05:33:20', 0, '审核通过');
INSERT INTO `special_audit` VALUES (12, 7, '数据结构与算法进阶班', 1, 'admin', 1, 'admin', 3, '2021-06-09 05:33:26', 0, '审核通过');
INSERT INTO `special_audit` VALUES (13, 8, '经济金融一月特训班', 1, 'admin', 1, 'admin', 3, '2021-06-09 05:33:31', 0, '审核通过');
INSERT INTO `special_audit` VALUES (14, 5, 'MySQL零基础特训班', 1, 'admin', 1, 'admin', 3, '2021-06-09 05:33:38', 0, '审核通过');
INSERT INTO `special_audit` VALUES (15, 14, '商业数据分析特训班', 1, 'admin', 1, 'admin', 3, '2021-06-09 05:33:43', 0, '审核通过');
INSERT INTO `special_audit` VALUES (16, 17, 'AJAX+jQuery实战提高特训班', 1, 'admin', 1, 'admin', 3, '2021-06-09 05:34:18', 0, '审核通过');
INSERT INTO `special_audit` VALUES (17, 18, 'Java零基础特训班', 1, 'admin', 1, 'admin', 3, '2021-06-09 05:34:05', 0, '审核通过');
INSERT INTO `special_audit` VALUES (18, 13, '程序员成长攻略零基础特训班', 1, 'admin', 1, 'admin', 3, '2021-06-09 05:33:59', 0, '审核通过');
INSERT INTO `special_audit` VALUES (19, 16, '机械设计制造及自动化一月特训班', 1, 'admin', 1, 'admin', 3, '2021-06-09 05:33:54', 0, '审核通过');
INSERT INTO `special_audit` VALUES (20, 15, '云计算与大数据零基础特训班', 1, 'admin', 1, 'admin', 3, '2021-06-09 05:33:49', 0, '审核通过');
INSERT INTO `special_audit` VALUES (21, 6, 'BEC商务英语一月特训班', 1, 'admin', 1, 'admin', 3, '2022-03-16 18:26:17', 0, '1');
INSERT INTO `special_audit` VALUES (22, 7, '数据结构与算法进阶班', 1, 'admin', 1, 'admin', 3, '2022-03-16 18:26:23', 0, '1');
INSERT INTO `special_audit` VALUES (23, 8, '经济金融一月特训班', 1, 'admin', 1, 'admin', 3, '2022-03-16 18:26:07', 0, '1');
INSERT INTO `special_audit` VALUES (24, 7, '数据结构与算法进阶班', 1, 'admin', 1, 'admin', 3, '2022-03-16 18:31:34', 0, '1');
INSERT INTO `special_audit` VALUES (25, 6, 'BEC商务英语一月特训班', 1, 'admin', 1, 'admin', 3, '2022-03-16 18:31:41', 0, '1');
INSERT INTO `special_audit` VALUES (26, 5, 'MySQL零基础特训班', 1, 'admin', 1, 'admin', 3, '2022-04-16 12:16:53', 0, '111');
INSERT INTO `special_audit` VALUES (27, 14, '商业数据分析特训班', 1, 'admin', 1, 'admin', 3, '2022-04-16 12:27:13', 0, '111111111111');
INSERT INTO `special_audit` VALUES (28, 17, 'AJAX+jQuery实战提高特训班', 1, 'admin', 1, 'admin', 3, '2022-04-16 12:17:08', 0, '11');
INSERT INTO `special_audit` VALUES (29, 13, '程序员成长攻略零基础特训班', 1, 'admin', 1, 'admin', 3, '2022-04-16 12:24:39', 0, '111111111');
INSERT INTO `special_audit` VALUES (30, 16, '机械设计制造及自动化一月特训班', 1, 'admin', 1, 'admin', 3, '2022-04-16 12:32:16', 0, '1111111111');
INSERT INTO `special_audit` VALUES (31, 18, 'Java零基础特训班', 1, 'admin', 1, 'admin', 3, '2022-04-16 12:32:07', 0, '11111111111');
INSERT INTO `special_audit` VALUES (32, 15, '云计算与大数据零基础特训班', 1, 'admin', 1, 'admin', 3, '2022-04-16 12:37:40', 0, '1111111111');
INSERT INTO `special_audit` VALUES (33, 5, 'MySQL零基础特训班', NULL, NULL, 1, 'admin', 3, NULL, 0, NULL);
INSERT INTO `special_audit` VALUES (34, 56, '简单聊一下私家车如何托运？价格有什么不同', 1, 'admin', 1, 'admin', 3, '2022-07-11 15:47:01', 0, 'a');
INSERT INTO `special_audit` VALUES (35, 59, '黑马程序员前端Web全套教程，会打字就能学会的Web前端课程', 1, 'admin', 1, 'admin', 1, '2022-07-12 01:26:02', 0, 's a d');
INSERT INTO `special_audit` VALUES (36, 57, '如何用108天开一盏灯', 1, 'admin', 1, 'admin', 1, '2022-07-12 01:25:33', 0, 'a');
INSERT INTO `special_audit` VALUES (37, 60, 'web全栈工程师全套教程（上部）【前端+后端+运动端】', 1, 'admin', 1, 'admin', 1, '2022-07-12 01:25:45', 0, 'ax');
INSERT INTO `special_audit` VALUES (38, 61, '计算机视觉-Opencv项目实战(Python版)惊喜来袭！', 1, 'admin', 1, 'admin', 1, '2022-07-12 01:25:53', 0, 'baa');
INSERT INTO `special_audit` VALUES (39, 62, 'Excel全套新手自学教程，从零开始超详细讲解', NULL, NULL, 1, 'admin', 0, NULL, 0, NULL);

-- ----------------------------
-- Table structure for study_record
-- ----------------------------
DROP TABLE IF EXISTS `study_record`;
CREATE TABLE `study_record`  (
  `record_id` int NOT NULL AUTO_INCREMENT COMMENT '学习记录ID',
  `user_id` int NOT NULL COMMENT '用户ID',
  `course_id` int NOT NULL COMMENT '课程ID',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`record_id`) USING BTREE,
  INDEX `record_id`(`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学习记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of study_record
-- ----------------------------
INSERT INTO `study_record` VALUES (24, 1, 29, '2022-07-13 09:47:10', 0);
INSERT INTO `study_record` VALUES (25, 1, 33, '2022-07-11 12:23:33', 0);
INSERT INTO `study_record` VALUES (26, 1, 38, '2022-07-11 12:24:30', 0);
INSERT INTO `study_record` VALUES (27, 1, 27, '2022-07-11 12:27:09', 0);
INSERT INTO `study_record` VALUES (28, 1, 1, '2022-07-11 14:36:58', 0);
INSERT INTO `study_record` VALUES (29, 1, 36, '2022-07-11 14:31:29', 0);
INSERT INTO `study_record` VALUES (30, 1, 34, '2022-07-11 14:31:33', 0);
INSERT INTO `study_record` VALUES (31, 2, 25, '2022-07-11 14:32:18', 0);
INSERT INTO `study_record` VALUES (32, 7, 9, '2022-07-11 15:23:15', 0);
INSERT INTO `study_record` VALUES (33, 7, 40, '2022-07-11 15:26:59', 0);
INSERT INTO `study_record` VALUES (34, 1, 55, '2022-07-13 11:49:31', 0);

-- ----------------------------
-- Table structure for system_message
-- ----------------------------
DROP TABLE IF EXISTS `system_message`;
CREATE TABLE `system_message`  (
  `message_id` int NOT NULL AUTO_INCREMENT COMMENT '消息ID',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `publisher_id` int NOT NULL COMMENT '发布人ID',
  `publisher` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  `publish_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '超链接',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统消息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_message
-- ----------------------------
INSERT INTO `system_message` VALUES (1, '系统提醒', '请不要上传虚假信息或涉及黄、赌、毒的不良信息。东软云课保留追究责任的权利', 1, 'admin', '2022-07-11 11:13:18', NULL, 0);
INSERT INTO `system_message` VALUES (2, '系统提醒', '课程内容不代表本网站立场', 1, 'admin', '2022-07-11 11:14:23', '', 0);
INSERT INTO `system_message` VALUES (3, '测试', '【系统测试】正在对系统进行测试，你可以忽略这条信息。。。', 1, 'admin', '2022-07-11 13:51:01', '#/learnMaterials', 0);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `teacher_id` int NOT NULL AUTO_INCREMENT COMMENT '讲师ID',
  `teacher_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '讲师姓名',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '讲师介绍',
  `avatar_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '头像',
  `teacher_gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `teacher_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '讲师电话',
  `id_card` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '入职时间',
  `leave_time` timestamp NULL DEFAULT NULL COMMENT '离职时间',
  `teacher_state` tinyint(1) NOT NULL DEFAULT 1 COMMENT '讲师状态',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`teacher_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '讲师表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '王伟', '曾经在微软、阿里工作十年以上，参与友盟、芒果移动的收购过程，在离职前最后职位是芒果移动的总负责人\r\n曾经为百变空间CTO联合创始人董事、连续创业者，现在为立芳教育创始人\r\n拥有18项发明专利', '/upload/avatar/16232148181171623035583368man.png', '男', '15105284861', '151124411115562145', '2021-06-07 20:09:19', NULL, 1, 0);
INSERT INTO `teacher` VALUES (2, '吴海洋', '米修科技创始人、教学总监\r\n曾任用友软件、优步中国前端主程\r\n6年互联网行业开发经验、4年教学经验', '/upload/avatar/1623214837930wwsc.png', '男', '13733055962', '151131199901121451', '2021-06-06 20:01:24', NULL, 1, 0);
INSERT INTO `teacher` VALUES (3, '唐榕', '本科就读于南开大学英文系，研究生毕业于谢菲尔德大学\r\n对西方语言文化有多年的接触与研究，多年从事线上、线下课堂教学，经验丰富，课堂氛围活泼，讲课通俗易懂，深受学生欢迎', '/upload/avatar/1623214934581women.png', '女', '13732515962', '131121188542231411', '2021-06-06 20:04:35', NULL, 1, 0);
INSERT INTO `teacher` VALUES (4, '陈罗丹', '本科获得四川外国语大学西班牙语文学学士学位，研究生阶段在西班牙胡安卡洛斯大学，获得传媒硕士学位，目前博士在读。\r\n曾就职于中国国际广播电台。', '/upload/avatar/1623214950058wmm.png', '男', '15352152162', '151131199915421417', '2021-06-06 20:04:19', NULL, 1, 0);
INSERT INTO `teacher` VALUES (5, '凌祯', '畅销Office课程资深培训讲师\r\n网易云课堂授权讲师\r\n美国PMI认证PMP（项目管理经理）\r\n《数据呈现之美：Excel商务图表实战大全》作者', '/upload/avatar/1623214978667wm.png', '女', '13735596962', '181121199702231415', '2021-06-06 20:06:35', NULL, 1, 0);
INSERT INTO `teacher` VALUES (6, '李轩逸', '澳大利亚时尚杂志LabA4 Magazine签约修图师\r\n《人像摄影》《今日人像》修图栏目专业撰稿人\r\n修图作品曾获美国拉斯维加斯WPPI年度摄影大赛银奖\r\n作品多次发表于：《VOGUE》《时尚芭莎》《新视线》《昕薇》《风尚志》等多家时尚媒体', '/upload/avatar/16232149891541623035583368man.png', '男', '15433088441', '121151199521151241', '2021-06-07 11:13:35', NULL, 1, 0);
INSERT INTO `teacher` VALUES (7, '高正', '通俗易懂的平民Python传播者\r\n毕业于英国布莱顿大学\r\n人工智能财务解决方案专家，精通Python、Django框架、Keras神经网络框架、爬虫、RPA', '/upload/avatar/1623215027065wwsc.png', '男', '18103588224', '151121411101151214', '2021-06-07 11:30:17', NULL, 1, 0);
INSERT INTO `teacher` VALUES (8, 'coderwhy', '1', '/upload/avatar/165087412353416474545533521622981930850html.png', '男', '15073171174', '431125199012188153', '2022-04-25 16:08:48', NULL, 1, 0);
INSERT INTO `teacher` VALUES (9, '何同学', '喜欢做贼有意思的视频 工作联系：xhaxx1123@163.com', '/upload/avatar/1657553851670截屏2022-07-11 23.37.15.png', '男', '19999999999', '241323200000001234', '2022-07-11 15:37:36', NULL, 1, 0);
INSERT INTO `teacher` VALUES (10, '小刚', '80后吃货一枚 只为分享生活', '/upload/avatar/165755392274079d6dcaff782ab912e9940da9b94292bc5ddb30c.jpg@240w_240h_1c_1s.jpg', '男', '18827812712', '123412123456781234', '2022-07-11 15:39:12', NULL, 1, 0);
INSERT INTO `teacher` VALUES (11, '龙丽', 'AQA芭蕾，EQE亏内', '/upload/avatar/1657587713837截屏2022-07-12 09.01.43.png', '女', '15423451234', '234512342345121234', '2022-07-12 01:03:02', NULL, 1, 0);
INSERT INTO `teacher` VALUES (12, '全斗焕', '对于光州事件，一定要重拳出击！', '/upload/avatar/1657588463325截屏2022-07-12 09.14.13.png', '男', '13245677890', '123412343212341234', '2022-07-12 01:14:55', NULL, 1, 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `pass_word` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `user_gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `user_birthday` date NULL DEFAULT NULL COMMENT '生日',
  `id_card` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `user_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `learn_target` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学习目标',
  `register_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登录时间',
  `avatar_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `background_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '背景图片',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'TA很懒，什么都没有留下....' COMMENT '个人描述',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `locked_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '锁定状态',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'jasonchu68@163.com', 'jasonchu68', '02c87ae836282e8cc5cfdf10844e38b3', NULL, NULL, NULL, NULL, NULL, '2022-07-11 12:22:18', '2022-07-13 11:03:23', NULL, NULL, 'TA很懒，什么都没有留下....', '2022-07-13 11:03:23', 0, 0);
INSERT INTO `user` VALUES (2, '799343537@qq.com', '田所君今天雷普了吗', '67908e1f9285034a840b10e748fe6253', NULL, NULL, NULL, NULL, NULL, '2022-07-11 14:17:40', '2022-07-11 15:14:45', NULL, NULL, 'TA很懒，什么都没有留下....', '2022-07-11 15:14:45', 0, 0);
INSERT INTO `user` VALUES (7, 'jasonchu34@gmail.com', '专业配音员纪伯', '31ac6e624b2c5f36b8414c07e0f5a322', NULL, NULL, NULL, NULL, NULL, '2022-07-11 15:21:03', '2022-07-11 15:21:36', NULL, NULL, 'TA很懒，什么都没有留下....', '2022-07-11 15:21:36', 0, 0);

-- ----------------------------
-- Table structure for user_coin
-- ----------------------------
DROP TABLE IF EXISTS `user_coin`;
CREATE TABLE `user_coin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `user_id` int NOT NULL COMMENT '用户ID',
  `user_coin` int NOT NULL COMMENT '用户积分',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UNIQUE`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户积分表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_coin
-- ----------------------------
INSERT INTO `user_coin` VALUES (5, 1, 10015);
INSERT INTO `user_coin` VALUES (7, 2, 650);
INSERT INTO `user_coin` VALUES (8, 7, 50);

-- ----------------------------
-- Table structure for user_course
-- ----------------------------
DROP TABLE IF EXISTS `user_course`;
CREATE TABLE `user_course`  (
  `study_id` int NOT NULL AUTO_INCREMENT COMMENT '学习ID',
  `user_id` int NOT NULL COMMENT '用户ID',
  `course_id` int NOT NULL COMMENT '课程ID',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`study_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户课程表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_course
-- ----------------------------
INSERT INTO `user_course` VALUES (5, 1, 1, 0);
INSERT INTO `user_course` VALUES (6, 7, 9, 0);

-- ----------------------------
-- Table structure for user_play
-- ----------------------------
DROP TABLE IF EXISTS `user_play`;
CREATE TABLE `user_play`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `user_id` int NOT NULL COMMENT '用户id',
  `course_id` int NOT NULL COMMENT '课程id',
  `list_id` int NOT NULL COMMENT '目录id',
  `play_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '播放时长',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '播放记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_play
-- ----------------------------
INSERT INTO `user_play` VALUES (13, 1, 55, 213, '415.93935');
INSERT INTO `user_play` VALUES (14, 1, 29, 74, '8.698916');

-- ----------------------------
-- Table structure for user_vip
-- ----------------------------
DROP TABLE IF EXISTS `user_vip`;
CREATE TABLE `user_vip`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `user_id` int NOT NULL COMMENT '用户ID',
  `vip_id` int NOT NULL COMMENT 'VIP标识',
  `open_time` datetime NULL DEFAULT NULL COMMENT '开通时间',
  `expire_time` datetime NULL DEFAULT NULL COMMENT '到期时间',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户 - VIP表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_vip
-- ----------------------------
INSERT INTO `user_vip` VALUES (1, 1, 4, '2022-07-11 18:41:06', '9999-12-31 08:00:00', 0);
INSERT INTO `user_vip` VALUES (2, 2, 1, '2022-07-11 22:24:56', '2022-08-11 22:24:59', 0);

-- ----------------------------
-- Table structure for vip
-- ----------------------------
DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip`  (
  `vip_id` int NOT NULL AUTO_INCREMENT COMMENT '会员id',
  `vip_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '会员名称',
  `vip_mark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '会员标识',
  `vip_icon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图标',
  `time_length` int NOT NULL COMMENT '会员时长',
  `price` int NOT NULL COMMENT '价格',
  `coin` int NOT NULL COMMENT '积分(赠送)',
  `vip_state` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'VIP状态',
  `delete_state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`vip_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'VIP介绍表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vip
-- ----------------------------
INSERT INTO `vip` VALUES (1, '月会员', '开通一个月会员', '#iconhuiyuan2', 30, 25, 600, 1, 0);
INSERT INTO `vip` VALUES (2, '季会员', '开通三个月的会员', '#iconhuiyuan', 91, 66, 2100, 1, 0);
INSERT INTO `vip` VALUES (3, '年会员', '开通一年的会员', '#iconhuiyuan4', 365, 230, 10000, 1, 0);
INSERT INTO `vip` VALUES (4, '终身会员', '开通终身会员', '#iconhuiyuan1', -1, 520, 100000, 1, 0);
INSERT INTO `vip` VALUES (6, '日会员', '开通一天的会员', '#iconhuiyuan5', 1, 5, 100, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
