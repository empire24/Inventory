-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 11, 2021 at 09:05 AM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ims_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `active`) VALUES
(4, 'color', 1),
(6, 'Size', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(5, 'Blue', 2),
(6, 'White', 2),
(7, 'M', 3),
(8, 'L', 3),
(9, 'Green', 2),
(10, 'Black', 2),
(12, 'Grey', 2),
(13, 'S', 3),
(17, 'yellow', 4),
(20, 'small', 6),
(21, 'medium', 6),
(22, 'large', 6);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(10) NOT NULL,
  `branch_id` varchar(20) NOT NULL,
  `english_name` varchar(50) NOT NULL,
  `local_name` varchar(50) NOT NULL,
  `tel_no` int(10) NOT NULL,
  `fax` int(10) NOT NULL,
  `addrs` varchar(100) NOT NULL,
  `state` varchar(20) NOT NULL,
  `branch_type` varchar(20) NOT NULL,
  `sales` varchar(20) NOT NULL,
  `active` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branch_id`, `english_name`, `local_name`, `tel_no`, `fax`, `addrs`, `state`, `branch_type`, `sales`, `active`) VALUES
(1, '1', 'fdgf', 'hhjg', 887, 898, 'ggjhjhjhh', 'h', 'hgjg', 'hhg', 1),
(2, '67', 'gjgh', 'hgjhghjg', 8788, 0, 'gfhgfg', '', '', '', 0),
(3, '78', 'fhgfg', 'hgjg', 656576, 6776, 'ggfghf', '', '', '', 0),
(4, '90', 'hhjhj', 'hggjh', 900, 7676, 'ghghhgjh', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(15, 'Computer', 2),
(17, 'Mobile', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(7, 'Electronic', 1),
(8, 'Dress', 1),
(9, 'Sample Category', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Webrider', '13', '10', 'Madrid', '758676851', 'sri lanka', 'hello everyone one', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),
(5, 'Testing', 'a:19:{i:0;s:11:\"createBrand\";i:1;s:11:\"updateBrand\";i:2;s:9:\"viewBrand\";i:3;s:14:\"createCategory\";i:4;s:14:\"updateCategory\";i:5;s:12:\"viewCategory\";i:6;s:11:\"createStore\";i:7;s:11:\"updateStore\";i:8;s:9:\"viewStore\";i:9;s:15:\"createAttribute\";i:10;s:15:\"updateAttribute\";i:11;s:13:\"viewAttribute\";i:12;s:13:\"createProduct\";i:13;s:13:\"updateProduct\";i:14;s:11:\"viewProduct\";i:15;s:11:\"createOrder\";i:16;s:11:\"updateOrder\";i:17;s:9:\"viewOrder\";i:18;s:13:\"updateCompany\";}');

-- --------------------------------------------------------

--
-- Table structure for table `m_brand`
--

CREATE TABLE `m_brand` (
  `id` int(10) NOT NULL,
  `brand_code` varchar(20) NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `brand_local_name` varchar(100) NOT NULL,
  `manager_name` varchar(50) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `faxno` varchar(10) NOT NULL,
  `addrs1` varchar(100) NOT NULL,
  `addrs2` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(60) NOT NULL,
  `parent_co` varchar(40) NOT NULL,
  `active` int(10) NOT NULL,
  `enable_tax` int(10) NOT NULL,
  `logo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_brand`
--

INSERT INTO `m_brand` (`id`, `brand_code`, `brand_name`, `brand_local_name`, `manager_name`, `phno`, `faxno`, `addrs1`, `addrs2`, `email`, `website`, `parent_co`, `active`, `enable_tax`, `logo`) VALUES
(1, '12345', 'Abcbhh', 'dfgfghgh', 'ghghghjgjh', '343545454', '12323', 'fghhghghjgj', 'bnbbb', 'cvvbbvb', 'ghghgjhgjh', '', 0, 0, '<p>You did not select a file to upload.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `m_company`
--

CREATE TABLE `m_company` (
  `id` int(10) NOT NULL,
  `company_code` varchar(20) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `company_local_name` varchar(100) NOT NULL,
  `manager_name` varchar(50) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `faxno` varchar(10) NOT NULL,
  `addrs1` varchar(100) NOT NULL,
  `addrs2` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(60) NOT NULL,
  `parent_co` varchar(40) NOT NULL,
  `active` int(10) NOT NULL,
  `enable_tax` int(10) NOT NULL,
  `logo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_company`
--

INSERT INTO `m_company` (`id`, `company_code`, `company_name`, `company_local_name`, `manager_name`, `phno`, `faxno`, `addrs1`, `addrs2`, `email`, `website`, `parent_co`, `active`, `enable_tax`, `logo`) VALUES
(1, '123', 'ABC', 'ABC_In', 'Sreashi', '8907654322', '4567890909', 'qwertyuio', 'wertyuio', 'sreashisaha1996@gmail.com', 'www.abc.com', 'No', 0, 1, ''),
(2, '5678', 'dfghj', 'fghjk', 'ghghghg', '667787887', '34444', 'gfgfgggaswee', 'ghjjjouuuyt', 'dfdggfg', 'ffgfffass', '', 0, 0, '<p>You did not select a file to upload.</p>'),
(3, 'as56', 'fgfgfg', 'gfgfgfgh', 'fgfgfgf', '56756543', '676778', 'asdfghjk', 'asdfghjkl', 'dgfdgffgf', 'ggghhgh', '', 0, 0, '<p>You did not select a file to upload.</p>'),
(4, '123', 'Abbbccc', 'bbccc', 'sreadsfdtyy', '5678999890', '1321232', 'dujijijiuiutrrssfdsf', 'dfgdfgdfvcvvbvnbnnm', 'sreashi@1245.com', 'dfghjk', '', 0, 0, '<p>You did not select a file to upload.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `m_customer`
--

CREATE TABLE `m_customer` (
  `id` int(10) NOT NULL,
  `brand_code` varchar(20) NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `brand_local_name` varchar(100) NOT NULL,
  `manager_name` varchar(50) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `faxno` varchar(10) NOT NULL,
  `addrs1` varchar(100) NOT NULL,
  `addrs2` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(60) NOT NULL,
  `parent_co` varchar(40) NOT NULL,
  `active` int(10) NOT NULL,
  `enable_tax` int(10) NOT NULL,
  `logo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_customer`
--

INSERT INTO `m_customer` (`id`, `brand_code`, `brand_name`, `brand_local_name`, `manager_name`, `phno`, `faxno`, `addrs1`, `addrs2`, `email`, `website`, `parent_co`, `active`, `enable_tax`, `logo`) VALUES
(1, '1234', 'hghgh', 'hhgjh', 'hbhb', '98988', '77676', 'hgjhghg', 'ghgjhgjgj', 'ghghjghg', 'hjghg', 'hgjh', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`) VALUES
(4, 'BILPR-239D', 'Shafraz', 'kolombo', '0778650336', '1526279725', '450000.00', '13', '58500.00', '10', '45000.00', '553500.00', '', 2, 1),
(5, 'BILPR-0266', 'Chris', 'California', '05552242', '1526358119', '761700.00', '13', '99021.00', '10', '76170.00', '936891.00', '', 2, 1),
(6, 'BILPR-4A66', 'John Smith', 'Saple Address', '2345678', '1606799361', '3400.00', '13', '442.00', '10', '340.00', '4182.00', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_item`
--

INSERT INTO `orders_item` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(6, 4, 8, '3', '150000', '450000.00'),
(7, 5, 11, '13', '900', '11700.00'),
(8, 5, 10, '5', '150000', '750000.00'),
(9, 6, 12, '1', '2500', '2500.00'),
(10, 6, 11, '1', '900', '900.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(10, 'Mac', '', '150000', '39', 'assets/images/product_image/5afa5fe395f9d.jpg', '<p>sample <br></p>', '[\"17\",\"20\"]', '[\"15\"]', '[\"7\"]', 5, 1),
(11, 'Rubuke', '', '900', '36', 'assets/images/product_image/5afa6026d808e.jpg', '<p>sample<br></p>', '[\"17\",\"21\"]', '[\"15\"]', '[\"7\"]', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(5, 'colombo', 1),
(6, 'kandy', 1),
(7, 'Sample Warehouse', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'super admin', '$2y$10$yfi5nUQGXUZtMdl27dWAyOd/jMOmATBpiUvJDmUu9hJ5Ro6BE5wsK', 'admin@admin.com', 'john', 'doe', '65646546', 1),
(12, 'jsmith', '$2y$10$WLS.lZeiEfyXYfR0l/wkXeRRuqazsgIAMC9//L44J4KkZGbbqcKYC', 'jsmith@sample.com', 'John', 'Smith', '2345678', 1),
(13, 'Sreashi', '$2y$10$ixodSa5iQd56nLRj6F4lfupLptRvVKX4H6dPYlWk4RKjpH/Qu0vGC', 'sreashisaha1996@gmail.com', 'Sreashi', 'Saha', '8906553824', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(7, 6, 4),
(8, 7, 4),
(9, 8, 4),
(10, 9, 5),
(11, 10, 5),
(12, 11, 5),
(13, 12, 5),
(14, 13, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_brand`
--
ALTER TABLE `m_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_company`
--
ALTER TABLE `m_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_customer`
--
ALTER TABLE `m_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `m_brand`
--
ALTER TABLE `m_brand`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `m_company`
--
ALTER TABLE `m_company`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `m_customer`
--
ALTER TABLE `m_customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;