-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 09, 2020 at 06:12 PM
-- Server version: 8.0.20
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nsd_traveller`
--

-- --------------------------------------------------------

--
-- Table structure for table `tvlr_posts`
--

CREATE TABLE `tvlr_posts` (
  `id` int NOT NULL,
  `title` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `travel_date` date NOT NULL,
  `photo_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `exif` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT 'exif data in json',
  `location` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `latlng` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tags` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'tag ids in json',
  `post_type` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '5',
  `created_by` int NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tvlr_posts`
--

INSERT INTO `tvlr_posts` (`id`, `title`, `travel_date`, `photo_url`, `exif`, `location`, `latlng`, `description`, `tags`, `post_type`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Narrow Winding Roads', '2019-06-08', 'resources/images/Sooriyakanda-0.jpg', 'exif', 'Sooriyakanda, Sri Lanka', '6.2356,81.1234', 'So I had a rare and valuable opportunity take a front row view on a journey to Jaffna; not in any other day but just after it was opened to the general public in October 2014 just after freshly relaying the track to the Jaffna.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vestibulum varius justo vel aliquet. Sed malesuada, metus in blandit vestibulum, eros sapien ultrices elit, a fringilla odio tortor vel dui. Duis convallis nunc erat. Cras non tincidunt libero, vitae semper velit. Aliquam ut gravida nisl, vel feugiat mauris. Cras nec ex sit amet lorem efficitur molestie in dignissim risus. Curabitur facilisis eget est vel vehicula. Sed lacinia nibh eros, sit amet interdum metus lacinia id. Nam laoreet nec urna ut sagittis.', '[\"nipuna\",\"solo\",\"srilanka\",\"lka\"]', 1, 5, 1, '2020-05-06 18:06:22', '2020-05-06 12:36:22'),
(2, 'Colombo Vibes', '2018-08-01', 'resources/images/cargills.jpg', 'exif', 'Colombo Fort, Sri Lanka', '6.2356,81.1234', ' Jaffna.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vestibulum varius justo vel aliquet. Sed malesuada, metus in blandit vestibulum, eros sapien ultrices elit, a fringilla odio tortor vel dui. Duis convallis nunc erat. Cras non tincidunt libero, vitae semper velit. Aliquam ut gravida nisl, vel feugiat mauris. Cras nec ex sit amet lorem efficitur molestie in dignissim risus. Curabitur facilisis eget est vel vehicula. Sed lacinia nibh eros, sit amet interdum metus lacinia id. Nam laoreet nec urna ut sagittis.', '[\"nipunadodan\",\"solo\",\"srilanka\",\"lka\"]', 1, 5, 1, '2020-05-06 18:06:22', '2020-05-06 12:36:22'),
(3, 'Yuantong Temple', '2018-08-01', 'resources/images/china-1.jpg', 'exif', 'Kunming, China', '6.2356,81.1234', 'China.<br><br>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vestibulum varius justo vel aliquet. Sed malesuada, metus in blandit vestibulum, eros sapien ultrices elit, a fringilla odio tortor vel dui. Duis convallis nunc erat. Cras non tincidunt libero, vitae semper velit. Aliquam ut gravida nisl, vel feugiat mauris. Cras nec ex sit amet lorem efficitur molestie in dignissim risus. Curabitur facilisis eget est vel vehicula. Sed lacinia nibh eros, sit amet interdum metus lacinia id. Nam laoreet nec urna ut sagittis.', '[\"thetraveller\",\"family\",\"china\",\"cn\", \"flysrilankan\"]', 1, 5, 1, '2020-05-06 18:06:22', '2020-05-06 12:36:22'),
(4, 'Kingsbury Sunsets', '2018-06-04', 'resources/images/kingsbury.jpg', 'exif', 'Colombo Fort, Sri Lanka', '6.2356,81.1234', 'Colombo.<br><br>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vestibulum varius justo vel aliquet. Sed malesuada, metus in blandit vestibulum, eros sapien ultrices elit, a fringilla odio tortor vel dui. Duis convallis nunc erat. Cras non tincidunt libero, vitae semper velit. Aliquam ut gravida nisl, vel feugiat mauris. Cras nec ex sit amet lorem efficitur molestie in dignissim risus. Curabitur facilisis eget est vel vehicula. Sed lacinia nibh eros, sit amet interdum metus lacinia id. Nam laoreet nec urna ut sagittis.', '[\"thetraveller\",\"solo\",\"colombo\",\"srilanka\",\"lka\"]', 1, 5, 1, '2020-05-06 18:06:22', '2020-05-06 12:36:22'),
(5, 'Kothmale Valley', '2017-01-14', 'https://i0.wp.com/blog.nipunadodan.com/thetraveller/wp-content/uploads/sites/2/2017/01/DSC_1646-Edit-copy.jpg?fit=508%2C795', 'exif', 'Ramboda, Sri Lanka', '6.2356,81.1234', 'True Sri Lanka – Kotmale Valley is a must visit place when you are in Sri Lanka. Photo from the last leg of a wonderful journey across Sri Lanka’s upcountry. You can see over the valleys down the precious forest covered mountains the Kotmale Reservoir built for irrigation and hydro-electricity generation purposes. And a temple with a giant stupa built in remembrance of the temples sank over the reservoir.', '[\"thetraveller\",\"family\",\"kothmale\",\"ramboda\",\"nuwaraeliya\",\"srilanka\",\"lka\"]', 1, 5, 1, '2020-05-08 00:00:00', '2020-05-07 18:30:00'),
(6, 'Laxapana', '2019-10-20', 'resources/images/laxapana.jpg', 'exif', 'Laxapana, Sri Lanka', '6.2356,81.1234', 'One days solo trip to Laxapana Valley, one of the most scenic valleys in Sri Lanka. Tropical mountainous forests, high ridged valleys, lakes, tea plantations make a perfect picturesque view for anyone.\r\n<br><br>\r\nMaussakele, Castlereagh reservoirs make a marvellous environment for a lake district on the western banks of the central hills,', '[\"thetraveller\",\"family\",\"laxapana\",\"masussakele\",\"castelereagh\",\"hatton\",\"srilanka\",\"lka\"]', 1, 5, 1, '2020-05-08 00:00:00', '2020-05-07 18:30:00'),
(7, 'Delft Evenings', '2016-10-20', 'https://i2.wp.com/blog.nipunadodan.com/thetraveller/wp-content/uploads/sites/2/2016/02/DSC_8970.jpg?fit=508%2C337', 'exif', 'Delft, Jaffna, Sri Lanka', '6.2356,81.1234', '', '[\"thetraveller\",\"friends\",\"jaffna\",\"delft\",\"north\",\"dryzone\",\"srilanka\",\"lka\"]', 1, 5, 1, '2020-05-08 00:00:00', '2020-05-07 18:30:00'),
(8, 'Snowy Manali', '2016-01-20', 'https://i0.wp.com/blog.nipunadodan.com/thetraveller/wp-content/uploads/sites/2/2016/01/DSC_7452.jpg?fit=508%2C767', 'exif', 'Sonamarg, Himachal Pradesh, India', '6.2356,81.1234', '', '[\"thetraveller\",\"family\",\"manali\",\"sonamarg\",\"solangvalley\",\"himachalpradesh\",\"india\",\"in\"]', 1, 5, 1, '2020-05-08 00:00:00', '2020-05-07 18:30:00'),
(9, 'Spell of the Dawn', '2015-01-20', 'https://i2.wp.com/blog.nipunadodan.com/thetraveller/wp-content/uploads/sites/2/2015/08/DSC_7613-Edit-2.jpg?fit=508%2C767', 'exif', 'Idalgashinna, Sri Lanka', '6.2356,81.1234', '', '[\"thetraveller\",\"friends\",\"idalgashinna\",\"dusk\",\"centralhills\",\"hillcountry\",\"srilanka\",\"lka\"]', 1, 5, 1, '2020-05-08 00:00:00', '2020-05-07 18:30:00'),
(10, 'Lady Victoria', '2020-01-20', 'https://i1.wp.com/blog.nipunadodan.com/thetraveller/wp-content/uploads/sites/2/2015/08/DSC_8048-copy2.jpg?fit=508%2C337', 'exif', 'Adhikarigama, Sri Lanka', '6.2356,81.1234', '', '[\"thetraveller\",\"solo\",\"victoriadam\",\"hydropower\",\"rajamawatha\",\"hillcountry\",\"srilanka\",\"lka\"]', 1, 5, 1, '2020-05-08 00:00:00', '2020-05-07 18:30:00'),
(11, 'Frosty Forest', '2020-01-20', 'https://i1.wp.com/blog.nipunadodan.com/thetraveller/wp-content/uploads/sites/2/2015/06/DSC_9836.jpg?resize=600%2C398', 'exif', 'Kunming, Yunnan, China', '6.2356,81.1234', '', '[\"thetraveller\",\"family\",\"kunming\",\"longmengate\",\"frosty\",\"winter\",\"china\",\"cn\"]', 1, 5, 1, '2020-05-08 00:00:00', '2020-05-07 18:30:00'),
(12, 'A Walk Along the Lines', '2020-01-20', 'https://i0.wp.com/blog.nipunadodan.com/thetraveller/wp-content/uploads/sites/2/2015/06/DSC_2803-copy.jpg?w=944', 'exif', 'Botale, Sri Lanka', '6.2356,81.1234', '', '[\"thetraveller\",\"friends\",\"wilwatte\",\"botale\",\"twintunnels\",\"tunnelone\",\"srilanka\",\"lka\"]', 1, 5, 1, '2020-05-08 00:00:00', '2020-05-07 18:30:00'),
(13, 'Reminiscence of Olden Side', '2020-01-20', 'https://i0.wp.com/blog.nipunadodan.com/thetraveller/wp-content/uploads/sites/2/2015/06/DSC_0463.jpg?resize=600%2C398', 'exif', 'Botale, Sri Lanka', '6.2356,81.1234', 'We had a across city bus ride to see Daguan Park which is a great place to spend a day at. While commuting hence and forth I was stumbled upon this olden building hidden in all the modernisation which tells quite a tale from the past of the modern city of Kunming.', '[\"thetraveller\",\"family\",\"kunming\",\"china\",\"cn\"]', 1, 5, 1, '2020-05-08 00:00:00', '2020-05-07 18:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tvlr_posts`
--
ALTER TABLE `tvlr_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tvlr_posts`
--
ALTER TABLE `tvlr_posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
