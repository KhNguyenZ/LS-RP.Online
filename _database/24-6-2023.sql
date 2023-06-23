/*
 Navicat Premium Data Transfer

 Source Server         : localhost_
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : lsrp

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 24/06/2023 01:29:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RegisterDay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LastLogin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ActiveAccount` int NULL DEFAULT NULL,
  `CharName0` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Tao nhan vat',
  `CharName1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Tao nhan vat',
  `CharName2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Tao nhan vat',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES (1, 'Khoi_Nguyenz', 'nguyen', NULL, NULL, NULL, 'Tao nhan vat', 'Bi_Dev', 'Tao nhan vat');
INSERT INTO `accounts` VALUES (9, 'Bi_Dev', 'nguyen', NULL, NULL, NULL, 'Tao nhan vat', 'Tao nhan vat', 'Tao nhan vat');
INSERT INTO `accounts` VALUES (10, 'Jey_Bee', 'nguyen', NULL, NULL, NULL, 'Tao nhan vat', 'Tao nhan vat', 'Tao nhan vat');

-- ----------------------------
-- Table structure for doors
-- ----------------------------
DROP TABLE IF EXISTS `doors`;
CREATE TABLE `doors`  (
  `id` int NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `OwnerID` int NULL DEFAULT NULL,
  `Locked` int NULL DEFAULT 0,
  `Admin` int NULL DEFAULT 0,
  `Group` int NULL DEFAULT NULL,
  `VIP` int NULL DEFAULT NULL,
  `ExPosX` float(11, 0) NULL DEFAULT NULL,
  `ExPosY` float NULL DEFAULT NULL,
  `ExPosZ` float NULL DEFAULT NULL,
  `InPosX` float NULL DEFAULT NULL,
  `InPosY` float NULL DEFAULT NULL,
  `InPosZ` float NULL DEFAULT NULL,
  `PickupID` int NULL DEFAULT 19132,
  `ExVW` int NULL DEFAULT 0,
  `InVW` int NULL DEFAULT 0,
  `ExInterior` int NULL DEFAULT -1,
  `InInterior` int NULL DEFAULT -1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of doors
-- ----------------------------
INSERT INTO `doors` VALUES (10, 'Hacker', 0, 0, 0, 0, 0, 1768, -1895.03, 13.584, 0, 0, 0, 19135, 5, 0, 0, 0);
INSERT INTO `doors` VALUES (11, 'Hacker', NULL, 0, 0, NULL, NULL, 1766, -1895.98, 13.586, NULL, NULL, NULL, 19135, 0, 0, -1, -1);

-- ----------------------------
-- Table structure for players
-- ----------------------------
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `AccID` int NULL DEFAULT -1,
  `PlayerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Khong co thong tin',
  `Cash` int NULL DEFAULT 1000,
  `Health` float NULL DEFAULT 100,
  `Armour` float NULL DEFAULT 0,
  `Skin` int NULL DEFAULT 299,
  `PosX` float NULL DEFAULT 1192,
  `PosY` float NULL DEFAULT -1292,
  `PosZ` float NULL DEFAULT 13,
  `PosA` float(11, 0) NULL DEFAULT 180,
  `TanSo` int NULL DEFAULT 0,
  `AdminLevel` int NULL DEFAULT 0,
  `LastLogin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00:00:00 00-00-0000',
  `Gender` int NULL DEFAULT 0,
  `Level` int NULL DEFAULT 0,
  `Interior` int NULL DEFAULT -1,
  `VW` int NULL DEFAULT 0,
  `QuocTich` int NULL DEFAULT 0,
  `BirthDay` int NULL DEFAULT 0,
  `BirthMonth` int NULL DEFAULT 0,
  `BirthYear` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of players
-- ----------------------------
INSERT INTO `players` VALUES (0, 0, 'Bi_Dev', NULL, 1000, 100, 0, 1, 1767.73, -1895.53, 13.5843, 249, 0, 7, '00:00:00 00-00-0000', 0, NULL, 0, 5, 0, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
