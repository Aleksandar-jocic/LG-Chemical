-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 23, 2018 at 03:12 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

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
  `product_description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `sub_id`, `main_id`, `product_name`, `product_picture`, `product_description`) VALUES
(3, 1, 1, 'Pigment crni S318', 'logoIcon.png', ''),
(4, 1, 1, 'Pigment crni S330', 'logoIcon.png', ''),
(5, 1, 1, 'Pigment braon S660', 'logoIcon.png', ''),
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
(64, 10, 2, 'E260 Sirćetna kiselina', 'logoIcon.png', 'Prirodno sredstvo za konzervisanje i regulator kiselosti ukusa.\r\n<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keks, kolaai, testenine, brzo smrznuti i srodni proizvodi, mesa stoke za klanje, divljči i peradi, puding, kreme, kuvani sirevi, skuta, sok od grožđa, sterilizovano i pasterizovano voće i povrće, marinade od riba, ulja i masti, osim deviianskih i maslinovog ulja, posebno pripremljena ulja i masti za kuvanje i/ili prženje ili za pripremu umaka, bombonski proizvodi, masa za punjenje, prelivi, bezalkoholna osvežavajuća pića, tečni koncentrat čaja, sve vrste piva, supe, koncentrati za supe , koncentrati za umake, dodaci jelima i srodni proizvodi, začini, ekstrakti začina i začinske mešavine, osim svežih začina Čips i flips, ekspandirana žita, mešavine i ostali snack-proizvodi, sve vrste senfa, hrana za dojenčad i malu decu.'),
(65, 10, 2, 'E281 Natrijum propionat', 'logoIcon.png', 'Sredstvo za konzervisanje. Natrijumova so propionske kiseline. Smatra se da uzrokuje glavobolje (migrene).\r\n<br>\r\nDOPUŠTENA UPOTREBA pakovani (trajni) hleb, pakovani narezani hleb pakovani proizvodi od keksa i kolača s aktivnošću vode >0,65, hleb snižene energetske vrednosti, polupečeni i pakovani hleb, pakovano pecivo, listovi za savijače (sveži), krompirovi njoki, pakovani proizvodi od keksa i kolača s aktivnošću vode >0,65 sir i proizvodi od sira (samo za površinsku obradu ) puding - gotov proizvod'),
(66, 10, 2, 'E282 Kalcijum propionat', 'logoIcon.png', 'Sredstvo za konzervisanje. Kalcijumova so propionske kiseline. Smatra se da uzrokuje glavobolje (migrene). <br>\r\nDOPUŠTENA UPOTREBA pakovani (trajni) hleb, pakovani narezani hleb pakovani proizvodi od keksa i kolača s aktivnošću vode >0,65, hleb snižene energetske vrednosti, polupečeni i pakovani hleb, pakovano pecivo, listovi za savijače (sveži), krompirovi njoki, pakovani proizvodi od keksa i kolača s aktivnošću vode >0,65 sir i proizvodi od sira (samo za površinsku obradu ) puding - gotov proizvod'),
(67, 10, 2, 'E300 Askorbinska kiselina', 'logoIcon.png', 'Prirodni antioksidans (vitamin C). Vitamin C je neophodan za pravilan rast i razvoj, za zdrave zube i desni, kosti, kožu i krvne žile, te za apsorpciju gvožđa u krv\r\nSluži kao antioksidans, stabilizator boje i sredstvo za tretiranje brašna. Sprečava nastajanje kancerogenih nitrozamina. Namirnicama se sve češće dodaje iz tehnoloških razloga (npr. pospješuje vezivanje vode u testu za hleb, olakšava mašinsku obradu testa, pospešuje delovanje soli za salamurenje mesnih proizvoda, stabilizira vino, pivo, sokove). Dopuštena je upotreba u ekološkoj proizvodnji namirnica. Može se proizvesti tehnikom genetskog inženjerstva, ali procena uticaja tako dobijene askorbinske kiseline još nije dovršena.\r\n<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keksi, kolači, testenina, brzo smrznuti i srodni proizvodi salamureno i brzo salamureno meso instant proizvodi na bazi mleka i proizvodi koji sadrže masti džem, žele, marmelada i pekmez i slični voćni namazi uključujući i niskokalorične proizvode i zaslađeni kesten pire, extra džem i extra žele, voćni sok, nektar od voća i povrća, sterilizovano i pasterizovano voće i povrće, smrznuto i duboko smrznuto, neprerađeno voće i povrće, voćni kompoti , citrus baze, voćni sirup, umaci (kečap) i slični proizvodi sveža riba, rakovi i mekušci i njihovi smrznuti proizvodi margarini, emulzirane masti, majoneza, umaci, prelivi, salate bombonski proizvodi, masa za punjenje, prelivi alkoholna pića bezalkoholna osvježavajuća pića vino pivo koncentrati za supe i umake, dodaci jelima samo ekstrakti začina biljni čajevi, voćni čajevi, instant čajevi prašak za puding, kreme, deserte i srodne proizvode čips i flips, ekspandirana žita, mešavine i ostali snack-proizvodi hrana za dojenčad i malu decu: pića na osnovi žita i povrća, sokovi i dečja hrana, hrana na bazi žita koja sadrži masti, uključujući kekse, piškote i prepečenac dodaci prehrani'),
(68, 10, 2, 'E325 Natrijum laktat ', 'logoIcon.png', 'Prirodno sredstvo za regulisanje kiselosti, emulgatorska so i učvršćivač. Natrijumova so mlečne kiseline. Može biti i životinjskog porekla.\r\nZbog nedovoljno razvijenog probavnog sistema kod novorođenčadi natrijum laktat D(-) može izazvati smetnje u razmeni materija. Dečja hrana sme sadržavati samo neškodljivi oblik (L+). Pojačava antioksidativno delovanje drugih aditiva. Smatra se bezopasnim.\r\n<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keksi, kolači, testenina, brzo smrznuti i srodni proizvodi mesa stoke za klanje, divljači i peradi pavlaka, topljeni sir i proizvodi nektar od voća i povrća, džem, žele, marmelada i pekmez i slični voćni namazi uključujući niskokalorične proizvode, extra džem i extra žele, sterilizovano i pasterizovano voće i povrće masa za punjenje, prelivi slatkiša bezalkoholna osvježavajuća pića koncentrati za supe i umake, dodaci jelima začini, ekstrakti začina i začinske mešavine, osim svežih začina prašak za puding, kreme, deserte i srodne proizvode sve vrste senfa hrana malu decu'),
(69, 10, 2, 'E327 Kalcijum laktat', 'logoIcon.png', 'Prirodno sredstvo za regulisanje kiselosti, emulgatorska so i učvršćivač. Kalcijumova so mlečne kiseline.<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keksi, kolači, testenina, brzo smrznuti i srodni proizvodi mesa stoke za klanje, divljači i peradi pavlaka, topljeni sir i proizvodi nektar od voća i povrća, džem, žele, marmelada i pekmez i slični voćni namazi uključujući niskokalorične proizvode, extra džem i extra žele, sterilizovano i pasterizovano voće i povrće masa za punjenje, prelivi slatkiša bezalkoholna osvježavajuća pića koncentrati za supe i umake, dodaci jelima začini, ekstrakti začina i začinske mešavine, osim svežih začina prašak za puding, kreme, deserte i srodne proizvode sve vrste senfa hrana za dojenčad i malu decu'),
(70, 10, 2, 'E330 Limunska kiselina', 'logoIcon.png', 'Prirodni metabolit u ljudskom organizmu. Proizvodi se sintetski i služi kao sredstvo za kiseljenje.\r\nPojačava antioksidativno dejstvo drugih aditiva. Sme se upotrebljavati u ekološkoj proizvodnji namirnica. Može se proizvesti tehnikom genetskog inženjerstva, ali još nije moguće dati konačnu procenu učinaka tako proizvedene limunske kiseline. Osobe alergične na plesni mogu imati problema s industrijski proizvedenom limunskom kiselinom zbog spora plesni koje ona može sadržavati.\r\n<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keksi, kolači, testenina, brzo smrznuti i srodni proizvodi mesa stoke za klanje, divljači i peradi kondenzovano i evaporirano mleko, pavlaka, sladoled, puding, topljeni sir i proizvodi, pasterizovano i sterilizovano mlieko UHT obrađeno kozje mlijeko džem, žele, marmelada i pekmez i slični proizvodi voća i povrća i dehidrisani proizvodi, umaci (uključujući kečap), voćni namazi uključujući niskokalorične proizvode i zaslađeni kesten pire, extra džem i extra žele voćni sokovi nektar od voća i povrća sterilizovano i pasterizovano voće i povrće, smrznuto i duboko smrznuto neprerađeno voće i povrće, voćni kompot, citrus baze i voćni sirupi trajni i polutrajni riblji proizvodi, sveža riba, rakovi i mekušci i njihovi smrznuti proizvodi ulja i masti, osim devičanskih i maslinovog ulja, posebno pripremljena ulja i masti za kuvanje i/ili prženje ili za pripremu umaka, margarini, emulgovane masti, majonezi, umaci, prelivi salate kakao, čokolada bombonski proizvodi, masa za punjenje, prelivi alkoholna pića bezalkoholna osvježavajuća pića prašci za pića bazirana na voću, prašak za instant čaj vino koncentrati za supe i umake, dodaci jelima začini, ekstrakti začina i začinske mešavine, osim svežih začina biljni čajevi (rinfuza, filter vrećice), voćni čajevi (rinfuza, filter vrećice), instant čajevi prašak za pecivo prašak za puding, kreme, deserte i srodne proizvode čips i flips, ekspandirana žita, prženi plodovi i semenke, mešavine i ostali snack-proiz'),
(71, 10, 2, 'E333 Kalcijum citrat (I) Dikalcijum citrat (II) Trikalcijum citrat (III)', 'logoIcon.png', 'Sredstva za regulisanje kiselosti, stabilizatori i antioksidansi na biljnoj osnovi.\r\nDopušteni su u ekološkoj proizvodnji namirnica. Mogu se proizvesti tehnikom genetskog inženjerstva. Smatraju se bezopasnima u malim količinama.\r\n<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keksi, kolači, testenina, brzo smrznuti i srodni proizvodi mesa stoke za klanje, divljači i peradi kondenzovano i evaporirano mlieko, pavlaka, sladoled, puding, topljeni sir i proizvodi, pasterizovano i sterilizovano mleko UHT obrađeno kozje mleko džem, žele, marmelada i pekmez i slični proizvodi voća i povrća i dehidrisani proizvodi, umaci (uključujući kečap), voćni namazi uključujući niskokalorične proizvode i zaslađeni kesten pire, extra džem i extra žele voćni sokovi nektar od voća i povrća sterilizovano i pasterizovano voće i povrće, smrznuto i duboko smrznuto neprerađeno voće i povrće, voćni kompot, citrus baze i voćni sirupi trajni i polutrajni riblji proizvodi, sveža riba, rakovi i mekušci i njihovi smrznuti proizvodi ulja i masti, osim devičanskih i maslinovog ulja, posebno pripremljena ulja i masti za kuvanje i/ili prženje ili za pripremu umaka, margarini, emulzirane masti, majoneza, umaci, prelivi salate kakao, čokolada bombonski proizvodi, masa za punjenje, prelivi alkoholna pića bezalkoholna osvježavajuća pića prašci za pića bazirana na voću, prašak za instant čaj vino koncentrati za supe i umake, dodaci jelima začini, ekstrakti začina i začinske mešavine, osim svežih začina biljni čajevi (rinfuza, filter vrećice), voćni čajevi (rinfuza, filter vrećice), instant čajevi prašak za pecivo prašak za puding, kreme, deserte i srodne proizvode čips i flips, ekspandirana žita, prženi plodovi i semenke, mešavine i ostali snack-proizvodi sve vrste senfa praškasta umetna sladila i umetna sladila u tabletama hrana za dojenčad i malu decu dodaci prehrani'),
(72, 10, 2, 'E406 Agar', 'logoIcon.png', 'Prirodni biljni zgušnjivač, sredstvo za želiranje i menjanje konzistencije. Neprobavljiva supstanca koja pospešuje probavu.\r\nDopušten u ekološkoj proizvodnji namirnica. Smatra se neškodljivim. Može omesti resorpciju nekih mineralnih supstanci u organizmu, a velike doze deluju laksativno. Česta upotreba nije preporučljiva.\r\n<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keksi, kolači, testenina, brzo smrznuti i srodni proizvodi kuvane, polutrajne i obarene kobasice i konzerve pasterizovana pavlaka - obično, aromatizovani jogurt i kiselo mleko s dodacima, sladoled i puding, pavlaka i šlag pena, tučena pavlaka, jogurt s dodacima, mlečni napici džem, žele, marmelada i pekmez i drugi slični voćni namazi uključujući i niskokalorične proizvode (osim extra džema i extra želea), punjene masline majonez, umaci, prelivi, salate bombonski proizvodi, masa za punjenje, prelivi bezalkoholna osvježavajuća pića supe, koncentrati za supe i umake, dodaci jelima prašak za puding, kreme, deserte i srodne proizvode flips, ekspandirana žita, mešavine i ostali snack-proizvodi sve vrste senfa dodaci prehrani'),
(73, 10, 2, 'E509 Kalcijum hlorid', 'logoIcon.png', 'Sredstvo za pojačavanje ukusa, supstanca za učvršćivanje proizvoda od voća i povrća. Smatra se bezopasnim.<br>\r\nDOPUŠTENA UPOTREBA svi keksi, kolači i srodni proizvodi tvrdi, polutvrdi, meki i sveži sirevi sterilizovano voće i povrće, džem, voćni žele (osim extra džema i extra želea), marmelada i pekmez i drugi slični voćni namazi uključujući niskokalorične proizvode, voćni kompot (osim od jabuke ) bombonski proizvodi, masa za punjenje, prelivi bezalkoholna osvježavajuća pića'),
(74, 10, 2, 'E316 Natrijum izoaksorbat', 'logoIcon.png', 'Natrijumova so izoaskorbinske kiseline.\r\nSintetički antioksidans i sredstvo za zadržavanje boje. Ima neznatano vitaminsko dejstvo. Postoji sumnja da u organizmu ometa resorpciju prirodnog vitamina C (E300).\r\n<br>\r\nDOPUŠTENA UPOTREBA salamureni proizvodi, konzervisani proizvodi trajni i polutrajni riblji proizvodi, smrznute ribe s crvenom kožom '),
(75, 10, 2, 'E322 Lecitini', 'logoIcon.png', 'Prirodni antioksidansi, emulgatori i sredstva za tretiranje brašna.\r\nSmatra se da sprečavaju nakupljanje holesterola. Proizvode se uglavnom iz soje, suncokreta i uljane repice. Mogu se proizvesti iz genetski promenjene soje, ali još nije moguće dati konačnu procenu uticaja tako dobijenih lecitina. Dopuštena upotreba u ekološkoj proizvodnji namirnica. Smatraju se bezopasnima.\r\n<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keksi, kolači, testenina, brzo smrznuti i srodni proizvodi kuvane, polutrajne i obarene kobasice i konzerve instant proizvod na bazi mleka emulzirana i neemulzirana ulja i masti različite namene, osim devičanskih ulja i maslinovog ulja, margarin, zamene ili mlečnim proizvodima slični proizvodi s mlečnim delovima ili bez njih kakao, čokolada i proizvodi, masa za punjenje, prelivi, bombonski proizvodi bezalkoholna osvežavajuća pića supe, koncentrati za supe , koncentrati za umake, dodaci jelima i srodni proizvodi instant čajevi prašak za puding, kreme, deserte i srodne proizvode flips, ekspandirana žita, mešavine i ostali snack-proizvodi hrana za dojenčad i malu decu biskviti i prepečenac, hrana na bazi žita i dečja hrana dodaci prehrani '),
(76, 10, 2, 'E331 Natrijum citrat (I), Dinatrijum citrat (II), Trinatrijum citrat (III)', 'logoIcon.png', 'Sintetska sredstva za kiseljenje, stabilizatori i antioksidansi. Natrijumove soli limunske kiseline.<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keksi, kolači, testenina, brzo smrznuti i srodni proizvodi mesa stoke za klanje, divljači i peradi kondenzovano i evaporirano mleko, pavlaka, sladoled, puding, topljeni sir i proizvodi, pasterizovano i sterilizovano mlieko UHT obrađeno kozje mlijeko džem, žele, marmelada i pekmez i slični proizvodi voća i povrća i dehidrisani proizvodi, umaci (uključujući kečap), voćni namazi uključujući niskokalorične proizvode i zaslađeni kesten pire, extra džem i extra žele voćni sokovi nektar od voća i povrća sterilizovano i pasterizovano voće i povrće, smrznuto i duboko smrznuto neprerađeno voće i povrće, voćni kompot, citrus baze i voćni sirupi trajni i polutrajni riblji proizvodi, sveža riba, rakovi i mekušci i njihovi smrznuti proizvodi ulja i masti, osim devičanskih i maslinovog ulja, posebno pripremljena ulja i masti za kuvanje i/ili prženje ili za pripremu umaka, margarini, emulgovane masti, majonezi, umaci, prelivi salate kakao, čokolada bombonski proizvodi, masa za punjenje, prelivi alkoholna pića bezalkoholna osvježavajuća pića prašci za pića bazirana na voću, prašak za instant čaj vino koncentrati za supe i umake, dodaci jelima '),
(77, 10, 2, 'E332 Kalijum citrat (I), Trikalijum citrat (III)', 'logoIcon.png', 'Sredstva za regulisanje kiselosti, stabilizatori i antioksidans na biljnoj osnovi.\r\nJedinjenje kalijuma i limunske kiseline. Još nije moguće dati konačnu procenu delovanja kalijum i trikalijum citrata proizvedenog tehnikom genetskog inženjerstva. Smatraju se bezopasnima.\r\n<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keksi, kolači, testenina, brzo smrznuti i srodni proizvodi mesa stoke za klanje, divljači i peradi kondenzovano i evaporirano mleko, pavlaka, sladoled, puding, topljeni sir i proizvodi, pasterizovano i sterilizovano mlieko UHT obrađeno kozje mlijeko džem, žele, marmelada i pekmez i slični proizvodi voća i povrća i dehidrisani proizvodi, umaci (uključujući kečap), voćni namazi uključujući niskokalorične proizvode i zaslađeni kesten pire, extra džem i extra žele voćni sokovi nektar od voća i povrća sterilizovano i pasterizovano voće i povrće, smrznuto i duboko smrznuto neprerađeno voće i povrće, voćni kompot, citrus baze i voćni sirupi trajni i polutrajni riblji proizvodi, sveža riba, rakovi i mekušci i njihovi smrznuti proizvodi ulja i masti, osim devičanskih i maslinovog ulja, posebno pripremljena ulja i masti za kuvanje i/ili prženje ili za pripremu umaka, margarini, emulgovane masti, majonezi, umaci, prelivi salate kakao, čokolada bombonski proizvodi, masa za punjenje, prelivi alkoholna pića bezalkoholna osvežavajuća pića prašci za pića bazirana na voću, prašak za instant čaj vino koncentrati za supe i umake, dodaci jelima začini, ekstrakti začina i začinske mešavine, osim svežih začina biljni čajevi (rinfuza, filter vrećice), voćni čajevi (rinfuza, filter vrećice), instant čajevi prašak za pecivo prašak za puding, kreme, deserte i srodne proizvode čips i flips, ekspandirana žita, prženi plodovi i semenke, mešavine i ostali snack-proizvodi sve vrste senfa praškasta umetni zaslađivači i umetn zaslađivači u tabletama hrana za dojenčad i malu decu dodaci prehrani '),
(78, 10, 2, 'E338 Fosforna kiselina', 'logoIcon.png', 'Sredstvo za regulisanje kiselosti i antioksidans.\r\nDobija se iz fosfatnih ruda. Uzimanje fosfata u velikim količinama može uticati na smanjenje koštane mase i stvaranje kamenca. Velike doze mogu omesti resorpciju kalcijuma, magnezijuma i gvožđa u organizmu, i uzrokovati kalcifikaciju mekih tkiva u organizmu, posebno bubrega. Fosfati se dovode u vezu s hiperaktivnošću i poremećajem koncentacije kod dece. Česta upotreba nije preporučljiva.\r\n<br>\r\nDOPUŠTENA UPOTREBA kandirano voće, voćni pripravci sportski napici hrana za dojenčad i malu decu '),
(79, 10, 2, 'E471 Mono- I digliceridi masnih kiselina', 'logoIcon.png', 'Prirodni emulgatori i stabilizatori, sredstva za homogenizaciju masti i vode, materije protiv penjenja.\r\nMogu biti biljnog ili životinjskog porekla. Mogu se proizvesti iz genetski promenjenog kukuruza ili soje, ali još nije moguća konačna procena delovanja tako proizvedenih masnih kiselina. Smatraju se bezopasnima.\r\n<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keksi, kolači, testenina, brzo smrznuti i srodni proizvodi kuvane, polutrajne i obarene kobasice i konzerve sladoled, pavlaka, pasterizovana pavlaka obično, puding, ostali proizvodi, pripravci sira extra džemovi i extra želei, džemovi, želei i marmelade ulja i masti, osim devičanskih i maslinovog ulja,posebno pripremljena ulja i masti za kuvanje i/ili prženje ili za pripremu umaka, zamene ili mlečnim proizvodima slični proizvodi sa ili bez mlečnih delova, majoneza, margarin i emulzirane masti, umaci, prelivi, salate kakao, čokolada i proizvodi, masa za punjenje, prelivi, bombonski proizvodi bezalkoholna osvežavajuća pića supe, koncentrati za supe, koncetrati za umake, dodaci jelima i srodni proizvodi praškasti pripravci kafe i kafovine za tople i hladne napitke sveži i suvi kvasac prašak za puding, kreme, deserte i srodne proizvode flips, ekspandirana žita, mešavine i ostali snack-proizvodi umetni zaslađivači u tabletama hrana za dojenčad i malu decu biskviti i prepečenac, hrana na bazi žita i dečja hrana '),
(80, 10, 2, 'E579 Gvožđe (II) glukonat', 'logoIcon.png', 'Stabilizator boje crno obojanih maslina\r\nUpotrebljava se kao stabilizator boje crno obojanih maslina, u preparatima sa gvožđem. Smatra se bezopasnim u malim količinama. Propratne pojave nepoznate.\r\n<br>\r\nDOPUŠTENA UPOTREBA crne masline '),
(81, 10, 2, 'E585 Gvožđe (II) laktat', 'logoIcon.png', 'Stabilizator boje crno obojenih maslina.\r\nUpotrebljava se kao stabilizator boje crno obojanih maslina, u preparatima sa gvožđem. Upotrebljava se i kao lek. Propratne pojave nepoznate.'),
(82, 10, 2, 'E575 Glukono-delta-lakton', 'logoIcon.png', 'Prirodni regulator kiselosti, stabilizator, supstanca za tretiranje brašna i sekvestrant.\r\nSmatra se bezopasnim.\r\n<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, testenine, brzosmrznuti i srodni proizvodi trajni, polutrajni, obareni mesni proizvodi pripravci sira, pripravci topljenog sira trajni i polutrajni riblji proizvodi bombonski proizvodi, masa za punjenje, prelivi bezalkoholna osvežavajuća pića sterilizovano i pasterizovano voće i povrće supe, koncentrati za supe, koncentrati za umake, dodaci jelima i sl. prašak za pecivo hrana za decu: biskviti i prepečenac '),
(83, 10, 2, 'E412 Guar guma', 'logoIcon.png', 'Prirodni biljni zgušnjivač, sredstvo za želiranje, emulgator i stabilizator.\r\nDobiva se iz semena indijske biljke Cyamoposis tetragonolobus. Najčešće služi kao pojačivač ukusa i sredstvo koje sprečava topljenje sladoleda. Nesvarljiva supstanca koja pospešuje probavu. Dopuštena je upotreba u ekološkoj proizvodnji namirnica. U pojedinim slučajevima može izazvati alergiju. U većim količinama može uzrokovati mučnine, nadutost i grčeve. Smatra se bezopasnom.\r\n<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keksi, kolači, testenina, brzo smrznuti i srodni proizvodi kuvane, polutrajne i obarene kobasice i konzerve pripravci svežeg i topljenog sira deserti na bazi voća i povrća, punjene masline, umaci na bazi voća i povrća (uključujući kečap i slične proizvode) riblje paštete zamene za mlečne proizvode ili mlečnim proizvodima slični proizvodi s mlečnim delovima ili bez bombonski proizvodi, masa za punjenje, prelivi bezalkoholna osvežavajuća pića supe, koncentrati za supe i umake, dodaci jelima začini, ekstrakti začina i začinske mešavine prašak za puding, kreme, deserte i srodne proizvode flips, ekspandirana žita, mešavine i ostali snack-proizvodi sve vrste senfa mleko za dojenčad, delimično prilagođeno hrana za dojenčad i malu djecu hrana za dojenčad i malu djecu za posebne potrebe dodaci prehrani '),
(84, 10, 2, 'E235 Natamicin', 'logoIcon.png', 'Sredstvo za konzervisanje s antibiotskim delovanjem.\r\nNe sme prodreti u namirnicu dublje od 5 mm. Upotrebljava se kao lek, npr. protiv gljivičnih oboljenja kože. \r\n<br>\r\nDOPUŠTENA UPOTREBA samo za površinsku obradu trajnih kobasica tvrdi, polutvrdi i polumeki sirevi samo za površinsku obradu '),
(85, 10, 2, 'E234 Nizin', 'logoIcon.png', 'Sredstvo za konzervisanje s antibiotskim delovanjem.\r\nIma ga u mleku, siru, pivu, a u ljudskom organizmu ga stvaraju streptokoke koje naseljavaju creva. U probavnom traktu brzo se razgrađuje.\r\n<br>\r\nDOPUŠTENA UPOTREBA sir sa zrenjem topljeni sirevi, pavlaka dobijena kuvanjem, Mascarpone '),
(86, 10, 2, 'E224 Kalijum metabisulfit', 'logoIcon.png', 'Sredstvo za konzervisanje.\r\nČesta upotreba nije preporučljiva, posebno za osetljive osobe i osobe koje boluju od kožnih alergija i astme.\r\n<br>\r\nDOPUŠTENA UPOTREBA keksi i srodni proizvodi (osim kolača) voćne mase za punjenje kobasice za doručak s najmanje 6% žitarica ili drugih biljnih dodataka, mleveno meso s najmanje 4% dodatih žitarica ili drugih biljnih dodataka (burgeri i sl.) oguljeni krumpir (sirovi), prerađeno belo povrće (uključujući smrznuto i duboko smrznuto) prerađene gljive (uključujući smrznute i duboko smrznute), sušeni kokos, marinirani orasi, džem, žele, marmelada i pekmez (izuzev extra džema i extra želea) i drugi slični voćni namazi uključujući i niskokalorične proizvode ili one bez dodatka šećera sveži, smrznuti i duboko smrznuti rakovi, kozice i glavonošci sušena i soljena riba (Gadidae), proizvodi riba i rakova s biljnim proteinima prirodne rakije, voćna vina i mešavina voćnih vina, gazirana voćna vina alkoholna pića koja sadrže celi plod voća bezalkoholna osvežavajuća pića koja sadrže najmanje 235 g/l saharoze bela i ružičasta vina s manje od 5g/l neprevrelih šećera, crno vino s manje od 5 g/l neprevrelih šećera, bela i ružičasta vina s 5g/l i više od 5g/l neprevrelih šećera, crno vino s 5g/l i više od 5g/l neprevrelih šećera, prirodna penušava vina sve vrste piva vrste piva koja u bačvama imaju sekundarnu fermentaciju samo začinske mešavine na bazi soka od citrusa sušeni đinđer vinsko, voćno i aromatizirano sirće snack-proizvodi na bazi žita i krompira senf '),
(87, 10, 2, 'E223 Natrijev metabisulfit', 'logoIcon.png', 'Sredstvo za konzervisanje.\r\nMože izazvati teške oblike astme. Česta upotreba nije preporučljiva.\r\n<br>\r\nDOPUŠTENA UPOTREBA keksi i srodni proizvodi (osim kolača) voćne mase za punjenje kobasice za doručak s najmanje 6% žitarica ili drugih biljnih dodataka, mleveno meso s najmanje 4% dodatih žitarica ili drugih biljnih dodataka (burgeri i sl.) oguljeni krumpir (sirovi), prerađeno belo povrće (uključujući smrznuto i duboko smrznuto) prerađene gljive (uključujući smrznute i duboko smrznute), sušeni kokos, marinirani orasi, džem, žele, marmelada i pekmez (izuzev extra džema i extra želea) i drugi slični voćni namazi uključujući i niskokalorične proizvode ili one bez dodatka šećera sveži, smrznuti i duboko smrznuti rakovi, kozice i glavonošci sušena i soljena riba (Gadidae), proizvodi riba i rakova s biljnim proteinima prirodne rakije, voćna vina i mešavina voćnih vina, gazirana voćna vina alkoholna pića koja sadrže celi plod voća bezalkoholna osvežavajuća pića koja sadrže najmanje 235 g/l saharoze bela i ružičasta vina s manje od 5g/l neprevrelih šećera, crno vino s manje od 5 g/l neprevrelih šećera, bela i ružičasta vina s 5g/l i više od 5g/l neprevrelih šećera, crno vino s 5g/l i više od 5g/l neprevrelih šećera, prirodna penušava vina sve vrste piva vrste piva koja u bačvama imaju sekundarnu fermentaciju samo začinske mešavine na bazi soka od citrusa sušeni đinđer vinsko, voćno i aromatizirano sirće snack-proizvodi na bazi žita i krompira senf '),
(88, 10, 2, 'E202 Kalijum sorbat', 'logoIcon.png', 'Sredstvo za konzervisanje.\r\nDobija se neutralizacijom sorbinske kiseline (E200) s kalijum hidroksidom. Rastvorljiviji je od sorbinske kiseline. U pojedinim slučajevima može izazvati alergiju. Vidi E200.\r\n<br>\r\nDOPUŠTENA UPOTREBA pakovani i narezani hleb, polupečeni i pakovani pekarski proizvodi namenjeni krajnjem korisniku, posebne vrste pekarskih proizvoda s aktivnošću vode >0.65, hleb smanjene energ. vrednosti, dizana testa (Ruhrteig), listovi za savijače (sveži), polupečeni i pečeni pakovani keksi i kolači namenjeni krajnjem korisniku, pakovani proizvodi s aktivnošću vode >0,65 mase za punjenje palenta testo za palačinke, testo za okruglice od hleba mesni proizvodi površinski pokriveni želeom (kuvani, salamureni ili sušeni) topljeni sir i proizvodi sušeno voće, masline i proizvodi , masline i prerađevine na bazi maslina, deserti na bazi voća (samo za FructgrOd i Rote Grütze), prerađevine voća i povrća uključujući umake na bazi voća, paradajz koncentrat (osim pirea, kompota, salata i sličnih sterilizovanih, pasterizovanih ili smrznutih proizvoda), prelivi (sirup za palačinke, sirup za milkshake i za sladoled, slični proizvodi) krompirovo testo i prženi komadići krumpira džem, žele, marmelada i pekmez koji su pakirani u ambalažu od plastike, masline i proizvodi soljena, sušena riba margarin, emulzirane masti s manje od 60% ulja, majonez s manje od 60% ulja bombonski proizvodi, masa za punjenje, prelivi akoholna pića s manje od 15% etanola bezalkoholna osvežavajuća pića, osim pića na bazi mlečnih proizvoda sve vrste vina, osim vina kontroliranog porekla Tečne supe (osim sterilizovanih) začinske mešavine, osim mešavine čistih začina dehidrisani, koncentrisani, smrznuti i duboko smrznuti proizvodi od jaja tečni koncentrat voćnog i biljnog ekstrata za čajeve snack proizvodi na bazi žita i krompira, preliveni plodovi i semenke tečni umetni zaslađivači hrana za redukciju telesne mase, hrana za posebnu medicinsku namenu '),
(89, 10, 2, 'E1520 Propan-1,2-diol', 'logoIcon.png', 'Propilen glikol\r\nSprečava isušivanje, ovlaživač, nalazi se u supstancama za poliranje, pomoćna supstanca u procesu proizvodnje (supstance za topljenje i ekstrakciju). Zbog svog ukusa popularan u proizvodnji dečjih lekova. Upotrebljava se i u kozmetici. Postoje sumnje da unos većih količina može biti otrovan, te da može uzrokovati srčani napad.\r\n<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keksi, kolači, testenina, brzo smrznuti i srodni proizvodi prirodne aromatizovane materije , prirodno-identične aromatske materije, umetne aromatske materije, aromatski pripravci, prirodne arome dobijene posebnim tehnološkim postupcima za posebne pekarske proizvode, fine pekarske proizvode, mase za punjenje, sve kekse, kolače i srodne proizvode sladoled, krem sladoled prirodne aromatske materije , prirodno-identične aromatske materije, umetne aromatske materije, aromatski pripravci, prirodne arome dobijene posebnim tehnološkim postupcima za napitke na bazi jogurta, kiselog mleka, voćni aromatizovani jogurt, kiselo mleko s voćem i aromatizovano kiselo mleko, sladoled, puding i kreme, za smesu (prašak) za sladoled, mlečne deserte, pripravke maslaca, pripravke sira, pripravke topljenog sira, aromatizovano mleko aroma dima za pripravke sira, pripravke topljenog sira mlečnim napicima i pripravcima umetne arome za puding i kreme laktaza - mliječni napici, sir, sladoled na bazi mleka dopušteni enzimi za proizvodnju fermentisanih proizvoda za površinsku obradu voća tipa orah drugi proizvodi voća i povrća prirodne aromatske materije za umake, kečap i slične proizvode, marmeladu citrusa, žele marmelade od citrusa aromatske tvari identične prirodnima za umake, kečap i slične proizvode, citrus baze aromatske materije identične prirodnima za džem, žele marmelade, extra džem i extra žele od jabuke, dunje ili šipka, kesten pire, slatko umetne aromatske materije za džem, žele marmelade, extra džem i extra žele od jabuke, dunje ili šipka aromatski pripravak za džem, žele marmelade, extra '),
(90, 10, 2, 'E450 Dinatrijum difosfat (I), Trinatrijum difosfat (II), Tetranatrijum difosfat (III), Diklaijum difosfat (IV), Tetrakalijum difosfat (V), Dikalcijum difosfat (VI), Kalcijjum dihidrogendifosfat (VII)', 'logoIcon.png', 'Sredstva za regulisanje kiselosti, tretiranje brašna, podmazivanje, oblikovanje, emulgatori, stabilizatori i sekvestranti.\r\nFosfati u velikim koncentracijama mogu ometati resorpciju kalcijuma, magnezijuma i gvožđa u organizmu, pa unos velikih količina može dovesti do smanjenja koštane mase, osteoporoze i do taloženja kalcijuma u organizmu. Fosfor se dovodi u vezu s hiperkinetičkim sindromom, ali nauka o tome još nema konačnu i jasnu potvrdu. Česta upotreba nije preporučljiva.\r\n<br>\r\nDOPUŠTENA UPOTREBA brašno, brašno (za nadizanje), fini pekarski proizvodi mesni proizvodi, osim trajnih kobasica topljeni sir i pripravci topljenog sira sladoled mlečni napici voćni sok u prahu smrznuti i duboko smrznuti proizvodi od rakova šećerni prelivi jabukovača i kruškovača bezalkoholna osvežavajuća pića od biljnih ekstrakata praškasti proizvodi: supe, koncentrati za supe, koncentrati za umake, dodaci jelima i srodni proizvodi tečno jaje (belanac, žumanac, cijelo jaje), jaja u prahu kafovine u prahu za tople i hladne napitke sa mlekom u prahu čajni i biljni ekstrati prašak za pecivo deserti, pudinzi u prahu čips i flips, ekspandirana žita, prženi plodovi i semenke, mešavine i ostali snack-proizvodi hrana za dojenčad i malu decu: biskviti i prepečenac '),
(91, 10, 2, 'E270 Mlečna kiselina', 'logoIcon.png', 'Prirodni regulator kiselosti.\r\nMože biti životinjskog porekla. Dopuštena je upotreba u ekološkoj proizvodnji namirnica. Zbog nedovoljne razvijenosti probavnog sistema novorođenčadi, D(-) mlečna kiselina može izazvati smetnje u razmeni materija. U hrani za dojenčad dopuštena je samo L(+) mlečna kiselina. Može se proizvesti i tehnikom genetskog inženjerstva, ali procena uticaja tako dobijene mlečne kiseline još nije dovršena.\r\n<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keksi, kolači, testenina, brzo smrznuti i srodni proizvodi mesa stoke za klanje, divljači i peradi prašak za sladoled, salamura za sireve, sirevi nektar od voća i povrća riblja ikra posebno pripremljena ulja i masti za kuvanje i/ili prženje ili za pripremu umaka bombonski proizvodi, masa za punjenje bezalkoholna osvežavajuća pića, tečni koncentrat čaja supe, koncentrati za supe , koncentrati za umake, dodaci jelima i srodni proizvodi začini, ekstrakti začina i začinske mešavine, osim svežih začina prašak za puding, kreme, deserte i srodne proizvode čips i flips, ekspandirana žita, mešavine i ostali snack-proizvodi sve vrste senfa hrana za dojenčad i malu decu - samo u L(+) obliku dodaci prehrani '),
(92, 10, 2, 'E211 Natrijum benzoat', 'logoIcon.png', 'Sredstvo za konzervisanje. Natrijumova so benzoeve kiseline (E210).\r\nKod osoba koje boluju od astme, ili su osetljive na aspirin može uzrokovati alergijske reakcije. Postoje sumnje da u kombinaciji s tartrazinom (E102) može izazvati hiperkinetički sindrom kod dece. Česta upotreba nije preporučljiva.\r\n<br>\r\nDOPUŠTENA UPOTREBA mase za punjenje za mlinske i pekarske proizvode, testenine i brzosmrznute i srodne proizvode samo za površinsku obradu suhomesnatih proizvoda toplotno neobrađeni mlečni deserti džem, žele, marmelada i pekmez koji su pakovani u ambalažu od plastike, masline i proizvodi, džem, žele, marmelada i pekmez s niskim sadržajem šećera i slični niskokalorični proizvodi s dodatkom šećera ili bez njega, drugi voćni namazi, deserti na bazi voća (samo FructgrOod i Rote Grütze) kandirano voće i povrće, umaci na bazi voća i povrća (uključujući i kečap), marmelada povrće u sirćetu, ulju ili salamuri (osim maslina) proizvodi od riblje ikre majonez sa više od 60% ulja, umaci , prelivi, salate bombonski proizvodi, masa za punjenje, prelivi alkoholna pića s manje od 15% etanola bezalkoholna osvežavajuća pića, osim pića na bazi mlečnih proizvoda bezalkoholno pivo u bačvama tečne supe (osim sterilizovanih) začinske mešavine, osim mešavine čistih začina tečno jaje (belanac, žumanac, celo jaje) čaj-tečni koncentrat voćnog i biljnog ekstrata sve vrste senfa tečni umetni zaslađivači hrana za redukciju telesne mase, hrana za posebnu medicinsku namenu '),
(93, 10, 2, 'E210 Benzoeva kiselina', 'logoIcon.png', 'Sredstvo za konzerviranje.\r\nIma anitbakterijska i antifungicidna svojstva. Izlučuje se iz tela kao hipurna kiselina. Može izazvati alergijske reakcije kod osoba koje boluju od astme, peludne groznice i kožnih alergija. Česta upotreba nije preporučljiva. Benzoeva kiselina i njene soli mogu škoditi zdravlju osoba osjetljivih na acetilsalicilnu kiselinu, koja je sastojak lekova protiv bolova (npr.aspirin). Postoji sumnja da u kombinaciji s tartrazinom (E102) može izazvati hiperkinetički sindrom kod dece. Dokazano je da interakcijom benzoeve kiseline i njenih soli benzoata (E211, E212 i E213) s askorbinskom kiselinom (E 300) u osvežavajućim pićima nastaje karcerogeni benzen, i to u koncentracijama iznad 1 milijarditog dijela (1 ppb) što je maksimalna dozvoljena granica za benzen u vodi za piće. Stoga je potrebno izbegavati sokove i pića u kojima se askorbinska kiselina nalazi u kombinaciji s benzoevom kiselinom ili benzoatima.\r\n<br>\r\nDOPUŠTENA UPOTREBA mase za punjenje za mlinske i pekarske proizvode, testenine i brzosmrznute i srodne proizvode samo za površinsku obradu suhomesnatih proizvoda toplotno neobrađeni mlečni deserti džem, žele, marmelada i pekmez koji su pakovani u ambalažu od plastike, masline i proizvodi, džem, žele, marmelada i pekmez s niskim sadržajem šećera i slični niskokalorični proizvodi s dodatkom šećera ili bez njega, drugi voćni namazi, deserti na bazi voća (samo FructgrOod i Rote Grütze) kandirano voće i povrće umaci na bazi voća i povrća (uključujući i kečap), marmelada povrće u sirćetu, ulju ili salamuri (osim maslina) polutrajni riblji proizvodi majonez s više od 60% ulja, umaci, prelivi, salate bombonski proizvodi, masa za punjenje, prelivi alkoholna pića s manje od 15% etanola bezalkoholna osvežavajuća pića, osim pića na bazi mlečnih proizvoda tečne supe (osim sterilizovanih) začinske mešavine, osim mešavine čistih začina tečno jaje (belance, žumance, celo jaje) čaj-tekući koncentrat voćnog i biljnog iscrpka sve vrste senfa tekuća umjetna sl'),
(94, 10, 2, 'E500 Natrijum karbonat (I), Natrijum hidrogenkarbonat (II), Natrijum seskuikarbonat (III)', 'logoIcon.png', 'Sredstva za reguliranje kiselosti, tretiranje brašna, nadizanje, materija protiv zgrudnjavanja.\r\nPoznatiji pod nazivom soda ili natron. Dopušteni su u ekološkoj proizvodnji namirnica. Velike doze mogu izazvati pojačano lučenje želučane kiseline. Smatraju se bezopasnima.\r\n<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, testenine, brzosmrznuti i srodni proizvodi svi keksi, kolači i srodni proizvodi proizvodi od oblikovanog svežeg mesa mleko u prahu, prašak za sladoled, jogurt prah, pavlaka prah, ostali praškasti proizvodi, sir u komadima, topljeni sir u komadima margarin i emulzirane masti kakao,čokolada i proizvodi bombonski proizvodi bezalkoholna osvežavajuća pića prašak za pecivo čips i flips, ekspandirana žita, mešavine i ostali snack-proizvodi umetni zaslađivači u tabletama, praškasti umetni zaslađivači hrana za dojenčad i malu decu dodaci prehrani '),
(95, 10, 2, 'E262 Natrijum acetat (I), Natrijum hidrogenacetat', 'logoIcon.png', 'Sredstva za konzervisanje i regulisanje kiselosti.\r\nSmatraju se bezopasnima.\r\n<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keksi, kolači, testenina, brzo smrznuti i srodni proizvodi mesa stoke za klanje, divljači i peradi puding, kreme, kuvani sirevi, sveži sir sok od grožđa, sterilizovano i pasterizovano voće i povrće marinade od riba ulja i masti, osim devičanskih i maslinovog ulja, posebno pripremljena ulja i masti za kuvanje i/ili prženje ili za pripremu umaka bombonski proizvodi, masa za punjenje, prelivi bezalkoholna osvežavajuća pića, tečni koncentrat čaja sve vrste piva supe, koncentrati za supe , koncentrati za umake, dodaci jelima i srodni proizvodi začini, ekstrakti začina i začinske mešavine, osim svežih začina čips i flips, ekspandirana žita, mešavine i ostali snack-proizvodi sve vrste senfa hrana za dojenčad i malu decu '),
(96, 10, 2, 'E576 Natrijum glukonat', 'logoIcon.png', 'Prirodni regulator kiselosti, stabilizator i sekvestrant.\r\nNatrijumova so glukonske kiseline. Stvara komplekse s jonima metala.\r\n<br>\r\nDOPUŠTENA UPOTREBA bombonski proizvodi, masa za punjenje, prelivi bezalkoholna osvežavajuća pića prašak za puding, kreme, deserte i srodne proizvode '),
(97, 10, 2, 'E452 Natrijum polifosfat (I), Kalijum polifosfat (II), Natrijumkalcijum polofosfat (III), Kalcijum polifosfat (IV)', 'logoIcon.png', 'Sredstva za regulisanje kiselosti i nadizanje, emulgatori, stabilizatori i sekvestranti.\r\nU velikim koncentracijama mogu ometati resorpciju kalcijuma, magnezijuma i gvožđa u organizmu. Česta upotreba nije preporučljiva.\r\n<br>\r\nDOPUŠTENA UPOTREBA brašno (za samonadizanje), fini pekarski proizvodi za površinsku obradu mesa za sve proizvode od mesa, osim trajnih kobasica topljeni sir i pripravci topljenog sira sladoled mlečni napici prerađeni krompirovi proizvodi (uključujući smrznute, duboko smrznute začinjene i sušene) i priređeni za pečenje konzervisani proizvodi od rakova margarin, zamene ili mlečnim proizvodima slični proizvodi s mlečnim delovima ili bez njih gume za žvakanje voćna vina bezalkoholna osvežavajuća pića od biljnih ekstrakata supe i koncentrati za supe tečno jaje (belanac, žumanac, celo jaje), jaja u prahu kafovine u prahu za tople i hladne napitke s mlekom u prahu čajni i biljni ekstrati prašak za pecivo deserti, pudinzi u prahu čips i flips, ekspandirana žita, prženi plodovi i semenke, mešavine i ostali snack-proizvodi pripravci za posebne prehrambene namene '),
(98, 10, 2, 'E200 Sorbinska kiselina', 'logoIcon.png', 'Sredstvo za konzervisanje; sprečava rast gljivica i plesni, ali ne i bakterija (npr. u sirevima).\r\nIma blago kiseli okus. Dobija se ekstrakcijom iz voća ili sintetičkim putem iz ketena. U pojedinim slučajevima može izazvati alergiju (iritacija kože). Osobe koje boluju od pseudoalergija, astme ili neurodermitisa trebale bi izbegavati namirnice konzervisane sorbinskom kiselinom.\r\n<br>\r\nDOPUŠTENA UPOTREBA pakovani i narezani hleb, polupečeni i pakovani pekarski proizvodi namenjeni krajnjem korisniku, posebne vrste pekarskih proizvoda s aktivnošću vode > 0.65, hleb smanjene energ. vrednosti, dizana testa (Ruhrteig), listovi za savijače (sveži), polupečeni i pečeni pakovani keksi i kolači namjenjeni krajnjem korisniku, pakovani proizvodi s aktivnošću vode >0,65 mase za punjenje palenta testo za palačinke, testo za okruglice od hleba polupečeni i pečeni pakovani keksi i kolači namenjeni krajnjem korisniku, pakovani proizvodi s aktivnošću vode >0,65 pihtije sir i sirni pripravci - površinska obrada sušeno voće, masline i proizvodi , masline i prerađevine na bazi maslina, deserti na bazi voća (samo za FructgrOd i Rote Grütze), prerađevine voća i povrća uključujući umake na bazi voća, paradajz koncentrat (osim pirea, kompota, salata i sličnih sterilizovanih, pasterizovanih ili smrznutih proizvoda), prelivi (sirup za palačinke, sirup za milkshake i za sladoled, slični proizvodi) krompirovo testo i prženi komadići krompira džem, žele, marmelada i pekmez koji su pakovani u ambalažu od plastike, masline i proizvodi soljena, sušena riba margarin, emulzirane masti s više od 60 % ulja, majonezi, umaci, prelivi, salate s više od 60% ulja bombonski proizvodi, masa za punjenje, prelivi alkoholna pića s manje od 15% etanola bezalkoholna osvežavajuća pića, osim pića na bazi mlečnih proizvoda sve vrste vina, osim vina kontroliranog porekla tečne supe (osim sterilizovanih) začinske mešavine, osim mešavine čistih začina dehidrisani, koncentrisani, smrznuti i duboko smrznuti proizvodi od ja'),
(99, 10, 2, 'E420 Sorbitol (I), Sorbitolni sirup (II)', 'logoIcon.png', 'Nadodatak za šećer, sredstvo za zadržavanje vlage, emulgator i sekvestrant.\r\nDobija se izolacijom iz voća (višanja, šljiva, jabuka) ili sintetički iz glukoze procesom hidrogenizacije pod visokim pritiskom ili elektrolitičkom redukcijom. Može se proizvesti iz genetski modifikovanog kukuruza, ali još nije moguće dati konačnu procenu delovanja tako dobijenog sorbitola.\r\n<br>\r\nDopuštena je primena u gotovo svim namirnicama, bez količinskih ograničenja, ali je zabranjen za namirnice namenjene dojenčadi i maloj deci. Unos više od 20g dnevno može izazvati proliv. Smeju ga koristiti dijabetičari. Česta upotreba se ne preporuča. DOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keksi, kolači, testenina, brzo smrznuti i srodni proizvodi niskokalorični proizvodi bez dodatog šećera, dijetetski sladoled, mlečni napici i pripravci, šlag deserti na bazi voća i povrća niskokalorični s dodatkom šećera ili bez njega smrznuta neprerađena riba, rakovi, glavonošci i mekušci majonezi s više od 60% ulja kakao, čokolada i proizvodi, bombonski proizvodi i proizvodi sa smanjenom energetskom vrednosti s ili bez šećera, čokoladni namazi likeri deserti na bazi jaja sa šećerom ili bez njega prašak za puding, kreme, deserte i srodne proizvode: niskokalorični proizvodi sa šećerom ili bez dodatka šećera snack-proizvodi na bazi žita i krompira sve vrste senfa tečni umetni zaslađivači dodaci prehrani u tečnom i čvrstom obliku, proizvodi za posebne prehrambene namene, niskoenergetski proizvodi s dodatkom šećera ili bez šećera '),
(100, 10, 2, 'E415 Ksantan-guma', 'logoIcon.png', 'Sintetički ugušćivač, stabilizator i sredstvo za želiranje.\r\nDobiva se fermentacijom kukuruznog šećera pomoću bakterija. U većim dozama deluje laksativno. Dopuštena u ekološkoj proizvodnji namirnica. Moguća je proizvodnja iz genetski modifikovanog kukuruza, ali konačnu procenu delovanja tako proizvedene ksantan-gume još nije moguće dati. Smatra se bezopasnom.\r\n<br>\r\nDOPUŠTENA UPOTREBA mlinski i pekarski proizvodi, keksi, kolači, testenina, brzo smrznuti i srodni proizvodi kuvane, polutrajne i obarene kobasice i konzerve pripravci svežeg i topljenog sira deserti na bazi voća i povrća, punjene masline, umaci na bazi voća i povrća (uključujući kečap i slične proizvode) riblje salate zamene za mlečne proizvode ili mlečnim proizvodima slični proizvodi s mlečnim dijelovima ili bez bombonski proizvodi, masa za punjenje, prelivi likeri na bazi jaja, alkoholna pića osim prirodnih rakija, voćnih vina i mešana voćna vina bezalkoholna osvežavajuća pića supe, koncentrati za supe i umake, dodaci jelima začini, ekstrakti začina i začinske mešavine prašak za puding, kreme, deserte i srodne proizvode flips, ekspandirana žita, mešavine i ostali snack- proizvodi sve vrste senfa hrana za dojenčad i malu decu: hrana na bazi žita bez glutena hrana za dojenčad i malu decu za posebne potrebe dodaci prehrani '),
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
(116, 14, 3, 'AuroFlow™ Aflatoxin M1 Strip Test Kit', 'logoIcon.png', 'Brzi test za određivanje ostataka aflatoksina M1 u sirovom mleku\r\nPakovanje: 1 x 96 trakica'),
(117, 14, 3, 'AuroFlow™ Beta-Lactam Strip Test Kit', 'logoIcon.png', 'Brzi test za određivanje ostataka beta-laktama u sirovom mleku\r\nPakovanje: 1 x 96 trakica '),
(118, 14, 3, 'AuroFlow™ BT Combo Strip Test Kit', 'logoIcon.png', 'Brzi test za određivanje ostataka beta-laktama i tetraciklina u sirovom mleku\r\nPakovanje: 1 x 96 trakica '),
(119, 14, 3, 'AuroFlow™ BTS Combo Strip Test Kit', 'logoIcon.png', 'Brzi test za određivanje ostataka beta-laktama, tetraciklina i sulfonamida u sirovom mleku\r\nPakovanje: 1 x 96 trakica '),
(120, 14, 3, 'AuroFlow™ Fluoroquinolone Strip Test Kit for Meat', 'logoIcon.png', 'Brzi test za određivanje ostataka fluorohinolina u mesu\r\nPakovanje: 1 x 96 trakica '),
(121, 14, 3, 'AuroFlow™ Fluoroquinolone Strip Test Kit for Milk', 'logoIcon.png', 'Brzi test za određivanje ostataka fluorohinolina u mleku\r\nPakovanje: 1 x 96 trakica '),
(122, 14, 3, 'AuroFlow™ Melamine Strip Test Kit', 'logoIcon.png', ''),
(123, 14, 3, 'AuroFlow™ Ractopamine Strip Test Kit', 'logoIcon.png', 'Brzi test za određivanje ostataka raktopamina iz urina svinja\r\nPakovanje: 1 x 96 trakica '),
(124, 14, 3, 'AuroFlow™ RC Combo Strip Test Kit', 'logoIcon.png', 'Brzi test za određivanje ostataka raktopamina i klenbuterola iz urina svinja\r\nPakovanje: 1 x 96 trakica '),
(125, 14, 3, 'AuroFlow™ Sulfonamide Strip Test Kit', 'logoIcon.png', 'Brzi test za određivanje ostataka sulfonamida u sirovom mleku\r\nPakovanje: 1 x 96 trakica ');
INSERT INTO `product` (`product_id`, `sub_id`, `main_id`, `product_name`, `product_picture`, `product_description`) VALUES
(126, 14, 3, 'AuroFlow™ Tetracycline Strip Test Kit', 'logoIcon.png', 'Brzi test za određivanje ostataka tetraciklina u sirovom mleku\r\nPakovanje: 1 x 96 trakica '),
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
