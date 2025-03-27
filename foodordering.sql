-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2025 at 03:46 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodordering1`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_ID` int(5) NOT NULL,
  `category_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_ID`, `category_Name`) VALUES
(1, 'Coffee'),
(2, 'Dessert');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_ID` int(5) NOT NULL,
  `customer_Username` varchar(20) NOT NULL,
  `customer_Name` varchar(50) NOT NULL,
  `customer_Password` varchar(20) NOT NULL,
  `customer_Email` varchar(100) NOT NULL,
  `customer_Phone` varchar(11) NOT NULL,
  `customer_Address` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_ID`, `customer_Username`, `customer_Name`, `customer_Password`, `customer_Email`, `customer_Phone`, `customer_Address`) VALUES
(1, 'john_doe', 'John Doe', 'password123', 'johndoe@example.com', '012-3456789', '123 Main Street, Kuala Lumpur'),
(2, 'janesmith', 'Jane Smith', 'securepass456', 'janesmith@example.com', '013-9876543', '45 Jalan Bukit, Selangor'),
(3, 'michaeltan', 'Michael Tan', 'mikepass789', 'michaeltan@example.com', '017-2233445', '88 Taman Permai, Penang'),
(4, 'emilywong', 'Emily Wong', 'emily1234', 'emilywong@example.com', '016-5566778', '12 Lorong Mawar, Johor Bahru'),
(5, 'davidlee', 'David Lee', 'davidpass321', 'davidlee@example.com', '018-9988776', '7 Jalan Impian, Melaka'),
(6, 'sophialim', 'Sophia Lim', 'sophia789', 'sophialim@example.com', '019-1122334', '99 Jalan Sentosa, Ipoh'),
(7, 'kevinchua', 'Kevin Chua', 'kevpass555', 'kevinchua@example.com', '014-6677889', '56 Taman Megah, Seremban'),
(8, 'oliviatan', 'Olivia Tan', 'olivsecure999', 'oliviatan@example.com', '011-3344556', '23 Jalan Harmoni, Kuching'),
(9, 'ethangoh', 'Ethan Goh', 'ethanpass111', 'ethangoh@example.com', '010-8899001', '78 Lorong Bintang, Kota Kinabalu'),
(10, 'rachelng', 'Rachel Ng', 'rachelpass333', 'rachelng@example.com', '015-7766554', '34 Persiaran Indah, Shah Alam');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_ID` int(5) NOT NULL,
  `employee_Name` varchar(30) NOT NULL,
  `employee_Password` varchar(20) NOT NULL,
  `employee_Phone` varchar(11) NOT NULL,
  `employee_Position` varchar(30) NOT NULL,
  `employee_Salary` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_ID`, `employee_Name`, `employee_Password`, `employee_Phone`, `employee_Position`, `employee_Salary`) VALUES
(1, 'Alice Tan', 'alice123', '012-3456789', 'Barista', '2500.00'),
(2, 'Ben Lim', 'ben456', '013-9876543', 'Chef', '3200.00'),
(3, 'Chloe Ng', 'chloe789', '017-2233445', 'Waitress', '2300.00'),
(4, 'Daniel Wong', 'daniel321', '016-5566778', 'Cashier', '2400.00'),
(5, 'Elaine Goh', 'elaine999', '018-9988776', 'Cafe Manager', '4000.00');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_ID` int(5) NOT NULL,
  `menu_Name` varchar(50) NOT NULL,
  `menu_Category` int(5) DEFAULT NULL,
  `menu_Price` decimal(7,2) NOT NULL,
  `menu_Description` text,
  `menu_Image` varchar(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_ID`, `menu_Name`, `menu_Category`, `menu_Price`, `menu_Description`, `menu_Image`) VALUES
(1, 'Espresso', 1, '6.00', 'A strong, concentrated shot of coffee with a rich aroma.', ''),
(2, 'Americano', 1, '7.00', 'Espresso diluted with hot water for a smoother taste.', ''),
(3, 'Latte', 1, '10.00', 'Espresso with steamed milk and a light layer of foam.', ''),
(4, 'Cappuccino', 1, '10.00', 'Espresso with equal parts steamed milk and foam.', ''),
(5, 'Flat White', 1, '11.00', 'A smoother, milkier version of a latte with velvety microfoam.', ''),
(6, 'Macchiato', 1, '9.00', 'Espresso with a dollop of foamed milk on top.', ''),
(7, 'Mocha', 1, '12.00', 'A delicious blend of espresso, steamed milk, and chocolate.', ''),
(8, 'Iced Americano', 1, '8.00', 'A refreshing espresso-based drink with ice and water.', ''),
(9, 'Iced Latte', 1, '11.00', 'Chilled espresso mixed with cold milk and ice.', ''),
(10, 'Iced Mocha', 1, '13.00', 'A chocolate-infused iced latte, perfect for sweet cravings.', ''),
(11, 'Cold Brew', 1, '12.00', 'Slow-steeped coffee for a smoother, less acidic taste.', ''),
(12, 'Affogato', 1, '14.00', 'A scoop of vanilla ice cream topped with hot espresso.', ''),
(13, 'Caramel Latte', 1, '12.00', 'A latte with caramel syrup for a sweet and buttery taste.', ''),
(14, 'Hazelnut Cappuccino', 1, '12.00', 'A nutty twist on a classic cappuccino.', ''),
(15, 'Matcha Espresso Fusion', 1, '14.00', 'A unique blend of matcha and espresso with milk.', ''),
(16, 'Tiramisu', 2, '15.00', 'A classic Italian coffee-flavored dessert with mascarpone and cocoa.', ''),
(17, 'Cheesecake', 2, '14.00', 'Rich, creamy cheesecake with a buttery biscuit base.', ''),
(18, 'Chocolate Lava Cake', 2, '16.00', 'Warm chocolate cake with a gooey center, served with vanilla ice cream.', ''),
(19, 'Croissant', 2, '7.00', 'A flaky, buttery French pastry.', ''),
(20, 'Almond Croissant', 2, '9.00', 'A croissant filled with almond paste and topped with sliced almonds.', ''),
(21, 'Brownie', 2, '10.00', 'A fudgy, chocolatey delight.', ''),
(22, 'Macarons (3 pcs)', 2, '12.00', 'Delicate French cookies with a variety of flavors.', ''),
(23, 'Muffin', 2, '8.00', 'Soft and fluffy muffin, available in blueberry or chocolate chip.', ''),
(24, 'Waffle with Ice Cream', 2, '18.00', 'Crispy waffle topped with a scoop of ice cream and chocolate drizzle.', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_ID` int(5) NOT NULL,
  `customer_ID` int(5) DEFAULT NULL,
  `orders_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orders_TotalAmount` decimal(7,2) NOT NULL,
  `orders_Status` varchar(20) NOT NULL,
  `orders_driver` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_ID`, `customer_ID`, `orders_Date`, `orders_TotalAmount`, `orders_Status`, `orders_driver`) VALUES
(1, 1, '2025-03-26 13:04:45', '13.00', 'Preparing', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `orders_details_ID` int(5) NOT NULL,
  `orders_ID` int(5) DEFAULT NULL,
  `orders_Item` int(5) DEFAULT NULL,
  `quantity` int(222) NOT NULL,
  `remark` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`orders_details_ID`, `orders_ID`, `orders_Item`, `quantity`, `remark`) VALUES
(1, 1, 1, 1, NULL),
(2, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rate_ID` int(5) NOT NULL,
  `customer_ID` int(5) DEFAULT NULL,
  `menu_ID` int(5) DEFAULT NULL,
  `rate` decimal(2,1) NOT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_ID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_ID`),
  ADD KEY `menu_Category` (`menu_Category`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_ID`),
  ADD KEY `customer_ID` (`customer_ID`),
  ADD KEY `orders_driver` (`orders_driver`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`orders_details_ID`),
  ADD KEY `orders_ID` (`orders_ID`),
  ADD KEY `orders_Item` (`orders_Item`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rate_ID`),
  ADD KEY `customer_ID` (`customer_ID`),
  ADD KEY `menu_ID` (`menu_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `orders_details_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rate_ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`menu_Category`) REFERENCES `category` (`category_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`orders_driver`) REFERENCES `employee` (`employee_ID`);

--
-- Constraints for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `orders_details_ibfk_1` FOREIGN KEY (`orders_ID`) REFERENCES `orders` (`orders_ID`),
  ADD CONSTRAINT `orders_details_ibfk_2` FOREIGN KEY (`orders_Item`) REFERENCES `menu` (`menu_ID`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_ID`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`menu_ID`) REFERENCES `menu` (`menu_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
