-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Feb 21, 2022 at 06:54 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodadda_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `total_price` int(255) NOT NULL,
  `food_name` text NOT NULL,
  `food_img` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL DEFAULT current_timestamp(),
  `status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `time`, `status`) VALUES
(1, 'prathvik sankaliya', 'user@gmail.com', '12345678', '2022-02-18 12:42:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `id` int(255) NOT NULL,
  `name` text NOT NULL,
  `img` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `name`, `img`, `date`, `status`) VALUES
(1, 'Burger', 'Burger.PNG', '2022-02-20 14:33:52', 0),
(2, 'Pizza', 'Pizza.PNG', '2022-02-20 14:34:22', 0),
(3, 'Kachori', 'Kachori.PNG', '2022-02-20 14:34:42', 0),
(4, 'Dosa', 'Dosa.PNG', '2022-02-20 14:34:58', 0),
(5, 'Sandwich', 'Sandwich.PNG', '2022-02-20 14:35:28', 0),
(6, 'Vadapav', 'Vadapav.PNG', '2022-02-20 14:35:45', 0),
(7, 'Samosa', 'Samosa.PNG', '2022-02-20 14:36:01', 0),
(12, 'French Fries', 'French Fries.PNG	', '2022-02-21 16:36:57', 0);

-- --------------------------------------------------------

--
-- Table structure for table `itemmenu`
--

CREATE TABLE `itemmenu` (
  `id` int(255) NOT NULL,
  `name` text NOT NULL,
  `img` text NOT NULL,
  `description` text NOT NULL,
  `price` int(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `delivery` text NOT NULL,
  `type` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itemmenu`
--

INSERT INTO `itemmenu` (`id`, `name`, `img`, `description`, `price`, `rating`, `delivery`, `type`, `date`, `status`) VALUES
(1, 'Margerita Pizza', 'Margerita Pizza.png', 'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing ', 199, '4.9', 'Paid Delivery', 'Regular', '2022-02-20 16:00:26', 1),
(2, 'Supreme Burger', 'Supreme Burger.png', 'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 99, '4.3', 'Paid Delivery', 'Special', '2022-02-20 16:01:57', 1),
(3, 'Matar kachori', 'Matar kachori.png', 'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including ', 120, '4.8', 'Free Delivery', 'Regular', '2022-02-20 16:02:40', 1),
(4, 'Masala Dosa', 'Masala Dosa.png', 'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 149, '4.5', 'Paid Delivery', 'Special', '2022-02-20 16:03:20', 1),
(5, 'Greek Pizza', 'Greek Pizza.png', 'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 199, '3.9', 'Free Delivery', 'Special', '2022-02-20 16:03:54', 1),
(6, 'Maharaja Vadapav', 'Maharaja Vadapav.png', 'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 49, '4.3', 'Paid Delivery', 'Special', '2022-02-20 16:04:31', 1),
(7, 'Mix Sandwich', 'Mix Sandwich.png', 'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 120, '3.7', 'Paid Delivery', 'Regular', '2022-02-20 16:05:28', 1),
(8, 'Franch Fries', 'Franch Fries.png', 'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 99, '4.8', 'Paid Delivery', 'Special', '2022-02-20 16:05:59', 1),
(9, 'maisuri Dosa', 'maisuri Dosa.png', 'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 149, '4.4', 'Free Delivery', 'Special', '2022-02-20 16:06:41', 1),
(10, 'Chinese Kachori', 'Chinese Kachori.png', 'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 49, '4.8', 'Free Delivery', 'Special', '2022-02-20 16:07:27', 1),
(11, 'Aloo Tiki', 'Aloo Tiki.png', 'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 99, '4.8', 'Paid Delivery', 'Special', '2022-02-20 16:08:09', 1),
(12, 'Cake', 'Cake.png', 'E:Android Clones AssetsFood For ResumeNew folder', 49, '4.9', 'Free Delivery', 'Special', '2022-02-20 16:10:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL DEFAULT current_timestamp(),
  `status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itemmenu`
--
ALTER TABLE `itemmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `itemmenu`
--
ALTER TABLE `itemmenu`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
