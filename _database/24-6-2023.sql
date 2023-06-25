-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 21, 2023 lúc 05:11 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `newbase`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `RegisterDay` varchar(255) DEFAULT NULL,
  `LastLogin` varchar(255) DEFAULT NULL,
  `ActiveAccount` int(11) DEFAULT NULL,
  `CharName0` varchar(255) DEFAULT 'Tao nhan vat',
  `CharName1` varchar(255) DEFAULT 'Tao nhan vat',
  `CharName2` varchar(255) DEFAULT 'Tao nhan vat',
  `pTempCharName` varchar(255) NOT NULL DEFAULT 'Loading name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id`, `Username`, `Password`, `RegisterDay`, `LastLogin`, `ActiveAccount`, `CharName0`, `CharName1`, `CharName2`, `pTempCharName`) VALUES
(1, 'Khoi_Nguyenz', 'nguyen', NULL, NULL, NULL, 'Khoi_Nguyen', 'Tao nhan vat', 'Tao nhan vat', 'Loading name'),
(2, 'Khoi_Nguyen', 'nguyenz', NULL, NULL, NULL, 'Jey_PGB', 'Jey_Dev', 'Tao nhan vat', 'Loading name'),
(3, 'phatbentre', 'Phatdz123', NULL, NULL, NULL, 'Stanley_', 'Tao nhan vat', 'Tao nhan vat', 'Loading name'),
(4, NULL, NULL, NULL, NULL, NULL, 'Tao nhan vat', 'Tao nhan vat', 'Tao nhan vat', 'Loading name'),
(5, 'Stanley_', 'Phatdz123', NULL, NULL, NULL, 'Phata_Z', 'Tao nhan vat', 'Tao nhan vat', 'Loading name');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doors`
--

CREATE TABLE `doors` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `OwnerID` int(11) DEFAULT NULL,
  `Locked` int(11) DEFAULT 0,
  `Admin` int(11) DEFAULT 0,
  `Group` int(11) DEFAULT NULL,
  `VIP` int(11) DEFAULT NULL,
  `ExPosX` float(11,0) DEFAULT NULL,
  `ExPosY` float DEFAULT NULL,
  `ExPosZ` float DEFAULT NULL,
  `InPosX` float DEFAULT NULL,
  `InPosY` float DEFAULT NULL,
  `InPosZ` float DEFAULT NULL,
  `PickupID` int(11) DEFAULT NULL,
  `ExVW` int(11) DEFAULT NULL,
  `InVW` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `doors`
--

INSERT INTO `doors` (`id`, `Name`, `OwnerID`, `Locked`, `Admin`, `Group`, `VIP`, `ExPosX`, `ExPosY`, `ExPosZ`, `InPosX`, `InPosY`, `InPosZ`, `PickupID`, `ExVW`, `InVW`) VALUES
(0, 'Door Sieu VIP', 6, 0, 0, 0, 0, 1193, -1292.68, 13.38, NULL, NULL, NULL, 19135, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `AccID` int(11) DEFAULT NULL,
  `PlayerName` varchar(255) DEFAULT NULL,
  `PlayerBio` varchar(255) DEFAULT NULL,
  `Cash` int(11) DEFAULT 1000,
  `Health` float DEFAULT 100,
  `Armour` float DEFAULT 0,
  `Skin` int(11) DEFAULT 299,
  `PosX` float DEFAULT 1754.74,
  `PosY` float DEFAULT -1895.43,
  `PosZ` float DEFAULT 13.587,
  `PosA` float(11,0) DEFAULT 90,
  `TanSo` int(11) DEFAULT 0,
  `AdminLevel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `players`
--

INSERT INTO `players` (`id`, `AccID`, `PlayerName`, `PlayerBio`, `Cash`, `Health`, `Armour`, `Skin`, `PosX`, `PosY`, `PosZ`, `PosA`, `TanSo`, `AdminLevel`) VALUES
(6, 0, 'Khoi_Nguyen', NULL, 1000, 50, 50, 3, 1192.78, -1292.68, 13.38, 90, 1, NULL),
(7, 0, 'Jey_PGB', NULL, 1000, 100, 0, 144, 1192.78, -1292.68, 13.38, 90, 0, NULL),
(8, 0, 'Jey_Dev', NULL, 1000, 100, 0, 96, 1192.78, -1292.68, 13.38, 90, 0, NULL),
(9, 0, 'Stanley_', NULL, 1000, 100, 0, 137, 1192, -1292, 13, 90, 0, NULL),
(10, 0, 'Phata_Z', NULL, 1000, 100, 0, 131, 1754.74, -1895.43, 13.587, 90, 0, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `doors`
--
ALTER TABLE `doors`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
