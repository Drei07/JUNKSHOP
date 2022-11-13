-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 04:12 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpsms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_list`
--

CREATE TABLE `brand_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand_list`
--

INSERT INTO `brand_list` (`id`, `name`, `image_path`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Yamaha', 'uploads/brands/1.png?v=1642731446', 0, 1, '2022-01-21 10:03:12', '2022-01-21 10:17:26'),
(2, 'Kawasaki', 'uploads/brands/2.png?v=1642731379', 0, 1, '2022-01-21 10:10:24', '2022-01-21 10:16:19'),
(3, 'BMW', 'uploads/brands/3.png?v=1642731467', 0, 1, '2022-01-21 10:17:47', '2022-01-21 10:17:47'),
(4, 'Harley Davidson', 'uploads/brands/4.png?v=1642731495', 0, 1, '2022-01-21 10:18:15', '2022-01-21 10:18:15'),
(5, 'Ducati', 'uploads/brands/5.png?v=1642731515', 0, 1, '2022-01-21 10:18:35', '2022-01-21 10:18:35'),
(6, 'Oil Company', 'uploads/brands/6.jpg?v=1642744467', 0, 1, '2022-01-21 13:54:27', '2022-01-21 13:54:27'),
(7, 'Maxxis', 'uploads/brands/7.jpg?v=1642744509', 0, 1, '2022-01-21 13:55:09', '2022-01-21 13:55:09'),
(8, 'HONDA', 'uploads/brands/8.png?v=1667823543', 0, 1, '2022-11-07 20:19:03', '2022-11-07 20:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Accessories', 1, 0, '2021-09-30 09:42:40'),
(2, 'Chassis', 1, 0, '2021-09-30 09:43:00'),
(3, 'Tools', 1, 0, '2021-09-30 09:43:48'),
(5, 'Tires', 1, 0, '2022-01-21 10:33:07'),
(6, 'Mugs', 1, 0, '2022-01-21 10:33:31'),
(7, 'Oils', 1, 0, '2022-01-21 10:33:47'),
(8, 'Machine Parts', 1, 0, '2022-01-21 10:34:07'),
(9, 'Body Parts', 1, 0, '2022-01-21 13:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_added` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `status`, `delete_flag`, `date_created`, `date_added`) VALUES
(1, 'John', 'D', 'Smith', 'Male', '09123456897', 'This is my sample address only', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 1, 0, '2022-01-24 13:33:44', '2022-01-25 13:15:11'),
(2, 'juan', '', 'santos', 'Male', '09776621929', 'lubao, pampanga', 'chopshop750@gmail.com', '42f749ade7f9e195bf475f37a44cafcb', 1, 0, '2022-11-06 11:29:45', '2022-11-06 12:42:58'),
(3, 'sample', 'sample', 'Male', '', '', 'sample', '', '4e91b1cbe42b5c884de47d4c7fda0555', 1, 0, '2022-11-07 19:52:14', NULL),
(4, 'sample', 'sample', 'Male', '', 'sample', 'sample', 'sample@gmail.com', '5e8ff9bf55ba3508199d22e984129be6', 1, 0, '2022-11-07 19:54:40', NULL),
(5, 'sfg', 'ffsg', 'sfgsfg', 'Female', 'sfgsfg', 'sfgsdfg', 'andrei.m.@gmail.com', '42f749ade7f9e195bf475f37a44cafcb', 1, 0, '2022-11-12 08:47:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mechanics_list`
--

CREATE TABLE `mechanics_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mechanics_list`
--

INSERT INTO `mechanics_list` (`id`, `name`, `contact`, `email`, `status`, `date_created`) VALUES
(1, 'Mike Williams', '09123456789', 'mwilliams@sample.com', 1, '2021-09-30 10:26:11'),
(2, 'George Wilson', '09112355799', 'gwilson@gmail.com', 1, '2021-09-30 10:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `total_amount` float NOT NULL DEFAULT 0,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending,1 = packed, 2 = for delivery, 3 = on the way, 4 = delivered, 5=cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `ref_code`, `client_id`, `total_amount`, `delivery_address`, `status`, `date_created`, `date_updated`) VALUES
(6, '202201-00001', 1, 11500, 'This is my sample address only', 5, '2022-01-24 16:37:18', '2022-01-24 17:09:42'),
(7, '202201-00002', 1, 11080, 'This is my sample address only', 2, '2022-01-25 10:43:19', '2022-01-25 10:58:04'),
(9, '202211-00001', 2, 520, 'lubao, pampanga', 5, '2022-11-06 11:34:37', '2022-11-06 11:34:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `models` text NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `brand_id`, `category_id`, `name`, `models`, `description`, `price`, `status`, `image_path`, `delete_flag`, `date_created`, `date_updated`) VALUES
(12, 8, 1, 'Momo Prototipo Steering Wheel (Black)', 'HONDA', '&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap;&quot;&gt;ACTUAL PHOTOS POSTED\r\nBrandnew MOMO Prototipo steering wheel\r\n100% Excellent Quality\r\n14&amp;nbsp;inches Diameter\r\nColor: Black\r\nUniversal Fitment\r\nFor all types of vehicle with Bosskit HUB adaptor\r\nBosskit Hub adaptor Sold Separately\r\nChat Us for any Question and Installation Concern\r\nPackage Includes:\r\n1pc- Momo Prototipo Black&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 2290, 1, 'uploads/products/12.PNG?v=1668234769', 0, '2022-11-12 14:32:49', '2022-11-12 14:32:49'),
(13, 8, 1, 'Honda BR-V Car Cover Honda BRV High Density Oxford Fabric Water Resistant With Zipper & Buckles YM', 'Honda BR-V', '&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap;&quot;&gt;Advantages of our products: \r\n1. Super durable. It Does not Brittle over time\r\n2. Strong fabric makes it tearproof. \r\n3. PU coating gives good water Resistant capability. Breathable at the same time.\r\n4. One layer of Fabric makes it comparably light weight, with strong organizing bag as a part of our product, which makes it very practical and easy to organize.\r\n5. Fast Dry: Water Resistant, the PU coating inside is to enhance water resistant capability, as the test from factory, water Resistant level is 2500mm to 3000mm.\r\n6. With zipper on driver&rsquo;s side.\r\n7. Attached Straps with Buckles for windproof.\r\n8. With reflectors.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1542, 1, 'uploads/products/13.PNG?v=1668234922', 0, '2022-11-12 14:35:22', '2022-11-12 14:35:22'),
(14, 7, 5, '175/65 R14 82H Bridgestone, Passenger Car Tire, Ecopia EP150', 'Civic / Accent / Lancer / Mirage', '&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap;&quot;&gt;Ecopia EP150\r\n-  Tread design for small cars \r\n-  The EP150 truly reflects Bridgestone&rsquo;s advanced technology and commitment to innovation.\r\n-  Known for its low rolling resistance feature, the Ecopia EP150 is designed to deliver excellent fuel economy and low noise while maintaining Bridgestone&rsquo;s renowned safety standards.\r\n-  Up to 7.1% less CO2 emissions than the conventional tire\r\n-  Up to 2.5% better fuel consumption than the conventional tire\r\n-  Improved by 8% in wet braking performance\r\n\r\nFor Vehicles:  Honda City / Civic, Hyundai Accent, Mitsubishi Lancer / Mirage, Toyota Corolla\r\n\r\nPLEASE TAKE NOTE:  \r\n-	Nate&rsquo;s Store ships out orders within 24 hours (Except for Sundays &amp;amp; Holidays). \r\n-	Items are shipped out through Shopee\'s third party courier service.\r\n-	Once shipped out, Nate&rsquo;s Store is no longer in control of the delivery.\r\n-	However, we may assist you in tracking or following up the delivery through Shopee. \r\n\r\nFor questions or clarifications, feel free to message us.\r\nThank you for shopping at Nate&rsquo;s Store!\r\nWhere you find Good Deals!\r\n\r\nWhat is included:  One(1) piece Bridgestone Tire&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 2000, 1, 'uploads/products/14.PNG?v=1668235081', 0, '2022-11-12 14:38:01', '2022-11-12 14:38:01'),
(15, 8, 9, 'Honda civic FD 2006 to 2011 Radiator 1.8/2.0', 'Honda civic FD 2006 to 2011', '&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap;&quot;&gt;Honda FD radiator 2006 to 2011\r\n\r\nEvercool Brand \r\nTaiwan made \r\n2 rows \r\nPlastic top/bottom &lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 3500, 1, 'uploads/products/15.PNG?v=1668235174', 0, '2022-11-12 14:39:34', '2022-11-12 14:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `request_meta`
--

CREATE TABLE `request_meta` (
  `request_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_meta`
--

INSERT INTO `request_meta` (`request_id`, `meta_field`, `meta_value`) VALUES
(4, 'vehicle_type', 'Sample'),
(4, 'vehicle_name', 'Yamaha Nmax V2'),
(4, 'vehicle_registration_number', 'GCN 2306'),
(4, 'vehicle_model', '2021'),
(4, 'service_id', '1,2,4'),
(4, 'pickup_address', ''),
(5, 'vehicle_type', 'Sample 102'),
(5, 'vehicle_name', 'Sample'),
(5, 'vehicle_registration_number', 'TEST123'),
(5, 'vehicle_model', 'test'),
(5, 'service_id', '3'),
(5, 'pickup_address', 'Sample Address'),
(6, 'vehicle_type', 'sample'),
(6, 'vehicle_name', 'sample'),
(6, 'vehicle_registration_number', 'sample'),
(6, 'vehicle_model', 'sample'),
(6, 'service_id', '3'),
(6, 'pickup_address', '');

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(30) NOT NULL,
  `service` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `service`, `description`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Change Oil', '&lt;p&gt;&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;An Oil Change is&amp;nbsp;&lt;/span&gt;&lt;b style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;the act of removing the used oil in your engine and replacing it with new, clean oil&lt;/b&gt;&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;. Over time, oil breaks down and gets dirty. These factors make oil much less slippery and less effective at their job of lubricating engine parts.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2021-09-30 14:11:21'),
(2, 'Overall Checkup', '&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;Curabitur nec viverra tellus. Donec quis molestie arcu. Sed et blandit dui, vel vehicula tortor. Vivamus fringilla sit amet nibh fringilla ornare. Etiam iaculis ornare purus id feugiat. Etiam mattis erat ut congue tempor. Nam placerat faucibus libero ultrices posuere. Donec ac tempus nulla.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 1, '2021-09-30 14:11:38'),
(3, 'Engine Tune up', '&lt;p&gt;&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;engine tune-ups include&amp;nbsp;&lt;/span&gt;&lt;b style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;checking, diagnosing, and replacing bad spark plugs, spark plug wires, distributor caps, fuel filters, air filters, and oil filters&lt;/b&gt;&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;. Tune-ups can also include checking emission levels, fuel lines, wiring, coolant hoses, and serpentine belts.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2021-09-30 14:12:03'),
(4, 'Tire Replacement', '&lt;p&gt;&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;b style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;any damage to a tyre on the Vehicle which requires us to replace the tyre with a new tyre&lt;/b&gt;&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;. If a Vehicle\'s tyre is punctured and is capable of being repaired&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2021-09-30 14:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `service_type` text NOT NULL,
  `mechanic_id` int(30) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `client_id`, `service_type`, `mechanic_id`, `status`, `date_created`) VALUES
(4, 1, 'Drop Off', 2, 3, '2022-01-25 09:47:31'),
(5, 1, 'Pick Up', 2, 2, '2022-01-25 10:25:23'),
(6, 5, 'Drop Off', 1, 0, '2022-11-12 14:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `stock_list`
--

CREATE TABLE `stock_list` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1= IN, 2= Out',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Chopshop Automotive Parts & Consultation Services System'),
(6, 'short_name', 'CHOP SHOP'),
(11, 'logo', 'uploads/1667717760_png-clipart-engine-piston-motorcycle-helmets-motorcycle-club-custom-motorcycle-kawasaki-heavy-industries-motorcycle-emblem-photography.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1667824980_arenaev_001.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '42f749ade7f9e195bf475f37a44cafcb', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2022-11-06 19:08:44'),
(6, 'Claire', 'Blake', 'cblake', 'cd74fae0a3adf459f73bbf187607ccea', 'uploads/1632990840_ava.jpg', NULL, 2, '2021-09-30 16:34:02', '2021-09-30 16:35:26'),
(7, 'SAmple', 'SAmple', 'SAmple', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2022-11-06 17:40:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_list`
--
ALTER TABLE `brand_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indexes for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `mechanic_id` (`mechanic_id`);

--
-- Indexes for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_list`
--
ALTER TABLE `brand_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock_list`
--
ALTER TABLE `stock_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `cart_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_list_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_list_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD CONSTRAINT `request_meta_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD CONSTRAINT `service_requests_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_requests_ibfk_2` FOREIGN KEY (`mechanic_id`) REFERENCES `mechanics_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD CONSTRAINT `stock_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
