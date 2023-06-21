/*
 Navicat Premium Data Transfer

 Source Server         : localhost_
 Source Server Type    : MySQL
 Source Server Version : 100425
 Source Host           : localhost:3306
 Source Schema         : newbase

 Target Server Type    : MySQL
 Target Server Version : 100425
 File Encoding         : 65001

 Date: 28/04/2023 16:33:16
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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES (1, 'Khoi_Nguyenz', 'nguyen', NULL, NULL, NULL, 'Khoi_Nguyen', 'Tao nhan vat', 'Tao nhan vat');
INSERT INTO `accounts` VALUES (2, 'Khoi_Nguyen', 'nguyenz', NULL, NULL, NULL, 'Jey_PGB', 'Jey_Dev', 'Tao nhan vat');

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
  `PickupID` int NULL DEFAULT NULL,
  `ExVW` int NULL DEFAULT NULL,
  `InVW` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doors
-- ----------------------------
INSERT INTO `doors` VALUES (0, 'Door Sieu VIP', 6, 0, 0, 0, 0, 1193, -1292.68, 13.38, NULL, NULL, NULL, 19135, NULL, NULL);

-- ----------------------------
-- Table structure for players
-- ----------------------------
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `AccID` int NULL DEFAULT NULL,
  `PlayerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PlayerBio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Cash` int NULL DEFAULT 1000,
  `Health` float NULL DEFAULT 100,
  `Armour` float NULL DEFAULT 0,
  `Skin` int NULL DEFAULT 299,
  `PosX` float NULL DEFAULT 1192,
  `PosY` float NULL DEFAULT -1292,
  `PosZ` float NULL DEFAULT 13,
  `PosA` float(11, 0) NULL DEFAULT 90,
  `TanSo` int NULL DEFAULT 0,
  `AdminLevel` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of players
-- ----------------------------
INSERT INTO `players` VALUES (6, 0, 'Khoi_Nguyen', NULL, 1000, 50, 50, 3, 1192.78, -1292.68, 13.38, 90, 1, NULL);
INSERT INTO `players` VALUES (7, 0, 'Jey_PGB', NULL, 1000, 100, 0, 144, 1192.78, -1292.68, 13.38, 90, 0, NULL);
INSERT INTO `players` VALUES (8, 0, 'Jey_Dev', NULL, 1000, 100, 0, 96, 1192.78, -1292.68, 13.38, 90, 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
