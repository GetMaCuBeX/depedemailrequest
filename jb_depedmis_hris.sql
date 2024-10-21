/*
 Navicat Premium Dump SQL

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : localhost:3306
 Source Schema         : depedmis_hris

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 21/10/2024 10:24:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for jb_coa_ppe_annex_a
-- ----------------------------
DROP TABLE IF EXISTS `jb_coa_ppe_annex_a`;
CREATE TABLE `jb_coa_ppe_annex_a`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `old_property_no_assigned` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `new_property_no_assigned` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'TO BE FILLED DURING VALIDATION',
  `unit_of_measure` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `unit_value` double(16, 2) NULL DEFAULT NULL,
  `date_aquired` date NULL DEFAULT NULL,
  `quantity_per_property_card` double(11, 2) NULL DEFAULT NULL,
  `quantity_per_physical_count` double(11, 2) NULL DEFAULT NULL,
  `localtion_whereabouts` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `condition_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `school_idnumber` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_jb_coa_ppe_annex_a_jb_coa_ppe_legend_article_1`(`article_id` ASC) USING BTREE,
  INDEX `fk_jb_coa_ppe_annex_a_jb_coa_ppe_group_condition_2`(`condition_name` ASC) USING BTREE,
  INDEX `fk_jb_coa_ppe_annex_a_jb_school_3`(`school_idnumber` ASC) USING BTREE,
  CONSTRAINT `fk_jb_coa_ppe_annex_a_jb_coa_ppe_group_condition_2` FOREIGN KEY (`condition_name`) REFERENCES `jb_coa_ppe_group_condition` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_jb_coa_ppe_annex_a_jb_coa_ppe_legend_article_1` FOREIGN KEY (`article_id`) REFERENCES `jb_coa_ppe_group_article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_jb_coa_ppe_annex_a_jb_school_3` FOREIGN KEY (`school_idnumber`) REFERENCES `jb_school` (`school_idnumber`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jb_coa_ppe_annex_a
-- ----------------------------

-- ----------------------------
-- Table structure for jb_coa_ppe_annex_b
-- ----------------------------
DROP TABLE IF EXISTS `jb_coa_ppe_annex_b`;
CREATE TABLE `jb_coa_ppe_annex_b`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `new_property_no_assigned` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `person_accountable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `unit_cost_value` double(16, 2) NULL DEFAULT NULL,
  `total_cost_value` double(16, 2) NULL DEFAULT NULL COMMENT 'MANUAL INPUT',
  `condition_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `school_idnumber` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_jb_coa_ppe_annex_b_jb_coa_ppe_legend_article_1`(`article_id` ASC) USING BTREE,
  INDEX `fk_jb_coa_ppe_annex_b_jb_coa_ppe_group_condition_2`(`condition_name` ASC) USING BTREE,
  INDEX `fk_jb_coa_ppe_annex_b_jb_school_3`(`school_idnumber` ASC) USING BTREE,
  CONSTRAINT `fk_jb_coa_ppe_annex_b_jb_coa_ppe_group_condition_2` FOREIGN KEY (`condition_name`) REFERENCES `jb_coa_ppe_group_condition` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_jb_coa_ppe_annex_b_jb_coa_ppe_legend_article_1` FOREIGN KEY (`article_id`) REFERENCES `jb_coa_ppe_group_article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_jb_coa_ppe_annex_b_jb_school_3` FOREIGN KEY (`school_idnumber`) REFERENCES `jb_school` (`school_idnumber`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jb_coa_ppe_annex_b
-- ----------------------------

-- ----------------------------
-- Table structure for jb_coa_ppe_annex_c
-- ----------------------------
DROP TABLE IF EXISTS `jb_coa_ppe_annex_c`;
CREATE TABLE `jb_coa_ppe_annex_c`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `old_property_no_assigned` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `person_accountable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `unit_cost_value` double(16, 2) NULL DEFAULT NULL,
  `total_cost_value` double(16, 2) NULL DEFAULT NULL COMMENT 'MANUAL INPUT',
  `condition_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `school_idnumber` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_jb_coa_ppe_annex_c_jb_coa_ppe_group_article_1`(`article_id` ASC) USING BTREE,
  INDEX `fk_jb_coa_ppe_annex_c_jb_coa_ppe_group_condition_2`(`condition_name` ASC) USING BTREE,
  INDEX `fk_jb_coa_ppe_annex_c_jb_school_3`(`school_idnumber` ASC) USING BTREE,
  CONSTRAINT `fk_jb_coa_ppe_annex_c_jb_coa_ppe_group_article_1` FOREIGN KEY (`article_id`) REFERENCES `jb_coa_ppe_group_article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_jb_coa_ppe_annex_c_jb_coa_ppe_group_condition_2` FOREIGN KEY (`condition_name`) REFERENCES `jb_coa_ppe_group_condition` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_jb_coa_ppe_annex_c_jb_school_3` FOREIGN KEY (`school_idnumber`) REFERENCES `jb_school` (`school_idnumber`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jb_coa_ppe_annex_c
-- ----------------------------

-- ----------------------------
-- Table structure for jb_coa_ppe_group
-- ----------------------------
DROP TABLE IF EXISTS `jb_coa_ppe_group`;
CREATE TABLE `jb_coa_ppe_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jb_coa_ppe_group
-- ----------------------------

-- ----------------------------
-- Table structure for jb_coa_ppe_group_article
-- ----------------------------
DROP TABLE IF EXISTS `jb_coa_ppe_group_article`;
CREATE TABLE `jb_coa_ppe_group_article`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_jb_coa_ppe_legend_article_jb_coa_ppe_legend_1`(`group_id` ASC) USING BTREE,
  CONSTRAINT `fk_jb_coa_ppe_legend_article_jb_coa_ppe_legend_1` FOREIGN KEY (`group_id`) REFERENCES `jb_coa_ppe_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jb_coa_ppe_group_article
-- ----------------------------

-- ----------------------------
-- Table structure for jb_coa_ppe_group_condition
-- ----------------------------
DROP TABLE IF EXISTS `jb_coa_ppe_group_condition`;
CREATE TABLE `jb_coa_ppe_group_condition`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jb_coa_ppe_group_condition
-- ----------------------------

-- ----------------------------
-- Table structure for jb_depedemailrequest
-- ----------------------------
DROP TABLE IF EXISTS `jb_depedemailrequest`;
CREATE TABLE `jb_depedemailrequest`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `school_id` int NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `plantilla` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mis_emp_table_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `concern` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `concern_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `reset_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `reset_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `contact_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deped_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `personal_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `response_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `processed_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `response_date` datetime NULL DEFAULT NULL,
  `co_inquired_date` datetime NULL DEFAULT NULL,
  `co_response_date` datetime NULL DEFAULT NULL,
  `is_delete` tinyint(1) NULL DEFAULT NULL,
  `is_seen` tinyint(1) NULL DEFAULT NULL,
  `is_cancel` tinyint(1) NULL DEFAULT NULL,
  `is_done` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jb_depedemailrequest
-- ----------------------------

-- ----------------------------
-- Table structure for jb_district
-- ----------------------------
DROP TABLE IF EXISTS `jb_district`;
CREATE TABLE `jb_district`  (
  `district_id` int NOT NULL AUTO_INCREMENT,
  `division_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `location` point NULL,
  `congressional_district` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`district_id`) USING BTREE,
  INDEX `fk_district_division_1`(`division_id` ASC) USING BTREE,
  CONSTRAINT `fk_district_division_1` FOREIGN KEY (`division_id`) REFERENCES `jb_division` (`division_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jb_district
-- ----------------------------
INSERT INTO `jb_district` VALUES (1, 1, 'BAGANGA NORTH', NULL, NULL, 1, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (2, 1, 'BAGANGA SOUTH', NULL, NULL, 1, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (3, 1, 'BANAYBANAY', NULL, NULL, 2, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (4, 1, 'BOSTON', NULL, NULL, 1, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (5, 1, 'CARAGA NORTH', NULL, NULL, 1, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (6, 1, 'CARAGA SOUTH', NULL, NULL, 1, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (7, 1, 'CATEEL 1', NULL, NULL, 1, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (8, 1, 'CATEEL 2', NULL, NULL, 1, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (9, 1, 'GOV. GEN. NORTH', NULL, NULL, 2, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (10, 1, 'GOV. GEN. SOUTH', NULL, NULL, 2, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (11, 1, 'LUPON EAST', NULL, NULL, 2, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (12, 1, 'LUPON WEST', NULL, NULL, 2, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (13, 1, 'MANAY NORTH', NULL, NULL, 1, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (14, 1, 'MANAY SOUTH', NULL, NULL, 1, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (15, 1, 'SAN ISIDRO NORTH', NULL, NULL, 2, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (16, 1, 'SAN ISIDRO SOUTH', NULL, NULL, 2, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (17, 1, 'TARRAGONA', NULL, NULL, 1, '2024-10-19 07:12:06', NULL);
INSERT INTO `jb_district` VALUES (18, 1, 'DIVISION OFFICE', NULL, NULL, 2, '2024-10-19 07:12:06', NULL);

-- ----------------------------
-- Table structure for jb_division
-- ----------------------------
DROP TABLE IF EXISTS `jb_division`;
CREATE TABLE `jb_division`  (
  `division_id` int NOT NULL AUTO_INCREMENT,
  `region_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `code` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'FOR ID NUMBER IDENTIFICATION',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `location` point NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`division_id`) USING BTREE,
  UNIQUE INDEX `index_code`(`code` ASC) USING BTREE,
  INDEX `fk_division_region_1`(`region_id` ASC) USING BTREE,
  CONSTRAINT `fk_division_region_1` FOREIGN KEY (`region_id`) REFERENCES `jb_region` (`region_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jb_division
-- ----------------------------
INSERT INTO `jb_division` VALUES (1, 11, 'DAVAO ORIENTAL', NULL, NULL, NULL, '2024-07-01 18:37:52', NULL);

-- ----------------------------
-- Table structure for jb_log_school_delete
-- ----------------------------
DROP TABLE IF EXISTS `jb_log_school_delete`;
CREATE TABLE `jb_log_school_delete`  (
  `log_school_delete_id` int NOT NULL AUTO_INCREMENT,
  `school_idnumber` int NOT NULL,
  `district_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `school_level_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `school_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `groupname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `school_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_school_delete_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jb_log_school_delete
-- ----------------------------

-- ----------------------------
-- Table structure for jb_log_school_update
-- ----------------------------
DROP TABLE IF EXISTS `jb_log_school_update`;
CREATE TABLE `jb_log_school_update`  (
  `log_school_update_id` bigint NOT NULL AUTO_INCREMENT,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `school_idnumber` int NOT NULL,
  `district_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `school_level_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `school_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `groupname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `school_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_school_update_id`) USING BTREE,
  INDEX `fk_jb_log_school_update_jb_school_1`(`school_idnumber`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jb_log_school_update
-- ----------------------------
INSERT INTO `jb_log_school_update` VALUES (1, 'OLD', 129167, 2, 'EDUARDO M. MALIÑO ES', 'EduardoMMaliñoES', 'Elementary', 'Public', 'SDODavaoOriental-129167-EduardoMMaliñoES', NULL, '2024-10-19 07:29:14', NULL);
INSERT INTO `jb_log_school_update` VALUES (2, 'NEW', 129167, 2, 'BATIANO ES', 'BatianoES', 'Elementary', 'Public', 'SDODavaoOriental-129167-BatianoES', NULL, '2024-10-19 07:29:14', NULL);
INSERT INTO `jb_log_school_update` VALUES (3, 'OLD', 112, 18, 'DEPED DAVAO ORIENTAL', 'DavaoOriental', 'Division', 'Public School', 'SDODavaoOriental-100000-DavaoOriental', NULL, '2024-10-19 08:14:01', NULL);
INSERT INTO `jb_log_school_update` VALUES (4, 'NEW', 112, 18, 'DEPED DAVAO ORIENTAL', 'DavaoOriental', 'Division', 'Office', 'SDODavaoOriental-100000-DavaoOriental', NULL, '2024-10-19 08:14:01', NULL);
INSERT INTO `jb_log_school_update` VALUES (5, 'OLD', 112, 18, 'DEPED DAVAO ORIENTAL', 'DavaoOriental', 'Division', 'Office', 'SDODavaoOriental-100000-DavaoOriental', NULL, '2024-10-21 10:11:50', NULL);
INSERT INTO `jb_log_school_update` VALUES (6, 'NEW', 112, 18, 'DEPED DAVAO ORIENTAL', 'DavaoOriental', 'Division', 'Office', 'SDODavaoOriental-100000-DavaoOriental', NULL, '2024-10-21 10:11:50', NULL);

-- ----------------------------
-- Table structure for jb_region
-- ----------------------------
DROP TABLE IF EXISTS `jb_region`;
CREATE TABLE `jb_region`  (
  `region_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`region_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jb_region
-- ----------------------------
INSERT INTO `jb_region` VALUES (1, 'I');
INSERT INTO `jb_region` VALUES (2, 'II');
INSERT INTO `jb_region` VALUES (3, 'III');
INSERT INTO `jb_region` VALUES (4, 'IV');
INSERT INTO `jb_region` VALUES (5, 'V');
INSERT INTO `jb_region` VALUES (6, 'VI');
INSERT INTO `jb_region` VALUES (7, 'VII');
INSERT INTO `jb_region` VALUES (8, 'VIII');
INSERT INTO `jb_region` VALUES (9, 'IX');
INSERT INTO `jb_region` VALUES (10, 'X');
INSERT INTO `jb_region` VALUES (11, 'XI');
INSERT INTO `jb_region` VALUES (12, 'XII');
INSERT INTO `jb_region` VALUES (13, 'NCR');

-- ----------------------------
-- Table structure for jb_school
-- ----------------------------
DROP TABLE IF EXISTS `jb_school`;
CREATE TABLE `jb_school`  (
  `school_idnumber` int NOT NULL,
  `district_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `school_level_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'UPDATE_CASCADE',
  `school_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'UPDATE_CASCADE',
  `groupname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `school_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `location` point NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `congressional_district` int NULL DEFAULT NULL COMMENT 'ww',
  `is_implementing` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`school_idnumber`) USING BTREE,
  INDEX `index_school_idnumber`(`school_idnumber` ASC) USING BTREE,
  INDEX `index_name`(`name` ASC) USING BTREE,
  INDEX `fk_school_district_1`(`district_id` ASC) USING BTREE,
  INDEX `fk_school_school_level_2`(`school_level_name` ASC) USING BTREE,
  INDEX `fk_school_school_type_3`(`school_type_name` ASC) USING BTREE,
  CONSTRAINT `fk_school_district_1` FOREIGN KEY (`district_id`) REFERENCES `jb_district` (`district_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_school_school_level_2` FOREIGN KEY (`school_level_name`) REFERENCES `jb_school_level` (`name`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_school_school_type_3` FOREIGN KEY (`school_type_name`) REFERENCES `jb_school_type` (`name`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jb_school
-- ----------------------------
INSERT INTO `jb_school` VALUES (112, 18, 'DEPED DAVAO ORIENTAL', 'DavaoOriental', 'Division', 'Office', 'SDODavaoOriental-100000-DavaoOriental', NULL, NULL, NULL, '2024-10-19 07:23:03', '2024-10-21 10:11:50', 2, NULL);
INSERT INTO `jb_school` VALUES (102321, 16, 'NASA ELEMENTARY SCHOOL', 'NasaES', 'Elementary', 'Public School', 'SDODavaoOriental-102321-NasaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (109430, 1, 'IBAÑEZ ES', 'IbañezES', 'Elementary', 'Public School', 'SDODavaoOriental-109430-IbanezES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (109431, 6, 'LOGDECK', 'Logdec', 'Elementary', 'Public School', 'SDODavaoOriental-109431-Logdec', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129152, 1, 'BAN-AO ES', 'Ban-AoES', 'Elementary', 'Public School', 'SDODavaoOriental-129152-Ban-AoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129153, 1, 'CAMPAWAN ES', 'CampawanES', 'Elementary', 'Public School', 'SDODavaoOriental-129153-CampawanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129154, 1, 'DAPNAN ES', 'DapnanES', 'Elementary', 'Public School', 'SDODavaoOriental-129154-DapnanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129155, 1, 'KIAGBAAN ES', 'KiagbaanES', 'Elementary', 'Public School', 'SDODavaoOriental-129155-KiagbaanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129156, 1, 'KINABLANGAN ES', 'KinablanganES', 'Elementary', 'Public School', 'SDODavaoOriental-129156-KinablanganES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129157, 1, 'LAMBAJON CENTRAL ES', 'LambajonCentralES', 'Elementary', 'Public School', 'SDODavaoOriental-129157-LambajonCentralES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129158, 1, 'MIKIT ES', 'MikitES', 'Elementary', 'Public School', 'SDODavaoOriental-129158-MikitES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129159, 1, 'POO ES', 'PooES', 'Elementary', 'Public School', 'SDODavaoOriental-129159-PooES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129161, 1, 'SAN VICTOR ES', 'SanVictorES', 'Elementary', 'Public School', 'SDODavaoOriental-129161-SanVictorES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129162, 1, 'STA. CRUZ ES', 'StaCruzES', 'Elementary', 'Public School', 'SDODavaoOriental-129162-StaCruzES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129163, 1, 'SUNLON ES', 'SunlonES', 'Elementary', 'Public School', 'SDODavaoOriental-129163-SunlonES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129164, 2, 'BACULIN ES', 'BaculinES', 'Elementary', 'Public School', 'SDODavaoOriental-129164-BaculinES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129165, 2, 'BAGANGA CES', 'BagangaCES', 'Elementary', 'Public School', 'SDODavaoOriental-129165-BagangaCES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129166, 2, 'BATAWAN ES', 'BatawanES', 'Elementary', 'Public School', 'SDODavaoOriental-129166-BatawanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129167, 2, 'BATIANO ES', 'BatianoES', 'Elementary', 'Public School', 'SDODavaoOriental-129167-BatianoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129169, 2, 'BOBONAO ES', 'BobonaoES', 'Elementary', 'Public School', 'SDODavaoOriental-129169-BobonaoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129171, 2, 'LUCOD ES', 'LucodES', 'Elementary', 'Public School', 'SDODavaoOriental-129171-LucodES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129172, 2, 'PANJUGAN ES', 'PanjuganES', 'Elementary', 'Public School', 'SDODavaoOriental-129172-PanjuganES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129173, 2, 'R.C. MACAYRA ES', 'RCMacayraES', 'Elementary', 'Public School', 'SDODavaoOriental-129173-RCMacayraES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129174, 2, 'SALINGCOMOT ES', 'SalingcomotES', 'Elementary', 'Public School', 'SDODavaoOriental-129174-SalingcomotES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129175, 2, 'SAOQUIGUE ES', 'SaoquigueES', 'Elementary', 'Public School', 'SDODavaoOriental-129175-SaoquigueES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129176, 2, 'TIGBAWAN ES', 'TigbawanES', 'Elementary', 'Public School', 'SDODavaoOriental-129176-TigbawanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129177, 3, 'BANAYBANAY CENTRAL ES', 'BanaybanayCentralES', 'Elementary', 'Public School', 'SDODavaoOriental-129177-BanaybanayCentralES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129178, 3, 'CABANGCALAN ES', 'CabangcalanES', 'Elementary', 'Public School', 'SDODavaoOriental-129178-CabangcalanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129179, 3, 'CAGANGANAN ES', 'CagangananES', 'Elementary', 'Public School', 'SDODavaoOriental-129179-CagangananES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129180, 3, 'CAUSWAGAN ES', 'CauswaganES', 'Elementary', 'Public School', 'SDODavaoOriental-129180-CauswaganES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129181, 3, 'DINAGSAAN ES', 'DinagsaanES', 'Elementary', 'Public School', 'SDODavaoOriental-129181-DinagsaanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129182, 3, 'LOOC PT. LINAO ES', 'LoocPtLinaoES', 'Elementary', 'Public School', 'SDODavaoOriental-129182-LoocPtLinaoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129183, 3, 'MAHAYAG ES', 'MahayagES', 'Elementary', 'Public School', 'SDODavaoOriental-129183-MahayagES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129184, 3, 'MAPUTI ES', 'MaputiES', 'Elementary', 'Public School', 'SDODavaoOriental-129184-MaputiES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129185, 3, 'MOGBONGCOGON ES', 'MogbongcogonES', 'Elementary', 'Public School', 'SDODavaoOriental-129185-MogbongcogonES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129186, 3, 'IRENEO C. DONGUILA SR.ES', 'IreneoCDonguilaSrES', 'Elementary', 'Public School', 'SDODavaoOriental-129186-IreneoCDonguilaSrES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129187, 3, 'PINTATAGAN ES', 'PintataganES', 'Elementary', 'Public School', 'SDODavaoOriental-129187-PintataganES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129188, 3, 'PISO CAMP ES', 'PisoCampES', 'Elementary', 'Public School', 'SDODavaoOriental-129188-PisoCampES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129189, 3, 'HADJI ATON BANGAL ES', 'HadjiAtonBangalES', 'Elementary', 'Public School', 'SDODavaoOriental-129189-HadjiAtonBangalES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129190, 3, 'RANGAY ES', 'RangayES', 'Elementary', 'Public School', 'SDODavaoOriental-129190-RangayES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129191, 3, 'SAN ROQUE ES', 'SanRoqueES', 'Elementary', 'Public School', 'SDODavaoOriental-129191-SanRoqueES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129192, 3, 'SAN VICENTE ES', 'SanVicenteES', 'Elementary', 'Public School', 'SDODavaoOriental-129192-SanVicenteES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129193, 3, 'T. PATRICIO ES', 'TPatricioES', 'Elementary', 'Public School', 'SDODavaoOriental-129193-TPatricioES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129194, 4, 'BACLINAN PS', 'BaclinanPS', 'Elementary', 'Public School', 'SDODavaoOriental-129194-BaclinanPS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129195, 4, 'BOSTON CES', 'BostonCES', 'Elementary', 'Public School', 'SDODavaoOriental-129195-BostonCES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129196, 4, 'BUKO-BUKO PS', 'Buko-BukoPS', 'Elementary', 'Public School', 'SDODavaoOriental-129196-Buko-BukoPS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129197, 4, 'CAATIJAN ES', 'CaatijanES', 'Elementary', 'Public School', 'SDODavaoOriental-129197-CaatijanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129198, 4, 'CABASAGAN ES', 'CabasaganES', 'Elementary', 'Public School', 'SDODavaoOriental-129198-CabasaganES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129199, 4, 'CARABATUAN ES', 'CarabatuanES', 'Elementary', 'Public School', 'SDODavaoOriental-129199-CarabatuanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129200, 4, 'CARMEN ES', 'CarmenES', 'Elementary', 'Public School', 'SDODavaoOriental-129200-CarmenES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129201, 4, 'CAUWAYANAN ES', 'CauwayananES', 'Elementary', 'Public School', 'SDODavaoOriental-129201-CauwayananES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129203, 4, 'OWABANGON ES', 'OwabangonES', 'Elementary', 'Public School', 'SDODavaoOriental-129203-OwabangonES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129204, 4, 'SAN JOSE ES', 'SanJoseES', 'Elementary', 'Public School', 'SDODavaoOriental-129204-SanJoseES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129205, 4, 'SIBAJAY ES', 'SibajayES', 'Elementary', 'Public School', 'SDODavaoOriental-129205-SibajayES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129206, 5, 'ALVAR ES', 'AlvarES', 'Elementary', 'Public School', 'SDODavaoOriental-129206-AlvarES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129207, 5, 'BANTULINAO ES', 'BantulinaoES', 'Elementary', 'Public School', 'SDODavaoOriental-129207-BantulinaoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129210, 5, 'CALIONGAN ES', 'CalionganES', 'Elementary', 'Public School', 'SDODavaoOriental-129210-CalionganES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129211, 5, 'CARAGA CES', 'CaragaCES', 'Elementary', 'Public School', 'SDODavaoOriental-129211-CaragaCES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129212, 5, 'DRFS ', 'DRFS', 'Elementary', 'Public School', 'SDODavaoOriental-129212-DRFS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129213, 5, 'HANGINAN ES', 'HanginanES', 'Elementary', 'Public School', 'SDODavaoOriental-129213-HanginanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129214, 5, 'KAPAYPAYAN PS', 'KapaypayanPS', 'Elementary', 'Public School', 'SDODavaoOriental-129214-KapaypayanPS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129215, 5, 'LAHI PS', 'LahiPS', 'Elementary', 'Public School', 'SDODavaoOriental-129215-LahiPS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129217, 5, 'LUBGANON ES', 'LubganonES', 'Elementary', 'Public School', 'SDODavaoOriental-129217-LubganonES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129218, 5, 'LUCATAN ES', 'LucatanES', 'Elementary', 'Public School', 'SDODavaoOriental-129218-LucatanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129219, 5, 'MAGUBAHAY PS', 'MagubahayPS', 'Elementary', 'Public School', 'SDODavaoOriental-129219-MagubahayPS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129220, 5, 'MAILUM ES', 'MailumES', 'Elementary', 'Public School', 'SDODavaoOriental-129220-MailumES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129221, 5, 'MANORIGAO ES', 'ManorigaoES', 'Elementary', 'Public School', 'SDODavaoOriental-129221-ManorigaoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129222, 5, 'PANLAISAN ES', 'PanlaisanES', 'Elementary', 'Public School', 'SDODavaoOriental-129222-PanlaisanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129223, 5, 'PAPAG PS', 'PapagPS', 'Elementary', 'Public School', 'SDODavaoOriental-129223-PapagPS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129224, 5, 'PAYAG PS', 'PayagPS', 'Elementary', 'Public School', 'SDODavaoOriental-129224-PayagPS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129225, 5, 'SAN LUIS ES', 'SanLuisES', 'Elementary', 'Public School', 'SDODavaoOriental-129225-SanLuisES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129227, 5, 'SANGAB ES', 'SangabES', 'Elementary', 'Public School', 'SDODavaoOriental-129227-SangabES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129228, 5, 'STA. FE ES', 'StaFeES', 'Elementary', 'Public School', 'SDODavaoOriental-129228-StaFeES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129229, 5, 'TUBILAN ES', 'TubilanES', 'Elementary', 'Public School', 'SDODavaoOriental-129229-TubilanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129230, 6, 'BALETE PS', 'BaletePS', 'Elementary', 'Public School', 'SDODavaoOriental-129230-BaletePS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129234, 6, 'CANINGAG ES', 'CaningagES', 'Elementary', 'Public School', 'SDODavaoOriental-129234-CaningagES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129236, 6, 'DIAT ES', 'DiatES', 'Elementary', 'Public School', 'SDODavaoOriental-129236-DiatES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129238, 6, 'MAGLAHOS ES', 'MaglahosES', 'Elementary', 'Public School', 'SDODavaoOriental-129238-MaglahosES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129240, 6, 'MALIBAGO ES', 'MalibagoES', 'Elementary', 'Public School', 'SDODavaoOriental-129240-MalibagoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129241, 6, 'MERCEDES ES', 'MercedesES', 'Elementary', 'Public School', 'SDODavaoOriental-129241-MercedesES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129242, 6, 'PANTUYAN ES', 'PantuyanES', 'Elementary', 'Public School', 'SDODavaoOriental-129242-PantuyanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129244, 6, 'SAN JOSE CES', 'SanJoseCES', 'Elementary', 'Public School', 'SDODavaoOriental-129244-SanJoseCES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129246, 6, 'SANTIAGO ES', 'SantiagoES', 'Elementary', 'Public School', 'SDODavaoOriental-129246-SantiagoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129247, 6, 'TAGBANAHAW ES', 'TagbanahawES', 'Elementary', 'Public School', 'SDODavaoOriental-129247-TagbanahawES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129248, 6, 'TIGBAWAN ES', 'TigbawanES', 'Elementary', 'Public School', 'SDODavaoOriental-129248-TigbawanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129249, 7, 'ABIHOD ES', 'AbihodES', 'Elementary', 'Public School', 'SDODavaoOriental-129249-AbihodES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129250, 7, 'BAYBAY ES', 'BaybayES', 'Elementary', 'Public School', 'SDODavaoOriental-129250-BaybayES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129252, 7, 'CATEEL CES', 'CateelCES', 'Elementary', 'Public School', 'SDODavaoOriental-129252-CateelCES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129254, 8, 'JUDGE ERNESTO NOMBRADO MS', 'JudgeErnestoNombradoMS', 'Elementary', 'Public School', 'SDODavaoOriental-129254-JudgeErnestoNombradoMS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129255, 7, 'MAINIT ES', 'MainitES', 'Elementary', 'Public School', 'SDODavaoOriental-129255-MainitES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129256, 7, 'SAN ANTONIO ES', 'SanAntonioES', 'Elementary', 'Public School', 'SDODavaoOriental-129256-SanAntonioES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129257, 7, 'SAN ISIDRO ES', 'SanIsidroES', 'Elementary', 'Public School', 'SDODavaoOriental-129257-SanIsidroES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129258, 7, 'STA. FILOMINA ES', 'StaFilominaES', 'Elementary', 'Public School', 'SDODavaoOriental-129258-StaFilominaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129262, 8, 'BAYONG ES', 'BayongES', 'Elementary', 'Public School', 'SDODavaoOriental-129262-BayongES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129263, 8, 'HULID ES', 'HulidES', 'Elementary', 'Public School', 'SDODavaoOriental-129263-HulidES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129265, 8, 'MAGLAHUS ES', 'MaglahusES', 'Elementary', 'Public School', 'SDODavaoOriental-129265-MaglahusES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129266, 8, 'MALIBAGO ES', 'MalibagoES', 'Elementary', 'Public School', 'SDODavaoOriental-129266-MalibagoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129267, 8, 'PATONG ES', 'PatongES', 'Elementary', 'Public School', 'SDODavaoOriental-129267-PatongES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129268, 8, 'POO ES', 'PooES', 'Elementary', 'Public School', 'SDODavaoOriental-129268-PooES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129269, 8, 'SABANGAN ES', 'SabanganES', 'Elementary', 'Public School', 'SDODavaoOriental-129269-SabanganES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129270, 8, 'SAN ALFONSO ES', 'SanAlfonsoES', 'Elementary', 'Public School', 'SDODavaoOriental-129270-SanAlfonsoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129272, 8, 'SAN MIGUEL ES', 'SanMiguelES', 'Elementary', 'Public School', 'SDODavaoOriental-129272-SanMiguelES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129277, 8, 'YAPSAY ES', 'YapsayES', 'Elementary', 'Public School', 'SDODavaoOriental-129277-YapsayES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129278, 9, 'VENANCIO JUAN  ES', 'VenancioJuanES', 'Elementary', 'Public School', 'SDODavaoOriental-129278-VenancioJuanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129279, 9, 'BADIANG ES', 'BadiangES', 'Elementary', 'Public School', 'SDODavaoOriental-129279-BadiangES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129280, 9, 'BONIFACIO ES', 'BonifacioES', 'Elementary', 'Public School', 'SDODavaoOriental-129280-BonifacioES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129281, 9, 'DON AURELIO CHICOTE ES', 'DonAurelioChicoteES', 'Elementary', 'Public School', 'SDODavaoOriental-129281-DonAurelioChicoteES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129282, 9, 'CRISPIN DELA CRUZ ES', 'CrispinDelaCruzES', 'Elementary', 'Public School', 'SDODavaoOriental-129282-CrispinDelaCruzES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129283, 9, 'ENRIQUE ORENCIA ES', 'EnriqueOrenciaES', 'Elementary', 'Public School', 'SDODavaoOriental-129283-EnriqueOrenciaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129284, 9, 'OSMEÑA ES', 'OsmeñaES', 'Elementary', 'Public School', 'SDODavaoOriental-129284-OsmenaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129285, 9, 'MANUEL ROXAS ES', 'ManuelRoxasES', 'Elementary', 'Public School', 'SDODavaoOriental-129285-ManuelRoxasES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129286, 9, 'SIGABOY CES', 'SigaboyCES', 'Elementary', 'Public School', 'SDODavaoOriental-129286-SigaboyCES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129287, 9, 'TANDANG SORA ES', 'TandangSoraES', 'Elementary', 'Public School', 'SDODavaoOriental-129287-TandangSoraES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129288, 10, 'AGUINALDO ES', 'AguinaldoES', 'Elementary', 'Public School', 'SDODavaoOriental-129288-AguinaldoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129289, 10, 'SERAPION BASALO ES', 'SerapionBasaloES', 'Elementary', 'Public School', 'SDODavaoOriental-129289-SerapionBasaloES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129290, 10, 'FATIMA ES', 'FatimaES', 'Elementary', 'Public School', 'SDODavaoOriental-129290-FatimaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129291, 10, 'HADJI JAMIRE MUSA ES', 'HadjiJamireMusaES', 'Elementary', 'Public School', 'SDODavaoOriental-129291-HadjiJamireMusaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129292, 10, 'LAVIGAN ES', 'LaviganES', 'Elementary', 'Public School', 'SDODavaoOriental-129292-LaviganES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129293, 10, 'LUZON CENTRAL ES', 'LuzonCentralES', 'Elementary', 'Public School', 'SDODavaoOriental-129293-LuzonCentralES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129294, 10, 'MAGDUG ES', 'MagdugES', 'Elementary', 'Public School', 'SDODavaoOriental-129294-MagdugES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129295, 11, 'MATIGDAO ES', 'MatigdaoES', 'Elementary', 'Public School', 'SDODavaoOriental-129295-MatigdaoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129296, 10, 'NANGAN ES', 'NanganES', 'Elementary', 'Public School', 'SDODavaoOriental-129296-NanganES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129298, 10, 'PUNDAGUITAN ES', 'PundaguitanES', 'Elementary', 'Public School', 'SDODavaoOriental-129298-PundaguitanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129299, 10, 'QUEZON ES', 'QuezonES', 'Elementary', 'Public School', 'SDODavaoOriental-129299-QuezonES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129300, 10, 'TAMBAN ES', 'TambanES', 'Elementary', 'Public School', 'SDODavaoOriental-129300-TambanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129301, 11, 'BANHAWAN ES', 'BanhawanES', 'Elementary', 'Public School', 'SDODavaoOriental-129301-BanhawanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129302, 11, 'CALAPAGAN ES', 'CalapaganES', 'Elementary', 'Public School', 'SDODavaoOriental-129302-CalapaganES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129303, 11, 'CALASAGAN ES', 'CalasaganES', 'Elementary', 'Public School', 'SDODavaoOriental-129303-CalasaganES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129304, 11, 'COCORNON ES', 'CocornonES', 'Elementary', 'Public School', 'SDODavaoOriental-129304-CocornonES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129305, 11, 'DON MARIANO MARCOS ES', 'DonMarianoMarcosES', 'Elementary', 'Public School', 'SDODavaoOriental-129305-DonMarianoMarcosES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129306, 11, 'IMMACULADA ES', 'ImmaculadaES', 'Elementary', 'Public School', 'SDODavaoOriental-129306-ImmaculadaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129307, 11, 'JOSEFITO TALIMAN ES', 'JosefitoTalimanES', 'Elementary', 'Public School', 'SDODavaoOriental-129307-JosefitoTalimanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129308, 11, 'KAUSWAGAN ES', 'KauswaganES', 'Elementary', 'Public School', 'SDODavaoOriental-129308-KauswaganES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129309, 11, 'LANTAWAN ES', 'LantawanES', 'Elementary', 'Public School', 'SDODavaoOriental-129309-LantawanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129310, 12, 'LOGDECK ES', 'LogdeckES', 'Elementary', 'Public School', 'SDODavaoOriental-129310-LogdeckES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129311, 11, 'MACANGAO CENTRAL ES', 'MacangaoCentralES', 'Elementary', 'Public School', 'SDODavaoOriental-129311-MacangaoCentralES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129312, 11, 'SERGIO MAWALIC ES', 'SergioMawalicES', 'Elementary', 'Public School', 'SDODavaoOriental-129312-SergioMawalicES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129313, 11, 'MALIG ES', 'MaligES', 'Elementary', 'Public School', 'SDODavaoOriental-129313-MaligES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129314, 11, 'MARAYAG ES', 'MarayagES', 'Elementary', 'Public School', 'SDODavaoOriental-129314-MarayagES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129315, 11, 'NEW VISAYAS ES', 'NewVisayasES', 'Elementary', 'Public School', 'SDODavaoOriental-129315-NewVisayasES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129316, 11, 'ERNESTO D. VIOLAN ES', 'ErnestoDViolanES', 'Elementary', 'Public School', 'SDODavaoOriental-129316-ErnestoDViolanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129317, 11, 'SAN JOSE ES', 'SanJoseES', 'Elementary', 'Public School', 'SDODavaoOriental-129317-SanJoseES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129318, 12, 'PANGYAN ES', 'PangyanES', 'Elementary', 'Public School', 'SDODavaoOriental-129318-PangyanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129319, 11, 'TAGBOA ES', 'TagboaES', 'Elementary', 'Public School', 'SDODavaoOriental-129319-TagboaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129320, 11, 'TIOMBOCAN ES', 'TiombocanES', 'Elementary', 'Public School', 'SDODavaoOriental-129320-TiombocanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129321, 12, 'ALBERTO RECAÑO ES', 'AlbertoRecañoES', 'Elementary', 'Public School', 'SDODavaoOriental-129321-AlbertoRecanoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129322, 12, 'ANANGILAN ES', 'AnangilanES', 'Elementary', 'Public School', 'SDODavaoOriental-129322-AnangilanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129323, 12, 'AROMA BEACH ES', 'AromaBeachES', 'Elementary', 'Public School', 'SDODavaoOriental-129323-AromaBeachES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129324, 12, 'BAGUMBAYAN ES', 'BagumbayanES', 'Elementary', 'Public School', 'SDODavaoOriental-129324-BagumbayanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129325, 12, 'BENITO BAROL SR. ES', 'BenitoBarolSrES', 'Elementary', 'Public School', 'SDODavaoOriental-129325-BenitoBarolSrES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129326, 12, 'CABADIANGAN ES', 'CabadianganES', 'Elementary', 'Public School', 'SDODavaoOriental-129326-CabadianganES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129327, 12, 'ILANGAY ES', 'IlangayES', 'Elementary', 'Public School', 'SDODavaoOriental-129327-IlangayES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129328, 12, 'LANGKA ES', 'LangkaES', 'Elementary', 'Public School', 'SDODavaoOriental-129328-LangkaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129329, 12, 'COMARA T. MANUEL CES SPED CENTER', 'ComaraTManuelCESSpedCenter', 'Elementary', 'Public School', 'SDODavaoOriental-129329-ComaraTManuelCESSpedCenter', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129330, 12, 'COMARA T. MANUEL CES II', 'ComaraTManuelCESII', 'Elementary', 'Public School', 'SDODavaoOriental-129330-ComaraTManuelCESII', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129331, 12, 'MAHAYAHAY ES', 'MahayahayES', 'Elementary', 'Public School', 'SDODavaoOriental-129331-MahayahayES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129333, 14, 'NEW DAHICAN ES', 'NewDahicanES', 'Elementary', 'Public School', 'SDODavaoOriental-129333-NewDahicanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129334, 12, 'TAGUGPO ES', 'TagugpoES', 'Elementary', 'Public School', 'SDODavaoOriental-129334-TagugpoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129335, 13, 'SEVERINO TAMING ES', 'SeverinoTamingES', 'Elementary', 'Public School', 'SDODavaoOriental-129335-SeverinoTamingES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129336, 13, 'R. SUMAMBOT ES', 'RSumambotES', 'Elementary', 'Public School', 'SDODavaoOriental-129336-RSumambotES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129337, 14, 'BATOBATO PS', 'BatobatoPS', 'Elementary', 'Public School', 'SDODavaoOriental-129337-BatobatoPS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129338, 14, 'MASANGUID ES', 'MasanguidES', 'Elementary', 'Public School', 'SDODavaoOriental-129338-MasanguidES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129339, 13, 'BONGAN TALEON TINGGOY PS', 'BonganTaleonTinggoyPS', 'Elementary', 'Public School', 'SDODavaoOriental-129339-BonganTaleonTinggoyPS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129340, 13, 'CAIPOC PS', 'CaipocPS', 'Elementary', 'Public School', 'SDODavaoOriental-129340-CaipocPS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129341, 14, 'CALINAWAN ES', 'CalinawanES', 'Elementary', 'Public School', 'SDODavaoOriental-129341-CalinawanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129342, 13, 'CAPASNAN ES', 'CapasnanES', 'Elementary', 'Public School', 'SDODavaoOriental-129342-CapasnanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129343, 13, 'CATABUANAN PS', 'CatabuananPS', 'Elementary', 'Public School', 'SDODavaoOriental-129343-CatabuananPS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129344, 13, 'CAYAWAN ES', 'CayawanES', 'Elementary', 'Public School', 'SDODavaoOriental-129344-CayawanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129346, 13, 'HERMINIGILDO ATOG ES', 'HerminigildoAtogES', 'Elementary', 'Public School', 'SDODavaoOriental-129346-HerminigildoAtogES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129347, 13, 'CUDADA ES', 'CudadaES', 'Elementary', 'Public School', 'SDODavaoOriental-129347-CudadaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129348, 14, 'ANASTACIO P. MAMADA ES', 'AnastacioPMamadaES', 'Elementary', 'Public School', 'SDODavaoOriental-129348-AnastacioPMamadaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129350, 14, 'FELIX OLEA ES', 'FelixOleaES', 'Elementary', 'Public School', 'SDODavaoOriental-129350-FelixOleaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129351, 13, 'GABRIEL CASANAAN ES', 'GabrielCasanaanES', 'Elementary', 'Public School', 'SDODavaoOriental-129351-GabrielCasanaanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129352, 14, 'P. MANDAGUIO ES', 'PMandaguioES', 'Elementary', 'Public School', 'SDODavaoOriental-129352-PMandaguioES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129353, 14, 'LIMENTUOG ES', 'LimentuogES', 'Elementary', 'Public School', 'SDODavaoOriental-129353-LimentuogES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129354, 14, 'LINGAYAO ES', 'LingayaoES', 'Elementary', 'Public School', 'SDODavaoOriental-129354-LingayaoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129355, 13, 'MABINI ES', 'MabiniES', 'Elementary', 'Public School', 'SDODavaoOriental-129355-MabiniES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129356, 13, 'GREGORIO MORALIZON ES 1', 'GregorioMoralizonES1', 'Elementary', 'Public School', 'SDODavaoOriental-129356-GregorioMoralizonES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129357, 13, 'GREGORIO MORALIZON ES 2', 'GregorioMoralizonES2', 'Elementary', 'Public School', 'SDODavaoOriental-129357-GregorioMoralizonES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129358, 14, 'PEDRO MASANGUID ES', 'PedroMasanguidES', 'Elementary', 'Public School', 'SDODavaoOriental-129358-PedroMasanguidES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129359, 13, 'JUAN MAPAYO ES', 'JuanMapayoES', 'Elementary', 'Public School', 'SDODavaoOriental-129359-JuanMapayoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129360, 14, 'MATABANG ES', 'MatabangES', 'Elementary', 'Public School', 'SDODavaoOriental-129360-MatabangES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129361, 14, 'NEW MACOPA PS', 'NewMacopaPS', 'Elementary', 'Public School', 'SDODavaoOriental-129361-NewMacopaPS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129362, 14, 'NEW MADSAYAP ES', 'NewMadsayapES', 'Elementary', 'Public School', 'SDODavaoOriental-129362-NewMadsayapES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129363, 14, 'OLD MACOPA ES', 'OldMacopaES', 'Elementary', 'Public School', 'SDODavaoOriental-129363-OldMacopaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129364, 14, 'PAGSAYAWAN PS', 'PagsayawanPS', 'Elementary', 'Public School', 'SDODavaoOriental-129364-PagsayawanPS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129365, 14, 'PAGSILAAN ES', 'PagsilaanES', 'Elementary', 'Public School', 'SDODavaoOriental-129365-PagsilaanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129367, 13, 'SAN FERMIN ES', 'SanFerminES', 'Elementary', 'Public School', 'SDODavaoOriental-129367-SanFerminES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129368, 14, 'RONQUILLO & DAYANGHIRANG ES', 'Ronquillo&DayanghirangES', 'Elementary', 'Public School', 'SDODavaoOriental-129368-Ronquillo&DayanghirangES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129372, 14, 'TENGSON ES', 'TengsonES', 'Elementary', 'Public School', 'SDODavaoOriental-129372-TengsonES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129423, 15, 'BAON ES', 'BaonES', 'Elementary', 'Public School', 'SDODavaoOriental-129423-BaonES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129424, 15, 'TUBURAN VILLAGE ES', 'TuburanVillageES', 'Elementary', 'Public School', 'SDODavaoOriental-129424-TuburanVillageES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129425, 15, 'BATOBATO CES', 'BatobatoCES', 'Elementary', 'Public School', 'SDODavaoOriental-129425-BatobatoCES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129426, 15, 'DUGMANON ES', 'DugmanonE', 'Elementary', 'Public School', 'SDODavaoOriental-129426-DugmanonE', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129427, 15, 'EMILIO JACINTO ES', 'EmilioJacintoES', 'Elementary', 'Public School', 'SDODavaoOriental-129427-EmilioJacintoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129428, 15, 'IBA ES', 'IbaES', 'Elementary', 'Public School', 'SDODavaoOriental-129428-IbaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129429, 15, 'LAPU-LAPU ES', 'Lapu-LapuES', 'Elementary', 'Public School', 'SDODavaoOriental-129429-Lapu-LapuES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129430, 15, 'MAAG ES', 'MaagES', 'Elementary', 'Public School', 'SDODavaoOriental-129430-MaagES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129431, 15, 'MANIKLING ES', 'ManiklingES', 'Elementary', 'Public School', 'SDODavaoOriental-129431-ManiklingES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129432, 15, 'SAN ROQUE ES', 'SanRoqueES', 'Elementary', 'Public School', 'SDODavaoOriental-129432-SanRoqueES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129433, 16, 'BITAOGAN CENTRAL ES', 'BitaoganCentralES', 'Elementary', 'Public School', 'SDODavaoOriental-129433-BitaoganCentralES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129434, 16, 'TIRSO R. ARGUELLES MES', 'TirsoRArguellesMES', 'Elementary', 'Public School', 'SDODavaoOriental-129434-TirsoRArguellesMES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129435, 16, 'CAMBALION ES', 'CambalionES', 'Elementary', 'Public School', 'SDODavaoOriental-129435-CambalionES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129436, 16, 'DELA PEÑA NARISMA RECAÑO ES', 'DelaPeñaNarismaRecañoES', 'Elementary', 'Public School', 'SDODavaoOriental-129436-DelaPenaNarismaRecanoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129437, 16, 'GEN. MALVAR ES', 'GenMalvarES', 'Elementary', 'Public School', 'SDODavaoOriental-129437-GenMalvarES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129438, 16, 'GREGORIO H. DEL PILAR ES', 'GregorioHDelPilarES', 'Elementary', 'Public School', 'SDODavaoOriental-129438-GregorioHDelPilarES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129439, 16, 'JOSE BURGOS ES', 'JoseBurgosES', 'Elementary', 'Public School', 'SDODavaoOriental-129439-JoseBurgosES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129441, 16, 'LA UNION ES', 'LaUnionES', 'Elementary', 'Public School', 'SDODavaoOriental-129441-LaUnionES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129442, 16, 'TALISAY ES', 'TalisayES', 'Elementary', 'Public School', 'SDODavaoOriental-129442-TalisayES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (129443, 17, 'A.S. MANJOORSA ES', 'ASManjoorsaES', 'Elementary', 'Public School', 'SDODavaoOriental-129443-ASManjoorsaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129444, 17, 'BAISAN ES', 'BaisanES', 'Elementary', 'Public School', 'SDODavaoOriental-129444-BaisanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129445, 17, 'CABAGAYAN ES', 'CabagayanES', 'Elementary', 'Public School', 'SDODavaoOriental-129445-CabagayanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129446, 17, 'CUTA ES', 'CutaES', 'Elementary', 'Public School', 'SDODavaoOriental-129446-CutaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129447, 17, 'D. ANDAN PS', 'DAndanPS', 'Elementary', 'Public School', 'SDODavaoOriental-129447-DAndanPS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129448, 17, 'DADONG ES', 'DadongES', 'Elementary', 'Public School', 'SDODavaoOriental-129448-DadongES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129449, 17, 'JOVELLAR ES', 'JovellarES', 'Elementary', 'Public School', 'SDODavaoOriental-129449-JovellarES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129450, 17, 'KAMONING ES', 'KamoningES', 'Elementary', 'Public School', 'SDODavaoOriental-129450-KamoningES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129451, 17, 'L. TAMAY ES', 'LTamayES', 'Elementary', 'Public School', 'SDODavaoOriental-129451-LTamayES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129454, 17, 'MAGANDA ES', 'MagandaES', 'Elementary', 'Public School', 'SDODavaoOriental-129454-MagandaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129455, 17, 'MAITUM ES', 'MaitumES', 'Elementary', 'Public School', 'SDODavaoOriental-129455-MaitumES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129456, 17, 'MALIONGAN ES', 'MalionganES', 'Elementary', 'Public School', 'SDODavaoOriental-129456-MalionganES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129457, 17, 'OMPAO ES', 'OmpaoES', 'Elementary', 'Public School', 'SDODavaoOriental-129457-OmpaoES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129459, 17, 'P. BASOG ES', 'PBasogES', 'Elementary', 'Public School', 'SDODavaoOriental-129459-PBasogES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129460, 17, 'PRINCESS URDUJA ES', 'PrincessUrdujaES', 'Elementary', 'Public School', 'SDODavaoOriental-129460-PrincessUrdujaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129462, 17, 'TARRAGONA CES', 'TarragonaCES', 'Elementary', 'Public School', 'SDODavaoOriental-129462-TarragonaCES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (129463, 17, 'TUBAON ES', 'TubaonES', 'Elementary', 'Public School', 'SDODavaoOriental-129463-TubaonES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (134717, 1, 'AUREO D. CAÑAL ES', 'AureoDCañalES', 'Elementary', 'Public School', 'SDODavaoOriental-134717-AureoDCanalES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (135098, 5, 'ANDRES LUMAYA ES', 'AndresLumayaES', 'Elementary', 'Public School', 'SDODavaoOriental-135098-AndresLumayaES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (136927, 2, 'LUDIVINA F. PESALBON ES', 'LudivinaFPesalbonES', 'Elementary', 'Public School', 'SDODavaoOriental-136927-LudivinaFPesalbonES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (136928, 2, 'FRANCISCO D. MINGHI ES', 'FranciscoDMinghiES', 'Elementary', 'Public School', 'SDODavaoOriental-136928-FranciscoDMinghiES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (136957, 2, 'KAT-IHAN ES', 'Kat-IhanES', 'Elementary', 'Public School', 'SDODavaoOriental-136957-Kat-IhanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (136958, 2, 'LIMOT ES', 'LimotES', 'Elementary', 'Public School', 'SDODavaoOriental-136958-LimotES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (136959, 2, 'LUYONG ES', 'LuyongES', 'Elementary', 'Public School', 'SDODavaoOriental-136959-LuyongES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (136960, 2, 'MANTAPAY ES', 'MantapayES', 'Elementary', 'Public School', 'SDODavaoOriental-136960-MantapayES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (137186, 13, 'MANDABON ES', 'MandabonES', 'Elementary', 'Public School', 'SDODavaoOriental-137186-MandabonES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (205501, 3, 'E. ANGALA SR. MES', 'EAngalaSrMES', 'Elementary', 'Public School', 'SDODavaoOriental-205501-EAngalaSrMES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (205505, 12, 'SIGANG ES', 'SigangES', 'Elementary', 'Public School', 'SDODavaoOriental-205505-SigangES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (205506, 15, 'SAN ISIDRO CENTRAL SCHOOL SPED CENTER', 'SanIsidroCentralSchoolSpedCenter', 'Elementary', 'Public School', 'SDODavaoOriental-205506-SanIsidroCentralSchoolSpedCenter', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (205507, 8, 'ARAGON ES', 'AragonES', 'Elementary', 'Public School', 'SDODavaoOriental-205507-AragonES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (205508, 2, 'CASUNUGAN ES', 'CasunuganES', 'Elementary', 'Public School', 'SDODavaoOriental-205508-CasunuganES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (205509, 5, 'DANAWAN PS', 'DanawanPS', 'Elementary', 'Public School', 'SDODavaoOriental-205509-DanawanPS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (205510, 5, 'KAWAYAN ES', 'KawayanES', 'Elementary', 'Public School', 'SDODavaoOriental-205510-KawayanES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (205511, 17, 'NAGAS ES', 'NagasES', 'Elementary', 'Public School', 'SDODavaoOriental-205511-NagasES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (205512, 2, 'NURSERY ES', 'NurseryES', 'Elementary', 'Public School', 'SDODavaoOriental-205512-NurseryES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (205514, 17, 'TALAGOT ES', 'TalagotES', 'Elementary', 'Public School', 'SDODavaoOriental-205514-TalagotES', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (302077, 11, 'TIOMBOCAN NHS', 'TiombocanNHS', 'Secondary', 'Public School', 'SDODavaoOriental-302077-TiombocanNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (304299, 2, 'OUR LADY OF GUADALUPE NHS', 'OurLadyOfGuadalupeNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304299-OurLadyOfGuadalupeNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (304300, 2, 'BAGANGA NHS', 'BagangaNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304300-BagangaNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (304301, 3, 'MANUEL B. GUINEZ SR. NHS', 'ManuelBGuinezSrNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304301-ManuelBGuinezSrNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (304302, 16, 'BITAOGAN NHS', 'BitaoganNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304302-BitaoganNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (304304, 4, 'BOSTON NHS', 'BostonNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304304-BostonNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (304306, 11, 'CALAPAGAN NHS', 'CalapaganNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304306-CalapaganNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (304307, 5, 'CARAGA NHS', 'CaragaNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304307-CaragaNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (304308, 6, 'PANTUYAN NHS', 'PantuyanNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304308-PantuyanNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (304309, 8, 'CATEEL NATIONAL AGRICULTURAL HS', 'CateelNAHS', 'Secondary', 'Public School', 'SDODavaoOriental-304309-CateelNAHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (304310, 7, 'SAN ANTONIO NHS', 'SanAntonioNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304310-SanAntonioNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (304311, 7, 'CATEEL VOCATIONAL HS', 'CateelVHS', 'Secondary', 'Public School', 'SDODavaoOriental-304311-CateelVHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (304312, 1, 'CRISPIN E. ROJAS NHS', 'CrispinERojasNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304312-CrispinERojasNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (304315, 13, 'EVARISTO MORALIZON NVHS', 'EvaristoMoralizonNVHS', 'Secondary', 'Public School', 'SDODavaoOriental-304315-EvaristoMoralizonNVHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (304316, 1, 'DR. BEATO C. MACAYRA NHS', 'DrBeatoCMacayraNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304316-DrBeatoCMacayraNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (304317, 16, 'MANUEL S. NASSER SR. NHS', 'ManuelSNasserSrNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304317-ManuelSNasserSrNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (304319, 12, 'LUPON VOCATIONAL HS', 'LuponVHS', 'Secondary', 'Public School', 'SDODavaoOriental-304319-LuponVHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (304320, 12, 'BAGUMBAYAN AGRO-INDUSTRIAL HS', 'BagumbayanAgroIndustrialHS', 'Secondary', 'Public School', 'SDODavaoOriental-304320-BagumbayanAgroIndustrialHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (304321, 12, 'LUPON NCHS', 'LuponNCHS', 'Secondary', 'Public School', 'SDODavaoOriental-304321-LuponNCHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (304322, 10, 'LUZON NHS', 'LuzonNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304322-LuzonNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (304323, 11, 'MACANGAO AVHS', 'MacangaoAVHS', 'Secondary', 'Public School', 'SDODavaoOriental-304323-MacangaoAVHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (304324, 14, 'MANAY NHS', 'ManayNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304324-ManayNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (304329, 10, 'NANGAN NHS', 'NanganNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304329-NanganNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (304330, 10, 'PUNDAGUITAN NHS', 'PundaguitanNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304330-PundaguitanNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (304331, 3, 'PUNTALINAO NHS', 'PuntalinaoNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304331-PuntalinaoNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (304332, 15, 'SAN ISIDRO NHS', 'SanIsidroNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304332-SanIsidroNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (304333, 5, 'SAN LUIS NHS', 'SanLuisNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304333-SanLuisNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (304334, 5, 'SANGAB NHS', 'SangabNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304334-SangabNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (304335, 6, 'SANTIAGO NHS', 'SantiagoNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304335-SantiagoNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (304336, 9, 'SIGABOY AVHS', 'SigaboyAVHS', 'Secondary', 'Public School', 'SDODavaoOriental-304336-SigaboyAVHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (304337, 12, 'TAGUGPO NHS', 'TagugpoNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304337-TagugpoNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (304339, 17, 'TARRAGONA NHS', 'TarragonaNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304339-TarragonaNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (304340, 9, 'TIBANBAN NHS', 'TibanbanNHS', 'Secondary', 'Public School', 'SDODavaoOriental-304340-TibanbanNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (305514, 17, 'TUBAON NHS', 'TubaonNHS', 'Secondary', 'Public School', 'SDODavaoOriental-305514-TubaonNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (305515, 10, 'MAGDUG NHS', 'MagdugNHS', 'Secondary', 'Public School', 'SDODavaoOriental-305515-MagdugNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (305516, 12, 'CORPORACION NHS', 'CorporacionNHS', 'Secondary', 'Public School', 'SDODavaoOriental-305516-CorporacionNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (305517, 16, 'TALISAY NHS', 'TalisayNHS', 'Secondary', 'Public School', 'SDODavaoOriental-305517-TalisayNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (305963, 10, 'TAMBAN NHS', 'TambanNHS', 'Secondary', 'Public School', 'SDODavaoOriental-305963-TambanNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (306086, 11, 'ERNESTO D. VIOLAN NHS', 'ErnestoDViolanNHS', 'Secondary', 'Public School', 'SDODavaoOriental-306086-ErnestoDViolanNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (306220, 3, 'MAPUTI NHS', 'MaputiNHS', 'Secondary', 'Public School', 'SDODavaoOriental-306220-MaputiNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (306221, 10, 'SUROP NHS', 'SuropNHS', 'Secondary', 'Public School', 'SDODavaoOriental-306221-SuropNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (306222, 15, 'MANIKLING NHS', 'ManiklingNHS', 'Secondary', 'Public School', 'SDODavaoOriental-306222-ManiklingNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (306223, 10, 'TIBLAWAN NHS', 'TiblawanNHS', 'Secondary', 'Public School', 'SDODavaoOriental-306223-TiblawanNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (316101, 11, 'MARAYAG NHS', 'MarayagNHS', 'Secondary', 'Public School', 'SDODavaoOriental-316101-MarayagNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (316102, 13, 'DEL PILAR NHS', 'DelPilarNHS', 'Secondary', 'Public School', 'SDODavaoOriental-316102-DelPilarNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (316103, 14, 'OLD MACOPA NHS', 'OldMacopaNHS', 'Secondary', 'Public School', 'SDODavaoOriental-316103-OldMacopaNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (316105, 3, 'DONGUILA PACRES NHS', 'DonguilaPacresNHS', 'Secondary', 'Public School', 'SDODavaoOriental-316105-DonguilaPacresNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (316106, 11, 'DON MARIANO MARCOS NHS', 'DonMarianoMarcosNHS', 'Secondary', 'Public School', 'SDODavaoOriental-316106-DonMarianoMarcosNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (316107, 3, 'LEADRO G. JAPOS NHS', 'LeandroGJaposNHS', 'Secondary', 'Public School', 'SDODavaoOriental-316107-LeandroGJaposNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (316108, 10, 'LAVIGAN NHS', 'LaviganNHS', 'Secondary', 'Public School', 'SDODavaoOriental-316108-LaviganNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (316109, 11, 'TAGBOA AVHS', 'TagboaAVHS', 'Secondary', 'Public School', 'SDODavaoOriental-316109-TagboaAVHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (316111, 4, 'CAATIJAN NHS', 'CaatijanNHS', 'Secondary', 'Public School', 'SDODavaoOriental-316111-CaatijanNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (316113, 17, 'PAULINAGAMBONGABAYON NHS', 'PaulinaGambongAbahonNHS', 'Secondary', 'Public School', 'SDODavaoOriental-316113-PaulinaGambongAbahonNHS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (500416, 14, 'TAOCANGA IS', 'TaocangaIS', 'IS', 'Public School', 'SDODavaoOriental-500416-TaocangaIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (500417, 13, 'JOSE ANTOP, SR. SAN ISIDRO IS', 'JoseAntop,SrSanIsidroIS', 'IS', 'Public School', 'SDODavaoOriental-500417-JoseAntop,SrSanIsidroIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (500457, 8, 'MAYLAYA IS', 'MaylayaIS', 'IS', 'Public School', 'SDODavaoOriental-500457-MaylayaIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (500478, 2, 'BINONDO IS', 'BinondoIS', 'IS', 'Public School', 'SDODavaoOriental-500478-BinondoIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501081, 5, 'BUTAY IS', 'ButayIS', 'IS', 'Public School', 'SDODavaoOriental-501081-ButayIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501082, 2, 'COOG IS', 'CoogIS', 'IS', 'Public School', 'SDODavaoOriental-501082-CoogIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501084, 8, 'TAYTAYAN IS', 'TaytayanIS', 'IS', 'Public School', 'SDODavaoOriental-501084-TaytayanIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501418, 8, 'PAGLUSNGAN IS', 'PaglusnganIS', 'IS', 'Public School', 'SDODavaoOriental-501418-PaglusnganIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501419, 6, 'BANTAY IS', 'BantayIS', 'IS', 'Public School', 'SDODavaoOriental-501419-BantayIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501420, 8, 'SPUR-2 IS', 'Spur-2IS', 'IS', 'Public School', 'SDODavaoOriental-501420-Spur-2IS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501421, 1, 'SAN ISIDRO IS', 'SanIsidroIS', 'IS', 'Public School', 'SDODavaoOriental-501421-SanIsidroIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501422, 6, 'BINATON IS', 'BinatonIS', 'IS', 'Public School', 'SDODavaoOriental-501422-BinatonIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501423, 17, 'LUCATAN IS', 'LucatanIS', 'IS', 'Public School', 'SDODavaoOriental-501423-LucatanIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501425, 10, 'OREGON IS', 'OregonIS', 'IS', 'Public School', 'SDODavaoOriental-501425-OregonIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (501516, 8, 'MC ARTHUR S. MADANI IS', 'McArthurSMadaniIS', 'IS', 'Public School', 'SDODavaoOriental-501516-McArthurSMadaniIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501517, 8, 'ALEGRIA IS', 'AlegriaIS', 'IS', 'Public School', 'SDODavaoOriental-501517-AlegriaIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501555, 8, 'ALIWAGWAG IS', 'AliwagwagIS', 'IS', 'Public School', 'SDODavaoOriental-501555-AliwagwagIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501608, 7, 'MODESTO T. VEROY SR. IS', 'ModestoTVeroySrIS', 'IS', 'Public School', 'SDODavaoOriental-501608-ModestoTVeroySrIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501657, 8, 'SAN LORENZO IS', 'SanLorenzoIS', 'IS', 'Public School', 'SDODavaoOriental-501657-SanLorenzoIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501956, 6, 'SAN MIGUEL IS', 'SanMiguelIS', 'IS', 'Public School', 'SDODavaoOriental-501956-SanMiguelIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501957, 17, 'LIMOT IS', 'LimotIS', 'IS', 'Public School', 'SDODavaoOriental-501957-LimotIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501958, 5, 'BAUGO IS', 'BaugoIS', 'IS', 'Public School', 'SDODavaoOriental-501958-BaugoIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501959, 12, 'MARAGATAS IS', 'MaragatasIS', 'IS', 'Public School', 'SDODavaoOriental-501959-MaragatasIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);
INSERT INTO `jb_school` VALUES (501960, 5, 'LAMIAWAN IS', 'LamiawanIS', 'IS', 'Public School', 'SDODavaoOriental-501960-LamiawanIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501961, 8, 'SAN RAFAEL IS', 'SanRafaelIS', 'IS', 'Public School', 'SDODavaoOriental-501961-SanRafaelIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501962, 13, 'JOSE BITAC IS', 'JoseBitacIS', 'IS', 'Public School', 'SDODavaoOriental-501962-JoseBitacIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501963, 6, 'MAGSAYAP IS', 'MagsayapIS', 'IS', 'Public School', 'SDODavaoOriental-501963-MagsayapIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501964, 13, 'MABASA IS', 'MabasaIS', 'IS', 'Public School', 'SDODavaoOriental-501964-MabasaIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501965, 5, 'SAN PEDRO IS', 'SanPedroIS', 'IS', 'Public School', 'SDODavaoOriental-501965-SanPedroIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (501966, 6, 'POTENCIANO A. MABANDING IS', 'PotencianoAMabandingIS', 'IS', 'Public School', 'SDODavaoOriental-501966-PotencianoAMabandingIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (502245, 13, 'CONCEPCION IS', 'ConcepcionIS', 'IS', 'Public School', 'SDODavaoOriental-502245-ConcepcionIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (502246, 13, 'FRANCISCO E. LAHORA SR. IS', 'FranciscoELahoraSrIS', 'IS', 'Public School', 'SDODavaoOriental-502246-FranciscoELahoraSrIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (502247, 4, 'SIMULAO IS', 'SimulaoIS', 'IS', 'Public School', 'SDODavaoOriental-502247-SimulaoIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 1, NULL);
INSERT INTO `jb_school` VALUES (502248, 16, 'JOSE P. LAUREL SR. IS', 'JosePLaurelSrIS', 'IS', 'Public School', 'SDODavaoOriental-502248-JosePLaurelSrIS', NULL, NULL, NULL, '2024-10-19 07:23:03', NULL, 2, NULL);

-- ----------------------------
-- Table structure for jb_school_administrator
-- ----------------------------
DROP TABLE IF EXISTS `jb_school_administrator`;
CREATE TABLE `jb_school_administrator`  (
  `school_idnumber` int NOT NULL COMMENT 'CC',
  `administrator_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gender` enum('M','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contact_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email_deped` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email_personal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `assigned_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`school_idnumber`) USING BTREE,
  CONSTRAINT `fk_school_administrator_school_1` FOREIGN KEY (`school_idnumber`) REFERENCES `jb_school` (`school_idnumber`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jb_school_administrator
-- ----------------------------
INSERT INTO `jb_school_administrator` VALUES (112, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (102321, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (109430, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (109431, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129152, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129153, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129154, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129155, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129156, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129157, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129158, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129159, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129161, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129162, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129163, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129164, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129165, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129166, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129167, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129169, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129171, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129172, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129173, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129174, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129175, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129176, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129177, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129178, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129179, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129180, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129181, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129182, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129183, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129184, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129185, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129186, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129187, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129188, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129189, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129190, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129191, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129192, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129193, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129194, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129195, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129196, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129197, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129198, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129199, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129200, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129201, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129203, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129204, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129205, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129206, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129207, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129210, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129211, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129212, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129213, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129214, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129215, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129217, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129218, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129219, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129220, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129221, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129222, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129223, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129224, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129225, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129227, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129228, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129229, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129230, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129234, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129236, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129238, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129240, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129241, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129242, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129244, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129246, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129247, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129248, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129249, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129250, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129252, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129254, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129255, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129256, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129257, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129258, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129262, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129263, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129265, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129266, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129267, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129268, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129269, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129270, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129272, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129277, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129278, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129279, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129280, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129281, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129282, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129283, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129284, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129285, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129286, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129287, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129288, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129289, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129290, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129291, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129292, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129293, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129294, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129295, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129296, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129298, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129299, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129300, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129301, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129302, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129303, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129304, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129305, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129306, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:45', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129307, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129308, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129309, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129310, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129311, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129312, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129313, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129314, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129315, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129316, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129317, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129318, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129319, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129320, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129321, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129322, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129323, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129324, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129325, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129326, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129327, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129328, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129329, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129330, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129331, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129333, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129334, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129335, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129336, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129337, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129338, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129339, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129340, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129341, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129342, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129343, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129344, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129346, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129347, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129348, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129350, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129351, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129352, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129353, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129354, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129355, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129356, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129357, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129358, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129359, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129360, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129361, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129362, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129363, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129364, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129365, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129367, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129368, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129372, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129423, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129424, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129425, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129426, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129427, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129428, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129429, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129430, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129431, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129432, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129433, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129434, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129435, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129436, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129437, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129438, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129439, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129441, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129442, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129443, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129444, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129445, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129446, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129447, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129448, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129449, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129450, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129451, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129454, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129455, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129456, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129457, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129459, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129460, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129462, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (129463, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (134717, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (135098, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (136927, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (136928, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (136957, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (136958, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (136959, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (136960, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (137186, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (205501, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (205505, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (205506, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (205507, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (205508, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (205509, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (205510, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (205511, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (205512, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (205514, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (302077, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304299, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304300, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304301, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304302, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304304, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304306, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304307, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304308, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304309, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304310, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304311, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304312, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304315, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304316, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304317, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304319, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304320, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304321, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304322, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304323, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304324, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304329, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304330, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304331, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304332, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304333, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304334, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304335, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304336, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304337, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304339, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (304340, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (305514, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (305515, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (305516, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (305517, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (305963, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (306086, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (306220, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (306221, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (306222, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (306223, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (316101, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (316102, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (316103, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (316105, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (316106, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (316107, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (316108, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (316109, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (316111, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (316113, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (500416, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (500417, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (500457, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (500478, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501081, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501082, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501084, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501418, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501419, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501420, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501421, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501422, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501423, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501425, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501516, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501517, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501555, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501608, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501657, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501956, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501957, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501958, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501959, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501960, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501961, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501962, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501963, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501964, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501965, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (501966, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (502245, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (502246, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (502247, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);
INSERT INTO `jb_school_administrator` VALUES (502248, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19 07:22:46', NULL, NULL);

-- ----------------------------
-- Table structure for jb_school_level
-- ----------------------------
DROP TABLE IF EXISTS `jb_school_level`;
CREATE TABLE `jb_school_level`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jb_school_level
-- ----------------------------
INSERT INTO `jb_school_level` VALUES ('Division', NULL);
INSERT INTO `jb_school_level` VALUES ('Elementary', NULL);
INSERT INTO `jb_school_level` VALUES ('IS', NULL);
INSERT INTO `jb_school_level` VALUES ('Secondary', NULL);

-- ----------------------------
-- Table structure for jb_school_name_change
-- ----------------------------
DROP TABLE IF EXISTS `jb_school_name_change`;
CREATE TABLE `jb_school_name_change`  (
  `school_name_change_id` int NOT NULL AUTO_INCREMENT,
  `school_idnumber` int NULL DEFAULT NULL,
  `old_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `new_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`school_name_change_id`) USING BTREE,
  INDEX `fk_school_name_change_school_1`(`school_idnumber` ASC) USING BTREE,
  CONSTRAINT `fk_school_name_change_school_1` FOREIGN KEY (`school_idnumber`) REFERENCES `jb_school` (`school_idnumber`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jb_school_name_change
-- ----------------------------
INSERT INTO `jb_school_name_change` VALUES (1, 129167, 'EDUARDO M. MALIÑO ES', 'BATIANO ES', 'DIV. MEMO No. 085 s. 2024', '2024-10-19 07:27:25', NULL);

-- ----------------------------
-- Table structure for jb_school_type
-- ----------------------------
DROP TABLE IF EXISTS `jb_school_type`;
CREATE TABLE `jb_school_type`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jb_school_type
-- ----------------------------
INSERT INTO `jb_school_type` VALUES ('Office', NULL);
INSERT INTO `jb_school_type` VALUES ('Private School', NULL);
INSERT INTO `jb_school_type` VALUES ('Public School', NULL);

-- ----------------------------
-- Triggers structure for table jb_school
-- ----------------------------
DROP TRIGGER IF EXISTS `create_school_administrator`;
delimiter ;;
CREATE TRIGGER `create_school_administrator` AFTER INSERT ON `jb_school` FOR EACH ROW BEGIN
    INSERT INTO jb_school_administrator (school_idnumber)
    VALUES (NEW.school_idnumber);
    # CREATE A PROCEDURE AND PASS A PARAMETER
    #call p_create_school_administrator(NEW.school_idnumber);    
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table jb_school
-- ----------------------------
DROP TRIGGER IF EXISTS `log_school_update`;
delimiter ;;
CREATE TRIGGER `log_school_update` AFTER UPDATE ON `jb_school` FOR EACH ROW BEGIN
    INSERT INTO jb_log_school_update (status,school_idnumber,district_id,name,code,school_level_name,school_type_name,groupname,school_email)
    VALUES ('OLD',OLD.school_idnumber,OLD.district_id,OLD.name,OLD.code,OLD.school_level_name,OLD.school_type_name,OLD.groupname,OLD.school_email);
    
    
    INSERT INTO jb_log_school_update (status,school_idnumber,district_id,name,code,school_level_name,school_type_name,groupname,school_email)
    VALUES ('NEW',NEW.school_idnumber,NEW.district_id,NEW.name,NEW.code,NEW.school_level_name,NEW.school_type_name,NEW.groupname,NEW.school_email); 
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table jb_school
-- ----------------------------
DROP TRIGGER IF EXISTS `log_school_delete`;
delimiter ;;
CREATE TRIGGER `log_school_delete` BEFORE DELETE ON `jb_school` FOR EACH ROW BEGIN
    INSERT INTO jb_log_school_delete (school_idnumber,district_id,name,code,school_level_name,school_type_name,groupname,school_email)
    VALUES (OLD.school_idnumber,OLD.district_id,OLD.name,OLD.code,OLD.school_level_name,OLD.school_type_name,OLD.groupname,OLD.school_email);
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
