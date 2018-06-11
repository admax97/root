/*
Navicat MySQL Data Transfer

Source Server         : 47.106.128.25
Source Server Version : 50721
Source Host           : 47.106.128.25:3306
Source Database       : online

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-06-01 11:36:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `phonenumber` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '1:正常；2：冻结',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '1', 'admin', '18310241084', null, '2018-04-15 00:00:00', null, '2', '2018-04-15 00:00:00');
INSERT INTO `admin` VALUES ('10', 'xx', null, '9336ebf25087d91c818ee6e9ec29f8c1', '18989877890', null, null, null, '1', null);
INSERT INTO `admin` VALUES ('11', '张三丰', '3', '4a6042865bf82a8311bc5fc53d7fc9fe', '18989877890', null, null, null, '2', null);
INSERT INTO `admin` VALUES ('12', 'ljx', '2', 'f0b5acd24bf41fe5d0ce9ff222ccbb53', '18789098765', null, '2018-04-16 00:00:00', null, '2', '2018-04-16 00:00:00');
INSERT INTO `admin` VALUES ('14', '小白', '2', 'de30f03b6683e62aff82ff43eb1e5a68', '12346653545', null, '2018-04-16 00:00:00', null, '2', '2018-04-16 00:00:00');
INSERT INTO `admin` VALUES ('15', '小黑', '3', 'ba65d6181092fdb8e9dce84de9ff18ba', '12346689095', null, null, null, '2', null);
INSERT INTO `admin` VALUES ('16', '张三', '1', '615db57aa314529aaa0fbe95b3e95bd3', '18989877890', null, null, null, '2', null);
INSERT INTO `admin` VALUES ('17', '小李子', '2', '87d226f5496b8bd1704a0bd066c2dc35', '18310232084', null, null, null, '1', null);
INSERT INTO `admin` VALUES ('19', 'sysadmin', '1', '48a365b4ce1e322a55ae9017f3daf0c0', '18310241084', null, '2018-04-15 00:00:00', null, '1', '2018-04-15 00:00:00');

-- ----------------------------
-- Table structure for `exam`
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `exam_time` varchar(30) DEFAULT '60min' COMMENT '考试时长，正常一个小时',
  `exam_name` varchar(32) DEFAULT NULL COMMENT '考试名字',
  `exam_type` varchar(11) DEFAULT NULL,
  `exam_number` varchar(16) DEFAULT NULL,
  `paper_name` varchar(50) DEFAULT NULL COMMENT '试卷名称',
  `paper_id` int(11) DEFAULT NULL COMMENT '�Ծ�id',
  `exam_mark` varchar(500) DEFAULT NULL,
  `expired_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '有效期截止到什么时间',
  `creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `exam_status` int(11) DEFAULT '1' COMMENT '考试状态（作废、正常）',
  `create_id` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_5` (`paper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('1', '60min', 'java基础测试（一）', 'java语言', '10001', null, null, 'java考试', '2019-09-01 00:00:00', 'admin', '1', null, '2018-04-16 00:00:00', null, null);
INSERT INTO `exam` VALUES ('2', '60min', 'mysql基础测试', '数据库', '10002', null, null, '测试性格', '2019-09-01 00:00:00', '小白', '1', null, null, null, null);
INSERT INTO `exam` VALUES ('3', '60min', 'c语言', 'c语言', '10003', null, null, 'c考试', '2018-04-18 00:00:00', '小黑', '2', null, null, null, null);
INSERT INTO `exam` VALUES ('4', '60min', 'html基础', 'html语言', '10004', null, null, 'html考试', '2018-04-22 19:12:41', '美美', '1', null, '2018-04-22 19:12:41', null, '2018-04-22 19:12:41');
INSERT INTO `exam` VALUES ('5', '60min', 'oracle基础语句测试', '数据库', '10005', null, null, 'oracl考试', '2018-04-22 21:25:41', '小李', '1', null, '2018-04-22 21:25:41', null, '2018-04-22 21:25:41');
INSERT INTO `exam` VALUES ('6', '60min', 'java基础测试（二）', 'java语言', '10006', null, null, 'java考试2', '2018-04-23 10:45:52', 'admin', '1', null, '2018-04-23 10:45:52', null, '2018-04-23 10:45:52');
INSERT INTO `exam` VALUES ('7', '60min', 'java基础测试（三）', 'java语言', '10001', null, null, 'java考试', '2019-09-01 00:00:00', 'admin', '1', null, '2018-04-16 00:00:00', null, null);
INSERT INTO `exam` VALUES ('8', '60min', 'mysql基础测试', '数据库', '10002', null, null, '测试性格', '2019-09-01 00:00:00', '小白', '1', null, null, null, null);
INSERT INTO `exam` VALUES ('9', '60min', 'c语言基础知识测试1', 'c语言', '10003', null, null, 'c考试', '2018-04-18 00:00:00', '小黑', '2', null, null, null, null);
INSERT INTO `exam` VALUES ('10', '60min', 'html基础', 'html语言', '10004', null, null, 'html考试', '2018-04-22 19:12:41', '美美', '1', null, '2018-04-22 19:12:41', null, '2018-04-22 19:12:41');
INSERT INTO `exam` VALUES ('11', '60min', 'oracle基础语句测试', '数据库', '10005', null, null, 'oracl考试', '2018-04-22 21:25:41', '小李', '1', null, '2018-04-22 21:25:41', null, '2018-04-22 21:25:41');
INSERT INTO `exam` VALUES ('12', '60min', 'java基础测试（四）', 'java语言', '10006', null, null, 'java考试2', '2018-04-23 10:45:52', 'admin', '1', null, '2018-04-23 10:45:52', null, '2018-04-23 10:45:52');
INSERT INTO `exam` VALUES ('13', '60min', 'java基础测试（五）', 'java语言', '10001', null, null, 'java考试', '2019-09-01 00:00:00', 'admin', '1', null, '2018-04-16 00:00:00', null, null);
INSERT INTO `exam` VALUES ('14', '60min', 'mysql基础测试', '数据库', '10002', null, null, '测试性格', '2019-09-01 00:00:00', '小白', '1', null, null, null, null);
INSERT INTO `exam` VALUES ('15', '60min', 'c语言', 'c语言', '10003', null, null, 'c考试', '2018-04-18 00:00:00', '小黑', '2', null, null, null, null);
INSERT INTO `exam` VALUES ('16', '60min', 'html基础', 'html语言', '10004', null, null, 'html考试', '2018-04-22 19:12:41', '美美', '1', null, '2018-04-22 19:12:41', null, '2018-04-22 19:12:41');
INSERT INTO `exam` VALUES ('17', '60min', 'oracle基础语句测试', '数据库', '10005', null, null, 'oracl考试', '2018-04-22 21:25:41', '小李', '1', null, '2018-04-22 21:25:41', null, '2018-04-22 21:25:41');
INSERT INTO `exam` VALUES ('18', '60min', 'java基础测试（六）', 'java语言', '10006', null, null, 'java考试2', '2018-04-23 10:45:52', 'admin', '1', null, '2018-04-23 10:45:52', null, '2018-04-23 10:45:52');
INSERT INTO `exam` VALUES ('19', '30,60m', '测试', '卡兰', null, null, null, '2w.n', '2018-04-28 00:33:45', 'xx', '1', null, '2018-04-28 00:33:46', null, '2018-04-28 00:33:45');
INSERT INTO `exam` VALUES ('20', '30m', '测试', '上路', null, null, '31', 'sd', '2018-04-28 00:39:39', 'xx', '1', null, '2018-04-28 00:39:41', null, '2018-04-28 00:39:39');
INSERT INTO `exam` VALUES ('21', '30m', '测试', '1s说的', '005245', null, '82', 'www', '2018-04-28 00:52:59', 'xx', '1', null, '2018-04-28 00:53:00', null, '2018-04-28 00:52:59');
INSERT INTO `exam` VALUES ('22', '60m', 'java小测试', '测试', '011913', 'java试卷2', '78', '测试考试', '2018-04-28 01:19:12', 'xx', '1', null, '2018-04-28 01:19:13', null, '2018-04-28 01:19:12');

-- ----------------------------
-- Table structure for `library`
-- ----------------------------
DROP TABLE IF EXISTS `library`;
CREATE TABLE `library` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '1:正常；2：作废',
  `library_type` char(100) CHARACTER SET utf8 DEFAULT NULL,
  `ques_type` char(4) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of library
-- ----------------------------
INSERT INTO `library` VALUES ('1', 'java基础选择题库', '1', 'BB01', 'AA01', null, '2018-04-21 23:22:05', null, '2018-04-21 23:22:05');
INSERT INTO `library` VALUES ('2', 'c语言语法简答题库', '1', 'BB02', 'AA02', null, '2018-04-21 23:22:15', null, '2018-04-21 23:22:15');
INSERT INTO `library` VALUES ('3', 'java语言经典题型简答', '1', 'BB01', 'AA02', null, '2018-04-23 12:45:37', null, '2018-04-23 12:45:37');
INSERT INTO `library` VALUES ('4', 'c语言选择题库', '1', 'BB02', 'AA01', null, '2018-04-23 12:46:15', null, '2018-04-23 12:46:15');
INSERT INTO `library` VALUES ('5', '数据库选择选择题题库', '1', 'BB04', 'AA01', null, '2018-04-21 23:22:05', null, '2018-04-21 23:22:05');
INSERT INTO `library` VALUES ('6', '数据库sql简答题库', '1', 'BB04', 'AA02', null, '2018-04-21 23:22:15', null, '2018-04-21 23:22:15');
INSERT INTO `library` VALUES ('7', '数据库sql语句题库', '1', 'BB04', 'AA02', null, '2018-04-21 23:22:05', null, '2018-04-21 23:22:05');
INSERT INTO `library` VALUES ('8', 'html/css/js选择题题库', '1', 'BB03', 'AA01', '1', '2018-04-21 23:22:15', null, '2018-04-21 23:22:15');
INSERT INTO `library` VALUES ('9', 'html/css/js简答题题库', '1', 'BB03', 'AA02', '1', '2018-04-21 23:22:05', null, '2018-04-21 23:22:05');
INSERT INTO `library` VALUES ('10', '英语基础题库', '2', 'BB01', 'AA02', null, '2018-04-21 23:22:05', null, '2018-04-21 23:22:05');
INSERT INTO `library` VALUES ('11', '日语题库', '2', 'BB01', 'AA02', null, '2018-04-21 23:22:15', null, '2018-04-21 23:22:15');
INSERT INTO `library` VALUES ('12', '韩语题库', '2', 'BB01', 'AA02', null, '2018-04-21 23:22:15', null, '2018-04-21 23:22:15');

-- ----------------------------
-- Table structure for `paper`
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paper_type` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '试卷类型',
  `paper_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `total_score` varchar(5) CHARACTER SET utf8 DEFAULT '100',
  `status` int(11) DEFAULT '1' COMMENT '1:正常；2：作废',
  `examiner` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '阅卷人',
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES ('93', null, 'java测试卷（一）', '100', '1', null, '测试卷', null, '2018-05-13 22:13:12', null, null);
INSERT INTO `paper` VALUES ('95', null, 'java测试卷（二）', '100', '1', null, 'java测试卷2', null, '2018-05-13 22:16:01', null, null);

-- ----------------------------
-- Table structure for `paper_question`
-- ----------------------------
DROP TABLE IF EXISTS `paper_question`;
CREATE TABLE `paper_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL COMMENT '考题编号\n            ',
  `paper_id` int(11) DEFAULT NULL COMMENT '试卷编号',
  `question_number` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '题号',
  `score` int(11) DEFAULT NULL COMMENT '次题分数',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_8` (`paper_id`),
  KEY `FK_Reference_7` (`question_id`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=895 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of paper_question
-- ----------------------------
INSERT INTO `paper_question` VALUES ('57', '17', '19', '2', '60');
INSERT INTO `paper_question` VALUES ('58', '16', '19', '3', '60');
INSERT INTO `paper_question` VALUES ('59', '18', '19', '4', '60');
INSERT INTO `paper_question` VALUES ('60', '14', '19', '5', '60');
INSERT INTO `paper_question` VALUES ('61', '13', '19', '6', '60');
INSERT INTO `paper_question` VALUES ('62', '1', '20', '2', '60');
INSERT INTO `paper_question` VALUES ('63', '7', '20', '3', '60');
INSERT INTO `paper_question` VALUES ('64', '5', '20', '4', '60');
INSERT INTO `paper_question` VALUES ('65', '4', '20', '5', '60');
INSERT INTO `paper_question` VALUES ('66', '2', '20', '6', '60');
INSERT INTO `paper_question` VALUES ('67', '13', '20', '7', '60');
INSERT INTO `paper_question` VALUES ('68', '17', '20', '8', '60');
INSERT INTO `paper_question` VALUES ('69', '16', '20', '9', '60');
INSERT INTO `paper_question` VALUES ('70', '15', '20', '10', '60');
INSERT INTO `paper_question` VALUES ('71', '14', '20', '11', '60');
INSERT INTO `paper_question` VALUES ('72', '5', '21', '2', '60');
INSERT INTO `paper_question` VALUES ('73', '2', '21', '3', '60');
INSERT INTO `paper_question` VALUES ('74', '1', '21', '4', '60');
INSERT INTO `paper_question` VALUES ('75', '3', '21', '5', '60');
INSERT INTO `paper_question` VALUES ('76', '8', '21', '6', '60');
INSERT INTO `paper_question` VALUES ('77', '15', '21', '7', '60');
INSERT INTO `paper_question` VALUES ('78', '12', '21', '8', '60');
INSERT INTO `paper_question` VALUES ('79', '17', '21', '9', '60');
INSERT INTO `paper_question` VALUES ('80', '16', '21', '10', '60');
INSERT INTO `paper_question` VALUES ('81', '18', '21', '11', '60');
INSERT INTO `paper_question` VALUES ('82', '9', '22', '2', '60');
INSERT INTO `paper_question` VALUES ('83', '1', '22', '3', '60');
INSERT INTO `paper_question` VALUES ('84', '6', '22', '4', '60');
INSERT INTO `paper_question` VALUES ('85', '4', '22', '5', '60');
INSERT INTO `paper_question` VALUES ('86', '2', '22', '6', '60');
INSERT INTO `paper_question` VALUES ('87', '15', '22', '7', '60');
INSERT INTO `paper_question` VALUES ('88', '14', '22', '8', '60');
INSERT INTO `paper_question` VALUES ('89', '13', '22', '9', '60');
INSERT INTO `paper_question` VALUES ('90', '18', '22', '10', '60');
INSERT INTO `paper_question` VALUES ('91', '16', '22', '11', '60');
INSERT INTO `paper_question` VALUES ('122', '11', '26', '2', '12');
INSERT INTO `paper_question` VALUES ('123', '4', '26', '3', '12');
INSERT INTO `paper_question` VALUES ('124', '1', '26', '4', '12');
INSERT INTO `paper_question` VALUES ('125', '3', '26', '5', '12');
INSERT INTO `paper_question` VALUES ('126', '5', '26', '6', '12');
INSERT INTO `paper_question` VALUES ('127', '14', '26', '7', '8');
INSERT INTO `paper_question` VALUES ('128', '12', '26', '8', '8');
INSERT INTO `paper_question` VALUES ('129', '16', '26', '9', '8');
INSERT INTO `paper_question` VALUES ('130', '18', '26', '10', '8');
INSERT INTO `paper_question` VALUES ('131', '15', '26', '11', '8');
INSERT INTO `paper_question` VALUES ('152', '3', '29', '2', '12');
INSERT INTO `paper_question` VALUES ('153', '1', '29', '3', '12');
INSERT INTO `paper_question` VALUES ('154', '2', '29', '4', '12');
INSERT INTO `paper_question` VALUES ('155', '7', '29', '5', '12');
INSERT INTO `paper_question` VALUES ('156', '11', '29', '6', '12');
INSERT INTO `paper_question` VALUES ('157', '15', '29', '7', '8');
INSERT INTO `paper_question` VALUES ('158', '16', '29', '8', '8');
INSERT INTO `paper_question` VALUES ('159', '17', '29', '9', '8');
INSERT INTO `paper_question` VALUES ('160', '12', '29', '10', '8');
INSERT INTO `paper_question` VALUES ('161', '13', '29', '11', '8');
INSERT INTO `paper_question` VALUES ('162', '2', '30', '2', '10');
INSERT INTO `paper_question` VALUES ('163', '1', '30', '3', '10');
INSERT INTO `paper_question` VALUES ('164', '9', '30', '4', '10');
INSERT INTO `paper_question` VALUES ('165', '3', '30', '5', '10');
INSERT INTO `paper_question` VALUES ('166', '16', '30', '6', '10');
INSERT INTO `paper_question` VALUES ('167', '12', '30', '7', '10');
INSERT INTO `paper_question` VALUES ('168', '18', '30', '8', '10');
INSERT INTO `paper_question` VALUES ('169', '14', '30', '9', '10');
INSERT INTO `paper_question` VALUES ('170', '17', '30', '10', '10');
INSERT INTO `paper_question` VALUES ('171', '13', '30', '11', '10');
INSERT INTO `paper_question` VALUES ('172', '4', '31', '2', '0');
INSERT INTO `paper_question` VALUES ('173', '2', '31', '3', '0');
INSERT INTO `paper_question` VALUES ('174', '7', '31', '4', '0');
INSERT INTO `paper_question` VALUES ('175', '1', '31', '5', '0');
INSERT INTO `paper_question` VALUES ('176', '9', '31', '6', '0');
INSERT INTO `paper_question` VALUES ('177', '3', '31', '7', '0');
INSERT INTO `paper_question` VALUES ('178', '11', '31', '8', '0');
INSERT INTO `paper_question` VALUES ('179', '5', '31', '9', '0');
INSERT INTO `paper_question` VALUES ('180', '6', '31', '10', '0');
INSERT INTO `paper_question` VALUES ('181', '8', '31', '11', '0');
INSERT INTO `paper_question` VALUES ('182', '16', '31', '12', '10');
INSERT INTO `paper_question` VALUES ('183', '17', '31', '13', '10');
INSERT INTO `paper_question` VALUES ('184', '14', '31', '14', '10');
INSERT INTO `paper_question` VALUES ('185', '15', '31', '15', '10');
INSERT INTO `paper_question` VALUES ('186', '12', '31', '16', '10');
INSERT INTO `paper_question` VALUES ('187', '2', '32', '2', '0');
INSERT INTO `paper_question` VALUES ('188', '1', '32', '3', '0');
INSERT INTO `paper_question` VALUES ('189', '7', '32', '4', '0');
INSERT INTO `paper_question` VALUES ('190', '6', '32', '5', '0');
INSERT INTO `paper_question` VALUES ('191', '5', '32', '6', '0');
INSERT INTO `paper_question` VALUES ('192', '4', '32', '7', '0');
INSERT INTO `paper_question` VALUES ('193', '3', '32', '8', '0');
INSERT INTO `paper_question` VALUES ('194', '10', '32', '9', '0');
INSERT INTO `paper_question` VALUES ('195', '9', '32', '10', '0');
INSERT INTO `paper_question` VALUES ('196', '11', '32', '11', '0');
INSERT INTO `paper_question` VALUES ('197', '13', '32', '12', '10');
INSERT INTO `paper_question` VALUES ('198', '12', '32', '13', '10');
INSERT INTO `paper_question` VALUES ('199', '18', '32', '14', '10');
INSERT INTO `paper_question` VALUES ('200', '14', '32', '15', '10');
INSERT INTO `paper_question` VALUES ('201', '17', '32', '16', '10');
INSERT INTO `paper_question` VALUES ('202', '1', '33', '2', '0');
INSERT INTO `paper_question` VALUES ('203', '2', '33', '3', '0');
INSERT INTO `paper_question` VALUES ('204', '5', '33', '4', '0');
INSERT INTO `paper_question` VALUES ('205', '3', '33', '5', '0');
INSERT INTO `paper_question` VALUES ('206', '6', '33', '6', '0');
INSERT INTO `paper_question` VALUES ('207', '9', '33', '7', '0');
INSERT INTO `paper_question` VALUES ('208', '4', '33', '8', '0');
INSERT INTO `paper_question` VALUES ('209', '7', '33', '9', '0');
INSERT INTO `paper_question` VALUES ('210', '8', '33', '10', '0');
INSERT INTO `paper_question` VALUES ('211', '11', '33', '11', '0');
INSERT INTO `paper_question` VALUES ('212', '13', '33', '12', '10');
INSERT INTO `paper_question` VALUES ('213', '18', '33', '13', '10');
INSERT INTO `paper_question` VALUES ('214', '12', '33', '14', '10');
INSERT INTO `paper_question` VALUES ('215', '15', '33', '15', '10');
INSERT INTO `paper_question` VALUES ('216', '14', '33', '16', '10');
INSERT INTO `paper_question` VALUES ('217', '1', '34', '2', '0');
INSERT INTO `paper_question` VALUES ('218', '2', '34', '3', '0');
INSERT INTO `paper_question` VALUES ('219', '3', '34', '4', '0');
INSERT INTO `paper_question` VALUES ('220', '4', '34', '5', '0');
INSERT INTO `paper_question` VALUES ('221', '11', '34', '6', '0');
INSERT INTO `paper_question` VALUES ('222', '14', '34', '7', '12');
INSERT INTO `paper_question` VALUES ('223', '15', '34', '8', '12');
INSERT INTO `paper_question` VALUES ('224', '17', '34', '9', '12');
INSERT INTO `paper_question` VALUES ('225', '18', '34', '10', '12');
INSERT INTO `paper_question` VALUES ('226', '13', '34', '11', '12');
INSERT INTO `paper_question` VALUES ('227', '1', '35', '2', '0');
INSERT INTO `paper_question` VALUES ('228', '2', '35', '3', '0');
INSERT INTO `paper_question` VALUES ('229', '3', '35', '4', '0');
INSERT INTO `paper_question` VALUES ('230', '4', '35', '5', '0');
INSERT INTO `paper_question` VALUES ('231', '5', '35', '6', '0');
INSERT INTO `paper_question` VALUES ('232', '9', '35', '7', '0');
INSERT INTO `paper_question` VALUES ('233', '8', '35', '8', '0');
INSERT INTO `paper_question` VALUES ('234', '11', '35', '9', '0');
INSERT INTO `paper_question` VALUES ('235', '6', '35', '10', '0');
INSERT INTO `paper_question` VALUES ('236', '7', '35', '11', '0');
INSERT INTO `paper_question` VALUES ('237', '12', '35', '12', '10');
INSERT INTO `paper_question` VALUES ('238', '14', '35', '13', '10');
INSERT INTO `paper_question` VALUES ('239', '17', '35', '14', '10');
INSERT INTO `paper_question` VALUES ('240', '18', '35', '15', '10');
INSERT INTO `paper_question` VALUES ('241', '13', '35', '16', '10');
INSERT INTO `paper_question` VALUES ('242', '10', '36', '2', '0');
INSERT INTO `paper_question` VALUES ('243', '1', '36', '3', '0');
INSERT INTO `paper_question` VALUES ('244', '2', '36', '4', '0');
INSERT INTO `paper_question` VALUES ('245', '4', '36', '5', '0');
INSERT INTO `paper_question` VALUES ('246', '3', '36', '6', '0');
INSERT INTO `paper_question` VALUES ('247', '5', '36', '7', '0');
INSERT INTO `paper_question` VALUES ('248', '6', '36', '8', '0');
INSERT INTO `paper_question` VALUES ('249', '8', '36', '9', '0');
INSERT INTO `paper_question` VALUES ('250', '7', '36', '10', '0');
INSERT INTO `paper_question` VALUES ('251', '9', '36', '11', '0');
INSERT INTO `paper_question` VALUES ('252', '16', '36', '12', '10');
INSERT INTO `paper_question` VALUES ('253', '12', '36', '13', '10');
INSERT INTO `paper_question` VALUES ('254', '17', '36', '14', '10');
INSERT INTO `paper_question` VALUES ('255', '14', '36', '15', '10');
INSERT INTO `paper_question` VALUES ('256', '13', '36', '16', '10');
INSERT INTO `paper_question` VALUES ('257', '3', '37', '2', '0');
INSERT INTO `paper_question` VALUES ('258', '1', '37', '3', '0');
INSERT INTO `paper_question` VALUES ('259', '11', '37', '4', '0');
INSERT INTO `paper_question` VALUES ('260', '5', '37', '5', '0');
INSERT INTO `paper_question` VALUES ('261', '2', '37', '6', '0');
INSERT INTO `paper_question` VALUES ('262', '6', '37', '7', '0');
INSERT INTO `paper_question` VALUES ('263', '4', '37', '8', '0');
INSERT INTO `paper_question` VALUES ('264', '10', '37', '9', '0');
INSERT INTO `paper_question` VALUES ('265', '7', '37', '10', '0');
INSERT INTO `paper_question` VALUES ('266', '8', '37', '11', '0');
INSERT INTO `paper_question` VALUES ('267', '12', '37', '12', '10');
INSERT INTO `paper_question` VALUES ('268', '17', '37', '13', '10');
INSERT INTO `paper_question` VALUES ('269', '15', '37', '14', '10');
INSERT INTO `paper_question` VALUES ('270', '16', '37', '15', '10');
INSERT INTO `paper_question` VALUES ('271', '13', '37', '16', '10');
INSERT INTO `paper_question` VALUES ('272', '1', '38', '2', '0');
INSERT INTO `paper_question` VALUES ('273', '4', '38', '3', '0');
INSERT INTO `paper_question` VALUES ('274', '6', '38', '4', '0');
INSERT INTO `paper_question` VALUES ('275', '2', '38', '5', '0');
INSERT INTO `paper_question` VALUES ('276', '7', '38', '6', '0');
INSERT INTO `paper_question` VALUES ('277', '3', '38', '7', '0');
INSERT INTO `paper_question` VALUES ('278', '5', '38', '8', '0');
INSERT INTO `paper_question` VALUES ('279', '9', '38', '9', '0');
INSERT INTO `paper_question` VALUES ('280', '11', '38', '10', '0');
INSERT INTO `paper_question` VALUES ('281', '8', '38', '11', '0');
INSERT INTO `paper_question` VALUES ('282', '13', '38', '12', '10');
INSERT INTO `paper_question` VALUES ('283', '14', '38', '13', '10');
INSERT INTO `paper_question` VALUES ('284', '12', '38', '14', '10');
INSERT INTO `paper_question` VALUES ('285', '17', '38', '15', '10');
INSERT INTO `paper_question` VALUES ('286', '16', '38', '16', '10');
INSERT INTO `paper_question` VALUES ('287', '10', '39', '2', '0');
INSERT INTO `paper_question` VALUES ('288', '2', '39', '3', '0');
INSERT INTO `paper_question` VALUES ('289', '1', '39', '4', '0');
INSERT INTO `paper_question` VALUES ('290', '3', '39', '5', '0');
INSERT INTO `paper_question` VALUES ('291', '6', '39', '6', '0');
INSERT INTO `paper_question` VALUES ('292', '16', '39', '7', '12');
INSERT INTO `paper_question` VALUES ('293', '15', '39', '8', '12');
INSERT INTO `paper_question` VALUES ('294', '17', '39', '9', '12');
INSERT INTO `paper_question` VALUES ('295', '12', '39', '10', '12');
INSERT INTO `paper_question` VALUES ('296', '18', '39', '11', '12');
INSERT INTO `paper_question` VALUES ('297', '1', '40', '2', '6');
INSERT INTO `paper_question` VALUES ('298', '2', '40', '3', '6');
INSERT INTO `paper_question` VALUES ('299', '10', '40', '4', '6');
INSERT INTO `paper_question` VALUES ('300', '5', '40', '5', '6');
INSERT INTO `paper_question` VALUES ('301', '3', '40', '6', '6');
INSERT INTO `paper_question` VALUES ('302', '4', '40', '7', '6');
INSERT INTO `paper_question` VALUES ('303', '8', '40', '8', '6');
INSERT INTO `paper_question` VALUES ('304', '7', '40', '9', '6');
INSERT INTO `paper_question` VALUES ('305', '9', '40', '10', '6');
INSERT INTO `paper_question` VALUES ('306', '6', '40', '11', '6');
INSERT INTO `paper_question` VALUES ('307', '12', '40', '12', '0');
INSERT INTO `paper_question` VALUES ('308', '17', '40', '13', '0');
INSERT INTO `paper_question` VALUES ('309', '16', '40', '14', '0');
INSERT INTO `paper_question` VALUES ('310', '13', '40', '15', '0');
INSERT INTO `paper_question` VALUES ('311', '15', '40', '16', '0');
INSERT INTO `paper_question` VALUES ('312', '14', '40', '17', '0');
INSERT INTO `paper_question` VALUES ('313', '18', '40', '18', '0');
INSERT INTO `paper_question` VALUES ('314', '1', '41', '2', '6');
INSERT INTO `paper_question` VALUES ('315', '7', '41', '3', '6');
INSERT INTO `paper_question` VALUES ('316', '3', '41', '4', '6');
INSERT INTO `paper_question` VALUES ('317', '5', '41', '5', '6');
INSERT INTO `paper_question` VALUES ('318', '10', '41', '6', '6');
INSERT INTO `paper_question` VALUES ('319', '2', '41', '7', '6');
INSERT INTO `paper_question` VALUES ('320', '4', '41', '8', '6');
INSERT INTO `paper_question` VALUES ('321', '8', '41', '9', '6');
INSERT INTO `paper_question` VALUES ('322', '6', '41', '10', '6');
INSERT INTO `paper_question` VALUES ('323', '11', '41', '11', '6');
INSERT INTO `paper_question` VALUES ('324', '8', '42', '2', '6');
INSERT INTO `paper_question` VALUES ('325', '9', '42', '3', '6');
INSERT INTO `paper_question` VALUES ('326', '2', '42', '4', '6');
INSERT INTO `paper_question` VALUES ('327', '1', '42', '5', '6');
INSERT INTO `paper_question` VALUES ('328', '10', '42', '6', '6');
INSERT INTO `paper_question` VALUES ('329', '3', '42', '7', '6');
INSERT INTO `paper_question` VALUES ('330', '7', '42', '8', '6');
INSERT INTO `paper_question` VALUES ('331', '6', '42', '9', '6');
INSERT INTO `paper_question` VALUES ('332', '11', '42', '10', '6');
INSERT INTO `paper_question` VALUES ('333', '4', '42', '11', '6');
INSERT INTO `paper_question` VALUES ('334', '5', '43', '2', '6');
INSERT INTO `paper_question` VALUES ('335', '1', '43', '3', '6');
INSERT INTO `paper_question` VALUES ('336', '2', '43', '4', '6');
INSERT INTO `paper_question` VALUES ('337', '3', '43', '5', '6');
INSERT INTO `paper_question` VALUES ('338', '6', '43', '6', '6');
INSERT INTO `paper_question` VALUES ('339', '4', '43', '7', '6');
INSERT INTO `paper_question` VALUES ('340', '10', '43', '8', '6');
INSERT INTO `paper_question` VALUES ('341', '7', '43', '9', '6');
INSERT INTO `paper_question` VALUES ('342', '8', '43', '10', '6');
INSERT INTO `paper_question` VALUES ('343', '9', '43', '11', '6');
INSERT INTO `paper_question` VALUES ('344', '3', '44', '2', '6');
INSERT INTO `paper_question` VALUES ('345', '1', '44', '3', '6');
INSERT INTO `paper_question` VALUES ('346', '7', '44', '4', '6');
INSERT INTO `paper_question` VALUES ('347', '2', '44', '5', '6');
INSERT INTO `paper_question` VALUES ('348', '5', '44', '6', '6');
INSERT INTO `paper_question` VALUES ('349', '4', '44', '7', '6');
INSERT INTO `paper_question` VALUES ('350', '6', '44', '8', '6');
INSERT INTO `paper_question` VALUES ('351', '10', '44', '9', '6');
INSERT INTO `paper_question` VALUES ('352', '8', '44', '10', '6');
INSERT INTO `paper_question` VALUES ('353', '11', '44', '11', '6');
INSERT INTO `paper_question` VALUES ('354', '17', '44', '12', '0');
INSERT INTO `paper_question` VALUES ('355', '15', '44', '13', '0');
INSERT INTO `paper_question` VALUES ('356', '18', '44', '14', '0');
INSERT INTO `paper_question` VALUES ('357', '16', '44', '15', '0');
INSERT INTO `paper_question` VALUES ('358', '13', '44', '16', '0');
INSERT INTO `paper_question` VALUES ('359', '12', '44', '17', '0');
INSERT INTO `paper_question` VALUES ('360', '14', '44', '18', '0');
INSERT INTO `paper_question` VALUES ('361', '1', '45', '2', '6');
INSERT INTO `paper_question` VALUES ('362', '4', '45', '3', '6');
INSERT INTO `paper_question` VALUES ('363', '2', '45', '4', '6');
INSERT INTO `paper_question` VALUES ('364', '5', '45', '5', '6');
INSERT INTO `paper_question` VALUES ('365', '8', '45', '6', '6');
INSERT INTO `paper_question` VALUES ('366', '16', '45', '7', '0');
INSERT INTO `paper_question` VALUES ('367', '18', '45', '8', '0');
INSERT INTO `paper_question` VALUES ('368', '15', '45', '9', '0');
INSERT INTO `paper_question` VALUES ('369', '12', '45', '10', '0');
INSERT INTO `paper_question` VALUES ('370', '14', '45', '11', '0');
INSERT INTO `paper_question` VALUES ('371', '1', '46', '2', '6');
INSERT INTO `paper_question` VALUES ('372', '2', '46', '3', '6');
INSERT INTO `paper_question` VALUES ('373', '6', '46', '4', '6');
INSERT INTO `paper_question` VALUES ('374', '3', '46', '5', '6');
INSERT INTO `paper_question` VALUES ('375', '4', '46', '6', '6');
INSERT INTO `paper_question` VALUES ('376', '12', '46', '7', '0');
INSERT INTO `paper_question` VALUES ('377', '15', '46', '8', '0');
INSERT INTO `paper_question` VALUES ('378', '13', '46', '9', '0');
INSERT INTO `paper_question` VALUES ('379', '17', '46', '10', '0');
INSERT INTO `paper_question` VALUES ('380', '14', '46', '11', '0');
INSERT INTO `paper_question` VALUES ('381', '3', '47', '2', '8');
INSERT INTO `paper_question` VALUES ('382', '6', '47', '3', '8');
INSERT INTO `paper_question` VALUES ('383', '1', '47', '4', '8');
INSERT INTO `paper_question` VALUES ('384', '2', '47', '5', '8');
INSERT INTO `paper_question` VALUES ('385', '7', '47', '6', '8');
INSERT INTO `paper_question` VALUES ('386', '12', '47', '7', '0');
INSERT INTO `paper_question` VALUES ('387', '14', '47', '8', '0');
INSERT INTO `paper_question` VALUES ('388', '17', '47', '9', '0');
INSERT INTO `paper_question` VALUES ('389', '13', '47', '10', '0');
INSERT INTO `paper_question` VALUES ('390', '15', '47', '11', '0');
INSERT INTO `paper_question` VALUES ('391', '16', '47', '12', '0');
INSERT INTO `paper_question` VALUES ('392', '18', '47', '13', '0');
INSERT INTO `paper_question` VALUES ('393', '6', '48', '2', '8');
INSERT INTO `paper_question` VALUES ('394', '1', '48', '3', '8');
INSERT INTO `paper_question` VALUES ('395', '11', '48', '4', '8');
INSERT INTO `paper_question` VALUES ('396', '9', '48', '5', '8');
INSERT INTO `paper_question` VALUES ('397', '3', '48', '6', '8');
INSERT INTO `paper_question` VALUES ('398', '15', '48', '7', '0');
INSERT INTO `paper_question` VALUES ('399', '12', '48', '8', '0');
INSERT INTO `paper_question` VALUES ('400', '16', '48', '9', '0');
INSERT INTO `paper_question` VALUES ('401', '13', '48', '10', '0');
INSERT INTO `paper_question` VALUES ('402', '18', '48', '11', '0');
INSERT INTO `paper_question` VALUES ('403', '14', '48', '12', '0');
INSERT INTO `paper_question` VALUES ('404', '17', '48', '13', '0');
INSERT INTO `paper_question` VALUES ('405', '1', '49', '2', '8');
INSERT INTO `paper_question` VALUES ('406', '2', '49', '3', '8');
INSERT INTO `paper_question` VALUES ('407', '6', '49', '4', '8');
INSERT INTO `paper_question` VALUES ('408', '3', '49', '5', '8');
INSERT INTO `paper_question` VALUES ('409', '4', '49', '6', '8');
INSERT INTO `paper_question` VALUES ('410', '16', '49', '7', '0');
INSERT INTO `paper_question` VALUES ('411', '14', '49', '8', '0');
INSERT INTO `paper_question` VALUES ('412', '18', '49', '9', '0');
INSERT INTO `paper_question` VALUES ('413', '12', '49', '10', '0');
INSERT INTO `paper_question` VALUES ('414', '13', '49', '11', '0');
INSERT INTO `paper_question` VALUES ('415', '15', '49', '12', '0');
INSERT INTO `paper_question` VALUES ('416', '17', '49', '13', '0');
INSERT INTO `paper_question` VALUES ('417', '6', '50', '2', '8');
INSERT INTO `paper_question` VALUES ('418', '2', '50', '3', '8');
INSERT INTO `paper_question` VALUES ('419', '8', '50', '4', '8');
INSERT INTO `paper_question` VALUES ('420', '4', '50', '5', '8');
INSERT INTO `paper_question` VALUES ('421', '3', '50', '6', '8');
INSERT INTO `paper_question` VALUES ('422', '18', '50', '7', '0');
INSERT INTO `paper_question` VALUES ('423', '15', '50', '8', '0');
INSERT INTO `paper_question` VALUES ('424', '13', '50', '9', '0');
INSERT INTO `paper_question` VALUES ('425', '16', '50', '10', '0');
INSERT INTO `paper_question` VALUES ('426', '12', '50', '11', '0');
INSERT INTO `paper_question` VALUES ('427', '14', '50', '12', '0');
INSERT INTO `paper_question` VALUES ('428', '17', '50', '13', '0');
INSERT INTO `paper_question` VALUES ('429', '3', '51', '2', '10');
INSERT INTO `paper_question` VALUES ('430', '1', '51', '3', '10');
INSERT INTO `paper_question` VALUES ('431', '8', '51', '4', '10');
INSERT INTO `paper_question` VALUES ('432', '5', '51', '5', '10');
INSERT INTO `paper_question` VALUES ('433', '2', '51', '6', '10');
INSERT INTO `paper_question` VALUES ('434', '9', '51', '7', '10');
INSERT INTO `paper_question` VALUES ('435', '4', '51', '8', '10');
INSERT INTO `paper_question` VALUES ('436', '7', '51', '9', '10');
INSERT INTO `paper_question` VALUES ('437', '6', '51', '10', '10');
INSERT INTO `paper_question` VALUES ('438', '18', '51', '11', '0');
INSERT INTO `paper_question` VALUES ('439', '8', '52', '2', '10');
INSERT INTO `paper_question` VALUES ('440', '1', '52', '3', '10');
INSERT INTO `paper_question` VALUES ('441', '2', '52', '4', '10');
INSERT INTO `paper_question` VALUES ('442', '4', '52', '5', '10');
INSERT INTO `paper_question` VALUES ('443', '6', '52', '6', '10');
INSERT INTO `paper_question` VALUES ('444', '3', '52', '7', '10');
INSERT INTO `paper_question` VALUES ('445', '11', '52', '8', '10');
INSERT INTO `paper_question` VALUES ('446', '13', '52', '9', '0');
INSERT INTO `paper_question` VALUES ('447', '15', '52', '10', '0');
INSERT INTO `paper_question` VALUES ('448', '12', '52', '11', '0');
INSERT INTO `paper_question` VALUES ('449', '14', '52', '12', '0');
INSERT INTO `paper_question` VALUES ('450', '17', '52', '13', '0');
INSERT INTO `paper_question` VALUES ('451', '5', '53', '2', '5');
INSERT INTO `paper_question` VALUES ('452', '2', '53', '3', '5');
INSERT INTO `paper_question` VALUES ('453', '7', '53', '4', '5');
INSERT INTO `paper_question` VALUES ('454', '1', '53', '5', '5');
INSERT INTO `paper_question` VALUES ('455', '4', '53', '6', '5');
INSERT INTO `paper_question` VALUES ('456', '9', '53', '7', '5');
INSERT INTO `paper_question` VALUES ('457', '3', '53', '8', '5');
INSERT INTO `paper_question` VALUES ('458', '6', '53', '9', '5');
INSERT INTO `paper_question` VALUES ('459', '8', '53', '10', '5');
INSERT INTO `paper_question` VALUES ('460', '11', '53', '11', '5');
INSERT INTO `paper_question` VALUES ('461', '15', '53', '12', '0');
INSERT INTO `paper_question` VALUES ('462', '14', '53', '13', '0');
INSERT INTO `paper_question` VALUES ('463', '17', '53', '14', '0');
INSERT INTO `paper_question` VALUES ('464', '13', '53', '15', '0');
INSERT INTO `paper_question` VALUES ('465', '12', '53', '16', '0');
INSERT INTO `paper_question` VALUES ('466', '1', '54', '2', '5');
INSERT INTO `paper_question` VALUES ('467', '9', '54', '3', '5');
INSERT INTO `paper_question` VALUES ('468', '2', '54', '4', '5');
INSERT INTO `paper_question` VALUES ('469', '3', '54', '5', '5');
INSERT INTO `paper_question` VALUES ('470', '11', '54', '6', '5');
INSERT INTO `paper_question` VALUES ('471', '4', '54', '7', '5');
INSERT INTO `paper_question` VALUES ('472', '5', '54', '8', '5');
INSERT INTO `paper_question` VALUES ('473', '7', '54', '9', '5');
INSERT INTO `paper_question` VALUES ('474', '6', '54', '10', '5');
INSERT INTO `paper_question` VALUES ('475', '10', '54', '11', '5');
INSERT INTO `paper_question` VALUES ('476', '18', '54', '12', '0');
INSERT INTO `paper_question` VALUES ('477', '12', '54', '13', '0');
INSERT INTO `paper_question` VALUES ('478', '16', '54', '14', '0');
INSERT INTO `paper_question` VALUES ('479', '14', '54', '15', '0');
INSERT INTO `paper_question` VALUES ('480', '15', '54', '16', '0');
INSERT INTO `paper_question` VALUES ('481', '1', '55', '2', '5');
INSERT INTO `paper_question` VALUES ('482', '7', '55', '3', '5');
INSERT INTO `paper_question` VALUES ('483', '2', '55', '4', '5');
INSERT INTO `paper_question` VALUES ('484', '5', '55', '5', '5');
INSERT INTO `paper_question` VALUES ('485', '3', '55', '6', '5');
INSERT INTO `paper_question` VALUES ('486', '9', '55', '7', '5');
INSERT INTO `paper_question` VALUES ('487', '4', '55', '8', '5');
INSERT INTO `paper_question` VALUES ('488', '10', '55', '9', '5');
INSERT INTO `paper_question` VALUES ('489', '6', '55', '10', '5');
INSERT INTO `paper_question` VALUES ('490', '11', '55', '11', '5');
INSERT INTO `paper_question` VALUES ('491', '16', '55', '12', '0');
INSERT INTO `paper_question` VALUES ('492', '15', '55', '13', '0');
INSERT INTO `paper_question` VALUES ('493', '13', '55', '14', '0');
INSERT INTO `paper_question` VALUES ('494', '12', '55', '15', '0');
INSERT INTO `paper_question` VALUES ('495', '14', '55', '16', '0');
INSERT INTO `paper_question` VALUES ('496', '1', '57', '2', '5');
INSERT INTO `paper_question` VALUES ('497', '5', '57', '3', '5');
INSERT INTO `paper_question` VALUES ('498', '6', '57', '4', '5');
INSERT INTO `paper_question` VALUES ('499', '8', '57', '5', '5');
INSERT INTO `paper_question` VALUES ('500', '2', '57', '6', '5');
INSERT INTO `paper_question` VALUES ('501', '3', '57', '7', '5');
INSERT INTO `paper_question` VALUES ('502', '11', '57', '8', '5');
INSERT INTO `paper_question` VALUES ('503', '4', '57', '9', '5');
INSERT INTO `paper_question` VALUES ('504', '10', '57', '10', '5');
INSERT INTO `paper_question` VALUES ('505', '9', '57', '11', '5');
INSERT INTO `paper_question` VALUES ('506', '14', '57', '12', '0');
INSERT INTO `paper_question` VALUES ('507', '13', '57', '13', '0');
INSERT INTO `paper_question` VALUES ('508', '15', '57', '14', '0');
INSERT INTO `paper_question` VALUES ('509', '12', '57', '15', '0');
INSERT INTO `paper_question` VALUES ('510', '18', '57', '16', '0');
INSERT INTO `paper_question` VALUES ('511', '1', '58', '2', '5');
INSERT INTO `paper_question` VALUES ('512', '2', '58', '3', '5');
INSERT INTO `paper_question` VALUES ('513', '10', '58', '4', '5');
INSERT INTO `paper_question` VALUES ('514', '4', '58', '5', '5');
INSERT INTO `paper_question` VALUES ('515', '3', '58', '6', '5');
INSERT INTO `paper_question` VALUES ('516', '9', '58', '7', '5');
INSERT INTO `paper_question` VALUES ('517', '5', '58', '8', '5');
INSERT INTO `paper_question` VALUES ('518', '8', '58', '9', '5');
INSERT INTO `paper_question` VALUES ('519', '6', '58', '10', '5');
INSERT INTO `paper_question` VALUES ('520', '7', '58', '11', '5');
INSERT INTO `paper_question` VALUES ('521', '15', '58', '12', '10');
INSERT INTO `paper_question` VALUES ('522', '13', '58', '13', '10');
INSERT INTO `paper_question` VALUES ('523', '17', '58', '14', '10');
INSERT INTO `paper_question` VALUES ('524', '12', '58', '15', '10');
INSERT INTO `paper_question` VALUES ('525', '16', '58', '16', '10');
INSERT INTO `paper_question` VALUES ('526', '3', '59', '2', '5');
INSERT INTO `paper_question` VALUES ('527', '5', '59', '3', '5');
INSERT INTO `paper_question` VALUES ('528', '4', '59', '4', '5');
INSERT INTO `paper_question` VALUES ('529', '1', '59', '5', '5');
INSERT INTO `paper_question` VALUES ('530', '8', '59', '6', '5');
INSERT INTO `paper_question` VALUES ('531', '2', '59', '7', '5');
INSERT INTO `paper_question` VALUES ('532', '9', '59', '8', '5');
INSERT INTO `paper_question` VALUES ('533', '6', '59', '9', '5');
INSERT INTO `paper_question` VALUES ('534', '7', '59', '10', '5');
INSERT INTO `paper_question` VALUES ('535', '11', '59', '11', '5');
INSERT INTO `paper_question` VALUES ('536', '12', '59', '12', '10');
INSERT INTO `paper_question` VALUES ('537', '13', '59', '13', '10');
INSERT INTO `paper_question` VALUES ('538', '18', '59', '14', '10');
INSERT INTO `paper_question` VALUES ('539', '14', '59', '15', '10');
INSERT INTO `paper_question` VALUES ('540', '17', '59', '16', '10');
INSERT INTO `paper_question` VALUES ('541', '7', '60', '2', '5');
INSERT INTO `paper_question` VALUES ('542', '6', '60', '3', '5');
INSERT INTO `paper_question` VALUES ('543', '1', '60', '4', '5');
INSERT INTO `paper_question` VALUES ('544', '8', '60', '5', '5');
INSERT INTO `paper_question` VALUES ('545', '2', '60', '6', '5');
INSERT INTO `paper_question` VALUES ('546', '4', '60', '7', '5');
INSERT INTO `paper_question` VALUES ('547', '3', '60', '8', '5');
INSERT INTO `paper_question` VALUES ('548', '9', '60', '9', '5');
INSERT INTO `paper_question` VALUES ('549', '5', '60', '10', '5');
INSERT INTO `paper_question` VALUES ('550', '11', '60', '11', '5');
INSERT INTO `paper_question` VALUES ('551', '18', '60', '12', '10');
INSERT INTO `paper_question` VALUES ('552', '12', '60', '13', '10');
INSERT INTO `paper_question` VALUES ('553', '15', '60', '14', '10');
INSERT INTO `paper_question` VALUES ('554', '13', '60', '15', '10');
INSERT INTO `paper_question` VALUES ('555', '16', '60', '16', '10');
INSERT INTO `paper_question` VALUES ('556', '2', '61', '2', '5');
INSERT INTO `paper_question` VALUES ('557', '1', '61', '3', '5');
INSERT INTO `paper_question` VALUES ('558', '3', '61', '4', '5');
INSERT INTO `paper_question` VALUES ('559', '9', '61', '5', '5');
INSERT INTO `paper_question` VALUES ('560', '5', '61', '6', '5');
INSERT INTO `paper_question` VALUES ('561', '10', '61', '7', '5');
INSERT INTO `paper_question` VALUES ('562', '4', '61', '8', '5');
INSERT INTO `paper_question` VALUES ('563', '6', '61', '9', '5');
INSERT INTO `paper_question` VALUES ('564', '8', '61', '10', '5');
INSERT INTO `paper_question` VALUES ('565', '11', '61', '11', '5');
INSERT INTO `paper_question` VALUES ('566', '14', '61', '12', '10');
INSERT INTO `paper_question` VALUES ('567', '13', '61', '13', '10');
INSERT INTO `paper_question` VALUES ('568', '15', '61', '14', '10');
INSERT INTO `paper_question` VALUES ('569', '12', '61', '15', '10');
INSERT INTO `paper_question` VALUES ('570', '16', '61', '16', '10');
INSERT INTO `paper_question` VALUES ('571', '1', '62', '2', '5');
INSERT INTO `paper_question` VALUES ('572', '3', '62', '3', '5');
INSERT INTO `paper_question` VALUES ('573', '2', '62', '4', '5');
INSERT INTO `paper_question` VALUES ('574', '9', '62', '5', '5');
INSERT INTO `paper_question` VALUES ('575', '5', '62', '6', '5');
INSERT INTO `paper_question` VALUES ('576', '10', '62', '7', '5');
INSERT INTO `paper_question` VALUES ('577', '4', '62', '8', '5');
INSERT INTO `paper_question` VALUES ('578', '6', '62', '9', '5');
INSERT INTO `paper_question` VALUES ('579', '7', '62', '10', '5');
INSERT INTO `paper_question` VALUES ('580', '8', '62', '11', '5');
INSERT INTO `paper_question` VALUES ('581', '18', '62', '12', '10');
INSERT INTO `paper_question` VALUES ('582', '13', '62', '13', '10');
INSERT INTO `paper_question` VALUES ('583', '12', '62', '14', '10');
INSERT INTO `paper_question` VALUES ('584', '15', '62', '15', '10');
INSERT INTO `paper_question` VALUES ('585', '16', '62', '16', '10');
INSERT INTO `paper_question` VALUES ('586', '9', '63', '2', '5');
INSERT INTO `paper_question` VALUES ('587', '1', '63', '3', '5');
INSERT INTO `paper_question` VALUES ('588', '11', '63', '4', '5');
INSERT INTO `paper_question` VALUES ('589', '2', '63', '5', '5');
INSERT INTO `paper_question` VALUES ('590', '4', '63', '6', '5');
INSERT INTO `paper_question` VALUES ('591', '5', '63', '7', '5');
INSERT INTO `paper_question` VALUES ('592', '10', '63', '8', '5');
INSERT INTO `paper_question` VALUES ('593', '7', '63', '9', '5');
INSERT INTO `paper_question` VALUES ('594', '3', '63', '10', '5');
INSERT INTO `paper_question` VALUES ('595', '6', '63', '11', '5');
INSERT INTO `paper_question` VALUES ('596', '18', '63', '12', '10');
INSERT INTO `paper_question` VALUES ('597', '16', '63', '13', '10');
INSERT INTO `paper_question` VALUES ('598', '15', '63', '14', '10');
INSERT INTO `paper_question` VALUES ('599', '17', '63', '15', '10');
INSERT INTO `paper_question` VALUES ('600', '12', '63', '16', '10');
INSERT INTO `paper_question` VALUES ('601', '1', '64', '2', '10');
INSERT INTO `paper_question` VALUES ('602', '2', '64', '3', '10');
INSERT INTO `paper_question` VALUES ('603', '10', '64', '4', '10');
INSERT INTO `paper_question` VALUES ('604', '3', '64', '5', '10');
INSERT INTO `paper_question` VALUES ('605', '7', '64', '6', '10');
INSERT INTO `paper_question` VALUES ('606', '18', '64', '7', '10');
INSERT INTO `paper_question` VALUES ('607', '17', '64', '8', '10');
INSERT INTO `paper_question` VALUES ('608', '16', '64', '9', '10');
INSERT INTO `paper_question` VALUES ('609', '12', '64', '10', '10');
INSERT INTO `paper_question` VALUES ('610', '14', '64', '11', '10');
INSERT INTO `paper_question` VALUES ('611', '1', '65', '2', '10');
INSERT INTO `paper_question` VALUES ('612', '4', '65', '3', '10');
INSERT INTO `paper_question` VALUES ('613', '6', '65', '4', '10');
INSERT INTO `paper_question` VALUES ('614', '3', '65', '5', '10');
INSERT INTO `paper_question` VALUES ('615', '2', '65', '6', '10');
INSERT INTO `paper_question` VALUES ('616', '18', '65', '7', '10');
INSERT INTO `paper_question` VALUES ('617', '12', '65', '8', '10');
INSERT INTO `paper_question` VALUES ('618', '16', '65', '9', '10');
INSERT INTO `paper_question` VALUES ('619', '17', '65', '10', '10');
INSERT INTO `paper_question` VALUES ('620', '14', '65', '11', '10');
INSERT INTO `paper_question` VALUES ('621', '1', '71', '2', '8');
INSERT INTO `paper_question` VALUES ('622', '3', '71', '3', '8');
INSERT INTO `paper_question` VALUES ('623', '2', '71', '4', '8');
INSERT INTO `paper_question` VALUES ('624', '5', '71', '5', '8');
INSERT INTO `paper_question` VALUES ('625', '7', '71', '6', '8');
INSERT INTO `paper_question` VALUES ('626', '12', '71', '7', '12');
INSERT INTO `paper_question` VALUES ('627', '16', '71', '8', '12');
INSERT INTO `paper_question` VALUES ('628', '13', '71', '9', '12');
INSERT INTO `paper_question` VALUES ('629', '14', '71', '10', '12');
INSERT INTO `paper_question` VALUES ('630', '15', '71', '11', '12');
INSERT INTO `paper_question` VALUES ('631', '2', null, '2', '5');
INSERT INTO `paper_question` VALUES ('632', '1', null, '3', '5');
INSERT INTO `paper_question` VALUES ('633', '3', null, '4', '5');
INSERT INTO `paper_question` VALUES ('634', '5', null, '5', '5');
INSERT INTO `paper_question` VALUES ('635', '4', null, '6', '5');
INSERT INTO `paper_question` VALUES ('636', '6', null, '7', '5');
INSERT INTO `paper_question` VALUES ('637', '7', null, '8', '5');
INSERT INTO `paper_question` VALUES ('638', '14', null, '9', '10');
INSERT INTO `paper_question` VALUES ('639', '12', null, '10', '10');
INSERT INTO `paper_question` VALUES ('640', '15', null, '11', '10');
INSERT INTO `paper_question` VALUES ('641', '13', null, '12', '10');
INSERT INTO `paper_question` VALUES ('642', '16', null, '13', '10');
INSERT INTO `paper_question` VALUES ('643', '3', null, '2', '5');
INSERT INTO `paper_question` VALUES ('644', '2', null, '3', '5');
INSERT INTO `paper_question` VALUES ('645', '1', null, '4', '5');
INSERT INTO `paper_question` VALUES ('646', '5', null, '5', '5');
INSERT INTO `paper_question` VALUES ('647', '4', null, '6', '5');
INSERT INTO `paper_question` VALUES ('648', '6', null, '7', '5');
INSERT INTO `paper_question` VALUES ('649', '7', null, '8', '5');
INSERT INTO `paper_question` VALUES ('650', '16', null, '9', '10');
INSERT INTO `paper_question` VALUES ('651', '13', null, '10', '10');
INSERT INTO `paper_question` VALUES ('652', '14', null, '11', '10');
INSERT INTO `paper_question` VALUES ('653', '12', null, '12', '10');
INSERT INTO `paper_question` VALUES ('654', '15', null, '13', '10');
INSERT INTO `paper_question` VALUES ('655', '6', null, '2', '5');
INSERT INTO `paper_question` VALUES ('656', '1', null, '3', '5');
INSERT INTO `paper_question` VALUES ('657', '2', null, '4', '5');
INSERT INTO `paper_question` VALUES ('658', '7', null, '5', '5');
INSERT INTO `paper_question` VALUES ('659', '3', null, '6', '5');
INSERT INTO `paper_question` VALUES ('660', '4', null, '7', '5');
INSERT INTO `paper_question` VALUES ('661', '5', null, '8', '5');
INSERT INTO `paper_question` VALUES ('662', '15', null, '9', '10');
INSERT INTO `paper_question` VALUES ('663', '12', null, '10', '10');
INSERT INTO `paper_question` VALUES ('664', '13', null, '11', '10');
INSERT INTO `paper_question` VALUES ('665', '14', null, '12', '10');
INSERT INTO `paper_question` VALUES ('666', '16', null, '13', '10');
INSERT INTO `paper_question` VALUES ('667', '1', null, '2', '5');
INSERT INTO `paper_question` VALUES ('668', '3', null, '3', '5');
INSERT INTO `paper_question` VALUES ('669', '5', null, '4', '5');
INSERT INTO `paper_question` VALUES ('670', '2', null, '5', '5');
INSERT INTO `paper_question` VALUES ('671', '4', null, '6', '5');
INSERT INTO `paper_question` VALUES ('672', '6', null, '7', '5');
INSERT INTO `paper_question` VALUES ('673', '7', null, '8', '5');
INSERT INTO `paper_question` VALUES ('674', '14', null, '9', '10');
INSERT INTO `paper_question` VALUES ('675', '12', null, '10', '10');
INSERT INTO `paper_question` VALUES ('676', '16', null, '11', '10');
INSERT INTO `paper_question` VALUES ('677', '13', null, '12', '10');
INSERT INTO `paper_question` VALUES ('678', '15', null, '13', '10');
INSERT INTO `paper_question` VALUES ('679', '1', null, '2', '5');
INSERT INTO `paper_question` VALUES ('680', '7', null, '3', '5');
INSERT INTO `paper_question` VALUES ('681', '2', null, '4', '5');
INSERT INTO `paper_question` VALUES ('682', '3', null, '5', '5');
INSERT INTO `paper_question` VALUES ('683', '4', null, '6', '5');
INSERT INTO `paper_question` VALUES ('684', '5', null, '7', '5');
INSERT INTO `paper_question` VALUES ('685', '6', null, '8', '5');
INSERT INTO `paper_question` VALUES ('686', '12', null, '9', '10');
INSERT INTO `paper_question` VALUES ('687', '16', null, '10', '10');
INSERT INTO `paper_question` VALUES ('688', '13', null, '11', '10');
INSERT INTO `paper_question` VALUES ('689', '14', null, '12', '10');
INSERT INTO `paper_question` VALUES ('690', '15', null, '13', '10');
INSERT INTO `paper_question` VALUES ('691', '2', null, '2', '4');
INSERT INTO `paper_question` VALUES ('692', '1', null, '3', '4');
INSERT INTO `paper_question` VALUES ('693', '3', null, '4', '4');
INSERT INTO `paper_question` VALUES ('694', '4', null, '5', '4');
INSERT INTO `paper_question` VALUES ('695', '5', null, '6', '4');
INSERT INTO `paper_question` VALUES ('696', '16', null, '7', '6');
INSERT INTO `paper_question` VALUES ('697', '14', null, '8', '6');
INSERT INTO `paper_question` VALUES ('698', '12', null, '9', '6');
INSERT INTO `paper_question` VALUES ('699', '13', null, '10', '6');
INSERT INTO `paper_question` VALUES ('700', '15', null, '11', '6');
INSERT INTO `paper_question` VALUES ('701', '1', '78', '2', '5');
INSERT INTO `paper_question` VALUES ('702', '5', '78', '3', '5');
INSERT INTO `paper_question` VALUES ('703', '4', '78', '4', '5');
INSERT INTO `paper_question` VALUES ('704', '2', '78', '5', '5');
INSERT INTO `paper_question` VALUES ('705', '3', '78', '6', '5');
INSERT INTO `paper_question` VALUES ('706', '6', '78', '7', '5');
INSERT INTO `paper_question` VALUES ('707', '7', '78', '8', '5');
INSERT INTO `paper_question` VALUES ('708', '13', '78', '9', '10');
INSERT INTO `paper_question` VALUES ('709', '12', '78', '10', '10');
INSERT INTO `paper_question` VALUES ('710', '15', '78', '11', '10');
INSERT INTO `paper_question` VALUES ('711', '16', '78', '12', '10');
INSERT INTO `paper_question` VALUES ('712', '14', '78', '13', '10');
INSERT INTO `paper_question` VALUES ('713', '1', '79', '2', '6');
INSERT INTO `paper_question` VALUES ('714', '2', '79', '3', '6');
INSERT INTO `paper_question` VALUES ('715', '3', '79', '4', '6');
INSERT INTO `paper_question` VALUES ('716', '4', '79', '5', '6');
INSERT INTO `paper_question` VALUES ('717', '5', '79', '6', '6');
INSERT INTO `paper_question` VALUES ('718', '7', '79', '7', '6');
INSERT INTO `paper_question` VALUES ('719', '6', '79', '8', '6');
INSERT INTO `paper_question` VALUES ('720', '15', '79', '9', '8');
INSERT INTO `paper_question` VALUES ('721', '14', '79', '10', '8');
INSERT INTO `paper_question` VALUES ('722', '12', '79', '11', '8');
INSERT INTO `paper_question` VALUES ('723', '16', '79', '12', '8');
INSERT INTO `paper_question` VALUES ('724', '13', '79', '13', '8');
INSERT INTO `paper_question` VALUES ('725', '6', '80', '2', '10');
INSERT INTO `paper_question` VALUES ('726', '5', '80', '3', '10');
INSERT INTO `paper_question` VALUES ('727', '15', '80', '4', '13');
INSERT INTO `paper_question` VALUES ('728', '16', '80', '5', '13');
INSERT INTO `paper_question` VALUES ('729', '12', '80', '6', '13');
INSERT INTO `paper_question` VALUES ('730', '2', '81', '2', '10');
INSERT INTO `paper_question` VALUES ('731', '1', '81', '3', '10');
INSERT INTO `paper_question` VALUES ('732', '14', '81', '4', '13');
INSERT INTO `paper_question` VALUES ('733', '16', '81', '5', '13');
INSERT INTO `paper_question` VALUES ('734', '15', '81', '6', '13');
INSERT INTO `paper_question` VALUES ('735', '5', '82', '2', '10');
INSERT INTO `paper_question` VALUES ('736', '1', '82', '3', '10');
INSERT INTO `paper_question` VALUES ('737', '2', '82', '4', '10');
INSERT INTO `paper_question` VALUES ('738', '6', '82', '5', '10');
INSERT INTO `paper_question` VALUES ('739', '3', '82', '6', '10');
INSERT INTO `paper_question` VALUES ('740', '7', '82', '7', '10');
INSERT INTO `paper_question` VALUES ('741', '4', '82', '8', '10');
INSERT INTO `paper_question` VALUES ('742', '16', '82', '9', '10');
INSERT INTO `paper_question` VALUES ('743', '12', '82', '10', '10');
INSERT INTO `paper_question` VALUES ('744', '13', '82', '11', '10');
INSERT INTO `paper_question` VALUES ('745', '5', '83', '2', '5');
INSERT INTO `paper_question` VALUES ('746', '2', '83', '3', '5');
INSERT INTO `paper_question` VALUES ('747', '3', '83', '4', '5');
INSERT INTO `paper_question` VALUES ('748', '1', '83', '5', '5');
INSERT INTO `paper_question` VALUES ('749', '7', '83', '6', '5');
INSERT INTO `paper_question` VALUES ('750', '4', '83', '7', '5');
INSERT INTO `paper_question` VALUES ('751', '6', '83', '8', '5');
INSERT INTO `paper_question` VALUES ('752', '24', '83', '9', '5');
INSERT INTO `paper_question` VALUES ('753', '25', '83', '10', '5');
INSERT INTO `paper_question` VALUES ('754', '20', '83', '11', '5');
INSERT INTO `paper_question` VALUES ('755', '13', '83', '12', '10');
INSERT INTO `paper_question` VALUES ('756', '12', '83', '13', '10');
INSERT INTO `paper_question` VALUES ('757', '14', '83', '14', '10');
INSERT INTO `paper_question` VALUES ('758', '15', '83', '15', '10');
INSERT INTO `paper_question` VALUES ('759', '16', '83', '16', '10');
INSERT INTO `paper_question` VALUES ('760', '1', '84', '2', '10');
INSERT INTO `paper_question` VALUES ('761', '3', '84', '3', '10');
INSERT INTO `paper_question` VALUES ('762', '2', '84', '4', '10');
INSERT INTO `paper_question` VALUES ('763', '6', '84', '5', '10');
INSERT INTO `paper_question` VALUES ('764', '4', '84', '6', '10');
INSERT INTO `paper_question` VALUES ('765', '13', '84', '7', '10');
INSERT INTO `paper_question` VALUES ('766', '16', '84', '8', '10');
INSERT INTO `paper_question` VALUES ('767', '15', '84', '9', '10');
INSERT INTO `paper_question` VALUES ('768', '12', '84', '10', '10');
INSERT INTO `paper_question` VALUES ('769', '14', '84', '11', '10');
INSERT INTO `paper_question` VALUES ('770', '3', '85', '2', '10');
INSERT INTO `paper_question` VALUES ('771', '1', '85', '3', '10');
INSERT INTO `paper_question` VALUES ('772', '4', '85', '4', '10');
INSERT INTO `paper_question` VALUES ('773', '26', '85', '5', '10');
INSERT INTO `paper_question` VALUES ('774', '2', '85', '6', '10');
INSERT INTO `paper_question` VALUES ('775', '12', '85', '7', '10');
INSERT INTO `paper_question` VALUES ('776', '13', '85', '8', '10');
INSERT INTO `paper_question` VALUES ('777', '15', '85', '9', '10');
INSERT INTO `paper_question` VALUES ('778', '14', '85', '10', '10');
INSERT INTO `paper_question` VALUES ('779', '16', '85', '11', '10');
INSERT INTO `paper_question` VALUES ('780', '1', '87', '2', '10');
INSERT INTO `paper_question` VALUES ('781', '4', '87', '3', '10');
INSERT INTO `paper_question` VALUES ('782', '21', '87', '4', '10');
INSERT INTO `paper_question` VALUES ('783', '2', '87', '5', '10');
INSERT INTO `paper_question` VALUES ('784', '7', '87', '6', '10');
INSERT INTO `paper_question` VALUES ('785', '12', '87', '7', '5');
INSERT INTO `paper_question` VALUES ('786', '15', '87', '8', '5');
INSERT INTO `paper_question` VALUES ('787', '14', '87', '9', '5');
INSERT INTO `paper_question` VALUES ('788', '16', '87', '10', '5');
INSERT INTO `paper_question` VALUES ('789', '13', '87', '11', '5');
INSERT INTO `paper_question` VALUES ('790', '1', '88', '2', '10');
INSERT INTO `paper_question` VALUES ('791', '20', '88', '3', '10');
INSERT INTO `paper_question` VALUES ('792', '2', '88', '4', '10');
INSERT INTO `paper_question` VALUES ('793', '25', '88', '5', '10');
INSERT INTO `paper_question` VALUES ('794', '5', '88', '6', '10');
INSERT INTO `paper_question` VALUES ('795', '13', '88', '7', '5');
INSERT INTO `paper_question` VALUES ('796', '16', '88', '8', '5');
INSERT INTO `paper_question` VALUES ('797', '15', '88', '9', '5');
INSERT INTO `paper_question` VALUES ('798', '14', '88', '10', '5');
INSERT INTO `paper_question` VALUES ('799', '12', '88', '11', '5');
INSERT INTO `paper_question` VALUES ('800', '5', '89', '2', '10');
INSERT INTO `paper_question` VALUES ('801', '1', '89', '3', '10');
INSERT INTO `paper_question` VALUES ('802', '2', '89', '4', '10');
INSERT INTO `paper_question` VALUES ('803', '4', '89', '5', '10');
INSERT INTO `paper_question` VALUES ('804', '6', '89', '6', '10');
INSERT INTO `paper_question` VALUES ('805', '13', '89', '7', '5');
INSERT INTO `paper_question` VALUES ('806', '12', '89', '8', '5');
INSERT INTO `paper_question` VALUES ('807', '2', '90', '2', '10');
INSERT INTO `paper_question` VALUES ('808', '14', '89', '9', '5');
INSERT INTO `paper_question` VALUES ('809', '1', '90', '3', '10');
INSERT INTO `paper_question` VALUES ('810', '15', '89', '10', '5');
INSERT INTO `paper_question` VALUES ('811', '21', '90', '4', '10');
INSERT INTO `paper_question` VALUES ('812', '16', '89', '11', '5');
INSERT INTO `paper_question` VALUES ('813', '3', '90', '5', '10');
INSERT INTO `paper_question` VALUES ('814', '7', '90', '6', '10');
INSERT INTO `paper_question` VALUES ('815', '14', '90', '7', '5');
INSERT INTO `paper_question` VALUES ('816', '12', '90', '8', '5');
INSERT INTO `paper_question` VALUES ('817', '15', '90', '9', '5');
INSERT INTO `paper_question` VALUES ('818', '13', '90', '10', '5');
INSERT INTO `paper_question` VALUES ('819', '16', '90', '11', '5');
INSERT INTO `paper_question` VALUES ('820', '1', '91', '2', '5');
INSERT INTO `paper_question` VALUES ('821', '5', '91', '3', '5');
INSERT INTO `paper_question` VALUES ('822', '2', '91', '4', '5');
INSERT INTO `paper_question` VALUES ('823', '7', '91', '5', '5');
INSERT INTO `paper_question` VALUES ('824', '3', '91', '6', '5');
INSERT INTO `paper_question` VALUES ('825', '21', '91', '7', '5');
INSERT INTO `paper_question` VALUES ('826', '20', '91', '8', '5');
INSERT INTO `paper_question` VALUES ('827', '4', '91', '9', '5');
INSERT INTO `paper_question` VALUES ('828', '22', '91', '10', '5');
INSERT INTO `paper_question` VALUES ('829', '6', '91', '11', '5');
INSERT INTO `paper_question` VALUES ('830', '14', '91', '12', '10');
INSERT INTO `paper_question` VALUES ('831', '16', '91', '13', '10');
INSERT INTO `paper_question` VALUES ('832', '13', '91', '14', '10');
INSERT INTO `paper_question` VALUES ('833', '12', '91', '15', '10');
INSERT INTO `paper_question` VALUES ('834', '15', '91', '16', '10');
INSERT INTO `paper_question` VALUES ('835', '3', '92', '2', '5');
INSERT INTO `paper_question` VALUES ('836', '1', '92', '3', '5');
INSERT INTO `paper_question` VALUES ('837', '2', '92', '4', '5');
INSERT INTO `paper_question` VALUES ('838', '7', '92', '5', '5');
INSERT INTO `paper_question` VALUES ('839', '11', '92', '6', '5');
INSERT INTO `paper_question` VALUES ('840', '4', '92', '7', '5');
INSERT INTO `paper_question` VALUES ('841', '5', '92', '8', '5');
INSERT INTO `paper_question` VALUES ('842', '8', '92', '9', '5');
INSERT INTO `paper_question` VALUES ('843', '6', '92', '10', '5');
INSERT INTO `paper_question` VALUES ('844', '10', '92', '11', '5');
INSERT INTO `paper_question` VALUES ('845', '24', '92', '12', '10');
INSERT INTO `paper_question` VALUES ('846', '12', '92', '13', '10');
INSERT INTO `paper_question` VALUES ('847', '21', '92', '14', '10');
INSERT INTO `paper_question` VALUES ('848', '23', '92', '15', '10');
INSERT INTO `paper_question` VALUES ('849', '13', '92', '16', '10');
INSERT INTO `paper_question` VALUES ('850', '4', '93', '2', '5');
INSERT INTO `paper_question` VALUES ('851', '10', '93', '3', '5');
INSERT INTO `paper_question` VALUES ('852', '1', '93', '4', '5');
INSERT INTO `paper_question` VALUES ('853', '2', '93', '5', '5');
INSERT INTO `paper_question` VALUES ('854', '5', '93', '6', '5');
INSERT INTO `paper_question` VALUES ('855', '3', '93', '7', '5');
INSERT INTO `paper_question` VALUES ('856', '8', '93', '8', '5');
INSERT INTO `paper_question` VALUES ('857', '9', '93', '9', '5');
INSERT INTO `paper_question` VALUES ('858', '6', '93', '10', '5');
INSERT INTO `paper_question` VALUES ('859', '7', '93', '11', '5');
INSERT INTO `paper_question` VALUES ('860', '23', '93', '12', '10');
INSERT INTO `paper_question` VALUES ('861', '13', '93', '13', '10');
INSERT INTO `paper_question` VALUES ('862', '15', '93', '14', '10');
INSERT INTO `paper_question` VALUES ('863', '17', '93', '15', '10');
INSERT INTO `paper_question` VALUES ('864', '12', '93', '16', '10');
INSERT INTO `paper_question` VALUES ('865', '1', '94', '2', '5');
INSERT INTO `paper_question` VALUES ('866', '10', '94', '3', '5');
INSERT INTO `paper_question` VALUES ('867', '2', '94', '4', '5');
INSERT INTO `paper_question` VALUES ('868', '11', '94', '5', '5');
INSERT INTO `paper_question` VALUES ('869', '4', '94', '6', '5');
INSERT INTO `paper_question` VALUES ('870', '3', '94', '7', '5');
INSERT INTO `paper_question` VALUES ('871', '7', '94', '8', '5');
INSERT INTO `paper_question` VALUES ('872', '5', '94', '9', '5');
INSERT INTO `paper_question` VALUES ('873', '8', '94', '10', '5');
INSERT INTO `paper_question` VALUES ('874', '6', '94', '11', '5');
INSERT INTO `paper_question` VALUES ('875', '13', '94', '12', '10');
INSERT INTO `paper_question` VALUES ('876', '23', '94', '13', '10');
INSERT INTO `paper_question` VALUES ('877', '16', '94', '14', '10');
INSERT INTO `paper_question` VALUES ('878', '22', '94', '15', '10');
INSERT INTO `paper_question` VALUES ('879', '12', '94', '16', '10');
INSERT INTO `paper_question` VALUES ('880', '4', '95', '2', '5');
INSERT INTO `paper_question` VALUES ('881', '1', '95', '3', '5');
INSERT INTO `paper_question` VALUES ('882', '7', '95', '4', '5');
INSERT INTO `paper_question` VALUES ('883', '11', '95', '5', '5');
INSERT INTO `paper_question` VALUES ('884', '2', '95', '6', '5');
INSERT INTO `paper_question` VALUES ('885', '8', '95', '7', '5');
INSERT INTO `paper_question` VALUES ('886', '3', '95', '8', '5');
INSERT INTO `paper_question` VALUES ('887', '6', '95', '9', '5');
INSERT INTO `paper_question` VALUES ('888', '10', '95', '10', '5');
INSERT INTO `paper_question` VALUES ('889', '5', '95', '11', '5');
INSERT INTO `paper_question` VALUES ('890', '15', '95', '12', '10');
INSERT INTO `paper_question` VALUES ('891', '13', '95', '13', '10');
INSERT INTO `paper_question` VALUES ('892', '18', '95', '14', '10');
INSERT INTO `paper_question` VALUES ('893', '24', '95', '15', '10');
INSERT INTO `paper_question` VALUES ('894', '20', '95', '16', '10');

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `library_id` int(11) DEFAULT NULL,
  `title` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `score` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `answer_a` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `answer_b` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `answer_c` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `answer_d` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '1:正常；2：作废',
  `right_answer` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `question_type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `library_type` varchar(20) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_11` (`library_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '3', ' 在Java中，负责对字节代码解释执行的是 ', '5', '应用服务器', '虚拟机', '垃圾回收器', '编译器', '1', 'B.虚拟机', 'AA01', 'BB01', null, '2018-04-21 23:39:14', null, '2018-04-21 23:39:14');
INSERT INTO `question` VALUES ('2', '3', ' 在Java EE中的MVC设计模式中，（ ）负责接受客户端的请求数据', '5', 'JavaBean', 'JSP', 'Servlet', 'HTML', '1', 'C.Servlet', 'AA01', 'BB01', null, '2018-04-24 09:58:22', null, '2018-04-24 09:58:22');
INSERT INTO `question` VALUES ('3', '3', '过滤器应实现的接口是( )', '5', 'HttpServlet ', 'HttpFilter ', 'ServletFilter', 'Filter', '1', 'D.Filter', 'AA01', 'BB01', null, '2018-04-24 10:04:09', null, '2018-04-24 10:04:09');
INSERT INTO `question` VALUES ('4', '3', '开发Java Web应用程序的时候，创建一个Servlet，该Servlet重写了父类的doGet（）和doPost（）方法，那么其父类可能是（ ）', '5', 'RequestDispatcher', 'HttpServletResponse', 'HttpServletRequest', 'HttpServlet', '1', 'D.HttpServlet', 'AA01', 'BB01', null, '2018-04-24 10:06:37', null, '2018-04-24 10:06:37');
INSERT INTO `question` VALUES ('5', '3', '在Java Web开发中，如果某个数据需要跨多个请求存在，则数据应该存储在（ ）中', '5', 'session', 'page', 'request', 'response', '1', 'A.session', 'AA01', 'BB01', null, '2018-04-24 10:08:07', null, '2018-04-24 10:08:07');
INSERT INTO `question` VALUES ('6', '3', '在开发Java Web应用程序的时候，HTTP请求消息使用Get或POET方法以便在WEB上传输数据，下列关于GET和POST 方法描述正确的是（ ）', '5', 'POST请求的数据在地址栏不可见', 'GET请求提交的数据在理论上没有长度限制', 'POST请求对发送的数据的长度限制在240——255个字符', 'GET请求提交数据更加安全', '1', 'A.OST请求的数据在地址栏不可见', 'AA01', 'BB01', null, '2018-04-24 10:09:21', null, '2018-04-24 10:09:21');
INSERT INTO `question` VALUES ('7', '3', '在Java Web开发中，不同的客户端需要共享数据，则数据应该存储在（ ）中', '5', 'session', 'application', 'request', 'response', '1', 'B.application', 'AA01', 'BB01', null, '2018-04-24 10:11:50', null, '2018-04-24 10:11:50');
INSERT INTO `question` VALUES ('8', '3', '利用三层结构搭建某网上书店系统，设计用户登陆界面，如果你是设计人员，你将在三层结构的（ ）中实现', '5', '模型层', '表示层', '数据访问层', '业务逻辑层', '1', 'B.表示层', 'AA01', 'BB01', null, '2018-04-24 10:12:05', null, '2018-04-24 10:12:05');
INSERT INTO `question` VALUES ('9', '3', '在Java EE中，（ ）接口定义了getSession()方法', '5', 'httpServlet', 'HttpSession', 'HttpServletRequest', 'HttpServletResponse', '1', 'C.HttpServletRequest', 'AA01', 'BB01', null, '2018-04-24 10:14:44', null, '2018-04-24 10:14:44');
INSERT INTO `question` VALUES ('10', '3', '在JSTL的达代标签<forEach>的属性中，用于指定要遍历的对象集合（ ）', '5', 'var', 'items', 'value', 'varStatus', '1', 'B.items', 'AA01', 'BB01', null, '2018-04-24 10:16:26', null, '2018-04-24 10:16:26');
INSERT INTO `question` VALUES ('11', '3', 'MVC设计模式包含模型层、视图层和控制层，在下列组件扮演控制器角色的是（ ）', '5', 'Servlet', 'JSP', 'javaBean', 'HTML', '1', 'A.Servlet', 'AA01', 'BB01', null, '2018-04-24 10:17:57', null, '2018-04-24 10:17:57');
INSERT INTO `question` VALUES ('12', '1', 'SpringMVC原理是？', '10', null, null, null, null, '1', '参考答案：SpringMVC是Spring中的模块，它实现了mvc设计模式的web框架，首先用户发出请求，请求到达SpringMVC的前端控制器（DispatcherServlet）,前端控制器根据用户的url请求处理器映射器查找匹配该url的handler，并返回一个执行链，前端控制器再请求处理器适配器调用相应的handler进行处理并返回给前端控制器一个modelAndView，前端控制器再请求视图解析器对返回的逻辑视图进行解析，最后前端控制器将返回的视图进行渲染并把数据装入到request域，返回给用户。', 'AA02', 'BB01', null, '2018-04-24 10:18:32', null, '2018-04-24 10:18:32');
INSERT INTO `question` VALUES ('13', '1', 'Java设计模式思想知道几种？说说含义', '10', null, null, null, null, '1', '参考答案：a) 单例模式：单例模式核心只需要new一个实例对象的模式，比如数据库连接，在线人数等，一些网站上看到的在线人数统计就是通过单例模式实现的，把一个计时器存放在数据库或者内存中，当有人登陆的时候取出来加一再放回去，有人退出登陆的时候取出来减一再放回去，但是当有两个人同时登陆的时候，会同时取出计数器，同时加一，同时放回去，这样的话数据就会错误，所以需要一个全局变量的对象给全部人使用，只需要new出一个实例对象，这就是单例模式的应用，并且单例模式节省资源，因为它控制了实例对象的个数，并有利于gc回收。\r\n\r\nb) 策略模式：就是将几个类中公共的方法提取到一个新的类中，从而使扩展更容易，保证', 'AA02', 'BB01', null, '2018-04-24 10:29:12', null, '2018-04-24 10:29:12');
INSERT INTO `question` VALUES ('14', '1', '叙述Spring框架核心。', '10', null, null, null, null, '1', '参考答案：a) IOC：Spring是开源框架，使用框架可以使我们减少工作量，提高工作效率并且它是分层结构，即相对应的层处理对应的业务逻辑，减少代码的耦合度。而spring的核心是IOC控制反转和AOP面向切面编程。IOC控制反转主要强调的是程序之间的关系是由容器控制的，容器控制对象，控制了对外部资源的获取。而反转即为，在传统的编程中都是由我们创建对象获取依赖对象，而在IOC中是容器帮我们创建对象并注入依赖对象，正是容器帮我们查找和注入对象，对象是被获取，所以叫反转。\r\n\r\nb) AOP：面向切面编程，主要是管理系统层的业务，比如日志，权限，事物等。AOP是将封装好的对象剖开，找出其中对多个对', 'AA02', 'BB01', null, '2018-04-24 10:31:45', null, '2018-04-24 10:31:45');
INSERT INTO `question` VALUES ('15', '1', '数据库优化', '10', null, null, null, null, '1', '参考答案：a) 选择合适的字段，比如邮箱字段可以设为char（6），尽量把字段设置为notnull，这样查询的时候数据库就不需要比较null值\r\n\r\nb) 使用关联查询（ left join on）查询代替子查询\r\n\r\nc) 使用union联合查询手动创建临时表\r\n\r\nd) 开启事物，当数据库执行多条语句出现错误时，事物会回滚，可以维护数据库的完整性\r\n\r\ne) 使用外键，事物可以维护数据的完整性但是它却不能保证数据的关联性，使用外键可以保证数据的关联性\r\n\r\nf) 使用索引，索引是提高数据库性能的常用方法，它可以令数据库服务器以比没有索引快的多的速度检索特定的行，特别是对于max，min，o', 'AA02', 'BB01', null, '2018-04-24 10:33:29', null, '2018-04-24 10:33:29');
INSERT INTO `question` VALUES ('16', '1', 'Arraylist与linkedlist的区别', '10', null, null, null, null, '1', '参考答案：a) 都是实现list接口的列表，arraylist是基于数组的数据结构，linkedlist是基于链表的数据结构，当获取特定元素时，ArrayList效率比较快，它通过数组下标即可获取，而linkedlist则需要移动指针。当存储元素与删除元素时linkedlist效率较快，只需要将指针移动指定位置增加或者删除即可，而arraylist需要移动数据。', 'AA02', 'BB01', null, '2018-04-24 10:33:37', null, '2018-04-24 10:33:37');
INSERT INTO `question` VALUES ('17', '1', 'Tomcat服务器优化（内存，并发连接数，缓存）', '10', null, null, null, null, '1', '参考答案：a) 内存优化：主要是对Tomcat启动参数进行优化，我们可以在Tomcat启动脚本中修改它的最大内存数等等。\r\n\r\n参考答案：a) 内存优化：主要是对Tomcat启动参数进行优化，我们可以在Tomcat启动脚本中修改它的最大内存数等等。b) 线程数优化：Tomcat的并发连接参数，主要在Tomcat配置文件中server.xml中配置，比如修改最小空闲连接线程数，用于提高系统处理性能等等。\r\n\r\nc) 优化缓存：打开压缩功能，修改参数，比如压缩的输出内容大小默认为2KB，可以适当的修改。', 'AA02', 'BB01', null, '2018-04-24 10:35:23', null, '2018-04-24 10:35:23');
INSERT INTO `question` VALUES ('18', '1', 'HTTP协议', '10', null, null, null, null, '1', '参考答案：a) 常用的请求方法有get、post\r\n\r\nb) Get与post的区别：传送数据，get携带参数与访问地址传送，用户可以看见，这的话信息会不安全，导致信息泄露。而post则将字段与对应值封装在实体中传送，这个过程用户是不可见的。Get传递参数有限制，而post无限制。', 'AA02', 'BB01', null, '2018-04-24 10:36:38', null, '2018-04-24 10:36:38');
INSERT INTO `question` VALUES ('20', '1', 'JSP和Servlet有哪些相同点和不同点，他们之间的联系是什么？ ', '10', null, null, null, null, '1', '参考答案：a) JSP是Servlet技术的扩展，本质上是Servlet的简易方式，更强调应用的外表表达。JSP编译后是\"类servlet\"。Servlet和JSP最主要的不同点在于，Servlet的应用逻辑是在Java文件中，并且完全从表示层中的HTML里分离开来。而JSP的情况是Java和HTML可以组合成一个扩展名为.jsp的文件。JSP侧重于视图，Servlet主要用于控制逻辑。', 'AA02', 'BB01', null, '2018-04-27 23:25:02', null, '2018-04-27 23:25:14');
INSERT INTO `question` VALUES ('21', '1', ' swtich是否能作用在byte上，是否能作用在long上，是否能作用在String上?', '10', null, null, null, null, '1', '参考答案：a）switch（expr1）中，expr1是一个整数表达式。因此传递给 switch 和 case 语句的参数应该是 int、 short、 char 或者 byte。long,string 都不能作用于swtich。', 'AA02', 'BB01', null, '2018-04-27 23:26:18', null, '2018-04-27 23:26:26');
INSERT INTO `question` VALUES ('22', '1', '说出数据连接池的工作机制是什么?', '10', null, null, null, null, '1', '参考答案：a) J2EE服务器启动时会建立一定数量的池连接，并一直维持不少于此数目的池连接。客户端程序需要连接时，池驱动程序会返回一个未使用的池连接并将其标记为忙。如果当前没有空闲连接，池驱动程序就新建一定数量的连接，新建连接的数量由配置参数决定。当使用的池连接调用完成后，池驱动程序将此连接表记为空闲，其他调用就可以使用这个连接。', 'AA02', 'BB01', null, '2018-04-27 23:31:10', null, '2018-04-27 23:31:05');
INSERT INTO `question` VALUES ('23', '1', 'Overload和Override的区别。Overloaded的方法是否可以改变返回值的类型?', '10', null, null, null, null, '1', '参考答案：a) 方法的重写Overriding和重载Overloading是Java多态性的不同表现。重写Overriding是父类与子类之间多态性的一种表现，重载Overloading是一个类中多态性的一种表现。如果在子类中定义某方法与其父类有相同的名称和参数，我们说该方法被重写 (Overriding)。子类的对象使用这个方法时，将调用子类中的定义，对它而言，父类中的定义如同被“屏蔽”了。如果在一个类中定义了多个同名的方法，它们或有不同的参数个数或有不同的参数类型，则称为方法的重载(Overloading)。Overloaded的方法是可以改变返回值的类型。', 'AA02', 'BB01', null, '2018-04-27 23:33:31', null, '2018-04-27 23:35:54');
INSERT INTO `question` VALUES ('24', '1', '说出ArrayList,Vector, LinkedList的存储性能和特性.', '10', null, null, null, null, '1', '参考答案：a) ArrayList和Vector都是使用数组方式存储数据，此数组元素数大于实际存储的数据以便增加和插入元素，它们都允许直接按序号索引元素，但是插入元素要涉及数组元素移动等内存操作，所以索引数据快而插入数据慢，Vector由于使用了synchronized方法（线程安全），通常性能上较ArrayList差，而LinkedList使用双向链表实现存储，按序号索引数据需要进行前向或后向遍历，但是插入数据时只需要记录本项的前后项即可，所以插入速度较快。', 'AA02', 'BB01', null, '2018-04-27 23:36:30', null, '2018-04-27 23:36:34');
INSERT INTO `question` VALUES ('25', '8', 'JavaScript是运行在(  )的脚本语言?', '5', '服务器端', '客户端', '在服务器运行后，把结果返回到客户端', '在客户端运行后，把结果返回给服务端', '1', 'B.客户端', 'AA01', 'BB03', null, '2018-04-27 23:36:37', null, '2018-04-27 23:36:34');
INSERT INTO `question` VALUES ('26', '8', 'setTimeout(\"buy( )\",20)表示的意思是(  )', '5', '间隔20秒后，buy( )函数被调用一次', '间隔20分钟后，buy( )函数被调用一次', '间隔20毫秒后，buy( )函数被调用一次', 'buy( )函数被持续调用20次', '1', 'C.间隔20毫秒后，buy( )函数被调用一次', 'AA01', 'BB03', null, '2018-04-27 23:40:12', null, '2018-04-27 23:40:07');
INSERT INTO `question` VALUES ('55', '8', '在Javascript中，运行Math.ceil(25.5);的结果是(  )', '5', '24', '25', '25.5', '26', '1', 'B.虚拟机', 'AA01', 'BB03', null, '2018-05-10 11:27:22', null, '2018-05-10 11:27:26');
INSERT INTO `question` VALUES ('56', '8', '在JavaScript中(  )方法可以对数组元素进行排序', '5', 'add', 'join', 'sort', 'length', '1', 'C.sort()', 'AA01', 'BB03', null, '2018-05-10 11:27:28', null, '2018-05-10 11:27:30');
INSERT INTO `question` VALUES ('57', '8', '关于函数，以下说法错误的是(  )', '5', '函数类似于方法，是执行特定任务的语句块。', '可以直接使用函数名称来调用函数', '函数可以提高代码的重用率', '函数不能有返回值', '1', 'D.函数不能有返回值', 'AA01', 'BB03', null, '2018-05-10 11:27:32', null, '2018-05-10 11:27:34');
INSERT INTO `question` VALUES ('61', '9', '什么是盒子模型？', '10', null, null, null, null, '1', '参考答案：a)在网页中，一个元素占有空间的大小由几个部分构成，其中包括元素的内容（content），元素的内边距（padding），元素的边框（border），元素的外边距（margin）四个部分。这四个部分占有的空间中，有的部分可以显示相应的内容，而有的部分只用来分隔相邻的区域或区域。4个部分一起构成了css中元素的盒模型。', 'AA02', 'BB03', null, '2018-05-10 12:54:33', null, '2018-05-10 12:54:35');
INSERT INTO `question` VALUES ('62', '9', '简述一下src与href的区别', '10', null, null, null, null, '1', '参考答案：a)href 是指向网络资源所在位置，建立和当前元素（锚点）或当前文档（链接）之间的链接，用于超链接。b)src是指向外部资源的位置，指向的内容将会嵌入到文档中当前标签所在位置；在请求src资源时会将其指向的资源下载并应用到文档内，例如js脚本，img图片和frame等元素。当浏览器解析到该元素时，会暂停其他资源的下载和处理，直到将该资源加载、编译、执行完毕，图片和框架等元素也如此，类似于将所指向资源嵌入当前标签内。这也是为什么将js脚本放在底部而不是头部。 ', 'AA02', 'BB03', null, '2018-05-10 12:54:41', null, '2018-05-10 12:54:44');
INSERT INTO `question` VALUES ('63', '9', '简述同步和异步的区别', '10', null, null, null, null, '1', '参考答案：a)同步是阻塞模式，异步是非阻塞模式。 同步就是指一个进程在执行某个请求的时候，若该请求需要一段时间才能返回信息，那么这个进程将会一直等待下去，直到收到返回信息才继续执行下去；异步是指进程不需要一直等下去，而是继续执行下面的操作，不管其他进程的状态。当有消息返回时系统会通知进程进行处理，这样可以提高执行的效率。', 'AA02', 'BB03', null, '2018-05-10 12:59:55', null, '2018-05-10 12:59:58');
INSERT INTO `question` VALUES ('64', '9', 'XHTML和HTML有什么区别', '10', null, null, null, null, '1', '参考答案：a)HTML是一种基本的WEB网页设计语言，XHTML是一个基于XMl的置标语言;b)XHTML元素必须被正确地嵌套。c)XHTML元素必须被关闭;d)标签名必须用小写字母;e)XHTMl文档必须拥有根元素', 'AA02', 'BB03', null, '2018-05-10 13:00:01', null, '2018-05-10 13:00:03');
INSERT INTO `question` VALUES ('65', '9', '简述一下cookie机制', '10', null, null, null, null, '1', '参考答案：a）cookie保存在浏览器端,如果不在浏览器中设置过期时间，cookie被保存在内存中，生命周期随浏览器的关闭而结束，这种cookie简称会话cookie。如果在浏览器中设置了cookie的过期时间，cookie被保存在硬盘中，关闭浏览器后，cookie数据仍然存在，直到过期时间结束才消失。Cookie是服务器发给客户端的特殊信息，cookie是以文本的方式保存在客户端，每次请求时都带上它。b)应用场景：（1）判断用户是否登陆过网站，以便下次登录时能够实现自动登录（或者记住密码）。如果我们删除cookie，则每次登录必须从新填写登录的相关信息。（2）保存上次登录的时间等信息。（3）保存上次查看的页面（4）浏览计数。缺点：1）大小受限（2）用户可以操作（禁用）cookie，使功能受限（3）安全性较低（4）有些状态不可能保存在客户端。（5）每次访问都要传送cookie给服务器，浪费带宽。（6）cookie数据有路径（path）的概念，可以限制cookie只属于某个路径下。', 'AA02', 'BB03', null, '2018-05-10 13:00:05', null, '2018-05-10 13:00:06');
INSERT INTO `question` VALUES ('66', '9', '简述一下session机制', '10', null, null, null, null, '1', '参考答案：a)当服务器收到请求需要创建session对象时，首先会检查客户端请求中是否包含sessionid。如果有sessionid，服务器将根据该id返回对应session对象。如果客户端请求中没有sessionid，服务器会创建新的session对象，并把sessionid在本次响应中返回给客户端。通常使用cookie方式存储sessionid到客户端，在交互中浏览器按照规则将sessionid发送给服务器。如果用户禁用cookie，则要使用URL重写，可以通过response.encodeURL(url) 进行实现；API对encodeURL的结束为，当浏览器支持Cookie时，url不做任何处理；当浏览器不支持Cookie的时候，将会重写URL将SessionID拼接到访问地址后。b)Session用于保存每个用户的专用信息，变量的值保存在服务器端，通过SessionID来区分不同的客户。（1）网上商城中的购物车（2）保存用户登录信息（3）将某些数据放入session中，供同一用户的不同页面使用（4）防止用户非法登录', 'AA02', 'BB03', null, '2018-05-10 13:22:46', null, '2018-05-10 13:22:49');
INSERT INTO `question` VALUES ('67', null, '在Java中，负责对字节代码解释执行的是', '5', '应用服务器', '虚拟机', '垃圾回收器编译器', null, '1', 'B.虚拟机', 'AA01', 'BB01', null, null, null, null);
INSERT INTO `question` VALUES ('68', null, 'SpringMVC原理是？', '10', null, null, null, null, '1', '参考答案：SpringMVC是Spring中的模块，它实现了mvc设计模式的web框架，首先用户发出请求，请求到达SpringMVC的前端控制器（DispatcherServlet）,前端控制器根据用户的url请求处理器映射器查找匹配该url的handler，并返回一个执行链，前端控制器再请求处理器适配器调用相应的handler进行处理并返回给前端控制器一个modelAndView，前端控制器再请求视图解析器对返回的逻辑视图进行解析，最后前端控制器将返回的视图进行渲染并把数据装入到request域，返回给用户。', 'AA02', 'BB01', null, null, null, null);

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `phonenumber` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1' COMMENT '1:正常；2：冻结',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'xiaobai', 'xb', '18909873222', '1', null, '2018-04-15 00:00:00', null, '2018-04-15 00:00:00', '1');
INSERT INTO `student` VALUES ('2', '赵明明', '1233', '18909878932', '1', null, '2018-04-21 11:32:21', null, '2018-04-21 11:32:21', '1');
INSERT INTO `student` VALUES ('3', 'ljx', 'ljx', '18909878921', '1', null, '2018-04-21 11:32:41', null, '2018-04-21 11:32:41', '1');
INSERT INTO `student` VALUES ('4', 'ljx', 'f0b5acd24bf41fe5d0ce9ff222ccbb53', '18909878921', '1', null, '2018-04-21 11:32:41', null, '2018-04-21 11:32:41', '1');

-- ----------------------------
-- Table structure for `student_exam_info`
-- ----------------------------
DROP TABLE IF EXISTS `student_exam_info`;
CREATE TABLE `student_exam_info` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `exam_describe` int(11) DEFAULT NULL COMMENT '����������1���Ѿ�����ģ�2�����ڿ��ԣ�3�����Ա����μӵĿ��ԣ�',
  `exam_time` date DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `single_score` int(11) DEFAULT NULL COMMENT '��ѡ�����',
  `short_ans_score` int(11) DEFAULT NULL COMMENT '��������',
  `time` int(11) DEFAULT NULL COMMENT '���Ի���ʱ��',
  `create_id` int(11) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_10` (`exam_id`),
  KEY `FK_Reference_9` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student_exam_info
-- ----------------------------

-- ----------------------------
-- Table structure for `type_dictionary`
-- ----------------------------
DROP TABLE IF EXISTS `type_dictionary`;
CREATE TABLE `type_dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_cd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `type_name` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `type_sub_cd` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `type_sub_name` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of type_dictionary
-- ----------------------------
INSERT INTO `type_dictionary` VALUES ('1', 'AA', '试题类型', 'AA01', '选择题');
INSERT INTO `type_dictionary` VALUES ('2', 'AA', '试题类型', 'AA02', '简答题');
INSERT INTO `type_dictionary` VALUES ('5', 'BB', '题库范围', 'BB01', 'java');
INSERT INTO `type_dictionary` VALUES ('6', 'BB', '题库范围', 'BB02', 'c语言');
INSERT INTO `type_dictionary` VALUES ('7', 'BB', '题库范围', 'BB03', 'html/js/css');
INSERT INTO `type_dictionary` VALUES ('8', 'BB', '题库范围', 'BB04', '数据库');
