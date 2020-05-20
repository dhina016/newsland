-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2020 at 07:46 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flask`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'dineshdk18590@gmail.com', '$5$rounds=535000$e1s1mu4ribvqghEu$Y/aqSPZ0j2f.yyplfzntxtWv.FjJU7LA1fWmAJQLyNC');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'General'),
(2, 'Sports'),
(3, 'Current topics'),
(4, 'Trending'),
(5, 'Politics'),
(6, 'Economics'),
(7, 'Crime'),
(8, 'Weather');

-- --------------------------------------------------------

--
-- Table structure for table `example`
--

CREATE TABLE `example` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `u_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `img` varchar(200) NOT NULL,
  `pin` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `c_id`, `title`, `description`, `u_id`, `name`, `date`, `img`, `pin`) VALUES
(1, 2, 'East Bengal players, officials asked to vacate flats amid lockdown', 'Some East Bengal players, including foreign recruits, and physical trainer Carlos Nodar, who are still stuck here amid the coronavirus-forced national lockdown, have been asked to \"vacate their flats\" provided by sponsors Quess Corp.\r\n\r\nMost of East Bengal\'s foreign players have left home but a few are still here along with the Spaniard Nodar who had preferred to stay back.\r\n\r\n\"This is the worst thing to happen. Where will we go now especially when there\'s nationwide lockdown in force?\" a player told PTI, confirming the development.\r\n\r\n\"There is no way we can vacate at this point of time but the management is just ignoring our calls. Let\'s wait and watch.\"\r\n\r\nThe Bangalore-based Quess group, which is exiting the club on May 31, had last month activated the Force Majeure clause, citing COVID-19 pandemic, to terminate all the contracts with effect from May 1. The players had approached the Football Players\' Association of India.', 0, 'admin', '2020-05-18', 'west.jpg', 0),
(3, 3, 'Coronavirus outbreak: Struggle of a doctor', 'Many brave hearts are on the frontline in the battle with Coronavirus. One such inspiring story is of a young doctor Dr. Anjuta who is working at Jawaharlal Nehru Bal Chikitsalaya, Delhi. Hailing from Manipur, Dr. Anjuta is living away from her ailing parents in Delhi. From cleaning utensils, clothes to cooking, apart from fulfilling her duty at the hospital by treating young patients, she does all her chores at home on her own. Watch the video to know her struggle in the COVID-19 fight.', 2, 'dinesh', '2020-05-19', 'happydoctor.jpg', 1),
(4, 2, 'Coronavirus Lockdown: IPL 2020 to be scheduled for September?', 'Cricket occupies a special place in India’s heart. For Indians, it as much as a religion. With still no concrete solutions for the Coronavirus pandemic and with lockdown 3.0 continuing, sportspersons are missing their requisite training and have them cooped up their homes. The economic structure of the cricket industry is likely to change and lower-ranked nations will face a crunch in funds, as said by experts. Due to this COVID-19 pandemic, even the Indian Premier League (IPL) has been postponed and is likely to be held in September this year. And this brings us to the point that COVID-19 is likely to change the entire sports industry in ways which we couldn’t even think until now.', 1, 'sasi', '2020-05-15', 'maxresdefault.jpg', 1),
(5, 7, 'Maharashtra: Three Held For Attacking Cop On Lockdown Duty', 'Three men were arrested for allegedly attacking a policeman, who was on lockdown duty, at Ambejogai town of Maharashtra\'s Beed district, an official said on Friday. Govind Yelmate, who is attached to Amjogai police station, was beaten up by three men on Wednesday night, inspector Siddharth Gade said. Yelmate was investigating an offence at Yashwantnagar, where he spotted Kishor Lomte, Vaibhav Akhate and Tushar Shingare chatting at the street corner and questioned them, the official said.', 0, 'admin', '2020-05-19', 'cop.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'dinesh', 'dinesh@gmail.com', '$5$rounds=535000$e1s1mu4ribvqghEu$Y/aqSPZ0j2f.yyplfzntxtWv.FjJU7LA1fWmAJQLyNC'),
(2, 'sasiphanireddy', 'sasiphanireddy@gmail.com', '$5$rounds=535000$t3.WLZdZumvq.YAf$4bgUQI53bqrJlkAQZJJgHb2p0GXY3C3vxppC8D/1eT5'),
(3, 'bdacgroup', 'dinesh@gmail.com', '$5$rounds=535000$LQMsOqPw2MFBRh3I$7xZZenZV95MIbfuYTOFEGTx7a7U3tuuRSFUBLb3Th3B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
