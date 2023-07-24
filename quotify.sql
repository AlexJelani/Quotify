-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2023 at 03:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quotify`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Tupac Quotes Album ', 1, 1, 'assets/images/artwork/tupacquotesalbum.jpg'),
(2, 'Steve Jobs Quotes Album ', 2, 2, 'assets/images/artwork/stevejobsquotesalbum.jpg'),
(3, 'Obama Quotes Album ', 3, 3, 'assets/images/artwork/obamaqotesartwork.jpg'),
(4, 'Walt Disney Quotes Album ', 4, 4, 'assets/images/artwork/disneyquotesartwork.jpg'),
(5, 'Bruce Lee Quotes Album ', 5, 5, 'assets/images/artwork/brucelleealbum.jpg'),
(6, 'Confucius Quotes Album ', 6, 6, 'assets/images/artwork/confuciusqutesartwork.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Tupac'),
(2, 'Steve Jobs'),
(3, 'Obama'),
(4, 'Disney'),
(5, 'Bruce Lee'),
(6, 'Confucius');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rap'),
(2, 'IT'),
(3, 'Presidential'),
(4, 'Animation'),
(5, 'Martial Arts'),
(6, 'Philosopher'),
(7, 'Jazz'),
(8, 'Folk'),
(9, 'Country');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Spark the brain change the world', 1, 1, 1, '2:49', 'assets/music/1Tupac/2pac Spark the brain change the world.mp3', 1, 29),
(2, 'Bitter Sadness', 1, 1, 1, '3:27', 'assets/music/1Tupac/Bitter Sadness.mp3', 2, 23),
(3, 'No Matter How Hard', 1, 1, 1, '3:18', 'assets/music/1Tupac/No Matter How Hard.mp3', 3, 22),
(4, 'Struggle of Power', 1, 1, 1, '2:22', 'assets/music/1Tupac/Struggle of Power.mp3', 4, 20),
(5, 'Two Steps Ahead', 1, 1, 1, '3:33', 'assets/music/1Tupac/Two Steps Ahead.mp3', 5, 19),
(6, 'Connect the Dots', 2, 2, 2, '4:04', 'assets/music/2Steve Jobs/Connect the Dots.mp3', 1, 26),
(7, 'Excellence is Expected', 2, 2, 2, '3:07', 'assets/music/2Steve Jobs/Excellence is Expected.mp3', 2, 29),
(8, 'Others Opinions', 2, 2, 2, '3:08', 'assets/music/2Steve Jobs/Others Opinions.mp3', 3, 18),
(9, 'People Change the World', 2, 2, 2, '8:03', 'assets/music/2Steve Jobs/People Change the World.mp3', 4, 33),
(10, 'Stay Hungry, Stay Foolish', 2, 2, 2, '2:58', 'assets/music/2Steve Jobs/Stay Hungry, Stay Foolish.mp3', 5, 25),
(11, 'We are the change we seek', 3, 3, 3, '2:59', 'assets/music/3Obama/We are the change we seek.mp3', 1, 22),
(12, 'Ideals to Defend', 3, 3, 3, '2:03', 'assets/music/3Obama/Ideals to Defend.mp3', 2, 17),
(13, 'The America I Know', 3, 3, 3, '4:21', 'assets/music/3Obama/The America I Know.mp3', 3, 26),
(14, 'What Makes You a Man', 3, 3, 3, '1:45', 'assets/music/3Obama/What Makes You a Man.mp3', 4, 23),
(15, 'You Should Get a Shot', 3, 3, 3, '1:44', 'assets/music/3Obama/You Should Get a Shot.mp3', 5, 16),
(16, 'Fun to Do the Impossible', 4, 4, 4, '2:49', 'assets/music/4Disney/Fun to Do the Impossible.mp3', 1, 21),
(17, 'Getting Back up', 4, 4, 4, '3:50', 'assets/music/4Disney/Getting Back up.mp3', 2, 14),
(18, 'Having a Good Hard Faliure', 4, 4, 4, '2:43', 'assets/music/4Disney/Having a Good Hard Faliure.mp3', 3, 26),
(19, 'Timeless', 4, 4, 4, '3:32', 'assets/music/4Disney/Timeless.mp3', 4, 25),
(20, 'First, Think. Second, Believe', 4, 4, 4, '4:58', 'assets/music/4Disney/First, Think. Second, Believe.mp3', 5, 18),
(21, '10000 kicks', 5, 5, 5, '2:42', 'assets/music/5BruceLee/10000 kicks.mp3', 1, 11),
(22, 'Knowing is Not Enough', 5, 5, 5, '3:36', 'assets/music/5BruceLee/Knowing is Not Enough.mp3', 2, 16),
(23, 'Life\'s Battles', 5, 5, 5, '2:28', 'assets/music/5BruceLee/Lifes Battles.mp3', 3, 20),
(24, 'Showing Off', 5, 5, 5, '4:44', 'assets/music/5BruceLee/Showing Off.mp3', 4, 13),
(25, 'The Successful Warrior', 5, 5, 5, '3:26', 'assets/music/5BruceLee/The Successful Warrior.mp3', 5, 24),
(26, '1,000 Lessons', 6, 6, 6, '2:20', 'assets/music/6Confucius/1,000 Lessons.mp3', 1, 22),
(27, 'Before You Start Revenge', 6, 6, 6, '5:07', 'assets/music/6Confucius/Before You Start Revenge.mp3', 2, 22),
(28, 'The Man Who Asks Questions', 6, 6, 6, '2:03', 'assets/music/6Confucius/The man who asks questions.mp3', 3, 29),
(29, 'If They Spit at You', 6, 6, 6, '4:16', 'assets/music/6Confucius/If They Spit at You.mp3', 4, 18),
(30, 'We Only have One', 6, 6, 6, '2:26', 'assets/music/6Confucius/We Only have One.mp3 ', 5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'testuser', 'Jelani', 'Alexander', 'Sdfs2@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2022-09-02 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'bartsimpson', 'Bart', 'Simpson', 'Bart@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2022-09-03 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
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
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
