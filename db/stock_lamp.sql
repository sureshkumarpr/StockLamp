-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2017 at 08:55 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock_lamp`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `user_id` int(11) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` char(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `email`, `password`) VALUES
(1, 'sarnathkj', 'sarnathkj@outlook.com', 'admin123X');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `sku` varchar(30) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `location` varchar(255) NOT NULL,
  `sku_creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `review_count` int(11) NOT NULL DEFAULT '0',
  `review_rating` float NOT NULL DEFAULT '0',
  `base_price` float NOT NULL DEFAULT '0',
  `inventory` int(11) NOT NULL DEFAULT '0',
  `oos_flag` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `name`, `description`, `location`, `sku_creation_date`, `review_count`, `review_rating`, `base_price`, `inventory`, `oos_flag`) VALUES
(1, 'B01FXJI1OY', 'JBL C300SI On-Ear Dynamic Wired Headphones (Black Color)', 'Experience a completely immersive and engrossing listening experience with the JBL - CS300SI Headphones. The headphones provide exquisite sound quality and deep bass for an immersive listening experience. The high power magnetic drivers offer clear, detailed sound reproduction. The headphones feature self-adjustable ear-cups made from premium quality materials. They offer a perfect fit and optimal comfort. They are lightweight making them apt for travel. High Power drivers deliver JBL Sound with bass you can feel.', 'Pile 3, Rack 2', '2017-05-12 18:26:30', 5120, 4.6, 2999, 385, 0),
(2, 'B00I4S8M82', 'Complan Refill - 1 kg (Chocolate)', 'Your child may be a fussy eater which may lead to nutrition gaps in his/her diet. Complan will help bridge the nutrient gap in his/her diet and help in growth and development.', 'Pile 4, Rack 1', '2017-05-12 19:08:01', 26, 4.8, 464, 5, 0),
(3, 'B01G3K2SQE', 'AXE Apollo Deodorant, 150ml', 'Feel the energy, feel the raw power of the male who is all set to conquer the jungle of the world. With the Axe Apollo Deodorant Bodyspray you will feel the rare force and sensual muscle power of the man who is ready to unleash his talents. We pride ourselves as the creators of irresistible fragrances. Fragrances that not only smell good but also keep you fresh, clean and confident. This range of deodorants provide longer lasting protection that goes on from party, to after party, to after the after party.An iconic Deodorant that sets the standards of luxury, Axe presents this masculine fragrance that epitomizes elegance. Blend of fruity & musky scent. Elevating your charm, Axe symbolizes your free spirit & urbane choice by creating this deodorant that is a blend of fruity & musky scent.. Keeps the body odor away. This deodorant makes sure that you spread your aura wherever you go. Infuses vibrant energy & great freshness. Living up to the expectations of the modern men, this deodorant infuses vibrant energy & great freshness to your life. So charm them all with the intoxicating freshness of Axe Apollo Deodorant Bodyspray.', 'Pile 1, Rack 3', '2017-05-13 07:25:32', 6, 3.6, 195, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
