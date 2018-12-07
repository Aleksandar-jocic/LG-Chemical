-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2018 at 04:50 PM
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
-- Database: `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `main_group`
--

CREATE TABLE `main_group` (
  `main_id` int(11) NOT NULL,
  `main_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main_picture` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `main_index_picture` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `main_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `main_group`
--

INSERT INTO `main_group` (`main_id`, `main_name`, `main_picture`, `main_index_picture`, `main_icon`) VALUES
(1, 'Građevina', 'legosPSed.jpg', 'gradjevina(small)red.jpg', 'paint-roller.png'),
(2, 'Prehrana', 'peach.jpg', 'hrana(small)red.jpg', 'piece-of-cake.png'),
(3, 'Sigurnost hrane', 'microscope.jpg', 'testovi(small)red.jpg', 'pipette.png'),
(4, 'Industrijski mirisi', 'flowerPSed.jpg', 'mirisi(small)red.jpg', 'cologne.png'),
(5, 'Bazna hemija', 'vials.jpg', 'bazna(small)red.jpg', 'flask.png'),
(6, 'Chemeter', 'chemeter.png', 'Chemeter(small).jpg', 'shield.png');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `main_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_picture` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'logoIcon',
  `product_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `sub_id`, `main_id`, `product_name`, `product_picture`, `product_description`) VALUES
(3, 1, 1, 'Pigment crni S318', 'logoIcon.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates, magnam quaerat esse quod molestiae exercitationem voluptatibus sunt, porro unde consequuntur nihil eaque modi consequatur enim placeat, nemo corporis? Corrupti, officia?Neque voluptatib'),
(4, 1, 1, 'Pigment crni S330', 'logoIcon.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus error officiis aliquid quis autem deserunt nobis nisi quia, pariatur ipsam eaque illum nam eius praesentium placeat dignissimos facere fuga modi!'),
(5, 1, 1, 'Pigment braon S660', 'logoIcon.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis, sed. Et velit provident voluptatum, repudiandae eum mollitia ratione odio ipsam excepturi quo. Cum cupiditate nam ipsum ut aliquid beatae blanditiis?\r\n            Ab nihil iste vitae r'),
(6, 1, 1, 'Pigment crveni S110', 'logoIcon.png', ''),
(7, 1, 1, 'Pigment crveni S130', 'logoIcon.png', ''),
(8, 1, 1, 'Pigment crveni S222', 'logoIcon.png', ''),
(9, 1, 1, 'Pigment žuti S930', 'logoIcon.png', ''),
(10, 1, 1, 'Pigment žuti S960', 'logoIcon.png', ''),
(11, 1, 1, 'Pigment hrom žuti 502', 'logoIcon.png', ''),
(12, 1, 1, 'Pigment molibdat oranž 207', 'logoIcon.png', ''),
(13, 1, 1, 'Pigment molibdat crveni 307', 'logoIcon.png', ''),
(14, 1, 1, 'Ultramarin plavi', 'logoIcon.png', ''),
(15, 1, 1, 'Pigment chrome oxide zeleni SGCM', 'logoIcon.png', ''),
(16, 1, 1, 'Titan dioksid CR-08', 'logoIcon.png', ''),
(17, 2, 1, 'Silver White Series', 'logoIcon.png', ''),
(18, 2, 1, 'Rainbow Series ', 'logoIcon.png', ''),
(19, 2, 1, 'Golden Series', 'logoIcon.png', ''),
(20, 2, 1, 'Metallic Series', 'logoIcon.png', ''),
(21, 2, 1, 'Coloring Series', 'logoIcon.png', ''),
(22, 2, 1, 'Diamond Series', 'logoIcon.png', ''),
(23, 2, 1, 'Chameleon Series', 'logoIcon.png', ''),
(24, 2, 1, 'Velvet Series', 'logoIcon.png', ''),
(25, 2, 1, 'Jade Series', 'logoIcon.png', ''),
(26, 3, 1, 'TECHNOCEL pure series', 'logoIcon.png', 'TECHNOCEL pure series'),
(27, 3, 1, 'Technocel 40', 'logoIcon.png', ''),
(28, 3, 1, 'Technocel 75', 'logoIcon.png', ''),
(29, 3, 1, 'Technocel 150', 'logoIcon.png', ''),
(30, 3, 1, 'Technocel 200G', 'logoIcon.png', ''),
(31, 3, 1, 'Technocel 1000', 'logoIcon.png', ''),
(32, 3, 1, 'Technocel 2500', 'logoIcon.png', ''),
(33, 3, 1, 'Technocel 2500-1', 'logoIcon.png', ''),
(34, 3, 1, 'TECHNOCEL technical series', 'logoIcon.png', 'TECHNOCEL technical series'),
(35, 3, 1, 'Technocel 75-1', 'logoIcon.png', ''),
(36, 3, 1, 'Technocel 165', 'logoIcon.png', ''),
(37, 3, 1, 'Technocel 500-1', 'logoIcon.png', ''),
(38, 3, 1, 'Technocel 1000-1', 'logoIcon.png', ''),
(39, 3, 1, 'Technocel 1000-1W', 'logoIcon.png', ''),
(40, 3, 1, 'TECHNOCEL 1004 series (grey recycling fibres)', 'logoIcon.png', 'TECHNOCEL 1004 series (grey recycling fibres)'),
(41, 3, 1, 'Technocel 1004-6L', 'logoIcon.png', ''),
(42, 3, 1, 'Technocel 1004-3N', 'logoIcon.png', ''),
(43, 3, 1, 'Technocel 1004-3Z', 'logoIcon.png', ''),
(44, 3, 1, 'Technocel 1004-7N', 'logoIcon.png', ''),
(45, 3, 1, 'TECHNOCEL DR (Dust Reducing)', 'logoIcon.png', 'TECHNOCEL DR (Dust Reducing)'),
(46, 3, 1, 'Technocel DR 500-1', 'logoIcon.png', ''),
(47, 3, 1, 'TECHNOCEL M series (softwood)', 'logoIcon.png', 'TECHNOCEL M series (softwood)'),
(48, 3, 1, 'Technocel HM 120', 'logoIcon.png', ''),
(49, 4, 1, 'Epoksidne smole', 'logoIcon.png', ''),
(50, 4, 1, 'Utvrđivači', 'logoIcon.png', ''),
(51, 5, 1, 'Kalcijum stearat', 'logoIcon.png', ''),
(52, 5, 1, 'Cink stearat', 'logoIcon.png', ''),
(53, 6, 1, 'Iokal', 'logoIcon.png', ''),
(54, 6, 1, 'Iotalk', 'logoIcon.png', ''),
(55, 7, 1, 'Na-heksametafosfat 68%', 'logoIcon.png', ''),
(56, 7, 1, 'Biocid CMT. 1-5SF / CMIT/ MIT', 'logoIcon.png', ''),
(57, 7, 1, 'Antipenušavac BIO', 'logoIcon.png', ''),
(58, 7, 1, 'Polydisp disp 35A', 'logoIcon.png', ''),
(59, 7, 1, 'Kalcijum formijat', 'logoIcon.png', ''),
(60, 8, 2, 'Text doc.', 'logoIcon.png', 'Text doc.'),
(61, 9, 2, 'PRIRODNO', 'logoIcon.png', ''),
(62, 9, 2, 'MIKROBIOLOŠKO ', 'logoIcon.png', ''),
(63, 9, 2, 'GMO', 'logoIcon.png', ''),
(64, 10, 2, 'E260 Sirćetna kiselina', 'logoIcon.png', ''),
(65, 10, 2, 'E281 Natrijum propionat', 'logoIcon.png', ''),
(66, 10, 2, 'E282 Kalcijum propionat', 'logoIcon.png', ''),
(67, 10, 2, 'E300 Askorbinska kiselina', 'logoIcon.png', ''),
(68, 10, 2, 'E325 Natrijum laktat ', 'logoIcon.png', ''),
(69, 10, 2, 'E327 Kalcijum laktat', 'logoIcon.png', ''),
(70, 10, 2, 'E330 Limunska kiselina', 'logoIcon.png', ''),
(71, 10, 2, 'E333 Kalcijum citrat (I) Dikalcijum citrat (II) Trikalcijum citrat (III)', 'logoIcon.png', ''),
(72, 10, 2, 'E406 Agar', 'logoIcon.png', ''),
(73, 10, 2, 'E509 Kalcijum hlorid', 'logoIcon.png', ''),
(74, 10, 2, 'E316 Natrijum izoaksorbat', 'logoIcon.png', ''),
(75, 10, 2, 'E322 Lecitini', 'logoIcon.png', ''),
(76, 10, 2, 'E331 Natrijum citrat (I), Dinatrijum citrat (II), Trinatrijum citrat (III)', 'logoIcon.png', ''),
(77, 10, 2, 'E332 Kalijum citrat (I), Trikalijum citrat (III)', 'logoIcon.png', ''),
(78, 10, 2, 'E338 Fosforna kiselina', 'logoIcon.png', ''),
(79, 10, 2, 'E471 Mono- I digliceridi masnih kiselina', 'logoIcon.png', ''),
(80, 10, 2, 'E579 Gvožđe (II) glukonat', 'logoIcon.png', ''),
(81, 10, 2, 'E585 Gvožđe (II) laktat', 'logoIcon.png', ''),
(82, 10, 2, 'E575 Glukono-delta-lakton', 'logoIcon.png', ''),
(83, 10, 2, 'E412 Guar guma', 'logoIcon.png', ''),
(84, 10, 2, 'E235 Natamicin', 'logoIcon.png', ''),
(85, 10, 2, 'E234 Nizin', 'logoIcon.png', ''),
(86, 10, 2, 'E224 Kalijum metabisulfit', 'logoIcon.png', ''),
(87, 10, 2, 'E223 Natrijev metabisulfit', 'logoIcon.png', ''),
(88, 10, 2, 'E202 Kalijum sorbat', 'logoIcon.png', ''),
(89, 10, 2, 'E1520 Propan-1,2-diol', 'logoIcon.png', ''),
(90, 10, 2, 'E450 Dinatrijum difosfat (I), Trinatrijum difosfat (II), Tetranatrijum difosfat (III), Diklaijum difosfat (IV), Tetrakalijum difosfat (V), Dikalcijum difosfat (VI), Kalcijjum dihidrogendifosfat (VII)', 'logoIcon.png', ''),
(91, 10, 2, 'E270 Mlečna kiselina', 'logoIcon.png', ''),
(92, 10, 2, 'E211 Natrijum benzoat', 'logoIcon.png', ''),
(93, 10, 2, 'E210 Benzoeva kiselina', 'logoIcon.png', ''),
(94, 10, 2, 'E500 Natrijum karbonat (I), Natrijum hidrogenkarbonat (II), Natrijum seskuikarbonat (III)', 'logoIcon.png', ''),
(95, 10, 2, 'E262 Natrijum acetat (I), Natrijum hidrogenacetat', 'logoIcon.png', ''),
(96, 10, 2, 'E576 Natrijum glukonat', 'logoIcon.png', ''),
(97, 10, 2, 'E452 Natrijum polifosfat (I), Kalijum polifosfat (II), Natrijumkalcijum polofosfat (III), Kalcijum polifosfat (IV)', 'logoIcon.png', ''),
(98, 10, 2, 'E200 Sorbinska kiselina', 'logoIcon.png', ''),
(99, 10, 2, 'E420 Sorbitol (I), Sorbitolni sirup (II)', 'logoIcon.png', ''),
(100, 10, 2, 'E415 Ksantan-guma', 'logoIcon.png', ''),
(101, 11, 2, 'ENZIMI ZA PEKARSTVO, PIVARSTVO, VINARSTVO', 'logoIcon.png', ''),
(102, 11, 2, 'Vanilin', 'logoIcon.png', ''),
(103, 11, 2, 'Etilvanilin', 'logoIcon.png', ''),
(104, 11, 2, 'Antipenušavac (prehrambeni kvalitet)', 'logoIcon.png', ''),
(105, 11, 2, 'Elatin (240,180 & bluma)', 'logoIcon.png', ''),
(106, 11, 2, 'Arome', 'logoIcon.png', ''),
(107, 12, 2, 'Kaustična soda (kuglice, ljuspice, rastvor 50%)', 'logoIcon.png', ''),
(108, 12, 2, 'Dezifektantni', 'logoIcon.png', ''),
(109, 12, 2, 'Sredstva za čišćenje', 'logoIcon.png', ''),
(110, 12, 2, 'Hlorovodonična kiselina (33%)', 'logoIcon.png', ''),
(111, 12, 2, 'Natrijum hipohlorid', 'logoIcon.png', ''),
(112, 12, 2, 'Vodonik peroksid (rastvor 35%, 50%)', 'logoIcon.png', ''),
(113, 13, 2, 'DAP (DI-AMONIJUM) FOSFAT', 'logoIcon.png', ''),
(114, 13, 2, 'Floukulanti & koagulanti', 'logoIcon.png', ''),
(115, 13, 2, 'PAC (Polielektroliti)', 'logoIcon.png', ''),
(116, 14, 3, 'AuroFlow™ Aflatoxin M1 Strip Test Kit', 'logoIcon.png', ''),
(117, 14, 3, 'AuroFlow™ Beta-Lactam Strip Test Kit', 'logoIcon.png', ''),
(118, 14, 3, 'AuroFlow™ BT Combo Strip Test Kit', 'logoIcon.png', ''),
(119, 14, 3, 'AuroFlow™ BTS Combo Strip Test Kit', 'logoIcon.png', ''),
(120, 14, 3, 'AuroFlow™ Fluoroquinolone Strip Test Kit for Meat', 'logoIcon.png', ''),
(121, 14, 3, 'AuroFlow™ Fluoroquinolone Strip Test Kit for Milk', 'logoIcon.png', ''),
(122, 14, 3, 'AuroFlow™ Melamine Strip Test Kit', 'logoIcon.png', ''),
(123, 14, 3, 'AuroFlow™ Ractopamine Strip Test Kit', 'logoIcon.png', ''),
(124, 14, 3, 'AuroFlow™ RC Combo Strip Test Kit', 'logoIcon.png', ''),
(125, 14, 3, 'AuroFlow™ Sulfonamide Strip Test Kit', 'logoIcon.png', ''),
(126, 14, 3, 'AuroFlow™ Tetracycline Strip Test Kit', 'logoIcon.png', ''),
(127, 15, 3, 'MaxSignal® Aflatoxin B1 ELISA Test Kit - Rapid', 'logoIcon.png', ''),
(128, 15, 3, 'MaxSignal® Aflatoxin M1 ELISA Test Kit', 'logoIcon.png', ''),
(129, 15, 3, 'MaxSignal® Ammonia Assay Kit', 'logoIcon.png', ''),
(130, 15, 3, 'MaxSignal® Ascorbic Acid Assay Kit', 'logoIcon.png', ''),
(131, 15, 3, 'MaxSignal® Automated ELISA Station', 'logoIcon.png', ''),
(132, 15, 3, 'MaxSignal® Benzo[a]pyrene (BaP) ELISA Test Kit', 'logoIcon.png', ''),
(133, 15, 3, 'MaxSignal® Beta-Agonist ELISA Test Kit', 'logoIcon.png', ''),
(134, 15, 3, 'MaxSignal® Beta-Lactam ELISA Test Kit', 'logoIcon.png', ''),
(135, 15, 3, 'MaxSignal® Beta-Lactamase Test Pad Kit', 'logoIcon.png', ''),
(136, 15, 3, 'MaxSignal® Boldenone ELISA Test Kit', 'logoIcon.png', ''),
(137, 15, 3, 'MaxSignal® Brombuterol ELISA Kit', 'logoIcon.png', ''),
(138, 15, 3, 'MaxSignal® Bupivacain ELISA Test Kit', 'logoIcon.png', ''),
(139, 15, 3, 'MaxSignal® Carbendazim ELISA Test Kit', 'logoIcon.png', ''),
(140, 15, 3, 'MaxSignal® Ceftiofur ELISA Test Kit', 'logoIcon.png', ''),
(141, 15, 3, 'MaxSignal® Chloramphenicol (CAP) ELISA Test Kit', 'logoIcon.png', ''),
(142, 15, 3, 'MaxSignal® Chlortetracycline ELISA Test Kit', 'logoIcon.png', ''),
(143, 15, 3, 'MaxSignal® Cimaterol ELISA Test Kit', 'logoIcon.png', ''),
(144, 15, 3, 'MaxSignal® Ciprofloxacin ELISA Test Kit', 'logoIcon.png', ''),
(145, 15, 3, 'MaxSignal® Clenbuterol ELISA Test Kit', 'logoIcon.png', ''),
(146, 15, 3, 'MaxSignal® Clonidine ELISA Test Kit', 'logoIcon.png', ''),
(147, 15, 3, 'MaxSignal® Colistin ELISA Test Kit', 'logoIcon.png', ''),
(148, 15, 3, 'MaxSignal® Crystal Violet/LCV ELISA Test Kit', 'logoIcon.png', ''),
(149, 15, 3, 'MaxSignal® Cyproheptadine ELISA Test Kit', 'logoIcon.png', ''),
(150, 15, 3, 'MaxSignal® Dairy Product Pasteurization Verification Kit', 'logoIcon.png', ''),
(151, 15, 3, 'MaxSignal® Deoxynivalenol (DON) ELISA Test Kit', 'logoIcon.png', ''),
(152, 15, 3, 'MaxSignal® Deoxynivalenol (DON) ELISA Test Kit - Rapid', 'logoIcon.png', ''),
(153, 15, 3, 'MaxSignal® Diazepam ELISA Test Kit', 'logoIcon.png', ''),
(154, 15, 3, 'MaxSignal® Diethylstilbestrol (DES) ELISA Test Kit', 'logoIcon.png', ''),
(155, 15, 3, 'MaxSignal® Domoic Acid (ASP) ELISA Test Kit ', 'logoIcon.png', ''),
(156, 15, 3, 'MaxSignal® Doxycycline ELISA Kit', 'logoIcon.png', ''),
(157, 15, 3, 'MaxSignal® E. coli O157 Strip Test Kit', 'logoIcon.png', ''),
(158, 15, 3, 'MaxSignal® E. coli O157:H7 ELISA Test Kit', 'logoIcon.png', ''),
(159, 15, 3, 'MaxSignal® Enrofloxacin ELISA Test Kit', 'logoIcon.png', ''),
(160, 15, 3, 'MaxSignal® Erythromycin ELISA Test Kit', 'logoIcon.png', ''),
(161, 15, 3, 'MaxSignal® Florfenicol ELISA Test Kit', 'logoIcon.png', ''),
(162, 15, 3, 'MaxSignal® Flumequine ELISA Test Kit', 'logoIcon.png', ''),
(163, 15, 3, 'MaxSignal® Fluoroquinolone ELISA Kit', 'logoIcon.png', ''),
(164, 15, 3, 'MaxSignal® Fructose Assay Kit', 'logoIcon.png', ''),
(165, 15, 3, 'MaxSignal® Fructose/Glucose Assay Kit', 'logoIcon.png', ''),
(166, 15, 3, 'MaxSignal® Fumonisin ELISA Test Kit', 'logoIcon.png', ''),
(167, 15, 3, 'MaxSignal® Furaltadone (AMOZ) ELISA Test Kit', 'logoIcon.png', ''),
(168, 15, 3, 'MaxSignal® Furazolidone (AOZ) ELISA Test Kit', 'logoIcon.png', ''),
(169, 15, 3, 'MaxSignal® Gentamicin ELISA Test Kit', 'logoIcon.png', ''),
(170, 15, 3, 'MaxSignal® Glucose Assay Kit', 'logoIcon.png', ''),
(171, 15, 3, 'MaxSignal® Histamine enzymatic Assay Kit', 'logoIcon.png', ''),
(172, 15, 3, 'MaxSignal® Histamine enzymatic Assay Kit for Fish Sauce', 'logoIcon.png', ''),
(173, 15, 3, 'MaxSignal® Mabuterol ELISA Kit', 'logoIcon.png', ''),
(174, 15, 3, 'MaxSignal® Malachite Green Test Kit (Water Sample)', 'logoIcon.png', ''),
(175, 15, 3, 'MaxSignal® Malachite Green/LMG ELISA Test Kit', 'logoIcon.png', ''),
(176, 15, 3, 'MaxSignal® Melamine ELISA Test Kit', 'logoIcon.png', ''),
(177, 15, 3, 'MaxSignal® Melamine enzymatic Assay Kit', 'logoIcon.png', ''),
(178, 15, 3, 'MaxSignal® Methyltestosterone (MTS) ELISA Kit', 'logoIcon.png', ''),
(179, 15, 3, 'MaxSignal® Monensin ELISA Test Kit', 'logoIcon.png', ''),
(180, 15, 3, 'MaxSignal® Nalidixic Acid ELISA Test Kit', 'logoIcon.png', ''),
(181, 15, 3, 'MaxSignal® Nandrolone ELISA Test Kit', 'logoIcon.png', ''),
(182, 15, 3, 'MaxSignal® Neomycin ELISA Test Kit', 'logoIcon.png', ''),
(183, 15, 3, 'MaxSignal® Nitrate/Nitrite Assay Kit', 'logoIcon.png', ''),
(184, 15, 3, 'MaxSignal® Nitrofurantoin (AHD) ELISA Kit', 'logoIcon.png', ''),
(185, 15, 3, 'MaxSignal® Nitrofurazone (SEM) ELISA Kit', 'logoIcon.png', ''),
(186, 15, 3, 'MaxSignal® No-Mel Total Protein Assay Test Kit', 'logoIcon.png', ''),
(187, 15, 3, 'MaxSignal® Norfloxacin ELISA Test Kit', 'logoIcon.png', ''),
(188, 15, 3, 'MaxSignal® Ochratoxin A ELISA Test Kit', 'logoIcon.png', ''),
(189, 15, 3, 'MaxSignal® Ochratoxin A ELISA Test Kit - Rapid', 'logoIcon.png', ''),
(190, 15, 3, 'MaxSignal® Okadaic Acid (DSP) ELISA Test Kit', 'logoIcon.png', ''),
(191, 15, 3, 'MaxSignal® Oxytetracycline ELISA Kit', 'logoIcon.png', ''),
(192, 15, 3, 'MaxSignal® Ractopamine ELISA Test Kit', 'logoIcon.png', ''),
(193, 15, 3, 'MaxSignal® Salbutamol ELISA Test Kit', 'logoIcon.png', ''),
(194, 15, 3, 'MaxSignal® Salmonella ELISA Test Kit', 'logoIcon.png', ''),
(195, 15, 3, 'MaxSignal® Salmonella Strip Test Kit', 'logoIcon.png', ''),
(196, 15, 3, 'MaxSignal® Saxitoxin (PSP) ELISA Test Kit', 'logoIcon.png', ''),
(197, 15, 3, 'Maxsignal® Shrimp WSSV Detection Test Kit', 'logoIcon.png', ''),
(198, 15, 3, 'MaxSignal® Streptomycin ELISA Test Kit', 'logoIcon.png', ''),
(199, 15, 3, 'MaxSignal® Streptomycin ELISA Test Kit For Honey samples', 'logoIcon.png', ''),
(200, 15, 3, 'MaxSignal® Sulfadiazine ELISA Test Kit', 'logoIcon.png', ''),
(201, 15, 3, 'MaxSignal® Sulfamethazine ELISA Test Kit', 'logoIcon.png', ''),
(202, 15, 3, 'MaxSignal® Sulfamethoxazole ELISA Test Kit', 'logoIcon.png', ''),
(203, 15, 3, 'MaxSignal® Sulfaquinoxaline (SQX) ELISA Test Kit', 'logoIcon.png', ''),
(204, 15, 3, 'MaxSignal® Sulfonamide ELISA Test Kit', 'logoIcon.png', ''),
(205, 15, 3, 'MaxSignal® T-2 Toxin ELISA Test Kit', 'logoIcon.png', ''),
(206, 15, 3, 'MaxSignal® T-2 Toxin ELISA Test Kit - Rapid', 'logoIcon.png', ''),
(207, 15, 3, 'MaxSignal® Terbutaline ELISA Kit', 'logoIcon.png', ''),
(208, 15, 3, 'MaxSignal® Testosterone ELISA Kit', 'logoIcon.png', ''),
(209, 15, 3, 'MaxSignal® Tetracycline (TET) ELISA Test Kit', 'logoIcon.png', ''),
(210, 15, 3, 'MaxSignal® Total Aflatoxin ELISA Test Kit', 'logoIcon.png', ''),
(211, 15, 3, 'MaxSignal® Total Antibiotics in Milk Test Kit', 'logoIcon.png', ''),
(212, 15, 3, 'MaxSignal® Trenbolone ELISA Test Kit', 'logoIcon.png', ''),
(213, 15, 3, 'MaxSignal® Trifluralin ELISA Kit', 'logoIcon.png', ''),
(214, 15, 3, 'MaxSignal® Trimethoprim ELISA Test Kit', 'logoIcon.png', ''),
(215, 15, 3, 'MaxSignal® Tylosin ELISA Test Kit', 'logoIcon.png', ''),
(216, 15, 3, 'MaxSignal® Urea Assay Kit', 'logoIcon.png', ''),
(217, 15, 3, 'MaxSignal® Urea enzymatic Assay Test Kit', 'logoIcon.png', ''),
(218, 15, 3, 'MaxSignal® Zearalenone ELISA Test Kit', 'logoIcon.png', ''),
(219, 15, 3, 'MaxSignal® Zearalenone ELISA Test Kit - rapid', 'logoIcon.png', ''),
(220, 15, 3, 'MaxSignal® Zeranol ELISA Kit', 'logoIcon.png', ''),
(221, 15, 3, 'MaxSignal® Zilpaterol ELISA Test Kit', 'logoIcon.png', ''),
(222, 16, 3, 'RDS-1000 Strip Reader', 'logoIcon.png', ''),
(223, 16, 3, 'MaxSignal® Automated ELISA Station', 'logoIcon.png', ''),
(224, 16, 3, 'MaxSignal® 4302 Plate Reader', 'logoIcon.png', ''),
(225, 16, 3, 'EPSON TM-U220B 61ps Printer', 'logoIcon.png', ''),
(226, 17, 5, 'Vodonik-peroksid', 'logoIcon.png', ''),
(227, 17, 5, 'Natrijum-hidrosulfit', 'logoIcon.png', ''),
(228, 17, 5, 'Mravlja kiselina', 'logoIcon.png', ''),
(229, 17, 5, 'Sirćetna kiselina', 'logoIcon.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `sub_group`
--

CREATE TABLE `sub_group` (
  `sub_id` int(11) NOT NULL,
  `main_id` int(255) NOT NULL,
  `sub_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_group`
--

INSERT INTO `sub_group` (`sub_id`, `main_id`, `sub_name`) VALUES
(1, 1, 'PIGMENTI'),
(2, 1, 'PEARLESCENTNI PIGMENTI'),
(3, 1, 'CELULOZNA VLAKNA'),
(4, 1, 'EPOKSIDNE SMOLE'),
(5, 1, 'STEARATI'),
(6, 1, 'FILERI'),
(7, 1, 'ADITIVI'),
(8, 2, 'DIJETETSKA VLAKNA'),
(9, 2, 'SIRILA'),
(10, 2, 'ADITIVI'),
(11, 2, 'DRUGI DODACI'),
(12, 2, 'SREDSTVA ZA ODRŽAVANJE POGONA'),
(13, 2, 'HEMIKALIJE ZA TRETMAN VODE'),
(14, 3, 'Trakice za detekciju'),
(15, 3, 'ELISA testovi'),
(16, 3, 'Oprema'),
(17, 5, 'Hemikalije');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main_group`
--
ALTER TABLE `main_group`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `main_id` (`main_id`),
  ADD KEY `sub_id` (`sub_id`);

--
-- Indexes for table `sub_group`
--
ALTER TABLE `sub_group`
  ADD PRIMARY KEY (`sub_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main_group`
--
ALTER TABLE `main_group`
  MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `sub_group`
--
ALTER TABLE `sub_group`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`main_id`) REFERENCES `main_group` (`main_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`sub_id`) REFERENCES `sub_group` (`sub_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
