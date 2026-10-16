-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2026 at 11:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kopipiro`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `url_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `url_image`) VALUES
(1, 'Cappuccino', 25000, 'https://images.unsplash.com/photo-1506372023823-741c83b836fe?w=1200&auto=format&fit=crop&q=60&ixlib='),
(2, 'Americano', 15000, 'https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=1200&auto=format&fit=crop&q=60&ixlib='),
(3, 'latte', 20000, 'https://plus.unsplash.com/premium_photo-1673545518947-ddf3240090b1?q=80&w=687&auto=format&fit=crop&i'),
(4, 'Butterscotch', 30000, 'https://plus.unsplash.com/premium_photo-1723759448747-1d174225e61f?q=80&w=1170&auto=format&fit=crop&');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','customer') NOT NULL DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(3, 'agus', '$2y$10$LJtN./YBvbhjJfM3rBmc2eG.HdaD5U3cjwjcdVReTSJ1Lfy4cYBWm', 'customer'),
(4, 'budi', '$2y$10$1N4NainD2SWMUxeXDgcD7ekmTE8dDUfhzdrerNskOpnljZxz65g7y', 'customer'),
(5, 'admin', '$2y$10$jx9EU5TlzIGI9PsEgoZC3udqKislTQ.SK/wIppdF3/1BYmLRbpgua', 'admin'),
(6, 'padhangabiyu', '$2y$10$iVGLZZEXzNDsKUtAK6DBROx0IsIDUuw2CwVHfvcJZarEUcSuSYIwG', 'customer'),
(8, 'ANGINN', '$2y$10$WAhGxTf/0Jr2Alr0sc83ku4h9dLxrrD6h3Cwx3d3q/pnUhCV8Id5C', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
