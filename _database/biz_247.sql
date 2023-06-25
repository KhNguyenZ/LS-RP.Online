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

 Date: 24/06/2023 20:19:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for biz_247
-- ----------------------------
DROP TABLE IF EXISTS `biz_247`;
CREATE TABLE `biz_247`  (
  `id` int NOT NULL,
  `BizID` int NULL DEFAULT 0,
  `PriceItem1` int NULL DEFAULT 0,
  `PriceItem2` int NULL DEFAULT 0,
  `PriceItem3` int NULL DEFAULT 0,
  `PriceItem4` int NULL DEFAULT 0,
  `PriceItem5` int NULL DEFAULT 0,
  `PriceItem6` int NULL DEFAULT 0,
  `PriceItem7` int NULL DEFAULT 0,
  `PriceItem8` int NULL DEFAULT 0,
  `PriceItem9` int NULL DEFAULT 0,
  `PriceItem10` int NULL DEFAULT 0,
  `PriceItem11` int NULL DEFAULT 0,
  `PriceItem12` int NULL DEFAULT 0,
  `PriceItem13` int NULL DEFAULT 0,
  `PriceItem14` int NULL DEFAULT 0,
  `PriceItem15` int NULL DEFAULT 0,
  `PriceItem16` int NULL DEFAULT 0,
  `PriceItem17` int NULL DEFAULT 0,
  `PriceItem18` int NULL DEFAULT 0,
  `PriceItem19` int NULL DEFAULT 0,
  `PriceItem20` int NULL DEFAULT 0,
  `PriceItem21` int NULL DEFAULT 0,
  `PriceItem22` int NULL DEFAULT 0,
  `PriceItem23` int NULL DEFAULT 0,
  `PriceItem24` int NULL DEFAULT 0,
  `PriceItem25` int NULL DEFAULT 0,
  `PriceItem26` int NULL DEFAULT 0,
  `PriceItem27` int NULL DEFAULT 0,
  `PriceItem28` int NULL DEFAULT 0,
  `PriceItem29` int NULL DEFAULT 0,
  `PriceItem30` int NULL DEFAULT 0,
  `PriceItem31` int NULL DEFAULT 0,
  `PriceItem32` int NULL DEFAULT 0,
  `PriceItem33` int NULL DEFAULT 0,
  `PriceItem34` int NULL DEFAULT 0,
  `PriceItem35` int NULL DEFAULT 0,
  `PriceItem36` int NULL DEFAULT 0,
  `PriceItem37` int NULL DEFAULT 0,
  `PriceItem38` int NULL DEFAULT 0,
  `PriceItem39` int NULL DEFAULT 0,
  `PriceItem40` int NULL DEFAULT 0,
  `PriceItem41` int NULL DEFAULT 0,
  `PriceItem42` int NULL DEFAULT 0,
  `PriceItem43` int NULL DEFAULT 0,
  `PriceItem44` int NULL DEFAULT 0,
  `PriceItem45` int NULL DEFAULT 0,
  `PriceItem46` int NULL DEFAULT 0,
  `PriceItem47` int NULL DEFAULT 0,
  `PriceItem48` int NULL DEFAULT 0,
  `PriceItem49` int NULL DEFAULT 0,
  `PriceItem50` int NULL DEFAULT 0,
  `Inventory` int NULL DEFAULT 100,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
