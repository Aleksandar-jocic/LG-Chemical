-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 23, 2018 at 03:19 PM
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
(3, 'Psilijum', '2018-12-16', 'Psilijum je osušena kaša, odvojena, mlevena i pročišćena, od semena biljke Plantago ovata (roda Plantago). Psilijum prirodna dijetetska vlakna sadrže prirodnu gumenastu sluznicu. Sadržaj dijetetskih vlakana zavise od stepena čistoće čiji prosek iznosi 80%, sa oko 1/3 nerastvornih i 2/3 rastvorljivih vlakana.\r\nPlanatago ovata se nalazi u pustinjskim područijima Severne Afrike i Jugoistočne Azije. Najzastupljenija je u Indiji sa više od 80%.\r\n\r\nNutritivni efekti\r\n\r\nPsilijum nabrekne u vodi i sposoban je da veže 50 puta više vode. Ova sposobnost uzrokovana je geliranjem polisaharida. Zbog uticaja pritiska na crevni zid, stimulisana je peristaltika i time je povećan uticaj na defekaciju. Na taj način, ova indijska semena mogu pomoći kod zatvora i dijareje. \r\nEvropska agencija za lekove u Londonu potvrdila je efikasnost i sigurnost psiliuma u oktobru 2006. godine u izdanju “Evropska biljna monografija”. Psilijum se u najvišem nivou dokazao kao indikator uobičajnog zatvora, defekacije, kao i koristan kod terapije sindroma iritabilnog creva i hipergolesterolemije.\r\nMucilade dovode do poboljšanog klizanja sadržaja u crevima, dovodi do brže degeneracije zapaljinskih procesa u gastrointestinalnom traktu. Pored pažljive reguacije creva, rastvorljiva dijetalna vlakna čiste creva od gnitnih materija i crevnih gasova, kancerogenih produkata, kao što su indol, skatol i fenol. Psilijum deluje kao probiotik i stimuliše rast zdravih bakterija. Zbog bakterija u crevima, rastvorljivo vlakno se fermentiše u masne kiseline kratkog lanca koje imaju inhibitorski efekat na sintezu holesterola u jetri. Rastvorljiva vlakna psilijuma vezuju fekalnu žučnu kiselinu, što dovodi do povećanog lučenja holesterola, kao i smanjenog nivoa holesterola u krvi. \r\nZbog snažnog efekta otapanja u stomaku, psilijum može pomoći u održavanju telesne mase i prevenciji od gojaznosti. Ljuske semena povećavaju volumen hrane i osećaj sitosti.', 'psy.jpg'),
(4, 'Chemeter', '2018-12-16', 'Chemeter je inovativno softversko rešenje, kreirano specijalno za hemijsku industriju i rešenje je kompleksnosti\r\nizrade bezbednosnog lista. Prednosti ove aplikacije se zasnivaju na činjenici da Vam je omogućeno automatsko\r\nkreiranje bezbednosnih listova, uz korišćenje posebnog pametnog kalkulatora. Rezultati softvera Chemeter za\r\nizračunavanje fizičko-hemijskih osobina smeše potvrđeni su od strane renomiranih istraživačkih grupa i\r\nakademika koji koriste strogu kontrolu kvaliteta, tako da je Chemeter testirani softver sa maksimalnom\r\npouzdanošću.\r\nChemeter kreira listu bezbednosnih podataka pomoću automatskih proračuna, koji su prilagođeni\r\nzakonodavstvu zemlje u kojoj se proizvod stavlja u promet, kao i specifičnim propisima industrije od interesa.\r\nTo znači da je za sigurnosni list obavezno da:\r\nSDS mora biti formiran u skladu sa posebnim propisima (naslovi, poglavlja, zakonski obavezujuće\r\nfraze…)\r\nSDS mora biti formiran na službenom jeziku zemlje u kojoj se proizvod stavlja na tržište\r\nSadrži granice izloženosti na random mestu.\r\nSDS ima navedene specifične nacionalne zakone u poglavlju 15.\r\nZahvaljujući internacionalnoj mrezi kompanije SIAM, prisutnoj u preko 20 zemalja širom sveta, regulative\r\nprograma Chemeter pokrivaju sve obavezne zahteve, jer je jednostavan prevod ozbiljno kršenje zakonodavstva.\r\nKao rezultat Chemeter kreira bezbednosne listove (SDS) koji su usklađeni sa GHS-om za svaku zemlju putem\r\npametnog automatskog izračunavanja, a takođe se prilagođava specifičnom SDS formatu u više od 50 zemalja.', 'chemeter.png');

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
