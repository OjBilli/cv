-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2023 at 10:55 AM
-- Server version: 10.5.19-MariaDB-cll-lve-log
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assensjw_assets`
--

-- --------------------------------------------------------

--
-- Table structure for table `shipment`
--

CREATE TABLE `shipment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product` varchar(225) NOT NULL,
  `track_id` varchar(225) NOT NULL,
  `location` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipment`
--

INSERT INTO `shipment` (`id`, `user_id`, `product`, `track_id`, `location`, `status`, `created_at`) VALUES
(1, 1, '', '', 'Nil', 'Nil', '2020-12-16 11:18:51'),
(2, 1, '', '', 'london', 'inprogress', '2020-12-16 11:19:37'),
(3, 1, 'meat', '', 'usa', 'inprogress', '2020-12-16 11:31:05'),
(4, 1, 'meat', '', 'nigeria', 'processing', '2020-12-16 11:48:43'),
(5, 1, 'meat', '', 'ghana', 'home', '2020-12-16 12:30:03'),
(6, 1, 'meat', '1608122155', 'france', 'here', '2020-12-16 12:35:55'),
(7, 1, 'rice', '1608124012', 'yenagoa, nigeria', 'intransit', '2020-12-16 13:06:52'),
(8, 1, '', '1608124139', 'f', 'f', '2020-12-16 13:08:59'),
(9, 1, '', '1608125198', 'lon', 'come', '2020-12-16 13:26:38'),
(10, 1, 'fish', '1608125522', 'warri', 'inprogress', '2020-12-16 13:32:02'),
(11, 1, 'fish', '1608125589', 'warri', 'coming', '2020-12-16 13:33:09'),
(12, 1, 'GOLD', '1608154642', 'ghana,africa', 'custom', '2020-12-16 21:37:22'),
(13, 5, 'silver', '1608155001', 'warri', 'incoming', '2020-12-16 21:43:21'),
(14, 6, 'icefish', '1608218973', 'here', 'inprogress', '2020-12-17 15:29:33'),
(15, 6, 'Box', '1618583245', 'syria', 'consignment', '2021-04-16 14:27:25'),
(16, 6, 'Box', '1618592978', 'Uzbekistan, Tashkent', 'Your Consignment Box Has Left  The Sort Center,Tashkent', '2021-04-16 17:09:38'),
(17, 6, 'Jewelry\'s', '1621540494', 'Newcastle- United Kingdom ', 'Package On hold  By Custom At Newcastle International Airport', '2021-05-20 19:54:54'),
(18, 6, 'Consignment Box', '1621869514', 'Madrid, Spain', 'Your Package Just Arrived The Sort Center In Portugal', '2021-05-24 15:18:34'),
(19, 6, 'Consignment Box', '1625832707', 'Manitoba, Canada ', 'Your shipment is on hold at , Winnipeg James Armstrong Richardson International Airport by the Canadian Customs. ', '2021-07-09 12:11:47'),
(20, 6, '2 Boxes', '1628787803', 'Manitoba, Canada ', 'Your shipment is on hold at , Winnipeg James Armstrong Richardson International Airport by the Canadian Customs. ', '2021-08-12 17:03:23'),
(21, 6, 'Confidential', '1644251963', 'San Antonio International Airport, San Antonio, Texas. ', 'In Transit ', '2022-02-07 16:39:23'),
(22, 6, 'Confidential', '1644426653', 'Damascus, Syria', 'On hold ', '2022-02-09 17:10:53'),
(23, 6, 'Confidential', '1667215477', 'Canada custom at Douglas, British Columbia , Canada ', 'On hold ', '2022-10-31 11:24:37'),
(24, 6, 'Briefcase', '1672929666', 'Canada custom at Douglas, British Columbia , Canada', 'On hold ', '2023-01-05 14:41:06'),
(25, 6, 'Briefcase', '1681223472', 'Heathrow Airport, United Kingdom ', 'In Transit ', '2023-04-11 14:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `first_name` varchar(225) NOT NULL,
  `last_name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`) VALUES
(1, 1, 'oghenemaro', 'kil', 'fem@gmail.com', '042521054234', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2020-12-14 15:39:18'),
(2, 1, 'oj', 'billy', 'oj@gmail.com', '08115615193', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2020-12-14 15:56:23'),
(3, 1, 'evan', 'okpako', 'evans@gmail.com', '08115615193', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2020-12-14 21:59:54'),
(4, 1, 'vans', 'opka', 'evan@gmail.com', '093930', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2020-12-16 21:41:13'),
(5, 1, 'oj', 'killi', 'mark@gmail.com', '042521054234', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2020-12-16 21:42:10'),
(6, 99, 'lord', 'mark', 'ovofficials94@gmail.com', '09033243857', 'b68341231e81b2be7b1d16d4ae3446a41a5a3099', '2020-12-17 14:50:17'),
(7, 1, 'lord', 're', 'lord@gmail.com', '09011445566', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2020-12-17 15:28:13'),
(8, 1, 'Oghene', 'Maro', 'oke@gmail.com', '090455782', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2020-12-19 23:04:17'),
(9, 1, 'Benjamin', 'Stiedemann', 'Cale_Effertz@yahoo.com', '11026132764', '8062b78f9db28318b3c3a01023918131866f5f65', '2021-04-22 11:18:03'),
(10, 1, 'Leon', 'Grimes', 'candicetmyers@gmail.com', '17456102258', '16365bdcb62086ff85c66b244eb3b2ac4f6ba99b', '2021-04-24 04:18:13'),
(11, 1, 'Caesar', 'Nikolaus', 'treatjoa@gmail.com', '19935534353', '13d48d2a5b91047b7bf0060fb90d9721de703393', '2021-05-08 19:25:28'),
(12, 1, 'Mary', 'Conroy', 'lauren18shields@gmail.com', '12893145554', '2f8b45997c6cec19ea54ec222ca3303e5829c329', '2021-06-08 06:28:58'),
(13, 1, 'Erika', 'Lindgren', 'chuck.okpalaeze@yahoo.com', '18086846471', '3b40d3336269bf6e52fb1e6b21c820d652e1dca9', '2021-06-26 02:06:20'),
(14, 1, 'Barrett', 'Ruecker', 'dheerema@gmail.com', '16816552301', '8ad7c0783ffeef89f7d8a17ca70c38879cdde928', '2021-06-27 12:24:07'),
(15, 1, 'Rosalinda', 'Tromp', 'rachelfaith711@comcast.net', '14373954436', '57e334e2200f513ac3fd2ad9a3af4f4dbc9993cf', '2021-06-28 16:17:01'),
(16, 1, 'Jalyn', 'Casper', 'murphy1608@gmail.com', '15397512645', '8bb47e0619acd2757886a543fb90c05182faea48', '2021-06-30 19:08:21'),
(17, 1, 'Quincy', 'Bowell', 'quincybowell9@gmail.com', '+17867392801', '1124b5e5cded03583b95787dab17108d75802149', '2021-07-25 11:36:17'),
(18, 1, 'Kelly', 'Hegmann', 'amisupreme@yahoo.com', '18420402120', '297ffb18f25d5b920578ddaf64c84e42f0354613', '2021-07-26 11:27:18'),
(19, 1, 'Isabella', 'Lueilwitz', 'matthewlcarpenter@me.com', '12491331461', '488600f1e33a29bbde63afb1930b0758a726a765', '2021-08-09 02:21:41'),
(20, 1, 'Einar', 'Haley', 'marylewis1933@yahoo.com', '13081010149', '2a04aa1a5bd6e6a7004012623a47ca6b08451989', '2021-08-11 20:16:56'),
(21, 1, 'Maudie', 'Hickle', 'mike_harris75080@yahoo.com', '10903416158', 'f475a762e15f9037aafb130f92dddce30aefce4e', '2021-08-16 13:39:48'),
(22, 1, 'Warren', 'Kutch', 'daniel_mussio@live.ca', '19567287821', 'cc4bbce65edf41b5eca35e30e4e2f1255369cd3c', '2021-08-18 06:25:38'),
(23, 1, 'Robb', 'Wolf', 'tilm.magallanes@gmail.com', '18951943233', '22ef611f27b943f8e0fea8fcb04cf7355f11115c', '2021-08-26 04:15:04'),
(24, 1, 'Nia', 'Crona', 'jenth574@aol.com', '11867595552', '4461f342edbffb384687aed2aa54dc58a9cc3122', '2021-09-01 16:13:55'),
(25, 1, 'Korey', 'Abshire', 'l.gonzales@yahoo.com', '18977235392', 'e46dddcfa8caffb52e9132f16d573b1ad0458b8a', '2021-09-11 01:04:34'),
(26, 1, 'Theo', 'Pfannerstill', 'marlowe0508@aol.com', '13389283305', '2302aa7946c7fb8cfbc350274200b81b024049d8', '2021-09-14 20:00:04'),
(27, 1, 'Dominique', 'Parisian', 'quuenlife08@gmail.com', '19540663715', '69243989418575d0996bc5340ef75dcb42ea94b4', '2021-10-01 23:15:04'),
(28, 1, 'Britney', 'Hettinger', 'tierneyatc@gmail.com', '18340670345', '97773e71bad79f3314cf2f0839d657cc063e9b24', '2021-10-09 19:41:42'),
(29, 1, 'Tommie', 'Ebert', 'sboccuzzi@yahoo.com', '18064758040', 'd97e81fcac1af3d2967242aad5e98abb77fe629d', '2021-10-14 12:19:14'),
(30, 1, 'John', 'Lockman', 'davidwilliamsanders@mail.com', '11353067889', 'c6bc7ea9a6e28695bca95113b8dde9a1bbcb9e33', '2021-10-18 23:17:05'),
(31, 1, 'Aiden', 'Moen', 'tayloramills97@gmail.com', '16142415033', '74070a3604ffaae57eff3833da99b2b20045cd8d', '2021-10-31 03:23:56'),
(32, 1, 'Joe', 'Langworth', 'j.armel@comcast.net', '13010809393', 'cd6413d02c241898a6d883bf0544a481b7177eeb', '2021-11-05 00:12:50'),
(33, 1, 'Lori', 'Rath', 'baluchhuma@yahoo.com', '19697257194', '33e3fcc7edff7cf0891fc38d24cbf163fe3d11c9', '2021-11-26 18:13:03'),
(34, 1, 'Adrienne', 'Moen', 'm3.leverette@gmail.com', '16954665048', 'b5a163e4080621fba66a771181b2b7de9de054db', '2021-12-04 07:13:53'),
(35, 1, 'Nya', 'Fisher', 'nowistao@gmail.com', '15694509246', '09c44a9ad19a85997e1910c3e5ea9b459da503f0', '2021-12-25 11:29:00'),
(36, 1, 'Candelario', 'Monahan', 'jacqueline.giles123@gmail.com', '11627912649', '89062475f5fcb415d79b58b2c090034f4bbe8448', '2021-12-29 05:53:39'),
(37, 1, 'Imani', 'Prohaska', 'slrichard@gmail.com', '10310588995', 'a39e4b23b30518ad95263b7945b6a15a25413663', '2022-01-12 21:44:21'),
(38, 1, 'Evangeline', 'Parisian', 'trishandabentley@gmail.com', '10420955709', '17c748a3baf3a30bdffa3facf45ce5d778d99e18', '2022-01-17 21:35:15'),
(39, 1, 'Zachery', 'Hayes', 'rainey123@bellsouth.net', '11528764436', '70af676182c731623a6a071f8a4764014c64752f', '2022-01-26 10:58:41'),
(40, 1, 'Claudie', 'Franecki', 'richv65@hotmail.com', '15016937621', '743c1a87080499e46f50f58cbe3ae99bfa0f7486', '2022-02-07 22:01:53'),
(41, 1, 'Roselyn', 'Ferry', 'annika.gelbke@gwhmail.de', '12307913172', '700cec1c0d84853b31fdf038e0925679ca7b6f31', '2022-02-11 16:48:43'),
(42, 1, 'Titus', 'Ritchie', 'imanakadustin@gmail.com', '11075247602', 'a14f4d82afcbb9e692110fe4e071f413562545d8', '2022-02-24 17:34:08'),
(43, 1, 'Ubaldo', 'Kuhlman', 'tejaswigosu@gmail.com', '11910973202', '79a4c5d927a315fe0214c93bdb0b7341731eac03', '2022-03-03 03:45:38'),
(44, 1, 'Nikko', 'Zieme', 'kroc83@hotmail.com', '15886889629', 'bd9ab95579e3fceffe4feb4365fbc3a0fd48be27', '2022-03-08 07:43:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shipment`
--
ALTER TABLE `shipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `shipment`
--
ALTER TABLE `shipment`
  ADD CONSTRAINT `shipment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
