-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2018 at 04:59 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feed`
--

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE `story` (
  `story_id` int(3) NOT NULL,
  `story_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `story_date` date NOT NULL,
  `story_content` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `story_cover` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`story_id`, `story_title`, `story_date`, `story_content`, `story_cover`) VALUES
(3, 'First Story', '2018-10-12', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id quod eos asperiores ducimus? Quo explicabo pariatur beatae nihil officiis voluptatem, minima aspernatur doloremque officia fuga totam, dolorum, earum eveniet quam.\r\nDolores, culpa? Odit quia laborum architecto quae deleniti perferendis eum voluptatem quasi possimus unde, doloribus deserunt omnis non facilis numquam, aspernatur vero nulla voluptatum ab labore recusandae harum provident corrupti?\r\nUnde, ullam! Nesciunt consequatur minima, pariatur consectetur accusantium perferendis qui assumenda illo necessitatibus perspiciatis iste numquam, ex est hic. Adipisci architecto fuga excepturi eos ipsam nam ex voluptate reprehenderit nisi!\r\nQuis vero eum fuga ullam, architecto impedit omnis, fugiat at harum voluptatibus rerum quod nulla ipsam atque, dolorum natus? Quam, animi quaerat? Rem iure enim eum rerum animi placeat aperiam?\r\nTempore harum neque voluptate assumenda unde maiores accusamus molestiae, reiciendis, debitis alias temporibus, deserunt vero fugiat! Error soluta natus vero ipsa? Perferendis perspiciatis hic dignissimos, quas modi cupiditate nisi ut.', 'cover.jpg'),
(4, 'Second Story', '2018-10-10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id quod eos asperiores ducimus? Quo explicabo pariatur beatae nihil officiis voluptatem, minima aspernatur doloremque officia fuga totam, dolorum, earum eveniet quam.\r\nDolores, culpa? Odit quia laborum architecto quae deleniti perferendis eum voluptatem quasi possimus unde, doloribus deserunt omnis non facilis numquam, aspernatur vero nulla voluptatum ab labore recusandae harum provident corrupti?\r\nUnde, ullam! Nesciunt consequatur minima, pariatur consectetur accusantium perferendis qui assumenda illo necessitatibus perspiciatis iste numquam, ex est hic. Adipisci architecto fuga excepturi eos ipsam nam ex voluptate reprehenderit nisi!\r\nQuis vero eum fuga ullam, architecto impedit omnis, fugiat at harum voluptatibus rerum quod nulla ipsam atque, dolorum natus? Quam, animi quaerat? Rem iure enim eum rerum animi placeat aperiam?\r\nTempore harum neque voluptate assumenda unde maiores accusamus molestiae, reiciendis, debitis alias temporibus, deserunt vero fugiat! Error soluta natus vero ipsa? Perferendis perspiciatis hic dignissimos, quas modi cupiditate nisi ut.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Esse vitae recusandae tempore repudiandae quidem amet voluptatem odio fuga praesentium aut aliquam, culpa totam. Consectetur repellendus dolore deleniti eos reprehenderit corrupti!', 'cover.jpg'),
(5, 'Third Story', '2018-11-03', 'Super stuff', 'cover.jpg'),
(8, 'Third Story', '2018-11-15', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque laboriosam labore quo id libero nisi quos nihil hic modi incidunt, voluptate quibusdam suscipit voluptatum iste alias pariatur porro nostrum dolorem.', 'cover.jpg'),
(9, 'Forth Story', '2018-11-24', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem non amet eos qui nesciunt sint architecto illo doloribus. Corporis hic aut accusamus pariatur ducimus est ratione, placeat laudantium tempore excepturi.Repellat doloremque natus quibusdam mollitia sapiente assumenda dignissimos sequi, sint, rerum eius placeat. Totam tenetur sint repudiandae rem mollitia animi id corrupti accusantium, reiciendis sit unde molestias laborum nostrum ad?', 'cover.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`story_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `story_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
