-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 17, 2019 at 04:14 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystudy`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
CREATE TABLE IF NOT EXISTS `access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_level_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `user_level_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 2, 4),
(19, 2, 5),
(20, 2, 6),
(21, 2, 7),
(22, 2, 8),
(23, 2, 9),
(24, 2, 10),
(25, 2, 11),
(26, 2, 12),
(27, 2, 13),
(28, 2, 14),
(29, 2, 15),
(30, 2, 16),
(31, 2, 17),
(32, 2, 18),
(39, 3, 5),
(40, 3, 6),
(41, 3, 7),
(47, 5, 11),
(48, 5, 12),
(50, 5, 14),
(58, 4, 8),
(59, 4, 9),
(60, 4, 10),
(61, 6, 15),
(62, 6, 16),
(63, 6, 13),
(66, 1, 19),
(67, 1, 18),
(68, 1, 21);

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `address`, `city`, `province`, `zipcode`, `phone`) VALUES
(26, 6, 'KP. Bulak', 'Depok', 'Jawa Barat', 16423, '081316041110'),
(27, 1, 'KP. Bulak', 'Depok', 'Jawa Barat', 16423, '081316041110'),
(28, 10, 'KP. Bulak', 'Depok', 'Jawa Barat', 16423, '081316041110'),
(35, 11, 'KP Bulak', 'Depok', 'Jawa Barat', 16423, '081316041110'),
(36, 4, 'KP Bulak', 'Depok', 'Jawa Barat', 16423, '081316041110'),
(37, 5, 'KP Bulak', 'Depok', 'Jawa Barat', 16423, '081316041110'),
(39, 7, 'KP Bulak Beji', 'Depok', 'Jawa Barat', 16423, '81316041110'),
(40, 7, 'KP Bulak RT.02/13', 'Depok', 'Jawa Barat', 16423, '81316041110'),
(42, 7, 'KP Bulak', 'Depok', 'Jawa Barat', 16423, '81316041110'),
(43, 21, 'KP Bulak', 'Depok', 'Jawa Barat', 16423, '081316041110'),
(44, 2, 'KP Bulak', 'Depok', 'Jawa Barat', 16423, '081316041110'),
(45, 21, 'KP Bulak', 'Depok', 'Jawa Barat', 16423, '081316041110'),
(46, 22, 'Jl. Pasar MInggu', 'Jakarta Selatan', 'Jawa Barat', 16423, '081316041110');

-- --------------------------------------------------------

--
-- Table structure for table `address_office`
--

DROP TABLE IF EXISTS `address_office`;
CREATE TABLE IF NOT EXISTS `address_office` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `office_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address_office`
--

INSERT INTO `address_office` (`id`, `office_id`, `address`, `city`, `province`, `zipcode`, `phone`) VALUES
(19, 6, 'Pondok Gede, Bekasi', 'Bekasi', 'Jawa Barat', 17520, '021'),
(20, 6, 'Serang', 'Cikarang - Bekasi', 'Jawa Barat', 17520, '0813'),
(34, 7, 'KP Bulak', 'Depok', 'Jawa Barat', 16423, '081316041110'),
(55, 18, 'KP Bulak', 'Depok', 'Jawa Barat', 16423, '81316041110'),
(56, 18, 'Jl. Pasar MInggu', 'Jaksel', 'Jawa Barat', 16423, '81316041110');

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

DROP TABLE IF EXISTS `apply`;
CREATE TABLE IF NOT EXISTS `apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `office_id` int(11) NOT NULL,
  `active` enum('0','1') NOT NULL,
  `code` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `receive` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL,
  `remarks` text NOT NULL,
  `message` text NOT NULL,
  `date_start` date NOT NULL,
  `date_finish` date NOT NULL,
  `created_on` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `skill1` int(11) NOT NULL,
  `skill2` int(11) NOT NULL,
  `skill3` int(11) NOT NULL,
  `skill4` int(11) NOT NULL,
  `skill5` int(11) NOT NULL,
  `desc1` varchar(255) NOT NULL,
  `desc2` varchar(255) NOT NULL,
  `desc3` varchar(255) NOT NULL,
  `desc4` varchar(255) NOT NULL,
  `desc5` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply`
--

INSERT INTO `apply` (`id`, `user_id`, `office_id`, `active`, `code`, `position`, `quantity`, `stock`, `status`, `receive`, `location`, `salary`, `remarks`, `message`, `date_start`, `date_finish`, `created_on`, `created_by`, `modified_on`, `modified_by`, `barcode`, `skill1`, `skill2`, `skill3`, `skill4`, `skill5`, `desc1`, `desc2`, `desc3`, `desc4`, `desc5`) VALUES
(1, 0, 7, '1', '201901002', 'Programmer Junior', 20, 16, 'new', '', 'KP Bulak', '4500000', 'ok', '', '2019-01-01', '2019-01-31', 1546922164, 1, 1547528360, 4, '', 8, 8, 8, 8, 8, 'Male', 'Single', 'Jadebotabek', 'S1', 'IT'),
(2, 0, 7, '1', '201901002', 'Programmer Junior', 20, 15, 'new', '', 'KP Bulak', '4500000', 'ok', '', '2019-01-01', '2019-01-31', 1547528413, 4, 1547528699, 4, '', 8, 8, 8, 8, 8, 'Male', 'Single', 'Jadebotabek', 'S1', 'IT'),
(3, 4, 7, '1', '201901002', 'Programmer Junior', 20, 14, 'new', 'RECEIVE', 'KP Bulak', '4500000', 'ok', 'You\'ve been invited by PT Google Indonesia for a career discussion, Congratulation !!', '2019-01-01', '2019-01-31', 1547528887, 4, 1547528887, 4, '', 8, 8, 8, 8, 8, 'Male', 'Single', 'Jadebotabek', 'S1', 'IT'),
(423, 0, 6, '1', '201901003', 'Programmer Web', 10, 10, 'new', '0', 'Pondok Gede, Bekasi', '4500000', 'ok', '0', '2019-01-01', '2019-01-31', 1546922540, 1, 1546922540, 1, 'no name', 8, 8, 8, 8, 8, '8', '8', '8', '8', '8'),
(427, 0, 7, '1', '201901004', 'Staff HRD', 4, 4, 'expired', '', 'KP Bulak', '4000000', 'ok', '', '2018-11-01', '2018-12-15', 1546922778, 1, 1546922824, 1, '', 9, 9, 9, 9, 9, 'Male And Female', 'Single', 'Jadebotabek', 'S1', 'All Major'),
(428, 0, 7, '1', '201901004', 'Staff HRD', 4, 3, 'expired', '', 'KP Bulak', '4000000', 'ok', '', '2018-11-01', '2018-12-15', 1546922792, 1, 1546922810, 1, '', 9, 9, 9, 9, 9, 'Male And Female', 'Single', 'Jadebotabek', 'S1', 'All Major');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(10) DEFAULT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(5) DEFAULT NULL,
  `foto_barang` varchar(100) DEFAULT NULL,
  `id_jenis` int(11) DEFAULT NULL,
  `id_merk` int(11) DEFAULT NULL,
  `kode_supplier` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `kode_barang`, `nama_barang`, `harga`, `stok`, `foto_barang`, `id_jenis`, `id_merk`, `kode_supplier`) VALUES
(2, 'BRG0002', 'Mesin', 3000000, 2, 'barang_1526268105.jpg', 1, 1, 'sp002'),
(3, 'BRG0003', 'Knalpot', 500000, 4, 'barang_1526268446.jpg', 1, 1, 'sp002'),
(4, 'BRG0005', 'Lampu Sen', 20000, 3, 'barang_1545979565', 1, 1, 'sp002'),
(5, 'BRG0005', 'Oli Mesin', 50000, 20, 'barang_1526268525.png', 1, 1, 'sp001'),
(6, 'BRG0005', 'test', 10, 4, 'barang_1545979558', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` enum('0','1') NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `minimum` int(11) NOT NULL,
  `maximum` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `composer` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `years` year(4) NOT NULL,
  `remarks` text NOT NULL,
  `used` int(11) NOT NULL,
  `from` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `images` blob NOT NULL,
  `qr_code` varchar(255) NOT NULL,
  `created_on` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `active`, `code`, `name`, `quantity`, `stock`, `minimum`, `maximum`, `location`, `category`, `composer`, `publisher`, `years`, `remarks`, `used`, `from`, `price`, `images`, `qr_code`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(3, '1', '190103001', 'Web PHP', 6, 4, 5, 100, 'B301', 'Produktif', 'Syabandz', 'Syabandz creation', 2018, 'OK', 10, 'Mawardi Syaban', '10000', 0x50524f44554b544946312e6a7067, '003.png', 2018, 1, 2019, 1),
(4, '1', '190103002', 'Codeigniter', 100, 78, 5, 100, 'B301', 'Produktif', 'Syabandz', 'Syabandz creation', 2018, 'ok', 6, 'Mawardi Syaban', '10000', '', '190103002.png', 2019, 1, 1547825884, 1),
(5, '1', '190106003', 'Kewirausahaan XII/3', 4, 4, 0, 4, 'A004', 'Prakarya dan Kewirausahaan', 'Ir. Hendro. M.M', 'Erlangga', 2010, 'baru', 0, 'Erlangga', '100000', '', '190106003.png', 2019, 1, 2019, 1),
(6, '1', '190106004', 'Bahasa Inggris X/1', 53, 53, 0, 53, 'B004', 'Bahasa Inggris', 'Utami Widyati', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', 2014, 'baru', 0, 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '100000', '', '190106004.png', 2019, 1, 2019, 1),
(7, '1', '190106005', 'Seni Budaya XI/2', 18, 18, 0, 18, 'B003', 'Seni Budaya', 'Sem Cornelyus Bangun', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', 2014, 'baru', 0, 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '100000', '', '190106005.png', 2019, 1, 2019, 1),
(8, '1', '190106006', 'Matematika XI/1', 39, 39, 0, 39, 'C004', 'Matematika', 'Bornok Sinaga', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', 2013, 'baru', 0, 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '100000', '', '190106006.png', 2019, 1, 2019, 1),
(9, '1', '190106007', 'Penjaskes XI/1', 46, 46, 0, 46, 'C001', 'PJOK', 'Sumaryoto', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', 2014, 'baru', 0, 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '100000', '', '190106007.png', 2019, 1, 2019, 1),
(10, '1', '190106008', 'Bahasa Indonesia XI/2', 20, 20, 0, 19, 'C003', 'Bahasa Indonesia', 'Maryanto', 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', 2013, 'baru', 1, 'Pusat Kurikulum dan Perbukuan, Balitbang Kemdikbud', '100000', '', '190106008.png', 2019, 1, 1547701131, 1),
(11, '1', '190123009', 'Mawardi Syaban', 1, 1, 1, 1, '123', 'PJOK', '1', '1', 2011, '1', 0, '1', '1', '', '190123009.png', 1548245546, 1, 1548245546, 1);

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

DROP TABLE IF EXISTS `borrow`;
CREATE TABLE IF NOT EXISTS `borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `active` enum('0','1') NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `date_borrow` date NOT NULL,
  `date_back` date NOT NULL,
  `date_late` date NOT NULL,
  `cash` varchar(255) NOT NULL,
  `subtotal` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `created_on` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `cash_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`id`, `user_id`, `book_id`, `active`, `code`, `status`, `quantity`, `remarks`, `date_borrow`, `date_back`, `date_late`, `cash`, `subtotal`, `total`, `created_on`, `created_by`, `modified_on`, `modified_by`, `cash_desc`) VALUES
(36, 10, 4, '1', '20190106003', 'back', 1, '', '2018-12-05', '2018-12-19', '2018-12-26', '1000', '4000', '', 1546786254, 1, 1546787267, 1, '1'),
(37, 3, 4, '1', '20190106004', 'borrow', 1, '', '2019-01-06', '2019-01-13', '2019-01-06', '', '0', '', 1546786484, 1, 1546786673, 1, ''),
(38, 11, 4, '1', '20190106005', 'back', 1, '', '2018-12-22', '2018-12-29', '2019-01-05', '1000', '5000', '', 1546786761, 1, 1546787357, 1, '1'),
(39, 3, 4, '1', '20190106006', 'back', 1, '', '2018-11-03', '2018-11-10', '2018-12-01', '3000', '3000', '', 1546786811, 1, 1546787167, 1, '1'),
(40, 11, 10, '1', '20190106007', 'borrow', 1, '', '2019-01-06', '2019-01-13', '2019-01-06', '', '', '', 1546793434, 1, 1546793434, 1, ''),
(41, 3, 4, '1', '20190117008', 'borrow', 1, '', '2019-01-17', '2019-01-24', '2019-01-17', '', '', '', 1547692709, 1, 1547692709, 1, ''),
(42, 3, 4, '1', '20190117009', 'borrow', 1, '', '2019-01-17', '2019-01-24', '2019-01-17', '', '', '', 1547692852, 1, 1547692852, 1, ''),
(43, 11, 4, '1', '20190117010', 'borrow', 1, '', '2019-01-17', '2019-01-24', '2019-01-17', '', '', '', 1547692944, 1, 1547692944, 1, ''),
(44, 3, 4, '1', '20190118011', 'borrow', 1, '', '2019-01-18', '2019-01-25', '2019-01-18', '', '', '', 1547825126, 1, 1547825126, 1, ''),
(45, 11, 4, '1', '20190118012', 'borrow', 1, '', '2019-01-18', '2019-01-25', '2019-01-18', '', '0', '', 1547825160, 1, 1547825943, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_details`
--

DROP TABLE IF EXISTS `borrow_details`;
CREATE TABLE IF NOT EXISTS `borrow_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_borrow` date NOT NULL,
  `date_back` date NOT NULL,
  `date_late` date NOT NULL,
  `cash` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
CREATE TABLE IF NOT EXISTS `delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `active` enum('0','1') NOT NULL,
  `code` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remarks` text NOT NULL,
  `total` varchar(255) NOT NULL,
  `date_order` date NOT NULL,
  `date_delivery` date NOT NULL,
  `date_arrive` date NOT NULL,
  `created_on` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `user_id`, `product_id`, `active`, `code`, `unit`, `price`, `quantity`, `location`, `status`, `remarks`, `total`, `date_order`, `date_delivery`, `date_arrive`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(3, 17, 3, '1', '012019001', 'Centimeter', '11', 1000, '1', 'Pending', 'ok', '1000', '2019-01-01', '2019-01-15', '2019-01-31', 1547696252, 1, 1547696268, 1),
(4, 5, 3, '1', '012019002', 'Box', '1', 10000, 'B101', 'Proccessing', 'ok', '10000', '2019-01-01', '2019-01-23', '2019-01-01', 1547697160, 1, 1547697160, 1);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
CREATE TABLE IF NOT EXISTS `details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `quantity1` varchar(255) NOT NULL,
  `quantity2` varchar(255) NOT NULL,
  `quantity3` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `date2` date NOT NULL,
  `date3` date NOT NULL,
  `remarks` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

DROP TABLE IF EXISTS `detail_transaksi`;
CREATE TABLE IF NOT EXISTS `detail_transaksi` (
  `kode_transaksi` varchar(10) DEFAULT NULL,
  `kode_barang` varchar(10) DEFAULT NULL,
  `qty` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`kode_transaksi`, `kode_barang`, `qty`) VALUES
('TR00001', 'BRG0002', 1),
('TR00001', 'BRG0003', 2),
('TR00002', 'BRG0005', 2),
('TR00002', 'BRG0004', 2),
('TR00002', 'BRG0003', 2),
('TR00003', 'BRG0003', 1),
('TR00005', 'BRG0003', 1);

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
CREATE TABLE IF NOT EXISTS `material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `active` enum('0','1') NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `minimum` int(11) NOT NULL,
  `maximum` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `used` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `qr_code` varchar(255) NOT NULL,
  `date_order` date NOT NULL,
  `date_arrive` date NOT NULL,
  `created_on` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id`, `product_id`, `active`, `code`, `name`, `quantity`, `stock`, `minimum`, `maximum`, `location`, `category`, `unit`, `price`, `status`, `used`, `remarks`, `qr_code`, `date_order`, `date_arrive`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 0, '1', 'MAT0001', 'air', 1, 1, 1, 10, 'B301', 'Tinta', 'PCS', '1000', 'Pending', 0, 'ok', 'MAT0001.png', '2019-01-01', '2019-01-30', 2019, 1, 2019, 1),
(5, 0, '1', 'MAT0003', 'Mawardi Syaban', 1, 1, 1, 1, '1', 'Tinta', 'PCS', '1000', 'Proccessing', 0, 'ok', 'MAT0003.png', '2019-01-01', '2019-01-31', 1547696666, 1, 1547696666, 1),
(6, 4, '1', 'MAT0004', 'Mawardi Syaban', 100, 100, 1, 1, '1', 'Tinta', 'Sachet', '1000', 'Proccessing', 0, 'ok', 'MAT0004.png', '2019-01-01', '2019-01-29', 1547696831, 1, 1547696846, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `main_menu` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `active`, `name`, `url`, `icon`, `main_menu`) VALUES
(1, '1', 'Settings', '#', 'fa fa-gears', 0),
(2, '1', 'Menu', 'settings/menu', 'fa fa-list', 1),
(3, '1', 'User Level', 'user_level', 'fa fa-code-fork', 1),
(4, '1', 'Users', 'settings/user', 'fa fa-users', 0),
(5, '1', 'Library', '#', 'fa fa-graduation-cap', 0),
(6, '1', 'Books', 'library/book', 'fa fa-book', 5),
(7, '1', 'Borrows', 'library/borrow', 'fa fa-calendar', 5),
(8, '1', 'Jobsreet', '#', 'fa fa-bullhorn', 0),
(9, '1', 'Offices', 'jobstreet/office', 'fa fa-desktop', 8),
(10, '1', 'Apply', 'jobstreet/apply', 'fa fa-send', 8),
(11, '1', 'Manufacture', '#', 'fa fa-sitemap', 0),
(12, '1', 'Materials', 'inventory/material', 'fa fa-flask', 11),
(13, '1', 'Products', 'ecommerce/product', 'fa fa-coffee', 11),
(14, '1', 'Delivery', 'inventory/delivery', 'fa fa-truck', 11),
(15, '1', 'E-Commerce', '#', 'fa fa-shopping-cart', 0),
(16, '1', 'Transactions', 'ecommerce/transaction', 'fa fa-money', 15),
(17, '1', 'Icons', 'auth/icons', 'fa fa-spin fa-spinner', 1),
(18, '1', 'Details', 'settings/details', 'fa  fa-check-square-o', 1),
(19, '1', 'Select2', 'settings/select2', 'fa fa-search', 1),
(21, '1', 'Cart', 'ecommerce/cart', 'fa fa-glass', 15);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_01_19_142149_create_siswa_table', 1),
(2, '2019_01_19_145356_create_siswa_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

DROP TABLE IF EXISTS `office`;
CREATE TABLE IF NOT EXISTS `office` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` enum('0','1') NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_finish` date NOT NULL,
  `facility1` varchar(255) NOT NULL,
  `facility2` varchar(255) NOT NULL,
  `facility3` varchar(255) NOT NULL,
  `work` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `remarks` text NOT NULL,
  `images` blob NOT NULL,
  `qr_code` varchar(255) NOT NULL,
  `created_on` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`id`, `active`, `code`, `name`, `email`, `category`, `position`, `quantity`, `stock`, `date_start`, `date_finish`, `facility1`, `facility2`, `facility3`, `work`, `time`, `remarks`, `images`, `qr_code`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(6, '1', '190108002', 'PT Mawardhy', 'mawardhy@gmail.com', 'Logistics', 'Programmer Junior', 1, 1, '2001-01-01', '2019-01-18', 'transport', 'foods', 'healthy', 'Monday - Saturday', '08:00 - 16:00', 'ok', '', '190108002.png', 1547701069, 1, 1547701069, 1),
(7, '1', '190108003', 'PT Google Indonesia', 'google@gmail.com', 'Consultant', 'Programmer Junior', 1, 1, '2001-01-01', '2019-01-18', 'transport', 'foods', 'healthy', 'Monday - Friday', '08:00 - 17:00', 'ok', 0x353434363435393231332d30313437333939343231307065727573616861616e2d6a6172696e67616e2d676f6f676c652d62656c756d2d62617961722d6b6577616a6962616e2d70616a616b2d696e646f6e657369612e6a7067, '190108003.png', 1547701036, 1, 1547701036, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` enum('0','1') NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `minimum` int(11) NOT NULL,
  `maximum` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `used` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `waste` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `images` blob NOT NULL,
  `qr_code` varchar(255) NOT NULL,
  `date_start` date NOT NULL,
  `date_finish` date NOT NULL,
  `created_on` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `active`, `code`, `name`, `quantity`, `stock`, `minimum`, `maximum`, `location`, `category`, `unit`, `price`, `status`, `used`, `target`, `waste`, `remarks`, `images`, `qr_code`, `date_start`, `date_finish`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(4, '1', 'PROD0002', 'Susu', 100, -102, 10, 100, '1', 'Cair', 'Unit', 1, 'Pending', 0, 10001, 1, 'ok', '', 'PROD0002.png', '2019-01-01', '2019-01-08', 1547696200, 1, 1547826627, 1),
(5, '1', 'PROD0003', 'minum', 1, 1, 1, 1, '1', 'Tinta', 'Kotak', 1, 'Proccessing', 0, 1, 1, 'ok', '', 'PROD0003.png', '2019-02-01', '2019-02-26', 1549006228, 1, 1549006228, 1);

-- --------------------------------------------------------

--
-- Table structure for table `select2`
--

DROP TABLE IF EXISTS `select2`;
CREATE TABLE IF NOT EXISTS `select2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `select2`
--

INSERT INTO `select2` (`id`, `code`, `category`, `unit`, `status`) VALUES
(1, '001', 'Bahasa Indonesia', 'PCS', 'New'),
(2, '001', 'Bahasa Inggris', 'PCS', 'New'),
(3, '001', 'Fiksi atau Cerita', 'PCS', 'New'),
(4, '001', 'KTSP', 'PCS', 'New'),
(5, '001', 'Matematika', 'PCS', 'New'),
(6, '001', 'PJOK', 'PCS', 'New'),
(7, '001', 'PKN', 'PCS', 'New'),
(8, '001', 'Prakarya dan Kewirausahaan', 'PCS', 'New'),
(9, '001', 'Produktif', 'PCS', 'New'),
(10, '001', 'Sejarah Indonesia', 'PCS', 'New'),
(11, '001', 'Seni Budaya', 'PCS', 'New'),
(12, '001', 'Tumbuhan dan Obat-obatan', 'PCS', 'New'),
(13, '002', 'Borrow', 'PCS', 'Borrow'),
(14, '002', 'Borrow', 'PCS', 'Back'),
(15, '003', 'Manufacture', 'PCS', 'New'),
(16, '003', 'Logistics', 'PCS', 'New'),
(17, '003', 'Marketing', 'PCS', 'New'),
(18, '003', 'Consultant', 'PCS', 'New'),
(19, '004', 'Tinta', 'PCS', 'New'),
(20, '004', 'Cair', 'PCS', 'New'),
(21, '005', 'Product', 'PCS', 'Proccessing'),
(22, '005', 'Product', 'PCS', 'Pending'),
(23, '005', 'Product', 'PCS', 'Canceled'),
(24, '005', 'Product', 'PCS', 'Completed'),
(25, '006', 'Product', 'Unit', 'New'),
(26, '006', 'Product', 'Kotak', 'New'),
(27, '006', 'Product', 'Botol', 'New'),
(28, '006', 'Product', 'Butir', 'New'),
(29, '006', 'Product', 'Buah', 'New'),
(30, '006', 'Product', 'Biji', 'New'),
(31, '006', 'Product', 'Sachet', 'New'),
(32, '006', 'Product', 'Roll', 'New'),
(33, '006', 'Product', 'PCS', 'New'),
(34, '006', 'Product', 'Box', 'New'),
(35, '006', 'Product', 'Meter', 'New'),
(36, '006', 'Product', 'Centimeter', 'New'),
(37, '006', 'Product', 'Liter', 'New'),
(38, '006', 'Product', 'Mililiter', 'New'),
(39, '006', 'Product', 'Lusin', 'New'),
(40, '006', 'Product', 'Gross', 'New'),
(41, '006', 'Product', 'Gross', 'New'),
(42, '006', 'Product', 'Gross', 'New'),
(43, '006', 'Product', 'Rim', 'New'),
(44, '006', 'Product', 'Kaleng', 'New'),
(45, '006', 'Product', 'Lembar', 'New'),
(46, '006', 'Product', 'Helai', 'New'),
(47, '006', 'Product', 'Gram', 'New'),
(48, '006', 'Product', 'Kilogram', 'New'),
(49, '007', 'Monday - Friday', 'PCS', 'New'),
(50, '007', 'Monday - Saturday', 'PCS', 'New'),
(51, '007', 'Monday - Sunday', 'PCS', 'New'),
(52, '008', 'Shift', 'PCS', 'New'),
(54, '008', '08:00 - 16:00', 'PCS', 'New'),
(55, '008', '08:00 - 17:00', 'PCS', 'New'),
(56, '008', '09:00 - 17:00', 'PCS', 'New'),
(57, '008', '09:00 - 18:00', 'PCS', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_level_id` int(11) NOT NULL,
  `setting` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `user_level_id`, `setting`, `value`) VALUES
(1, 1, 'Tampil Menu', 'ya'),
(2, 2, 'Tampil Menu', 'ya'),
(3, 3, 'Tampil Menu', 'ya'),
(4, 4, 'Tampil Menu', 'ya'),
(5, 5, 'Tampil Menu', 'ya'),
(6, 6, 'Tampil Menu', 'ya');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

DROP TABLE IF EXISTS `siswa`;
CREATE TABLE IF NOT EXISTS `siswa` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_depan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_belakang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `agama`, `alamat`, `created_at`, `updated_at`) VALUES
(2, 'syaban', 'syabandz', 'Perempuan', 'Kristen', 'Jl. Pasar MInggu', '2019-01-23 17:13:57', '2019-01-23 17:13:57'),
(3, 'mawardi', 'mawardi', 'Laki - laki', 'Budha', 'Jl. Pasar MInggu', '2019-01-23 17:14:21', '2019-01-23 17:14:48'),
(4, 'syaban', 'syabandz', 'Perempuan', 'Islam', 'KP Bulak', '2019-01-29 20:40:44', '2019-01-29 20:40:44'),
(5, 'syaban', 'syabandz', 'Laki-laki', 'Islam', 'KP Bulak', '2019-01-29 20:41:41', '2019-01-29 20:41:41'),
(6, 'mawardi', 'syabandz', 'Perempuan', 'Islam', 'KP Bulak', '2019-01-29 20:54:19', '2019-01-29 20:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

DROP TABLE IF EXISTS `tbl_produk`;
CREATE TABLE IF NOT EXISTS `tbl_produk` (
  `produk_id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_nama` varchar(100) DEFAULT NULL,
  `produk_harga` double DEFAULT NULL,
  `produk_image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`produk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`produk_id`, `produk_nama`, `produk_harga`, `produk_image`) VALUES
(1, '212 Sexy Men', 720000, '1.jpg'),
(2, 'Adidas Dive', 100000, '2.jpg'),
(3, 'Aigner Pour Homme', 460000, '3.jpg'),
(4, 'Aigner No 1 OUD', 575000, '4.jpg'),
(5, 'Aigner Etienne', 535000, '5.jpg'),
(6, 'Aigner Too Feminine', 465000, '6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `active` enum('0','1') NOT NULL,
  `code` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remarks` text NOT NULL,
  `discount` varchar(255) NOT NULL,
  `total` varchar(50) NOT NULL,
  `cash` varchar(255) NOT NULL,
  `pay_back` varchar(50) NOT NULL,
  `created_on` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `active`, `code`, `unit`, `price`, `quantity`, `location`, `status`, `remarks`, `discount`, `total`, `cash`, `pay_back`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 6, 1, '1', '16012019001', 'Kotak', '100', 1, '1', 'Canceled', 'ok', '1', '99', '1', '1', 2019, 1, 2019, 1),
(4, 6, 3, '1', '17012019002', 'Unit', '1', 11, '11', 'Completed', 'ok', '1', '0.99', '1', '1', 2019, 1, 1547696119, 1),
(5, 19, 3, '1', '17012019003', 'Mililiter', '1', 10, '1', 'Pending', 'ok', '1', '9.9', '1', '1', 1547696152, 1, 1547696152, 1),
(6, 6, 4, '1', '26012019004', 'Centimeter', '100000', 100, '1', 'Pending', 'ok', '1', '99', '1', '98', 1548478084, 1, 1548478172, 1),
(7, 6, 4, '1', '01022019005', 'Sachet', '11', 1, 'B101', 'Proccessing', 'ok', '1', '10.89', '1', '9.89', 1549006173, 1, 1549006173, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(10) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_transaksi`, `tgl_transaksi`, `total_harga`) VALUES
(1, 'TR00001', '2018-05-14', 4000000),
(2, 'TR00002', '2018-12-18', 1140000),
(3, 'TR00003', '2018-12-22', 500000),
(4, 'TR00004', '2018-12-30', 0),
(5, 'TR00005', '2018-12-30', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_level_id` int(11) NOT NULL,
  `active` enum('0','1') NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `born` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `images` blob NOT NULL,
  `qr_code` varchar(255) NOT NULL,
  `used_apply` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `skill1` int(11) NOT NULL,
  `skill2` int(11) NOT NULL,
  `skill3` int(11) NOT NULL,
  `skill4` int(11) NOT NULL,
  `skill5` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_level_id`, `active`, `code`, `name`, `born`, `date`, `gender`, `email`, `password`, `images`, `qr_code`, `used_apply`, `created_on`, `created_by`, `modified_on`, `modified_by`, `skill1`, `skill2`, `skill3`, `skill4`, `skill5`) VALUES
(1, 1, '1', '190103001', 'Mawardi Syaban', 'Depok', '1990-03-22', 'm', 'mawardisyaban@gmail.com', '$2y$04$Ja170GhFLOsmJkM1KTpnkuINKUwz.K0imWtzH48ChG39jShvNyiE.', 0x7379612e706e67, '001.png', 0, 1546786024, 1, 1546786024, 1, 7, 8, 8, 8, 7),
(2, 2, '1', '190103002', 'Syaban', 'Depok', '2018-12-24', 'm', 'syaban@gmail.com', '$2y$04$B4NHIrvcstFMX0P9LjVhqOMx7YLtaWQwhjeZtaSPEYC8C0xEI9qoi', 0x737961322e706e67, '002.png', 0, 1546786024, 1, 1546786024, 2, 0, 0, 0, 0, 0),
(3, 3, '1', '190103003', 'Mawardi', 'Depok', '2018-12-25', 'm', 'mawardi@gmail.com', '$2y$04$zv6Mr33SNWTro4oiSudTCOeTXognj4WYKbhPQIr4S8LWm8gjace8i', '', '', 0, 1546786024, 1, 1546786024, 1, 0, 0, 0, 0, 0),
(4, 4, '1', '190103004', 'syabandz', 'Depok', '2018-12-21', 'm', 'syabandz@gmail.com', '$2y$04$jPvPFDkKWvSRmM8B6Eryn.m62X.0KZ62nhm0ghu2Ux8af0hlkTN9G', 0x737961312e706e67, '004.png', 5, 1546786024, 1, 1546786024, 2, 7, 8, 8, 7, 7),
(5, 5, '1', '190103005', 'Mawardhy', 'Depok', '2018-12-24', 'm', 'mawardhy@gmail.com', '$2y$04$Ro7q/MJmSdGSj6DGGU7Ym.dbXO.U6fzvWs1K5hpmwgVLuRKF.//sq', '', '005.png', 0, 1546786024, 1, 1546786024, 1, 0, 0, 0, 0, 0),
(6, 6, '1', '190103006', 'Mawardhy Syabandz', 'Depok', '2018-12-24', 'm', 'mawardhysyabandz@gmail.com', '$2y$04$6xwyNHrj.Bo48sm3bjXNyeMvkRt7rh3WKLM1HMSJekkatSg3yq.uW', '', '', 0, 1546786024, 1, 1546786024, 1, 0, 0, 0, 0, 0),
(10, 3, '1', '190103007', 'syaban', 'depok', '2019-01-03', 'm', 'syaban22@gmail.com', '$2y$04$UBdxEojcnxppJw.nCGHSPenl.CkF1EHwhmmm4W81V8qrt9yRFINEW', '', '190103007.png', 0, 1546786024, 1, 1546786024, 1, 0, 0, 0, 0, 0),
(11, 3, '1', '190103008', 'syabandz', 'depok', '2019-01-03', 'm', 'syabandz@gmail.com', '$2y$04$v5.g6Usz0K.Ot3DXZMvYuuWBxX7gj4.RThbAn7LcliilMtsn8w3se', '', '190103008.png', 0, 1546786024, 1, 1546786024, 1, 0, 0, 0, 0, 0),
(12, 3, '1', '190103009', 'Mawardhy', 'depok', '2019-01-03', 'm', 'mawardhy@gmail.com', '$2y$04$zoEfXJsrIHoyfQBCH9lBNui0l9Q5uHd/o9vnVF/S4EGenepT0o79i', '', '190103009.png', 0, 1546786024, 1, 1546786024, 1, 0, 0, 0, 0, 0),
(13, 4, '1', '190103010', 'Mawardhy', 'depok', '2019-01-03', 'm', 'mawardhy@gmail.com', '$2y$04$0PP/jPv8Bv35aOwmncFB4.WVigl.0arnSrxcpKD2KkdXUmr28mw22', '', '190103010.png', 0, 1546786024, 1, 1546786024, 2, 6, 8, 7, 6, 7),
(14, 4, '1', '190103011', 'syaban', 'depok', '2019-01-03', 'm', 'syaban@gmail.com', '$2y$04$.aI8CrVXjaUC00NuO3UBJejvpC8lR6A36ud2Eyd49GejLbguCIQZ.', '', '190103011.png', 1, 1546786024, 1, 1546786024, 2, 7, 7, 7, 7, 7),
(15, 4, '1', '190103012', 'Mawardi', 'depok', '2019-01-03', 'm', 'mawardi@gmail.com', '$2y$04$RUmoj6ouV23LVJM779FN8uwOnrWlaIVu0TJGMTSYE1Z/ZrVK1kCNu', '', '190103012.png', 0, 1546786024, 1, 1546786024, 2, 7, 8, 8, 7, 7),
(16, 5, '1', '190103013', 'syabandz', 'depok', '2019-01-03', 'm', 'syabandz@gmail.com', '$2y$04$kKJ1GNUTI5ZBZm3BmBZ8luzc.qSIlar9ciiFz4T32wZ.OT86frPd6', '', '190103013.png', 0, 1546786024, 1, 1546786024, 1, 0, 0, 0, 0, 0),
(17, 5, '1', '190103014', 'syaban', 'depok', '2019-01-03', 'm', 'syaban@gmail.com', '$2y$04$5h/b7tXHMtiju2gRabz4/eQX8SZVKkcTfYGoaI1ecZ8P7AJ4EtWSa', '', '190103014.png', 0, 1546786024, 1, 1546786024, 1, 0, 0, 0, 0, 0),
(18, 5, '1', '190103015', 'Mawardi', 'depok', '2019-01-03', 'm', 'mawardi@gmail.com', '$2y$04$ChdWTLwsqPEI8c3Zjg4h3.MF8I4cuehGng.ym77HrAUwftbZE9Ai2', '', '190103015.png', 0, 1546786024, 1, 1546786024, 1, 0, 0, 0, 0, 0),
(19, 6, '1', '190103016', 'syaban', 'depok', '2019-01-03', 'm', 'syaban@gmail.com', '$2y$04$CR8USs9vcQcEEywGoe5gwe8GQnGmMRjqmpMr6PD0O9tESDf.G37O.', '', '190103016.png', 0, 1546786024, 1, 1546786024, 1, 0, 0, 0, 0, 0),
(20, 6, '1', '190103017', 'Mawardi', 'depok', '2019-01-03', 'm', 'mawardi@gmail.com', '$2y$04$hbdapB0uqs9hQqYKRBrRV.AVHcjsBiVbRZRRsy94amRAHyrcVFXy6', '', '190103017.png', 0, 1546786024, 1, 1546786024, 1, 0, 0, 0, 0, 0),
(21, 6, '1', '190103018', 'syabandz', 'depok', '2019-01-03', 'm', 'syabandz@gmail.com', '$2y$04$9Cs100KRcL1/qQ05SSTVH.F/6CaVaAqYgc2wWMyp7WPo69b7OMV6.', '', '190103018.png', 0, 1546786024, 1, 1546786024, 1, 0, 0, 0, 0, 0),
(22, 4, '1', '190107019', 'Mawardhy Syabandz', 'Depok', '2019-01-07', 'm', 'mawardisyaban2@gmail.com', '$2y$04$cyK82l0XB5dRwhYsCdGBXO1C.J.QDgQAUflpPja9kAwqtGD2KP2C2', '', '190107019.png', 0, 1546786024, 1, 1546786024, 1, 6, 6, 6, 6, 6),
(24, 2, '1', '190123020', 'Mawardi Syaban', 'Depok baru', '2019-01-16', 'm', 'syabandz@gmail.com', '$2y$04$JUv4HfaPJdWfnLa0vGxLzu2R7hRNtSBdScpBH9b/EOhKlrT4vPiVu', '', '190123020.png', 0, 2019, 1, 2019, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mawardi syaban', 'mawardisyaban@gmail.com', '2019-01-21 05:00:00', '123456', '123456', '2019-01-20 17:00:00', '2019-01-20 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

DROP TABLE IF EXISTS `user_level`;
CREATE TABLE IF NOT EXISTS `user_level` (
  `user_level_id` int(11) NOT NULL AUTO_INCREMENT,
  `level_name` varchar(255) NOT NULL,
  PRIMARY KEY (`user_level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`user_level_id`, `level_name`) VALUES
(1, 'Superuser'),
(2, 'Admin'),
(3, 'Member'),
(4, 'Employee'),
(5, 'Supplier'),
(6, 'Customer');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
