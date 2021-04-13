-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2021 at 09:30 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineordering`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `adminuser` varchar(200) NOT NULL,
  `adminpass` varchar(200) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `adminuser`, `adminpass`, `firstname`, `lastname`, `role`) VALUES
(1, 'admin', 'admin', 'Gemuel', 'Manuel', ''),
(3, 'jayahr123', 'kaien123', 'jayahr', 'abubo', 'Admin'),
(7, 'veronveronica', 'Canlas', 'Veron', 'Canlas', ''),
(8, 'sample', 'huhu', 'HAHA', 'huhu', ''),
(9, 'hey', 'HEYY', 'HEYY', 'HEYY', '');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_name`, `product_price`, `product_image`, `qty`, `total_price`, `product_code`) VALUES
(10, 'BabyBackRibs', '480', 'babyBackRibsP480.jpg', 1, '480', ''),
(11, 'BabyBackRibs', '480', 'babyBackRibsP480.jpg', 1, '480', ''),
(12, 'ChickenGordon', '150', 'chickengardon.jpg', 2, '300', ''),
(13, 'BabyBackRibs', '480', 'babyBackRibsP480.jpg', 2, '960', '');

-- --------------------------------------------------------

--
-- Table structure for table `menutable`
--

CREATE TABLE `menutable` (
  `id` int(11) NOT NULL,
  `menuimage` varchar(200) NOT NULL,
  `menuname` varchar(200) NOT NULL,
  `menucategory` varchar(200) NOT NULL,
  `menuprice` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menutable`
--

INSERT INTO `menutable` (`id`, `menuimage`, `menuname`, `menucategory`, `menuprice`) VALUES
(22, 'bicolExpressRicemealP110.jpg', 'BicolExpress', 'Pork', '110'),
(23, 'butteredChickenP140.jpg', 'ButteredChicken', 'Chicken', '140'),
(24, 'pancitGuisadoP90.jpg', 'PancitGuisado', 'All Day Mereinda', '90'),
(25, 'salmonSteakRicemealP180.jpg', 'Salmon', 'Seafood', '180'),
(30, 'tiwaneseChickenP90.jpg', 'TiwaneseChicken', 'Chicken', '100'),
(31, 'babyP480.jpg', 'babybackribs', 'Beef', '480'),
(33, 'bakedMacP100.jpg', 'BakedMac', 'All Day Mereinda', '100'),
(35, 'karekare.jpg', 'Karekare', 'Vegetables', '100'),
(37, 'chickengardon.jpg', 'Gardon', 'Chicken', '120');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`) VALUES
(1, 'ge', 'boggy@gmail.com', '12123', 'asedas', 'cod', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(2, 'MommysTummy', 'gegu.manuel@gmail.com', '0912345623', 'asda', 'cod', 'BicolExpress(1), BakedMac(1)', '90150'),
(3, 'happy', 'gemgem@gmail.com', '09123456', 'fdf', 'cod', 'BakedMac(1), BabyBackRibs(1)', '630'),
(4, 'Boy', 'boy@gmail.com', '0999999', 'Baybay', 'cod', 'Burger(2), BakedMac(1)', '310');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT '1',
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_code`, `category`) VALUES
(7, 'PanThai', '180', 1, 'seafoodPadThaiP180.jpg', 'p1006', 'Seafood'),
(11, 'BakedMac', '150', 1, 'bakedMacP100.jpg', '', 'All Day Mereinda'),
(12, 'BabyBackRibs', '480', 1, 'babyBackRibsP480.jpg', '', 'Beef'),
(13, 'Burger', '80', 1, 'burger.jpg', '', 'All Day Breakfast'),
(14, 'Karekare', '150', 1, 'karekareP220.jpg', '', 'Vegetables'),
(15, 'ChickenGordon', '150', 1, 'chickengardon.jpg', '', 'Chicken');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menutable`
--
ALTER TABLE `menutable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `menutable`
--
ALTER TABLE `menutable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
