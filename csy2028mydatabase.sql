-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2021 at 12:48 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csy2028mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(254) NOT NULL,
  `created_by` varchar(254) NOT NULL,
  `created_on` varchar(35) NOT NULL,
  `category_status` varchar(11) NOT NULL DEFAULT 'published',
  `category_total_post` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `created_by`, `created_on`, `category_status`, `category_total_post`) VALUES
(58, 'Health', 'kaushal', 'January 12, 2021, 1:05 pm', 'published', 2),
(59, 'Tourism', 'kaushal', 'January 12, 2021, 1:05 pm', 'published', 1),
(60, 'International', 'kaushal', 'January 12, 2021, 1:05 pm', 'published', 1),
(61, 'National News', 'kaushal', 'January 12, 2021, 1:06 pm', 'published', 2),
(62, 'Technology', 'kaushal', 'January 12, 2021, 1:06 pm', 'published', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comt_id` int(11) NOT NULL,
  `comt_post_id` int(11) NOT NULL,
  `comt_detail` text NOT NULL,
  `comt_user_name` varchar(255) NOT NULL,
  `comt_user_id` int(11) NOT NULL,
  `comt_date` varchar(255) NOT NULL,
  `comt_status` varchar(255) NOT NULL DEFAULT 'upapproved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comt_id`, `comt_post_id`, `comt_detail`, `comt_user_name`, `comt_user_id`, `comt_date`, `comt_status`) VALUES
(86, 39, 'hello', 'admin', 60, 'January 12, 2021, 9:57 pm', 'approved'),
(87, 39, 'Hello this is new cfaomments', 'admin', 60, 'January 12, 2021, 9:57 pm', 'approved'),
(88, 39, 'kushal', 'kushal', 61, 'January 14, 2021, 10:37 am', 'approved'),
(89, 40, 'hello beautiful people', 'rame', 63, 'January 17, 2021, 8:26 am', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_detail` text NOT NULL,
  `post_image` text NOT NULL,
  `post_category` varchar(255) NOT NULL,
  `post_status` varchar(10) NOT NULL DEFAULT 'published',
  `post_date` varchar(35) NOT NULL,
  `post_author` varchar(254) NOT NULL,
  `post_views` int(11) NOT NULL DEFAULT 0,
  `post_comment` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_detail`, `post_image`, `post_category`, `post_status`, `post_date`, `post_author`, `post_views`, `post_comment`) VALUES
(39, 'Total Solar Eclipse 2020 in Nepal!', 'Solar and lunar eclipses are spectacular and unique cosmic events that highly interests the people, irrespective of their age, gender, culture, and region.\r\n\r\nThe first Solar Eclipse or Surya Grahan of the year 2020 is going to fall on June 21. However, the eclipse we witness on the coming Sunday will be an annular solar eclipse during which the sun appears like a ring of fire around the area covered by the moon.', 'total-solar-eclipse-live-nepal-2020.jpg', 'Technology', 'published', 'January 12, 2021, 1:33 pm', 'kaushal', 141, 0),
(40, 'Miss Nepal 2020: 21 Finalists to Compete for the Title!', '“Miss Nepal 2020” will be the 25th edition of the Miss Nepal beauty pageant. The Hidden Treasure (THT), the official organizer of Miss Nepal, has scheduled the coronation ceremony of Miss Nepal 2020 on December 5, 2020.\r\n\r\nEarlier, the Hidden Treasure suspended all its pre-planned activities of Miss Nepal 2020 due to the threat of the coronavirus pandemic.\r\n\r\nEven before the nationwide lockdown in Nepal, the first phase of the auditions for the Miss Nepal 2020 was held outside the Kathmandu Valley, including Pokhara, Dharan, Chitwan, Birgunj, Birtamod, Butwal, Nepalgunj, and Dhangadhi.', 'top-21-contestants-for-Miss-Nepal-2020.jpg', 'National News', 'published', 'January 12, 2021, 1:34 pm', 'rame', 9, 0),
(41, 'Govt. Allocates Only NPR 25Mn for 1st Year Construction of Smart Cities Worth NPR 350Bn', 'A few years ago, Nepali Government had announced an ambitious project to develop four smart cities in the Kathmandu Valley, in line with the international standards full of modern facilities for a high-class living experience for citizens, visitors, and tourists.\r\n\r\nThe four smart cities’ land areas are named as Agneya, Ishaan, Nairitya, and Uttar.\r\n\r\nThe Kathmandu Valley Development Authority (KVDA) had spent the last few years preparing the blueprints and Detailed Project Reports (DPRs) for building the four smart cities, two in Bhaktapur and one each in', 'smart-cities.jpg', 'National News', 'published', 'January 12, 2021, 1:35 pm', 'kaushal', 0, 0),
(42, 'ICT Award 2020: Cast Your Public Vote Today!', 'The public voting for the ICT Award 2020 has started and will be conducted till November 30, 2020.\r\n\r\nAccording to the organizers, public voting is being conducted for the top five selected in 4 different categories under the ICT Award.\r\n\r\nEarlier, a 14-member jury selected the best five in four categories, including the Startup ICT Award, Product ICT Award, Innovation Driven Crisis Response ICT Award, and Rising Student ICT Award 2020.\r\n\r\nThe jury selected the top five through a virtual program on October 20.', 'ict-awards.jpg', 'International', 'published', 'January 12, 2021, 1:36 pm', 'rame', 1, 0),
(43, 'Nepal Offers 50% Subsidy on ‘COVID-19 Family Insurance Plan’!', 'Nepal Offers 50% Subsidy on ‘COVID-19 Family Insurance Plan’!\r\nHowever, the insurance charge is completely waived for the government officials.\r\n\r\n \r\n \r\nNepal Offers 50% Subsidy on ‘COVID-19 Family Insurance Plan’!\r\n\r\n \r\nIn a bid to alleviate the financial burden on the people, the Nepali Government has decided to provide a 50% subsidy on the family insurance plan against COVID-19.\r\n\r\nHowever, people opting for the ‘COVID-19 Insurance Scheme‘ must fulfill the conditions maintained by the ‘Corona Insurance Standard 2020’ to receive the subsidy.\r\n\r\nIssuing the standards on August 5, the Nepal Insurance Board (NIB) has come up with the provision to give respite to the individuals amid the crisis.\r\n\r\n“The scheme is expected to be relevant at a time when almost all the regions of the country are at serious risk of coronavirus spread,” said NIB Chairman Chiranjibi Chapagain.\r\n\r\nWhile the general public has to pay half of the insurance fee, the insurance charge is completely waived for the government officials.', 'nepal-covid19-insurance-plan-policy.jpg', 'Health', 'published', 'January 12, 2021, 1:37 pm', 'kaushal', 5, 0),
(44, 'Nepal Reports 464 New COVID-19 Cases, 5 Deaths!', 'The coronavirus caseload in Nepal has crossed 22,000 mark on Friday after 464 new cases were reported in the last 24 hours.\r\n\r\nWith the recent additions, the total number of coronavirus positive cases in the country has reached 22, 214. Among the new cases, 106 were reported from within Kathmandu Valley, raising the alarm across the country.\r\n\r\nIn response, the three District Administration Offices (DAO) in Valley have decided to suspend all non-essential services for the next 15 days. The DAOs have decided to seal the highly infected areas in the Kathmandu, Lalitpur and Bhaktapur districts.\r\n\r\n', 'covid-19-175-nepali-evacuees-test-negative-for-coronavirus.jpg', 'Health', 'published', 'January 12, 2021, 1:38 pm', 'rame', 8, 0),
(45, 'Tourism Post', 'This is Tourism Post', '137500647_1136986906748749_1706622409719268343_n.jpg', 'Tourism', 'published', 'January 12, 2021, 1:39 pm', 'kaushal', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(254) NOT NULL,
  `username` varchar(254) NOT NULL,
  `user_role` varchar(30) NOT NULL DEFAULT 'subscriber',
  `email` varchar(254) NOT NULL,
  `registered_on` varchar(30) NOT NULL,
  `user_profile_photo` varchar(254) NOT NULL DEFAULT 'default-profile-image.png',
  `password` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `user_role`, `email`, `registered_on`, `user_profile_photo`, `password`) VALUES
(63, 'rame', 'news-poster-admin', 'rame@gmail.com', 'January 14, 2021, 9:29 pm', 'default-profile-image.png', '$2y$10$b/wQPeZLxoiBOoN6b31bD.kODloyfWYU3Cjk0SLOvXDSiZSELHp5m'),
(64, 'admin', 'admin', 'admin@gmail.com', 'January 14, 2021, 9:29 pm', 'default-profile-image.png', '$2y$10$sImNy64OOEm.yqIo7Tdsa.ds1wOQQzi/AC1pkKaM0ePDclNLBv0Ya'),
(65, 'ankit', 'subscriber', 'ankit@gmail.com', 'January 17, 2021, 12:31 pm', 'default-profile-image.png', '$2y$10$2ePjI4/pI.sQMxxogyXdh.RLxVglmjtMr877grGcunRjJ55TH9aeu'),
(67, 'kausshal', 'subscriber', 'aa@gmail.com', 'January 17, 2021, 1:24 pm', 'default-profile-image.png', '$2y$10$BEIdVN.DYDd9Ypg.UV5f..RyUlEBw6qa7LsMWhu7PqnHZ8WSshwo2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comt_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
