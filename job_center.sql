/*
 Navicat Premium Data Transfer

 Source Server         : as
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : job_center

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 20/06/2019 10:44:22
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
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_login
-- ----------------------------
INSERT INTO `admin_login` VALUES (73, 'admin1', 'a12345678', '2019-06-19', NULL, 1, 1, NULL, NULL);
INSERT INTO `admin_login` VALUES (74, 'admin1', 'a12345678', '2019-06-19', NULL, 1, 1, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `com_create_team` VALUES (6, 4, '蕉先生', '创始人', 'sina.banana.com', '创建了香蕉智能品牌。', NULL, NULL, NULL);
INSERT INTO `com_create_team` VALUES (7, 5, '马毅', '创始人', 'sina.ant.com', '创建了蚂蚁搬家公司。', NULL, NULL, NULL);
INSERT INTO `com_create_team` VALUES (8, 9, '阿亚斯', '创始人', 'sina.xiyasi.com', '创建了希亚思公司。', NULL, NULL, NULL);
INSERT INTO `com_create_team` VALUES (9, 10, '驴云', 'CEO', 'lvyun@sina.com', '强无敌，带着一群人从北京创业到杭州', NULL, NULL, NULL);

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
INSERT INTO `com_introduce` VALUES (13, 4, '深圳市香蕉智能科技有限公司于2017年12月12日成立，是一个立足于高科技的知名企业。');
INSERT INTO `com_introduce` VALUES (14, 5, '广州蚂蚁搬家运输有限公司承接广州市内外的长短途居民搬家，能及时为广大用户提供搬家服务。');
INSERT INTO `com_introduce` VALUES (15, 9, '作为一家拥有多领域业务经验和精通传统与最新IT技术的知识集约型企业，CAC上海擅长为客户提供最适合的一站式IT解决方案。');
INSERT INTO `com_introduce` VALUES (16, 10, '企业文化，撒币，钱多\n国内巨头，应该感谢自己能996');

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
INSERT INTO `com_label` VALUES (6, 4, '年底双薪\n交通补助\n五险一金\n带薪年假\n定期体检\n节日礼物\n午餐补助\n帅哥多\n技能培训', NULL, NULL, NULL, NULL);
INSERT INTO `com_label` VALUES (7, 5, '专项奖金\n五险一金\n午餐补助\n扁平管理\n技能培训', NULL, NULL, NULL, NULL);
INSERT INTO `com_label` VALUES (8, 9, '绩效奖金\n年底双薪\n五险一金\n带薪年假\n免费班车\n节日礼物\n定期体检\n帅哥多\n美女多\n领导好', NULL, NULL, NULL, NULL);
INSERT INTO `com_label` VALUES (9, 10, '年终分红\n专项奖金\n年底双薪\n绩效奖金\n股票期权\n交通补助\n通讯津贴\n五险一金\n带薪年假\n免费班车\n弹性工作\n节日礼物\n定期体检\n午餐补助\n年度旅游\n管理规范\n技能培训\n岗位晋升\n扁平管理\n领导好\n美女多\n帅哥多', NULL, NULL, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_login
-- ----------------------------
INSERT INTO `com_login` VALUES (5, '1@163.com', 'a12345678', '2019-06-19', NULL, 1, 4, NULL, NULL);
INSERT INTO `com_login` VALUES (6, '1@163.com', 'a12345678', '2019-06-19', NULL, 1, 4, NULL, NULL);
INSERT INTO `com_login` VALUES (7, '1@163.com', 'a12345678', '2019-06-19', NULL, 1, 4, NULL, NULL);
INSERT INTO `com_login` VALUES (8, '1@163.com', 'a12345678', '2019-06-19', NULL, 1, 4, NULL, NULL);
INSERT INTO `com_login` VALUES (9, 'ant@126.com', 'a12345678', '2019-06-19', NULL, 1, 5, NULL, NULL);
INSERT INTO `com_login` VALUES (10, '1@163.com', 'a12345678', '2019-06-19', NULL, 1, 4, NULL, NULL);
INSERT INTO `com_login` VALUES (11, 'ant@126.com', 'a12345678', '2019-06-19', NULL, 1, 5, NULL, NULL);
INSERT INTO `com_login` VALUES (12, '1@163.com', 'a12345678', '2019-06-19', NULL, 1, 4, NULL, NULL);
INSERT INTO `com_login` VALUES (13, 'cac@qq.com', 'a12345678', '2019-06-20', NULL, 1, 9, NULL, NULL);
INSERT INTO `com_login` VALUES (14, 'alibaba@163.com', 'a12345678', '2019-06-20', NULL, 1, 10, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_message
-- ----------------------------
INSERT INTO `com_message` VALUES (9, 4, '香蕉智能', 'www.banana.com', '深圳', '移动互联网,智能家居', '500-2000人', 'D轮及以上', '制造未来机器人的香蕉科技，你值得期待。', NULL, NULL);
INSERT INTO `com_message` VALUES (10, 5, '蚂蚁搬家', 'http://www.gzmybanjia.cn/', '广州', '生活服务', '50-150人', '未融资', '蚂蚁搬家为广州市民提供各种专业的搬家、搬迁服务。', NULL, NULL);
INSERT INTO `com_message` VALUES (11, 9, '希亚思', 'http://www.cacshanghai.com/www/', '上海', '移动互联网,企业服务', '50-150人', 'B轮', '独立而中立、以用户为导向、对成果物负责', NULL, NULL);
INSERT INTO `com_message` VALUES (13, 10, '阿里爸爸', 'alibaba.com', '杭州', '电子商务', '2000人以上', '上市公司', '还用说吗？', NULL, NULL);

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
INSERT INTO `com_product` VALUES (7, 4, '50℃ Candle(180g)', 'https://www.banana.com/home/View/product_list.html', 'Banana情调香氛蜡烛', NULL, NULL);
INSERT INTO `com_product` VALUES (8, 5, '搬家服务', 'http://www.gzmybanjia.cn/-c=msg', '办公室搬迁、物品包装、重型设备迁移、仓储等多项服务。', NULL, NULL);
INSERT INTO `com_product` VALUES (9, 9, '现金管理解决方案', 'http://www.cacshanghai.com/www/index.php?m=page', '根据最适合的架构和组件的选定，推进优化灵活性和扩展性的系统构筑与运用维护。', NULL, NULL);
INSERT INTO `com_product` VALUES (10, 10, '淘宝', 'https://www.taobao.com/', '你自己好好想想谁是你爸爸', NULL, NULL);

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
INSERT INTO `com_release_job` VALUES (4, 4, '运营', '产品运营', '市场部', '全职', 6, 20, '深圳', '应届毕业生', '本科', '福利待遇好', '负责产品运营，推广产品。', '广东深圳市南山区侨香路智慧广场A座1103', 'admin@admin.com', '2019-06-19 19:59:42', NULL, 1, NULL, NULL);
INSERT INTO `com_release_job` VALUES (5, 5, '人力资源', '绩效考核经理', '劳动部', '全职', 3, 8, '广州', '不限', '不限', '经理福利待遇好', '主要负责绩效考核。', '广州市天河区科韵路298号', 'admin@admin.com', '2019-06-19 20:29:23', NULL, 1, NULL, NULL);
INSERT INTO `com_release_job` VALUES (6, 9, '运维', 'IT支持', 'IT部', '兼职', 2, 3, '上海', '3-5年', '硕士', '福利待遇好', '负责IT支持', '上海市浦东新区世纪大道1589号长泰国际金融大厦302室', 'admin@admin.com', '2019-06-19 21:50:25', NULL, 1, NULL, NULL);
INSERT INTO `com_release_job` VALUES (7, 9, '测试', '测试工程师', 'IT部', '全职', 6, 8, '上海', '1-3年', '大专', '福利待遇好', '负责测试产品和方案。', '上海市浦东新区世纪大道1589号长泰国际金融大厦302室', 'admin@admin.com', '2019-06-19 21:51:21', NULL, 1, NULL, NULL);
INSERT INTO `com_release_job` VALUES (8, 10, 'DBA', 'MySQL', '数据部', '全职', 10, 100, '杭州', '应届毕业生', '本科', '非常多的钱。', '保护我们的数据，不然你就gg了', '广东大学城', 'admin@admin.com', '2019-06-20 00:15:29', NULL, 1, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (4, 'a12345678', '1@163.com', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-19 19:50:23', NULL, NULL);
INSERT INTO `company` VALUES (5, 'a12345678', 'ant@126.com', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-19 20:23:01', NULL, NULL);
INSERT INTO `company` VALUES (9, 'a12345678', 'cac@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-19 21:44:53', NULL, NULL);
INSERT INTO `company` VALUES (10, 'a12345678', 'alibaba@163.com', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-20 00:09:35', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_exp
-- ----------------------------
INSERT INTO `pro_exp` VALUES (3, '就业服务网站', '做了一个可以帮助学生和企业互相沟通交流的网站', '后端', 4, '三个月', '非常棒');
INSERT INTO `pro_exp` VALUES (4, '就业服务网站', '做了一个造福学生的好网站', '前端', 5, '三个月', '我很好');
INSERT INTO `pro_exp` VALUES (5, '就业服务网站', '为中大学子做一个好用的就业服务网站', '后端开发', 6, '三个月', '我可以');
INSERT INTO `pro_exp` VALUES (6, '就业服务网站', '做了一个网站', '后端', 7, '三个月', '超棒的');
INSERT INTO `pro_exp` VALUES (7, '就业服务网站', '做了网站', '前端', 8, '三个月', '挺好的');
INSERT INTO `pro_exp` VALUES (8, '就业服务', '网站', '后端', 9, '三个月', '好开心');

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
INSERT INTO `reply` VALUES (36, 23, 8, '哇 给大佬鼓掌', '2019-06-19 21:24:50', '2019-06-19 21:24:50', NULL);
INSERT INTO `reply` VALUES (37, 25, 3, '我要加入！', '2019-06-19 21:26:18', '2019-06-19 21:26:18', NULL);
INSERT INTO `reply` VALUES (38, 26, 3, '唉呀，我也是。', '2019-06-19 21:26:42', '2019-06-19 21:26:42', NULL);
INSERT INTO `reply` VALUES (39, 21, 4, '这位同学，我看你骨骼清奇，是个可塑之才，要不要来我们公司？', '2019-06-19 21:36:05', '2019-06-19 21:36:05', NULL);
INSERT INTO `reply` VALUES (40, 23, 7, '来早了', '2019-06-19 21:39:20', '2019-06-19 21:39:20', NULL);
INSERT INTO `reply` VALUES (41, 26, 7, '太惨了吧', '2019-06-19 21:39:48', '2019-06-19 21:39:48', NULL);
INSERT INTO `reply` VALUES (42, 23, 2, '来早了', '2019-06-19 21:42:19', '2019-06-19 21:42:19', NULL);
INSERT INTO `reply` VALUES (43, 24, 2, '有没有联系方式啊', '2019-06-19 21:42:32', '2019-06-19 21:42:32', NULL);
INSERT INTO `reply` VALUES (44, 27, 2, 'mybatis', '2019-06-19 21:42:44', '2019-06-19 21:42:44', NULL);
INSERT INTO `reply` VALUES (45, 25, 2, '我也要我也要', '2019-06-19 21:53:02', '2019-06-19 21:53:02', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES (4, 'on', '广州', 'java开发', '程序员', '长得帅 还很高', '外企', 1, 10, 30, 0);
INSERT INTO `resume` VALUES (5, 'on', '广州', '互联网行业', '前端', '审美能力一级棒，前端网页美得慌', '国企', 3, 8, 20, 0);
INSERT INTO `resume` VALUES (6, 'on', '广州', '互联网行业', '后端', '认真干活', '私企', 7, 8, 20, 0);
INSERT INTO `resume` VALUES (7, 'on', '北京', '互联网行业', '程序员', '中大彭于晏', '国企', 2, 10, 20, 0);
INSERT INTO `resume` VALUES (8, 'on', '广州', '金融', '白领', 'wjwj你真棒', '国企', 6, 8, 20, 0);
INSERT INTO `resume` VALUES (9, 'on', '广州', '互联网行业', '产品经理', '未来的产品经理', '外企', 8, 8, 20, 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '邓凯文', 'kevin2333', '15626151220', 'kevin@gmail.com', '1', NULL, '黑龙江', NULL, '广州', NULL, NULL, '中山大学', NULL, '信管', '本科', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `student` VALUES (2, '郑宇航', 'a12345678', '15920826814', '514@qq.com', '1', NULL, '广东', NULL, '广州', NULL, NULL, '中山大学', NULL, '信管', '本科', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `student` VALUES (3, '温惠琴', 'a12345678', '13717119486', 'huiqin@163.com', '0', NULL, '广东', NULL, '广州', NULL, NULL, '中山大学', NULL, '信管', '本科', '2019-06-19 20:52:00', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `student` VALUES (6, '韦婕', 'a12345678', '13390769795', 'weij@qq.com', '0', NULL, '安徽', NULL, '广州', NULL, NULL, '中山大学', NULL, '信管', '本科', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `student` VALUES (7, '彭泳欣', '123123QAZ', '15113336828', 'starovo123@163.com', '0', NULL, '广东', NULL, '广州', NULL, NULL, '中山大学', NULL, '信管', '本科', '2019-06-19 19:52:03', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `student` VALUES (8, '张然', 'a12345678', '15521005902', 'zr@163.com', '0', NULL, '北京', NULL, '广州', NULL, NULL, '中山大学', NULL, '信管', '本科', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_login
-- ----------------------------
INSERT INTO `student_login` VALUES (56, '15626151220', NULL, 'kevin2333', '2019-06-19', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (57, '15626151220', NULL, 'kevin2333', '2019-06-19', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (58, '15626151220', NULL, 'kevin2333', '2019-06-19', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (59, '15626151220', NULL, 'kevin2333', '2019-06-19', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (60, '15626151220', NULL, 'kevin2333', '2019-06-19', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (61, '15626151220', NULL, 'kevin2333', '2019-06-19', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (62, '15626151220', NULL, 'kevin2333', '2019-06-19', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (63, '15920826814', NULL, 'a12345678', '2019-06-19', NULL, 1, 2, NULL, NULL);
INSERT INTO `student_login` VALUES (64, '13717119486', NULL, 'a12345678', '2019-06-19', NULL, 1, 3, NULL, NULL);
INSERT INTO `student_login` VALUES (65, '13390769795', NULL, 'a12345678', '2019-06-19', NULL, 1, 6, NULL, NULL);
INSERT INTO `student_login` VALUES (66, '13717119486', NULL, 'a12345678', '2019-06-19', NULL, 1, 3, NULL, NULL);
INSERT INTO `student_login` VALUES (67, '13717119486', NULL, 'a12345678', '2019-06-19', NULL, 1, 3, NULL, NULL);
INSERT INTO `student_login` VALUES (68, '13717119486', NULL, 'a12345678', '2019-06-19', NULL, 1, 3, NULL, NULL);
INSERT INTO `student_login` VALUES (69, '15113336828', NULL, 'a12345678', '2019-06-19', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (70, '15113336828', NULL, 'a12345678', '2019-06-19', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (71, '15920826814', NULL, 'a12345678', '2019-06-19', NULL, 1, 2, NULL, NULL);
INSERT INTO `student_login` VALUES (72, '15920826814', NULL, 'a12345678', '2019-06-19', NULL, 1, 2, NULL, NULL);
INSERT INTO `student_login` VALUES (73, '15626151220', NULL, 'kevin2333', '2019-06-19', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (74, '13390769795', NULL, 'a12345678', '2019-06-19', NULL, 1, 6, NULL, NULL);
INSERT INTO `student_login` VALUES (75, '15113336828', NULL, 'a12345678', '2019-06-19', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (76, '13390769795', NULL, 'a12345678', '2019-06-19', NULL, 1, 6, NULL, NULL);
INSERT INTO `student_login` VALUES (77, '15626151220', NULL, 'kevin2333', '2019-06-19', NULL, 1, 1, NULL, NULL);
INSERT INTO `student_login` VALUES (78, '15521005902', NULL, 'a12345678', '2019-06-19', NULL, 1, 8, NULL, NULL);
INSERT INTO `student_login` VALUES (79, '13717119486', NULL, 'a12345678', '2019-06-19', NULL, 1, 3, NULL, NULL);
INSERT INTO `student_login` VALUES (80, '15521005902', NULL, 'a12345678', '2019-06-19', NULL, 1, 8, NULL, NULL);
INSERT INTO `student_login` VALUES (81, '15113336828', NULL, '123123QAZ', '2019-06-19', NULL, 1, 7, NULL, NULL);
INSERT INTO `student_login` VALUES (82, '15920826814', NULL, 'a12345678', '2019-06-19', NULL, 1, 2, NULL, NULL);

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
INSERT INTO `topic` VALUES (21, 2, '2019-06-19 20:59:56', '2019-06-20 10:41:40', '有人要我嘛', '我想去大公司', 7, 2);
INSERT INTO `topic` VALUES (22, 4, '2019-06-19 21:04:33', '2019-06-20 10:41:45', '香蕉智能招人啦！', '欢迎中大的同学积极投递简历~ 详情请看公司主页。', 3, 1);
INSERT INTO `topic` VALUES (23, 1, '2019-06-19 21:08:53', '2019-06-20 10:41:56', '是否有利用云计算进行异地组网的解决方案？', '现有一中大型企业，下属子公司需接入母公司内网。\r\n目前使用华为 AR1220-S 组网，使用 l2tp 搭建 vpn。使用路由器到路由器的解决方案，现已超过 10 家子公司，使用路由器通过 l2tp 接入母公司内网系统。\r\n随着公司业务增长，今年预计需增加 30 个点接入母公司网络。（未来可能需增加超过 200 个点，且分布全国各地）\r\n\r\n1.请问 AR1220-S 能否胜任，是否需要更换 AR2220-S 或 AR3220-S。\r\n\r\n2.子公司使用什么设备能较稳定连接母公司通过华为搭建的 l2tp 的 vpn。（目前使用过极路由和普联，普联表现较为稳定。因大规模部署需要，请问 TL-ER7520g 能否稳定胜任。 目前 tp 最贵的企业路由器，官网上看的。）\r\n\r\n3.大规模异地租网是否有更优方案，如利用云中转等，请各位大神们指点，谢谢。', 11, 3);
INSERT INTO `topic` VALUES (24, 5, '2019-06-19 21:13:03', '2019-06-20 10:41:38', '蚂蚁搬家，帮你搬家，一起搬家', '毕业季还在苦恼不知道怎么搬家嘛，蚂蚁搬家是你的好伙伴，当然想加入我们就最好了，赶紧来报名吧！', 4, 1);
INSERT INTO `topic` VALUES (25, 7, '2019-06-19 21:15:23', '2019-06-20 10:41:32', '毕业季鲜花互送业务', '毕业了，怕没人送你花吗？没事！我们是专业的，不同年轻人给你送花，加入我们吧！', 5, 2);
INSERT INTO `topic` VALUES (26, 6, '2019-06-19 21:18:09', '2019-06-19 21:52:48', '腾讯云能不能别给我发优惠券短信了', '我对你的优惠券不感兴趣啊，能不能不要发了，每天都发，有时一天还要发好几次。', 7, 5);
INSERT INTO `topic` VALUES (27, 8, '2019-06-19 21:38:07', '2019-06-20 10:41:26', '请问各位喜欢用 JOOQ, Hibernate, Mybatis 其中哪个框架？', '能说一下喜欢的原因是最好的..', 5, 2);

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
INSERT INTO `user` VALUES (1, '邓凯文', 'kevin2333', NULL, '15626151220', '2019-06-19 19:01:21', '2019-06-19 21:08:53', 1, '/images/avatar/avatar-default-1.png', 0);
INSERT INTO `user` VALUES (2, '郑宇航', 'a12345678', NULL, '15920826814', '2019-06-19 19:47:25', '2019-06-19 21:53:02', 5, '/images/avatar/1560936174752-1.jpg', 0);
INSERT INTO `user` VALUES (3, '温惠琴', 'a12345678', NULL, '13717119486', '2019-06-19 19:49:02', '2019-06-19 21:26:42', 2, '/images/avatar/avatar-default-2.png', 0);
INSERT INTO `user` VALUES (4, '香蕉智能', 'a12345678', '1@163.com', NULL, '2019-06-19 19:50:23', '2019-06-19 21:36:05', 2, '/images/avatar/avatar-default-3.png', 0);
INSERT INTO `user` VALUES (5, '蚂蚁搬家', 'a12345678', 'ant@126.com', NULL, '2019-06-19 20:23:01', '2019-06-19 21:13:03', 1, '/images/avatar/avatar-default-4.png', 0);
INSERT INTO `user` VALUES (6, '韦婕', 'a12345678', NULL, '13390769795', '2019-06-19 20:30:42', '2019-06-19 21:18:09', 1, '/images/avatar/avatar-default-5.png', 0);
INSERT INTO `user` VALUES (7, '彭泳欣', '123123QAZ', NULL, '15113336828', '2019-06-19 20:46:21', '2019-06-19 21:39:48', 3, '/images/avatar/1559645659846-7.jpg', 0);
INSERT INTO `user` VALUES (8, '张然', 'a12345678', NULL, '15521005902', '2019-06-19 21:20:45', '2019-06-19 21:38:07', 2, '/images/avatar/avatar-default-8.png', 0);
INSERT INTO `user` VALUES (9, '希亚思', 'a12345678', 'cac@qq.com', NULL, '2019-06-19 21:44:53', '2019-06-19 21:45:56', 0, '/images/avatar/avatar-default-9.png', 0);
INSERT INTO `user` VALUES (10, '阿里爸爸', 'a12345678', 'alibaba@163.com', NULL, '2019-06-20 00:09:35', '2019-06-20 00:10:21', 0, '/images/avatar/avatar-default-9.png', 0);

SET FOREIGN_KEY_CHECKS = 1;
