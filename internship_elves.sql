/*
 Navicat Premium Data Transfer

 Source Server         : as
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : internship_elves

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 17/06/2019 15:46:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_check_com
-- ----------------------------
DROP TABLE IF EXISTS `admin_check_com`;
CREATE TABLE `admin_check_com`  (
  `admin_check_com_id` int(11) NOT NULL,
  `com_id` int(11) NULL DEFAULT NULL,
  `admin_check_com_status` int(255) NULL DEFAULT NULL,
  `admin_check_com_time` date NULL DEFAULT NULL,
  `admin_check_com_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_check_com_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_check_com_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin_check_stu
-- ----------------------------
DROP TABLE IF EXISTS `admin_check_stu`;
CREATE TABLE `admin_check_stu`  (
  `admin_check_stu_id` int(11) NOT NULL,
  `stu_id` int(11) NULL DEFAULT NULL,
  `admin_check_stu_status` int(255) NULL DEFAULT NULL,
  `admin_check_stu_time` date NULL DEFAULT NULL,
  `admin_check_stu_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_check_stu_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_check_stu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin_login
-- ----------------------------
DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE `admin_login`  (
  `admin_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_login_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin_login_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_login_time` date NULL DEFAULT NULL,
  `admin_pre_login_time` date NULL DEFAULT NULL,
  `admin_login_status` int(255) NULL DEFAULT NULL,
  `admin_id` int(11) NULL DEFAULT NULL,
  `admin_login_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_login_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_login_id`, `admin_login_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_login
-- ----------------------------
INSERT INTO `admin_login` VALUES (1, 'admin1', 'a12345678', '2019-06-03', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (2, 'admin1', 'a12345678', '2019-06-03', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (3, 'admin1', 'a12345678', '2019-06-03', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (4, 'admin1', 'a12345678', '2019-06-09', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (5, 'admin1', 'a12345678', '2019-06-09', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (6, 'admin1', 'a12345678', '2019-06-09', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (7, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (8, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (9, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (10, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (11, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (12, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (13, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (14, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (15, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (16, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (17, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (18, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (19, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (20, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (21, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (22, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (23, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (24, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (25, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (26, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (27, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (28, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (29, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (30, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (31, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (32, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (33, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (34, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (35, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (36, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (37, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (38, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (39, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (40, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (41, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (42, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (43, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (44, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (45, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (46, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (47, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (48, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (49, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (50, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (51, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (52, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (53, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (54, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (55, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (56, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (57, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (58, 'admin1', 'a12345678', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (59, 'admin1', 'a12345678', '2019-06-12', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (60, 'admin1', 'a12345678', '2019-06-12', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (61, 'admin1', 'a12345678', '2019-06-12', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (62, 'admin1', 'a12345678', '2019-06-12', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (63, 'admin1', 'a12345678', '2019-06-13', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (64, 'admin1', 'a12345678', '2019-06-13', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (65, 'admin1', 'a12345678', '2019-06-13', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (66, 'admin1', 'a12345678', '2019-06-13', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (67, 'admin1', 'a12345678', '2019-06-13', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (68, 'admin1', 'a12345678', '2019-06-13', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (69, 'admin1', 'a12345678', '2019-06-13', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (70, 'admin1', 'a12345678', '2019-06-13', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (71, 'admin1', 'a12345678', '2019-06-15', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (72, 'admin1', 'a12345678', '2019-06-15', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator`  (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`, `admin_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES (1, 'admin1', 'a12345678', NULL, NULL);

-- ----------------------------
-- Table structure for com_check_resume
-- ----------------------------
DROP TABLE IF EXISTS `com_check_resume`;
CREATE TABLE `com_check_resume`  (
  `com_check_resume_id` int(11) NOT NULL AUTO_INCREMENT,
  `resume_id` int(11) NULL DEFAULT NULL,
  `com_check_resume_status` int(255) NULL DEFAULT NULL,
  `com_check_resume_time` date NULL DEFAULT NULL,
  `com_check_resume_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_check_resume_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`com_check_resume_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for com_create_team
-- ----------------------------
DROP TABLE IF EXISTS `com_create_team`;
CREATE TABLE `com_create_team`  (
  `com_create_team_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` int(11) NULL DEFAULT NULL,
  `com_founder_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_weibo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_founder_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_founder_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_create_team_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_create_team_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`com_create_team_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_create_team
-- ----------------------------
INSERT INTO `com_create_team` VALUES (1, 1, '1', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_create_team` VALUES (2, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_create_team` VALUES (3, 4, '', '', '', '', NULL, NULL, NULL);
INSERT INTO `com_create_team` VALUES (4, 5, '', '', '', '', NULL, NULL, NULL);
INSERT INTO `com_create_team` VALUES (5, 6, 'yu', '', '', 'a dasd asd asd asda ds asd ', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for com_introduce
-- ----------------------------
DROP TABLE IF EXISTS `com_introduce`;
CREATE TABLE `com_introduce`  (
  `com_introduce_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` int(11) NULL DEFAULT NULL,
  `com_introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`com_introduce_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_introduce
-- ----------------------------
INSERT INTO `com_introduce` VALUES (1, 1, '1');
INSERT INTO `com_introduce` VALUES (2, 2, '2');
INSERT INTO `com_introduce` VALUES (3, 4, '');
INSERT INTO `com_introduce` VALUES (4, 4, '');
INSERT INTO `com_introduce` VALUES (5, 5, '');
INSERT INTO `com_introduce` VALUES (6, 5, '');
INSERT INTO `com_introduce` VALUES (7, 5, '');
INSERT INTO `com_introduce` VALUES (8, 5, '');
INSERT INTO `com_introduce` VALUES (9, 5, '');
INSERT INTO `com_introduce` VALUES (10, 5, '');
INSERT INTO `com_introduce` VALUES (11, 5, '');
INSERT INTO `com_introduce` VALUES (12, 6, '');

-- ----------------------------
-- Table structure for com_label
-- ----------------------------
DROP TABLE IF EXISTS `com_label`;
CREATE TABLE `com_label`  (
  `com_label_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` int(11) NULL DEFAULT NULL,
  `com_label_one` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_label_two` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_label_three` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_label_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_label_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`com_label_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_label
-- ----------------------------
INSERT INTO `com_label` VALUES (1, 1, '1', '1', NULL, NULL, NULL);
INSERT INTO `com_label` VALUES (2, 2, '2', '2', NULL, NULL, NULL);
INSERT INTO `com_label` VALUES (3, 4, '', NULL, NULL, NULL, NULL);
INSERT INTO `com_label` VALUES (4, 5, '', NULL, NULL, NULL, NULL);
INSERT INTO `com_label` VALUES (5, 6, '免费班车', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for com_login
-- ----------------------------
DROP TABLE IF EXISTS `com_login`;
CREATE TABLE `com_login`  (
  `com_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_login_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_login_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_login_time` date NULL DEFAULT NULL,
  `com_pre_login_time` date NULL DEFAULT NULL,
  `com_login_status` int(255) NULL DEFAULT NULL,
  `com_id` int(11) NULL DEFAULT NULL,
  `com_login_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_login_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`com_login_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_login
-- ----------------------------
INSERT INTO `com_login` VALUES (1, NULL, NULL, '2019-05-25', NULL, 1, NULL, NULL, NULL);
INSERT INTO `com_login` VALUES (2, NULL, NULL, '2019-05-25', NULL, 1, NULL, NULL, NULL);
INSERT INTO `com_login` VALUES (3, '1@163.com', 'a12345678', '2019-06-12', NULL, 1, 1, NULL, NULL);
INSERT INTO `com_login` VALUES (4, '1@163.com', 'a12345678', '2019-06-15', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for com_message
-- ----------------------------
DROP TABLE IF EXISTS `com_message`;
CREATE TABLE `com_message`  (
  `com_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` int(11) NULL DEFAULT NULL,
  `com_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_inter_addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_scale` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_deplo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_message_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_message_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`com_message_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_message
-- ----------------------------
INSERT INTO `com_message` VALUES (1, 1, '1', '1', '1', '1', NULL, NULL, '1', '13.jpg', NULL);
INSERT INTO `com_message` VALUES (2, 2, '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_message` VALUES (3, 4, '', '', '', '请选择行业领域', '请选择公司规模', '', '', NULL, NULL);
INSERT INTO `com_message` VALUES (4, 5, '', '', '', '请选择行业领域', '请选择公司规模', '', '', NULL, NULL);
INSERT INTO `com_message` VALUES (5, 6, NULL, 'gg.com', '', '移动互联网', '2000人以上', '天使轮', '', NULL, NULL);
INSERT INTO `com_message` VALUES (6, 8, NULL, '', '', '请选择行业领域', '请选择公司规模', '', '', NULL, NULL);
INSERT INTO `com_message` VALUES (7, 8, NULL, '', '', '请选择行业领域', '请选择公司规模', '', '', NULL, NULL);
INSERT INTO `com_message` VALUES (8, 9, NULL, '', '', '请选择行业领域', '请选择公司规模', '', '', NULL, NULL);

-- ----------------------------
-- Table structure for com_product
-- ----------------------------
DROP TABLE IF EXISTS `com_product`;
CREATE TABLE `com_product`  (
  `com_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` int(11) NULL DEFAULT NULL,
  `com_product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_product_addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_product_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_product_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_product_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`com_product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_product
-- ----------------------------
INSERT INTO `com_product` VALUES (1, 1, '1', '1', '1', NULL, NULL);
INSERT INTO `com_product` VALUES (2, 2, '2', NULL, NULL, NULL, NULL);
INSERT INTO `com_product` VALUES (3, 4, '', '', '', NULL, NULL);
INSERT INTO `com_product` VALUES (4, 5, '', '', '', NULL, NULL);
INSERT INTO `com_product` VALUES (5, 5, '', '', '', NULL, NULL);
INSERT INTO `com_product` VALUES (6, 6, '', '', '', NULL, NULL);

-- ----------------------------
-- Table structure for com_release_job
-- ----------------------------
DROP TABLE IF EXISTS `com_release_job`;
CREATE TABLE `com_release_job`  (
  `com_release_job_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` int(11) NULL DEFAULT NULL,
  `com_release_job_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_release_job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_release_job_depart` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_release_job_prop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_release_job_salary_low` int(255) NULL DEFAULT NULL,
  `com_release_job_salary_high` int(255) NULL DEFAULT NULL,
  `com_release_job_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_release_job_exp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_release_job_requir` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_release_job_temp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_release_job_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_release_job_addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_release_job_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_release_job_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `com_release_job_update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `com_release_job_status` int(255) NULL DEFAULT NULL,
  `com_release_job_resume_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_release_job_resume_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`com_release_job_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_release_job
-- ----------------------------
INSERT INTO `com_release_job` VALUES (1, 1, '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_release_job` VALUES (2, 2, '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `com_release_job` VALUES (3, 1, '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-16 17:49:53', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_release_job_id` int(11) NULL DEFAULT NULL,
  `com_message_id` int(11) NULL DEFAULT NULL,
  `com_product_id` int(11) NULL DEFAULT NULL,
  `com_label_id` int(11) NULL DEFAULT NULL,
  `com_create_team_id` int(11) NULL DEFAULT NULL,
  `com_status` int(11) NULL DEFAULT NULL,
  `com_create_date` timestamp(0) NULL DEFAULT NULL,
  `company_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`com_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, 'a12345678', '1@163.com', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `company` VALUES (2, '2', '2', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `company` VALUES (3, 'xgs', 'dg', 4, 5, 6, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `company` VALUES (4, 'a12345678', 'astro@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-16 17:22:22', NULL, NULL);
INSERT INTO `company` VALUES (5, 'a12345678', '123@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-16 17:28:02', NULL, NULL);
INSERT INTO `company` VALUES (6, 'a12345678', '111@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-16 22:05:04', NULL, NULL);
INSERT INTO `company` VALUES (7, 'a12345678', '123123@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-16 22:09:49', NULL, NULL);
INSERT INTO `company` VALUES (8, 'a12345678', '1231@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-16 22:16:24', NULL, NULL);
INSERT INTO `company` VALUES (9, 'a12345678', '121@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-16 22:20:52', NULL, NULL);

-- ----------------------------
-- Table structure for deliver_resume
-- ----------------------------
DROP TABLE IF EXISTS `deliver_resume`;
CREATE TABLE `deliver_resume`  (
  `deliver_resume_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NULL DEFAULT NULL,
  `com_id` int(11) NULL DEFAULT NULL,
  `resume_id` int(11) NULL DEFAULT NULL,
  `deliver_resume_time` date NULL DEFAULT NULL,
  ` deliver_resume_status` int(255) NULL DEFAULT NULL,
  `deliver_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deliver_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`deliver_resume_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_time` timestamp(0) NULL DEFAULT NULL,
  `pre_login_time` timestamp(0) NULL DEFAULT NULL,
  `login_status` int(255) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `login_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`login_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `login_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '登陆时间',
  `ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登陆IP',
  `device` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 172 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES (1, 4, '2018-01-19 17:50:44', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (2, 4, '2018-01-19 17:51:37', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (3, 4, '2018-01-19 17:54:59', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (4, 4, '2018-01-19 18:01:51', '0:0:0:0:0:0:0:1', 'Win64');
INSERT INTO `login_log` VALUES (5, 4, '2018-01-19 18:07:26', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (6, 4, '2018-01-19 18:24:16', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (7, 4, '2018-01-19 18:32:37', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (8, 4, '2018-01-19 18:32:58', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (9, 4, '2018-01-19 20:07:36', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (10, 4, '2018-01-19 20:53:28', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (11, 4, '2018-01-20 10:49:24', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (12, 4, '2018-01-20 11:13:57', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (13, 4, '2018-01-20 11:50:44', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (14, 4, '2018-01-20 11:54:05', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (15, 4, '2018-01-20 14:00:54', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (16, 4, '2018-01-20 14:03:04', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (17, 3, '2018-01-20 14:21:55', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (18, 4, '2018-01-20 15:04:02', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (19, 3, '2018-01-20 16:09:58', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (20, 4, '2018-01-20 18:30:48', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (21, 3, '2018-01-20 19:06:34', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (22, 4, '2018-01-20 20:13:21', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (23, 4, '2018-01-20 20:16:14', '0:0:0:0:0:0:0:1', 'Win64');
INSERT INTO `login_log` VALUES (24, 4, '2018-01-21 10:07:31', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (25, 4, '2018-01-21 13:25:29', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (26, 4, '2018-01-24 10:12:07', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (27, 4, '2018-01-24 13:49:59', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (28, 4, '2018-01-24 13:56:08', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (29, 4, '2018-01-24 14:00:49', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (30, 4, '2018-01-24 14:01:06', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (31, 4, '2018-01-24 14:07:04', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (32, 4, '2018-01-24 14:45:35', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (33, 4, '2018-01-24 15:32:07', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (34, 4, '2018-01-24 15:33:58', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (35, 4, '2018-01-24 15:49:06', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (36, 4, '2018-01-24 16:51:49', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (37, 4, '2018-01-24 17:28:27', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (38, 4, '2018-01-24 17:39:12', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (39, 4, '2018-01-24 18:53:04', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (40, 4, '2018-01-24 20:33:56', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `login_log` VALUES (41, 4, '2018-01-25 11:48:10', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36');
INSERT INTO `login_log` VALUES (42, 4, '2018-01-25 11:56:35', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36');
INSERT INTO `login_log` VALUES (43, 4, '2018-01-25 18:55:14', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36');
INSERT INTO `login_log` VALUES (44, 4, '2018-01-31 19:06:35', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36');
INSERT INTO `login_log` VALUES (45, 2, '2018-01-31 20:14:32', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36');
INSERT INTO `login_log` VALUES (46, 2, '2018-01-31 20:16:54', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36');
INSERT INTO `login_log` VALUES (47, 4, '2018-02-02 15:28:24', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (48, 1, '2018-02-02 20:21:00', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (49, 1, '2018-02-02 20:25:27', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (50, 1, '2018-02-02 21:25:08', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (51, 4, '2018-02-02 22:44:04', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (52, 4, '2018-02-02 22:45:51', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (53, 4, '2018-02-02 22:45:59', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (54, 4, '2018-02-02 22:53:12', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (55, 4, '2018-02-02 22:54:50', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (56, 4, '2018-02-02 22:55:00', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (57, 4, '2018-02-03 10:17:27', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (58, 4, '2018-02-03 12:07:16', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (59, 4, '2018-02-08 19:37:41', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (60, 4, '2018-02-08 20:17:40', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (61, 4, '2018-02-08 21:04:12', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (62, 4, '2018-02-08 21:15:00', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (63, 4, '2018-02-08 21:18:10', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (64, 4, '2018-02-08 21:18:26', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (65, 4, '2018-02-08 21:25:18', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (66, 4, '2018-02-08 21:33:42', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (67, 4, '2018-02-08 21:41:53', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (68, 4, '2018-02-08 21:43:03', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (69, 1, '2018-02-08 22:31:35', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (70, 1, '2018-02-08 23:06:40', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (71, 1, '2018-02-09 11:17:36', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (72, 1, '2018-02-09 12:21:04', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (73, 1, '2018-02-09 12:22:44', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (74, 1, '2018-02-09 12:32:29', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (75, 6, '2018-02-09 12:36:54', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (76, 6, '2018-02-09 15:25:36', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (77, 6, '2018-02-09 15:29:52', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (78, 6, '2018-02-09 15:43:54', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (79, 6, '2018-02-09 15:50:19', '0:0:0:0:0:0:0:1', 'WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36');
INSERT INTO `login_log` VALUES (80, 7, '2019-05-29 01:50:29', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (81, 7, '2019-05-29 03:06:55', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (82, 7, '2019-05-29 03:17:08', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (83, 7, '2019-05-29 03:27:59', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (84, 7, '2019-05-29 05:09:39', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (85, 7, '2019-05-29 05:46:10', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (86, 7, '2019-05-29 11:33:40', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (87, 7, '2019-05-30 02:48:54', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (88, 7, '2019-05-30 02:57:43', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (89, 7, '2019-05-30 02:58:49', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (90, 7, '2019-05-30 03:04:48', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (91, 7, '2019-05-30 03:12:19', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (92, 7, '2019-05-30 05:23:27', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (93, 7, '2019-05-31 06:29:21', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (94, 7, '2019-05-31 06:45:45', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (95, 7, '2019-05-31 06:49:16', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (96, 7, '2019-05-31 07:02:54', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (97, 7, '2019-05-31 10:09:34', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (98, 7, '2019-05-31 11:11:30', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (99, 7, '2019-06-01 02:21:03', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (100, 7, '2019-06-01 02:46:32', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (101, 7, '2019-06-01 02:47:59', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (102, 7, '2019-06-01 02:48:59', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (103, 7, '2019-06-01 02:51:27', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (104, 7, '2019-06-01 03:07:06', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (105, 7, '2019-06-01 03:07:56', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (106, 7, '2019-06-01 03:10:54', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (107, 7, '2019-06-01 03:20:09', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (108, 7, '2019-06-01 03:32:16', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (109, 7, '2019-06-01 03:38:52', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (110, 7, '2019-06-01 03:42:54', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (111, 7, '2019-06-01 03:46:41', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (112, 7, '2019-06-01 04:06:31', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (113, 7, '2019-06-01 04:07:37', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (114, 7, '2019-06-01 04:08:34', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (115, 7, '2019-06-01 04:09:45', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (116, 7, '2019-06-01 04:10:10', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (117, 7, '2019-06-01 04:12:36', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (118, 7, '2019-06-01 04:17:13', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (119, 7, '2019-06-01 04:19:42', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (120, 7, '2019-06-01 04:21:31', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (121, 7, '2019-06-01 06:16:32', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (122, 7, '2019-06-01 06:17:57', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (123, 7, '2019-06-01 06:24:21', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (124, 7, '2019-06-01 06:26:50', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (125, 7, '2019-06-01 06:31:46', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (126, 7, '2019-06-01 06:32:44', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (127, 7, '2019-06-01 06:39:46', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (128, 7, '2019-06-01 06:43:46', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (129, 7, '2019-06-01 06:45:49', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (130, 7, '2019-06-01 06:48:10', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (131, 7, '2019-06-01 07:00:19', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (132, 7, '2019-06-01 07:00:24', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (133, 7, '2019-06-01 07:12:17', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (134, 7, '2019-06-01 07:29:42', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (135, 7, '2019-06-01 07:31:21', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (136, 7, '2019-06-01 07:35:43', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (137, 7, '2019-06-01 07:38:19', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (138, 7, '2019-06-01 08:11:41', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (139, 7, '2019-06-01 08:53:06', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (140, 7, '2019-06-01 09:24:25', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (141, 7, '2019-06-01 09:31:56', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (142, 7, '2019-06-03 15:10:40', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (143, 7, '2019-06-03 15:32:04', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (144, 7, '2019-06-03 15:36:52', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (145, 7, '2019-06-03 15:50:11', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (146, 7, '2019-06-03 15:51:59', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (147, 7, '2019-06-04 09:09:17', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (148, 7, '2019-06-04 09:17:50', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (149, 7, '2019-06-04 10:18:24', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (150, 7, '2019-06-04 10:27:03', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (151, 7, '2019-06-04 10:36:40', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (152, 7, '2019-06-04 10:47:01', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (153, 7, '2019-06-04 10:48:40', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (154, 7, '2019-06-04 12:27:58', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (155, 7, '2019-06-04 12:33:32', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (156, 7, '2019-06-04 12:38:32', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (157, 7, '2019-06-04 12:44:29', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (158, 7, '2019-06-05 12:40:37', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (159, 7, '2019-06-05 15:20:53', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (160, 7, '2019-06-05 15:26:27', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (161, 7, '2019-06-06 08:50:32', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (162, 7, '2019-06-06 08:50:41', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (163, 7, '2019-06-10 12:21:24', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (164, 7, '2019-06-10 13:02:36', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (165, 7, '2019-06-11 09:44:08', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (166, 7, '2019-06-13 14:43:35', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (167, 7, '2019-06-13 14:52:48', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (168, 7, '2019-06-13 14:55:07', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (169, 7, '2019-06-13 14:59:16', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (170, 7, '2019-06-13 16:40:49', '0:0:0:0:0:0:0:1', 'CHROME');
INSERT INTO `login_log` VALUES (171, 7, '2019-06-13 16:43:21', '0:0:0:0:0:0:0:1', 'CHROME');

-- ----------------------------
-- Table structure for pro_exp
-- ----------------------------
DROP TABLE IF EXISTS `pro_exp`;
CREATE TABLE `pro_exp`  (
  `pro_exp_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_exp_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pro_exp_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pro_exp_duty` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resume_id` int(11) NULL DEFAULT NULL,
  `pro_exp_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pro_exp_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pro_exp_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_exp
-- ----------------------------
INSERT INTO `pro_exp` VALUES (1, 'df', 'sadf', 'sadf', NULL, 'asfd', 'dsaf');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '回复id',
  `topic_id` int(11) NOT NULL COMMENT '主题id',
  `reply_user_id` int(11) NOT NULL COMMENT '用户id',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '回复内容',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `device` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES (1, 2, 2, '测试评论1', '2018-01-19 21:13:59', '2018-02-09 15:51:48', NULL);
INSERT INTO `reply` VALUES (2, 2, 2, '测试留言2', '2018-01-19 21:38:10', '2018-01-19 01:07:07', NULL);
INSERT INTO `reply` VALUES (3, 2, 1, '测试评论1366576', '2018-01-19 21:39:16', '2018-02-09 15:52:06', NULL);
INSERT INTO `reply` VALUES (4, 4, 4, '测试评论1287', '2018-01-20 11:54:11', '2018-02-09 15:53:31', NULL);
INSERT INTO `reply` VALUES (5, 4, 4, '测试评论7689', '2018-01-20 11:54:17', '2018-02-09 15:52:15', NULL);
INSERT INTO `reply` VALUES (6, 2, 4, '测试评论64567575', '2018-01-20 11:54:34', '2018-02-09 15:52:23', NULL);
INSERT INTO `reply` VALUES (7, 1, 4, '测试评论7654323', '2018-01-20 14:03:18', '2018-02-09 15:52:32', NULL);
INSERT INTO `reply` VALUES (8, 3, 3, '测试评论8655', '2018-01-20 15:03:14', '2018-02-09 15:53:23', NULL);
INSERT INTO `reply` VALUES (9, 5, 3, '测试评论2465', '2018-01-20 16:10:37', '2018-02-09 15:52:41', NULL);
INSERT INTO `reply` VALUES (10, 7, 4, 'version ( HTTP/1.1 or HTTP/2 ) \r\n不错！', '2018-01-20 20:14:15', '2018-01-20 20:14:15', NULL);
INSERT INTO `reply` VALUES (11, 7, 4, '测试评论787', '2018-01-20 20:14:21', '2018-02-09 15:52:52', NULL);
INSERT INTO `reply` VALUES (12, 7, 4, '要是 server 也是一行 cli 代码就好了', '2018-01-20 20:14:30', '2018-01-20 20:14:30', NULL);
INSERT INTO `reply` VALUES (13, 8, 4, '这不是队列么……', '2018-01-21 13:27:22', '2018-01-21 13:27:22', NULL);
INSERT INTO `reply` VALUES (14, 8, 4, '活太轻，放队列里去感觉没那么大必要 :-)', '2018-01-21 13:27:32', '2018-01-21 13:27:32', NULL);
INSERT INTO `reply` VALUES (15, 8, 4, '测试评论4324', '2018-01-24 14:01:52', '2018-02-09 15:54:15', NULL);
INSERT INTO `reply` VALUES (16, 9, 4, '测试评论6578', '2018-01-24 19:06:52', '2018-02-09 15:53:04', NULL);
INSERT INTO `reply` VALUES (17, 11, 2, '测试评论5466', '2018-01-31 20:21:27', '2018-02-09 15:54:42', NULL);
INSERT INTO `reply` VALUES (18, 11, 2, 'http://mvnrepository.com/', '2018-01-31 20:23:44', '2018-01-31 20:23:44', NULL);
INSERT INTO `reply` VALUES (19, 7, 4, '测试评论1230', '2018-02-08 21:18:57', '2018-02-09 15:53:13', NULL);
INSERT INTO `reply` VALUES (20, 7, 4, '测试评论3453', '2018-02-08 21:19:03', '2018-02-09 15:54:09', NULL);
INSERT INTO `reply` VALUES (21, 7, 4, '测试评论6475', '2018-02-08 21:19:07', '2018-02-09 15:54:03', NULL);
INSERT INTO `reply` VALUES (22, 1, 4, '测试评论54436', '2018-02-08 21:41:58', '2018-02-09 15:53:56', NULL);
INSERT INTO `reply` VALUES (23, 9, 4, '测试评论5524', '2018-02-08 21:43:09', '2018-02-09 15:53:49', NULL);
INSERT INTO `reply` VALUES (24, 9, 4, '测试评论6754', '2018-02-08 21:43:40', '2018-02-09 15:53:43', NULL);
INSERT INTO `reply` VALUES (25, 11, 1, '测试评论1214', '2018-02-08 22:31:48', '2018-02-09 15:53:38', NULL);
INSERT INTO `reply` VALUES (26, 12, 1, '测试评论65465', '2018-02-09 11:18:08', '2018-02-09 15:54:30', NULL);
INSERT INTO `reply` VALUES (27, 12, 6, '测试评论4364', '2018-02-09 12:38:03', '2018-02-09 15:54:24', NULL);
INSERT INTO `reply` VALUES (28, 12, 6, '嗯嗯', '2018-02-09 15:46:39', '2018-02-09 15:46:39', NULL);
INSERT INTO `reply` VALUES (33, 12, 7, '有道理', '2019-06-04 12:38:58', '2019-06-04 12:38:58', NULL);
INSERT INTO `reply` VALUES (32, 16, 7, '你好', '2019-06-04 12:38:38', '2019-06-04 12:38:38', NULL);
INSERT INTO `reply` VALUES (34, 16, 7, 'okk', '2019-06-05 15:26:34', '2019-06-05 15:26:34', NULL);
INSERT INTO `reply` VALUES (35, 12, 7, '你听听这说的是人话嘛', '2019-06-10 12:21:39', '2019-06-10 12:21:39', NULL);

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume`  (
  `resume_id` int(11) NOT NULL AUTO_INCREMENT,
  `resume_stu_job_nature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resume_stu_work_addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resume_stu_industry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resume_stu_occupation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resume_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resume_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_id` int(11) NULL DEFAULT NULL,
  `resume_stu_salary_low` int(255) NULL DEFAULT NULL,
  `resume_stu_salary_high` int(255) NULL DEFAULT NULL,
  `resume_stu_job_status` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`resume_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES (1, 'on', 'fsda', 'sdfdsa', 'adsfd', 'sadf', '国企', 1, 1, 2, 0);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_birth` date NULL DEFAULT NULL,
  `stu_hometown_province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_hometown_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_addr_province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_addr_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_addr_county` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_read_date` date NULL DEFAULT NULL,
  `stu_major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_degree` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_create_time` timestamp(0) NULL DEFAULT NULL,
  `stu_update_time` timestamp(0) NULL DEFAULT NULL,
  `stu_profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_grad` date NULL DEFAULT NULL,
  `stu_gen` int(255) NULL DEFAULT NULL,
  `stu_status` int(255) NULL DEFAULT NULL,
  `stu_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`stu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '邓凯文', 'kevin2333', '15626151220', 'numbkv@163.com', NULL, NULL, '北京', NULL, '广东省', NULL, NULL, 'gf', NULL, 'dhh', 'fdg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `student` VALUES (7, 'astro', 'a12345678', '15920826814', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for student_login
-- ----------------------------
DROP TABLE IF EXISTS `student_login`;
CREATE TABLE `student_login`  (
  `stu_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_login_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_login_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_login_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_login_time` date NULL DEFAULT NULL,
  `stu_pre_login_time` date NULL DEFAULT NULL,
  `stu_login_status` int(255) NULL DEFAULT NULL,
  `stu_id` int(11) NULL DEFAULT NULL,
  `stu_login_prepare_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_login_prepare_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`stu_login_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_login
-- ----------------------------
INSERT INTO `student_login` VALUES (1, '15626151220', NULL, 'kevin2333', '2019-05-23', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (2, '15626151220', NULL, 'kevin2333', '2019-05-23', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (3, '15626151220', NULL, 'kevin2333', '2019-05-25', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (4, '15626151220', NULL, 'kevin2333', '2019-05-25', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (5, '15626151220', NULL, 'kevin2333', '2019-05-25', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (6, '15626151220', NULL, 'kevin2333', '2019-05-25', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (7, '15626151220', NULL, 'kevin2333', '2019-05-29', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (8, '15626151220', NULL, 'kevin2333', '2019-06-03', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (9, '15626151220', NULL, 'kevin2333', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (10, '15626151220', NULL, 'kevin2333', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (11, '15626151220', NULL, 'kevin2333', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (12, '15626151220', NULL, 'kevin2333', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (13, '15626151220', NULL, 'kevin2333', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (14, '15626151220', NULL, 'kevin2333', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (15, '15626151220', NULL, 'kevin2333', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (16, '15626151220', NULL, 'kevin2333', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (17, '15626151220', NULL, 'kevin2333', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (18, '15626151220', NULL, 'kevin2333', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (19, '15626151220', NULL, 'kevin2333', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (20, '15626151220', NULL, 'kevin2333', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (21, '15626151220', NULL, 'kevin2333', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (22, '15626151220', NULL, 'kevin2333', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (23, '15626151220', NULL, 'kevin2333', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (24, '15626151220', NULL, 'kevin2333', '2019-06-10', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (25, '15626151220', NULL, 'kevin2333', '2019-06-12', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (26, '15626151220', NULL, 'kevin2333', '2019-06-13', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (27, '15626151220', NULL, 'kevin2333', '2019-06-13', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (28, '15626151220', NULL, 'kevin2333', '2019-06-13', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (29, '15920826814', NULL, 'a12345678', '2019-06-13', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (30, '15626151220', NULL, 'kevin2333', '2019-06-13', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (31, '15920826814', NULL, 'a12345678', '2019-06-13', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (32, '15626151220', NULL, 'kevin2333', '2019-06-13', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (33, '15626151220', NULL, 'kevin2333', '2019-06-13', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (34, '15626151220', NULL, 'kevin2333', '2019-06-13', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (35, '15920826814', NULL, 'a12345678', '2019-06-13', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (36, '15920826814', NULL, 'a12345678', '2019-06-13', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (37, '15920826814', NULL, 'a12345678', '2019-06-13', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (38, '15920826814', NULL, 'a12345678', '2019-06-13', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (39, '15920826814', NULL, 'a12345678', '2019-06-14', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (40, '15920826814', NULL, 'a12345678', '2019-06-14', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (41, '15920826814', NULL, 'a12345678', '2019-06-14', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (42, '15920826814', NULL, 'a12345678', '2019-06-15', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (43, '15920826814', NULL, 'a12345678', '2019-06-15', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (44, '15920826814', NULL, 'a12345678', '2019-06-15', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (45, '15920826814', NULL, 'a12345678', '2019-06-15', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (46, '15920826814', NULL, 'a12345678', '2019-06-15', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (47, '15920826814', NULL, 'a12345678', '2019-06-15', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (48, '15920826814', NULL, 'a12345678', '2019-06-15', NULL, 1, 7, NULL, NULL);

-- ----------------------------
-- Table structure for tab
-- ----------------------------
DROP TABLE IF EXISTS `tab`;
CREATE TABLE `tab`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '板块id',
  `tab_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '板块名',
  `tab_name_en` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tab
-- ----------------------------
INSERT INTO `tab` VALUES (1, '公司', 'com');
INSERT INTO `tab` VALUES (2, '个人', 'indiv');
INSERT INTO `tab` VALUES (3, '求助', 'seekHelp');
INSERT INTO `tab` VALUES (4, '招聘会', 'jobsFair');
INSERT INTO `tab` VALUES (5, '其他', 'others');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子ID',
  `user_id` int(11) NOT NULL COMMENT '发帖人id',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '内容',
  `click` int(11) NOT NULL DEFAULT 0 COMMENT '点击量',
  `tab_id` tinyint(4) NOT NULL COMMENT '发布板块',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES (1, 2, '2018-01-20 20:02:13', '2018-02-09 13:21:37', '是否有利用云计算进行异地组网的解决方案？', '现有一中大型企业，下属子公司需接入母公司内网。\r\n目前使用华为 AR1220-S 组网，使用 l2tp 搭建 vpn。使用路由器到路由器的解决方案，现已超过 10 家子公司，使用路由器通过 l2tp 接入母公司内网系统。\r\n随着公司业务增长，今年预计需增加 30 个点接入母公司网络。（未来可能需增加超过 200 个点，且分布全国各地）\r\n\r\n1.请问 AR1220-S 能否胜任，是否需要更换 AR2220-S 或 AR3220-S。\r\n2.子公司使用什么设备能较稳定连接母公司通过华为搭建的 l2tp 的 vpn。（目前使用过极路由和普联，普联表现较为稳定。因大规模部署需要，请问 TL-ER7520g 能否稳定胜任。 目前 tp 最贵的企业路由器，官网上看的。）\r\n3.大规模异地租网是否有更优方案，如利用云中转等，请各位大神们指点，谢谢。', 139, 1);
INSERT INTO `topic` VALUES (2, 3, '2018-01-20 19:55:19', '2018-02-09 15:50:38', '你心目中理想的新闻推荐系统是什么样子？', '实时?\r\n根据兴趣推荐？\r\n关注的频道优先推荐？\r\n根据天气、位置等客观参数推荐\r\n有收藏功能，能自动根据收藏发现兴趣，从而更好地推荐\r\n让更多的人变成内容的创作者而不是单单的阅读者？', 40, 1);
INSERT INTO `topic` VALUES (3, 2, '2018-01-20 19:52:38', '2018-02-08 21:47:28', ' 关于“直播答题发钱”辅助工具搜索推荐算法的讨论', '最近直播火热，网上也看到很多通过“抓图 - 文字识别 - 百度搜题推荐”的程序介绍，自己也整理了一份 \r\n###########举例###################### \r\n问题：9.中国历史上,在位时间最长的皇帝是? \r\n备选答案： [\'康熙\', \'乾隆\', \'刘彻\'] \r\n\r\nAnswer：	[\'刘彻(9.091%)\', \'康熙(63.636%)\', \'乾隆(27.273%)\'] \r\n####################################### \r\n想问问大家，对搜索答案这块的算法，怎么设计，有什么高见？ \r\n\r\n先抛砖引玉，目前想到的算法： \r\n1. 通过百度网页，请求问题，以答案选项作为关键字，数数判断（主流） \r\n2. 对答案采用“中文分词”，针对答案可能是 xxx-yyy-zzz 无法全字匹配的情况 \r\n3. 对问题进行“中文分词“，逆向搜索，针对 “下面那些不是美国的品牌”这类问题 \r\n\r\n对于 1 已经实现，之前也有人发过存在“不”的情况处理；目前想通过 jieba 实现 2 和 3，但是总感觉这块的思考不是“很专业”，请大家吐槽', 23, 1);
INSERT INTO `topic` VALUES (4, 2, '2018-01-20 20:06:24', '2018-02-08 21:24:29', '企业级应用开发真的需要 Vue, React 这种东西吗？', '本人一直从事后端开发，自带一点前端技能（会用 jquery，extjs 组件）。这两年各种前端框架火爆，让我在完成老板任务时有点迷失。感觉不用 MVVM 这些框架，依然能很快的实现各种业务，而且交接工作也比较简单。\r\n用这些框架要增加学习成本，同行（都是后端自带一点前端技能那种）维护成本。但最终交互给客户的界面，依然是增删改查这些功能以及后台业务表逻辑的串接。而 UI 体验很大程度上又取决于交互视觉设计，而非前端框架。\r\n所以我的问题是：企业级应用开发真的需要 Vue, React 这种东西吗？\r\n各互联网大厂又有多少 to C 页面是基于他们实现，并且提升了交付给客户的价值？\r\n为什么精通 Vue React 的前端，在感觉上比框架本身的发明者还亢奋？', 24, 1);
INSERT INTO `topic` VALUES (5, 3, '2018-01-20 19:55:17', '2018-02-08 23:00:42', '使用 Nginx 自建 CDN，关于回源问题。', '假如 3 台服务器,一台源站，2 个自建 CDN，在 Nginx 配置的时候回源方案目前想到 2 个，但不是很好，请问是否有更好的方案。\r\n\r\nA：源站\r\nB:CDN1\r\nC:CDN2\r\n方案一\r\nCDN 上进行 hosts 回源，但是自建 CDN 一多，这样很麻烦。\r\n\r\n方案二\r\n使用 DNSmasq 自建一个 DNS，然后在 nginx 设置 DNS 来指定回源。\r\n\r\n请问有更好的办法来实现回源吗？尤其是自建 CDN 节点较多的情况下。', 37, 1);
INSERT INTO `topic` VALUES (6, 3, '2018-01-20 16:11:32', '2018-02-09 15:14:58', '请问各位喜欢用 JOOQ Hibernate Mybatis 其中哪个框架', '能说一下喜欢的原因是最好的..', 3, 1);
INSERT INTO `topic` VALUES (7, 4, '2018-01-20 20:13:57', '2019-05-29 09:51:52', 'JDK 9 里的 JDK HTTP Client 的写法', 'HttpClient client = HttpClient.newHttpClient();\r\nHttpRequest request = HttpRequest.newBuilder()\r\n      .uri(URI.create(\"http://openjdk.java.net/\"))\r\n      .build();\r\nclient.sendAsync(request, asString())\r\n      .thenApply(HttpResponse::body)\r\n      .thenAccept(System.out::println)\r\n      .join();\r\n还可以指定使用 HTTP/2：\r\n\r\nHttpClient client = HttpClient.newBuilder()\r\n      .version(Version.HTTP_2)\r\n      .followRedirects(Redirect.SAME_PROTOCOL)\r\n      .proxy(ProxySelector.of(new InetSocketAddress(\"www-proxy.com\", 8080)))\r\n      .authenticator(Authenticator.getDefault())\r\n      .build();', 46, 1);
INSERT INTO `topic` VALUES (8, 4, '2018-01-21 13:26:57', '2018-02-09 15:25:23', '数据库怎么最简单实现 “栈” 结构存储？', '', 46, 1);
INSERT INTO `topic` VALUES (9, 4, '2018-01-24 16:57:44', '2019-05-29 09:47:24', '腾讯云能不能别给我发优惠券短信了', '我对你的优惠券不感兴趣啊，能不能不要发了，每天都发，有时一天还要发好几次', 64, 2);
INSERT INTO `topic` VALUES (10, 4, '2018-01-25 11:52:12', '2018-02-09 15:50:22', '应用程序在服务器上创建文件目录权限 0777，会有风险吗？', '应用程序 App （是 root ）在服务器上创建了一个文件目录，权限设 0777, 会有风险吗？ \r\n（当然，前提是服务器一般不会配除 root 外的其他账户，也不会把这个文件目录直接开给 web server 的公开路径）', 12, 1);
INSERT INTO `topic` VALUES (11, 4, '2018-01-25 12:04:44', '2019-06-04 20:32:30', 'P2P 直播测试，这个数据如何？', '', 115, 1);
INSERT INTO `topic` VALUES (12, 4, '2018-02-08 22:17:16', '2019-06-10 20:21:39', 'Genesis祝各位会员新年好', 'Genesis祝各位会员新年好Genesis祝各位会员新年好', 81, 1);
INSERT INTO `topic` VALUES (19, 7, '2019-06-10 12:24:43', '2019-06-13 17:42:06', '其他个鬼', '啊', 2, 5);
INSERT INTO `topic` VALUES (18, 7, '2019-06-10 12:24:30', '2019-06-10 12:24:30', '有人要我嘛', '？', 0, 4);
INSERT INTO `topic` VALUES (17, 7, '2019-06-10 12:24:09', '2019-06-10 12:24:09', '怎么办', '不会写', 0, 3);
INSERT INTO `topic` VALUES (16, 7, '2019-05-31 07:03:04', '2019-06-05 23:26:34', '测试123456', '测试', 15, 1);
INSERT INTO `topic` VALUES (20, 7, '2019-06-13 17:43:12', '2019-06-13 17:43:12', '测试12345', '', 0, 5);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户唯一ID',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone_num` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `credit` int(11) NOT NULL COMMENT '积分',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像url',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '用户类型,0为普通用户,1为管理员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'likky', 'E10ADC3949BA59ABBE56E057F20F883E', '123456789@126.com', '8615712345678', '2018-02-08 23:06:40', '2019-06-12 22:53:37', 23, '/images/avatar/avatar-default-1.png', 0);
INSERT INTO `user` VALUES (2, 'withstars', 'E10ADC3949BA59ABBE56E057F20F883E', '987654321@qq.com', '8616978945612', '2018-01-31 20:16:54', '2019-06-12 22:53:40', 10, '/images/avatar/avatar-default-2.png', 0);
INSERT INTO `user` VALUES (3, 'yilia', 'E10ADC3949BA59ABBE56E057F20F883E', '147258369@qq.com', '8615963248962', '2018-01-20 14:18:58', '2019-06-12 22:54:00', 0, '/images/avatar/avatar-default-3.png', 0);
INSERT INTO `user` VALUES (4, 'sassy', 'E10ADC3949BA59ABBE56E057F20F883E', '159357846@qq.com', '8612543434343', '2018-02-08 22:17:16', '2019-06-12 22:54:05', 156, '/images/avatar/avatar-default-4.png', 0);
INSERT INTO `user` VALUES (6, 'objectc', 'A45958517604F5CD90D6EE51AD9CFDB6', '963852741@qq.com', '8619345321598', '2018-02-09 12:36:39', '2019-06-12 22:54:08', 7, '/images/avatar/avatar-default-5.png', 0);
INSERT INTO `user` VALUES (7, 'astro', '3642904912CA0BA70A011960C3E86166', '111111111@qq.com', '8615920826814', '2019-05-29 01:49:53', '2019-06-13 17:43:12', 107, '/images/avatar/1559645659846-7.jpg', 0);

SET FOREIGN_KEY_CHECKS = 1;
