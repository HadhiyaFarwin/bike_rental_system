-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2024 at 02:34 AM
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
-- Database: `b1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'mala@gmail.com', 3, '30/06/2024', '02/07/2024', 'xyz', 2, '2024-06-26 20:15:43'),
(3, 'tharupan@gmail.com', 4, '02/07/2024', '07/07/2024', 'xyz', 1, '2024-06-26 21:10:06'),
(4, 'hanfalhasan1108@gmail.com', 10, '06/07/2024', '10/07/2024', 'XYZ', 0, '2024-06-10 04:51:37'),
(5, 'khan78@gmail.com', 3, '02/07/2024', '05/07/2024', 'abc', 1, '2024-06-13 09:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'KTM', '2024-06-18 16:24:34', '2024-06-19 06:42:23'),
(2, 'Bajaj', '2024-06-18 16:24:50', NULL),
(3, 'Honda', '2024-06-18 16:25:03', NULL),
(4, 'Suzuki', '2024-06-18 16:25:13', NULL),
(5, 'Yamaha', '2024-06-18 16:25:24', NULL),
(7, 'Ducati', '2024-06-19 06:22:13', NULL),
(8, 'Honda Dio', '2024-06-10 04:53:33', NULL),
(9, ' TVS Scooty', '2024-06-10 04:53:36', NULL),
(10, 'Suzuki', '2024-06-10 04:53:39', NULL),
(11, 'Discover', '2024-06-10 04:53:41', NULL),
(12, 'tvs', '2024-06-10 05:17:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Test Demo test demo																									', 'test@test.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'mala', 'mala@gmail.com', '2147483647', 'xyz', '2024-06-18 10:03:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																														<p align=\"justify\"><strong style=\"\"><font color=\"#990000\" style=\"font-size: xx-large;\">(1) ACCEPTANCE OF TERMS</font></strong></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-weight: 700; font-size: medium;\">DELIVERY AND COLLECTION</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-weight: 700; font-size: medium;\">Delivery and collection service is subject to approval by management at delivery and collection location, our courier provider and RideExpress Rentals. All delivery and collection locations should have a staffed reception and local contact phone number.</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-weight: 700; font-size: medium;\">Renters are responsible for ensuring that management at their accommodation is agreeable to accepting bike delivery and providing safe storage for bikes pending the renters arrival.&nbsp; Similarly, renters are responsible for ensuring that management at the designated collection address are agreeable to safely storing bikes and handing them over to our courier service.</span></p><p align=\"justify\"><span style=\"font-size: small;\">Changes\r\nWe reserve the right, at our sole discretion, to modify or replace these Terms at any time. If a revision is material we will try to provide at least 30 days notice prior to any new terms taking effect. What constitutes a material change will be determined at our sole discretion.\r\nBy continuing to access or use our Service after those revisions become effective, you agree to be bound by the revised terms. If you do not agree to the new terms, please stop using the Service. Contact Us\r\nIf you have any questions about these Terms, please contact us.</span><br></p>\r\n										\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: Raleway, sans-serif; font-size: 16px; letter-spacing: 0.8px;\">This Privacy Policy describes how your personal information is collected, used, and shared when you visit or make a rent from this website.</span><br style=\"color: rgb(0, 0, 0); font-family: Raleway, sans-serif; font-size: 16px; letter-spacing: 0.8px;\"><span style=\"font-weight: bold; font-family: &quot;comic sans ms&quot;;\"><br style=\"color: rgb(0, 0, 0); font-size: 16px; letter-spacing: 0.8px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px; letter-spacing: 0.8px;\">PERSONAL INFORMATION WE COLLECT</span></span><br style=\"color: rgb(0, 0, 0); font-family: Raleway, sans-serif; font-size: 16px; letter-spacing: 0.8px;\"><br style=\"color: rgb(0, 0, 0); font-family: Raleway, sans-serif; font-size: 16px; letter-spacing: 0.8px;\"><span style=\"color: rgb(0, 0, 0); font-family: Raleway, sans-serif; font-size: 16px; letter-spacing: 0.8px;\">When you visit the Site, we automatically collect certain information about your device, including information about your web browser, IP address, time zone, and some of the cookies that are installed on your device. Additionally, as you browse the Site, we collect information about the individual web pages or products that you view, what websites or search terms referred you to the Site, and information about how you interact with the Site. We refer to this automatically-collected information as “Device Information.”</span><div><span style=\"color: rgb(0, 0, 0); font-family: Raleway, sans-serif; font-size: 16px; letter-spacing: 0.8px;\"><br></span></div><div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: Raleway, sans-serif; font-size: 16px; letter-spacing: 0.8px;\">YOUR RIGHTS</span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: Raleway, sans-serif; font-size: 16px; letter-spacing: 0.8px;\">If you are a European resident, you have the right to access personal information we hold about you and to ask that your personal information be corrected, updated, or deleted. If you would like to exercise this right, please contact us through the contact information below.</span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: Raleway, sans-serif; font-size: 16px; letter-spacing: 0.8px;\"><br></span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: Raleway, sans-serif; font-size: 16px; letter-spacing: 0.8px;\">DATA RETENTION</span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: Raleway, sans-serif; font-size: 16px; letter-spacing: 0.8px;\">When you place an order through the Site, we will maintain your Order Information for our records unless and until you ask us to delete this information.</span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: Raleway, sans-serif; font-size: 16px; letter-spacing: 0.8px;\"><br></span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: Raleway, sans-serif; font-size: 16px; letter-spacing: 0.8px;\">CHANGES</span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: Raleway, sans-serif; font-size: 16px; letter-spacing: 0.8px;\">We may update this privacy policy from time to time in order to reflect, for example, changes to our practices or for other operational, legal or regulatory reasons.</span></div></div>\r\n										'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">WE ARE THE BIKE RENTAL MANAGER. The only 100% dedicated bike rental booking website. The first Bike Rental Manager (BRM) shop was our own bike shop. Ever Since it has been our aim to make bike rental easier for everyone, everywhere.We focus on making bike rentals easier for you.Your rental business has a unique set of challenges. We are the only dedicated bike rental site and will be able to offer you a solution to match your needs.Get in touch with us today! We provide affordable bike rates, we hae lost of Satiisfied customers feedback, you can have a look at our home page too!! </span>'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">How do I use discounts coupons?\nExcept for promotion codes, Our discounts are applied automatically if your reservation meets any of the criteria mentioned above.\n\nTo use a promotion code, simply enter the code on the homepage widget as you start your reservation. You can do this by selecting the \"Have a promotion code?\" prompt. Promotion codes can also be entered on the checkout page, under Reservation Total. Please note that the promotion code prompt does not appear for certain types of reservations, such as reservations made on the Deals page.\n<br>\nOur Discounts Terms & Conditions\nWe no longer offer or accept returning customer discounts. All discounts are non-transferable and cannot be combined with additional promotions or discounts.</br>\n\n* Liability in case accident:\nThe hirer should have coverage through his own accident and liability insurance.\nThe renting company is not responsible under any circumstances for accidents or damages caused to the hirer or which the hirer causes to any third party or cases of liability </span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'tharuban@gmail.com', '2024-06-22 16:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'mala@gmail.com', 'This is amazing! I mean really such great bike for rent at affordable price. oh this is crazy man!', '2024-06-18 07:44:31', 1),
(2, 'tharupan@gmail.com', 'I think this is the one and only top bike rental site in the world. 5-Stars from me - Full satisfaction, no complain at all', '2024-06-18 07:46:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `NIC/PassportN0` varchar(50) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `NIC/PassportN0`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'mala', 'mala@gmail.com', '123', NULL, '2147483647', NULL, NULL, NULL, NULL, '2024-06-17 19:59:27', '2024-06-26 21:02:58'),
(2, 'Tharupan', 'tharupan@gmail.com', '123', NULL, '8285703354', NULL, NULL, NULL, NULL, '2024-06-17 20:00:49', '2024-06-26 21:03:09'),
(3, 'Mark ', 'mark123@gmail.com', '123', NULL, '09999857868', '03/02/1990', 'PKL', 'PKL', 'PKL', '2024-06-17 20:01:43', '2024-06-17 21:07:41'),
(4, 'Tom', 'tom45@gmail.com', '456', NULL, '9999857868', '', 'PKL', 'XYZ', 'XYZ', '2024-06-17 20:03:36', '2024-06-26 19:18:14'),
(5, 'Rafeek Hanfal', 'hanfalhasan1108@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, '0756863200', NULL, NULL, NULL, NULL, '2024-06-11 03:57:55', NULL),
(6, 'Rihas Khan', 'khan78@gmail.com', '99c5e07b4d5de9d18c350cdf64c5aa3d', NULL, '0754338376', NULL, NULL, NULL, NULL, '2024-06-13 09:29:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'SS400', 2, 'Slowly spreading its cards this year, the Ace of Bajaj Autos is still not on the table. With the expectations like Pulsar 400SS or Pulsar SS400, the Ace (400SS) would be the commander of the Pulsar series. It would be a benchmark for the other motorcycle manufacturers as the competition for more performance oriented bikes will definitely rise this year.', 2000, 'Petrol', 2017, 2, 'knowledges_base_bg.jpg', '20170523_145633.jpg', 'codepro.png', 'dd.webp', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-19 11:46:23', '2024-06-11 04:24:09'),
(2, 'RS200', 2, 'The Pulsar is by far the most successful brand Bajaj has managed to create in the recent past.It is also fast, no doubt. But, its true highlight is its easy to ride nature. ', 859, 'Petrol', 2015, 2, 'bike_755x430.png', 'looking-used-bike.png', 'front-image.jpg', 'about_services_faq_bg.jpg', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2017-06-19 16:16:17', '2017-06-21 16:57:11'),
(3, 'R1', 4, ' The Suzuki GSX-R1000 is a sport bike from Suzuki GSX-R series of motorcycles.It was introduced in 2001 to replace the GSX-R1100 and is powered by a liquid-cooled 999 cc (61.0 cu in) inline four-cylinder, four-stroke engine.', 563, 'Petrol', 2012, 2, 'featured-img-300.jpg', 'dealer-logos.jpg', 'img_390x3900.jpg', 'listing_img303.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:20', '2017-06-20 18:40:11'),
(4, 'Duke390', 1, ' The KTM 390 DUKE breathes life into values that have made motorcycling so amazing for decades. It combines maximum riding pleasure with optimum user value and comes out on top wherever nimble handling counts. Light as a feather, powerful and packed with state-of-the-art technology, it guarantees a thrilling ride, whether youre in the urban jungle or a forest of bends. 390 DUKE – nowhere you will find more motorcycle per euro.', 500, 'Petrol', 2012, 2, 'featured-img-3000.jpg', 'featured-img-1000.png', 'featured-img-1000.png', 'featured-img-1000.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2024-06-19 16:18:43', '2024-06-20 18:44:12'),
(5, 'R1', 5, 'The YZF-R1® features a lightweight and compact crossplane crankshaft, inline-four-cylinder, 998cc high output engine. Featuring titanium fracture-split connecting rods, an offset cylinder block and magnesium covers, the motor delivers extremely high horsepower and a strong pulse of linear torque for outstanding performance, all wrapped in aerodynamic MotoGP®-style bodywork.', 1500, 'Petrol', 2016, 2, 'bikes_755x430.png', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-06-20 17:57:09', '2024-06-21 16:56:43'),
(6, 'TVS-Pep Plus', 9, 'Pep Plus is a popular choice among entry-level scooters in India, known for its lightweight design, ease of use, and appeal particularly to women riders and beginners. ', 1300, 'Diesel', 2015, 2, 'TVS-Wego-PNG.png', 'd.jpg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-06-10 04:55:42', NULL),
(7, 'Ray ZR 125', 10, 'TheSuzuki Access 125 Mileage is around 45 kmpl, while the Yamaha RayZR 125 Fi Hybrid Mileage is around 71.33 kmpl.', 1500, 'Petrol', 2019, 2, 'Yamaha-Ray-ZR.png', 'Yamaha-Ray-ZR.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2024-06-10 04:58:34', NULL),
(8, 'Suzuki', 4, 'special edition based on the Access 125 now available in 2018 and is currently sold as a regular product along with its normal siblings. The special edition is available in white, silver', 750, 'Petrol', 2017, 2, 'suzuki.jpeg', 'd.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, '2024-06-10 05:01:19', NULL),
(9, 'Discover 125T', 2, 'Bajaj Discover 125T is powered by a single cylinder 4-valve DTS-i engine that makes 124.6cc of displacement. ', 800, 'Petrol', 2014, 2, 'discover125.jpeg', 'discover125.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2024-06-10 05:02:57', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
