-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 31, 2020 at 08:44 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shortly`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(48, 'PHP'),
(52, 'Javascript');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 155, 'EDWIN DIAZ', 'edwin@gmail.com', 'sfdgsdfg', 'approved', '2015-11-13');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` varchar(255) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(113, 48, 'PHP', 'Edwin Diaz', 'rico', '2017-01-30', 'image_5.jpg', '<p style=\"text-align: justify; line-height: 14px; margin: 0px 0px 14px; padding: 0px; font-family: Arial, Helvetica, sans;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum fermentum pretium. Ut nec purus at est consequat pretium vitae at tortor. Morbi pulvinar lacinia arcu, non elementum leo commodo id. Mauris congue volutpat feugiat. Praesent quis ligula vel neque consectetur mollis. Mauris a ipsum a elit pharetra sodales vitae non diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae diam in diam malesuada gravida a sit amet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc et urna eu justo ullamcorper tempus.</p>\r\n<p>&nbsp;</p>', 'php', '', 'published', 134),
(114, 48, 'Javascript', 'Miguel', '', '2015-07-24', 'image_4.jpg', '<p style=\"text-align: justify; line-height: 14px; margin: 0px 0px 14px; padding: 0px; font-family: Arial, Helvetica, sans;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum fermentum pretium. Ut nec purus at est consequat pretium vitae at tortor. Morbi pulvinar lacinia arcu, non elementum leo commodo id. Mauris congue volutpat feugiat. Praesent quis ligula vel neque consectetur mollis. Mauris a ipsum a elit pharetra sodales vitae non diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae diam in diam malesuada gravida a sit amet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc et urna eu justo ullamcorper tempus.</p>\r\n<p>&nbsp;</p>', 'javascript', '', 'published', 16),
(115, 48, 'Javascript', 'Edwin Diaz', '', '2015-07-24', 'image_4.jpg', '<p style=\"text-align: justify; line-height: 14px; margin: 0px 0px 14px; padding: 0px; font-family: Arial, Helvetica, sans;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum fermentum pretium. Ut nec purus at est consequat pretium vitae at tortor. Morbi pulvinar lacinia arcu, non elementum leo commodo id. Mauris congue volutpat feugiat. Praesent quis ligula vel neque consectetur mollis. Mauris a ipsum a elit pharetra sodales vitae non diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae diam in diam malesuada gravida a sit amet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc et urna eu justo ullamcorper tempus.</p>\r\n<p>&nbsp;</p>', 'javascript', '', 'published', 0),
(116, 48, 'Bootstrap', 'George', '', '2015-07-24', 'image_3.jpg', '<p style=\"text-align: justify; line-height: 14px; margin: 0px 0px 14px; padding: 0px; font-family: Arial, Helvetica, sans;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum fermentum pretium. Ut nec purus at est consequat pretium vitae at tortor. Morbi pulvinar lacinia arcu, non elementum leo commodo id. Mauris congue volutpat feugiat. Praesent quis ligula vel neque consectetur mollis. Mauris a ipsum a elit pharetra sodales vitae non diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae diam in diam malesuada gravida a sit amet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc et urna eu justo ullamcorper tempus.</p>\r\n<p>&nbsp;</p>', 'Bootstrap', '', 'published', 4),
(118, 48, 'Javascript', 'Edwin Diaz', '', '2015-07-24', 'image_4.jpg', '<p style=\"text-align: justify; line-height: 14px; margin: 0px 0px 14px; padding: 0px; font-family: Arial, Helvetica, sans;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum fermentum pretium. Ut nec purus at est consequat pretium vitae at tortor. Morbi pulvinar lacinia arcu, non elementum leo commodo id. Mauris congue volutpat feugiat. Praesent quis ligula vel neque consectetur mollis. Mauris a ipsum a elit pharetra sodales vitae non diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae diam in diam malesuada gravida a sit amet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc et urna eu justo ullamcorper tempus.</p>\r\n<p>&nbsp;</p>', 'javascript', '', 'published', 4),
(119, 48, 'Javascript', 'Miguel', 'suave', '2017-07-12', 'image_2.jpg', '<p style=\"text-align: justify; line-height: 14px; margin: 0px 0px 14px; padding: 0px; font-family: Arial, Helvetica, sans;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum fermentum pretium. Ut nec purus at est consequat pretium vitae at tortor. Morbi pulvinar lacinia arcu, non elementum leo commodo id. Mauris congue volutpat feugiat. Praesent quis ligula vel neque consectetur mollis. Mauris a ipsum a elit pharetra sodales vitae non diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae diam in diam malesuada gravida a sit amet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc et urna eu justo ullamcorper tempus.</p>\r\n<p>&nbsp;</p>', 'javascript', '', 'draft', 1),
(121, 48, 'PHP', 'Edwin Diaz', 'suave', '2017-07-12', 'image_2.jpg', '<p style=\"text-align: justify; line-height: 14px; margin: 0px 0px 14px; padding: 0px; font-family: Arial, Helvetica, sans;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum fermentum pretium. Ut nec purus at est consequat pretium vitae at tortor. Morbi pulvinar lacinia arcu, non elementum leo commodo id. Mauris congue volutpat feugiat. Praesent quis ligula vel neque consectetur mollis. Mauris a ipsum a elit pharetra sodales vitae non diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae diam in diam malesuada gravida a sit amet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc et urna eu justo ullamcorper tempus.</p>\r\n<p>&nbsp;</p>', 'php', '', 'draft', 0),
(122, 48, 'Javascript', 'Miguel', 'rico', '2017-01-30', 'image_1.jpg', '<p style=\"text-align: justify; line-height: 14px; margin: 0px 0px 14px; padding: 0px; font-family: Arial, Helvetica, sans;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum fermentum pretium. Ut nec purus at est consequat pretium vitae at tortor. Morbi pulvinar lacinia arcu, non elementum leo commodo id. Mauris congue volutpat feugiat. Praesent quis ligula vel neque consectetur mollis. Mauris a ipsum a elit pharetra sodales vitae non diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae diam in diam malesuada gravida a sit amet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc et urna eu justo ullamcorper tempus.</p>\r\n<p>&nbsp;</p>', 'javascript', '', 'draft', 0),
(135, 48, 'Javascript', 'Edwin Diaz', '', '2016-12-10', 'lambo_1.jpg', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum fermentum pretium. Ut nec purus at est consequat pretium vitae at tortor. Morbi pulvinar lacinia arcu, non elementum leo commodo id. Mauris congue volutpat feugiat. Praesent quis ligula vel neque consectetur mollis. Mauris a ipsum a elit pharetra sodales vitae non diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae diam in diam malesuada gravida a sit amet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc et urna eu justo ullamcorper tempus.</strong></p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\r\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>&nbsp;</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\r\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>=</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\r\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\r\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\r\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\r\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\r\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\r\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\r\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\r\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\\\\\r\\\\\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>\\\\r\\\\n</p>\r\n<p>\\r\\n</p>\r\n<p>&nbsp;</p>', 'javascript', '', 'draft', 72);

-- --------------------------------------------------------

--
-- Table structure for table `shortenedurls`
--

CREATE TABLE `shortenedurls` (
  `id` int(10) UNSIGNED NOT NULL,
  `long_url` varchar(255) NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `creator` char(15) NOT NULL,
  `referrals` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shortenedurls`
--

INSERT INTO `shortenedurls` (`id`, `long_url`, `created`, `creator`, `referrals`) VALUES
(1, 'https://www.youtube.com/watch?v=QN2VXBNujRs&list=PLfdtiltiRHWHrqrITYaVHB_3oAaS6PoIl&index=4&t=0s', 1598846591, '::1', 0),
(2, 'https://github.com/mathiasbynens/php-url-shortener', 1598846728, '::1', 0),
(3, 'https://stackoverflow.com/questions/13825108/undefined-function-mysql-connect', 1598847034, '4', 0),
(4, 'https://github.com/briancray/PHP-URL-Shortener', 1598850366, '4', 0),
(5, 'https://www.bootstrapdash.com/demo/azia/v1.0.0/template/dashboard-one.html', 1598850776, '4', 0),
(6, 'https://docs.github.com/en', 1598850866, '4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `short_urls`
--

CREATE TABLE `short_urls` (
  `id` int(11) NOT NULL,
  `long_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `hits` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) DEFAULT NULL,
  `user_lastname` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text DEFAULT NULL,
  `user_role` varchar(255) DEFAULT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22',
  `token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`, `token`) VALUES
(1, 'rico', '$2y$12$19ZpnAkuhoaAFH7dclUGy.WFIL84PJ8AS216azZtXALy6sqexsScC', '', '', 'rico@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22', ''),
(2, 'suave', '$2y$12$jG3YUwNt3X39OB.YJd311O9akwOw17N4e1NQ79N2xrojC5NG3Na3S', '', '', 'edwin@codingfaculty.com', '', 'admin', '$2y$10$iusesomecrazystrings22', ''),
(4, 'fafafa', '$2y$12$3an0bakcJxKObED1wvo49eRVR1EKjslDz1sXdxsVoFFVUQfYH7moS', NULL, NULL, 'fafa@gmail.com', NULL, 'subscriber', '$2y$10$iusesomecrazystrings22', NULL),
(5, 'dadada', '$2y$12$tttU45MLhrTjO1Nibbre0OJ4gp62O/cMP2G9gWeRI5.Pw6ZMH0D1.', NULL, NULL, 'dada@gmail.com', NULL, 'subscriber', '$2y$10$iusesomecrazystrings22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(44, '', 1447434996),
(45, 's47g806mg6788i92u5ogm6kqi4', 1447441570),
(46, '72clfovqk7vo2p8fiii26tkmr4', 1447461586),
(47, '3gs3q67k5ntpma8tbp2kuvof23', 1447691896),
(48, 'bouqd4fslhn2b1nv20k559col1', 1447796024),
(49, 'tign71tbpar4di74k13f8nr022', 1447867949),
(50, 'ju0s1j019d1qlc1q4tb703rgm3', 1447880891),
(51, 'tp6khbvgo4hdlfueekpmaefcu0', 1447952096),
(52, 'kv0klvlajm8j50d3uqt6go4bm6', 1448174347),
(53, 'qsdv073j4c3lqd6m0rtdpg3615', 1448296313),
(54, 'tmliedhtcgvi8r96l6qplehos4', 1448292854),
(55, 'vrumjbdrjrauucdhg6cta8hhn6', 1448800892),
(56, 'eb1ae8996caf679d187c1037ec9620b1', 1478098539),
(57, '40780dfe8631b764c435168775d44432', 1479443689),
(58, '6d9081fbf0106e9bfef3e77f6fa68f8a', 1481004509),
(59, 'b57212ad3e92b65c05d8ddcd1805a370', 1481382178),
(60, '3cf8d2b7eb470cb635a6102868ae9bd6', 1481397855),
(61, 'c7e0ac8eeeaaf5d3ac4329af9bf4b777', 1481685807),
(62, 'b50a5d9ab4b00848c009d472c63ae2cd', 1485830805),
(63, '3ef98f25d1b1762dd799f33b1a2b2657', 1499988384),
(64, '229f256600c1d05e81bd5036d941069a', 1499993069),
(65, '34aea21ebd8d1ae1b572236a4783cbad', 1500065466);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `shortenedurls`
--
ALTER TABLE `shortenedurls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `long` (`long_url`),
  ADD KEY `referrals` (`referrals`);

--
-- Indexes for table `short_urls`
--
ALTER TABLE `short_urls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `shortenedurls`
--
ALTER TABLE `shortenedurls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `short_urls`
--
ALTER TABLE `short_urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
