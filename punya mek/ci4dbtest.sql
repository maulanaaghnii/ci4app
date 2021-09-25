-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 04:54 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4dbtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `airsoft`
--

CREATE TABLE `airsoft` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `factory` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airsoft`
--

INSERT INTO `airsoft` (`id`, `name`, `slug`, `factory`, `type`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'G2 Vector AEG', 'g2-vector-aeg', 'Coyote Airsoft', 'Electric', 'g2-vector-aeg.png', NULL, NULL),
(2, 'M4 AEG', 'm4-aeg', 'Coyote Airsoft', 'Electric', 'm4-aeg.jpg', NULL, NULL),
(10, 'M4A1 GBB V2', 'm4a1-gbb-v2', 'Tokyo Marui', 'Spring', '1623586284_3a8e73825d056edfbd3b.jpg', '2021-06-13 07:11:24', '2021-06-13 10:17:15'),
(11, 'P2668 Sniper', 'p2668-sniper', 'UKArms Airsoft', 'Spring', '1623587108_8b5d38a41500ec4bd0bb.jpg', '2021-06-13 07:25:08', '2021-06-13 07:25:08'),
(13, 'MB4407 VSR-10', 'mb4407-vsr-10', 'WELL', 'Spring', '1623588906_7441235283a79cf949ac.jpg', '2021-06-13 07:55:06', '2021-06-13 07:55:06'),
(14, 'AUG A2', 'aug-a2', 'ASG Styre', 'Electric', '1623594761_c9660410e04e3728cb8d.jpg', '2021-06-13 09:32:42', '2021-06-13 09:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `airsoft_user`
--

CREATE TABLE `airsoft_user` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `name_user` varchar(255) NOT NULL,
  `addres_user` varchar(255) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `country_user` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `airsoft_user`
--

INSERT INTO `airsoft_user` (`id_user`, `name_user`, `addres_user`, `email_user`, `country_user`, `created_at`, `updated_at`) VALUES
(1, 'Mek Wazowski', 'Jl. Madukoro', 'mek@monsteruniversity.com', 'United States', '2021-06-14 06:06:38', '2021-06-14 06:06:38'),
(2, 'Conner Price', '129 Cremin Inlet\nPagacport, MD 09709', 'pbogan@gmail.com', 'Greece', '2021-06-14 09:59:47', '2021-06-14 09:59:47'),
(3, 'Foster Kiehn', '75681 Stark Burgs\nWeissnatborough, KY 50601', 'christopher.swift@yahoo.com', 'Puerto Rico', '2021-06-14 10:04:36', '2021-06-14 10:04:36'),
(4, 'Efrain Wehner II', '5278 Jordane Islands Apt. 061\nTremblayland, ID 56094-3471', 'amaya.cole@hotmail.com', 'Iran', '2021-06-14 10:05:27', '2021-06-14 10:05:27'),
(5, 'Garry Hickle', '5267 Marquardt Ridges\nMagnoliaton, TX 90236-2451', 'dfritsch@yahoo.com', 'American Samoa', '2021-06-14 10:05:28', '2021-06-14 10:05:28'),
(6, 'Prof. Jayce Ankunding II', '6531 Carlo Dam Suite 793\nLake Toyfurt, KS 85211-3160', 'qwunsch@keebler.com', 'Angola', '2021-06-14 10:05:28', '2021-06-14 10:05:28'),
(7, 'Marilou Leannon', '833 Pfannerstill Viaduct\nMcGlynnchester, MD 88047', 'brayan.block@gmail.com', 'Cape Verde', '2021-06-14 10:05:28', '2021-06-14 10:05:28'),
(8, 'Jo Price Sr.', '7678 Rocio Glens Suite 902\nSouth Ebbaside, NY 55196', 'bogan.ethan@hotmail.com', 'Syrian Arab Republic', '2021-06-14 10:05:28', '2021-06-14 10:05:28'),
(9, 'Benedict Orn DDS', '789 Dina Causeway\nLake Dawn, DE 52221-4226', 'roman.quigley@nicolas.net', 'Djibouti', '2021-06-14 10:05:28', '2021-06-14 10:05:28'),
(10, 'Yoshiko Nitzsche', '85922 Max Ferry Suite 452\nLawrencebury, AR 23880-7028', 'irving25@gmail.com', 'Namibia', '2021-06-14 10:05:29', '2021-06-14 10:05:29'),
(11, 'Miss Kendra Mills', '4565 Gilda Dale\nNorth Aurelieborough, WA 24509-3857', 'marta.zieme@grimes.com', 'Grenada', '2021-06-14 10:05:29', '2021-06-14 10:05:29'),
(12, 'Dr. Jordi Reinger', '501 Terry Roads\nOletamouth, OR 54996-8465', 'berenice.wilkinson@konopelski.com', 'Greenland', '2021-06-14 10:05:29', '2021-06-14 10:05:29'),
(13, 'Mr. Caleb Quigley', '3297 Ariel Parkways\nNew Emiechester, NC 35597-8922', 'hauer@gmail.com', 'Timor-Leste', '2021-06-14 10:05:29', '2021-06-14 10:05:29'),
(14, 'Mr. Marquis Connelly DDS', '57194 Herzog Ports\nLake Lucious, AR 94654-0022', 'leffler.sterling@hotmail.com', 'Guam', '2021-06-14 10:05:29', '2021-06-14 10:05:29'),
(15, 'Moriah Wilderman', '9370 Cronin Meadows\nNorth Gladyshaven, WA 43437', 'ada.carter@streich.net', 'Chile', '2021-06-14 10:05:29', '2021-06-14 10:05:29'),
(16, 'Kraig Harber', '7708 Hailee Shoal Suite 297\nJohnstonside, MN 46164-6787', 'larkin.blaze@hotmail.com', 'Kuwait', '2021-06-14 10:05:29', '2021-06-14 10:05:29'),
(17, 'Dixie Block', '58980 Bill Forge Apt. 126\nAureliochester, NJ 13836-9604', 'kozey.rosalind@gmail.com', 'Tonga', '2021-06-14 10:05:29', '2021-06-14 10:05:29'),
(18, 'Harmony Adams', '743 Blair Forges Apt. 482\nAuerstad, SD 47356', 'emiliano.botsford@hotmail.com', 'United States Virgin Islands', '2021-06-14 10:05:29', '2021-06-14 10:05:29'),
(19, 'Mrs. Letha Little PhD', '875 Ashley Stravenue\nEast Lou, NV 53115-7051', 'faustino97@gmail.com', 'Mexico', '2021-06-14 10:05:30', '2021-06-14 10:05:30'),
(20, 'Keon Bruen II', '387 Stewart Light Apt. 354\nLuigifort, SD 01410-9531', 'oceane.bradtke@parker.biz', 'Ghana', '2021-06-14 10:05:30', '2021-06-14 10:05:30'),
(21, 'Prof. Claud Kertzmann PhD', '85605 Rosalee Ports\nNicolastown, UT 41683', 'kayla86@mcglynn.com', 'Liechtenstein', '2021-06-14 10:05:30', '2021-06-14 10:05:30'),
(22, 'Justyn Gottlieb', '370 Klein Tunnel\nNorth Eva, NV 61962', 'issac.zemlak@hane.info', 'Barbados', '2021-06-14 10:05:30', '2021-06-14 10:05:30'),
(23, 'Dr. Chelsie Sauer', '946 Joany Greens Apt. 848\nPort Velvaburgh, NH 96910', 'monahan.ariane@gmail.com', 'San Marino', '2021-06-14 10:05:30', '2021-06-14 10:05:30'),
(24, 'Griffin Kuphal', '1443 Prohaska Plaza Suite 092\nNorth Lunafort, AR 79284', 'ebergstrom@yundt.com', 'Liechtenstein', '2021-06-14 10:05:30', '2021-06-14 10:05:30'),
(25, 'Efrain Wuckert', '608 O\'Conner Ramp\nNew Eliane, OR 41128', 'daniel.dorthy@yahoo.com', 'Serbia', '2021-06-14 10:05:30', '2021-06-14 10:05:30'),
(26, 'Dr. Hermann Jakubowski DDS', '80207 Jannie Grove Apt. 477\nAydenview, NC 85939', 'delfina08@yost.info', 'Cook Islands', '2021-06-14 10:05:30', '2021-06-14 10:05:30'),
(27, 'Tommie Heaney IV', '47027 Kub Bypass\nNorth Jorge, AK 95456-5640', 'qrunte@schumm.net', 'Estonia', '2021-06-14 10:05:30', '2021-06-14 10:05:30'),
(28, 'Francesca Dach', '57393 Anderson Overpass\nWest Herminaville, NH 43012', 'deckow.jalyn@dietrich.biz', 'Pitcairn Islands', '2021-06-14 10:05:30', '2021-06-14 10:05:30'),
(29, 'Dr. Monserrat Considine', '6390 Jeff Ways Suite 754\nWest Estefania, AL 19036-8590', 'rwilliamson@yahoo.com', 'South Africa', '2021-06-14 10:05:31', '2021-06-14 10:05:31'),
(30, 'Carley Kemmer', '304 Matt Fall\nPollichland, LA 81841', 'lbarton@yahoo.com', 'France', '2021-06-14 10:05:31', '2021-06-14 10:05:31'),
(31, 'Chase Johnson', '1203 Vanessa Summit Suite 319\nNicolemouth, TN 13615', 'retta.schiller@krajcik.com', 'Montserrat', '2021-06-14 10:05:31', '2021-06-14 10:05:31'),
(32, 'Leola Wolf', '1298 Erdman Cove Apt. 730\nNorth Werner, CO 28507', 'neha98@gmail.com', 'Saint Lucia', '2021-06-14 10:05:31', '2021-06-14 10:05:31'),
(33, 'Miss Shanie Hamill', '866 Golda Spurs Suite 198\nCeliaville, CO 56776', 'bryon30@yahoo.com', 'Uganda', '2021-06-14 10:05:31', '2021-06-14 10:05:31'),
(34, 'Beatrice Reilly', '176 Alexandrea Spur Apt. 467\nEfrenhaven, WY 39230-7487', 'kim76@gmail.com', 'Togo', '2021-06-14 10:05:31', '2021-06-14 10:05:31'),
(35, 'Fredy Kunze', '683 Rodrigo Loaf\nSavionland, KS 59385-2749', 'qolson@yahoo.com', 'Uruguay', '2021-06-14 10:05:31', '2021-06-14 10:05:31'),
(36, 'Prof. Daija Rice', '599 Jayda Knolls Apt. 585\nOraville, DC 44392', 'declan.kihn@hotmail.com', 'Bulgaria', '2021-06-14 10:05:31', '2021-06-14 10:05:31'),
(37, 'Coralie Lang II', '20472 Wilkinson Mills Apt. 886\nMandymouth, OR 65231', 'erica49@renner.biz', 'Niger', '2021-06-14 10:05:31', '2021-06-14 10:05:31'),
(38, 'Garret Gerlach', '745 O\'Kon Junction Apt. 114\nLemkeborough, MI 36215-1554', 'jude38@kreiger.com', 'Hungary', '2021-06-14 10:05:31', '2021-06-14 10:05:31'),
(39, 'Mrs. Ilene Gibson III', '92712 Robb Fork\nCandidaburgh, DC 26108-1096', 'fmayert@hotmail.com', 'Guadeloupe', '2021-06-14 10:05:32', '2021-06-14 10:05:32'),
(40, 'Kayli Reichert', '9508 Deondre Islands Apt. 091\nLake Luciestad, KY 25597', 'berniece.marvin@koss.com', 'Malawi', '2021-06-14 10:05:32', '2021-06-14 10:05:32'),
(41, 'Emely Maggio', '23852 Kuphal Glen Apt. 606\nLake Angelitaburgh, OH 75030', 'ciara.bauch@yahoo.com', 'Nigeria', '2021-06-14 10:05:32', '2021-06-14 10:05:32'),
(42, 'Morgan Jast', '7781 Ricky Forges Apt. 430\nEast Ted, ME 15077-9015', 'demond.blanda@mayer.net', 'Reunion', '2021-06-14 10:05:32', '2021-06-14 10:05:32'),
(43, 'Oma Kassulke', '25364 Jacey Crossing\nReinabury, NC 41941-3856', 'elittel@hotmail.com', 'Antigua and Barbuda', '2021-06-14 10:05:32', '2021-06-14 10:05:32'),
(44, 'Andrew Orn', '5174 Haskell Pine Apt. 463\nRosemarieton, AL 59507-3538', 'murl.windler@hotmail.com', 'British Indian Ocean Territory (Chagos Archipelago)', '2021-06-14 10:05:32', '2021-06-14 10:05:32'),
(45, 'Nova Reichert', '86140 Ettie Via\nSouth Madelynnfurt, NC 46321', 'swyman@hotmail.com', 'Wallis and Futuna', '2021-06-14 10:05:32', '2021-06-14 10:05:32'),
(46, 'Prof. Bernadine King Jr.', '100 Sean Flats Apt. 071\nNew Arnaldo, CT 48216-3847', 'adrien34@feeney.com', 'Rwanda', '2021-06-14 10:05:33', '2021-06-14 10:05:33'),
(47, 'Mr. Kale Tremblay IV', '23488 Edward Flat\nEast Avery, DC 13482', 'dolores.bernhard@yahoo.com', 'Peru', '2021-06-14 10:05:33', '2021-06-14 10:05:33'),
(48, 'Elfrieda Wilkinson', '30389 Jerde Tunnel\nLake Graceberg, OK 22587-3384', 'elvis.rogahn@jacobi.biz', 'Honduras', '2021-06-14 10:05:33', '2021-06-14 10:05:33'),
(49, 'Mckenna Christiansen', '618 Howell Trail\nHodkiewicztown, KY 25957-8308', 'niko.waters@yahoo.com', 'Montenegro', '2021-06-14 10:05:33', '2021-06-14 10:05:33'),
(50, 'Lura Torp V', '9469 Pouros Station Suite 346\nDorothytown, GA 56924-6146', 'cruickshank.jaime@gmail.com', 'Egypt', '2021-06-14 10:05:33', '2021-06-14 10:05:33'),
(51, 'Margarete Ernser Jr.', '44437 Carmine Garden Suite 873\nSchmidtfort, NH 60354', 'qkovacek@yahoo.com', 'Saint Barthelemy', '2021-06-14 10:05:33', '2021-06-14 10:05:33'),
(52, 'Dr. Caesar Hand Jr.', '861 Steuber Brook Apt. 967\nSouth Omerside, UT 71698', 'hjacobson@volkman.com', 'Pitcairn Islands', '2021-06-14 10:05:33', '2021-06-14 10:05:33'),
(53, 'Soledad Reinger', '83887 Cordell Hill Apt. 048\nNorth Cornelius, ND 98474-3492', 'ebba.parisian@gmail.com', 'Benin', '2021-06-14 10:05:33', '2021-06-14 10:05:33'),
(54, 'Ms. Estefania Zboncak', '80265 Orlo Corner\nBettybury, ME 33882-2649', 'tobin15@feeney.com', 'Palau', '2021-06-14 10:05:33', '2021-06-14 10:05:33'),
(55, 'Willie McDermott', '4865 Auer Prairie Apt. 677\nWest Cleta, WV 12751-9827', 'qlebsack@gmail.com', 'Croatia', '2021-06-14 10:05:33', '2021-06-14 10:05:33'),
(56, 'Quinten Brakus', '43502 Luis Estates\nSouth Tomas, SC 73299', 'america79@hotmail.com', 'Congo', '2021-06-14 10:05:34', '2021-06-14 10:05:34'),
(57, 'Delphia Kshlerin', '40518 Simonis Path\nRosalynmouth, AZ 56865-5054', 'alena79@stamm.net', 'Mongolia', '2021-06-14 10:05:34', '2021-06-14 10:05:34'),
(58, 'Mr. Cristopher Smitham', '729 Mario Rapid\nSouth Eugeniashire, HI 07600-0206', 'kasey.feest@gmail.com', 'Poland', '2021-06-14 10:05:34', '2021-06-14 10:05:34'),
(59, 'Mr. Harrison Dare IV', '45516 Easter Run Suite 036\nLake Scottie, MA 58809', 'katelynn.boyer@gmail.com', 'India', '2021-06-14 10:05:34', '2021-06-14 10:05:34'),
(60, 'Desmond Frami', '49348 Else Pass\nSouth Lilian, IN 13034-3014', 'nannie51@hotmail.com', 'Tajikistan', '2021-06-14 10:05:34', '2021-06-14 10:05:34'),
(61, 'Dr. Grace Dicki V', '3162 Camron Point Suite 054\nWest Efrainhaven, MD 56811-4313', 'ajakubowski@schoen.com', 'Nauru', '2021-06-14 10:05:34', '2021-06-14 10:05:34'),
(62, 'Mr. Dejon Beahan', '431 Koch Street Suite 976\nPort Greta, ID 60865-4264', 'hazel57@gmail.com', 'New Zealand', '2021-06-14 10:05:34', '2021-06-14 10:05:34'),
(63, 'Ila Bogisich', '37321 Dolores Lodge\nMoenbury, MT 97746-8750', 'sbode@russel.com', 'Ethiopia', '2021-06-14 10:05:34', '2021-06-14 10:05:34'),
(64, 'Mr. Cullen Purdy', '48697 Hermiston Curve\nSouth Turner, MA 87197-6448', 'mayert.nayeli@yahoo.com', 'Kiribati', '2021-06-14 10:05:35', '2021-06-14 10:05:35'),
(65, 'Mr. Dock Zulauf', '8621 Abigale Crossroad\nLake Ferneville, IA 59179', 'grace08@ohara.com', 'Armenia', '2021-06-14 10:05:35', '2021-06-14 10:05:35'),
(66, 'Hal Mayert I', '75298 Bechtelar Cliff\nLake Delores, SD 90229', 'purdy.alphonso@hotmail.com', 'Madagascar', '2021-06-14 10:05:35', '2021-06-14 10:05:35'),
(67, 'Emerson Dietrich', '921 Donald Village\nEmardfort, IN 67816-9220', 'francesco.gleason@gmail.com', 'Bouvet Island (Bouvetoya)', '2021-06-14 10:05:35', '2021-06-14 10:05:35'),
(68, 'Rachelle Harris II', '9443 Karlee Branch Suite 471\nRoweton, NV 84195', 'jordi81@gmail.com', 'Switzerland', '2021-06-14 10:05:35', '2021-06-14 10:05:35'),
(69, 'Isai Skiles', '2436 Homenick Walks\nZiemannville, AL 64529', 'weimann.ebony@harvey.net', 'Romania', '2021-06-14 10:05:35', '2021-06-14 10:05:35'),
(70, 'Elvera Haag', '1886 Dach Row\nUrbanchester, GA 87337', 'nfadel@murray.com', 'Belgium', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(71, 'Bernadette Spencer', '29591 Aubrey Hills\nNorth Elizabeth, MT 91800-3889', 'altenwerth.cordie@deckow.info', 'Anguilla', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(72, 'Yoshiko Ward', '941 Gibson Viaduct\nPort Germanchester, CO 31488', 'mschuppe@padberg.com', 'Tokelau', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(73, 'Prof. Elmo Turner', '387 Tremblay Port\nEast Jorgeborough, CT 95225', 'mann.isom@waelchi.info', 'Nigeria', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(74, 'Antonetta Olson', '595 Shaun River Suite 285\nSouth Raphaelle, WY 32254', 'davion.klocko@runte.net', 'Oman', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(75, 'Modesto Stark', '866 Effie Key Suite 565\nRippinstad, TN 95067-7656', 'lbalistreri@jacobs.com', 'United States of America', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(76, 'Dr. Kelton Murazik DVM', '209 Dickens Burgs Suite 102\nJolieside, OH 57123', 'davis.vance@treutel.com', 'Cyprus', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(77, 'Bill Quigley', '1665 Wisoky Radial Suite 766\nSisterbury, NH 77523', 'imann@kulas.com', 'Guatemala', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(78, 'Gerald Rau', '62713 Hudson Causeway Apt. 382\nPort Ryanhaven, OR 63791', 'jordane14@gmail.com', 'Malta', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(79, 'Dr. Kelsie Daugherty I', '64902 Kshlerin Station\nNorth Ava, AZ 44904', 'koch.cristobal@hotmail.com', 'Palau', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(80, 'Carroll Blanda', '3289 Kamryn Course Apt. 479\nNew Ricobury, OR 81269-1446', 'pschimmel@gutkowski.com', 'Suriname', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(81, 'Minnie Rosenbaum', '5514 Von Isle\nRowlandhaven, FL 62346', 'elinore.okon@homenick.com', 'Chad', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(82, 'Hermann Murray', '20657 Cleo Branch\nMeggiestad, KS 26328', 'aemard@yahoo.com', 'Macedonia', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(83, 'Rogelio O\'Reilly I', '59940 Aufderhar Rest Suite 641\nAustynton, OK 61311', 'alverta.crona@hotmail.com', 'Aruba', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(84, 'Erik Zboncak', '339 Dean Parks\nMillerville, KS 37586', 'stanton.julianne@eichmann.biz', 'Greece', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(85, 'Cordie Kulas Sr.', '4804 Kessler Locks Apt. 879\nLake Osbaldohaven, TN 62905-1508', 'christelle20@hahn.com', 'Vanuatu', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(86, 'Imelda Crist', '3413 Mauricio Village Apt. 661\nSouth Emerson, ME 63656', 'balistreri.alena@brakus.info', 'Saudi Arabia', '2021-06-14 10:05:36', '2021-06-14 10:05:36'),
(87, 'Hudson Kulas', '2502 Hodkiewicz Fort Apt. 988\nSouth Lorenza, LA 82940-0661', 'eric.yundt@jast.net', 'Honduras', '2021-06-14 10:05:37', '2021-06-14 10:05:37'),
(88, 'Jeffry Crooks', '16138 Keeley Islands Apt. 464\nGaylordton, ID 48456', 'destinee.beatty@bode.com', 'Turkey', '2021-06-14 10:05:37', '2021-06-14 10:05:37'),
(89, 'Prof. Oliver Stanton', '28600 Brian Plaza Suite 046\nFlossieport, RI 47510-0411', 'gweber@hotmail.com', 'Somalia', '2021-06-14 10:05:37', '2021-06-14 10:05:37'),
(90, 'Keven Renner', '90102 Bradley Forest Apt. 744\nKeiraburgh, VT 39402-6695', 'delfina80@keebler.com', 'Czech Republic', '2021-06-14 10:05:37', '2021-06-14 10:05:37'),
(91, 'Cicero Lind', '99548 Lela Ville\nLabadietown, GA 12220-3649', 'cindy.kassulke@beier.org', 'New Caledonia', '2021-06-14 10:05:37', '2021-06-14 10:05:37'),
(92, 'Stella Cruickshank', '855 Lempi Highway\nCorkeryland, NJ 55535-5770', 'bernadine81@yahoo.com', 'Aruba', '2021-06-14 10:05:37', '2021-06-14 10:05:37'),
(93, 'Adah Breitenberg', '5950 Sasha Vista\nHowellton, NH 40716', 'wilma.mayert@cassin.com', 'Macedonia', '2021-06-14 10:05:37', '2021-06-14 10:05:37'),
(94, 'Dr. Verlie Pacocha', '27891 Cecilia Throughway\nMitchellberg, AK 80735-7419', 'fcasper@yahoo.com', 'Guatemala', '2021-06-14 10:05:37', '2021-06-14 10:05:37'),
(95, 'Adonis Williamson', '3775 Porter Square\nNew Pearlinehaven, MS 42574', 'brekke.geovany@mueller.info', 'Colombia', '2021-06-14 10:05:37', '2021-06-14 10:05:37'),
(96, 'Yesenia Schmeler', '4359 Lauryn Forges Suite 220\nLake Koby, NY 69879-5483', 'mable28@hotmail.com', 'Iraq', '2021-06-14 10:05:37', '2021-06-14 10:05:37'),
(97, 'Grover Ullrich', '977 Daisha Forges Apt. 101\nRyanmouth, MO 50264-2443', 'turcotte.bret@turner.com', 'Djibouti', '2021-06-14 10:05:39', '2021-06-14 10:05:39'),
(98, 'Mr. Nick Gottlieb', '7628 Kshlerin Ways Apt. 809\nNorth Rosalind, GA 04215-5146', 'paris.bergstrom@waelchi.com', 'Liberia', '2021-06-14 10:05:41', '2021-06-14 10:05:41'),
(99, 'Kristin Langworth', '10102 Charlie Parks Apt. 024\nSouth Celiaborough, KY 14252', 'akoepp@willms.com', 'Namibia', '2021-06-14 10:05:41', '2021-06-14 10:05:41'),
(100, 'Rhoda Stiedemann', '1281 Williamson Neck\nEast Ilianamouth, RI 00739-9584', 'pkuvalis@carroll.net', 'Ireland', '2021-06-14 10:05:41', '2021-06-14 10:05:41'),
(101, 'Zachery Doyle', '3718 Elfrieda Grove Suite 971\nArnemouth, CA 71028-1896', 'marguerite.goyette@turner.com', 'Mayotte', '2021-06-14 10:05:42', '2021-06-14 10:05:42'),
(102, 'Aryanna Hettinger', '213 Ludwig Junctions\nHammesport, IL 19070-5047', 'legros.garett@hotmail.com', 'Reunion', '2021-06-14 10:05:42', '2021-06-14 10:05:42'),
(103, 'Garfield Larkin', '302 Ankunding Freeway Apt. 584\nPort Maribel, AR 22896', 'qfisher@hotmail.com', 'Afghanistan', '2021-06-14 10:05:42', '2021-06-14 10:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-06-14-101524', 'App\\Database\\Migrations\\AirsoftUser', 'default', 'App', 1623667121, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airsoft`
--
ALTER TABLE `airsoft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `airsoft_user`
--
ALTER TABLE `airsoft_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airsoft`
--
ALTER TABLE `airsoft`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `airsoft_user`
--
ALTER TABLE `airsoft_user`
  MODIFY `id_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
