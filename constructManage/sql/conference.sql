/*
Navicat MySQL Data Transfer

Source Server         : shawn
Source Server Version : 50605
Source Host           : localhost:3306
Source Database       : construct_manage

Target Server Type    : MYSQL
Target Server Version : 50605
File Encoding         : 65001

Date: 2018-08-17 10:52:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `conference`
-- ----------------------------
DROP TABLE IF EXISTS `conference`;
CREATE TABLE `conference` (
  `conference_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL COMMENT '文件名称',
  `upload_date` datetime NOT NULL COMMENT '上传日期',
  `route` varchar(32) DEFAULT NULL COMMENT '下载路径',
  `download_date` datetime NOT NULL COMMENT '下载日期',
  PRIMARY KEY (`conference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of conference
-- ----------------------------

-- ----------------------------
-- Table structure for `contract`
-- ----------------------------
DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同编号',
  `party_a` varchar(32) DEFAULT NULL COMMENT '甲方名称',
  `party_b` varchar(32) DEFAULT NULL COMMENT '乙方名称',
  `start_time` date DEFAULT NULL COMMENT '开工时间',
  `end_time` date DEFAULT NULL COMMENT '竣工时间',
  `total_days` int(11) DEFAULT NULL COMMENT '工程总天数',
  `quality_standard` varchar(32) DEFAULT NULL COMMENT '质量标准',
  `price` double(11,2) DEFAULT NULL COMMENT '发包公司法人代表',
  `contracting_legal_person` varchar(32) DEFAULT NULL,
  `contractual_legal_person` varchar(32) DEFAULT 'CURRENT_TIMESTAMP ',
  `sign_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '签订日期',
  `contractName` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`contract_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1111111126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contract
-- ----------------------------
INSERT INTO `contract` VALUES ('1111111122', '罗渐渐', '刘祥', '2018-01-01', '2019-01-01', '356', '二级', '650000.00', '贾帅', '杨坡', '2018-04-08 13:56:52', '如意金水湾');
INSERT INTO `contract` VALUES ('1111111124', '戴尔', '联想', '2015-02-02', '2016-02-02', '355', '二级', '6500000.00', '刘祥', '李长生', '2018-04-08 15:07:13', '芝兰新城');
INSERT INTO `contract` VALUES ('1111111125', '腾讯qq', '阿里巴巴', '2018-04-01', '2019-05-01', '386', '国际二级', '6500000.00', '李云龙', '李寻欢', '2018-04-10 15:39:48', '恒大华府');

-- ----------------------------
-- Table structure for `finance`
-- ----------------------------
DROP TABLE IF EXISTS `finance`;
CREATE TABLE `finance` (
  `finance_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '财务编号',
  `contract_id` int(11) NOT NULL,
  `finance_name` varchar(32) DEFAULT NULL COMMENT '花费来源',
  `money` double(32,0) DEFAULT NULL COMMENT '金额',
  `settleDate` date DEFAULT NULL COMMENT '结算日期',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`finance_id`),
  KEY `FK_contract_finance` (`contract_id`),
  CONSTRAINT `FK_contract_finance` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`contract_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of finance
-- ----------------------------
INSERT INTO `finance` VALUES ('1', '1111111124', '人工费', '200000', '2018-04-10', null);
INSERT INTO `finance` VALUES ('7', '1111111125', '人工费', '150000', '2018-02-11', '其中有清洁工人、包工头、水泥工');
INSERT INTO `finance` VALUES ('8', '1111111125', '材料费', '2000', '2018-02-11', '');

-- ----------------------------
-- Table structure for `material`
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `material_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '材料编号',
  `contract_id` int(11) NOT NULL COMMENT '合同编号,表示材料所属工程',
  `material_name` varchar(32) NOT NULL COMMENT '材料名称',
  `unit` varchar(32) NOT NULL COMMENT '材料单位',
  `amount` int(11) NOT NULL COMMENT '材料数量',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`material_id`),
  KEY `FK_material_contract` (`contract_id`),
  CONSTRAINT `FK_material_contract` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`contract_id`)
) ENGINE=InnoDB AUTO_INCREMENT=333337 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material
-- ----------------------------
INSERT INTO `material` VALUES ('2222', '1111111122', '石灰', '吨', '2', null);
INSERT INTO `material` VALUES ('333333', '1111111124', '水泥', '吨', '1', '');
INSERT INTO `material` VALUES ('333335', '1111111124', '油漆11', '桶', '2', '');
INSERT INTO `material` VALUES ('333336', '1111111125', '钢筋', '吨', '3', '');

-- ----------------------------
-- Table structure for `project_progress`
-- ----------------------------
DROP TABLE IF EXISTS `project_progress`;
CREATE TABLE `project_progress` (
  `project_progress_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '工程进度表编号',
  `address` varchar(100) NOT NULL COMMENT '工程地址',
  `name` varchar(32) NOT NULL COMMENT '工程名称',
  `persion_in_charge` varchar(32) DEFAULT NULL COMMENT '负责人',
  `field_supervisor` varchar(32) DEFAULT NULL COMMENT '现场主管人员',
  `process` varchar(300) DEFAULT NULL COMMENT '工程进度',
  `safety_quality` varchar(300) DEFAULT NULL COMMENT '安全质量状况',
  `reporting_date` date DEFAULT NULL COMMENT '填报日期',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`project_progress_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project_progress
-- ----------------------------
INSERT INTO `project_progress` VALUES ('3', '徐州丰县', '如意金水湾', '里徐昂', '流浪', '很好', '很出色,', '2018-04-13', '1111');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_name` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '用户密码',
  `userType` int(11) NOT NULL COMMENT '用户类型：0，员工；1，经理；',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'shawn', '111111', '0');
INSERT INTO `user` VALUES ('2', 'cooper', '111111', '1');
INSERT INTO `user` VALUES ('3', 'lixuiang', '111111', '1');
INSERT INTO `user` VALUES ('4', 'john', '111111', '0');

-- ----------------------------
-- Table structure for `work_hours`
-- ----------------------------
DROP TABLE IF EXISTS `work_hours`;
CREATE TABLE `work_hours` (
  `work_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL COMMENT '开始时间',
  `end_time` datetime NOT NULL COMMENT '结束时间',
  `location` varchar(32) NOT NULL COMMENT '工程地点',
  `note_taker` varchar(32) NOT NULL COMMENT '记录人',
  `remark` varchar(100) NOT NULL COMMENT '备注',
  PRIMARY KEY (`work_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work_hours
-- ----------------------------
