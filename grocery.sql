-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 02, 2021 at 06:56 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `CategoryId` varchar(5) NOT NULL,
  `CatName` varchar(20) NOT NULL,
  PRIMARY KEY (`CategoryId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryId`, `CatName`) VALUES
('SP784', 'Baby Items'),
('SN005', 'Snacks'),
('MP025', 'Milk');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CustomerId` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`CustomerId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerId`, `Date`, `time`) VALUES
(1, '2018-07-01', '14:11:11'),
(2, '2018-07-01', '15:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `emplogin`
--

DROP TABLE IF EXISTS `emplogin`;
CREATE TABLE IF NOT EXISTS `emplogin` (
  `UserName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `EmpId` varchar(5) NOT NULL,
  PRIMARY KEY (`UserName`),
  KEY `EmpId` (`EmpId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emplogin`
--

INSERT INTO `emplogin` (`UserName`, `password`, `EmpId`) VALUES
('tester', '123456789', 'CAE01');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `EmpId` int(5) NOT NULL AUTO_INCREMENT,
  `FNAme` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `nic` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`EmpId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpId`, `FNAme`, `LName`, `Address`, `Gender`, `nic`, `username`, `password`) VALUES
(1, 'Navindya', 'Jayasekara', 'Ambalangoda', 'Female', '945685021v', 'nj', '123');

-- --------------------------------------------------------

--
-- Table structure for table `empregister`
--

DROP TABLE IF EXISTS `empregister`;
CREATE TABLE IF NOT EXISTS `empregister` (
  `NIC` varchar(10) NOT NULL,
  `RegisterDate` date NOT NULL,
  `ContactNum` int(15) NOT NULL,
  `EmpId` varchar(5) NOT NULL,
  PRIMARY KEY (`NIC`),
  KEY `EmpId` (`EmpId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empregister`
--

INSERT INTO `empregister` (`NIC`, `RegisterDate`, `ContactNum`, `EmpId`) VALUES
('956525125V', '2018-04-01', 775412563, 'SAL25');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `ProductId` varchar(10) NOT NULL,
  `productName` varchar(20) NOT NULL,
  `SupName` varchar(20) NOT NULL,
  `UnitPrice` float NOT NULL,
  `CategoryId` varchar(5) NOT NULL,
  PRIMARY KEY (`ProductId`),
  KEY `CategoryId` (`CategoryId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductId`, `productName`, `SupName`, `UnitPrice`, `CategoryId`) VALUES
('SAB541', 'Savory Biscuit', 'Munchee', 50, 'SN005'),
('PBS01', 'Baby Soap ', 'Pears', 65, 'SP784');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `SaleId` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `qty` int(10) NOT NULL,
  `TotPrice` float NOT NULL,
  `ProductId` varchar(30) NOT NULL,
  PRIMARY KEY (`SaleId`),
  KEY `ProductId` (`ProductId`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`SaleId`, `Date`, `qty`, `TotPrice`, `ProductId`) VALUES
(1, '2018-12-10', 3, 151.5, 'SAB541'),
(2, '2018-12-03', 5, 252.5, 'PBS01');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
