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

 Date: 24/06/2023 14:50:20
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
-- Table structure for biz
-- ----------------------------
DROP TABLE IF EXISTS `biz`;
CREATE TABLE `biz`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Type` int NULL DEFAULT NULL,
  `ExPosX` float(11, 0) NULL DEFAULT NULL,
  `ExPosY` float NULL DEFAULT NULL,
  `ExPosZ` float NULL DEFAULT NULL,
  `Locked` int NULL DEFAULT NULL,
  `OwnerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `InPosX` float NULL DEFAULT NULL,
  `InPosY` float NULL DEFAULT NULL,
  `InPosZ` float NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for biz_247
-- ----------------------------
DROP TABLE IF EXISTS `biz_247`;
CREATE TABLE `biz_247`  (
  `id` int NOT NULL,
  `BizID` int NULL DEFAULT NULL,
  `ItemSlot1` int NULL DEFAULT NULL,
  `ItemSlot2` int NULL DEFAULT NULL,
  `ItemSlot3` int NULL DEFAULT NULL,
  `ItemSlot4` int NULL DEFAULT NULL,
  `ItemSlot5` int NULL DEFAULT NULL,
  `ItemSlot6` int NULL DEFAULT NULL,
  `ItemSlot7` int NULL DEFAULT NULL,
  `ItemSlot8` int NULL DEFAULT NULL,
  `ItemSlot9` int NULL DEFAULT NULL,
  `ItemSlot10` int NULL DEFAULT NULL,
  `ItemSlot11` int NULL DEFAULT NULL,
  `ItemSlot12` int NULL DEFAULT NULL,
  `ItemSlot13` int NULL DEFAULT NULL,
  `ItemSlot14` int NULL DEFAULT NULL,
  `ItemSlot15` int NULL DEFAULT NULL,
  `ItemSlot16` int NULL DEFAULT NULL,
  `ItemSlot17` int NULL DEFAULT NULL,
  `ItemSlot18` int NULL DEFAULT NULL,
  `ItemSlot19` int NULL DEFAULT NULL,
  `ItemSlot20` int NULL DEFAULT NULL,
  `ItemSlot21` int NULL DEFAULT NULL,
  `ItemSlot22` int NULL DEFAULT NULL,
  `ItemSlot23` int NULL DEFAULT NULL,
  `ItemSlot24` int NULL DEFAULT NULL,
  `ItemSlot25` int NULL DEFAULT NULL,
  `ItemSlot26` int NULL DEFAULT NULL,
  `ItemSlot27` int NULL DEFAULT NULL,
  `ItemSlot28` int NULL DEFAULT NULL,
  `ItemSlot29` int NULL DEFAULT NULL,
  `ItemSlot30` int NULL DEFAULT NULL,
  `ItemSlot31` int NULL DEFAULT NULL,
  `ItemSlot32` int NULL DEFAULT NULL,
  `ItemSlot33` int NULL DEFAULT NULL,
  `ItemSlot34` int NULL DEFAULT NULL,
  `ItemSlot35` int NULL DEFAULT NULL,
  `ItemSlot36` int NULL DEFAULT NULL,
  `ItemSlot37` int NULL DEFAULT NULL,
  `ItemSlot38` int NULL DEFAULT NULL,
  `ItemSlot39` int NULL DEFAULT NULL,
  `ItemSlot40` int NULL DEFAULT NULL,
  `ItemSlot41` int NULL DEFAULT NULL,
  `ItemSlot42` int NULL DEFAULT NULL,
  `ItemSlot43` int NULL DEFAULT NULL,
  `ItemSlot44` int NULL DEFAULT NULL,
  `ItemSlot45` int NULL DEFAULT NULL,
  `ItemSlot46` int NULL DEFAULT NULL,
  `ItemSlot47` int NULL DEFAULT NULL,
  `ItemSlot48` int NULL DEFAULT NULL,
  `ItemSlot49` int NULL DEFAULT NULL,
  `ItemSlot50` int NULL DEFAULT NULL,
  
  `PriceItem1` int NULL DEFAULT NULL,
  `PriceItem2` int NULL DEFAULT NULL,
  `PriceItem3` int NULL DEFAULT NULL,
  `PriceItem4` int NULL DEFAULT NULL,
  `PriceItem5` int NULL DEFAULT NULL,
  `PriceItem6` int NULL DEFAULT NULL,
  `PriceItem7` int NULL DEFAULT NULL,
  `PriceItem8` int NULL DEFAULT NULL,
  `PriceItem9` int NULL DEFAULT NULL,
  `PriceItem10` int NULL DEFAULT NULL,
  `PriceItem11` int NULL DEFAULT NULL,
  `PriceItem12` int NULL DEFAULT NULL,
  `PriceItem13` int NULL DEFAULT NULL,
  `PriceItem14` int NULL DEFAULT NULL,
  `PriceItem15` int NULL DEFAULT NULL,
  `PriceItem16` int NULL DEFAULT NULL,
  `PriceItem17` int NULL DEFAULT NULL,
  `PriceItem18` int NULL DEFAULT NULL,
  `PriceItem19` int NULL DEFAULT NULL,
  `PriceItem20` int NULL DEFAULT NULL,
  `PriceItem21` int NULL DEFAULT NULL,
  `PriceItem22` int NULL DEFAULT NULL,
  `PriceItem23` int NULL DEFAULT NULL,
  `PriceItem24` int NULL DEFAULT NULL,
  `PriceItem25` int NULL DEFAULT NULL,
  `PriceItem26` int NULL DEFAULT NULL,
  `PriceItem27` int NULL DEFAULT NULL,
  `PriceItem28` int NULL DEFAULT NULL,
  `PriceItem29` int NULL DEFAULT NULL,
  `PriceItem30` int NULL DEFAULT NULL,
  `PriceItem31` int NULL DEFAULT NULL,
  `PriceItem32` int NULL DEFAULT NULL,
  `PriceItem33` int NULL DEFAULT NULL,
  `PriceItem34` int NULL DEFAULT NULL,
  `PriceItem35` int NULL DEFAULT NULL,
  `PriceItem36` int NULL DEFAULT NULL,
  `PriceItem37` int NULL DEFAULT NULL,
  `PriceItem38` int NULL DEFAULT NULL,
  `PriceItem39` int NULL DEFAULT NULL,
  `PriceItem40` int NULL DEFAULT NULL,
  `PriceItem41` int NULL DEFAULT NULL,
  `PriceItem42` int NULL DEFAULT NULL,
  `PriceItem43` int NULL DEFAULT NULL,
  `PriceItem44` int NULL DEFAULT NULL,
  `PriceItem45` int NULL DEFAULT NULL,
  `PriceItem46` int NULL DEFAULT NULL,
  `PriceItem47` int NULL DEFAULT NULL,
  `PriceItem48` int NULL DEFAULT NULL,
  `PriceItem49` int NULL DEFAULT NULL,
  `PriceItem50` int NULL DEFAULT NULL,

  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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

SET FOREIGN_KEY_CHECKS = 1;

