-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2018 at 02:34 PM
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
  `main_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `main_group`
--

INSERT INTO `main_group` (`main_id`, `main_name`) VALUES
(1, 'Gradjevina'),
(2, 'Prehrana'),
(3, 'Testovi'),
(4, 'Industrijski mirisi'),
(5, 'Bazna hemija'),
(6, 'Chemeter');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `main_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_picture` mediumblob,
  `product_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `sub_id`, `main_id`, `product_name`, `product_picture`, `product_description`) VALUES
(3, 1, 1, 'Pigment crni S318', NULL, ''),
(4, 1, 1, 'Pigment crni S330', NULL, ''),
(5, 1, 1, 'Pigment braon S660', NULL, ''),
(6, 1, 1, 'Pigment crveni S110', NULL, ''),
(7, 1, 1, 'Pigment crveni S130', NULL, ''),
(8, 1, 1, 'Pigment crveni S222', NULL, ''),
(9, 1, 1, 'Pigment žuti S930', NULL, ''),
(10, 1, 1, 'Pigment žuti S960', NULL, ''),
(11, 1, 1, 'Pigment hrom žuti 502', NULL, ''),
(12, 1, 1, 'Pigment molibdat oranž 207', NULL, ''),
(13, 1, 1, 'Pigment molibdat crveni 307', NULL, ''),
(14, 1, 1, 'Ultramarin plavi', NULL, ''),
(15, 1, 1, 'Pigment chrome oxide zeleni SGCM', NULL, ''),
(16, 1, 1, 'Titan dioksid CR-08', NULL, ''),
(17, 2, 1, 'Silver White Series', NULL, ''),
(18, 2, 1, 'Rainbow Series ', NULL, ''),
(19, 2, 1, 'Golden Series', NULL, ''),
(20, 2, 1, 'Metallic Series', NULL, ''),
(21, 2, 1, 'Coloring Series', NULL, ''),
(22, 2, 1, 'Diamond Series', NULL, ''),
(23, 2, 1, 'Chameleon Series', NULL, ''),
(24, 2, 1, 'Velvet Series', NULL, ''),
(25, 2, 1, 'Jade Series', NULL, ''),
(26, 3, 1, 'TECHNOCEL pure series', NULL, 'TECHNOCEL pure series'),
(27, 3, 1, 'Technocel 40', NULL, ''),
(28, 3, 1, 'Technocel 75', NULL, ''),
(29, 3, 1, 'Technocel 150', NULL, ''),
(30, 3, 1, 'Technocel 200G', NULL, ''),
(31, 3, 1, 'Technocel 1000', NULL, ''),
(32, 3, 1, 'Technocel 2500', NULL, ''),
(33, 3, 1, 'Technocel 2500-1', NULL, ''),
(34, 3, 1, 'TECHNOCEL technical series', NULL, 'TECHNOCEL technical series'),
(35, 3, 1, 'Technocel 75-1', NULL, ''),
(36, 3, 1, 'Technocel 165', NULL, ''),
(37, 3, 1, 'Technocel 500-1', NULL, ''),
(38, 3, 1, 'Technocel 1000-1', NULL, ''),
(39, 3, 1, 'Technocel 1000-1W', NULL, ''),
(40, 3, 1, 'TECHNOCEL 1004 series (grey recycling fibres)', NULL, 'TECHNOCEL 1004 series (grey recycling fibres)'),
(41, 3, 1, 'Technocel 1004-6L', NULL, ''),
(42, 3, 1, 'Technocel 1004-3N', NULL, ''),
(43, 3, 1, 'Technocel 1004-3Z', NULL, ''),
(44, 3, 1, 'Technocel 1004-7N', NULL, ''),
(45, 3, 1, 'TECHNOCEL DR (Dust Reducing)', NULL, 'TECHNOCEL DR (Dust Reducing)'),
(46, 3, 1, 'Technocel DR 500-1', NULL, ''),
(47, 3, 1, 'TECHNOCEL M series (softwood)', NULL, 'TECHNOCEL M series (softwood)'),
(48, 3, 1, 'Technocel HM 120', NULL, ''),
(49, 4, 1, 'Epoksidne smole', NULL, ''),
(50, 4, 1, 'Utvrđivači', NULL, ''),
(51, 5, 1, 'Kalcijum stearat', NULL, ''),
(52, 5, 1, 'Cink stearat', NULL, ''),
(53, 6, 1, 'Iokal', NULL, ''),
(54, 6, 1, 'Iotalk', NULL, ''),
(55, 7, 1, 'Na-heksametafosfat 68%', NULL, ''),
(56, 7, 1, 'Biocid CMT. 1-5SF / CMIT/ MIT', NULL, ''),
(57, 7, 1, 'Antipenušavac BIO', NULL, ''),
(58, 7, 1, 'Polydisp disp 35A', NULL, ''),
(59, 7, 1, 'Kalcijum formijat', NULL, ''),
(60, 8, 2, 'Text doc.', NULL, 'Text doc.'),
(61, 9, 2, 'PRIRODNO', NULL, ''),
(62, 9, 2, 'MIKROBIOLOŠKO ', NULL, ''),
(63, 9, 2, 'GMO', NULL, ''),
(64, 10, 2, 'E260 Sirćetna kiselina', NULL, ''),
(65, 10, 2, 'E281 Natrijum propionat', NULL, ''),
(66, 10, 2, 'E282 Kalcijum propionat', NULL, ''),
(67, 10, 2, 'E300 Askorbinska kiselina', NULL, ''),
(68, 10, 2, 'E325 Natrijum laktat ', NULL, ''),
(69, 10, 2, 'E327 Kalcijum laktat', NULL, ''),
(70, 10, 2, 'E330 Limunska kiselina', NULL, ''),
(71, 10, 2, 'E333 Kalcijum citrat (I) Dikalcijum citrat (II) Trikalcijum citrat (III)', NULL, ''),
(72, 10, 2, 'E406 Agar', NULL, ''),
(73, 10, 2, 'E509 Kalcijum hlorid', NULL, ''),
(74, 10, 2, 'E316 Natrijum izoaksorbat', NULL, ''),
(75, 10, 2, 'E322 Lecitini', NULL, ''),
(76, 10, 2, 'E331 Natrijum citrat (I), Dinatrijum citrat (II), Trinatrijum citrat (III)', NULL, ''),
(77, 10, 2, 'E332 Kalijum citrat (I), Trikalijum citrat (III)', NULL, ''),
(78, 10, 2, 'E338 Fosforna kiselina', NULL, ''),
(79, 10, 2, 'E471 Mono- I digliceridi masnih kiselina', NULL, ''),
(80, 10, 2, 'E579 Gvožđe (II) glukonat', NULL, ''),
(81, 10, 2, 'E585 Gvožđe (II) laktat', NULL, ''),
(82, 10, 2, 'E575 Glukono-delta-lakton', NULL, ''),
(83, 10, 2, 'E412 Guar guma', NULL, ''),
(84, 10, 2, 'E235 Natamicin', NULL, ''),
(85, 10, 2, 'E234 Nizin', NULL, ''),
(86, 10, 2, 'E224 Kalijum metabisulfit', NULL, ''),
(87, 10, 2, 'E223 Natrijev metabisulfit', NULL, ''),
(88, 10, 2, 'E202 Kalijum sorbat', NULL, ''),
(89, 10, 2, 'E1520 Propan-1,2-diol', NULL, ''),
(90, 10, 2, 'E450 Dinatrijum difosfat (I), Trinatrijum difosfat (II), Tetranatrijum difosfat (III), Diklaijum difosfat (IV), Tetrakalijum difosfat (V), Dikalcijum difosfat (VI), Kalcijjum dihidrogendifosfat (VII)', NULL, ''),
(91, 10, 2, 'E270 Mlečna kiselina', NULL, ''),
(92, 10, 2, 'E211 Natrijum benzoat', NULL, ''),
(93, 10, 2, 'E210 Benzoeva kiselina', NULL, ''),
(94, 10, 2, 'E500 Natrijum karbonat (I), Natrijum hidrogenkarbonat (II), Natrijum seskuikarbonat (III)', NULL, ''),
(95, 10, 2, 'E262 Natrijum acetat (I), Natrijum hidrogenacetat', NULL, ''),
(96, 10, 2, 'E576 Natrijum glukonat', NULL, ''),
(97, 10, 2, 'E452 Natrijum polifosfat (I), Kalijum polifosfat (II), Natrijumkalcijum polofosfat (III), Kalcijum polifosfat (IV)', NULL, ''),
(98, 10, 2, 'E200 Sorbinska kiselina', NULL, ''),
(99, 10, 2, 'E420 Sorbitol (I), Sorbitolni sirup (II)', NULL, ''),
(100, 10, 2, 'E415 Ksantan-guma', NULL, ''),
(101, 11, 2, 'ENZIMI ZA PEKARSTVO, PIVARSTVO, VINARSTVO', NULL, ''),
(102, 11, 2, 'Vanilin', NULL, ''),
(103, 11, 2, 'Etilvanilin', NULL, ''),
(104, 11, 2, 'Antipenušavac (prehrambeni kvalitet)', NULL, ''),
(105, 11, 2, 'Elatin (240,180 & bluma)', NULL, ''),
(106, 11, 2, 'Arome', NULL, ''),
(107, 12, 2, 'Kaustična soda (kuglice, ljuspice, rastvor 50%)', NULL, ''),
(108, 12, 2, 'Dezifektantni', NULL, ''),
(109, 12, 2, 'Sredstva za čišćenje', NULL, ''),
(110, 12, 2, 'Hlorovodonična kiselina (33%)', NULL, ''),
(111, 12, 2, 'Natrijum hipohlorid', NULL, ''),
(112, 12, 2, 'Vodonik peroksid (rastvor 35%, 50%)', NULL, ''),
(113, 13, 2, 'DAP (DI-AMONIJUM) FOSFAT', NULL, ''),
(114, 13, 2, 'Floukulanti & koagulanti', NULL, ''),
(115, 13, 2, 'PAC (Polielektroliti)', NULL, ''),
(116, 14, 3, 'AuroFlow™ Aflatoxin M1 Strip Test Kit', NULL, ''),
(117, 14, 3, 'AuroFlow™ Beta-Lactam Strip Test Kit', NULL, ''),
(118, 14, 3, 'AuroFlow™ BT Combo Strip Test Kit', NULL, ''),
(119, 14, 3, 'AuroFlow™ BTS Combo Strip Test Kit', NULL, ''),
(120, 14, 3, 'AuroFlow™ Fluoroquinolone Strip Test Kit for Meat', NULL, ''),
(121, 14, 3, 'AuroFlow™ Fluoroquinolone Strip Test Kit for Milk', NULL, ''),
(122, 14, 3, 'AuroFlow™ Melamine Strip Test Kit', NULL, ''),
(123, 14, 3, 'AuroFlow™ Ractopamine Strip Test Kit', NULL, ''),
(124, 14, 3, 'AuroFlow™ RC Combo Strip Test Kit', NULL, ''),
(125, 14, 3, 'AuroFlow™ Sulfonamide Strip Test Kit', NULL, ''),
(126, 14, 3, 'AuroFlow™ Tetracycline Strip Test Kit', NULL, ''),
(127, 15, 3, 'MaxSignal® Aflatoxin B1 ELISA Test Kit - Rapid', NULL, ''),
(128, 15, 3, 'MaxSignal® Aflatoxin M1 ELISA Test Kit', NULL, ''),
(129, 15, 3, 'MaxSignal® Ammonia Assay Kit', NULL, ''),
(130, 15, 3, 'MaxSignal® Ascorbic Acid Assay Kit', NULL, ''),
(131, 15, 3, 'MaxSignal® Automated ELISA Station', NULL, ''),
(132, 15, 3, 'MaxSignal® Benzo[a]pyrene (BaP) ELISA Test Kit', NULL, ''),
(133, 15, 3, 'MaxSignal® Beta-Agonist ELISA Test Kit', NULL, ''),
(134, 15, 3, 'MaxSignal® Beta-Lactam ELISA Test Kit', NULL, ''),
(135, 15, 3, 'MaxSignal® Beta-Lactamase Test Pad Kit', NULL, ''),
(136, 15, 3, 'MaxSignal® Boldenone ELISA Test Kit', NULL, ''),
(137, 15, 3, 'MaxSignal® Brombuterol ELISA Kit', NULL, ''),
(138, 15, 3, 'MaxSignal® Bupivacain ELISA Test Kit', NULL, ''),
(139, 15, 3, 'MaxSignal® Carbendazim ELISA Test Kit', NULL, ''),
(140, 15, 3, 'MaxSignal® Ceftiofur ELISA Test Kit', NULL, ''),
(141, 15, 3, 'MaxSignal® Chloramphenicol (CAP) ELISA Test Kit', NULL, ''),
(142, 15, 3, 'MaxSignal® Chlortetracycline ELISA Test Kit', NULL, ''),
(143, 15, 3, 'MaxSignal® Cimaterol ELISA Test Kit', NULL, ''),
(144, 15, 3, 'MaxSignal® Ciprofloxacin ELISA Test Kit', NULL, ''),
(145, 15, 3, 'MaxSignal® Clenbuterol ELISA Test Kit', NULL, ''),
(146, 15, 3, 'MaxSignal® Clonidine ELISA Test Kit', NULL, ''),
(147, 15, 3, 'MaxSignal® Colistin ELISA Test Kit', NULL, ''),
(148, 15, 3, 'MaxSignal® Crystal Violet/LCV ELISA Test Kit', NULL, ''),
(149, 15, 3, 'MaxSignal® Cyproheptadine ELISA Test Kit', NULL, ''),
(150, 15, 3, 'MaxSignal® Dairy Product Pasteurization Verification Kit', NULL, ''),
(151, 15, 3, 'MaxSignal® Deoxynivalenol (DON) ELISA Test Kit', NULL, ''),
(152, 15, 3, 'MaxSignal® Deoxynivalenol (DON) ELISA Test Kit - Rapid', NULL, ''),
(153, 15, 3, 'MaxSignal® Diazepam ELISA Test Kit', NULL, ''),
(154, 15, 3, 'MaxSignal® Diethylstilbestrol (DES) ELISA Test Kit', NULL, ''),
(155, 15, 3, 'MaxSignal® Domoic Acid (ASP) ELISA Test Kit ', NULL, ''),
(156, 15, 3, 'MaxSignal® Doxycycline ELISA Kit', NULL, ''),
(157, 15, 3, 'MaxSignal® E. coli O157 Strip Test Kit', NULL, ''),
(158, 15, 3, 'MaxSignal® E. coli O157:H7 ELISA Test Kit', NULL, ''),
(159, 15, 3, 'MaxSignal® Enrofloxacin ELISA Test Kit', NULL, ''),
(160, 15, 3, 'MaxSignal® Erythromycin ELISA Test Kit', NULL, ''),
(161, 15, 3, 'MaxSignal® Florfenicol ELISA Test Kit', NULL, ''),
(162, 15, 3, 'MaxSignal® Flumequine ELISA Test Kit', NULL, ''),
(163, 15, 3, 'MaxSignal® Fluoroquinolone ELISA Kit', NULL, ''),
(164, 15, 3, 'MaxSignal® Fructose Assay Kit', NULL, ''),
(165, 15, 3, 'MaxSignal® Fructose/Glucose Assay Kit', NULL, ''),
(166, 15, 3, 'MaxSignal® Fumonisin ELISA Test Kit', NULL, ''),
(167, 15, 3, 'MaxSignal® Furaltadone (AMOZ) ELISA Test Kit', NULL, ''),
(168, 15, 3, 'MaxSignal® Furazolidone (AOZ) ELISA Test Kit', NULL, ''),
(169, 15, 3, 'MaxSignal® Gentamicin ELISA Test Kit', NULL, ''),
(170, 15, 3, 'MaxSignal® Glucose Assay Kit', NULL, ''),
(171, 15, 3, 'MaxSignal® Histamine enzymatic Assay Kit', NULL, ''),
(172, 15, 3, 'MaxSignal® Histamine enzymatic Assay Kit for Fish Sauce', NULL, ''),
(173, 15, 3, 'MaxSignal® Mabuterol ELISA Kit', NULL, ''),
(174, 15, 3, 'MaxSignal® Malachite Green Test Kit (Water Sample)', NULL, ''),
(175, 15, 3, 'MaxSignal® Malachite Green/LMG ELISA Test Kit', NULL, ''),
(176, 15, 3, 'MaxSignal® Melamine ELISA Test Kit', NULL, ''),
(177, 15, 3, 'MaxSignal® Melamine enzymatic Assay Kit', NULL, ''),
(178, 15, 3, 'MaxSignal® Methyltestosterone (MTS) ELISA Kit', NULL, ''),
(179, 15, 3, 'MaxSignal® Monensin ELISA Test Kit', NULL, ''),
(180, 15, 3, 'MaxSignal® Nalidixic Acid ELISA Test Kit', NULL, ''),
(181, 15, 3, 'MaxSignal® Nandrolone ELISA Test Kit', NULL, ''),
(182, 15, 3, 'MaxSignal® Neomycin ELISA Test Kit', NULL, ''),
(183, 15, 3, 'MaxSignal® Nitrate/Nitrite Assay Kit', NULL, ''),
(184, 15, 3, 'MaxSignal® Nitrofurantoin (AHD) ELISA Kit', NULL, ''),
(185, 15, 3, 'MaxSignal® Nitrofurazone (SEM) ELISA Kit', NULL, ''),
(186, 15, 3, 'MaxSignal® No-Mel Total Protein Assay Test Kit', NULL, ''),
(187, 15, 3, 'MaxSignal® Norfloxacin ELISA Test Kit', NULL, ''),
(188, 15, 3, 'MaxSignal® Ochratoxin A ELISA Test Kit', NULL, ''),
(189, 15, 3, 'MaxSignal® Ochratoxin A ELISA Test Kit - Rapid', NULL, ''),
(190, 15, 3, 'MaxSignal® Okadaic Acid (DSP) ELISA Test Kit', NULL, ''),
(191, 15, 3, 'MaxSignal® Oxytetracycline ELISA Kit', NULL, ''),
(192, 15, 3, 'MaxSignal® Ractopamine ELISA Test Kit', NULL, ''),
(193, 15, 3, 'MaxSignal® Salbutamol ELISA Test Kit', NULL, ''),
(194, 15, 3, 'MaxSignal® Salmonella ELISA Test Kit', NULL, ''),
(195, 15, 3, 'MaxSignal® Salmonella Strip Test Kit', NULL, ''),
(196, 15, 3, 'MaxSignal® Saxitoxin (PSP) ELISA Test Kit', NULL, ''),
(197, 15, 3, 'Maxsignal® Shrimp WSSV Detection Test Kit', NULL, ''),
(198, 15, 3, 'MaxSignal® Streptomycin ELISA Test Kit', NULL, ''),
(199, 15, 3, 'MaxSignal® Streptomycin ELISA Test Kit For Honey samples', NULL, ''),
(200, 15, 3, 'MaxSignal® Sulfadiazine ELISA Test Kit', NULL, ''),
(201, 15, 3, 'MaxSignal® Sulfamethazine ELISA Test Kit', NULL, ''),
(202, 15, 3, 'MaxSignal® Sulfamethoxazole ELISA Test Kit', NULL, ''),
(203, 15, 3, 'MaxSignal® Sulfaquinoxaline (SQX) ELISA Test Kit', NULL, ''),
(204, 15, 3, 'MaxSignal® Sulfonamide ELISA Test Kit', NULL, ''),
(205, 15, 3, 'MaxSignal® T-2 Toxin ELISA Test Kit', NULL, ''),
(206, 15, 3, 'MaxSignal® T-2 Toxin ELISA Test Kit - Rapid', NULL, ''),
(207, 15, 3, 'MaxSignal® Terbutaline ELISA Kit', NULL, ''),
(208, 15, 3, 'MaxSignal® Testosterone ELISA Kit', NULL, ''),
(209, 15, 3, 'MaxSignal® Tetracycline (TET) ELISA Test Kit', NULL, ''),
(210, 15, 3, 'MaxSignal® Total Aflatoxin ELISA Test Kit', NULL, ''),
(211, 15, 3, 'MaxSignal® Total Antibiotics in Milk Test Kit', NULL, ''),
(212, 15, 3, 'MaxSignal® Trenbolone ELISA Test Kit', NULL, ''),
(213, 15, 3, 'MaxSignal® Trifluralin ELISA Kit', NULL, ''),
(214, 15, 3, 'MaxSignal® Trimethoprim ELISA Test Kit', NULL, ''),
(215, 15, 3, 'MaxSignal® Tylosin ELISA Test Kit', NULL, ''),
(216, 15, 3, 'MaxSignal® Urea Assay Kit', NULL, ''),
(217, 15, 3, 'MaxSignal® Urea enzymatic Assay Test Kit', NULL, ''),
(218, 15, 3, 'MaxSignal® Zearalenone ELISA Test Kit', NULL, ''),
(219, 15, 3, 'MaxSignal® Zearalenone ELISA Test Kit - rapid', NULL, ''),
(220, 15, 3, 'MaxSignal® Zeranol ELISA Kit', NULL, ''),
(221, 15, 3, 'MaxSignal® Zilpaterol ELISA Test Kit', NULL, ''),
(222, 16, 3, 'RDS-1000 Strip Reader', NULL, ''),
(223, 16, 3, 'MaxSignal® Automated ELISA Station', NULL, ''),
(224, 16, 3, 'MaxSignal® 4302 Plate Reader', NULL, ''),
(225, 16, 3, 'EPSON TM-U220B 61ps Printer', NULL, ''),
(226, 17, 5, 'Vodonik-peroksid', NULL, ''),
(227, 17, 5, 'Natrijum-hidrosulfit', NULL, ''),
(228, 17, 5, 'Mravlja kiselina', NULL, ''),
(229, 17, 5, 'Sirćetna kiselina', NULL, '');

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
(10, 2, 'ADITIVI-prehrana'),
(11, 2, 'DRUGI DODACI'),
(12, 2, 'SREDSTVA ZA DEZINFEKCIJU I ODRŽAVANJE POGONA'),
(13, 2, 'HEMIKALIJE ZA TRETMAN VODE'),
(14, 3, 'Trakice za određivanje ostataka rezidua'),
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
