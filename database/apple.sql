-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 11:01 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Apple', 'Apple iPhone 11 (64GB) - Green', 47900, './assets/products/iphone/Apple iPhone 11 (128GB) - Green.jpg', '2020-03-28 11:08:57'), -- NOW()
(2, 'Apple', 'Apple iPhone 11 (128GB) - Green', 54900, './assets/products/iphone/Apple iPhone 11 (128GB) - Green.jpg', '2020-03-28 11:08:57'),
(3, 'Apple', 'Apple iPhone 11 (128GB) - White',54900, './assets/products/iphone/iphone-11-64gb-white.jpg', '2020-03-28 11:08:57'),
(4, 'Apple', 'Apple iPhone 11 (128GB) - (Product) RED',54900 , './assets/products/iphone/Apple iPhone 11 (128GB) - (Product) RED.jpg', '2020-03-28 11:08:57'),
(5, 'Apple', 'Apple iPhone 11 (128GB) - Yellow',54900, './assets/products/iphone/Apple iPhone 11 (128GB) - Yellow.jpg', '2020-03-28 11:08:57'),
(6, 'Apple', 'Apple iPhone 11 (64GB) - Black', 47900, './assets/products/iphone/iphone-11-64gb-black.jpg', '2020-03-28 11:08:57'),
(7, 'Apple', 'Apple iPhone 11 (128GB) - Purple',47900, './assets/products/iphone/Apple iPhone 12 (64GB) - Purple.jpg', '2020-03-28 11:08:57'),
(8, 'Apple', 'Apple iPhone 12 (128GB) - Blue', 60490, './assets/products/iphone/Apple iPhone 12 (128GB) - Blue.jpg', '2020-03-28 11:08:57'),
(9, 'Apple', 'Apple iPhone 12 (128GB) - Purple', 60990, './assets/products/iphone/Apple iPhone 12 (64GB) - Purple.jpg', '2020-03-28 11z:08:57'),
(10, 'Apple', 'Apple iPhone 13 (128GB) - Midnight',74900, './assets/products/iphone/iphone-13-128gb-midnight.jpg', '2020-03-28 11:08:57'),
(11, 'Apple', 'Apple iPhone 13 (512GB) - (Product) RED',104900, './assets/products/iphone/iphone-13-512gb-red.jpg', '2020-03-28 11:08:57'),
(12, 'Apple', 'Apple iPhone 13 Pro (128GB) - Sierra Blue', 119900, './assets/products/iphone/Apple iPhone 13 Pro (128GB) - Sierra Blue.jpg', '2020-03-28 11:08:57'),
(13, 'Apple', 'Apple iPhone 13 Pro (1TB) - Gold',169900, './assets/products/iphone/Apple iPhone 13 Pro (1TB) - Gold.jpg', '2020-03-28 11:08:57'),
(14, 'Apple', 'Apple iPhone 13 Pro (1TB) - Graphite',169900, './assets/products/iphone/Apple iPhone 13 Pro (1TB) - Graphite.jpg', '2020-03-28 11:08:57'),
(15, 'Apple', 'Apple iPhone 13 Mini (256GB)- Startlight',79900, './assets/products/iphone/iphone-13 mini-256gb-starlight.jpg', '2020-03-28 11:08:57'),
(16, 'iPad', '2021 Apple iPad Mini with A15 Bionic chip (Wi-Fi, 64GB) - Purple (6th Generation)',46900, './assets/products/ipad/2021 Apple iPad Mini with A15 Bionic chip (Wi-Fi, 256GB) - Space Grey (6th Generation).jpg', '2020-03-28 11:08:57'),
(17, 'iPad', '2022 Apple iPad Air with Apple M1 Chip (10.9-inch/27.69 cm, Wi-Fi, 64GB)',54900, './assets/products/ipad/2022 Apple iPad Air with Apple M1 Chip caller+wifi.jpg', '2020-03-28 11:08:57'),
(18, 'iPad', '2022 Apple iPad Air with Apple M1 Chip (10.9-inch/27.69 cm, Wi-Fi, 256GB)',82900, './assets/products/ipad/2022 Apple iPad Air with Apple M1 Chip.jpg', '2020-03-28 11:08:57'),
(19, 'iPad', '2021 Apple iPad Pro with Apple M1 chip (11-inch/27.96 cm, Wi-Fi, 1TB)',112900, './assets/products/ipad/Apple iPad Pro with Apple M1 (Wi-Fi + Cellular, 512GB).jpg', '2020-03-28 11:08:57'),
(20, 'MacBook', '2021 Apple MacBook Pro (14-inch, Apple M1 Pro chip with 10‑core CPU and 16‑core GPU, 16GB RAM, 1TB SSD) - Silver',229900, './assets/products/Laptop/2021 Apple MacBook Pro (14-inch 16‑core GPU, 16GB RAM, 1TB SSD).jpg', '2020-03-28 11:08:57'),
(21, 'MacBook', '2021 Apple MacBook Pro (16-inch Apple M1 Max chip with 10‑core CPU and 32‑core GPU, 32GB RAM, 1TB SSD) - Silver',329900, './assets/products/Laptop/2021 Apple MacBook Pro ( GPU, 32GB RAM, 1TB SSD).jpg', '2020-03-28 11:08:57');


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Daily', 'Tuition', '2020-03-28 13:07:17'),
(2, 'Akshay', 'Kashyap', '2020-03-28 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
