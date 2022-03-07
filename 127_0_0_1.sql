-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2022 at 03:51 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--
CREATE DATABASE IF NOT EXISTS `crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crud`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `description`) VALUES
(1, 'asd', '$2y$10$jC4.OzK3M8eYj/4tW4qXzuN0YuBGcCDxMgrgHI6Qw59Upv3jcawfi', 'Hey bozo!'),
(2, 'bnm', '$2y$10$v2sDhLrc8CMEWzIfrwhvpu3QDRIut3yElUrhkb2z9cpFPxdmAeGNS', 'Hey bozo!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `innloggingsoppgaverdb`
--
CREATE DATABASE IF NOT EXISTS `innloggingsoppgaverdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `innloggingsoppgaverdb`;

-- --------------------------------------------------------

--
-- Table structure for table `innlogging`
--

CREATE TABLE `innlogging` (
  `BrukerID` int(11) NOT NULL,
  `Brukernavn` varchar(255) DEFAULT NULL,
  `Passord` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `innlogging`
--

INSERT INTO `innlogging` (`BrukerID`, `Brukernavn`, `Passord`) VALUES
(1, 'Srimmy', 'Manum'),
(2, 'asd', 'deez nuts');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `innlogging`
--
ALTER TABLE `innlogging`
  ADD PRIMARY KEY (`BrukerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `innlogging`
--
ALTER TABLE `innlogging`
  MODIFY `BrukerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"crud\",\"table\":\"users\"},{\"db\":\"users\",\"table\":\"kommentar\"},{\"db\":\"users\",\"table\":\"highscore\"},{\"db\":\"users\",\"table\":\"following\"},{\"db\":\"users\",\"table\":\"bilder\"},{\"db\":\"users\",\"table\":\"liktebilder\"},{\"db\":\"users\",\"table\":\"users\"},{\"db\":\"users\",\"table\":\"followingbilder\"},{\"db\":\"users\",\"table\":\"meldinger\"},{\"db\":\"users\",\"table\":\"USERS\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'srimondb', 'users', '{\"sorted_col\":\"`users`.`user_name` ASC\"}', '2021-09-29 09:03:16'),
('root', 'users', 'bilder', '{\"sorted_col\":\"`bilder`.`dato` DESC\"}', '2021-12-10 20:59:34'),
('root', 'users', 'users', '{\"sorted_col\":\"`users`.`username` ASC\"}', '2021-12-01 08:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-03-07 14:51:37', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `srimondb`
--
CREATE DATABASE IF NOT EXISTS `srimondb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `srimondb`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `user_name`, `password`, `date`) VALUES
(1, 1089063324503437336, 'manum01', '123', '2021-09-28 09:11:27'),
(2, 914757429769, 'srimmy', '123', '2021-09-28 09:12:04'),
(3, 9223372036854775807, 'asd', 'asd', '2021-11-02 10:40:18'),
(4, 21764904223183, 'eirik', '123', '2021-09-28 09:52:57'),
(7, 833990564972460, 'qwe', 'asd', '2021-11-02 08:48:14'),
(10, 7245745, 'ahahahahah', 'hahahaha', '2021-11-02 09:47:32'),
(12, 9223372036854775807, 'sriddy', 'srimon123', '2021-11-02 09:58:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `date` (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `users`
--
CREATE DATABASE IF NOT EXISTS `users` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `users`;

-- --------------------------------------------------------

--
-- Table structure for table `bilder`
--

CREATE TABLE `bilder` (
  `id` int(11) NOT NULL,
  `Path` varchar(255) DEFAULT NULL,
  `brukernavn` varchar(255) DEFAULT NULL,
  `dato` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bilder`
--

INSERT INTO `bilder` (`id`, `Path`, `brukernavn`, `dato`) VALUES
(2, '../delteBilder/61a73573a16be2.99931757.png', 'srimmy1337', '2021-12-01 08:42:27'),
(3, '../delteBilder/61a748dcde6682.11947237.png', 'srimmy1337', '2021-12-01 10:05:16'),
(4, '../delteBilder/61a76418ae5262.67615612.png', 'srimmy1337', '2021-12-01 12:01:28'),
(5, '../delteBilder/61a76430252c62.63702257.png', 'srimmy1337', '2021-12-01 12:01:52'),
(6, '../delteBilder/61a765506bfad9.21457357.png', 'srimmy1337', '2021-12-01 12:06:40'),
(7, '../delteBilder/61a765e8502ce4.42870200.png', 'srimmy1337', '2021-12-01 12:09:12'),
(8, '../delteBilder/61a76623716d00.35186579.png', 'srimmy1337', '2021-12-01 12:10:11'),
(9, '../delteBilder/61a77013f38d12.51685797.png', 'manum01', '2021-12-01 12:52:35'),
(10, '../delteBilder/61a771d59d8141.33324905.png', 'manum01', '2021-12-01 13:00:05'),
(11, '../delteBilder/61adc7c540a706.79816951.png', 'srimmy1337', '2021-12-06 08:20:21'),
(12, '../delteBilder/61adc8e5949493.02501406.png', 'srimmy1337', '2021-12-06 08:25:09'),
(13, '../delteBilder/61adc909960f35.58562584.png', 'srimmy1337', '2021-12-06 08:25:45'),
(15, '../delteBilder/61b282c6da2645.80950983.png', 'veryverycap', '2021-12-09 22:27:18'),
(16, '../delteBilder/61b28750397cc3.78660165.png', 'asdf', '2021-12-09 22:46:40'),
(17, '../delteBilder/61b399dd00cf74.42361006.png', 'veryverycap', '2021-12-10 18:18:05'),
(18, '../delteBilder/61b39a6069d0a0.93451213.png', 'veryverycap', '2021-12-10 18:20:16'),
(19, '../delteBilder/61bbb5ea453928.97468745.svg', 'veryverycap', '2021-12-16 21:55:54'),
(20, '../delteBilder/61bc42989ff3f5.10098813.png', 'marie223', '2021-12-17 07:56:08'),
(21, '../delteBilder/6221eec5933861.91010378.png', 'tigger', '2022-03-04 10:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `following`
--

CREATE TABLE `following` (
  `id` int(11) NOT NULL,
  `following` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `following`
--

INSERT INTO `following` (`id`, `following`, `username`) VALUES
(22, 'veryverycap', 'titas'),
(23, 'veryverycap', 'titas'),
(24, 'veryverycap', 'titas'),
(25, 'veryverycap', 'titas'),
(26, 'veryverycap', 'titas'),
(27, 'veryverycap', 'asdf'),
(28, 'veryverycap', 'Srimmy'),
(30, 'marie', 'Srimmy'),
(31, 'marie', 'asdf'),
(32, 'tigger', 'srimmy1337');

-- --------------------------------------------------------

--
-- Stand-in structure for view `followingbilder`
-- (See below for the actual view)
--
CREATE TABLE `followingbilder` (
`following` varchar(255)
,`username` varchar(255)
,`Path` varchar(255)
,`brukernavn` varchar(255)
,`dato` timestamp
,`id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `highscore`
--

CREATE TABLE `highscore` (
  `id` int(11) NOT NULL,
  `usersID` int(11) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kommentar`
--

CREATE TABLE `kommentar` (
  `id` int(11) NOT NULL,
  `kommentar` varchar(255) DEFAULT NULL,
  `bildeId` int(11) DEFAULT NULL,
  `brukernavn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kommentar`
--

INSERT INTO `kommentar` (`id`, `kommentar`, `bildeId`, `brukernavn`) VALUES
(72, 'hei du er kul', 16, 'asd'),
(73, 'asdasd', 16, 'asd'),
(74, 'asdsad', 16, 'asd'),
(75, 'fyf du er clena', 12, 'asd'),
(76, 'deez', 16, 'asd'),
(77, 'asd', 16, 'asd');

-- --------------------------------------------------------

--
-- Stand-in structure for view `kommentarpåbildet`
-- (See below for the actual view)
--
CREATE TABLE `kommentarpåbildet` (
`kommentar` varchar(255)
,`bildeId` int(11)
,`brukernavn` varchar(255)
,`id` int(11)
,`username` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `liktebilder`
--

CREATE TABLE `liktebilder` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `likedPicId` int(11) DEFAULT NULL,
  `dato` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `liktebilder`
--

INSERT INTO `liktebilder` (`id`, `username`, `likedPicId`, `dato`) VALUES
(2, 'srimmy', 18, '2021-12-15 15:45:22'),
(14, 'marie', 16, '2021-12-17 08:57:06'),
(15, 'asd', 5, '2021-12-17 09:08:42'),
(27, 'asd', 6, '2022-02-09 11:19:26'),
(46, 'trigger', 13, '2022-03-04 11:45:06'),
(47, 'trigger', 12, '2022-03-04 11:45:09');

-- --------------------------------------------------------

--
-- Stand-in structure for view `liktebilderview`
-- (See below for the actual view)
--
CREATE TABLE `liktebilderview` (
`id` int(11)
,`liker` varchar(255)
,`brukernavn` varchar(255)
,`Path` varchar(255)
,`date` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `meldinger`
--

CREATE TABLE `meldinger` (
  `ID` int(11) NOT NULL,
  `fra` varchar(255) DEFAULT NULL,
  `til` varchar(255) DEFAULT NULL,
  `melding` varchar(255) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `highscore` int(11) DEFAULT NULL,
  `profilePicPath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `highscore`, `profilePicPath`) VALUES
(1, 'srmmy1337', '$2y$10$AjBHdLonl5OggvVKIbTdAebrcdOHvbXZMoCs4xBC5FFHsAhCan9.i', '2021-11-03 09:20:02', 39750, '../profilbilder/61b1bc3f85ad38.36016963.png'),
(2, 'manum01', '$2y$10$B/849KoUmeoALkIK4rkCfONpSVgNJZJ7JKpaSA5hgste1uUzrlb8O', '2021-11-05 09:39:16', 78950, '../profilbilder/61a5faa15d7c15.30102361.png'),
(3, 'tias', '$2y$10$D9ZC955qXQg0tHr6K8l2AuO5h3Ux4YmTRBki.vwY5XnmfieNfvumC', '2021-12-07 13:21:04', 1, '../profilbilder/standard.svg'),
(5, 'titas2', 'test', '2021-12-08 09:54:14', 84350, '../profilbilder/61b08e396ddad0.00592595.jpg'),
(6, 'capper', '$2y$10$7RThBSZyHUCekUdgKyMH3.EoccMztlnV0VcLSaPJsRjAH9j5wkXEK', '2021-12-08 13:33:24', 3100, '../profilbilder/61b23ecc348098.67711806.png'),
(7, 'baddy', '$2y$10$.0x3ql1o8D17A3OAZ9qw0u.jnG4WQE6M5sOFweImNLe45selXIGoy', '2021-12-09 19:02:34', NULL, '../profilbilder/standard.svg'),
(8, 'baldy123', '$2y$10$uTE.H3J7HwZnbvLvlaLloOnw5TmCDD0yoE4a0zylQDZxTSaUu6.O6', '2021-12-09 19:44:23', NULL, '../profilbilder/61b251f631a8d8.20045275.png'),
(9, 'srimmy6', '$2y$10$oz93g1j2x/V7R4s1T92wj.yq2sCb0D7EfqlehLV7Ysn.XttX/aqGa', '2021-12-09 21:51:46', NULL, '../profilbilder/61b278771e9eb5.85788051.png'),
(10, 'asd', '$2y$10$4FGeIiRdhWJYEaOqwXJtDugOFSwcLT.VoU0kbmEQSKEaSY.VJh8PS', '2021-12-09 23:19:28', 44400, '../profilbilder/620625143ae655.11853187.png'),
(11, 'asdf', '$2y$10$veuWkewOMM4K371qSGQfWuyRndFXfatWoha5TX45r6LuFzSWJPhrW', '2021-12-09 23:37:42', NULL, '../profilbilder/standard.svg'),
(12, 'marie', '$2y$10$LYcD4f79e77gK.DspLpBlOljwFMOLIkO2Lg7.ZRe4ziWWX9o3HMfe', '2021-12-17 08:52:26', 12600, '../profilbilder/61bc425f841e15.57863148.png'),
(13, 'test', '$2y$10$j10MmS/W1Hv8RS3.as2Qq.GQhpR5vq.zZQvRBiq0AAooCAQKLuSGG', '2022-01-21 10:19:49', NULL, '../profilbilder/standard.svg'),
(14, 'tester123', '$2y$10$UpC2O5KEgVTjT9Agr.rGe.tvnbO6dNnDxUfVC01J1jeH93UHmuYRa', '2022-01-21 11:15:15', NULL, '../profilbilder/standard.svg'),
(15, 'biggy', '$2y$10$6vuqyJxW0UWYGhnamvwfr.49D2JvsMFLJcVAinGx1RnoHWKGChhVi', '2022-03-02 11:28:59', NULL, '../profilbilder/standard.svg'),
(16, 'trigger', '$2y$10$RsNA410bPOyYKJ2iOEUTWeWjKqKLjmDkDl2.rsT35cpp5ZrvdS3Pa', '2022-03-04 10:32:58', NULL, '../profilbilder/6221ee05227826.51234342.svg');

-- --------------------------------------------------------

--
-- Structure for view `followingbilder`
--
DROP TABLE IF EXISTS `followingbilder`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `followingbilder`  AS SELECT `following`.`following` AS `following`, `following`.`username` AS `username`, `bilder`.`Path` AS `Path`, `bilder`.`brukernavn` AS `brukernavn`, `bilder`.`dato` AS `dato`, `bilder`.`id` AS `id` FROM (`following` join `bilder` on(`following`.`username` = `bilder`.`brukernavn`)) ORDER BY `bilder`.`dato` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `kommentarpåbildet`
--
DROP TABLE IF EXISTS `kommentarpåbildet`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kommentarpåbildet`  AS SELECT `kommentar`.`kommentar` AS `kommentar`, `kommentar`.`bildeId` AS `bildeId`, `kommentar`.`brukernavn` AS `brukernavn`, `bilder`.`id` AS `id`, `bilder`.`brukernavn` AS `username` FROM (`kommentar` join `bilder` on(`kommentar`.`bildeId` = `bilder`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `liktebilderview`
--
DROP TABLE IF EXISTS `liktebilderview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `liktebilderview`  AS SELECT `bilder`.`id` AS `id`, `liktebilder`.`username` AS `liker`, `bilder`.`brukernavn` AS `brukernavn`, `bilder`.`Path` AS `Path`, `liktebilder`.`dato` AS `date` FROM (`liktebilder` join `bilder` on(`liktebilder`.`likedPicId` = `bilder`.`id`)) WHERE `liktebilder`.`likedPicId` = `bilder`.`id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bilder`
--
ALTER TABLE `bilder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brukernavn` (`brukernavn`);

--
-- Indexes for table `following`
--
ALTER TABLE `following`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `highscore`
--
ALTER TABLE `highscore`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersID` (`usersID`);

--
-- Indexes for table `kommentar`
--
ALTER TABLE `kommentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liktebilder`
--
ALTER TABLE `liktebilder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meldinger`
--
ALTER TABLE `meldinger`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bilder`
--
ALTER TABLE `bilder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `following`
--
ALTER TABLE `following`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `highscore`
--
ALTER TABLE `highscore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kommentar`
--
ALTER TABLE `kommentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `liktebilder`
--
ALTER TABLE `liktebilder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `meldinger`
--
ALTER TABLE `meldinger`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `highscore`
--
ALTER TABLE `highscore`
  ADD CONSTRAINT `highscore_ibfk_1` FOREIGN KEY (`usersID`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
