-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2020 at 01:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(3) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`, `fullname`) VALUES
(1, 'fedaa@gmail.com', '123', 'fedaa emad'),
(7, 'salameh@yahoo.com', '666', 'salameh yasin'),
(8, 'zain@gmail.com', '555', 'zain ibrahem');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(3) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_image`) VALUES
(3, 'vegetables', 'category-1.jpg'),
(4, 'juices', 'category-3.jpg'),
(6, 'fruits', 'category-2.jpg'),
(7, 'Dried', 'category-4.jpg'),
(9, 'season product', 'image_5.jpg'),
(12, 'Featured Products', 'about.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(3) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_mobile` varchar(50) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_mobile`, `customer_address`, `customer_password`) VALUES
(1, 'Fedaa EMAD', 'fedaa@gmail.com', '0798743211', 'Amman', '123'),
(4, 'salameh yasin', 'salameh@yahoo.com', '079611654789', 'amman', '444'),
(5, 'zain', 'zain@gmail.com', '079543215', 'amman', '555'),
(6, 'suzan', 'suzan@gmail.com', '14566788899', 'zarqa', '987'),
(7, 'ibrahem', 'ibra@gmail.com', '23456789', 'amman', '111'),
(8, 'alaa', 'alaa@gmai.com', '1234567890', 'Amman', '567');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_number` int(11) NOT NULL,
  `order_price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

CREATE TABLE `ordertable` (
  `O_id` int(11) NOT NULL,
  `O_price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordertable`
--

INSERT INTO `ordertable` (`O_id`, `O_price`) VALUES
(17257307, '2'),
(28083355, '2.4'),
(32484467, '1'),
(58135704, '7'),
(67533976, '3.6'),
(101578615, '1'),
(121578739, '3.5'),
(130125652, '3.4'),
(154226779, '5'),
(235643031, '1.8'),
(238184770, '3.15'),
(250312534, '2.95'),
(318553077, '1.65'),
(330145668, '1.8'),
(336294064, '3'),
(343165957, '8.5'),
(422101789, '1.8'),
(445320187, '2.4'),
(483985007, '1.8'),
(498700159, '5.8'),
(504265903, '5.8'),
(511915020, '1'),
(544330667, '19.7'),
(577595974, '2.3'),
(596171172, '1'),
(627211611, '2.6'),
(650446532, '2.25'),
(684414316, '20.4'),
(695121585, '1'),
(714087879, '4'),
(750205623, '3.5'),
(752698277, '2.4'),
(794419015, '4'),
(834306159, '2.5'),
(844092743, '10.1'),
(849175785, '2.4'),
(854103951, '2.3'),
(858027180, '3.4'),
(941856978, '2.6'),
(984511566, '14.1'),
(1023312632, '1.8'),
(1027323252, '2.6'),
(1039266347, '4.65'),
(1040444442, '3'),
(1056935244, '2.6'),
(1073372534, '8.5'),
(1095525726, '1'),
(1118825703, '3.4'),
(1149145779, '1.8'),
(1177261836, '8.5'),
(1178057266, '2.6'),
(1221134377, '9'),
(1264150205, '4.25'),
(1297449351, '3.4'),
(1298055386, '3.6'),
(1332774549, '8.5'),
(1336293419, '6.2'),
(1371910409, '1'),
(1399979455, '1.8'),
(1439105547, '1.8'),
(1508725002, '4'),
(1510294068, '5.1'),
(1521219545, '1'),
(1526793224, '4'),
(1558647356, '1.8'),
(1559879741, '2.6'),
(1573918528, '2.4'),
(1578223750, '1.8'),
(1583859046, '1.9'),
(1636676269, '3.5'),
(1654507267, '3.4'),
(1688732690, '1'),
(1724997743, '2.4'),
(1736757591, '1.8'),
(1753692437, '24.5'),
(1777120967, '10'),
(1802512320, '1.8'),
(1828946597, '3.2'),
(1845481639, '1.8'),
(1859085055, '1.7'),
(1868384843, '3.8'),
(1878102481, '2.5'),
(1884287629, '6'),
(1903614406, '1'),
(1905635283, '1.8'),
(1915793264, '4'),
(1967335304, '2.5'),
(1970691805, '5.7'),
(1984977210, '3.4'),
(1987457692, '11.8'),
(2007633230, '1'),
(2014143342, '3.5'),
(2040147153, '1.8'),
(2060521686, '5.2'),
(2087115357, '4.2'),
(2099287965, '3.5');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(3) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` float NOT NULL,
  `product_images` text NOT NULL,
  `product_description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_netweight` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_images`, `product_description`, `category_id`, `product_netweight`) VALUES
(1, 'Tomato', 0.45, 'product-5.jpg', 'Jordanian fresh Tomato(Local product)', 3, '1kg'),
(3, 'carrot  juice', 2.5, 'product-8.jpg', 'pure organic juice', 4, '0.5 Ltr'),
(4, ' PURPLE CABBAGE', 0.6, 'product-4.jpg', 'fresh product', 3, '1kg'),
(5, 'onion', 0.65, 'product-9.jpg', 'Onions contain volatile oils, sugars, fibers, organic acids (folic acid and pantothenic acid), yeasts, and a group of vitamins such as vitamins C, E and B6, and minerals such as sodium, potassium, calcium, Magnesium, phosphorous.', 12, '1kg'),
(7, 'APPLE', 1.4, 'product-10.jpg', 'One medium apple contains the following nutrients:  95 calories /25.13 g of carbohydrate /4.4 g of fiber/ 195 mg of potassium /11 mg calcium /8.4 mg vitamin C', 6, '1kg'),
(8, 'strawberries', 1.3, 'product-2.jpg', '17 calories/ 4.15 g carbohydrate /1.1 g of fiber/ 9 mg of calcium/ 7 mg of magnesium/ 83 mg of potassium /31.8 mg of vitamin C/ Strawberries also contain vitamins B-6, A and K.', 12, '500 gm'),
(9, 'dried', 3, 'category-4.jpg', 'fresh dried', 7, '250gm'),
(10, 'GREEN BEANS', 1.2, 'product-3.jpg', 'kg', 8, '0'),
(11, ' red onion', 0.6, 'product-9.jpg', 'kg', 8, '0'),
(12, 'BROCCOLI', 1.35, 'product-6.jpg', 'kg', 8, '0'),
(14, 'Blueberry', 2.5, '2996761-1096490673.jpg', '500grm  have 31 calories/ 6.92 g carbohydrate /3.8 g fiber/ 21 mg calcium/ 14 mg magnesium/ 117 mg potassium /15.1 mg vitamin C', 6, '500 gm'),
(15, 'cherries', 2, 'instagram-img-05.jpg', 'red cherries from USA', 9, '500 gm'),
(16, 'lettuce', 0.5, '10-of-the-most-important-benefits-of-lettuce-health.jpg', 'USA product', 3, '1 piece '),
(17, 'Clementine', 0.8, 'instagram-img-06.jpg', 'Egyptian Orange', 6, '1kg'),
(18, 'Brown lentils', 0.8, 'gallery-img-04.jpg', 'Turkish lentils', 7, '1kg'),
(19, 'Orange', 0.8, 'orange33.jpg', 'Egyptian Orange', 6, '1kg'),
(20, 'Carrot', 0.7, 'product-7.jpg', 'carrot', 9, '1kg'),
(21, 'lettuce', 0.5, 'fcLjhnkpLnIhXiCd1l71tlUnW5YuVXpsjb1qtqaq.jpeg', 'public product', 9, '1 piece '),
(22, 'chill', 0.45, 'product-12.jpg', ' Indian red chill ', 3, '0.5 Kg'),
(23, 'BROCCOLI', 1.5, 'product-6.jpg', 'One cup of broccoli provides more than 100% of your daily need for vitamin C and vitamin K, and is a good source of vitamin A, folic acid and potassium', 12, '1kg'),
(25, 'BELL PEPPER', 1.25, 'product-1.jpg', 'red/yellow/orange/green', 3, '1kg'),
(26, 'GREEN BEANS', 2.4, 'product-3.jpg', 'public product', 9, '1kg'),
(27, 'watermelon', 0.6, 'milon.png', 'It is very rich in water; it hardly contains fats nor proteins, and therefore it is low in calories. Moreover, it is an important source of potassium and vitamin A. It is a refreshing fruit with diuretic properties.', 9, '1kg'),
(28, 'Sweet melon/ Cantaloupe', 0.5, 'sw.png', 'The sweet melon contains beta carotene, or vitamin A, which is believed to regulate the growth of skin cells on your scalp and sebum in the skin’s outer layer.', 9, '1kg'),
(29, 'peach', 2, '1-fruit-thumb2-10-06-2016-1.jpg', '58 calories. 1 gram of protein. Less than 1 gram of fat. 14 grams of carbohydrates. 2 grams of fiber. 17% of the daily value required of vitamin C. 10% of the daily value required of vitamin A. 8% of the required daily value of potassium.', 9, '1kg'),
(30, 'Raspberry', 3, 'Raspberry_ed3f1df5-030e-4999-ab05-732f0c679196_2000x.jpg', 'Each 100 grams of fresh raspberries contains 48.41 calories, of which 38.44 calories are carbohydrates, 4.41 calories are from fat and 5.56 calories are from protein.', 6, '0.5 Kg'),
(31, 'Mango', 3, 'product-packshot-mango.jpg', 'Mango is a rich source of vitamin C, vitamin A, iron, zinc and potassium, and it provides the body with energy and sugar, which makes it active throughout the day, but excessive intake causes weight gain, bloating and digestive problems.', 9, '1kg'),
(32, 'Cucumber', 0.65, 'cucumber.jpg', 'public product', 3, '1kg'),
(33, 'Potato', 0.9, '2-potato-un-branded-no-whole-original-imafdsymh2aepaph.jpeg', 'public product', 3, '1kg'),
(34, 'Eggplant', 0.75, 'eggplant iso.jpg', 'public product', 3, '1kg'),
(35, 'Kiwi', 2, '61-193905-kiwi-diet-5-kilo-per-week_700x400.jpeg', 'FDSA', 6, '1kg'),
(36, 'Citrus Juice', 2.4, '3a5305dd0370fe895488dca925219697ac248084b626fc8aed50f0e619c2d9de.jpg', 'Masafi Zesty Citrus Juice (2 ltr)', 4, '1Ltr'),
(37, 'Strawberry juice', 2.5, '34549-0w470h470_Pure_Organic_Strawberry_Juice.jpg', 'pure organic juice', 4, '1Ltr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_number`);

--
-- Indexes for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD PRIMARY KEY (`O_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ordertable`
--
ALTER TABLE `ordertable`
  MODIFY `O_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2099287966;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
