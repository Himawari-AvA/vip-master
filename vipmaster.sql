/*
 Navicat MySQL Data Transfer

 Source Server         : connectTest
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : cinema

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 26/06/2022 01:12:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for card
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card`  (
  `cardid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `memberid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `balance` int NULL DEFAULT 0 COMMENT '人民币余额',
  `integral` int NULL DEFAULT 0 COMMENT '积分',
  `lose` int NULL DEFAULT 0 COMMENT '1为丢失，0为未丢失',
  PRIMARY KEY (`cardid`) USING BTREE,
  INDEX `username`(`memberid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of card
-- ----------------------------
INSERT INTO `card` VALUES ('0161c880e711464c9bbb5f699f292e23', '567ced95cf1541bc94ccb3dfa767b53f', 100, 0, 1);
INSERT INTO `card` VALUES ('0967a8dd2cc04fc887cb69f35ae831fd', '567ced95cf1541bc94ccb3dfa767b53f', 6501, 0, 0);
INSERT INTO `card` VALUES ('09961c29e8494649b29851388ef440fb', '569b67f5c340462f9c343a98ab6e64db', 1035, 10025, 0);
INSERT INTO `card` VALUES ('0b5705e0ed8f4b6fafc4126147b7d6fc', '4e0553653d27447896440c4a16eda042', 999, 0, 0);
INSERT INTO `card` VALUES ('4f59de19d3534abfb948f4c9a38e53dc', '569b67f5c340462f9c343a98ab6e64db', 1231, 0, 0);
INSERT INTO `card` VALUES ('8b06e3dcd4334c368d666081f666b500', '567ced95cf1541bc94ccb3dfa767b53f', 2551, 0, 0);
INSERT INTO `card` VALUES ('8c0328f28b60400f983a806d67f705cc', '288bced48b0243bdaefb4d602fa30c62', 4910, 3934, 0);
INSERT INTO `card` VALUES ('9a6a2bfb4e95421d92774444c229ddfd', '567ced95cf1541bc94ccb3dfa767b53f', 100, 0, 0);
INSERT INTO `card` VALUES ('9c535625f7cc477eb69921849a40871d', 'edabd56c406449a0ab105bb7bfe92346', 1314250, 0, 0);
INSERT INTO `card` VALUES ('a81128bc8be54aec84b0dadf0b1d6fe1', '4e0553653d27447896440c4a16eda042', 0, 0, 0);
INSERT INTO `card` VALUES ('aa20dce977254b599508979d2e667884', '567ced95cf1541bc94ccb3dfa767b53f', 100, 0, 1);
INSERT INTO `card` VALUES ('aaa3dcc485144a44ae779d614a808ad0', '4e0553653d27447896440c4a16eda042', 0, 0, 0);
INSERT INTO `card` VALUES ('b27a7b32a0c44561abe8104977814152', 'edabd56c406449a0ab105bb7bfe92346', 0, 0, 0);
INSERT INTO `card` VALUES ('ba0977e470ba4f6fb48b8c157da98b4d', 'edc5c2070d154561b8d5aa94ded0ccd9', 9900, 25, 0);
INSERT INTO `card` VALUES ('c06cff608bad4c4690b91c8a7f745f39', '567ced95cf1541bc94ccb3dfa767b53f', 0, 0, 0);
INSERT INTO `card` VALUES ('cb09d3ef48f24a14a58cde8ab4bc0a6f', '569b67f5c340462f9c343a98ab6e64db', 0, 0, 0);
INSERT INTO `card` VALUES ('d5369d546dd94b68a1ae652b54f55ff7', '567ced95cf1541bc94ccb3dfa767b53f', 0, 0, 0);
INSERT INTO `card` VALUES ('f0cc8a64e9744fac89ec05c99b9a13e1', '569b67f5c340462f9c343a98ab6e64db', 0, 0, 0);
INSERT INTO `card` VALUES ('f226a06fed11438882f0d3cffd0ece4f', '567ced95cf1541bc94ccb3dfa767b53f', 180, 302, 0);
INSERT INTO `card` VALUES ('fb0838a8d15e4306aff60bde281b2f27', '94ce3d7b848649edb01a1e2de6b7e143', 1314, 0, 0);

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `managerid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '操作员',
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`managerid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('liuxu', '111111', '刘旭', '管理员', '2022-06-26 01:04:49');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `memberid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  PRIMARY KEY (`memberid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1525943c9c0f4f6a9530262628df56db', '123123', '王陵', '女', '2022-06-01');
INSERT INTO `member` VALUES ('238bced48b0243bdaefb4d602fa30c62', '123123', '小美', '男', '2022-03-05');
INSERT INTO `member` VALUES ('2525943c9c0f4f6a9530262628df56db', '123123', '梅超风', '女', '2022-06-01');
INSERT INTO `member` VALUES ('288bced48b0243bdaefb4d602fa30c62', '123123', '小智', '男', '2022-03-05');
INSERT INTO `member` VALUES ('2e0553653d27447896440c4a16eda042', '123123', '赵诚', '男', '2022-04-03');
INSERT INTO `member` VALUES ('34d86e911df04588bc2c75407318465f', '123123', '孙悟空', '男', '2022-04-02');
INSERT INTO `member` VALUES ('39d86e911df04588bc2c75407318465f', '123123', '胖大海', '男', '2022-04-02');
INSERT INTO `member` VALUES ('465e64ae0d1d440495be860179d5be78', '123123', '刘旭', '男', '2022-04-28');
INSERT INTO `member` VALUES ('467e64ae0d1d440495be860179d5be78', '123123', '慕容复', '男', '2022-04-28');
INSERT INTO `member` VALUES ('4e0553653d27447896440c4a16eda042', '123123', '令狐冲', '男', '2022-04-03');
INSERT INTO `member` VALUES ('559b67f5c340462f9c343a98ab6e64db', '123123', '张三', '男', '2022-04-23');
INSERT INTO `member` VALUES ('567ced95cf1541bc94ccb3dfa767b53f', '123123', '乔峰', '男', '2022-04-09');
INSERT INTO `member` VALUES ('569b67f5c340462f9c343a98ab6e64db', '123123', '张三丰', '男', '2022-04-23');
INSERT INTO `member` VALUES ('587ced95cf1541bc94ccb3dfa767b53f', '123123', '孤军', '男', '2022-04-09');
INSERT INTO `member` VALUES ('63bfda46ead04696978961f399c37e6d', '123123', '王思思', '女', '2022-04-30');
INSERT INTO `member` VALUES ('64bfda46ead04696978961f399c37e6d', '123123', '白晶晶', '女', '2022-04-30');
INSERT INTO `member` VALUES ('93ce3d7b848649edb01a1e2de6b7e143', '123123', '段甜甜', '男', '2022-04-04');
INSERT INTO `member` VALUES ('94ce3d7b848649edb01a1e2de6b7e143', '123123', '段誉', '男', '2022-04-04');
INSERT INTO `member` VALUES ('a15763ae3fd9431cb7c4542d2122d7a1', '123123', '至尊宝', '男', '2022-04-01');
INSERT INTO `member` VALUES ('a15863ae3fd9431cb7c4542d2122d7a1', '123123', '蔡徐坤', '男', '2022-04-01');
INSERT INTO `member` VALUES ('a56b8b60a698446292df3a79d16799c6', '123123', '吴亦凡', '男', '2022-04-29');
INSERT INTO `member` VALUES ('a58b8b60a698446292df3a79d16799c6', '123123', '风云无忌', '男', '2022-04-29');
INSERT INTO `member` VALUES ('edabd54c406449a0ab105bb7bfe92346', '123123', '阿珂', '女', '2022-04-01');
INSERT INTO `member` VALUES ('edabd56c406449a0ab105bb7bfe92346', '123123', '紫霞', '女', '2022-04-01');
INSERT INTO `member` VALUES ('edc5c2070d154561b8d5aa94ded0ccd9', '123123', '宁采臣', '男', '2022-04-30');
INSERT INTO `member` VALUES ('edc5c2470d154561b8d5aa94ded0ccd9', '123123', '李白', '男', '2022-04-30');
INSERT INTO `member` VALUES ('fcac671e85354bbc8086a94102d8c170', '123123', '扫地僧', '男', '2022-11-01');
INSERT INTO `member` VALUES ('fcac674e85354bbc8086a94102d8c170', '123123', '奈文摩尔', '男', '2022-11-01');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cardid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` int NULL DEFAULT 0,
  `time` datetime NULL DEFAULT NULL,
  `spendtype` int NULL DEFAULT 0 COMMENT '0为人民币，1为积分',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cardid`(`cardid`) USING BTREE,
  CONSTRAINT `record_ibfk_1` FOREIGN KEY (`cardid`) REFERENCES `card` (`cardid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (1, 'f226a06fed11438882f0d3cffd0ece4f', 200, '2020-04-21 22:55:06', 1);
INSERT INTO `record` VALUES (2, 'f226a06fed11438882f0d3cffd0ece4f', 1000, '2020-04-20 22:56:58', 0);
INSERT INTO `record` VALUES (3, 'f226a06fed11438882f0d3cffd0ece4f', -90, '2020-04-23 23:01:17', 0);
INSERT INTO `record` VALUES (4, 'f226a06fed11438882f0d3cffd0ece4f', 200, '2020-04-24 23:01:17', 1);
INSERT INTO `record` VALUES (5, 'f226a06fed11438882f0d3cffd0ece4f', 100, '2020-04-25 23:01:38', 0);
INSERT INTO `record` VALUES (6, 'f226a06fed11438882f0d3cffd0ece4f', -1000, '2020-04-21 23:02:52', 0);
INSERT INTO `record` VALUES (7, 'f226a06fed11438882f0d3cffd0ece4f', 85, '2020-04-20 23:02:52', 1);
INSERT INTO `record` VALUES (8, 'f226a06fed11438882f0d3cffd0ece4f', -1000, '2020-04-22 23:03:40', 0);
INSERT INTO `record` VALUES (9, 'f226a06fed11438882f0d3cffd0ece4f', 85, '2020-04-24 23:03:40', 1);
INSERT INTO `record` VALUES (10, 'f226a06fed11438882f0d3cffd0ece4f', 1000, '2020-04-25 23:03:51', 0);
INSERT INTO `record` VALUES (11, 'f226a06fed11438882f0d3cffd0ece4f', -90, '2020-04-22 23:10:03', 0);
INSERT INTO `record` VALUES (12, 'f226a06fed11438882f0d3cffd0ece4f', 200, '2020-04-24 23:10:03', 1);
INSERT INTO `record` VALUES (13, 'f226a06fed11438882f0d3cffd0ece4f', -90, '2020-04-21 23:11:26', 0);
INSERT INTO `record` VALUES (14, 'f226a06fed11438882f0d3cffd0ece4f', 200, '2020-04-20 23:11:26', 1);
INSERT INTO `record` VALUES (15, 'f226a06fed11438882f0d3cffd0ece4f', -90, '2020-04-22 23:12:29', 0);
INSERT INTO `record` VALUES (16, 'f226a06fed11438882f0d3cffd0ece4f', 200, '2020-04-25 23:12:29', 1);
INSERT INTO `record` VALUES (17, 'f226a06fed11438882f0d3cffd0ece4f', 1000, '2020-04-24 23:14:02', 0);
INSERT INTO `record` VALUES (18, 'f226a06fed11438882f0d3cffd0ece4f', -90, '2020-04-29 23:14:06', 0);
INSERT INTO `record` VALUES (19, 'f226a06fed11438882f0d3cffd0ece4f', 200, '2020-04-29 23:14:06', 1);
INSERT INTO `record` VALUES (20, 'f226a06fed11438882f0d3cffd0ece4f', -90, '2020-04-29 23:14:25', 0);
INSERT INTO `record` VALUES (21, 'f226a06fed11438882f0d3cffd0ece4f', 200, '2020-04-29 23:14:25', 1);
INSERT INTO `record` VALUES (22, 'f226a06fed11438882f0d3cffd0ece4f', -90, '2020-04-29 23:14:39', 0);
INSERT INTO `record` VALUES (23, 'f226a06fed11438882f0d3cffd0ece4f', 200, '2020-04-29 23:14:39', 1);
INSERT INTO `record` VALUES (24, 'f226a06fed11438882f0d3cffd0ece4f', -90, '2020-04-29 23:15:15', 0);
INSERT INTO `record` VALUES (25, 'f226a06fed11438882f0d3cffd0ece4f', 200, '2020-04-29 23:15:15', 1);
INSERT INTO `record` VALUES (26, 'f226a06fed11438882f0d3cffd0ece4f', -90, '2020-04-29 23:15:37', 0);
INSERT INTO `record` VALUES (27, 'f226a06fed11438882f0d3cffd0ece4f', 200, '2020-04-29 23:15:37', 1);
INSERT INTO `record` VALUES (28, 'f226a06fed11438882f0d3cffd0ece4f', -90, '2020-04-29 23:16:25', 0);
INSERT INTO `record` VALUES (29, 'f226a06fed11438882f0d3cffd0ece4f', 200, '2020-04-29 23:16:25', 1);
INSERT INTO `record` VALUES (30, 'f226a06fed11438882f0d3cffd0ece4f', -90, '2020-04-29 23:20:03', 0);
INSERT INTO `record` VALUES (31, 'f226a06fed11438882f0d3cffd0ece4f', 200, '2020-04-29 23:20:03', 1);
INSERT INTO `record` VALUES (32, 'f226a06fed11438882f0d3cffd0ece4f', -90, '2020-04-29 23:21:41', 0);
INSERT INTO `record` VALUES (33, 'f226a06fed11438882f0d3cffd0ece4f', 200, '2020-04-29 23:21:41', 1);
INSERT INTO `record` VALUES (34, 'f226a06fed11438882f0d3cffd0ece4f', -90, '2020-04-29 23:22:52', 0);
INSERT INTO `record` VALUES (35, 'f226a06fed11438882f0d3cffd0ece4f', 200, '2020-04-29 23:22:52', 1);
INSERT INTO `record` VALUES (36, 'f226a06fed11438882f0d3cffd0ece4f', -90, '2020-04-29 23:23:27', 0);
INSERT INTO `record` VALUES (37, 'f226a06fed11438882f0d3cffd0ece4f', 200, '2020-04-29 23:23:27', 1);
INSERT INTO `record` VALUES (38, 'f226a06fed11438882f0d3cffd0ece4f', 1, '2020-04-30 00:00:52', 0);
INSERT INTO `record` VALUES (39, '8b06e3dcd4334c368d666081f666b500', 500, '2020-04-30 15:00:10', 0);
INSERT INTO `record` VALUES (40, '8b06e3dcd4334c368d666081f666b500', -99, '2020-04-20 15:00:16', 0);
INSERT INTO `record` VALUES (41, '8b06e3dcd4334c368d666081f666b500', 99, '2020-04-30 15:00:16', 1);
INSERT INTO `record` VALUES (42, '8b06e3dcd4334c368d666081f666b500', -99, '2020-04-30 17:06:11', 1);
INSERT INTO `record` VALUES (43, 'f226a06fed11438882f0d3cffd0ece4f', -2901, '2020-04-20 17:06:11', 1);
INSERT INTO `record` VALUES (44, '8b06e3dcd4334c368d666081f666b500', -90, '2020-04-30 17:07:09', 0);
INSERT INTO `record` VALUES (45, '8b06e3dcd4334c368d666081f666b500', 200, '2020-04-30 17:07:09', 1);
INSERT INTO `record` VALUES (46, '8b06e3dcd4334c368d666081f666b500', -90, '2020-04-30 17:07:18', 0);
INSERT INTO `record` VALUES (47, '8b06e3dcd4334c368d666081f666b500', 200, '2020-04-30 17:07:18', 1);
INSERT INTO `record` VALUES (48, '8b06e3dcd4334c368d666081f666b500', -90, '2020-04-30 17:07:23', 0);
INSERT INTO `record` VALUES (49, '8b06e3dcd4334c368d666081f666b500', 200, '2020-04-21 17:07:23', 1);
INSERT INTO `record` VALUES (50, '8b06e3dcd4334c368d666081f666b500', -90, '2020-04-30 17:07:32', 0);
INSERT INTO `record` VALUES (51, '8b06e3dcd4334c368d666081f666b500', 200, '2020-04-22 17:07:32', 1);
INSERT INTO `record` VALUES (52, '8b06e3dcd4334c368d666081f666b500', 5000, '2020-04-23 17:08:30', 0);
INSERT INTO `record` VALUES (53, '8b06e3dcd4334c368d666081f666b500', -90, '2020-04-30 17:08:33', 0);
INSERT INTO `record` VALUES (54, '8b06e3dcd4334c368d666081f666b500', 200, '2020-04-30 17:08:34', 1);
INSERT INTO `record` VALUES (55, '8b06e3dcd4334c368d666081f666b500', -1000, '2020-04-30 17:08:57', 1);
INSERT INTO `record` VALUES (56, 'f226a06fed11438882f0d3cffd0ece4f', -400, '2020-04-30 17:08:57', 1);
INSERT INTO `record` VALUES (57, '8b06e3dcd4334c368d666081f666b500', -100, '2020-04-30 17:11:31', 0);
INSERT INTO `record` VALUES (58, '8b06e3dcd4334c368d666081f666b500', 10000, '2020-04-30 17:11:31', 1);
INSERT INTO `record` VALUES (59, '8b06e3dcd4334c368d666081f666b500', -3000, '2020-04-30 17:11:39', 1);
INSERT INTO `record` VALUES (60, '8b06e3dcd4334c368d666081f666b500', -500, '2020-04-30 17:14:01', 1);
INSERT INTO `record` VALUES (61, '8b06e3dcd4334c368d666081f666b500', 0, '2020-04-30 17:14:10', 1);
INSERT INTO `record` VALUES (62, '8b06e3dcd4334c368d666081f666b500', -3000, '2020-04-30 17:14:44', 1);
INSERT INTO `record` VALUES (63, '8b06e3dcd4334c368d666081f666b500', -100, '2020-04-30 17:15:01', 0);
INSERT INTO `record` VALUES (64, '8b06e3dcd4334c368d666081f666b500', 10000, '2020-04-30 17:15:01', 1);
INSERT INTO `record` VALUES (65, '8b06e3dcd4334c368d666081f666b500', -500, '2020-04-21 17:15:08', 1);
INSERT INTO `record` VALUES (66, '8b06e3dcd4334c368d666081f666b500', -500, '2020-04-30 17:16:08', 1);
INSERT INTO `record` VALUES (67, '8b06e3dcd4334c368d666081f666b500', -500, '2020-04-30 17:16:28', 1);
INSERT INTO `record` VALUES (68, '8b06e3dcd4334c368d666081f666b500', -1400, '2020-04-22 17:16:59', 1);
INSERT INTO `record` VALUES (69, '8b06e3dcd4334c368d666081f666b500', -1400, '2020-04-23 17:23:13', 1);
INSERT INTO `record` VALUES (70, '8b06e3dcd4334c368d666081f666b500', -1400, '2020-04-24 17:23:32', 1);
INSERT INTO `record` VALUES (71, '8b06e3dcd4334c368d666081f666b500', -1400, '2020-04-30 17:23:44', 1);
INSERT INTO `record` VALUES (72, '8b06e3dcd4334c368d666081f666b500', -1400, '2020-04-30 17:23:47', 1);
INSERT INTO `record` VALUES (73, '8b06e3dcd4334c368d666081f666b500', -1400, '2020-04-30 17:23:54', 1);
INSERT INTO `record` VALUES (74, '8b06e3dcd4334c368d666081f666b500', -1400, '2020-04-30 17:24:42', 1);
INSERT INTO `record` VALUES (75, '8b06e3dcd4334c368d666081f666b500', -1400, '2020-04-30 17:31:40', 1);
INSERT INTO `record` VALUES (76, '8b06e3dcd4334c368d666081f666b500', -500, '2020-04-30 17:32:01', 1);
INSERT INTO `record` VALUES (77, '0161c880e711464c9bbb5f699f292e23', 100, '2020-04-30 17:33:59', 0);
INSERT INTO `record` VALUES (78, '0967a8dd2cc04fc887cb69f35ae831fd', 100, '2020-04-30 17:34:02', 0);
INSERT INTO `record` VALUES (79, '9a6a2bfb4e95421d92774444c229ddfd', 100, '2020-04-30 17:34:04', 0);
INSERT INTO `record` VALUES (80, 'aa20dce977254b599508979d2e667884', 100, '2020-04-30 17:34:14', 0);
INSERT INTO `record` VALUES (81, 'ba0977e470ba4f6fb48b8c157da98b4d', 9999, '2020-04-21 17:40:42', 0);
INSERT INTO `record` VALUES (82, 'ba0977e470ba4f6fb48b8c157da98b4d', -99, '2020-04-30 17:40:48', 0);
INSERT INTO `record` VALUES (83, 'ba0977e470ba4f6fb48b8c157da98b4d', 25, '2020-04-30 17:40:48', 1);
INSERT INTO `record` VALUES (84, '0b5705e0ed8f4b6fafc4126147b7d6fc', 111, '2020-04-30 17:55:00', 0);
INSERT INTO `record` VALUES (85, '09961c29e8494649b29851388ef440fb', 1234, '2020-04-22 21:20:18', 0);
INSERT INTO `record` VALUES (86, '09961c29e8494649b29851388ef440fb', -100, '2020-04-30 21:20:24', 0);
INSERT INTO `record` VALUES (87, '09961c29e8494649b29851388ef440fb', 10000, '2020-04-30 21:20:24', 1);
INSERT INTO `record` VALUES (88, '09961c29e8494649b29851388ef440fb', -99, '2020-04-30 21:20:34', 0);
INSERT INTO `record` VALUES (89, '09961c29e8494649b29851388ef440fb', 25, '2020-04-30 21:20:34', 1);
INSERT INTO `record` VALUES (91, '8b06e3dcd4334c368d666081f666b500', -1000, '2020-04-30 22:00:58', 0);
INSERT INTO `record` VALUES (92, '8b06e3dcd4334c368d666081f666b500', 85, '2020-04-30 22:00:58', 1);
INSERT INTO `record` VALUES (93, '8b06e3dcd4334c368d666081f666b500', -1000, '2020-04-30 22:01:03', 0);
INSERT INTO `record` VALUES (94, '8b06e3dcd4334c368d666081f666b500', 85, '2020-04-30 22:01:03', 1);
INSERT INTO `record` VALUES (96, '8b06e3dcd4334c368d666081f666b500', -10000, '2020-04-30 22:03:09', 0);
INSERT INTO `record` VALUES (97, '8b06e3dcd4334c368d666081f666b500', 50, '2020-04-30 22:03:09', 1);
INSERT INTO `record` VALUES (98, '8b06e3dcd4334c368d666081f666b500', -10000, '2020-04-30 22:03:11', 0);
INSERT INTO `record` VALUES (99, '8b06e3dcd4334c368d666081f666b500', 50, '2020-04-30 22:03:11', 1);
INSERT INTO `record` VALUES (100, '8b06e3dcd4334c368d666081f666b500', -10000, '2020-04-24 22:03:15', 0);
INSERT INTO `record` VALUES (101, '8b06e3dcd4334c368d666081f666b500', 50, '2020-04-30 22:03:15', 1);
INSERT INTO `record` VALUES (102, '8b06e3dcd4334c368d666081f666b500', -10000, '2020-04-30 22:03:18', 0);
INSERT INTO `record` VALUES (103, '8b06e3dcd4334c368d666081f666b500', 50, '2020-04-30 22:03:18', 1);
INSERT INTO `record` VALUES (104, '8b06e3dcd4334c368d666081f666b500', -10000, '2020-04-30 22:03:21', 0);
INSERT INTO `record` VALUES (105, '8b06e3dcd4334c368d666081f666b500', 50, '2020-04-30 22:03:21', 1);
INSERT INTO `record` VALUES (106, '8b06e3dcd4334c368d666081f666b500', -200, '2020-04-30 22:22:28', 0);
INSERT INTO `record` VALUES (107, '8b06e3dcd4334c368d666081f666b500', 88, '2020-04-30 22:22:28', 1);
INSERT INTO `record` VALUES (108, 'fb0838a8d15e4306aff60bde281b2f27', 1314, '2020-04-30 22:25:11', 0);
INSERT INTO `record` VALUES (109, '8b06e3dcd4334c368d666081f666b500', 0, '2020-04-30 22:29:52', 1);
INSERT INTO `record` VALUES (110, '8c0328f28b60400f983a806d67f705cc', 5000, '2020-04-30 22:30:33', 0);
INSERT INTO `record` VALUES (111, '8c0328f28b60400f983a806d67f705cc', -90, '2020-04-30 22:30:41', 0);
INSERT INTO `record` VALUES (112, '8c0328f28b60400f983a806d67f705cc', 20000, '2020-04-30 22:30:41', 1);
INSERT INTO `record` VALUES (113, '8c0328f28b60400f983a806d67f705cc', -16066, '2020-04-30 22:30:51', 1);
INSERT INTO `record` VALUES (114, '8c0328f28b60400f983a806d67f705cc', 0, '2020-04-30 22:31:20', 1);
INSERT INTO `record` VALUES (115, '0967a8dd2cc04fc887cb69f35ae831fd', 6000, '2020-04-30 22:33:18', 0);
INSERT INTO `record` VALUES (116, '0967a8dd2cc04fc887cb69f35ae831fd', -99, '2020-05-01 00:44:52', 0);
INSERT INTO `record` VALUES (117, '0967a8dd2cc04fc887cb69f35ae831fd', 25, '2020-05-01 00:44:52', 1);
INSERT INTO `record` VALUES (118, '0967a8dd2cc04fc887cb69f35ae831fd', -25, '2020-05-01 10:47:44', 1);
INSERT INTO `record` VALUES (119, '8b06e3dcd4334c368d666081f666b500', -475, '2020-05-01 10:47:44', 1);
INSERT INTO `record` VALUES (120, '0967a8dd2cc04fc887cb69f35ae831fd', 500, '2020-05-01 13:37:18', 0);
INSERT INTO `record` VALUES (121, '4f59de19d3534abfb948f4c9a38e53dc', 1231, '2020-05-01 13:37:30', 0);
INSERT INTO `record` VALUES (122, '0967a8dd2cc04fc887cb69f35ae831fd', 0, '2020-06-11 11:12:14', 1);
INSERT INTO `record` VALUES (123, '8b06e3dcd4334c368d666081f666b500', -333, '2020-06-11 11:12:14', 1);
INSERT INTO `record` VALUES (124, 'f226a06fed11438882f0d3cffd0ece4f', -167, '2020-06-11 11:12:14', 1);

SET FOREIGN_KEY_CHECKS = 1;
