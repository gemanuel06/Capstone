-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 10:09 AM
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
(1, 'BabyBackRibs', '480', 'babyBackRibsP480.jpg', 1, '480', '');

-- --------------------------------------------------------

--
-- Table structure for table `comment_table`
--

CREATE TABLE `comment_table` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `comment` text NOT NULL,
  `cur_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment_table`
--

INSERT INTO `comment_table` (`id`, `name`, `comment`, `cur_date`) VALUES
(1, 'Bogart', 'fgdfg', '2021-04-16'),
(2, 'ano', 'hha', '2021-04-16'),
(3, 'ano', 'hha', '2021-04-16'),
(4, 'ano', 'hha', '2021-04-16'),
(6, 'Bogart', 'dsasd', '2021-04-16'),
(7, 'gemuel', 'fast delivery', '2021-04-16'),
(8, 'Gege', 'hahaaha', '2021-04-18'),
(9, 'User', 'Nice ', '2021-04-18'),
(10, 'aa', 'cfgcvbcvbcvbcvbcvbcvbcvbcvbcvvc  cgvbcvbcvbc cbcvb cvbc cvbcvb  cvbcvbc  cvbc cv cvbcvb cvbc cv   cvb\r\ncvbcvbcc\r\ncvbcvb\r\ncvbc', '2021-04-18');

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
(4, 'Boy', 'boy@gmail.com', '0999999', 'Baybay', 'cod', 'Burger(2), BakedMac(1)', '310'),
(5, 'Sample', 'sample@gmail.com', '0999999', 'Lingayen', 'cod', 'BakedMac(1), BabyBackRibs(2)', '1110'),
(6, 'Nako', 'gg@gmail.com', '0999', 'dasd', 'cod', 'BabyBackRibs(1)', '480');

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
(13, 'Burger', '80', 1, 'burger.jpg', '', 'All Day Mereinda'),
(14, 'Karekare', '150', 1, 'karekareP220.jpg', '', 'Vegetables'),
(15, 'ChickenGordon', '150', 1, 'chickengardon.jpg', '', 'Chicken'),
(16, 'TaiwaneseChicken', '180', 1, 'checken.jpg', '', 'Chicken'),
(17, 'PorkShainghai', '150', 1, 'shainghai.jpg', '', 'Pork'),
(18, 'sam', '150', 1, '120296430_867839770420184_7510531682484949414_n.jpg', '', 'All Day Breakfast'),
(19, 'adsd', '150', 1, 'bakedMacP100.jpg', '', 'Rice Meals'),
(20, 'dsd', '150', 1, 'bakedMacP100.jpg', '', 'Pasta'),
(21, 'c2', '150', 1, '120453517_867839730420188_8565801140009398146_n.jpg', '', 'Beverages');

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
-- Indexes for table `comment_table`
--
ALTER TABLE `comment_table`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `comment_table`
--
ALTER TABLE `comment_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `menutable`
--
ALTER TABLE `menutable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
