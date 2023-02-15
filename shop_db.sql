-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2023 at 06:50 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', 'a1c5b48ba435fadd315d788dbb8ca8aca30a3708'),
(2, 'admin2', 'ba7759c95eb654c54d1ecc22152252a33b6448ce');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 2, 'bayu', 'muhammadbayuekaputra9@gmail.com', '0832843535', 'bagong');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(6, 'Sniper-AWM', 'AWM', 999, 'sniper_2-removebg-preview.png', 'sniper_2-removebg-preview.png', 'sniper_2-removebg-preview.png'),
(7, 'Sniper-Dragunov', 'Dragunov', 500, 'sniper_12-removebg-preview.png', 'sniper_12-removebg-preview.png', 'sniper_12-removebg-preview.png'),
(8, 'Sniper-WaltherWa', 'WaltherWa', 699, 'sniper_15-removebg-preview.png', 'sniper_15-removebg-preview.png', 'sniper_15-removebg-preview.png'),
(9, 'Sniper-M24', 'M24', 888, 'sniper_5-removebg-preview.png', 'sniper_5-removebg-preview.png', 'sniper_5-removebg-preview.png'),
(10, 'Sniper-MK14', 'MK14', 400, 'sniper_4-removebg-preview.png', 'sniper_4-removebg-preview.png', 'sniper_4-removebg-preview.png'),
(11, 'Sniper-Kar98K', 'Kar98K', 450, 'sniper_3-removebg-preview.png', 'sniper_3-removebg-preview.png', 'sniper_3-removebg-preview.png'),
(12, 'Riffle-M416', 'Assault riffle-M416', 700, 'assault_rifle_2-removebg-preview.png', 'assault_rifle_2-removebg-preview.png', 'assault_rifle_2-removebg-preview.png'),
(13, 'Riffle-G36C', 'Assault Riffle-G36C', 400, 'assault_rifle_8-removebg-preview.png', 'assault_rifle_8-removebg-preview.png', 'assault_rifle_8-removebg-preview.png'),
(14, 'Riffle-AK47', 'Assault Riffle-AK47', 350, 'assault_rifle_18-removebg-preview.png', 'assault_rifle_18-removebg-preview.png', 'assault_rifle_18-removebg-preview.png'),
(15, 'Riffle-Thompson', 'Assault Riffle-Thompson', 250, 'assault_rifle_20-removebg-preview.png', 'assault_rifle_20-removebg-preview.png', 'assault_rifle_20-removebg-preview.png'),
(16, 'Riffle-Scar L', 'Assault Riffle-Scar L', 450, 'assault_rifle_12-removebg-preview.png', 'assault_rifle_12-removebg-preview.png', 'assault_rifle_12-removebg-preview.png'),
(17, 'Riffle-M16', 'Assault Riffle-M16', 250, 'assault_rifle_3-removebg-preview.png', 'assault_rifle_3-removebg-preview.png', 'assault_rifle_3-removebg-preview.png'),
(18, 'Handgun-Dessert Eagle', 'Handgun-Dessert Eagle', 350, 'pistol_4-removebg-preview.png', 'pistol_4-removebg-preview.png', 'pistol_4-removebg-preview.png'),
(19, 'Handgun-Tec9', 'Handgun-Tec9', 450, 'pistol_12-removebg-preview.png', 'pistol_12-removebg-preview.png', 'pistol_12-removebg-preview.png'),
(20, 'Handgun-MauserC96', 'Handgun-MauserC96', 500, 'pistol_2-removebg-preview.png', 'pistol_2-removebg-preview.png', 'pistol_2-removebg-preview.png'),
(21, 'Handgun-P1911', 'Handgun-P1911\r\nMade in Cikopo', 200, 'pistol_1-removebg-preview.png', 'pistol_1-removebg-preview.png', 'pistol_1-removebg-preview.png'),
(22, 'Handgun-Sawnof', 'Handgun-Sawnof\r\nMade in Bentar girang', 350, 'pistol_14-removebg-preview.png', 'pistol_14-removebg-preview.png', 'pistol_14-removebg-preview.png'),
(23, 'Handgun-Magnum', 'Handgun-Magnum \r\nMade in Kaum', 265, 'pistol_5-removebg-preview.png', 'pistol_5-removebg-preview.png', 'pistol_5-removebg-preview.png'),
(24, 'Shotgun-DBS', 'Shotgun-DBS \r\nMade in Papua Jaya', 890, 'sg_1-removebg-preview.png', 'sg_1-removebg-preview.png', 'sg_1-removebg-preview.png'),
(25, 'Shotgun-Spas12', 'Shotgun-Spas12\r\nmade in Tanjung', 455, 'sg_4-removebg-preview.png', 'sg_4-removebg-preview.png', 'sg_4-removebg-preview.png'),
(26, 'Shotgun-S12K', 'Shotgun-S12K\r\nMade in Lamore', 700, 'sg_6-removebg-preview.png', 'sg_6-removebg-preview.png', 'sg_6-removebg-preview.png'),
(27, 'Shotgun-M1014', 'Shotgun-M1014\r\nmade in Nusa Indah', 500, 'sg_3-removebg-preview.png', 'sg_3-removebg-preview.png', 'sg_3-removebg-preview.png'),
(28, 'Shotgun-AA12', 'Shotgun-AA12 \r\nMade in belakang', 450, 'sg_5-removebg-preview.png', 'sg_5-removebg-preview.png', 'sg_5-removebg-preview.png'),
(29, 'Shotgun-Remington870', 'Shotgun-Remington870\r\nMade in Cilawu', 700, 'sg_8-removebg-preview.png', 'sg_8-removebg-preview.png', 'sg_8-removebg-preview.png'),
(30, 'Attachment-Scope X3', 'Attachment-Scope X3\r\nMade in Leuwidaun', 90, 'd681021a14ec8cc4fd05628f0ec31abf.jpg', 'd681021a14ec8cc4fd05628f0ec31abf.jpg', 'd681021a14ec8cc4fd05628f0ec31abf.jpg'),
(31, 'Attachment-Holographic', 'Attachment-holographic\r\nMade in Belakang', 45, '8dcbef06942405dc14b36d0cd7689e2c.jpg', '8dcbef06942405dc14b36d0cd7689e2c.jpg', '8dcbef06942405dc14b36d0cd7689e2c.jpg'),
(32, 'Attachment-Angled Grip', 'Attachment-Angled grip\r\nmade in Corona', 30, '6eda3e59884cdf5735643f6fb4cb3fb8.jpg', '6eda3e59884cdf5735643f6fb4cb3fb8.jpg', '6eda3e59884cdf5735643f6fb4cb3fb8.jpg'),
(33, 'Attachment-Half grip', 'Attachment-Half grip \r\nmade in maman', 90, '7c4a9f98c8d14e9fca7c1aaa163b3854.jpg', '7c4a9f98c8d14e9fca7c1aaa163b3854.jpg', '7c4a9f98c8d14e9fca7c1aaa163b3854.jpg'),
(34, 'Attachment-Vertical grip', 'Attachment-Vertical grip\r\nmade in Smea', 60, '3fe89f308f2411a9386a1c8b5a181506.jpg', '3fe89f308f2411a9386a1c8b5a181506.jpg', '3fe89f308f2411a9386a1c8b5a181506.jpg'),
(35, 'Attachment-Light grip', 'Attachment-Light grip \r\nmade in PPL', 30, '7bddf90cf8df775200e85fe4168749ac.jpg', '7bddf90cf8df775200e85fe4168749ac.jpg', '7bddf90cf8df775200e85fe4168749ac.jpg'),
(36, 'RPG-Rocket Launcher', 'RPG-Rocket Launcher ', 1100, '62aa2a66cec80557e30e87b23df842ee (1).jpg', '62aa2a66cec80557e30e87b23df842ee (1).jpg', '62aa2a66cec80557e30e87b23df842ee (1).jpg'),
(37, 'RPG-AT4', 'RPG-AT4\r\nmade in belakang\r\n', 1500, '219e692ee9cef7d7043da0b28fcf5872.jpg', '219e692ee9cef7d7043da0b28fcf5872.jpg', '219e692ee9cef7d7043da0b28fcf5872.jpg'),
(38, 'RPG-RPG7', 'RPG-RPG7\r\nmade in cempaka', 1400, 'c33904801fa52453d6d40fcf46a6e4ea.jpg', 'c33904801fa52453d6d40fcf46a6e4ea.jpg', 'c33904801fa52453d6d40fcf46a6e4ea.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(2, 'user', 'test@mail.com', '12dea96fec20593566ab75692c9949596833adc9');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
