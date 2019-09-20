-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2019 at 10:48 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Age` int(3) NOT NULL,
  `Blood_Group` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`First_Name`, `Last_Name`, `Age`, `Blood_Group`) VALUES
('Olivia', 'Eva', 12, 'A'),
('Saman', 'Aslam', 15, 'B'),
('Sophia', 'Rose', 55, 'A'),
('Emili', 'Ana', 63, 'B'),
('Betty', 'Romy', 85, 'AB'),
('Elena', 'Jade', 24, 'O'),
('Ella', 'Chloe', 36, 'O'),
('Lilly ', 'Zoe', 29, 'AB'),
('Eshal', 'Javed', 86, 'A'),
('Ali', 'Moin', 35, 'A'),
('Akbar', 'Sadioq', 75, 'B'),
('Bilal', 'Khattak', 41, 'AB'),
('Archie', 'Owen', 69, 'O'),
('Jones', 'Mason', 56, 'O'),
('stephan', 'Logan', 21, 'A'),
('Obama', 'Wason', 26, 'A'),
('Oprah', 'Winfrey', 29, 'A'),
('Bill', 'Gates', 27, 'B'),
('Steve', 'Hawks', 55, 'A'),
('Urwa', 'Khan', 25, 'O'),
('Umair', 'Akhtar', 27, 'AB'),
('Hamza', 'Ijaz', 69, 'O');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
