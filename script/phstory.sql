-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2017-03-10 03:35:44
-- 伺服器版本: 10.1.19-MariaDB
-- PHP 版本： 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `phstory`
--

-- --------------------------------------------------------

--
-- 資料表結構 `file`
--

CREATE TABLE `file` (
  `p_id` int(11) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `file_format` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `guest_contact_method`
--

CREATE TABLE `guest_contact_method` (
  `g_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `post_platform`
--

CREATE TABLE `post_platform` (
  `po_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `contact_name` varchar(50) NOT NULL,
  `unit` varchar(60) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `article_type` int(1) NOT NULL,
  `publish_time` date NOT NULL,
  `publish` varchar(60) NOT NULL,
  `Introduction` varchar(500) NOT NULL,
  `keywrod` varchar(100) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `reference_source` varchar(50) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `post_platform`
--

INSERT INTO `post_platform` (`po_id`, `title`, `author`, `contact_name`, `unit`, `job_title`, `article_type`, `publish_time`, `publish`, `Introduction`, `keywrod`, `content`, `reference_source`, `p_id`) VALUES
(1, '測試', 'root', 'root', 'NPU', 'std', 1, '2017-03-01', '123', '測試', '測試', '', '無', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `profile`
--

CREATE TABLE `profile` (
  `p_sex` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_age` int(100) NOT NULL,
  `p_id` int(11) NOT NULL,
  `username` varchar(45) CHARACTER SET utf8 NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `profile`
--

INSERT INTO `profile` (`p_sex`, `p_age`, `p_id`, `username`, `email`, `phone`) VALUES
('M', 44, 1, 'root', '', 0),
('F', 54, 2, 'root', '', 0),
('F', 542, 3, 'alex', '', 0),
('M', 45, 4, 'maokao', '', 0),
('F', 45, 5, 'amelia', '', 0),
('M', 21, 6, 'awalker0215', '', 0),
('M', 21, 7, 'awalker0215', '', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `username` varchar(45) CHARACTER SET utf8 NOT NULL,
  `password` varchar(45) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `users`
--

INSERT INTO `users` (`username`, `password`, `email`, `enabled`) VALUES
('alex', 'e10adc3949ba59abbe56e057f20f883e', 'alex@test.org.tw', 1),
('amelia', 'e10adc3949ba59abbe56e057f20f883e', 'adf@123.123.123', 1),
('awalker0215', '63a9f0ea7bb98050796b649e85481845', 'test@test.test', 1),
('maokao', 'e10adc3949ba59abbe56e057f20f883e', 'asdfs@123.123.213', 1),
('ranma', 'e10adc3949ba59abbe56e057f20f883e', 'maokao25@gmail.com', 1),
('root', 'e10adc3949ba59abbe56e057f20f883e', 'mkyong@test.org.tw', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL,
  `username` varchar(45) CHARACTER SET utf8 NOT NULL,
  `role` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `user_roles`
--

INSERT INTO `user_roles` (`user_role_id`, `username`, `role`) VALUES
(5, 'amelia', 'ROLE_ADMIN'),
(4, 'maokao', 'ROLE_ADMIN'),
(2, 'root', 'ROLE_ADMIN'),
(3, 'alex', 'ROLE_USER'),
(6, 'awalker0215', 'ROLE_USER'),
(1, 'root', 'ROLE_USER');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`p_id`);

--
-- 資料表索引 `guest_contact_method`
--
ALTER TABLE `guest_contact_method`
  ADD PRIMARY KEY (`g_id`);

--
-- 資料表索引 `post_platform`
--
ALTER TABLE `post_platform`
  ADD PRIMARY KEY (`po_id`),
  ADD KEY `p_id` (`po_id`),
  ADD KEY `p_id_2` (`p_id`);

--
-- 資料表索引 `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `username` (`username`),
  ADD KEY `c_id` (`p_id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`),
  ADD UNIQUE KEY `uni_username_role` (`role`,`username`),
  ADD KEY `fk_username_idx` (`username`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `guest_contact_method`
--
ALTER TABLE `guest_contact_method`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `post_platform`
--
ALTER TABLE `post_platform`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `file_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `profile` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `post_platform`
--
ALTER TABLE `post_platform`
  ADD CONSTRAINT `post_platform_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `profile` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
