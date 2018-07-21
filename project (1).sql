-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2018 at 08:06 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `adviser`
--

CREATE TABLE `adviser` (
  `id_adviser` int(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adviser`
--

INSERT INTO `adviser` (`id_adviser`, `name`) VALUES
(1, 'ดร.สมศักดิ์ ธรรมวงษ์'),
(2, 'ดร.เนติ เงินแพทย์'),
(3, 'ดร.อัจฉริยา ยศบุญเรือง'),
(4, 'นายสรวิชญ์ อุปคุตฆ์'),
(5, 'นายปัณณวิชญ์ สิริเวชวิริยะ'),
(6, 'ดร.ธนวุฒิ พรหมบัญชาชัย'),
(7, 'นายธัชพล เมธารัชกุล'),
(8, 'นายกฤตปภัช ตันติอมรกุล');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `id_borrow` int(5) NOT NULL,
  `id_user` int(5) NOT NULL,
  `id_equipment` varchar(20) NOT NULL,
  `amout` varchar(10) NOT NULL,
  `unit_amout` varchar(5) NOT NULL,
  `borrow_date` date NOT NULL,
  `return_day` date NOT NULL,
  `date_save` datetime NOT NULL,
  `b_comment_user` mediumtext NOT NULL,
  `b_comment_teacher` mediumtext NOT NULL,
  `b_check_status_t` varchar(10) NOT NULL,
  `b_comment_scientist` mediumtext NOT NULL,
  `b_check_status_s` varchar(10) NOT NULL,
  `sdentist` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `check_status_approvers`
--

CREATE TABLE `check_status_approvers` (
  `id_check_status` int(10) NOT NULL,
  `date_save` datetime NOT NULL,
  `date_ss` datetime NOT NULL,
  `teacher` varchar(50) NOT NULL,
  `Laboratory_staff` varchar(50) NOT NULL,
  `get_user` varchar(10) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `adviser` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `check_status_approvers`
--

INSERT INTO `check_status_approvers` (`id_check_status`, `date_save`, `date_ss`, `teacher`, `Laboratory_staff`, `get_user`, `Description`, `adviser`) VALUES
(6, '2018-07-11 15:49:00', '2018-07-12 00:00:00', 'yes', 'no', '', '57024222', '1'),
(7, '2018-07-11 15:53:00', '2018-07-11 00:00:00', 'yes', 'yes_ch', '', '57024222', '1'),
(8, '2018-07-11 16:16:00', '2018-07-13 00:00:00', 'no', 'no', '', '57024222', '1'),
(9, '2018-07-15 00:44:00', '2018-07-15 00:00:00', 'no', 'no', '', '57021948', '1'),
(10, '2018-07-17 00:36:00', '2018-07-17 00:00:00', 'no', 'no', '', '57024222', '1'),
(11, '2018-07-17 00:41:00', '2018-07-17 00:00:00', 'no', 'no', '', '57021948', '1'),
(12, '2018-07-18 21:58:00', '2018-07-18 00:00:00', 'no', 'no', '', '57024222', '1');

-- --------------------------------------------------------

--
-- Table structure for table `chemical`
--

CREATE TABLE `chemical` (
  `type` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand` varchar(15) NOT NULL,
  `grade` varchar(15) NOT NULL,
  `size` varchar(20) NOT NULL,
  `size_unit` varchar(10) NOT NULL,
  `price_unit` varchar(20) NOT NULL,
  `amount` varchar(15) NOT NULL,
  `unit_amount` varchar(10) NOT NULL,
  `remaining` varchar(15) NOT NULL,
  `unit_remaining` varchar(15) NOT NULL,
  `storags` varchar(100) NOT NULL,
  `expiration_date` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chemical`
--

INSERT INTO `chemical` (`type`, `name`, `brand`, `grade`, `size`, `size_unit`, `price_unit`, `amount`, `unit_amount`, `remaining`, `unit_remaining`, `storags`, `expiration_date`, `comment`) VALUES
('drugP0', '4', '2', '4', '2', '2', '130', '2', '2', '15', '2', '2', '', ''),
('generalI0', '2', '1', '3', '20', '2', '380', '10', '2', '100', '2', '3', '', ''),
('infectionA0', '1', '4', '3', '2', '2', '350', '15', '2', '9', '2', '2', '', ''),
('sugarA1', '3', '3', '2', '25', '2', '150', '2', '3', '91', '2', '4', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `chemicals`
--

CREATE TABLE `chemicals` (
  `type` varchar(30) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `chemical_formula` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price/unit` varchar(50) NOT NULL,
  `amout` varchar(50) NOT NULL,
  `Remaining` varchar(50) NOT NULL,
  `storags` varchar(50) NOT NULL,
  `expiration_date` varchar(50) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chemicals`
--

INSERT INTO `chemicals` (`type`, `code`, `name`, `chemical_formula`, `brand`, `grade`, `size`, `price/unit`, `amout`, `Remaining`, `storags`, `expiration_date`, `comment`) VALUES
('colorA0', 'A6', 'Alcian blue 8GX', ' -', 'Fluka', ' -', '10 g', ' -', '1 ขวด', '5 g', 'opened (ตู้สี)', 'สี', 'ปี 50/ OV 88/4398'),
('colorA1', 'A7', 'Alizarine red S', 'C14H7O7SNa', 'APS', ' -', '25 g', '1,010', '1 ขวด', '20 g', 'opened (ตู้สี)', '', ' ปี 50/ OV 017/08159'),
('colorB0', 'B19', 'Brillant blue R-250', 'C45H44N3O7S2Na', 'Fisher', 'Electrophoresis  grade', '25 g', ' - ', ' - ', '25 g', 'opened (ตู้สีเปิดใช้)', '', 'ปี 48/S-Sci 48-230'),
('colorB1', 'B20', 'Brillant green (hydrogen sulfate)', 'C27H34N2O4S', 'Merck', 'Microbiology', '50 g', '900.00', ' - ', '40 g', 'opened (ตู้สีเปิดใช้)', '', 'ปี 51/OV 017/08159'),
('colorB2', 'B24', 'Bromocresol green', 'C21H14Br4O5S', 'Ajax', 'Labchem', '5 g ', '148.00', '5 ขวด', '4 g', 'opened (ตู้สี) 2/ stock (ตู้สี) 2/ หมด 1', '', 'ปี 50/NCG 5008-0031'),
('colorB3', 'B25', 'Bromocresol green', ' -', 'Ajax', 'Labchem', '5 g ', '740.00', '2 ขวด', 'หมด', 'หมด', '', 'ปี 51/CTL 5001531'),
('colorB4', 'B26', 'Bromocresol purple', ' -', 'BDH', ' -', '25 g', '2,400.00', '1 ขวด', '20 g', 'opened (ตู้สี)', '', 'ปี 51/NT 59/2948'),
('colorB5', 'B27', 'Bromocresol purple', ' -', 'Fisher', ' -', '5 g ', '550.00', '1 ขวด', '1 g', 'opened (ตู้สี)', '', 'ปี 51/OV 017/08100'),
('colorB6', 'B28', 'Bromocresol purple', ' -', 'Merck', 'Indicator', '25 g', '4,306.75', '1 ขวด', '1', 'stock (ตู้สี)', '', 'ปี 51/Hiat  500137'),
('colorB7', 'B29', 'Bromocresol purple', ' -', 'Pharma Chemika', 'AR', '5 g', '500.00', '2 ขวด', '2', 'stock (ตู้สี)', '', 'ปี 51/ศิริปัญญา 510000360'),
('colorB8', 'B 30', 'Bromophenol blue', 'C19H10Br4O5S', 'Ajax', '', '5 g', '', '1 ขวด', 'หมด', 'หมด', '', 'ปี 51/ สารเก่า/ บริจาค'),
('colorB9', 'B31', 'Bromothymol blue', 'C27H28Br2O5S', '', '', '5 g', '428.00', '5 ขวด', '3 g + 4', 'opened (ตู้สี)', '', 'ปี58/ IT IV15-081459 (สอบ)'),
('colorC0', 'C14.01', 'Carbol-fuchsin dye powder', ' -', 'Fluka', 'Standard Fluka', '10 g', '3,175.00', '1 ขวด', '1 g', 'opened (ตู้สีเปิดใช้)', '', 'ปี 51/OV 017/08159'),
('colorC1', 'C14.02', 'Carbol-fuchsin dye powder', '', 'Suvchem', '', '10 g', '375.00', '5 ขวด', '5 g + 3', 'opened /stock (ตู้เก็บสี) 3', '', 'ปี 56/ bank T/L56-05527'),
('colorC10', 'C42', 'Crystal violet', 'C25H30ClN3', '', '', '25 g', '492.20', '2 ขวด', '1 g + 25 g', 'opened (ตู้สีเปิดใช้)', '', 'ปี58/ IT IV15-081459'),
('colorC11', 'C___', 'Crystal violet', 'C25H30ClN3', '', '', '25 g', '700.00', '1 ขวด', '', 'รอรับของ', '', 'ปี 59/ Siripanya (ตกลง)'),
('colorC12', 'C43.1', 'Cyanosine ( Phoxine  B )', 'C20H2Br4Cl4Na2O5', 'Fluka', 'Standard Fluka', '25 g', '2,795.00', ' - ', '', 'opened (ตู้สีเปิดใช้)', '', 'ปี 51/OV 009/04297'),
('colorC2', 'C29', 'Congo red ', 'C32H22N6Na2O6S2', 'APS', 'Labchem', '25 g', ' - ', '1 ขวด', '1', 'stock (ตู้เก็บสียังไม่เปิด)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('colorC3', 'C30', 'Congo red ', 'C32H22N6Na2O6S3', 'BDH', 'Gurr ', '25 g', ' - ', '1 ขวด', '20 g', 'opened (ตู้สีเปิดใช้)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('colorC4', 'C___', 'Congo red ', 'C32H22N6Na2O6S3', 'APS', 'Labchem', '25 g', ' - ', '1 ขวด', '20 g', 'opened (ตู้สีเปิดใช้)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('colorC5', 'C33', 'Coomassie ® brilliant blue G 250', ' -', 'Fluka', 'Standard Fluka', '25 g', '2,461.00', '1 ขวด', '20 g', 'opened (ตู้สีเปิดใช้)', '', 'ปี 51/โมเลค เคมิคอล 0707004'),
('colorC6', 'C34', 'Coomassie ® brilliant blue R 250', ' -', 'Fluka', 'Standard Fluka', '25 g', '3,959.00', '1 ขวด', '20 g', 'opened (ตู้สีเปิดใช้)', '', 'ปี 51/โมเลค เคมิคอล 0707004'),
('colorC7', 'C___', 'm-Cresol purple (m-cresolsulphonphthalein)', '', 'Himedia', '', '5 g', ' - ', ' - ', '', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 51/NT78/3868'),
('colorC8', 'C41.1', 'Crystal violet', 'C25H30ClN3', 'Qrec', '', '25 g', '600.00', '1 ขวด', 'หมด', 'หมด', '', 'งบแพทยปี 54'),
('colorC9', 'C43', 'Crystal violet', 'C25H30ClN3', '', 'Panreac', '25 g', '640.00', '2 ขวด', 'หมด', 'หมด', '', 'ปี 56/SPINV560000243'),
('colorE0', 'E11', 'Erythrosin extra bluish ( Erythrosin B )', 'C20H6I4Na2O5', 'Fluka', 'Standard fluka', '50 g', '3,950.00', ' - ', '40 g', 'opened (ตู้เก็บสี)', '', 'ปี 51/NT 56/2752'),
('colorE1', 'E20', ' Eosin yellowish (for microscopical staining)', '', 'BHD', ' -', '25 g', '642.00', '1 ขวด', '1', 'stock (ตู้สียังไม่เปิด)', '', 'ปี 50'),
('colorF0', 'F', 'Fast green', 'C37H34N2Na2O10S2', 'Acros', ' -', '25 g', '6,850.00', '1 ขวด', '', 'ตู้ปรสิต', '', 'IM 288134'),
('colorF1', 'FF', 'Fast green FCF', '-', 'Loba', ' -', '25 g', '2,850.00', '1 ขวด', '20 g', 'opened (ตู้เก็บสี)', '', 'UnionScience 57/070586'),
('colorF2', 'F2.1', 'Ficoll 400 ( alpha-D-Glucopyranoside , Polysucrose)', '', 'Fluka', ' -', '25 g', '3,703.00', '1 ขวด', '1', 'stock (สี)', '', 'ปี 51/NT 93/4646'),
('colorF3', 'F5', 'Fuchsin', ' -', 'Fluka', 'Standard Fluka', '100 g', '4,750.00', ' -', '', 'หมด', '', 'OV 05/02168'),
('colorF4', 'F6', 'Fuchsin Acid', ' -', 'APS', 'Labchem', '25 g', ' -', ' - ', '20 g', 'opened (ตู้สีเปิดใช้)', '', 'ปี 51/ บริจาค/ สารเก่า'),
('colorF5', 'F7.1', 'Fuchsin Basic', ' -', 'Labchem', '', '25 g', '720.00', '4 ขวด', '20 g + 3', 'opened / stock (ตู้สียังไม่เปิดใช้) 3', '', 'UnionScience 57/070587'),
('colorG0', 'G___', 'Giemsa stain powder', '', 'Ajax', ' -', '25 g', '-', '1 ขวด', '', 'ตู้ปรสิต', '', 'สารเก่า'),
('colorG1', 'G3.1', 'Giemsa stain powder', '', 'Acros', ' -', '25 g', '9,264.00', '1 ขวด', '20 g', 'opened (ตู้สีเปิดใช้)', '', 'ปี 53/IM 288134'),
('colorG2', 'G3.2', 'Giemsa stain powder', '-', 'Ajax', ' -', '25 g', '800.00', '2 ขวด', '2', 'stock (ตู้สียังไม่เปิดใช้)', '', 'ปี 55/IV281/20465'),
('colorG3', 'G3.3', 'Giemsa stain powder', '-', 'Ajax', ' -', '25 g', '856.00', '2 ขวด', '2', 'stock (ตู้สียังไม่เปิดใช้)', '', 'ปี 56/ศิริฯINV560000243'),
('colorL0', 'L4', 'Lactophenol cotton blue', ' -', 'Fluka', ' -', '100 ml', '2,076.92', '13 ขวด', '4', 'open (ตู้สาร Sol.) / stock 5/ หมด 6', '', 'ปี 51/ศิริปัญญา 510000360'),
('colorL1', 'L4.2', 'Lactophenol cotton blue', '', 'Himedia', '', '100 ml', '684.80', '1 ขวด', '1', 'stock (ตู้เก็บสียังไม่เปิด)', '', 'ปี 56/TC/IV292/21544'),
('colorL2', 'L13.2', 'Light green SF yellowwish', 'C37H34N2Na2O9S3', 'Fluka', '', '25 g', '4,530.00', '1 ขวด', '', 'ตู้ปรสิต', '', 'IV281/20465'),
('colorL3', 'L13.2.1', 'Light green SF yellowwish', 'C37H34N2Na2O9S3', 'Merck', '', '25 g', '4,000.00', '1 ขวด', '1', 'stock (ตู้สียังไม่เปิด)', '', 'UnionScience 57/070585'),
('colorL4', 'L14', 'Lismus', '', 'Fluka', ' -', '25 g', '3,880.00', '1 ขวด', '20 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 52/ศิริฯ520000372'),
('colorM0', 'M8', 'Malachite green oxalate', ' -', 'APS', 'Labchem', '50 g', '585.00', ' 5 ขวด', '1 g + 20 g', 'opened  3 / หมด 2', '', 'ปี 51/ OV 002/00919'),
('colorM1', 'M27', 'Methyl green', ' -', 'BDH', 'Gurr Certistian', '25 g', '3,638.00', '1 ขวด', '20 g', 'opened (ตู้สีเปิดใช้)', '', 'BT 50-09126'),
('colorM2', 'M28', 'Methyl red', 'C15H15N3O2', 'Panreac', 'PA-ACS', '25 g', '700.00', '1 ขวด', '20 g', 'opened (ตู้สีเปิดใช้)', '', 'ปี 50/Hiat 500137'),
('colorM3', 'M28.1', 'Methyl red', 'C15H15N3O2', 'Carlo', 'RPE ACS for analysis', '25g', '540.00', '1 ขวด', '1', 'stock (ตู้สียังไม่เปิดใช้)', '', 'ปี 51/IM  288134'),
('colorM4', 'M29', 'Methylene blue', 'C16H10ClN3S.2H2O ', 'APS', 'Unilab', '25 g', '525.00', '3 ขวด', '3', 'stock (ตู้สียังไม่เปิดใช้)', '', 'ปี 51/ OV 05/02168'),
('colorM5', 'M30', 'Methylene blue', 'C16H10ClN3S.2H2O ', 'Fisher', 'Life Science Reagent', '25 g', '670.00', '1 ขวด', '20 g', 'opened (ตู้สีเปิดใช้)', '', 'ปี 51/ OV 01/00012'),
('colorM6', 'M30.1', 'Methyl orange', '', 'Acros', 'RPE  for analysis', '25 g', '285.00', '1 ขวด', '', 'หมด', '', 'ปี 51/IM 288134'),
('colorN0', 'N___', 'Neutral red', ' C15H17CIN4', 'APS', '', '25 g', '', '1 ขวด', '', 'opened (ตู้สีเปิดใช้)', '', 'ปี 51/ บริจาค/สารเก่า'),
('colorN1', 'N10', 'Nigrosine', ' -', 'BDH', 'Gurr Certistain', '25 g', '820.00', '27 ขวด', '20 g + 25', 'opened (ตู้สารเปิดใช้)/ stock 26', '', 'ปี 51/S&M DB-0034-44'),
('colorP0', 'P16.1', 'Phenol Red', '', 'Fisher', ' -', '25 g', '1,560.00', '1 ขวด', '20 g', 'opened (ตู้สีเปิดใช้)', '', 'A.T.science  54'),
('colorP1', 'P16.2', 'Phenol Red', '', 'Fisher', ' -', '25 g', '1,250.00', '1 ขวด', '1', 'stock (ตู้สียังไม่เปิดใช้)', '', 'ศิริปัญญา54'),
('colorP2', 'P____', 'Phenol Red', '', 'BDH', ' -', '25 g', '-', '1 ขวด', '10 g', 'opened (ตู้สีเปิดใช้)', '', 'ปี 51/บริจาค/สารเก่า'),
('colorR0', 'R00', 'Resasurin', '', 'Pharma chemika', 'AR', '5 g', '2,610.00', '5 ขวด', '4', 'opened (ตู้สีเปิดใช้)/ stock 4', '', 'ศิริปัญญา 520000313'),
('colorR1', 'R4', 'Rose bengal', ' -', 'Acros', '  -', '100 g', '7,100.00', '1 ขวด', '50 g', ' opened (ตู้สีเปิดใช้)', '', 'ปี 51/IM 288134'),
('colorR2', 'R4.1', 'Rose bengal', '', 'Acros', '', '25 g', '898.80', '1 ขวด', '1', 'stock (ตู้สี)', '', 'ปี58/ IT IV15-081459 (สอบ)'),
('colorS0', 'S3', 'Safranin O', 'C20H19ClN4', 'BDH', 'Gurr Certistain', '25 g ', '3,800.00', '5 ขวด', '20 g + 1', 'opened (ตู้สี) 1/ stock 1/ หมด 3 ', '', 'ปี 51/S&M DB-0009-44'),
('colorS1', 'S4', 'Safranin O', 'C20H19ClN4', 'Panreac', ' -', '10 g', '555.00', '1 ขวด', '1', 'stock (ตู้เก็บสียังไม่เปิด)', '', 'ปี 51/NT 85/4204'),
('colorS2', 'S5', 'Safranin O', 'C20H19ClN4', 'S.D.', ' -', '25 g ', ' -', '5 ขวด', '5', 'stock (ตู้เก็บสียังไม่เปิด)', '', 'ปี 51/ OV05/02168'),
('colorS3', 'S6', 'Safranin T', 'C20H19ClN4', 'Fluka', 'Standard fluka', '25 g ', ' -', ' -', '1', 'stock (ตู้เก็บสียังไม่เปิด)', '', 'ปี 51/ สารเก่า/ บริจาค'),
('colorS4', 'S85', 'Sudan black B', 'C29H24N6', 'Acros', ' -', '25 g', '2,270.00', '1 ขวด', '1', 'stock (ตู้เก็บสียังไม่เปิด)', '', 'IM'),
('colorT0', 'T18', 'Thymol blue', 'C27H30O5S', 'Pharmachemika', 'AR', '5 g', '690.00', '5 ขวด', '5', 'stock (ตู้สียังไม่เปิดใช้)', '', 'ปี 51/ ศิริฯ 510000360'),
('colorT1', 'T30', 'Trypan blue', 'C34H28N6O14S4', 'Fluka', 'Standard fluka', '25 g', '3,640.00', ' -', '20 g', 'opened (ตู้สีเปิดใช้)', '', 'OV 009/04297'),
('colorW0', 'w___', 'Wright Stain', ' -', 'Suvchem', '', '25 g', '-', '2 ขวด', '', 'ตู้ปรสิต', '', 'สารเก่า'),
('colorW1', 'W3', 'Wright Stain', ' -', 'Panreac', '', '25 g', '1,600', '2 ขวด', '5 g + 1', 'opened (ตู้สีเปิดใช้) / stock 1', '', 'ปี 55/IV281/20465'),
('colorW2', 'W4', 'Wright Stain', ' -', 'Merck', '', '25 g', '2,900', '3 ขวด', '1', 'stock (ตู้เก็บสี) / หมด 1', '', 'ปี 56/ศิริฯ INV560000243'),
('colorX0', 'X', 'Xanthine98%', ' -', 'Acros', 'Organic for lab use only', '25 g', '2,664.30', '20 ขวด', '20', 'stock (ตู้สารยังไม่เปิดใช้)', '', 'IM 236300'),
('drugA0', 'A29', 'Ampicillin sodium salt', ' C16H19N3O4S', 'Sigma', ' -', '5 g', '4,050', '1 ขวด', '25g', 'เปิดใช้ (ตู้เย็น 4C ขาว)', 'ยา', 'ปี 51/IM 269706'),
('drugA1', 'A29.1', 'Ampicillin sodium salt', ' C16H19N3O4S', 'Sigma', ' -', '5 g', '3,755', '1 ขวด', '1', 'stock (ตู้เย็น 4C ขาว)', '', 'ปี 53/เชียงใหม่วี เอ็ม 1008011'),
('drugA2', 'A29.2', 'Amphotericin B', 'C47H73NO17', 'Sigma', 'HPLC', '250 mg', '9,000', '1 ขวด', '', 'เปิดใช้ (ตู้เย็น 4C ขาว)', '', 'UnionScience 57/070588'),
('drugC0', 'C1', 'Ciprofloxacin', 'C17H18FN3O3', 'Applichem', '', '5 g', '1,800.00', '1 ขวด', '4 g', 'เปิดใช้ (ตู้เย็น 4C ขาว)', '', 'BT L58-1306_ (สอบราคา)'),
('drugC1', 'C2', 'Chloramphenicol', 'C11H12Cl2N2O5', 'Sigma', 'TLC', '25 g', '5,350.00', '1 ขวด', '20 g', 'เปิดใช้ (ตู้เย็น 4C ขาว)', '', 'ปี58/'),
('drugC2', 'C3', 'Cycloheximide', 'C15H23NO4', 'Sigma', '-', '1 g', '', '1 ขวด', '', 'เปิดใช้ (ตู้เย็น 4C ขาว)', '', 'ปี 58/'),
('drugC3', 'C3.1', 'Cycloheximide', 'C15H23NO4', 'Applichem', '', '5 g', '8,230.00', '1 ขวด', '1', 'Stock (สาร)', '', 'BT L58-1306_ (สอบราคา)'),
('drugK0', 'K1', 'Kanamycin sulfate', 'C18H36N4O11 · H2SO4', 'Applichem', '', '5 g', '2,000.00', '1 ขวด', '', 'เปิดใช้ (ตู้เย็น 4C ขาว)', '', 'BT L58-1306_ (สอบ)'),
('drugP0', 'P5', 'Penicillin G', 'C16H17N2NaO4S', 'Fluka', 'Biochemika', '5 g', '1,124.00', '2 ขวด', '1 g + 1', 'เปิดใช้ (ตู้เย็น 4C ขาว)', '', 'ปี 51/NCG 5007-0006'),
('drugP1', 'P22', 'Polymycin B sulfate', ' C55H96N16O13   · 2H2SO4', 'Sigma', ' -', '1 MU', '2,458.00', '1 ขวด', '', 'stock (ตู้เย็น 4C ขาว)', '', 'ปี 51/CTL 5002000'),
('drugP2', 'P23', 'Polymycin B sulfate', ' C55H96N16O13   · 2H2SO4', 'Fluka', 'Biochemika', '1 g', '2,875.00', '1 ขวด', '0.5 g', 'เปิดใช้ (ตู้เย็น 4C ขาว)', '', 'ปี 51/CTL 5001531'),
('drugP3', 'P23.1', 'Polymycin B sulfate', ' C55H96N16O13   · 2H2SO4', 'Applichem', '', '1 g', '2,330.00', '1 ขวด', '1', 'Stock (สาร)', '', 'BT L58-1306_ (สอบ)'),
('drugS0', 'S78', 'Streptomycin sulphate', 'C21H39N7O12 · 1.5 H2SO4  ', 'Sigma', ' -', '25 g', '1,562.20', '1 ขวด', '15 g', 'เปิดใช้ (ตู้เย็น 4C ขาว)', '', 'เอสเอ็ม เคมีคอล 0706767'),
('drugS1', 'S78.1', 'Streptomycin sulphate', '(C21H39N7O12)2 · 3H2SO4 ', 'Applichem', '', '25 g', '116.00', '1 ขวด', '1', 'stock (ตู้เย็น 4C ขาว)', '', 'BT L58-1306_ (สอบ)'),
('drugS2', 'S____', 'Streptomycin sulphate', 'C21H39N7O12 · 1.5 H2SO4  ', 'Sigma', '', '25 g', '2,100.00', '1 ขวด', '1', 'stock', '', 'ปี 59/ UNS IV59/______(ตกลง)'),
('drugT0', 'T1', 'Tetracyclin hydrochloride', 'C22H24N2O8 · HCl ', 'Applichem', '', '25 g', '1,100.00', '1 ขวด', '22 g', 'เปิดใช้ (ตู้เย็น 4C ขาว)', '', 'BT L58-1306_ (สอบ)'),
('generalA0', 'A', ' Acacia = Gum Arabic ', ' -', 'Italmar', ' -', '450 g', '550.00', '1 ขวด', '200 g', 'opened (ตู้สารเคมี)', '', 'ปี 51/ IM 222690'),
('generalA1', 'A1.1', 'Acetic acid 100 %', 'CH3COOH', 'RCl labscan', 'AR', '2.5 L', '460.00', '1 ขวด', '1000 ml', 'opened (hood)', '', 'ปี 53/ยูเนี่ยน ซายน์ 53-024493'),
('generalA10', 'A3.1', 'Acrylamide for systhesis', '', 'Merck', ' - ', '1 kg', '2,525.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิด)', '', 'ปี 53/เชียงใหม่วี เอ็ม 1008011'),
('generalA11', 'A4', 'Agar', ' -', ' -', 'Com.', '1 kg', '1,522.50', '40 pack', '30', 'opened (ตู้สาร)/ stock ', '', 'ปี58/ IT IV15-081462 (สอบ)'),
('generalA12', 'A___', 'Agar', ' -', ' -', 'Com.', '1 kg', '1,690.00', '20 pack', '20', 'ห้อง stock คณะ', '', 'ปี59/ TC IV328/___(ตกลง)'),
('generalA13', 'A5', 'Agarose', ' -', 'Vivantis', 'Molecr', '500 g', '13,910.00', '2 ขวด', '1 + 200 g', 'opened (ตู้สาร)/ stock 1', 'Oct-11', 'ปี 50/ BT 50-09126'),
('generalA14', 'A5.1', 'Albumin Bovin (Bovien serum albumin : BSA)', '', 'Sigma', ' -', '50 g', '10,800.00', '1 ขวด', '1', 'opened (ตู้เย็น 4 C ขาว)', '', 'ปี 53/UN S 53/026687'),
('generalA15', 'A7.1', 'Aluminium chloride', 'AlCl3.6H2O', 'Ajax', 'AR', '500 g', '407.5', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี 53/ TTK sci 5302789'),
('generalA16', 'A___', 'Aluminium chloride', 'AlCl3.6H2O', 'Loba', 'AR', '500 g', '744.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิด)', '', 'ปี 59/ UNS IV59/002440ตกลง)'),
('generalA17', 'A8', 'Aluminium hydroxide ,powder', 'Al(OH)3', 'Riedel-deHaen', 'pure', '1 kg', '2,000.00', ' -', '1', 'stock (ตู้สารยังไม่เปิด)', '', 'ปี 50/ OV 09/04186'),
('generalA18', 'A____', 'Aluminium oxide', 'Al2O3', 'Ajax', 'AR', '500 g', '600.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิด)', '', 'ปี 59/ TC IV326/24924(ตกลง)'),
('generalA19', 'A9', 'Aluminium potassium sulphate', 'AlK(SO4)2.12H2O', 'Ajax', 'AR', '500 g', '359.52', '1 ขวด', '100 g', 'opened (ตู้สารเคมี)', ' discard 5 year after open', 'ปี 50/ S-Sci-47-573'),
('generalA2', 'A__', 'Acetic acid 100 %', 'CH3COOH', 'RCl labscan', 'AR', '2.5 L', '-', '1 ขวด', '1', 'stock (ใต้ hood)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalA20', 'A9.1', 'Aluminium potassium sulphate', 'AlK(SO4)2.12H2O', 'Ajax', 'AR', '500 g', '377.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิด)', '', 'ปี 50/ S-Sci-48-232'),
('generalA21', 'A9.2', 'Aluminium potassium sulphate', 'AlK(SO4)2.12H2O', 'Ajax', 'AR', '500 g', '420.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิด)', '', 'ปี 56/ US 56-061136'),
('generalA22', 'A10', 'p-Aminobenzoic acid (Vitamin B10)', ' C7H7NO2', 'Himedia', ' - ', '100 g ', '725.00', '1 ขวด', '50 g', 'stock (ตู้สารยังไม่เปิด)', 'Jul-14', 'ปี 50/UNS53/026687'),
('generalA23', 'A___', '4-aminoantipyrine (ampyrone)', 'C11H13N30', 'Sigma', ' - ', '50 g', '-', '1 ขวด', '1', 'opened (ตู้เย็น 4 C ขาว)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalA24', 'A____', 'Amido Black Ten B', 'C22H14N6Na2O9S2', 'Himedia', '', '25 g', '321.00', '1 ขวด', '', 'อ.กานต์รวี', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('generalA25', 'A11', 'Ammonium chloride', 'NH4Cl', 'CXL', 'AR', '500 g', '300.00', '1 ขวด', '400 g', 'opened (ตู้สารเคมี)', '', 'ปี 51/ศิริฯ 510000296'),
('generalA26', 'A12', 'Ammonium chloride', 'NH4Cl', 'JHD', 'AR', '500 g', '273.00', '1 ขวด', '100 g', 'opened (ตู้สารเคมี)', '', 'ปี 50/ CTL 5001996'),
('generalA27', 'A12.1', 'Ammonium chloride', 'NH4Cl', 'Ajax', 'AR', '500 g', '420.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี 53/BT 53-09642'),
('generalA28', 'A12.2', 'Ammonium chloride', 'NH4Cl', 'Ajax', 'AR', '500 g', '390.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิด)', '', 'ปี 54/ศิริปัญญา วิทย์แพทย์ 54'),
('generalA29', 'A13', 'tri-Ammonium citrate                      (Ammonium citrate tribasic)', '(NH4)3C6H5O7', 'JHD', 'AR', '500 g', '610.00', '1 ขวด', '200 g', 'opened (ตู้สารเคมี)', '', 'ปี 50/บิล NCG 5008-0031'),
('generalA3', 'A___', 'Acetic acid 100 %', 'CH3COOH', 'Merck', 'AR', '2.5 L', '-', '1 ขวด', '400 ml', 'opened (hood)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalA30', 'A____', 'Ammonium Citrate dibasic', '', '', '', '500 g', '2,500.00', '1 ขวด', '', 'รอรับของ', '', 'ปี 59/ '),
('generalA31', 'A14', 'Ammonium ferric citrate                    (Ammonium iron (III) citrate)', 'C6H8O7 . xFe3+ . yNH3', 'Fluka', 'purum', '500 g ', '2,480.00', '1 ขวด', '250 g', 'opened (ตู้สารเคมี)', '', 'ปี 51/ BT 53-09642'),
('generalA32', 'A15', 'Ammonium hydroxide 28-30%', 'NH4OH', 'JT Braker', 'Analyzer', '2.5 L', '459.00', '1 ขวด', '500 ml', 'stock (hood)', '', 'ปี 50/ บิล CTL 5001993'),
('generalA33', 'A16', 'Ammonium iron (II) sulphate hexahydrate', '(NH4)2Fe(SO4)2·6H2O', 'APS', 'Unilab', '500 g', '389.00', '1 ขวด', 'หมด', 'หมด', '', 'ปี 47/KPN 47/117'),
('generalA34', 'A16.2', 'Ammonium iron (II) sulphate hexahydrate', '(NH4)2Fe(SO4)2·6H2O', 'Loba Chem', 'AR', '500 g', '', '1 ขวด', '250 g', 'opened (ตู้สารเคมี', '', 'ปี 58/'),
('generalA35', 'A16.1', 'Ammonium iron (III) sulphate 12-hydrate', 'NH4Fe(SO4)2·12H2O', 'Riedel-deHaen', 'extra pure', '1 kg', '949.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี 47/ KPN 47/312'),
('generalA36', 'A17', 'Ammonium molybdate                    (Ammonium heptamolybdate tetrahydrate)', '(NH4)6MO7O24.4H2O', 'QReC', 'AR', '500 g', '1,789.00', '1 ขวด', '150 g', 'opened (ตู้สารเคมี)', '', 'ปี 50/บิล CTL 5001993'),
('generalA37', 'A17.1', 'Ammonium molybdate', '(NH4)6MO7O24.4H2O', 'Ajax', 'Univar ', '500 g', '2,538.00', '1 ขวด', '250 g', 'opened (ตู้สารเคมี)', '', 'ปี 53/UNS 53/026687'),
('generalA38', 'A18', 'Di-ammonium hydrogen citrate', ' (NH4)2HC6H5O7', 'Loba', 'Extra Pure', '500 g', '1,040.00', '1 ขวด', '400 g', 'opened (ตู้สารเคมี)', '', 'ปี58/ SPINV58000421(ตกลง)'),
('generalA39', 'A18.1', 'Di-ammonium hydrogen citrate', ' (NH4)2HC6H5O7', 'Carlo', 'AR', '250 g', '480.00', '2 ขวด', '2', 'stock (ตู้สารเคมี)', 'Oct-18', 'ปี58/ IT IV15-081461 (สอบ)'),
('generalA4', 'A___', 'Acetic acid 100 %', 'CH3COOH', '', '', '2.5 L', '495.00', '1 ขวด', '1', 'stock (ใต้ hood)', '', 'ปี 59/ เปิดซอง'),
('generalA40', 'A19', 'Di-ammonium hydrogen phosphate', '(NH4)2HPO4', 'QReC', 'AR', '500 g', '428.00', '2 ขวด', '250 g+ 1', 'opened (ตู้สารเคมี)/stock 1', '', 'ปี 53/ศิริปัญญา 530000372'),
('generalA41', 'A20.1', 'Ammonium nitrate ', 'NH4NO3', 'CXL', 'AR', '500 g', '680.00', '1 ขวด', '1', 'stock (ตู้สารเคมี)', '', 'ปี 50/ศิริปัญญา 501000232'),
('generalA42', 'A20', 'Ammonium nitrate ', 'NH4NO3', 'Ajax', 'Univar ', '500 g', '995.00', '3 ขวด', '50 g + 1', 'opened 1/ ห้องวิจัย 1/ stock 1', '', 'ปี 51/IM 222676'),
('generalA43', 'A21', 'Ammonium oxalate', '(COONH4)2.H2O', 'Ajax', 'Univar ', '500 g', '870.00', '1 ขวด', '1', 'opened (ตู้สารเคมี)', 'Discard 5 year after open', 'ปี 51/NT 61/3049'),
('generalA44', 'A21.1', 'Ammonium oxalate', '(COONH4)2.H2O', 'Ajax', 'Univar ', '500 g', ' - ', '1 ขวด', '250 g', 'stock (ตู้สารเคมี)', '', 'ปี 51/NT 74/3694'),
('generalA45', 'A22', 'Ammonium oxalate', '(COONH4)2.H2O', 'Ajax', 'Univar ', '500 g', '819.00', '1 ขวด', '250 g', 'stock (ตู้สารเคมี)', '', 'ปี 47/KPN 47/311'),
('generalA46', 'A17.3', 'Ammonium potassium sulphate', 'NH4KSO4', 'Ajax', 'Univar ', '500 g', '359.52', ' -', '', 'หมด', '', 'ปี 47/S-Sci 47-573'),
('generalA47', 'A23', 'Ammonium persulphate', '(NH4)2S2O8 ', 'Ajax', 'Univar ', '500 g', '411.95', '1 ขวด', '300 g', 'opened (ตู้สารเคมี)', '', 'ปี 48/S-Sci 48-230'),
('generalA48', 'A23.1', 'Ammonium persulphate', '(NH4)2S2O8 ', 'QReC', 'AR', '500 g', '415', '1 ขวด', '1', 'stock (ตู้สารเคมี)', '', 'ปี 53/ศิริปัญญา 530000372'),
('generalA49', 'A23.2', 'Ammonium persulfate (ASP)', '(NH4)2S2O8 ', 'Bio-Rad', ' -', '10 g', '841.2', '1 ขวด', '1', 'opened (ตู้สารเคมี)', 'May-14', 'ปี 53/เคโมไซเอนซ์SQ2010104033'),
('generalA5', 'A2', 'Acetone', 'CH3COOH3', 'Fisher', 'HPLC', '2.5 L', ' -', '1 ขวด', '1', 'stock (ใต้ hood)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalA50', 'A23.3', 'Ammonium persulfate (ASP)', '(NH4)2S2O8 ', '', ' -', '2x25 g', '1498', '1 pack', '-', 'อ.ปัณณวิชญ์', '', 'Pacific Science 57/50247'),
('generalA51', 'A24', 'di-Ammonium hydrogenphosphate', '(NH4)2HPO4', 'โอ.วี.', 'Univar ', '500', ' - ', ' - ', '250 g', 'opened (ตู้สารเคมี)', '', 'ปี 51/บริจาค/ สารเก่าจากคลัง'),
('generalA52', 'A26', 'Ammonium sulphate', '(NH4)2SO4', 'Carlo', 'Analys.', '1 kg', '321.00', '1 ขวด', '1', 'stock (ตู้สารเคมี)', '', 'ปี 51/IM 236300 '),
('generalA53', 'A27', 'Ammonium sulphate', '(NH4)2SO4', 'Carlo', 'Analys.', '500 g', '240.00', '1 ขวด', '250 g', 'opened (ตู้สารเคมี)', '', 'ปี 54/IM 268859'),
('generalA54', 'A28', 'Ammonium sulphate', '(NH4)2SO4', 'JHD', 'AR', '500 g', '190.00', '10 ขวด', '5', 'opened (ตู้สารเคมี)/ วิจัย 1/stock 5', '', 'ปี 50/CTL5001996'),
('generalA55', 'A28.1', 'Ammonium vannadate', 'H4NO3V', 'Fluka', 'Purum', '100 g ', '4,400.00', '1 ขวด', '50 g', 'opened  (ตู้สารเคมี)', '', 'ปี 53/NCG 5309-0020'),
('generalA56', 'A___', 'Amyloglucosidase ', ' -', 'Fluka', ' -', '1 g', '-', '1 ขวด', '1', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalA57', 'A___', 'Amyloglucosidase ', ' -', 'Sigma', ' -', '1 g', '-', '1 ขวด', '1', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalA58', 'A30', 'Aniline sulfate', 'C12H14N2.H2SO4', 'Fluka', 'purum', '50 g', ' - ', ' - ', '25 g', 'opened (ตู้สารเคมี)', '', 'ปี 48/KPN 48/517'),
('generalA59', 'A32.03', 'Anti BSA (2mg/ml)', ' -', 'Invitrogen', ' -', ' 0.5 ml', '10,000.00', '1 หลอด', '1', 'stock (ตู้เย็น 0C ขาว)', '', 'ปี 54/Gibthai วิทย์แพทย์ 54'),
('generalA6', 'A___', 'Acetone', 'CH3COOH3', 'Labscan', 'HPLC', '2.5 L', ' -', '2 ขวด', '1', 'stock (ใต้ hood)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalA60', 'A31.3', 'Anti A', ' -', 'Plasmatec', ' -', ' 10 ml', '180.00', '10 ขวด', '10', 'opened  (ตู้เย็น 4C ขาว)', '', 'ปี 56/UNS 56/057458'),
('generalA61', 'A31.4', 'Anti A', '-', 'Plasmatec', '-', '10 ml', '180.00', '4 ขวด', '4', 'opened  (ตู้เย็น 4C ขาว)', '', 'ปี 57/ UNS 57/066461'),
('generalA62', 'A32.3', 'Anti B', ' -', 'Plasmatec', ' -', ' 10 ml', '180.00', '10 ขวด', '8', 'opened  (ตู้เย็น 4C ขาว)', '', 'ปี 56/UNS 56/057458'),
('generalA63', 'A32.04', 'Anti B', '-', 'Plasmatec', '-', '10 m,l', '180.00', '4 ขวด', '4', 'stock  (ตู้เย็น 4C ขาว)', '', 'ปี 57/ UNS 57/066461'),
('generalA64', 'A34', 'L-Ascorbic acid', 'C6H8O6', 'Fluka', 'puriss', '250 g', '3,145.00', '2 ขวด', '1', 'opened (ตู้สาร)/ stock 1', '', 'ปี 50/ NCG '),
('generalA65', 'A35', 'Azure II', 'C31H34Cl2N6S2', 'Fluka', 'Chemika', '10 g', '1,715.00', ' - ', '', 'opened (ห้องวิจัย)', '', 'ปี 51/OV 05/02341'),
('generalA66', 'A36', 'N-Acetyl-L-cysteine', 'C5H9NO3S', 'Fluka', 'Chemika', '10 g', '', ' - ', '5 g', ' opened (ตู้สารเคมี)', '', 'ปี 51/CM38/01915'),
('generalA67', 'A37', '30% AccuGel 29:1', ' -', '', '', '1 L', '5,350.00', '1 ขวด', '', 'อ.ปัณณวิชญ์', '', 'Pacific Science 57/50247'),
('generalA68', 'A38', 'Ammonia Cyanate Reagent Powder ', ' -', '', '', '100 ซอง/ชุด', '3,600.00', '2 ชุด', '1', 'stock (ตู้เย็น 4C ขาว)', '', 'ปี58/ATScIV5807102 (ตกลง)'),
('generalA69', 'A38.1', 'Ammonia Salicylate Reagent Powder ', ' -', '', '', '100 ซอง/ชุด', '5,400.00', '2 ชุด', '1', 'stock (ตู้เย็น 4C ขาว)', '', 'ปี58/ATScIV5807102 (ตกลง)'),
('generalA7', 'A___', 'Acetone', 'CH3COOH3', 'Labscan', 'BHD', '2.5 L', ' -', '1 ขวด', '1000 ml', 'opend (hood)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalA70', 'A____', 'Antifoam B Emulsion', '', 'Sigma', '', '250 ml', '3850.00', '1 ขวด', '', 'รอรับของ (อ.สมศักดิ์)', '', 'ปี 59/ BT L59-13   (ตกลง)'),
('generalA8', 'A___', 'Acetonitrile', 'CH3CN', 'Fisher', 'HPLC', '2.5L', ' -', '1 ขวด', '200 ml', 'opend (hood)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalA9', 'A3', 'Acrylamide ', 'C3H5NO', 'Fluka', 'purum', '250 g', ' -', '1 ขวด', '100 g', 'opened (ตู้สารเคมี)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalB0', 'B', '6-Benzylaminopurine', ' -', 'Fluka', 'HPLC', '5 g ', '4,472.60', ' - ', '2.5 g', 'opened (ตู้สารเคมี)', '', 'ปี 48/S-Sci 48-230'),
('generalB1', 'B2', 'Barium chloride', 'BaCl2.2H2O', 'Ajax ', 'Univar', '500 g', '529.00', ' - ', '300 g', 'opened (ห้องวิจัย)', '', 'ปี 48/KPN 48/517'),
('generalB10', 'B16.1', 'Boric acid', 'H3BO3', 'Renkem', 'AR', '1 kg', '435.00', '1 ขวด', '1', 'stock (ตู้สาร)', '', 'ปี 53/UNS 53/026687'),
('generalB11', 'B16.2', 'Boric acid', 'H3BO3', 'Qrec', 'AR', '500 g', '-', '1 ขวด', '1', 'stock (ตู้สาร)', '', 'เบิกแพทย์ 54'),
('generalB12', 'B23.1', 'X-gal (5-bromo-4-chloro-3-indolyl ß-D-galactopyranoside green', '', '', '', '100 mg', '1,284.00', '1 ขวด', '100 mg', 'ตู้เย็น 4 C ขาว', '', '/Pacific sciวิทย์-แพทย์ 54'),
('generalB13', 'B32', '1-Butanol ', '', 'labscan', 'HPLC grade', '2.5 L', '1,380.00', '1 ขวด', '2 L', 'opened (hood)', '', 'ปี 54/UNS 54/035822'),
('generalB14', 'B34', 'Broad-way Dual Prestained protein marker', '', '1', '', '1 pack', '4,280.00', '1 pack', '1 pack', 'stock (ตู้เย็น 0 C)', '', 'Pacific Science 47171'),
('generalB15', 'B35', 'Barritt\'s Reagent A', '', 'Fluka', '', '100 ml', '2,390.00', '2 ขวด', '2', 'stock (ตู้สาร)', 'Jan-18', 'ปี58/ITIV15-081461(สอบ)'),
('generalB16', 'B36', 'Barritt\'s Reagent B', '', 'Fluka', '', '100 ml', '2,390.00', '2 ขวด', '2', 'stock (ตู้สาร)', 'Jan-18', 'ปี58/ITIV15-081461(สอบ)'),
('generalB17', 'B____', 'Buffer Solution pH 4', '', 'Ajax', 'AR', '500 ml', '300.00', '1 ขวด', '450 ml', 'opened (ตู้ solution)', '', 'ปี 59/ TC IV326/24924(ตกลง)'),
('generalB18', 'B____', 'Buffer Solution pH 7', '', 'Ajax', 'AR', '500 ml', '300.00', '1 ขวด', '450 ml', 'opened (ตู้ solution)', '', 'ปี 59/ TC IV326/24924(ตกลง)'),
('generalB19', 'B____', 'Buffer Solution pH 10', '', 'Ajax', 'AR', '500 ml', '300.00', '1 ขวด', '450 ml', 'opened (ตู้ solution)', '', 'ปี 59/ TC IV326/24924(ตกลง)'),
('generalB2', 'B3', 'Barium chloride', 'BaCl2.2H2O', 'Carlo', 'for analysis', '500 g', '580.00', '1 ขวด', '250 g', 'opened (ตู้สารเคมี)', 'Oct-14', 'ปี 54/IM 268859'),
('generalB20', 'B____', 'Butylated Hydroxy Toluene = 2,6 Tert butyl-4-methylphenol ', '', 'Sigma', '', '250 g', '1712.00', '1 ขวด', '', 'อ.ปัณณวิญช์', '', 'ปี 59/ TC IV327/25034(ตกลง)'),
('generalB21', 'B____', 'Bovine bile', '', 'Sigma', '', '10 g', '2800.00', '1 ขวด', '', 'อ.ปัณณวิญช์', '', 'ปี 59/ UNS IV59/______(ตกลง)'),
('generalB3', 'B7.1', 'Bentonite', 'โอ.วี.', 'Commercial', '', '1 kg', '74.90', '2 pack ', '-', 'หมด', '', 'TC IV305/22844'),
('generalB4', 'B7.2', 'Bentonite', 'Srichand', 'Commercial', '', '500 g', '95.00', '2 pack ', '400 g + 1', 'opened / stock (ตู้สาร)', '', 'ปี58/58-083360 (ตกลง)'),
('generalB5', 'B____', 'Bentonite (Japan)', '', '', '', '500 g', '95.00', '4 pack', '', 'อ. สมศักดิ์', '', 'ปี 59/ UNS IV59/______(ตกลง)'),
('generalB6', 'B12.1', 'Biotin', '', 'Sigma', ' -', '5 g', '17,950.00', '1 ขวด', '2.5 g', 'ตู้เย็น 4 C ขาว', '', 'ปี 53/BT 53-09642'),
('generalB7', 'B12.2', 'Biotin', '', 'Fluka', 'biochemika', '1 g', '4,430.00', '1 ขวด', '0.5 g', 'ตู้เย็น 4 C ขาว', '', 'ปี 50/NCG5007-0169'),
('generalB8', 'B____', 'Biotin', '', 'Sigma', '', '1 g', '5,000.00', '1 ขวด', '', 'อ.ปัณณวิญช์', '', 'ปี 59/ UNS IV59/______(ตกลง)'),
('generalB9', 'B16', 'Boric acid', 'H3BO3', 'Fisher', 'AR', '1 kg', '535.00', '2 ขวด', '500g + 1', 'opened / stock (ตู้สาร)', '', 'ปี 50/CTL 5001993'),
('generalC21', 'C', '2-Chloroethylmethyl ammonium chloride', 'C5H13Cl12N', 'Fluka', 'purum', '25 g', '1,885.00', ' 1 ขวด', '20 g', '', '', 'ปี 51/NT 93/4645'),
('generalC22', 'C1.1', 'Calcium carbonate', 'CaCO3', 'Qrec', 'AR', '1 kg', '2,570.00', '1 ขวด', '-', 'opened (ห้องวิจัย)', '', 'ปี 54/ยูเนี่ยน ซายน์54/035822'),
('generalC23', 'C1.2', 'Calcium carbonate', 'CaCO3', 'Loba', '', '500 g', '468.00', '1 ขวด', '200 g', 'opened (ตู้เก็บสารเคมี)', '', 'UnionScience 57/070588'),
('generalC24', 'C1.3', 'Calcium carbonate', 'CaCO3', 'Carlo', 'AR', '250 g', '240.00', '4 ขวด', '4', 'stock (ตู้สาร)', 'Jan-20', 'ปี 58/IT IV15-081461 (สอบ)'),
('generalC25', 'C2', 'Calcium chloride', 'CaCl2.2H2O', 'Ajax', 'Univar ', '500 g ', '250.00', '1 ขวด', '1', 'stock (ตู้สาร)', ' ', 'ปี 51/บNT 56/2754'),
('generalC26', 'C4', 'Calcium chloride dried', 'CaCl2', 'APS', 'Unilab', '500 g', '565.00', '1 ขวด', '250 g', 'opened (ตู้เก็บสารเคมี)', '', 'ปี 51/บNT 93/4645'),
('generalC27', 'C5', 'Calcium chloride dihydrate', 'CaCl2.2H2O', 'Merck', 'for analysis', '1 kg', '770.00', '2 ขวด', '500 g', 'opened (ตู้เก็บสารเคมี)', 'Discard', 'ปี 51/บOV 01/00014'),
('generalC28', 'C6', 'Calcium chloride dihydrate', 'CaCl2.2H2O', 'Merck', 'for analysis', '1 kg', '881.10', '1 ขวด', '1', 'stock (ตู้สาร)', ' 5 year', 'ปี 50/บHiat 500137'),
('generalC29', 'C7', 'Calcium chloride anhydrous', 'CaCl2', 'Qrec', 'AR', '500 g', '650.00', '2 ขวด', '250 g', 'opened (ห้องวิจัย)', 'after ', 'ปี 51/SP-510000360'),
('generalC30', 'C8', 'Calcium chloride dihydrate,powder', 'CaCl2.2H2O', 'Schrault', 'Reagent grade', '1 kg', '596.00', '1 ขวด', '500 g', 'opened (ห้องวิจัย)', 'open', 'ปี 51/บOV 08/03513'),
('generalC31', 'C___', 'Tri-calcium dicitrate tetrahydrate', 'Ca3(C6H5O7)2.4H2O', '', '', '500 g', '', '1 ขวด', '250 g', 'opened (ตู้เก็บสารเคมี)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalC32', 'C9', 'Calcium hypochlorite ,granular,65%', 'CaCl2O2', 'Acros', 'Organics', '1 kg', ' - ', '1 ขวด', 'หมด', 'หมด', '', 'ปี 51/TTK sci 5302789'),
('generalC33', 'C11', 'Calcium nitrate', 'Ca(NO3)2.4H2O', 'Ajax', 'Univar ', '500 g ', '550.00', '1 ขวด', 'หมด', 'หมด', '', 'ปี 51/ศิริปัญญา510000360'),
('generalC34', 'C11.1', 'Calcium nitrate', 'Ca(NO3)2.4H2O', 'Ajax', 'Univar ', '500 g ', '545.00', '1 ขวด', '500 g', 'opened (ตู้สารเคมี)', '', 'ปี 53/CM VM 1008011'),
('generalC35', 'C11.2', 'Calcium nitrate', 'Ca(NO3)2.4H2O', 'Ajax', 'Univar ', '500 g', '500.00', '1 ขวด', '1', 'stock (ตู้สาร)', '', 'ปี 53/NCG 5309-0020'),
('generalC36', 'C12', 'tri-Calcium phosphate', 'Ca3(PO4)2', 'Himedia', 'Extra pure', '500 g ', '1,438.00', '1 ขวด', '250 g', 'opened (ตู้เก็บสารเคมี)', 'Dec-09', 'ปี 51/IM 222676'),
('generalC37', 'C12.1', 'tri-Calcium phosphate', 'Ca3(PO4)2', 'Ajax', 'Univar ', '1 Kg', '2,115.00', '1 ขวด', '500 g', 'opened (ห้องวิจัย)', '', 'ปี 53/UN S 53/026687'),
('generalC38', 'C13', 'Calcium sulphate anhydrous', 'CaSO4', 'Carlo', 'for analysis', '500 g', '1,050.00', '1 ขวด', '-', 'หมด', '', 'ปี 54/IM 268859'),
('generalC39', 'C13.1', 'Calcium sulphate dihydrate', 'CaSO4.2H2O', 'Ajax', 'Unilab', '500 g', '455.00', ' 1 ขวด', '-', 'หมด', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalC40', 'C13.2', 'Calcium sulphate anhydrous', 'CaSO4', 'Carlo', 'for analysis', '500 g', '400.00', '2 ขวด', '250g + 1', 'opened/stock (ตู้สารเคมี)', 'Mar-20', 'ปี 58/IT IV15-081461'),
('generalC41', 'C14', 'Carbon tetrachloride ', 'CCL4', 'Merck', 'AR', '2.5 L', '2,800.00', ' - ', '2 L', 'opened (hood)', '', 'ปี 51/KPN 47/145'),
('generalC42', 'C14.1', 'Carboxymethyl cellulose sodium salt', 'C28H30Na8O27', 'Sigma', ' - ', '500 g', '6,220.00', '1 ขวด', '300 g', 'opened (ตู้สารเคมี)', '', 'ปี 53/TTK sci 5303487'),
('generalC43', 'C14.2', 'Carmine', '', 'Acros', ' -', '5 g', '1,630.00', '1 ขวด', '5 g', 'opened (ตู้ปรสิต)', '', 'ปี 51/IM 288134'),
('generalC44', 'C17', 'Cellulose acetate', ' -', 'Fluka', ' -', '250 g', '1,685.00', '1 ขวด', '200 g', 'opened (ตู้เก็บสารเคมี)', '', 'ปี 51/NCG 5007-0006'),
('generalC45', 'C18', '(C-TAB)  Hexadecyl-trimethylammonium bromide', 'C19H42BrN', 'Fluka', 'purum', '100 g ', '2,349.00', ' 1 ขวด', '80 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/KPN 48/477'),
('generalC46', 'C18.01', 'Cetyltrimethylammonium bromide (C-TAB)', 'C19H42BrN', 'AppliChem', 'Molecular', '100 g', '1,800.00', '2 ขวด', '80 g + 1', 'opened (ตู้สารเคมี)/ stock', '', 'BankT. L57-07100'),
('generalC47', '-', 'Chitosan', '', 'Fluka', 'Biochemika', '25g', '-', '1 ขวด', '20 g', 'opened (ตู้เก็บสารเคมี)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalC48', 'C19', 'Chloral hydrate', 'C2H3Cl3O2', 'CXL', 'AR', '250 g', '1,120.00', '1 ขวด', '200 g', 'opened (ตู้เก็บสารเคมี)', '', 'ปี 49/ศิริปัญญา 4908022'),
('generalC49', 'C21', 'Chloroform', 'CHCl3', 'Carlo', ' RPE ACS for analysis-', '2.5 L', '770.00', '1 ขวด', '500 ml', 'opened (hood)', '', 'ปี 51/IM 222690'),
('generalC50', 'C___', 'Chloroform', 'CHCl3', 'BHD', '', '2.5 L', '', '3 ขวด', '1L + 2', 'stock (ใต้ hood)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalC51', 'C___', 'Chloroform', 'CHCl3', 'labscan', '', '2.5 L', '', '1 ขวด', '1', 'stock (ใต้ hood)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalC52', 'C21.01', 'Chloroform', 'CHCl3', 'labscan', 'HPLc grade', '2.5 L', '1,330.00', '1 ขวด', '1', 'stock (ใต้ hood)', '', 'ปี 54/ยูเนี่ยนซายน์ 54/035822'),
('generalC53', 'C___', 'Chloroform', '', 'labscan', '', '2.5 L', '834.60', '1 ขวด', '', 'อ.สุรีวัลย์', '', 'ปี 59/ TC IV328/…. (ตกลง)'),
('generalC54', 'C20', 'Chloroform: Isoamylalcohol (24:1)', '', 'Sigma-Aldrich', '', '1 L', '6,600.00', '1 ขวด', '500 ml', 'stock (ตู้เย็น 4C)', '', 'ปี58/ UN 58-083360 (ตกลง)'),
('generalC55', 'C21.1', 'Chromotrop 2B', '', 'Fluka', '', '10 g', '1,400.00', '1 ขวด', '6 g', 'ตู้ปรสิต', '', 'UnionScience 57/070586'),
('generalC56', 'C21.2', 'Chromotrop 2R', 'C16H10N2Na2O8S2', 'Fluka', 'Univar ', '10 g', '1,460.00', '1 ขวด', '', 'ตู้ปรสิต', '', 'ปี 55/IV281/20465'),
('generalC57', 'C21.2.1', 'Chromotrop 2R', '', 'Sigma', '', '25 g', '3,350.00', '1 ขวด', '1', 'stock (ตู้เก็บสารเคมี)', '', 'UnionScience 57/070585'),
('generalC58', 'C21.4', 'Cholesterol', 'C27H46O', '', '', '50 g', '1,712.00', '1 ขวด', '', 'อ.กาญต์รวี', '', 'Pacific Science 57/50247'),
('generalC59', 'C21.3', 'Chorionic gonadotropin', '', 'Sigma', '', '50 µg', '2,620.00', '1 ขวด', '', 'opened (ตู้เย็น 0C ขาว)', '', 'ปี 49/S-Sci49-308'),
('generalC60', 'C___', 'Chorionic gonadotropin', '', 'Sigma', '', '1 mg', '-', '1 ขวด', '', 'opened (ตู้เย็น 0C ขาว)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalC61', 'C22', 'Citric acid', 'C6H8O7.H2O', 'Fisher', 'for analysis', '1 kg', '583.00', '1 ขวด', '500 g', 'opened (ตู้เก็บสารเคมี)', '', 'ปี 51/OV 02/00541'),
('generalC62', 'C23', 'Citric acid', 'C6H8O7.H2O', 'โอ.วี.', 'Commercial', '1 kg', ' -', '2 ขวด', '1000 g', 'opened (ตู้เก็บสารเคมี)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalC63', 'C23.1', 'Citric acid', 'C6H8O7.H2O', 'Ramkem', 'AR', '1,000g', '223.00', '2 ขวด', '1', 'stock (ตู้สารเคมี)/ หมด 1', '', 'ปี 53/UNS 53/026687'),
('generalC64', 'C24', 'Coaglulate plasma , rabbit with EDTA', ' -', 'BBL', ' -', '3 ml', '236.00', '10 ขวด', 'หมด', 'หมด', '', 'ปี 52/ศิริปัญญา520000372'),
('generalC65', 'C___', 'Coaglulate plasma , rabbit with EDTA', '', 'BBL', ' -', '3 ml', '330.00', '50 ขวด', '50', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 59/ TC IV326/24924(ตกลง)'),
('generalC66', 'C25', 'Coat stabilizer and block buffer', ' -', ' -', ' -', '125 ml', '3,745.00', ' 1 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 51/เอสเอ็มเคมีคอล0706767'),
('generalC67', 'C26', 'Cobalt(II) chloride', 'CoCl2.6H2O', 'APS', 'Univar ', '100 g', '660.00', '1 ขวด', '50 g', 'opened (ตู้เก็บสารเคมี)', '', 'ปี 51/NT 35/1724'),
('generalC68', 'C26.1', 'Cobalt(II) chloride', 'CoCl2.6H2O', 'Ajax', 'Univar ', '100 g', '840.00', ' 1 ขวด', '50 g', 'opened (ห้องวิจัย)', '', 'ปี 54/A.T.science IV5407085'),
('generalC69', 'C27.1', 'Cobalt(II) nitrate', 'Co(NO3)2.6H2O', 'APS', 'Univar ', '100 g', '1,220.00', ' - ', '50 g', 'opened (ตู้เก็บสารเคมี)', '', 'ปี 53/พี.พีเคมิคอล003/5300002'),
('generalC70', 'C27.2', 'Cobalt(II) nitrate', 'Co(NO3)2.6H2O', 'APS', 'Univar ', '100 g', '1,143.00', ' 1 ขวด', '1', 'stock (ตู้เก็บสารเคมี)', '', 'ปี 54/A.T.science '),
('generalC71', 'C28', 'Colchicine', 'C22H25NO6', 'Pharma Chemika', 'AR', '1 g', '3,000.00', '1 ขวด', '1', 'stock (ตู้เก็บสารเคมี)', '', 'ปี 51/ศิริปัญญา 510000360'),
('generalC72', 'C32.1', 'Comparative Proteomics Kit I:Protein Profiler Module', '', 'Bio-Rad', ' -', ' -', '9,000.00', '1 ขวด', '1', 'ตู้แช่', '', 'ปึ 53/เคโมไซเอนซ์ SQ 2010104033'),
('generalC73', 'C32.2', 'Comparative Proteomics Kit II:Westerm Blot Module', '', 'Bio-Rad', ' -', ' -', '13,000.00', '1 ขวด', '1', 'ตู้แช่', '', 'ปึ 53/เคโมไซเอนซ์ SQ 2010104033'),
('generalC74', 'C34.1', 'Copper (II) acetate', 'C4H8CuO6', 'Ajax', '', '500 g', '1,340.00', '1 ขวด', '400 g', 'opened (ตู้เก็บสารเคมี)', '', 'ปี 55/IV281/20465'),
('generalC75', 'C35', 'Copper (II)chloride (Cupric chloride)', 'CuCl2.2H2O', 'Ajax', 'Univar ', '500 g', '1,135.00', ' - ', '400 g', 'opened (ตู้สารเคมี)', '', 'ปี 51/NT 61/3049'),
('generalC76', 'C36', 'Copper(II)sulfate pentahydrate', 'CuSO4.5H2O', 'Ajax', 'Univar ', '500 g', '399.00', '1 ขวด', '200 g', 'opened (ห้องวิจัย)', '', 'ปี 51/KPN 47/312'),
('generalC77', 'C37', 'Copper(II)sulfate pentahydrate', 'CuSO4.5H2O', 'Carlo', 'ACS-for analysis', '1 kg', ' -', '1 ขวด', '200 g', 'opened (ตู้สารเคมี)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalC78', 'C38', 'Copper(II)sulfate pentahydrate', 'CuSO4.5H2O', 'Fisher', 'AR', '1 kg', '765.00', '2 ขวด', '500 g', 'opened (ตู้สารเคมี)/หมด 1', '', 'ปี 51/OV 0803503'),
('generalC79', 'C39', 'Copper(II)sulfate pentahydrate', 'CuSO4.5H2O', 'Scharlau', 'Reagent grade', '1 kg', ' - ', '1 ขวด', '500 g', 'opened (ตู้สารเคมี)', '', 'ปี 51/บริจาค/ จากคลังเก่า'),
('generalC80', 'C39.1', 'Copper(II)sulfate pentahydrate', 'CuSO4.5H2O', 'Ajax', 'Univar ', '500 g', '460.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิด)', '', 'ปี 53/พี.พีเคมิคอล003/5308002'),
('generalC81', 'C39.2', 'Copper(II)sulfate pentahydrate', 'CuSO4.5H2O', 'Qrec', '', '500 g', '428.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิด)', '', 'ปี 54 งบแพทย์'),
('generalC82', 'C45', 'Cycloserine', 'C3H6N2O2', 'Fluka', 'AR', '5 g', '12,870.00', '1 ขวด', '', 'opened (ตู้เย็น 0C ขาว)', '', 'ปี 51/IM '),
('generalC83', 'C46', 'L-Cysteine', 'C3H7NO2S', 'Merck', 'for biochemistry', '25 g', '1,200.00', ' - ', '20 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/CM 38/01915'),
('generalC84', 'C47', 'L-Cysteine hydrochloride', 'C3H7NO2S.HCl.H2O', 'Himedia', '', '25 g', '648.00', '1 ขวด', '25 g', 'opened (ตู้สารเปิดใช้)', '', 'UnionScience 57/070587'),
('generalC85', '-', 'L-Cysteine hydrochloride', '', 'Sigma', '', '25 g', '648.00', '1 ขวด', '', 'อ.ปัณณวิชญ์', '', 'ปี 59/ UNS IV59/______(ตกลง)'),
('generalC86', 'C___', 'Cytryl Alcohol', '', '', '', '1 kg', '150.00', '2 pack', '', 'รอรับของ', '', 'ปี 59/ UNS (ตกลง)'),
('generalC87', 'C___', 'Cyclomethicone', '', '', '', '1 kg', '420.00', '2 pack', '', 'รอรับของ', '', 'ปี 59/ UNS (ตกลง)'),
('generalC88', 'C48', 'L-Cysteine methyl ester hydrochloride', 'C4H9NO2S.HCl', 'Fluka', 'puriss', '25 g', '2,415.00', ' - ', '10 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/NT 93/4646'),
('generalC89', 'C49', 'N-Acetyl-L-cysteine', 'C5H9NO3S', 'Fluka', 'puriss', '10 g', '1,010.00', ' - ', '', 'หมด', '', 'ปีCM 38/01915'),
('generalC90', 'C___', 'Calcifirol (Vitamin D2) (Ergocalciferol)', '', 'Sigma', '', '1 g', '5200.00', '1 ขวด', '', 'อ.ปัณณวิชญ์', '', 'ปี 59/ UNS IV59/______(ตกลง)'),
('generalD0', 'D', '2,6-diChlorophenolindophenol sodium salt hydrate', 'C12H6Cl2NNaO2.XH2O', 'Fluka', 'purum', '5 g', '1789.00', '2 ขวด', '2 .5 g', 'opened (ตู้เก็บสาร)', '', 'ปี 51/KPN 48/474'),
('generalD1', 'D1', '4-Dimethylaminobenzaldehyde', '(CH3)2NC6H4CHO', 'APS', 'Univar ', '100 g ', ' - ', ' 1 ขวด ', '50 g', 'opened (ตู้สารเคมี)', '', 'ปี 51/ บริจาค/ จากคลังเก่า'),
('generalD10', 'D____', 'Diethanolamine', '', 'Amresco', 'AR', '1 kg', '1409.19', '1 ขวด', '', 'IS', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('generalD11', 'D11', 'Diethyl ether', '(C2H5)2O', 'Carlo', ' for analysis', '1 L', '420.00', '5 ขวด', '1', 'opened/ stock 1 (hood)/ หมด 3', '', 'ปี 54/IM 268859'),
('generalD12', 'D___', 'Diethyl ether', '(C2H5)2O', 'Lab-scan', '', '2.5 L', '', '3 ขวด', '3', 'stock (hood)', '', ''),
('generalD13', 'D___', '2,4-Dichlorophenoxyacetic acid', '', 'Fluka', 'chemika', '250 g', '-', '1 ขวด', '', 'หมด', '', 'ปี 51/ บริจาค/ จากคลังเก่า'),
('generalD14', 'D11.1', '3,5-Dinitrosalicylic acid', '', 'Fluka', 'purum', '25 g', '3100.00', '1 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 51/NCG 5309-0020'),
('generalD15', 'D11.2', '3,5-Dinitrosalicylic acid', '', 'Aldrich', '', '100 g ', '', '1 ขวด', '1', 'stock (ตู้เย็น 4C ขาว)', '', 'งบปี 55'),
('generalD16', 'D11.01', 'Dimethyl sulfoxide (DMSO)', '(CH3)2SO', 'RCL-Labscan', ' -', '2.5 L', '2050.00', '1 ขวด', '500 ml', 'opened (ห้องวิจัย)', '', 'UnionScience 57/070585'),
('generalD17', 'D___', 'Dimethyl sulfoxide (DMSO)', '(CH3)2SO', 'RCL-Labscan', '', '2.5 L', '2000.00', '1 ขวด', '1', 'stock ', '', 'ปี 59/ TC IV326/24924(ตกลง)'),
('generalD18', 'D13.1', 'Taq DNA polymerase', '', '', '', '', '1605.00', '1 หลอด', '', 'ตู้เย็น 0C ขาว', '', 'ปี56/Gibthai SX5608000297'),
('generalD19', 'D___', 'Taq DNA polymerase (500 U ซื้อ 1 แถม 1)', '', 'RBC BioSc.', '', 'ชุด', '2033.00', '1 ชุด', '', 'อ.สุรีวัลย์', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('generalD2', 'D2', '4-Dimethylaminobenzaldehyde', 'C9H11NO', 'BDH', 'AnalaR', '100 g ', ' - ', ' 1 ขวด ', '25 g', 'opened (ตู้สารเคมี)', '', 'ปี 51/ บริจาค/ จากคลังเก่า'),
('generalD20', 'D___', 'Taq DNA polymerase (250 U)', '', 'QIAGEN 201223 ', '', 'ชุด', '7383.00', '1 ชุด', '', 'อ.อรอำไพ', '', 'ปี 59/ CM VM IV1607054 (ตกลง)'),
('generalD21', 'D___', 'Go taq green master mix', '', 'Promega', '', 'ฃุด', '2140.00', '2 ชุด', '', 'อ.อรอำไพ', '', 'ปี 59/ CM VM IV1607054 (ตกลง)'),
('generalD22', 'D14', '1 kp DNA marker', ' -', ' -', ' -', '50 µg', '1712.00', '1 หลอด', '', 'หมด', '', 'กิบไทย SX5405000960'),
('generalD23', 'D___', '1 kp DNA marker ', '', 'Bio-helix', '', '50 µg', '1230.50', '1 หลอด', '', 'stock', '', 'ปี 59/ Gibthai SX5906002126 (ตกลง)'),
('generalD24', 'D15.1', '100 bp DNA marker', ' -', ' -', ' -', '', '1123.50', '2 หลอด', '-', 'หมด', '', 'ปี56/Gibthai SX5608000297'),
('generalD25', 'D15.2', '100 bp DNA marker', ' -', ' -', ' -', '50 µl', '1712.00', '1 หลอด', '-', 'ตู้เย็น 0C ขาว', '', 'Pacific Science 57/50247'),
('generalD26', 'D___', '100 bp DNA marker', '', '', '', '50 µg', '2589.40', '1 หลอด', '1', 'ตู้เย็น 0C ขาว', '', 'ปี58/ TC IV317/24019 (ตกลง)'),
('generalD27', 'D___', '100 bp DNA marker', '', '', '', '', '1,235.85', '2 หลอด', '2', 'stock (ตู้เย็น 0C ขาว)', '', 'ปี58/Gibthai SX5807001208 (ตกลง)'),
('generalD28', 'D16', '10 mM dNTP', ' -', ' -', ' -', '200 µl', '1819.00', '1 ชุด', '-', 'หมด', '', 'กิบไทย SX5405000960'),
('generalD29', 'D16.1', '10 mM dNTP', ' -', 'RBC', ' -', '200 µl', '1819.00', '2 vial', '1', 'ตู้เย็น 0C ขาว', '', 'Gibthai SX5705001206-2'),
('generalD3', 'D____', 'Decon 90', '', '', '', '5 L', '1840.40', '3 แกลลอน', 'หมด', 'หมด', '', 'ปี58/IT IV15-081459 (สอบ)'),
('generalD30', 'D16.2', '10 mM dNTP', ' -', '', ' -', '200 µl', '1926.00', '1 vial', '1', '', '', 'Pacific Science 57/50247'),
('generalD31', 'D___', '10 mM dNTP ', ' -', 'RBC BioSc.', ' -', '200 µl', '2033.00', '1 vial', '', 'stock', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('generalD32', 'D___', 'DPPH', '', 'Sigma-Aldrich', '', '1 g', '5900', '1 ขวด', '', 'ค้างส่ง (อ.ปัณณวิชญ์)', '', 'ปี 59/ BT L59-13 (ตกลง)'),
('generalD4', 'D7.4', 'Detergent', '', 'Teepol', ' -', '3.8 l', '160.50', '20 แกลลอน', 'หมด', 'หมด', '', 'TC IV305/22844'),
('generalD5', 'D7.5', 'Detergent', '', 'Teepol', ' -', '3.8 l', '192.60', '10 แกลลอน', '2', 'stock ', '', 'ปี58/IT IV15-081459 (สอบ)'),
('generalD6', 'D5', 'Deoxycholic acid sodium salt', 'C24H39NaO4', 'Fluka', ' -', '25 g', '2235.00', '1 ขวด', '22 g', 'opened (ตู้สารเคมี)', '', 'ปี 52/ศิริปัญญา 520000372'),
('generalD7', 'D6', 'Deoxycholic acid', 'C24H40O4', 'Sigma-Aldrich', ' -', '25 g', '', '1 ขวด', '1', 'stock (ตู้สารเคมี)', '', 'ปี 58/UNS'),
('generalD8', 'D10.1.1', 'Dettol ', '', 'Dettol', '', '5 L', '990.00', '1 แกลลอน', '-', 'หมด', '', 'ปี 57 Union Science 57/066461'),
('generalD9', 'D10.1.2', 'Dettol ', '', 'Dettol', '', '5 L', '990.00', '2 แกลลอน', '-', 'หมด', '', 'ปี 57 Union Science 57/070586'),
('generalE0', 'E1', 'EDTA disodium salt dihydrate', 'C10H14N2Na2O8.2H2O', 'Ajax', 'Univar ', '500 g', '696.00', '2 ขวด', '10 g +1', 'opened (ตู้เก็บสาร)/ stock 1', '', 'ปี 51/NT 35/1720'),
('generalE1', 'E2', 'EDTA disodium salt dihydrate', 'C10H14N2Na2O8.2H2O', 'Ajax', 'Univar ', '500 g', '695.00', '1 ขวด', '100 g', 'opened (ตู้เก็บสารเคมี)', '', 'ปี 51/CTL 5001996'),
('generalE10', 'E____', 'Ethanol 95%', 'C2H5OH', ' -', 'commercial grade', '20 L', '963.00', '35 ถัง', 'หมด', 'หมด', '', 'ปี58/IT IV15-081459 (สอบ)'),
('generalE11', 'E17', 'Ethanol Absolute(99.9%)', 'C2H5OH', 'JHD', 'AR', '2.5 l', '695.50', '12 ขวด', '4', 'stock (ใต้ hood) ', '', 'ปี 51/CTL 5001993'),
('generalE12', 'E18', 'Ethanol 95%-98%', 'C2H5OH', 'Merck', 'AR', '2.5 L', '827.00', '1 ขวด', '500 ml', 'opened (hood)', '', 'ปี 51/ยูเนี่ยน034531'),
('generalE13', 'E18.1', 'Ethyl alcohol absolute', 'C2H5OH', 'Carlo', 'RPE ACS for analysis', '2.5 L', '650.00', '2 ขวด', '2', 'stock (ใต้ hood)', '', 'ปี 54/IM 268859'),
('generalE14', 'E____', 'Ethanol Absolute(99.9%)', 'C2H5OH', 'Merck', '', '2.5 l', '', '5 ขวด', '4', 'stock (ใต้ hood)', '', 'ปี 51/ บริจาค/สารเก่า'),
('generalE15', 'E____', 'Ethanol Absolute(99.9%)', 'C2H5OH', 'labscan', '', '2.5 l', '', '2 ขวด', '1', 'stock (ใต้ hood)', '', 'ปี 51/ บริจาค/สารเก่า'),
('generalE16', 'E18.2', 'Ethanol Absolute(99.9%)', 'C2H5OH', 'Qrec', '', '2.5 l', '684.80', '5 ขวด', '1', 'stock (ใต้ hood)', '', 'ปี 56/IV292/21544(TC)'),
('generalE17', 'E____', 'Ethyl alcohol absolute', '', 'Carlo', '', '2.5L', '740.00', '1 ขวด', '1', 'stock (ใต้ hood)', '', 'ปี58/IT IV15-081460(สอบ)'),
('generalE18', 'C___', 'Cleansing Solution ', '', '', 'Commercial', '14.5 kg', '1140.00', '10 ถัง', '', 'รอรับของ', '', 'ปี 59/ Siripanya INV59000520(ตกลง)'),
('generalE19', 'E19', 'Ethylenediamine 99%', 'C2H8N2', 'Panreac', ' -', '1000 ml', ' -', '3 ขวด', '3', 'stock (ใต้ hood)', '', 'ปี 51/KPN 48/478'),
('generalE2', 'E3', 'EDTA disodium salt dihydrate', 'C10H14N2Na2O8.2H2O', 'Ajax', 'Univar ', '500 g', '781.00', '1 ขวด', '1', 'stock (ตู้เก็บสาร)', '', 'ปี 51/Hiat 500102'),
('generalE20', 'E19.2', 'Ethyl acetate', '', 'labscan', 'AR', '2.5 L', '725.00', '2 ขวด', 'หมด', 'หมด', '', 'UnionScience 57/070589'),
('generalE21', 'E____', 'Ethyl acetate', '', 'Carlo', '', '2.5 L', '690.00', '2 ขวด', '1', 'stock (ใต้ hood) / หมด 1', '', 'ปี58/IT IV15-081461 (สอบ)'),
('generalE22', 'E____', 'Ethyl acetate', '', '', '', '2.5 L', '725.00', '1 ขวด', '1', 'stock', '', 'ปี 59/ UNS IV59/______(ตกลง)'),
('generalE23', 'E____', 'Ethyl acetate', '', '', '', '2.5 L', '750.00', '5 ขวด', '5', 'รอรับของ', '', 'ปี 59/ UNS (ตกลง)'),
('generalE24', 'E20', 'E2 Lode 20 bp Molecular Ruler', '', 'Bio-Rad', ' -', ' -', '6,168.22', '1 ขวด', '1', 'opened (ตู้เย็น 0C ขาว)', '', 'เคโมไซเอนซ์ SQ 2010104033'),
('generalE3', 'E4', 'EDTA disodium dihydrate', 'C10H14N2Na2O8.2H2O', 'Mallinckrodt', 'Gen A.R.', '500 g', '674.10', ' 2 ขวด', '2', 'stock (ตู้เก็บสาร)', '', 'ปี 51/S-Sci 47/573'),
('generalE4', 'E4.1', 'EDTA disodium salt ', 'C10H14N2Na2O8.2H2O', 'Ajax', 'Univar ', '500 g', '750.00', '1 ขวด', '1', 'stock (ตู้เก็บสาร)', '', 'ยูเนี่ยน ซายน์ 53/026687'),
('generalE5', 'E____', '0.5 M EDTA (pH 8)', '', '', '', '500 ml', '1,850.00', '1 ขวด', '1', 'stock 59 ', '', 'ปี 59/ Gibthai (ตกลง)'),
('generalE6', 'E6', 'E.D.T.A. Ferric sodium salt', 'C10H12O8N2FeNa.H2O', 'APS', 'Labchem', '100 g', '859.00', ' - ', '50 g', 'opened (ตู้เก็บสารเคมี)', '', 'ปี 51/KPN 47/312'),
('generalE7', 'E10', 'Eosin-Y', ' -', 'Carlo', 'Gurr certistain', '25 g', '642.00', '2 ขวด', '15 g', 'opened (ตู้ปรสิต)/ หมด 1', '', 'ปี 51/BT 50-09126'),
('generalE8', 'E12.3', 'Ethanol 70%', 'C2H5OH', 'ศิริบัญชา', ' -', '450 ml', '35.00', '20 ขวด', '6', 'stock', '', 'UnionScience 57/070585'),
('generalE9', 'E____', 'Ethanol 70%', '', '', '', '450 ml', '41.00', '20 ขวด', '', 'รอรับของ', '', 'ปี 59/ (ร่วมกับฃีงเคมี)'),
('generalF0', 'F0', 'Fecal calf serum', '-', 'Biochrom AG', ' -', '500 ml', '4,110.00', '1 ขวด', '', 'หมด', '', 'NCG 5008-0033'),
('generalF1', 'F0.1', 'Folin &ciocalteu\'s (phenol reagent)', '-', 'Fisher.', '-', '100 ml', '550.00', '1 ขวด', '50 ml', 'opened (ตู้เย็น 4C ขาว)', '', 'TTK sci 5302789'),
('generalF2', 'F0.2', 'Folin ', '-', '', '-', '500 ml', '2,850.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'UnionSci 57/070589'),
('generalF3', 'F3', 'Folic acid', 'C19H19N7O6', 'Fisher.', ' -', '25 g', '1,980.00', '1 ขวด', '', 'stock (ตู้สารยังไม่เปิด)', '', 'UnionSci57/070587'),
('generalF4', 'F4.1', 'Formaldehyde solution 37%', '', 'Ajax', 'Univar', '2.5 L', '595.00', '1 ขวด', 'หมด', 'หมด', '', 'BT 53-09642'),
('generalF5', 'F4.2', 'Formaldehyde solution 37%', ' -', 'Merck', ' -', '2.5 L', '1,000.00', '3 ขวด', '1 L', 'opened (hood) / หมด 1', '', 'ศิริปัญญาวิทย์แพทย์ 54'),
('generalF6', 'F4.3', 'Formaldehyde solution 37%', ' -', 'Merck', ' -', '2.5 L', '1,000.00', '2 ขวด', '2', 'stock (hood)', '', 'ศิริปัญญาพยาบาล 54'),
('generalF7', 'F4.4', 'Formaldehyde solution 37%', ' -', 'Merck', ' -', '2.5 L', '1,000.00', '4 ขวด', '4', 'stock (hood)', '', 'ปี 55/ศิริINV550000630'),
('generalG0', 'G3', 'Gelatin', ' -', 'Ajax', 'AR', '500 g', '1,050.00', '1 ขวด', '100 g', 'opened ', '', 'ปี 54/IM 268859'),
('generalG1', 'G3.01', 'Gelatin', ' -', 'Ajax', 'AR', '500 g', '1,080.00', '2 ขวด', '300 g', 'opened 1/ ห้องวิจัย 1', '', 'ปี 55/IV281/20465'),
('generalG10', 'G13.3', 'Glycerol ', '', 'Carlo', '', '2.5L', '1,391.00', '3 ขวด', '2', 'opened (ตู้ solution)/stock', '', 'ปี58/ IT IV15-081459 (สอบ)'),
('generalG11', 'G__', 'Glycerol ', '', 'Ajax', 'AR', '500 ml', '370.00', '1 ขวด', '', 'stock 59', '', 'ปี 59/ TC IV326/24924(ตกลง)'),
('generalG12', 'G14', 'Glycine', 'NH2CH2COOH', 'Ajax', 'Univar ', '500 g', '982.00', '1 ขวด', '100 g', 'opened (ตู้สาร)', '', 'ปี 51/NT 56/2761');
INSERT INTO `chemicals` (`type`, `code`, `name`, `chemical_formula`, `brand`, `grade`, `size`, `price/unit`, `amout`, `Remaining`, `storags`, `expiration_date`, `comment`) VALUES
('generalG13', 'G__', 'Glycine', '', 'BHD', 'Analar', '1 kg', '', '1 ขวด', '800 g', 'opened (ตู้สาร)', '', 'ปี 51/ บริจาค/ สารเก่า'),
('generalG14', 'G__', 'Glycerin', '', '', '', '450 ml', '100.00', '3 ขวด', '', 'รอรับของ', '', 'ปี 59/ UN S (ตกลง)'),
('generalG15', 'G15', 'Goat anti-human complement C3', ' -', 'Sigma', ' -', '1 Vial', '6,259.50', '1 Vial', '', 'ตู้เย็น 0C ขาว', '', 'ปี 53/เอสเอ็ม เคมีคอล 0706767'),
('generalG16', 'G16', 'Goat anti-human IgG', ' -', 'Invitrogen', ' -', '1 ml', '7,276.00', '1 หลอด', '', 'ตู้เย็น 0C ขาว', '', 'ปี 54/กิบไทย SX5405000960'),
('generalG17', 'G17', 'Glass balls', '', 'Ajax', '', '500 g', '820.00', '1 ขวด', '450 g', 'opened (ตู้สาร)', '', 'ปี 56/Bank t. L56-05527'),
('generalG18', 'G__', 'Glyceryl Monostearate (GMS)', '', '', '', '1 kg', '390', '2 pack', '', 'รอรับของ', '', 'ปี 59/ UN S (ตกลง)'),
('generalG2', 'G4', 'Gluconic acid ,potassium salt = Potassium glucanate', 'C6H11KO7', 'Acros', ' -', '1 kg', '2,880.00', '1 ขวด', '500 g', 'opened(สาร)', '', 'ปี 51/IM 267831'),
('generalG3', 'G__', 'glucose standard solution(1 mg/ml)', ' -', 'sigma', ' -', '100 ml', '-', '1 ขวด', '50 ml', 'ตู้เย็น 4C ขาว', '', 'ปี 51/ บริจาค/ สารเก่า'),
('generalG4', 'G__', 'glucose oxidase', ' -', 'sigma', ' -', '50 KU', '', '1 หลอด', '', 'ตู้เย็น 0C ขาว', '', 'ปี 51/ บริจาค/ สารเก่า'),
('generalG5', 'G__', '5-keto-D-gluconic acid', ' -', 'sigma', ' -', '1 g', '', '1 หลอด', '', 'ตู้เย็น 0C ขาว', '', 'ปี 51/ บริจาค/ สารเก่า'),
('generalG6', 'G__', 'B-1,3-glucan', ' -', 'sigma', ' -', '1 g', '', '1 หลอด', '', 'ตู้เย็น 0C ขาว', '', 'ปี 51/ บริจาค/ สารเก่า'),
('generalG7', 'G8', 'L- Glutamic  acid', 'C5H9NO4', 'Ajax', 'Labscan', '250 g', '842.00', '1 ขวด', '200 g', 'opened (ตู้สาร)', '', 'ปี51/S-sci  50 - 366'),
('generalG8', 'G9', 'L-Glutamic Acid', 'C5H9NO4', 'Fluka', ' -', '250 g', '1,562.00', '1 ขวด', '1', 'stock (ตู้สาร)', '', 'ปี51/OV 05/02341'),
('generalG9', 'G10', 'L-Glutamic Acid', 'C5H9NO4', 'Merck', 'biochemitry', '250 g', '2,022.30', '1 ขวด', '1', 'stock (ตู้สาร)', '', 'ปี51/BT 50-11680'),
('generalH0', 'H____', 'Haematoxylin', '', '', '', '450 ml', '1,284.00', '', '', 'stock', '', 'ปี 59/ TC IV327/25034 (ตกลง)'),
('generalH1', 'H', 'Heparin ammonium', ' -', 'Sigma', ' -', '100 KU', '4,857.80', '100 KU', '', 'opened (ตู้เย็น 4C)', '', 'เอสเอ็ม เคมีคอล 0706767'),
('generalH10', 'H____', 'Hydrochloric acid 37%', 'HCl', 'Carlo', '', '2.5 l', '', '1 ขวด', 'หมด', 'stock (ใต้ hood)', '', 'ปี 51/ บริจาค/ สารเก่า'),
('generalH11', 'H6.1', 'Hydrochloric acid 37%', 'HCl', 'Carlo', '', '2.5 l', '374.50', '1 ขวด', '1.5 L', 'stock (ใต้ hood)', '', 'ปี58/ IT IV15-081460(สอบ)'),
('generalH12', 'H____', 'Hydrochloric acid 37%', 'HCl', 'Qrec', '', '2.5 L', '380.00', '1 ขวด', '1', 'stock 59', '', 'ปี 59/ TC IV326/24924(ตกลง)'),
('generalH13', 'H____', 'Hydrogen peroxide solution 30%', ' -', 'Carlo', ' -', '1L', '', '1 ขวด', 'หมด', 'หมด', '', 'ปี 51/ บริจาค/ สารเก่า'),
('generalH14', 'H7', 'Hydrogen peroxide 12%', ' -', '', ' -', '450 ml', '99.00', '3 ขวด', '1', ' opened (ตู้สาร Sol)/ stock 1', '', 'ปี 56/ ยูเนี่ยนฯ56/057458'),
('generalH2', 'H3', 'Hexane', 'CH3(CH2)4CH3', 'Lab-scan', 'HPLC', '2.5 L', ' -', ' 1 ขวด', '1', 'stock(ใต้ hood)', '', 'ปี 51/ บริจาค/ สารเก่า'),
('generalH3', 'H____', 'Hexane', '', 'Lab-scan', 'HPLC', '2.5L', '', ' 1 ขวด', '1', 'opened (hood)', '', 'ปี 51/ บริจาค/ สารเก่า'),
('generalH4', 'H____', 'Hexanes 95%', '', 'J.T.Baker', '', '4L', '', ' 1 ขวด', '1', 'stock(ใต้ hood)', '', 'ปี 51/ บริจาค/ สารเก่า'),
('generalH5', 'H4.1', 'Histopaque', ' -', '', '', '100 ml', '2,750.00', '2 ขวด', '1', 'opened / stock   (ตู้เย็น 4C)', '', 'ปี 56/ BankT./L56-05527'),
('generalH6', 'H4.2', 'Histamine', ' -', 'Aldrich', '', '5 g', '4,120.00', ' 1 ขวด', '1', 'stock (ตู้เย็น 4C)', '', 'ศิริปัญญา INV5700000324'),
('generalH7', 'H5', 'Hydrochloric acid 36%', 'HCl', 'Ajax', 'Univar ', '2.5 l', '437.63', '1 ขวด', 'หมด', 'opened (hood)', '', 'ปี 51/Hiat 500137'),
('generalH8', 'H6', 'Hydrochloric acid 37%', 'HCl', 'Carlo', 'RPE', '2.5 l', '342.40', '1 ขวด', 'หมด', 'opened (hood)', '', 'ปี 51/IM 187955'),
('generalH9', 'H____', 'Hydrochloric acid 37%', 'HCl', 'Merck', '', '2.5 l', '', '1 ขวด', 'หมด', 'stock (ใต้ hood)', '', 'ปี 51/ บริจาค/ สารเก่า'),
('generalI0', 'IO.02', 'Immersion oil', 'C14H12O2', 'Merck', '', '500 ml', '3,280.00', '1 ขวด', '200 ml', 'opened (ตู้เก็บ solution)', '', 'ปี58/US 58/083360(ตกลง)'),
('generalI1', 'I_____', 'Immersion oil', 'C14H12O2', 'Merck', '', '500 ml', '2,461.00', '1 ขวด', '', 'stock', '', 'ปี 59/ TC IV327/25034 (ตกลง)'),
('generalI10', 'I9', 'Iron(II) sulphate', 'FeSO4.7H2O', 'APS', 'Unilab', '500 g', '300.00', '1 ขวด', '10 g', 'opened (ตู้เก็บสาร)', '', 'ปี 51/NT 46/2274'),
('generalI11', 'I10', 'Iron(II) sulphate', 'FeSO4.7H2O', 'CXL', 'AR', '500 g', '137.50', '2 ขวด', '400 g', 'opened (ห้องวิจัย)/ opened', '', 'ปี 51/ศิริฯ510000297'),
('generalI12', 'I10.1', 'Iron(II) sulphate', 'FeSO4.7H2O', 'Carlo', 'AR', '1000 g ', '600.00', '1 ขวด', '1', 'stock (ตู้เก็บสาร)', 'พ.ค.-20', 'ปี58/ IT IV15-081461(สอบ)'),
('generalI13', 'I_____', 'Iron(II) sulphate heptahydrate', 'FeSO4.7H2O', 'Loba', '', '500 g', '310.30', '1 ขวด', '1', 'stock', '', 'ปี 59/ TC IV327/25034 (ตกลง)'),
('generalI14', 'I_____', 'Iron(II) sulphate heptahydrate', '', '', '', '500 g', '400.00', '1 ขวด', '', 'รอรับของ', '', 'ปี 59/ TC (ตกลง)'),
('generalI15', 'I11', 'Iron(III) citrate = Ferric citrate', 'C6H5FeO7. 3H2O', 'Pharma Chemika', 'AR', '500 g', '700.00', '2 ขวด', '400 g + 1', 'opened (ตู้เก็บสาร)/ stock 1', 'ก.ค.-13', 'ปี 51/ศิริฯ510000360'),
('generalI16', 'I12', 'Iron(III) chloride anhydrous', 'FeCl3', 'APS', 'Unilab', '250 g', '520.00', '1 ขวด', '10 g', 'opened (ตู้เก็บสาร)', '', 'ปี 51/NT 56/2759'),
('generalI17', 'I15', 'Iron(III) chloride ', 'FeCl3', ' -', 'commercial  ', '1 kg', '76.00', '1 ขวด', '1000 g', 'opened (ตู้เก็บสาร)', '', 'ปี 51/ศิริฯ510000407'),
('generalI18', 'I13', 'Iron(III) chloride hexahydrate', 'FeCl3.6H2O', 'Qrec', 'AR', '500 g', '900.00', '1 ขวด', '', 'สารเสียสภาพ', '', 'ปี 51/NCG '),
('generalI19', 'I16', 'Iron(III) nitrate', 'Fe(NO3)3 · 9H2O', 'Ajax', 'Univar ', '500 g', '986.00', '1 ขวด', '1', 'stock (ตู้เก็บสารยังไม่เปิด)', '', 'ปี 51/KPN 48/526'),
('generalI2', 'I_____', '3-Indoleacetic acid', '', 'Sigma', '', '5 g', '1,391.00', '1 ขวด', '1', 'stock (ตู้เก็บสารยังไม่เปิด)', '', 'ปี58/ TCIV317/24019 (ตกลง)'),
('generalI20', 'I17', 'Iron(III) nitrate = Ferric nitrate ', 'FeN3O9.9H2O', 'Fluka', 'purum', '250 g', '1,040.00', '1 ขวด', '200 g', 'opened (ตู้เก็บสาร)', '', 'ปี 51/OV 02/00968'),
('generalI21', 'I18', 'Iron(III )sulphate', 'Fe2(SO4)3. xH2O', 'APS', 'Unilab', '500 g', ' -', '1 ขวด', '400 g', 'opened (ตู้เก็บสาร)', '', 'ปี 51/NT 61/3049'),
('generalI22', 'I19', 'Isoamyl alcohol = 3-Methyl-1-butanol', 'C5H11O6', 'Carlo', 'for analysis', '2.5 l', '1,765.50', '1 ขวด', '2 L', 'opened (hood)', '', 'ปี 51/IM 236300'),
('generalI23', 'I_____', 'Isoamyl alcohol = 3-Methyl-1-butanol', 'C5H11O6', 'Carlo', 'for analysis', '2.5 l', '1,765.50', '1 ขวด', '1', 'stock (ใต้ hood)', '', 'ปี 51/บริจาค/ สารเก่า'),
('generalI24', 'I19.2', 'Isopropyl ß-D-1thiogalactopyranoside(IPTG) ', ' -', ' -', ' -', '1 g', '1,284.00', '1 ขวด', '', 'opened (ตู้เย็น 0C)', '', 'ปี 54/แปซิฟิคฯ35336'),
('generalI25', 'I__', 'Isopropyl ß-D-1thiogalactopyranoside(IPTG) ', '', '', '', '5 g', '3,000.00', '1 ขวด', '1', 'stock (ตู้เย็น 0C)', '', 'Pacific SC 58/54492 (ตกลง)'),
('generalI26', 'I20', 'Isopropyl alcohol ', 'C3H8O', 'Carlo', 'RPE for analysis', '2.5 l', '480.00', '1 ขวด', '1.5 L', 'opened (hood)', '', 'ปี 51/IM 269307'),
('generalI27', '-', 'Propan-2-ol = Isopropyl alcohol = isopropanol ', '', 'Labscan', 'AR', '2.5L', '620', '1 ขวด', '1', 'stock (ใต้ hood)', '', 'ppchem.003/5308002'),
('generalI28', '-', 'Prapan-2-ol', '', 'Ajax', 'Univar', '2.5L', '-', '2 ขวด', '2', 'stock (ใต้ hood)', '', 'ปี 51/สารเก่า/บริจาค'),
('generalI29', 'I21', 'Isovitalex', ' -', 'BD', ' -', '10 ml', '50.00', '5 ขวด', '', 'opened (ตู้เย็น 4C)', '', 'ปี 51/ศิริฯ510000312'),
('generalI3', 'I2', 'Iodine resublimed', 'I2', 'Carlo', 'for analysis', '100 g', '820.00', '2 ขวด', '1', 'opened (ตู้เก็บสาร)/ stock 1', '', 'ปี 51/NCG 5007-0169'),
('generalI30', 'I23', 'iProof HF Master Mix, 100 reactions', '', 'Bio-Rad', ' -', ' -', '12,000.00', '1 ขวด', '', 'opened (ตู้เย็น 4C)', '', 'ปี 53/เคโมฯSQ2010104033'),
('generalI4', 'I3', 'Iodine resublimed', 'I2', 'Carlo', 'APE', '100 g', '578.00', '2 ขวด', '1', 'opened (ตู้เก็บสาร)/ stock 1', '', 'ปี 52IM 222676'),
('generalI5', 'I4', 'Iodine resublimed', 'I2', 'Qrec', 'AR', '100 g', '2,050.00', '1 ขวด', '40 g', 'opened (ตู้เก็บสาร)', '', 'ปี 51/ศิริฯ510000360'),
('generalI6', 'I5', 'Iron(III) ammonium citrate', '', 'Carlo', 'pure', '250 g', '890.00', '2 ขวด', '150 g + 1', 'stock (ตู้เก็บสาร)', '', 'ปี 51/IM 287080'),
('generalI7', 'I6', 'Iron(II) ammonium sulphate', ' (NH4)2(Fe)(SO4)2·6H2O', 'Carlo', ' for analysis', '500 g', '450.00', '1 ขวด', '100 g', 'opened /stock (ตู้เก็บสาร)', '', 'ปี 54/IM 268859'),
('generalI8', 'I7', 'Iron(II) chloride Tetrahydrate', 'FeCl2.4H2O', 'Fluka', 'purum', '250 g', '3,210.00', '2 ขวด', '200 g + 1', 'opened /stock (ตู้เก็บสาร)', '', 'ปี 51/NCG '),
('generalI9', 'I_____', 'Iron EDTA (Ethylenediaminetetraacetic acid iron)', 'Com. Grade', '', '-', '-', '-', '1 ขวด', '', 'opened (ตู้เก็บสาร)', '', 'ปี 51/บริจาค/ สารเก่า'),
('generalK0', 'K', 'KMS = Potassium Metabisulphite', 'K2S2O5', 'โอ.วี.', 'Commercial Grade', '1 kg', ' -', ' -', '600 g', 'opened (ตู้เก็บสาร)', 'ssss', 'ปี 51/บริจาค/ สารเก่า'),
('generalK1', 'K5', 'Kovac\'s reagent', ' -', 'Himedia', ' -', '100 ml', '530.00', '5 ขวด', 'หมด', 'หมด', '', 'ศิริปัญญา INV5700000324'),
('generalK2', 'K___', 'Kovac\'s reagent', '', 'Himedia', '', '100 ml', '278.20', '5 ขวด', '', 'stock', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('generalL0', 'L2', 'Lactic acid ', 'CH3CHOHCOOH', 'Carlo', 'RPH according to pharmacopoeia', '1,000 ml', '800.00', '1 ขวด', '', 'opened (hood)', '', 'ปี 52/บริจาค/ สารเก่า'),
('generalL1', 'L____', 'Lactic acid, 85%', '', '', '', '500 ml', '513.00', '1 ขวด', '', 'stock', '', 'ปี 59/ TC IV327/25034(ตกลง)'),
('generalL10', 'L17.1', 'Electrophoresis loading dye (5X)', '', 'Bio-rad', '', '10 ml', '2,616.82', '1 ขวด', '8 ml', 'opened (ตู้เย็น 4C ขาว)', '', 'เคโมไซเอนซ์ SQ 2010104033'),
('generalL11', 'L17.2', '(SYBR) Novle Juice supply 6X loading dye buffer', '', 'genedirect', '', '1 ml', '1,070.00', '2 หลอด', '', 'opened (ตู้เย็น 4C ขาว)/ หมด 1', '', 'Gibthai SX5705001206-2'),
('generalL12', 'L17.3', 'SYBR staining reagent', '', 'AppliChem', '', '0.625 ml', '1,900.00', '1 หลอด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'BankT. L57-07100'),
('generalL13', 'L____', 'SYBR (Redsafe,Nucleic acid staining Solution)', '', '', '', '1 ml', '3,210.00', '3 หลอด', '2', 'stock', '', 'ปี58/Pacific Sc.58/54313 (ตกลง)'),
('generalL14', 'L____', 'Sensifast Universal SYBR Green Super mix', '', 'Bioline', '', 'box', '5,350.00', '1 กล่อง', '', 'อ.สุรีวัลย์', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('generalL15', 'L19', 'Lysozyme ', ' -', 'Amresco', ' -', '5 g', '2,300.00', '1 ขวด', '1 g', 'opened (ตู้เย็น 0C ขาว)', '', 'ปี 54/GT SX5405000960'),
('generalL16', 'L20', 'L-lysine monohydrochloride', '', 'Loba', ' -', '100 g', '685.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี 55/ยูเนี่ยนฯ55/046795'),
('generalL2', 'L3', 'Lactic acid aluminium salt', '', 'Fluka', 'purum', '100 g', '1,590.00', ' -', '', 'stock (ตู้สารยังไม่เปิด)', '', 'ปี 51/NT 93/4646'),
('generalL3', 'L9.2', 'Laminarin from Laminarin digitata', '', 'Sigma', ' - ', '1 g', '5,900.00', '1 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'All sci 53-106'),
('generalL4', 'L12', 'Lead(IV) acetate', '(C2H3O2)4Pb', 'Aldrich', ' -', '25 g', ' -', '1 ขวด', '20 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/บริจาค/ สารเก่า'),
('generalL5', 'L13', 'Lecithin,granular', '', 'Acros', ' -', '250 g', '3,200.00', '1 ขวด', '', 'stock (ตู้สารยังไม่เปิด)', '', 'ปี 51/IM 267831'),
('generalL6', 'L13.01', 'α-lipoic acid = DL-6,8 Thioctic acid', '', 'Sigma', '-', '500 mg', '1,240.00', '1 ขวด', '', 'stock (ตู้เย็น 4 C)', '', 'ศิริปัญญา INV5700000324'),
('generalL7', 'L____', 'α-lipoic acid = DL-6,8 Thioctic acid', '', 'Sigma', '', '5 g', '6,741.00', '1 ขวด', '', 'อ. ปัณณวิชญ์', '', 'ปี 59/ TC IV327/25034(ตกลง)'),
('generalL8', 'L15', 'Lithium acetate = thioctic acid', '', 'Sigma', '', '250 g', '2,500.00', '1 ขวด', '225 g', 'stock (ตู้สารยังไม่เปิด)', '', 'ปี58/ UN58-083360'),
('generalL9', 'L13.1', 'Lithium chloride dried', 'LiCl', 'Ajax', 'Univar ', '500 g', '2,940.00', '1 ขวด', '', 'stock (ตู้สารยังไม่เปิด)', '', 'ปี 53/AT sci 5307063'),
('generalM0', 'M1', 'Magnesium carbonate', 'MgCO3', ' -', 'commercial grade', '1 kg', '150.00', '1 ถุง', '500 g', 'opened (ตู้สารเปิดใช้: เป็นถุง)', '', 'ปี 51/CTL 5001996'),
('generalM1', 'M2', 'Magnesium chloride', 'MgCl2.6H2O', 'Ajax', 'Univar ', '500 g', '269.00', '1 ขวด', '200 g', 'ตู้สารเปิดใช้', '', 'ปี 51/KPN 48/486'),
('generalM10', 'M___', 'Malic acid', ' -', 'Com.', ' -', '-', '-', '1 ขวด', '200 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/บริจาค/ สารเก่า'),
('generalM11', 'M___', 'Malonic acid', ' -', 'BHD', ' -', '100 g', '-', '1 ขวด', '90 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/บริจาค/ สารเก่า'),
('generalM12', 'M14', 'Manganese (II) chloride', 'MnCl2.4H2O', 'Ajax', 'Univar ', '500 g', '799.00', '1 ขวด', '250 g', 'opened (ตู้สารเปิดใช้)', '', 'ปั 51/KPN 48/486'),
('generalM13', 'M14.1', 'Manganese (II) Chloride ', 'MnCl2.4H2O', 'Ajax', 'Univar ', '500 g', '945.00', '1 ขวด', 'หมด', 'หมด', '', 'ปี 51/P&P Trading 019/53'),
('generalM14', 'M15.1', 'Manganese (II) sulphate monohydrate', 'MnSO4.H2O', 'Ajax', 'AR', '500 g', '560.00', '1 ขวด', 'หมด', 'หมด', '', 'ปี 56/Union S.56-061137'),
('generalM15', 'M15.2', 'Manganese (II) sulphate monohydrate', 'MnSO4.H2O', 'Ajax', 'AR', '500 g', '680.00', '2 ขวด', '2', 'stock', '', 'ปี 59/ UNS IV59/______(ตกลง)'),
('generalM16', 'M21', '2-Mercaptoethanol', 'C2H6OS', 'Sigma', 'Molecular Biology', '250 ml', ' -', ' -', '200 ml', 'opened (ตู้สารชั้น solution)', '', 'ปี 51/บริจาค/ สารเก่า'),
('generalM17', 'M21.1', '2-Mercaptoethanol', 'C2H6OS', 'Bio-Rad', ' -', '25 ml', '1,121.50', '1 ขวด', 'หมด', 'หมด', '', 'ปี 53/เคโมฯSQ 2010104033'),
('generalM18', 'M22.1', 'Mercury (II) chloride or Mercuric chlorid', 'HgCl2', 'QReC', ' -', '100 g', '1,225.00', '1 ขวด', '50 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 55/ยูเนี่ยนฯ55/049795'),
('generalM19', 'M22.1.1', 'Mercuric chloride', 'HgCl2', 'Himedia', '', '250 g', '3,990.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิดใช้)', 'Jul-18', 'UnionScience 57/070587'),
('generalM2', 'M3', 'Magnesium chloride', 'MgCl2.6H2O', 'Merck', 'GR for analysis', '1 kg', ' -', '1 ขวด', '500 g', 'ตู้สารเปิดใช้', '', 'ปี 51/บริจาค/ สารเก่า'),
('generalM20', 'M22', 'Mercury (II) sulphate or Mercuric sulphate', 'HgSO4', 'Ajax', 'Univar ', '100 g', '1,600.00', '1 ขวด', 'หมด', 'หมด', '', 'ศิริปัญญา520000313'),
('generalM21', 'M23', 'Mercury (II) sulphate', 'HgSO4', 'Carlo', 'AR', '50 g', '800.00', '2 ขวด', '2', 'stock (ตู้สารยังไม่เปิดใช้)', 'Jan-18', 'ปี58/ IT IV15-081461 (สอบ)'),
('generalM22', 'M23.1', 'Mercury (II) sulphate', 'HgSO4', 'Qrec', 'AR', '100 g', '', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิดใช้)', 'Mar-19', 'ปี58/'),
('generalM23', 'M22.2', 'meso-Erythitol', '', 'Sigma', '', '25 g', '4,280.00', '1 ขวด', '', 'opened (ตู้เย็น 0C ขาว/ ตู้ -20C)', '', 'ยูเนี่ยน ซายน์ 55/049796'),
('generalM24', 'M25.5', 'Methanol ', '', 'Merck', '', '2.5 L', '513.60', '1 ขวด', 'หมด', 'หมด', '', 'ปี58/TC IV317/24019 (ตกลง)'),
('generalM25', 'M25.6', 'Methanol ', '', 'Carlo', '', '2.5 L', '554.00', '6 ขวด', '2L + 2', 'stock (ตู้สารยังไม่เปิดใช้)', '', 'ปี58/ IT IV15-081461 (สอบ)'),
('generalM26', 'M26', 'Methyl cellulose', ' -', 'Fluka', ' -', '500 g', '7,070.00', ' -', '400 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/NT 62/3100'),
('generalM27', 'M26.1', 'Methyl cellulose', ' -', '', ' -', '500 g', '700.00', ' -', '', 'opened (ห้องวิจัย)', '', 'ปี 55/IV281/20465'),
('generalM28', 'M____', 'Methyl paraben', '', '', '', '1 kg', '625.95', '1 ขวด', '', 'stock คณะ', '', 'ปี 59/TC IV328…. (ตกลง)'),
('generalM29', 'M33', 'Molybdenum trioxide', 'MoO3', 'Ajax', 'Univar ', '100 g', ' -', '1 ขวด', '80 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/ บริจาค/สารเก่า'),
('generalM3', 'M3.1', 'Magnesium chloride hexahydrate', 'MgCl2.6H2O', 'Ajax', '', '500 g', '380.00', '1 ขวด', 'หมด', 'หมด', '', 'ปี 55/IV281/20465'),
('generalM30', 'M33.01', 'Molybdenum trioxide', 'MoO3', 'Carlo', 'Acs for analysis', '100 g', '2,170.00', '1 ขวด', '80 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/IM 287080'),
('generalM31', 'M33.02', 'Molybdenum trioxide', 'MoO3', 'Ajax', '', '100 g', '1,400.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี 55/IV281/20465'),
('generalM4', 'M3.2', 'Magnesium chloride', 'MgCl2', 'Acros', '', '1000 g', '200.00', '1 ขวด', '1', 'stock (ตู้เก็บสาร)', '', 'ปี58/ IT IV15-081461 (สอบ)'),
('generalM5', 'M5', 'Magnesium sulphate heptahydrate', 'MgSO4.7H2O', 'Ajax', 'Univar ', '500 g', '302.00', '1 ขวด', '400 g', 'opened (ตู้สาร)', '', 'ปี 51/ศิริปัญญา 510000298'),
('generalM6', 'M___', 'Magnesium sulphate heptahydrate', 'MgSO4.7H2O', 'Ajax', 'Univar ', '1 kg', '314.00', '1 ขวด', '100 g', 'ตู้สารเปิดใช้ (กระปุกขาว)', '', 'ปี 51/บริจาค/ สารเก่า'),
('generalM7', 'M7.1', 'Magnesium sulphate heptahydrate', 'MgSO4.7H2O', 'Ajax', 'Univar ', '500 g', '314.00', '1 ขวด', '', 'ห้องวิจัย', '', 'ปี 53/ยูเนี่ยนฯ53/026687'),
('generalM8', 'M7.2', 'Magnesium sulphate heptahydrate', 'MgSO4.7H2O', 'Carlo', '', '1000 g', '300.00', '1 ขวด', '1', 'stock (ตู้เก็บสาร)', 'Aug-20', 'ปี58/ IT IV15-081461(สอบ)'),
('generalM9', 'M___', 'Malic acid', 'C4H6O5', 'Fluka', 'puriss', '250 g', '-', '1 ขวด', '200 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/บริจาค/ สารเก่า'),
('generalN0', 'N1', '1-Naphthol', 'C10H7OH', 'APS', 'Univar', '100 g', '642.00', '1 ขวด', '50 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/S-Sci 47-573'),
('generalN1', 'N.01', '1-Naphthol', 'C10H7OH', 'BDH', ' -', '100 g', '2,300.00', '1 ขวด', '50 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/DB-0009-44'),
('generalN10', 'N6', 'N,N\'-Methylenebisacrylamide = Bisacrylamide', 'C7H10N2O2', 'Fluka', 'purum', '100 g', '1,299.00', '1 ขวด', '90 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/KPN 48/477'),
('generalN11', 'N7', 'N-1-Naphthylethyl diamine dihydrochloride', 'C12H14N2.2HCl', 'Fisher', ' -', '5 g', ' -', ' 6 ขวด', '4', 'opened (ตู้สารเปิดใช้) 1/ stock 4 / หมด 1', '', 'ปี 51/ บริจาค/สารเก่า'),
('generalN12', 'N8', 'N-buthylaniline , 97%', ' -', 'Aldrich', ' -', '25 g', ' -', ' -', '', 'หมด', '', ''),
('generalN13', 'N9', 'Nicotinic acid (Vitamin B3)', 'C6H5NO2', 'Himedia', ' -', '100 g', ' -', '1 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 51/ บริจาค/สารเก่า'),
('generalN14', 'N9.1', 'Nicotinic acid (Vitamin B3)', 'C6H5NO2', 'Fluka', 'purum', '100 g', '1,330.00', '1 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 53/TTK-sci 53/1044'),
('generalN15', 'N11', 'Nickel chloride', 'NiCl2.6H2O', 'Ajax', 'Univar', '500 g', '1,785.00', '1 ขวด', '500 g', 'opened (ตู้สารเปิดใช้)', '', 'ศิริปัญญา 520000313'),
('generalN16', 'N12', 'Nickel (II) sulphate 6-hydrate', 'NiSO4·6H2O', 'Carlo', ' -', '1 Kg', '1,700.00', '1 ขวด', '1', 'stock (สารยังไม่เปิด)', '', 'ปี 51/TC-s 259/18225'),
('generalN17', 'N12.1', 'Nitrate Ver 6 + Phosphate Ver. 6', ' -', '', '', '', '2,600.00', '1 แพ็ค ', '', 'ลิ้นชักใต้เครื่อง', '', 'ปี 55/ยูเนี่ยนฯ55/046795'),
('generalN18', 'N12.2', 'Nitrite Ver 3', ' -', '', '', '', '2,300.00', '1 แพ็ค ', '', 'ลิ้นชักใต้เครื่อง', '', 'ปี 55/ยูเนี่ยนฯ55/046795'),
('generalN19', 'N____', 'Nitrate Ver 5', '', '', '', '', '3,090.00', '2 ชุด', '2', 'stock', '', 'ปี58/ AT Sc IV5807102 (ตกลง)'),
('generalN2', 'N2', '1-Naphthylamine', 'C10H9N', 'Fluka', 'purum', '250 g', '1,502.28', ' -', '200 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/S-Sci 47-573'),
('generalN20', 'N____', 'Phosphate Ver3', '', '', '', '', '2,440.00', '2 ชุด', '2', 'stock', '', 'ปี58/ AT Sc IV5807102 (ตกลง)'),
('generalN21', 'N13', 'Nitroblue tetrazolium = Nitrotetrazolium blue', 'C40H30Cl2N10O6', 'Sigma', ' -', '50 mg', '1,444.50', '2 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 51/IM 236300'),
('generalN22', 'N14', 'p-Nitrophenyl palmitate', 'C22H35NO4', 'Fluka', 'Biochemika', '1 g', '1,998.00', '2 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 51/CTL5002000'),
('generalN23', 'N14.1', 'p-Nitrophenyl phosphate liquid', '', 'Sigma', ' -', '100 ml', '6,160.00', '1 ขวด', '', 'opened (ตู้เย็น 0C ขาว)', '', 'All Science 53-106'),
('generalN24', 'N____', 'p-nitrophenyllaurate = 4-nitrophenyl dodecanoate', '', 'Sigma', '', '1 g', '3,000.00', '1 ขวด', '', 'อ.ศิริลักษณ์', '', 'ปี 59/ UNS IV59/______(ตกลง)'),
('generalN25', 'N14.2', '4-Nitrophenyl N-acetyl-ß-D-glucisaminide', ' -', 'Sigma', ' -', '100 mg', '2,615.00', '1 ขวด', '', 'opened (ตู้เย็น 0C ขาว)', '', 'All Science 53-106'),
('generalN26', 'N14.3', '4-Nitrophenyl a-D-galactopyranoside', '', 'Sigma', ' -', '100 mg', '2,400.00', '1 ขวด', '', 'opened (ตู้เย็น 0C ขาว)', '', 'All Science Technology'),
('generalN27', 'N14.4', '4-Nitrophenyl a-L-fucopyranoside', '', 'Sigma', ' -', '100 mg', '12,820.00', '1 ขวด', '', 'opened (ตู้เย็น 0C ขาว)', '', 'All Science Technology'),
('generalN28', 'N15', 'Nessler\'s reagent ', 'K2HgI4', 'Carlo', ' -', '500 ml', '2,696.40', '1 ขวด', '1', 'stock (สารยังไม่เปิด)', '', 'ปี58/ IT IV081459  (สอบ)'),
('generalN3', 'N____', 'α-Naphthylamine', '', '', '', '250 g', '9,100.00', '', '', 'รอรับของ', '', 'ปี 59/'),
('generalN4', 'N____', 'Naphthalene (Naphthalin)', '', 'Fluka', 'Chemika', '1 kg', '', '1 ขวด', '', 'opened (hood)', '', 'ปี 51/ บริจาค/สารเก่า'),
('generalN5', 'N4.1', 'N-N-N\'-N\'-tetramethyl-1,4(p)-phenylenediamine dihydrochloride', 'C10H16N2.2HCl', 'Sigma', '', '25 g', '8,050.00', '1 ขวด', '1', 'stock(ตู้สารเปิดใช้)', '', 'BankT.L56-05527'),
('generalN6', 'N4.2', 'N-N-N\'-N\'-tetramethyl-p-phenylenediamine dihydrochloride ', 'C10H16N2.2HCl', 'Fluka', '', '5 g', '2,782.00', '1 ขวด', '1 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี56 /TC_IV294/21746'),
('generalN7', 'N4.3', 'N-N-N\'-N\'-tetramethyl-p-phenylenediamine dihydrochloride ', 'C10H16N2.2HCl', 'Acros', '', '5 g', '2,396.80', '1 ขวด', '1', 'stock(ตู้สารเปิดใช้)', '', 'ปี58/ IT IV15-081459 (สอบ)'),
('generalN8', 'N5', 'N,N,N\',N\'-tetramethyl-ethylenediamine (TEMED)', 'C6H16N2', 'Fluka', 'purum', '100 ml', ' -', '1 ขวด', '90 ml', 'opened (ตู้สาร Sol)', '', 'ปี 51/ บริจาค/สารเก่า'),
('generalN9', 'N____', 'TEMED', '', '', '', '2x25 ml', '1,605.00', '1 pack', '', 'อ.ปัญณวิชญ์', '', 'Pacific Science 57/50247'),
('generalP0', 'P', 'D-Pantothenic acid calcium salt (Vit. B5)', ' C9H16NO5·1/2Ca', 'Fluka', 'puriss', '25 g', '3,100.00', '1 ขวด', '', 'stock (ตู้ 4 C)', '', 'ปี 53/TTK sci 5302789'),
('generalP1', 'C12.2', 'Calcium pentothenate (vitamin B5)', '', 'Sigma', 'puriss', '25 g', '3,050.00', '1 ขวด', 'หมด', 'หมด', '', 'ปี 53/NCG 5309-0020'),
('generalP10', 'P ____', 'Permount', '', '', '', '500 ml', '2,520.00', '2 ขวด', '2', 'รอรับของ', '', 'ปี 59/ TC (ตกลง)'),
('generalP100', 'P___', 'primer CX1F', '20 base * 10.70', '', '', '', '214.00', '1 vail', '', 'อ.อรอำไพ', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('generalP101', 'P___', 'primer CX1R2', '21 base * 10.70', '', '', '', '224.70', '1 vail', '', 'อ.อรอำไพ', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('generalP102', 'P___', 'primer CX2F', '26 base * 10.70', '', '', '', '278.20', '1 vail', '', 'อ.อรอำไพ', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('generalP103', 'P___', 'primer CX2R', '22 base * 10.70', '', '', '', '235.40', '1 vail', '', 'อ.อรอำไพ', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('generalP104', 'P73', 'One PCR plus', '', '', '', '4 vial', '2,140.00', '4 vial', '', 'ดร.สมศักดิ์', '', 'Gibthai SX5705001206-2'),
('generalP105', 'P___', 'PCR master mix (100 RXN)', '', 'BioHelix', '', 'ชุด', '2022.30', '4 ชุด', '', 'อ.สุรีวัลย์', '', 'ปี 59/ Gibthai SX5908001642(ตกลง)'),
('generalP106', 'P___', 'PCR master mix (100 RXN)', '', 'BioHelix', '', 'ชุด', '2023.30', '1 ชุด', '', 'อ.สุรีวัลย์', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('generalP11', 'P___', 'peroxidase, Type I', ' -', 'Sigma', ' -', '5 KU', '-', '2 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 51/สารเก่า/บริจาค'),
('generalP12', 'P12', 'Petroleum spirit ', ' -', 'Ajax', ' -', '2.5 l', ' -', ' -', '1', 'stock (ใต้ hood)', '', 'ปี 51/NT 65/3231'),
('generalP13', 'P13', '1,10 Phenanthroline = o-Phenanthrolene', 'C12H8N2', 'Carlo', '-', '5 g', '600.00', '5 ขวด', '1 g + 4', 'opened (ตู้สาร)/ stock 4', '', 'ปี 54/IM 268859'),
('generalP14', 'P14', 'Phenolphthalein', 'C20H14O4', 'APS', 'labchem.', '100 g', '505.00', '4 ขวด', '50 g + 3', 'opened (ตู้สาร)/ stock 3', '', 'ปี 53/ศิริฯ530000372'),
('generalP15', 'P___', 'Phenolphthalein', 'C20H14O4', 'Fisher', '', '100 g', '-', '1 ขวด', '50 g', 'opened (ตู้สาร)', '', 'ปี 51/บริจาค/สารเก่า'),
('generalP16', 'P___', 'Phenol Cystal 99.5%', '', 'Lobachemie', '', '500 g', '770.40', '', '', 'IS', '', 'ปี 59/ TC (ตกลง)'),
('generalP17', 'P15', 'Phenol liquid', 'C6H5OH', 'ศรีจันทร์', ' -', '450 g', '200.00', '6 ขวด', '', 'หมด', '', 'ปี 51/NCG'),
('generalP18', 'P17.1', 'Phenol:Chlorloform:Isoamylalcohol (25:24:1)', ' -', '', ' -', '400 ml', '2,889.00', '1 ขวด', '50 ml', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 54/Pacific science'),
('generalP19', 'P___', 'Phenol:Chlorloform:Isoamylalcohol (25:24:1)', '-', '', '', '500 ml', '15,696.60', '1', '1', 'stock (ตู้เย็น)', '', 'ปี 59/ SMChem.IV1606416(ตกลง)'),
('generalP2', 'P1.3', 'Paraffin liquid', ' -', 'Labchem', '', '2.5L', '1,170.00', '3 ขวด', '1 L', 'opened /หมด 3', '', 'UnionScience 57/070588'),
('generalP20', 'P17.2', 'Phenol solution (Saturated) ', ' -', 'Amresco', '', '400 ml', '4,060.00', '1 ขวด', '1', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 54/Gibthai'),
('generalP21', 'P___', '2-Phenoxyethanol', 'C6H5OCH2CH2OH', 'Fluka', 'chemika', '250 ml', '', '1 ขวด', '', 'หมด', '', 'ปี 51/KPN48/486'),
('generalP22', 'P____', '3,4-Dihydroxy-L-phenylalanine (TLC)', 'C9H11NO4', 'Sigma', ' -', '5 g', '3,415.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิดใช้)', '', 'ปี58/BT L58-11____(ตกลง)'),
('generalP23', 'P18', 'L-Phenylalanine 98.5 +%', 'C6H5CH2CH(NH2)CO2H', 'Across', ' -', ' 25 g', '720.00', '1 ขวด', '20 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/IM 178122'),
('generalP24', 'P18.1', 'Diphenylamine', 'C12H11N', 'Lobachemie', ' -', '100 g', '', '1 ขวด', '', 'stock (ตู้สารยังไม่เปิดใช้)', '', 'ปี 51/บริจาค/สารเก่า'),
('generalP25', 'P18.2', 'Phosphomolybdic acid                    (dodeca-Molybdophosphoric acid)', 'H3PO4.12M๐O3.24H2O', 'Himedia', '-', '100 g', '2,600.00', '1 ขวด', '80 g', 'opened (ตู้สารเปิดใช้)', '', 'UnionScience 57/070587'),
('generalP26', 'P19', 'Phosphoric acid 85%', 'H3PO4', 'Carlo', ' for analysis', '500 ml', '350.00', '1 ขวด', '100 ml', 'opened (hood)', '', 'ปี 51/IM 269012'),
('generalP27', 'P___', 'ortho-phosphoric acid 85%', 'H3PO4', 'Merck', '', '1 L', '', '3 ขวด', '3', 'stock (ใต้ hood)', '', 'ปี 51/บริจาค/สารเก่า'),
('generalP28', 'P19.1', 'Phosphotungstic acid', 'H3PO4.12WO3xH2O', 'Himedia', '', '100 g ', '2,220.00', '1 ขวด', '', 'ตู้ปรสิต', '', 'ปี 55/IV281/20465'),
('generalP29', 'P21.1', 'polyethylene glycol 6000', 'HO(C2H4O)nH ', 'AppliChem', ' -', '500 g', '2,200.00', '1 ขวด', '450 g', 'opened (ตู้สารเปิดใช้)', '', 'BankT. L57-07100'),
('generalP3', 'P___', 'Paraffin liquid', '', 'Ajax', 'AR', '2.5 L', '1,170.00', '2 ขวด', '2', 'stock 59', '', 'ปี 59/ UNS IV59/______(ตกลง)'),
('generalP30', 'P24', 'Polyvinyl alcohol', '[-CH2CHOH-]n', 'Aldrich', ' -', '250 g', '2,975.00', '2 ขวด', '1', 'opened/stock (ตู้สาร) ', '', 'ปี 53/NCG 5309-0020'),
('generalP31', 'P25', 'Potassium acetate', 'C2H3KO2', 'Riedel-deHaen', 'pure', '1 kg', ' - ', '1 ขวด', '5 g', 'opened (ตู้สารเคมีเปิดใช้)', '', 'ปี 51/บริจาค/สารเก่า'),
('generalP32', 'P26', 'Potassium acetate', 'CH3COOK', 'Ajax', 'Unilab', '500 g', '586.00', '1 ขวด', '1', 'stock (ตู้สารไม่เปิดใช้)', '', 'ปี 51/NCG5007-006'),
('generalP33', 'P27', 'Potassium acetate', 'CH3COOK', 'CXL', 'AR', '500 g', '640.00', '1 ขวด', '1', 'stock (ตู้สารไม่เปิดใช้)', '', 'ปี 52/ศิริฯ520000313'),
('generalP34', 'P28', 'Potassium acetate', 'CH3COOK', 'BDH', 'AR', '250 g', '680.00', '2 ขวด', '1', 'opened (ห้องวิจัย)/ stock 1', '', 'ปี 53/BT 53-09642'),
('generalP35', 'P29', 'Potassium bromide', 'KBr', 'APS', 'Unilab', '500 g', '619.00', ' -', '400 g', 'opened (ตู้สารเคมีเปิดใช้)', '', 'ปี 51/KPN 47/116'),
('generalP36', 'P29.1', 'Chromium (III) Potassium Sulfate', 'CrK(SO4)2 - 12H2O', 'Sigma', '', '500 g', '2,320.00', '1 ขวด', '', 'ห้องวิจัย', '', 'ปี 55/IV281/20465'),
('generalP37', 'P30', 'Potassium citrate monobasic', 'KH2C6H5O7', 'Fluka', 'purum', '250 g', '2,470.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี 51/P&P 019/53'),
('generalP38', 'P30.1', 'Potassium citrate monobasic', 'KH2C6H5O7', 'Fluka', 'purum', '250 g', '2,940.00', '2 ขวด', '2', 'stock (ตู้สารไม่เปิดใช้)', '', 'A.T.science 54'),
('generalP39', 'P31', 'Potassium chloride', 'KCl', 'Ajax', 'Univar ', '1 kg', '379.00', '2 ขวด', '800 g', 'opened (ตู้สารเคมี)/ หมด1', '', 'KPN 47/313'),
('generalP4', 'P___', 'Paraffin liquid', '', '', '', '2.5 L', '325.00', '1 ขวด', '', 'รอรับของ', '', 'ปี 59/ UN S (ตกลง)'),
('generalP40', 'P32', 'Potassium chloride', 'KCl', 'CXL', 'AR', '500 g', '118.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ศิริฯ 520000313'),
('generalP41', 'P32.1', 'Potassium chloride', 'KCl', 'Carlo', 'AR', '500 g', '321.00', '1 ขวด', '1', 'stock (ตู้สารไม่เปิดใช้)', 'ม.ค.-20', 'ปี58/ IT IV15-081461 (สอบ)'),
('generalP42', 'P32.2', 'Potassium chloride', 'KCl', 'Ajax', 'AR', '500 g', '', '2 ขวด', '2', 'stock (ตู้สารไม่เปิดใช้)', '', 'ปี58/'),
('generalP43', 'P33', 'Potassium chloride 3mol/L ', 'KCl', 'Carlo', ' -', '250 ml', '850.00', '1 ขวด', '100 ml', 'ตู้เก็บเครื่อง pH meter', '', 'ปี 55/IM 268859'),
('generalP44', 'P33.1', 'Potassium cyanide', 'KCN', 'Ajax', 'Univar ', '250 g', '1,350.00', '1 ขวด', '150 g', 'opened (ตู้สารเคมีเปิดใช้)', '', 'ศิริปัญญา  54'),
('generalP45', 'P34', 'Potassium dichromate', 'K2Cr2O7', 'CXL', 'AR', '500 g', '236.00', '1 ขวด', '1', 'stock (ตู้สารไม่เปิดใช้)', '', 'ศิริฯ 520000313'),
('generalP46', 'P35', 'Potassium dichromate', 'K2Cr2O7', 'JHD', 'AR', '500 g', '510.00', '1 ขวด', '100 g', 'opened (ตู้สารเคมีเปิดใช้)', '', 'ปี 51/NCG 5008-0031'),
('generalP47', 'P36', 'Potassium dichromate', 'K2Cr2O7', 'Carlo', 'RPE ACS for analysis', '500 g', '950.00', '1 ขวด', '1', 'stock (ตู้สารไม่เปิดใช้)', '', 'TTK sci 53/1044'),
('generalP48', 'P37', 'Potassium dichromate', 'K2Cr2O7', 'Qrec', 'AR', '500 g', '800.00', '2 ขวด', '1', 'stock (ตู้สารไม่เปิดใช้) 2', '', 'ปี 53/TC 259/18225'),
('generalP49', 'P38', 'Potassium ferric cyanide', 'K3Fe(CN)6  ', 'Carlo', 'RPE ACS for analysis', '250 g', '690.00', '2 ขวด', '200 g + 1', 'opened 1/ stock 1', '', 'ปี 52/IM 269012'),
('generalP5', 'P4', 'Pectinase', ' -', 'Fluka', 'Biochemika', '10 g', ' -', ' -', '', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 51/สารเก่า/บริจาค'),
('generalP50', 'P38.1', 'Potassium dihydrogen citrate', 'C6H7KO7', 'Fluka', '', '250 g', '2,940.00', '2 ขวด', '', 'หมด', '', 'A.T.science วิทย์แพทย์ 54'),
('generalP51', 'P40', 'Potassium dihydrogen orthophosphate', 'KH2PO4', 'Ajax', 'Univar A.R.', '500 g', '445.00', '8 ขวด', '50 g+ 5', 'opened 1/ วิจัย 1 /stock 5 / หมด 1', '', 'ปี 50/NCG 5007-0169'),
('generalP52', 'P41', 'Potassium dihydrogen orthophosphate', 'KH2PO4', 'Carlo', 'ACS-ISO for analysis', '500 g', '389.00', '2 ขวด', '2', 'stock (ตู้สารไม่เปิดใช้)', '', 'ปี 51/IM 222676'),
('generalP53', 'P42', 'Potassium dihydrogen phosphate = Monopotassium acid phosphate', 'KH2PO4', 'Carlo', 'ACS-ISO for analysis', '1 kg', '700.00', '1 ขวด', '1', 'stock (ตู้สารไม่เปิดใช้)', '', 'ปี 52/IM 222690'),
('generalP54', 'P43', 'Potassium dihydrogen orthophosphate', 'KH2PO4', 'Fisher', 'AR', '1 kg', '770.00', '1 ขวด', '1', 'stock (ตู้สารไม่เปิดใช้)', '', 'ปี 52/OV 09/04164'),
('generalP55', 'P___', 'Potassium dihydrogen orthophosphate', 'KH2PO4', 'Carlo', 'AR', '500 g', '370.00', '1 ขวด ', '1', 'stock (ตู้สารไม่เปิดใช้)', '', 'ปี58/ IT IV15-081460 (สอบ)'),
('generalP56', 'P44.2', 'di-Potassium hydrogen orthophosphate = di-Potassium hydrogen anhydrous', 'K2HPO4', 'Ajax', 'Univar ', '500 g', '467.00', '1 ขวด', '250 g', 'opened  (ตู้สาร)', '', 'ปี55/ ศิริฯNV550000409'),
('generalP57', 'P44.3', ' di-Potassium hydrogen anhydrous', 'K2HPO4', 'Ajax', 'Univar', '500 g', '460.00', '1 ขวด', '', 'opened  (ห้องวิจัย)', '', 'ปี56/ยูเนี่ยน 56/057459'),
('generalP58', 'P44.4', 'di-Potassium dihydrogen orthophosphate', 'K2HPO4', 'Ajax', 'AR', '500 g', '370', '1 ขวด ', '1', 'stock (ตู้สารไม่เปิดใช้)', '', 'ปี58/ IT IV15-081460 (สอบ)'),
('generalP59', 'P44.4', 'di-Potassium hydrogen phosphate', 'K2HPO4', 'Lobachemie', 'AR', '500 g', '390.00', '2 ขวด', '2', 'stock 59', '', 'ปี 59/ AT S.IV5908020 (ตกลง)'),
('generalP6', 'P___', 'Pentan-1-0L = (n-Amyl alcohol)', ' -', 'APS', ' -', '2.5L', '-', '1 ขวด', '2.5 L', 'stock (ใต้ hood)', '', 'ปี 51/สารเก่า/บริจาค'),
('generalP60', 'P45', 'Potassium hydrogen phthalate', 'C8H5KO4', 'CXL', 'AR', '500 g', '236.00', '1 ขวด', '450 g', 'opened  (ตู้สาร)', '', 'ศิริฯ 520000313'),
('generalP61', 'P46', 'Potassium hydrogen sulphate', 'KHSO4', 'APS', 'Unilab', '500 g', '469.00', '1 ขวด', '450 g', 'opened  (ตู้สาร)', '', 'KPN 47/117'),
('generalP62', 'P47', 'Potassium hydroxide pellet', 'KOH', 'CXL', 'AR', '500 g', '250.00', '2 ขวด', 'หมด', 'หมด', '', 'ศิริปัญญา510000299'),
('generalP63', 'P48.1', 'Potassium hydroxide pellet', 'KOH', 'RCL-labscan', '', '1 kg', '400.00', '1 ขวด', '1', 'opened  (ตู้สาร)', '', 'ปี 56/Union S. 56-061136'),
('generalP64', 'P49', 'Potassium iodide', 'KI', 'Ajax', 'Univar', '500 g', '985.00', '1 ขวด', '450 g', 'stock (ตู้สารไม่เปิดใช้)', '', 'ปี 52/ศิริฯ520000313'),
('generalP65', 'P50', 'Potassium iodide', 'KI', 'Ajax', 'Univar', '1 kg', '1,695.00', '1 ขวด', 'หมด', 'opened (ตู้สารเคมีเปิดใช้)', '', 'ปี 50/CTL 5001993'),
('generalP66', 'P51', 'Potassium iodide', 'KI', 'Ajax', 'Univar', '500 g', '1,000.00', '2 ขวด', '2', 'stock (ตู้สารไม่เปิดใช้)', '', 'ปี 51/ศิศิริฯ510000299'),
('generalP67', 'P52', 'Potassium iodate', 'KIO3', 'Ajax', 'Univar', '500 g', '2,660.00', '1 ขวด', '450 g', 'opened (ตู้สารเคมีเปิดใช้)', '', 'ยูเนี่ยน ซายน์53-024493'),
('generalP68', 'P54', 'Potassium nitrate', 'KNO3', 'Ajax', 'Univar', '500 g', '390.00', '2 ขวด', '200 g+100 g', 'opened (ตู้สารเคมีเปิดใช้) 2', '', 'ปี 50/NCG 5007-0169'),
('generalP69', 'P55', 'Potassium nitrate', 'KNO3', 'Carlo', 'ACS-ISO for analysis', '1 kg', '339.00', '1 ขวด', '200 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/IM 222676'),
('generalP7', 'P____', 'Pepsin A', '', 'Sigma', '', '100 g', '9200.00', '1 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี58/UN58-083360 (ตกลง)'),
('generalP70', 'P55.1', 'Potassium nitrate', 'KNO3', 'Ajax', 'Univar', '500 g', '400.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี 51/ศิริฯ510000299'),
('generalP71', 'P___', 'Potassium nitrate (ปุ๋ย : กระปุกขาว)', 'KNO3', '', 'Com. Grade', '', '', '1 ขวด', '', 'opened  (ตู้สาร)', '', 'ปี 51/สารเก่า/บริจาค'),
('generalP72', 'P___', 'Potassium nitrate  (ปุ๋ย : กระปุกขาว)', 'KNO3', '', 'ปุ๋ย', '', '', '1 ขวด', '', 'opened  (ตู้สาร)', '', 'ปี 51/สารเก่า/บริจาค'),
('generalP73', 'P56', 'Potassium permanganate', 'KMnO4 ', 'Ajax', 'Univar', '500 g', '630.00', '1 ขวด', '250 g', 'opened (ตู้สารเคมีเปิดใช้)', '', 'ศิริปัญญา 530000372'),
('generalP74', 'P56.1', 'Potassium permanganate', 'KMnO4 ', 'Volchem', 'AR', '500 g', '170.00', '1 ขวด', '400 g', 'opened (ตู้สารเคมีเปิดใช้)', '', 'ศิริปัญญINV550000630'),
('generalP75', 'P___', 'Potassium permanganate (ด่างทับทิม)', '', '', 'Com. Grade', '', '', '1 ขวด', '5 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/สารเก่า/บริจาค'),
('generalP76', 'P57', 'Potassium peroxodisulfate', 'K2S2O8 ', 'Fluka', 'purum', '1 kg', '100.00', '1 ขวด', '', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/สารเก่า/บริจาค'),
('generalP77', 'P58.1', 'Potassium sodium (+) -tartrate tetrahydrate', 'NaKC4H4O6.4H2O ', 'Qrec', 'AR', '500 g', '405.00', '1 ขวด', 'หมด', 'opened (ตู้สารเปิดใช้)', '', 'ปี 53/ศิริฯ530000372'),
('generalP78', 'P58.2', 'Potassium sodium (+) -tartrate tetrahydrate', 'NaKC4H4O6.4H2O ', 'Qrec', 'AR', '500 g', '-', '1 ขวด', 'หมด', 'opened (ห้องวิจัย)', '', 'ปี 55'),
('generalP79', 'P___', 'Sodium potassium tartrate', 'KNaC4H4O6.4H2O', 'Ajax', 'AR', '500 g', '406.60', '3 ขวด', '3', 'stock ', '', 'ปี 59/ TC IV327/25034(ตกลง)'),
('generalP8', 'P____', 'Pepsin A', '', 'Merck', '', '100 g', '5136.00', '1 ขวด', '1', 'อ.สรวิชญ์', '', 'ปี 59/ TC IV327/25034 (ตกลง)'),
('generalP80', 'P59', 'Potassium sulphate', 'K2SO4', 'APS', 'Univar', '1 kg', ' -', '1 ขวด', '300 g', 'opened (ตู้สารเคมีเปิดใช้)', '', 'ปี 51/สารเก่า/บริจาค'),
('generalP81', 'P___', 'Potassium sulphate (ปุ๋ย)', 'K2SO4', '', 'Com. Grade', '', '', '1 ขวด', '800 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/สารเก่า/บริจาค'),
('generalP82', 'P60', 'Potassium tellurite trihydrate', 'H6K2O6Te', 'Himedia', 'extra pure', '100 g', '7,008.50', '2 ขวด', '30g + 1', 'opened (ตู้สารเคมีเปิดใช้)/ stock 1', '', 'ปี 51/TC 215/13900'),
('generalP83', 'P62.1', 'Prestained SDS-PAGE Standards', ' -', 'Bio-Rad', ' -', ' -', '5,140.19', '1 ขวด', '', 'ตู้เย็น 0C ขาว', '', 'เคโมฯSQ 2010104033'),
('generalP84', 'P65', 'Proteinase form Aspergillus Oryzae', ' -', 'Sigma', '', '25 g', ' 3,900.00 ', '1 ขวด', '', 'ตู้เย็น 4C ขาว', '', 'OV 16/07809'),
('generalP85', 'P66', 'Proteinase K', '', 'AMRESCO', '', '100 mg', ' 3,800.00 ', '1 ขวด', '', 'ตู้เย็น 0C ขาว', '', 'กิบไทย 5306001283'),
('generalP86', 'P___', 'Proteinase  form Aspergillus niger', ' -', 'fluka', '', '5 g', ' - ', '1 ขวด', '', 'ตู้เย็น 0C ขาว', '', 'ปี 51/สารเก่า/บริจาค'),
('generalP87', 'P___', 'Propyl paraben', '', '', '', '1 kg', ' 625.95 ', '1 ขวด', '', 'stock คณะ', '', 'ปี 59/ TCIV328/…. (ตกลง)'),
('generalP88', 'P69', 'Pyridoxine hydrochloride (Vitamin B6)', 'C9H11NO3.HCl', 'Sigma', ' -', '25 g', '2,280.00', ' 1 ขวด', '', 'ตู้เย็น 4C ขาว', '', 'เชียงใหม่ วีเอ็ม 1008011'),
('generalP89', 'P70', 'Pyrogallic acid (Pyrogallol)', 'C6H6O3', 'Poch', 'pure p.a.', '100 g', '1,476.60', '1 ขวด', '80 g', 'opened (ตู้สารเคมีเปิดใช้)', '', 'TC 215/13900'),
('generalP9', 'P11.01', 'Permount', ' -', 'BDH', ' -', '500 ml', '1,637.00', '1 ขวด', '250 ml', 'opened (ตู้เก็บsolution)', '', 'ปี 56/ TC_IV294/21746'),
('generalP90', 'P71', 'Pyruvic acid sodium salt', 'CH3COCOONa', 'JHD', 'AR', '25 g', '420.00', '20 ขวด', '16', 'stock (ตู้เก็บสาร) 16/ หมด 4', '', 'NCG 5008-0031'),
('generalP91', 'P72', 'primer 2 คู่ (ITS1/ITS4) และ (1492r/29f)', '', '', '', '4 vial', '1,640.00', '4 vial', '', 'ตู้เย็น 0C ขาว', '', '56/ แปซิฟิค โซเอ็นซ์ 46331'),
('generalP92', 'P72.1', 'primer (Forward) (NL)', '', '', '', '100 nmole', '513.60', '1 vial', '', 'ตู้เย็น 0C ขาว', '', 'Pacific Science 57/50247'),
('generalP93', 'P72.2', 'primer 1 (Reverse) (NL4)', '', '', '', '100 nmole', '406.60', '1 vial', '', 'ตู้เย็น 0C ขาว', '', 'Pacific Science 57/50247'),
('generalP94', 'P___', 'primer (Forward) (27F)', '', '', '', '100 nmole', '481.50', '2 vial', '', 'ตู้เย็น 0C ขาว', '', 'ปี58/ PacificSc. 58/54313'),
('generalP95', 'P___', 'primer (Reverse) (1492R)', '', '', '', '100 nmole', '524.30', '2 vial', '', 'ตู้เย็น 0C ขาว', '', 'ปี58/ PacificSc. 58/54313'),
('generalP96', 'P___', 'primer (GP5+/6+ HPV) (F\' 23 nt / R\' 25 nt)', '48 base  * 10.70', '', '', '', '513.60', '2 vial', '', 'อ.สุรีวัลย์', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('generalP97', 'P___', 'primer Globin (F\' 20 nt / Rt 20 nt)', '40 base * 10.70', '', '', '', '428.00', '2 vial', '', 'อ.สุรีวัลย์', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('generalP98', 'P___', 'primer GAPDH (F\' 21 nt / Rt 18 nt)', '39 base * 10.70', '', '', '', '417.30', '2 vail', '', 'อ.สุรีวัลย์', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('generalP99', 'P___', 'primer EBNA 1 (F\' 20 nt / Rt 21 nt)', '41 base * 10.70', '', '', '', '438.70', '2 vail', '', 'อ.สุรีวัลย์', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('generalR0', 'R01.1', 'Restriction emzyme,Hhal ', ' -', ' -', ' -', '', '2,568.00', '1 หลอด', '', 'stock (ตู้เย็น 0C ขาว)', 'dddd', 'Pacific Science 57/50247'),
('generalR1', 'R02', 'Restriction emzyme,Haelll', ' -', ' -', ' -', '2000 unit', '856.00', '1 หลอด', '', ' opened (ตู้เย็น 0C ขาว)', '', 'แปซิฟิค ไซเอ็นซ์ 35336'),
('generalR10', 'R2.1', 'Riboflavin (vitamin B2)', '', 'Fluka', '', '10 g', '2,215.00', '1 ขวด', '', 'stock (ตู้เย็น 4C ขาว)', '', 'ปี 53/TTK sci 5302789'),
('generalR11', 'R3', 'RPMI-1640 medium', ' -', 'Sigma', 'for in vitro', '10x1L', '307.09', '10 ขวด', '', ' opened (ตู้เย็น 4C ขาว)', '', 'SM chemical 0706767'),
('generalR12', 'R____', 'Rnase A', ' -', 'amresco', ' -', '250 mg', '', '1 ขวด', '', ' opened (ตู้เย็น 0C ขาว)', '', 'ปี 51/สารเก่าฝ บริจาค'),
('generalR2', 'R02.1', 'Restriction emzyme,Haelll', ' -', ' -', ' -', '2000 unit', '1,300.00', '1 หลอด', '', 'stock (ตู้เย็น 0C ขาว)', '', '56/แปซิฟิค ไซเอ็นซ์ 46331'),
('generalR3', 'R03', 'Restriction emzyme,EcoRl', ' -', ' -', ' -', '5000 unit', '856.00', '1 หลอด', '', ' opened (ตู้เย็น 0C ขาว)', '', 'แปซิฟิค ไซเอ็นซ์ 35336'),
('generalR4', 'R03.1', 'Restriction emzyme,EcoRl', ' -', ' -', ' -', '5000 unit', '1,300.00', '1 หลอด', '', 'stock (ตู้เย็น 0C ขาว)', '', '56/แปซิฟิค ไซเอ็นซ์ 46331'),
('generalR5', 'R04', 'Restriction emzyme,BamHl', ' -', ' -', ' -', '4000 unit', '1,284.00', '1 หลอด', '', ' opened (ตู้เย็น 0C ขาว)', '', 'แปซิฟิค ไซเอ็นซ์ 35336'),
('generalR6', 'R05.1', 'Restriction emzyme,Hindlll', ' -', ' -', ' -', '5000 unit', '1,300.00', '1 หลอด', '', 'stock (ตู้เย็น 0C ขาว)', '', '56/แปซิฟิค ไซเอ็นซ์ 46331'),
('generalR7', 'R06', 'Restriction emzyme, BstHH I', ' -', ' -', ' -', '2000 unit', '1,700.00', '1 หลอด', '', 'stock (ตู้เย็น 0C ขาว)', '', '56/แปซิฟิค ไซเอ็นซ์ 46331'),
('generalR8', 'R07', 'Restriction emzyme, Hinf I', ' -', ' -', ' -', '', '1,926.00', '1 หลอด', '', 'stock (ตู้เย็น 0C ขาว)', '', 'Pacific Science 57/50247'),
('generalR9', 'R2', 'Riboflavin (vitamin B2)', ' -', 'Sigma', ' -', '25 g', '1,850.00', '1 ขวด', '', ' opened (ตู้เย็น 4C ขาว)', '', 'ปี 53/NCG 5309-0020'),
('generalS0', 'S____', 'Saccharin ', '', 'Merck', '', '250 g', ' -', ' -', '', 'opened (ตู้เก็บสารเปิดใช้)', '', 'ปี 51/ สารเก่า/ บริจาค'),
('generalS1', 'S6.1', 'D-(−)-Salicin', '', 'Sigma', '', '5 g', '2,400.00', '1 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 55/IV281/20465'),
('generalS10', 'S____', '3 M Sodium acetate (pH 5.2)', '', '', '', '500 ml', '1,300.00', '1 ขวด', '', 'stock 59', '', 'ปี 59/ Gibthai (ตกลง)'),
('generalS11', 'S18', 'Sodium azide', 'NaN3', 'Ajax', 'Labchem', '500 g', '2,135.00', '1 ขวด', '', 'opened (ตู้สารเปิดใช้)', '', 'NCG 5008-0031'),
('generalS12', 'S18.1', 'Sodium azide', 'NaN3', 'Carlo', 'AR', '250 g', '150.00', '2 ขวด', '2', 'stock (ตู้เก็บสาร)', 'Feb-12', 'ปี58/ IT IV15-081461 (สอบ)'),
('generalS13', 'S20', 'Sodium bromide', 'NaBr', 'Ajax', 'Unilab', '500 g', '590.00', '1 ขวด', '', 'opened (ตู้สารเปิดใช้)', '', 'ศิริปัญญา 520000372'),
('generalS14', 'S22', 'Sodium carbonate anhydrous', 'Na2CO3', 'Ajax', 'Univar', '500 g ', '405.00', '2 ขวด', '400 g + 1', 'opened (ตู้สารเคมี) /stock 1', '', 'ปี 53/BT 53-09642'),
('generalS15', 'S22.1', 'Sodium Carboxymethyl cellulose', ' -', 'Japan', 'Commercial  ', '1 kg', '320.00', '1 ถุง', '1', 'stock (ตู้เก็บสารยังไม่เปิด: เป็นถุง)', '', 'Union Science 54/035822'),
('generalS16', 'S23', 'Sodium chlorate', 'ClNaO3', 'CXL', 'AR', '500 g', '2,215.00', '1 ขวด', '400 g', 'opened (ตู้สารเปิดใช้)', '', 'ศิริปัญญา 520000313'),
('generalS17', 'S24.4', 'Sodium Chloride', 'NaCl', 'Carlo', 'AR', '500 g', '117.70', '10 ขวด', '500 g + 3', 'opened/stock (ตู้เก็บสาร)', '', 'ปี58/ IT IV15-081461 (สอบ)'),
('generalS18', 'S25', 'Sodium citrate =  tri-Sodium citrate dihydrate', 'C6H5Na3O7.2H2O', ' -', 'commercial  grade', '1 kg', '120.00', '1 ขวด', '500 g ', 'opened (ตู้สารเปิดใช้)', '', 'ศิริปัญญา 510000407'),
('generalS19', 'S25.01', 'Sodium citrate =  tri-Sodium citrate dihydrate', 'C6H5Na3O7.2H2O ', 'Lab-scan', '', '500 g', '325.00', '1 ขวด', 'หมด', 'หมด', '', 'UnionScience 57/070589'),
('generalS2', 'S7', 'Salicylic acid', 'HOC6H4COOH', 'Ajax', 'Univar ', '500 g', '625.00', '2 ขวด', '400g + 1', 'opened (ตู้สารเปิดใช้) / stock 1 ', '', 'ปี 51/NCG 5008-0031'),
('generalS20', 'S25.1', 'Sodium Deoxycholate', '', 'Himedia', '', '100 g', '2,900.00', '1 ขวด', '1', 'stock (ตู้เก็บสาร)', 'Jul-17', 'UnionScience 57/070587'),
('generalS21', 'S26', 'Sodium dihydrogen orthrophosphate ', 'NaH2PO4.2H2O', 'Ajax', 'Univar', '500 g', '380.00', '1 ขวด', 'หมด', 'หมด', '', 'ปี 51/NCG 5007-0169'),
('generalS22', 'S27', 'Sodium dihydrogen orthrophosphate ', 'NaH2PO4.2H2O', 'Ajax', 'Univar', '500 g', '347.00', '1 ขวด', '400 g', 'opened (ตู้เก็บสาร)', '', 'ปี 51/NT 56/2757'),
('generalS23', 'S29', 'Sodium dihydrogen orthrophosphate', 'NaH2PO4.2H2O', 'Scharlar', '', '1 kg', '634.00', '1 ขวด', '', 'opened (ห้องวิจัย) ', '', 'ปี 51/เบคไทย 48861'),
('generalS24', 'S30', 'Sodium dihydrogen orthrophosphate', 'NaH2PO4.2H2O', 'Ajax', 'Univar', '500 g', '380.00', '4 ขวด', '', 'opened (ห้องวิจัย) 4', '', 'ปี 53/TTK sci 5302789'),
('generalS25', 'S31', 'Sodium dihydrogen phosphate dihydra', 'NaH2PO4.2H2O', 'Fisher', ' -', '500 g', '380.00', '2 ขวด', '2', 'stock (ตู้เก็บสารยังไม่เปิด)', '', 'ปี 53/TTK sci 5302789'),
('generalS26', 'S32', 'Sodium dihydrogen phosphate ', 'NaH2PO4', 'Ajax', 'Univar', '500 g', '380.00', '1 ขวด', '1', 'stock (ตู้เก็บสารยังไม่เปิด)', '', 'ปี 53/NCG 5309-0020'),
('generalS27', 'S33', 'diSodium Hydrogen orthophosphate    ', 'Na2HPO4', 'Ajax', 'Univar ', '500 g', '551.05', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี 51/S_Sci 50-287'),
('generalS28', 'S34', 'diSodium Hydrogen phosphate    ', 'Na2HPO4', 'Ajax', 'Univar', '500 g', '550.00', '3 ขวด', '', 'opened (ห้องวิจัย) 1', '', 'ปี 51/TC-s 259/18225'),
('generalS29', 'S35', 'diSodium Hydrogen orthophosphate    ', 'Na2H2PO4.2H2O', 'Ajax', 'Univar', '500 g', '580.00', '2 ขวด', '400 g', 'opened (ตู้สารเปิดใช้)/ หมด 1', '', 'ปี 53/BT 53-09642'),
('generalS3', 'S7.1', 'Silicone grease (High vacuum gresae)', ' -', 'APS', ' -', '100 g', '1,100.00', '1 ขวด', '100 g', 'opened (ตู้เก็บสารเปิดใช้)', '', 'ศิริปัญญา วิทย์แพทย์ 54'),
('generalS30', 'S35.1', 'diSodium Hydrogen orthophosphate    ', 'Na2H2PO4.2H2O', 'Ajax', 'Univar', '500 g', '443.00', '1 ขวด', '1', 'stock (ตู้เก็บสารยังไม่เปิด)', '', 'ปี 55/ศิริฯINV550000409'),
('generalS31', 'S35.2', 'diSodium Hydrogen orthophosphate    ', 'Na2H2PO4.2H2O', 'Carlo', '', '500 g', '540.00', '1 ขวด', '1', 'stock (ตู้เก็บสารยังไม่เปิด)', '', 'ปี58/ IT IV15-081460 (สอบ)'),
('generalS32', 'S36', 'Sodium dodecyl sulfate', 'CH3(CH2)11OSO3Na', 'APS', ' -', '500 g', '590.00', '1 ขวด', '250 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/NT 93/4647'),
('generalS33', 'S37', 'Sodium dodecyl sulfate', 'CH3(CH2)11OSO3Na', 'BDH', ' -', '500 g', '810.00', '1 ขวด', '1', 'stock (ตู้เก็บสาร)', '', 'ปี 51/CTL 5002000'),
('generalS34', 'S38', 'Sodium dodecyl sulfate', 'CH3(CH2)11OSO3Na', 'Fisher', 'Electrophoresis', '100 g', ' -', '1 ขวด', '2 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 53/All sic 53-106'),
('generalS35', 'S39', 'Sodium dodecyl sulfate', 'CH3(CH2)11OSO3Na', 'Ajax', 'Technical', '500 g', '650.00', '1 ขวด', '1', 'stock (ตู้เก็บสาร)', '', 'ปี 53/NCG 5309-0020'),
('generalS36', 'S38.1', 'Sodium dodecyl sulfate', 'CH3(CH2)11OSO3Na', 'Vivantis', 'Molecular', '250 g', '2,900.00', '1 ขวด', '200 g', 'opened (ตู้สารเปิดใช้)', '', 'BankT. L57-07100'),
('generalS37', 'S39.1', 'Sodium formaldehyde sulfoxylate ', 'HOCH2SOONa', 'Aldrich', '', '250 g', '2,150.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'IV281/20465'),
('generalS38', 'S40', 'Sodium hydrogen carbonate                 (Sodium bicarbonate )', 'NaHCO3', 'Ajax', 'Univar ', '1 kg', '286.76', '1 ขวด', '300 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/S-Sci 48-032'),
('generalS39', 'S41', 'Sodium hydrogen carbonate', 'NaHCO3', 'Carlo', 'for analysis', '500 g', '260.00', '1 ขวด', '1', 'stock (ตู้เก็บสาร)', '', 'ปี 51/IM269012'),
('generalS4', 'S8', 'Silver nitrate', 'AgNO3', 'Fisher', 'AR', '100 g', '1,629.74', '8 ขวด', '50 g + 4', 'opened (ตู้สาร)/ stock 4/ หมด 3 ', '', 'ปี 51/S-Sci 50-287'),
('generalS40', 'S42', 'Sodium hydrogen carbonate', 'NaHCO3', 'Carlo', 'for analysis', '1,000 g', '390.00', '1 ขวด', '800 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 52/IM 222676'),
('generalS41', 'S42.1', 'Sodium hydrogen carbonate', 'NaHCO3', 'Ajax', 'Univar ', '1 kg', '440.00', '2 ขวด', '2', 'stock (ตู้เก็บสาร)', '', 'ปี 52/IM 222677'),
('generalS42', 'S43', 'Sodium hexametaphosphate', ' Na6O18P6', 'Ajax', 'Technical', '500 g', '500.00', '2 ขวด', '400 g + 1', 'opened (ตู้สารเปิดใช้)/ stock 1', '', 'NCG 5309-0020'),
('generalS43', 'S43.1', 'Sodium hexametaphosphate', ' -', 'Ajax', 'Technical', '500 g', '448.00', '1 ขวด', '1', 'stock (ตู้เก็บสาร)', '', 'ศิริปัญญา วิทย์แพทย์ 54'),
('generalS44', 'S____', 'Sodium hexametaphosphate', '-', 'Carlo', '', '1 kg', '', '1 ขวด', '50 g', 'opened (ตู้สารเปิดใช้: กะปุกขาว)', '', 'ปี 51/ สารเก่า/ บริจาค'),
('generalS45', 'S43.3', 'Sodium hydroxide', 'NaOH', 'Merck', '', '1000 g', '300.00', '1 ขวด', '300 g', 'opened (ตู้สารเปิดใช้)', '', 'Union Science  54/034531'),
('generalS46', 'S____', 'Sodium hydroxide', 'NaOH', 'Merck', '', '1000 g', '-', '1 ขวด', '200 g', 'opened (ตู้สาร: กระปุกขาว)', '', 'บริจาค'),
('generalS47', 'S43.4', 'Sodium hydroxide', 'NaOH', 'Lab-scan', '', '1000 g', '235.00', '2 ขวด', '800 g', 'ห้องวิจัย 1 / opened (ตู้สาร)', '', 'Union Science  55/046795'),
('generalS48', 'S____', 'Sodium hydroxide', 'NaOH', 'Carlo', '', '1000 g', '290.00', '1 ขวด', '1', 'stock (ตู้เก็บสารยังไม่เปิด)', '', 'ปี58/ IT IV15-081460 (สอบ)'),
('generalS49', 'S44.1', 'Sodium iodide', 'NaI', 'APs', 'Unilab', '100 g', '680.00', '1 ขวด', '50 g', 'opened (ตู้สารเปิดใช้)', '', 'AT science วิทย์แพทย์ 54'),
('generalS5', 'S9', 'Silver sulphate', 'Ag2SO4', 'BDH', 'Analar', '50 g', '3,210.00', '2 ขวด', '25 g + 1', 'opened (ตู้สาร)/ stock 1', '', 'ปี 51/ BT'),
('generalS50', 'S45', 'Sodium L-lactate', 'C3H5NaO3  ', 'Sigma', ' - ', '5 g', '3,990.00', '1 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 51/ สารเก่า/ บริจาค'),
('generalS51', 'S46', 'Sodium (5)-lactate-solution 50% ', '', 'Merck', ' -', '2.5 L', '9,735.00', '1 ขวด', '1', 'stock (ใต้ hood)', '', 'P&P Trading 019/53'),
('generalS52', 'S47', '(+)-Sodium L-ascobate', '', 'Fluka', ' -', '250 g', '4,815.00', '2 ขวด', '250 g + 1', 'opened/stock (ตู้เก็บสาร)', '', 'พี.พีเคมิคอล 003/5308002');
INSERT INTO `chemicals` (`type`, `code`, `name`, `chemical_formula`, `brand`, `grade`, `size`, `price/unit`, `amout`, `Remaining`, `storags`, `expiration_date`, `comment`) VALUES
('generalS53', 'S____', 'Sodium hypochlorite solution', '', 'JHD', 'AR', '500 ml', '-', '6 ขวด', '100 ml + 3', 'opened / stock (hood)', '', 'สารเก่า / บริจาค'),
('generalS54', 'S48', 'Sodium molybdate', 'Na2MoO4. 2H2O', 'Ajax', 'Univar ', '500 g', '4,676.00', '1 ขวด', '1', 'stock (ตู้เก็บสารยังไม่เปิด)', '', 'ปี 52/ศิริฯ520000313'),
('generalS55', 'S49', 'Sodium molybdate', 'Na2MoO4. 2H2O', 'Ajax', 'Univar ', '500 g', '1,639.00', '1 ขวด', '400 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/ KPN 48/485'),
('generalS56', 'S50', 'Sodium molybdate anhydous ', 'Na2MoO4', 'Riedle', 'puriss', '100 g', '1,383.00', '1 ขวด', '1', 'stock (ตู้เก็บสารยังไม่เปิด)', '', 'ปี 53/ยูเนี่ยนฯ53/026687'),
('generalS57', 'S____', 'Sodium nitrate', 'NaNO3', 'Ajax', 'Univar ', '500 g', '-', '1 ขวด', '250 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/ สารเก่า/ บริจาค'),
('generalS58', 'S52', 'Sodium nitrate', 'NaNO3', 'Ajax', 'Univar ', '500 g', '390.00', '1 ขวด', '250 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/ศิริปัญญา 510000300'),
('generalS59', 'S54', 'Sodium nitrite', 'NaNO2', 'Ajax', 'Univar', '500 g', '450.00', '1 ขวด', '1', 'stock (ตู้เก็บสารยังไม่เปิด)', '', 'ปี 53/พี.พีเคมิคอล 003/5308002'),
('generalS6', 'S10', 'Silver sulphate', 'Ag2SO4', 'BDH', 'Analar', '50 g', '2,550.00', '2 ขวด', '2', 'stock (ตู้เก็บสาร)', '', 'ปี 53/ BT 53-11553'),
('generalS60', 'S____', 'Sodium nitrite', 'NaNO2', 'CXL', 'AR', '500 g', '', '1 ขวด', '450 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/ สารเก่า/ บริจาค'),
('generalS61', 'S56', 'Sodium propionate', '', 'Sigma', ' -', '500 g', '2,517.50', '2 ขวด', '1', 'opened (ตู้อาหารเปิดใช้)/ stock 1', '', 'ศิริปัญญา 530000372'),
('generalS62', 'S57', 'Sodium pyrophosphate', '', 'Aldrich', ' -', '500 g', '3,110.00', '1 ขวด', '1', 'stock (ตู้เก็บสารยังไม่เปิด)', '', 'BT 53-11553'),
('generalS63', 'S58', 'Sodium sulphite anhydrous', 'Na2SO3', 'Ajax', 'Univar ', '1,000 g', '490.00', '1 ขวด', '1', 'stock (ตู้เก็บสารยังไม่เปิด)', '', 'ปี 51/ NT 93/4648'),
('generalS64', 'S59', 'Sodium sulphite anhydrous', 'Na2SO3', 'Carlo', ' for analysis', '1,000 g', '480.00', '1 ขวด', '900 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/ IM 269012'),
('generalS65', 'S60', 'Sodium sulphate', 'Na2SO4', 'JHD', 'AR', '500 g', '200.00', '1 ขวด', '400 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/ CTL 5001996'),
('generalS66', 'S61', 'Sodium sulphate', 'Na2SO4', 'Merck', 'for Analysis', '1 kg', '669.00', '1 ขวด', '200 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/ KPN 48/474'),
('generalS67', 'S62', 'Sodium (+)-tartrate', 'Na2C4H4O6.2H2O', 'Ajax', 'Univar', '500 g', '1,690.00', '1 ขวด', '400 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/ สารเก่า/ บริจาค'),
('generalS68', 'S62.1', 'Sodium (+)-tartrate', 'Na2C4H4O6.2H2O', 'Ajax', 'Univar', '500 g', '1,690.00', '1 ขวด', '1', 'stock (ตู้เก็บสารยังไม่เปิด)', '', 'แพทย์ 54'),
('generalS69', 'S63', 'di-Sodium tetraborate = Borax', 'Na2B4O7.10H2O', 'Ajax', 'Univar ', '500 g', '417.30', '1 ขวด', '300 g', 'opened (ตู้สารเปิดใช้)', '', 'Hiat 500137'),
('generalS7', 'S____', 'Silver sulphate ', 'Ag2SO4', 'BDH', 'Analar', '50 g', ' -', '1 ขวด ', '1', 'stock (ตู้เก็บสาร)', '', 'ปี 51/ สารเก่า/ บริจาค'),
('generalS70', 'S64', 'Sodium thiosulphate', 'Na2S2O3', 'Qrec', 'AR', '500 g', '1,550.00', '2 ขวด', '50 g + 1', 'opened (ตู้สารเปิดใช้)/ stock 1', '', 'ศิริปัญญา 510000300'),
('generalS71', 'S65', 'Sodium tungstate', 'NaWO4.2H2O', 'APs', 'Univar ', '100 g', '1,170.00', '2 ขวด', '80 g + 1', 'opened (ตู้สารเปิดใช้)/ stock 1', '', 'ศิริปัญญา 510000300'),
('generalS72', 'S66', 'Sodium tungstate', 'NaWO4.2H2O', 'APs', 'Univar', '100 g', '1,195.00', '1 ขวด', '1', 'stock (ตู้เก็บสารยังไม่เปิด)', '', 'ปี 53/NCG 5309-0020'),
('generalS73', 'S67', 'tri -Sodium orthophosphate', 'Na3PO4.12H2O', 'Ajax', 'Univar ', '500 g', '300.00', '1 ขวด', '400 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/NT 46/2281'),
('generalS74', 'S69', 'Sorbic acid', 'C6H8O2', 'Fluka', 'purum', '250 g', ' -', '1 ขวด', '200 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/ สารเก่า/ บริจาค'),
('generalS75', 'S75.5', 'Starch  soluble', ' -', 'Ajax', 'AR', '500 g', '900.00', '3 ขวด', '200 g + 1', 'opened (ตู้สาร)/ stock 1/ หมด 1', '', 'ปี58 / UN 58-083360 (ตกลง)'),
('generalS76', 'S____', 'Starch  soluble', '', 'Qrec', '', '500 g', '', '1 ขวด', 'หมด', 'หมด', '', 'ปี 58/'),
('generalS77', 'S____', 'Starch  soluble', '', 'Ajax', 'AR', '500 g', '930.00', '1 ขวด', '', 'stock 59', '', 'ปี 59/ AT S. IV5908020(ตกลง)'),
('generalS78', 'S____', 'Stearic acid', '', '', '', '1 kg', '265.00', '2 pack', '', 'รอรับของ', '', 'ปี 59/ UN S (ตกลง)'),
('generalS79', 'S80', 'Succinic acid', '(CH2COOH)2', 'Ajax', 'Univar', '500 g', '1,605.00', '1 ขวด', '450 g', 'opened (ตู้เก็บสาร)', '', 'เชียงใหม่ วีเอ็ม 0706001'),
('generalS8', 'S15', 'Sodium acetate', 'CH3COONa.3H2O', 'Ajax', 'Univar ', '500 g', '283.00', '1 ขวด', 'หมด', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/KPN 48/518'),
('generalS80', 'S____', 'Sulfamic acid', ' -', 'Qrec', 'AR', '500 g', '2,270.00', '1 ขวด', '450 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/ สารเก่า/ บริจาค'),
('generalS81', 'S87', 'Sulfuric acid 50%', 'H2SO4', 'Qrec', 'AR', '2.5 L', '300.00', '2 ขวด', '2', 'stock (ใต้ hood)', '', 'ปี51/ ศิริปัญญา 510000300'),
('generalS82', 'S88', 'Sulfuric acid 98%', 'H2SO4', 'J.T baker', 'AR', '2.5 L', '360.00', '1 ขวด', 'หมด', 'หมด', '', 'ปี 49/CTL 4902741'),
('generalS83', '', 'Sulfuric acid 98%', 'H2SO4', 'J.T baker', 'AR', '2.5 L', '360.00', '3 ขวด', '100 ml + 2', 'opened (hood)', '', 'ปี 51/IM 222676'),
('generalS84', 'S89', 'Sulfuric acid 98%', 'H2SO4', 'Carlo', 'AR', '2.5 L', '360.00', '6 ขวด', '4', 'stock (hood)', '', 'ปี 50/CTL 4901741'),
('generalS85', 'S90', 'Sulfuric acid 98%', 'H2SO4', 'Ajax', 'Univar', '2.5 L', '465.00', '1 ขวด', 'หมด', 'หมด', '', 'ปี 53/NCG 5309-0020'),
('generalS86', 'S91', 'Sulphanilic acid', 'NH2C6H4SO3H', 'APS', 'Univar ', '100 g', '650.00', ' -', '80 g', 'opened (ตู้สารเปิดใช้)', '', 'OV 09/04186'),
('generalS87', 'S93', 'Sheep\'s blood', ' -', ' -', ' -', '50 ml', '1,350.00', '2 ขวด', 'หมด', 'หมด', '', 'ปี 56/Bank T. L56-05527'),
('generalS9', 'S17', 'Sodium acetate anhydrous', 'CH3COONa', 'CXL', 'AR', '500 g', '1,320.00', '1 ขวด', 'หมด', 'opened (ตู้สารเปิดใช้)', '', 'ปี 52/ศิริปัญญา520000313'),
('generalT0', 'T', 'Tannic acid', ' -', 'Himedia', 'AR', '500 g', '2,290.00', '1 ขวด', '450 g', 'opened (ตู้สารเปิดใช้)', '', 'OV 08/03504'),
('generalT1', 'T1', 'Tartaric acid', '(CHOH.COOH)2', 'Ajax ', 'Univar ', '500 g', '591.00', '2 ขวด', '2', 'stock (ตู้สารยังไม่เปิดใช้)', '', 'ปี52/ศิริฯ520000313'),
('generalT10', 'T19', 'Tin (II) chloride ', 'SnCl2.2H2O', 'Qrec', 'AR', '100 g', '785.00', ' 1 ขวด', '1', 'stock (ตู้สารยังไม่เปิดใช้)', '', 'ปี 53/ยูเนี่ยนฯ53/026687'),
('generalT11', 'T20', 'Titanium(II)sulfate solution', '', 'Aldrich', ' -', '100 ml', '9,190.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิดใช้', '', 'P&P Trading 019/53'),
('generalT12', 'T____', 'Triethanolamine', 'N(CH2CH2OH)3', 'APS', 'Unilab', '2.5L', '', '3 ขวด', '3', 'stock (ใต้ hood)', '', 'ปี 51/ บริจาค/ สารเก่า'),
('generalT13', 'T26', 'Trichloroacetic acid (TCA)', '', 'Merck', '', '250 g', '1,590.00', '1 ขวด', '50 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี58/ 58-083360 (ตกลง)'),
('generalT14', 'T____', 'Trichloroacetic acid (TCA)', '', 'Merck', '', '250 g', '', '1 ขวด', '200 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 58/อ.เนติ บริจาค'),
('generalT15', 'T____', 'Trichloroacetic acid (TCA)', '', 'Loba-Chemie', '', '500 g', '1,560.00', '1 ขวด', '1', 'อ.กานต์รวี', '', 'ปี 59/ UNS IV59/______(ตกลง)'),
('generalT16', 'T23', 'Triolein', '', 'Fluka', ' -', '500 ml', '2,740.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิดใช้)', '', 'ปี 51/ NT 50/2453'),
('generalT17', 'T24', 'Triolein', '', 'Fluka', ' -', '500 ml', '2,858.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิดใช้)', '', 'ปี 51/  OV 05/02341'),
('generalT18', 'T25', '2,3,5-triphenyl tetrazolium chloride', '', 'Sigma', ' -', '5 g', '2,350.00', '1 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 55/ IM 268859'),
('generalT19', 'T27', 'Tris hydrochloride (Tris-HCl)', 'C4H11NO3ClH', 'Invitrogen', ' -', '500 g', '5,200.00', '2 ขวด', '100 g + 1', 'opened (ตู้สารเปิดใช้) / stock 1', '', 'กิบไทย 5306001283'),
('generalT2', 'T2', 'Tartaric acid', '(CHOH.COOH)2', 'Ajax ', 'Univar ', '500 g', '540.00', '1 ขวด', '200 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี51/NCG 5007-0006'),
('generalT20', 'T____', 'Tris hydrochloride', 'C4H11NO3ClH', 'Fluka', ' -', '100 g', '', '1 ขวด', '3 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/ บริจาค/ สารเก่า'),
('generalT21', 'T29.1', 'Tris-hydroxymethyl-aminomethane ', 'NH2C(CH2OH)4', 'Ajax ', 'Univar ', '500 g', '3,000.00', '1 ขวด', '3 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 54/ ศิริปัญญา 54'),
('generalT22', 'T____', 'Tris-hydroxymethyl-aminomethane ', 'NH2C(CH2OH)4', 'Fluka', '', '250 g', '', '1 ขวด', '2 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/ บริจาค/ สารเก่า'),
('generalT23', 'T____', 'Tris-Base', 'C4H11NO3', 'Vivantis', 'Molec.', '1 kg', '1,926.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิดใช้)', '', 'ปี58/BT L58-11______(ตกลง)'),
('generalT24', 'T____', 'Trithanolamine', '', '', '', '1 kg', '250.00', '2 ขวด', '', 'รอรับของ', '', 'ปี 59/ UN S (ตกลง)'),
('generalT25', 'T31', 'Trypsin from hog pancrea', '', 'Fluka', ' -', '250 g', '2,380.00', '1 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 51/ OV 158/03503'),
('generalT26', 'T31.1', 'Trypsin from porcine pancreas', '', 'Sigma', ' -', '50 g', '1,300.00', '1 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 55/ IV281/20465'),
('generalT27', 'T____', 'Trypsin, crytalline from bovine pancreas', '', 'amresco', '', '1 g', '', '1 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'ปี 51/ สารเก่า/ บริจาค'),
('generalT28', 'T31.2', 'Trypsin', '', 'Sigma', '', '50 g', '1,295.00', '1 ขวด', '', 'stock (ตู้เย็น 4C ขาว)', '', 'ศิริปัญญา INV5700000324'),
('generalT29', 'T41', 'Tween 20', ' -', 'CXL', 'AR', '1,000 ml', '500.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิดใช้)', '', 'ศิริปัญญา 501000259'),
('generalT3', 'T3', 'L(+)-Tartaric acid 2 sodium salt', '', 'Acros', ' -', '250 g', '1,980.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี51/M 287000'),
('generalT30', 'T____', 'Tween 20', ' -', 'APS', 'Labscan', '500 ml', '', '1 ขวด', '', 'opened (ตู้สารเปิดใช้/ solution)', '', 'ปี 51/ บริจาค/ สารเก่า'),
('generalT31', 'T42', 'Tween 20 (polyoxyethylene -20)', 'C18H34O6(C2H40)N', 'Biobasic', '', '500 ml', '1,200.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิดใช้)', '', 'ปี58/ Pacific Sc 58/54492 (ตกลง)'),
('generalT32', 'T43.1', 'Tween 80', ' -', 'Ajax ', 'Univar ', '500ml', '840.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิดใช้)', '', 'AT science วิทย์แพทย์ 54'),
('generalT33', 'T43.2', 'Tween 80', ' -', 'CXL', ' -', '500ml', '600.00', '1 ขวด', '200 ml', 'opened (ตู้สารเปิดใช้/ solution)', '', 'ศิริปัญญา พยาบาล 54'),
('generalT34', 'T43.3', 'Tween 80', ' -', 'Ajax ', 'Univar ', '500ml', '860.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิดใช้)', '', 'ยูเนี่ยน ซายน์ 55/046795'),
('generalT35', 'T43.4', 'Tween 80', '', 'Loba-Chemie', '', '500 ml', '630.00', '1 ขวด', '1', 'stock (ตู้เก็บสาร)', '', 'ปี 57 Union Science  57/066461'),
('generalT36', 'T45', 'TA cloning vector  kit 20 reaction.', '', 'RBC.', '', '1 ชุด', '4,950.00', '1 ชุด', '', 'ฃั้นเหล็ก', '', 'Gibthi งบวิทย์-แพทย์ 54'),
('generalT37', 'T47', '10X TAE (Tris-Acetate-EDTA) buffer pH8.0', '', 'Vivantis', '', '1 L', '2,800.00', '1 ขวด', '200 ml', 'opened (ตู้สารเปิดใช้)', '', 'BankT. L57-07100'),
('generalT38', 'T____', '10X TAE (Tris-Acetate-EDTA) buffer pH8.0', '', '', '', '1 L', '2,455.00', '2 ขวด', '', 'stock 59', '', 'ปี59/ Gibthai (ตกลง)'),
('generalT39', 'T____', '10X TBE (Tris-Boric acid-EDTA) buffer pH 8.0', '', '', '', '1 L', '2,637.00', '2 ขวด', '', 'stock 59', '', 'ปี59/ Gibthai (ตกลง)'),
('generalT4', 'T9', 'Thiamine hydrochloride (vitamin B1)', 'C12H17ClN4OS.HCl', 'Acros', 'Organics', '100 g', '1,730.00', '1 ขวด', '20 g', 'opened (ตู้สารเปิดใช้)', '', 'IM 222676'),
('generalT40', 'T____', 'Trolox = 6-Hydroxy-2,5,7,8-tetramethyl chromane2-carboxylic acid', '', '', '', '1 g', '3456.1', '1 ขวด', '', 'อ.ปัญณวิชญ์', '', 'ปี 59/ TCIV327/25034 (ตกลง)'),
('generalT41', 'T____', 'Alpha-Tocophenol phosphate, disodium sall', '', 'Sigma', '', '25 g', '2300', '1 ขวด', '', 'อ.ปัญณวิชญ์', '', 'ปี 59/ UNS IV59/______(ตกลง)'),
('generalT5', 'T10', 'Thiamine HCl (vitamin B1)', 'C12H17ClN4OS.HCl', 'APS', 'Labchem', '50 g', '574.50', '2 ขวด', '20 g + 20 g', 'opened (ตู้เย็น 4C ขาว) 2', '', 'ยูเนี่ยน ซายน์ 53/026687'),
('generalT6', 'T11', 'Thidiazuron', '', 'Sigma', ' -', '25 mg', '7,430.00', '1 ขวด', '', 'หมด', '', 'All sci  53-103'),
('generalT7', 'T15', '2-Thiouracil', 'C4H4N2OS', 'Fluka', 'Purum', '25 g', '1,480.00', '1 ขวด', '5 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/NT 62/3100'),
('generalT8', 'T16', '2-Thiouracil', 'C4H4N2OS', 'Fluka', 'Purum', '25 g', '1,289.00', '1 ขวด', '1', 'stock (ตู้สารยังไม่เปิดใช้)', '', 'ปี 51/KPN 48/518'),
('generalT9', 'T17', 'Thymol', '(CH3)2CHC6H3(CH3)OH', 'APS', 'Labchem', '100 g', ' -', '1 ขวด', '50 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/ บริจาค/ สารเก่า'),
('generalU0', 'U2', 'Urea', '', '', '', '500 g', '286.00', '1 ขวด', '', 'หมด', 'sss', 'ยูเนี่ยน ซายน์ 56/057459'),
('generalU1', 'U__', 'Urea', '', 'Ajax', 'AR', '500 g', '286.00', '2 ขวด', '1 + 400 g', 'opened (ตู้สาร) +stock', '', 'ปี 59/ UNS IV59/______(ตกลง)'),
('generalV0', 'V', 'Vibrio cholerae polyvalent O1 antiserum', ' -', 'ST', ' -', '2 ml', '950.00', '1 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'IM'),
('generalV1', 'V1', 'Vibrio cholerae polyvalent O139 antiserum', ' -', 'ST', ' -', '2 ml', '950.00', '1 ขวด', '', 'opened (ตู้เย็น 4C ขาว)', '', 'IM'),
('generalV2', 'V____', 'Vitamin B12', '', 'Sigma', '', '250 mg', '3,900.00', '1 ขวด', '', 'อ.ปัณณวิชญ์', '', 'ปี 59/ UNS IV59/______(ตกลง)'),
('generalX0', 'X2', 'Xylene', ' C8H10', 'Panreac', 'PA-ACS-ISO', '2.5 L', '628.00', '1 ขวด', '1.5 L', 'opened (hood)', '', 'ศิริปัญญา 52000313'),
('generalX1', 'X___', 'Xylene', ' C8H10', 'Fisher', 'AR', '2.5 L', '', '1 ขวด', '1', 'stock (ใต้ hood)', '', 'ปี 51/ สารเก่า/ บริจาค'),
('generalX2', 'X___', 'Xylene', '', 'Carlo', '', '2.5L', '230.00', '1 ขวด', '1', 'stock (ใต้ hood)', '', 'ปี58/ IT IV15-081460 (สอบราคา)'),
('generalX3', 'X___', 'Xylene cyanol FF', 'C25H27N2O6S2Na', 'Amresco', 'ultra pure rade', '20 g', '', '1 ขวด', '20 g', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/กิบไทย 0301470'),
('generalZ0', 'Z', 'Zinc Chloride', 'ZnCl2', 'APS', 'Unilab', '500 g', '419.00', '1 ขวด', '450 g', 'opened (ตู้สารเคมี)', '', 'ปี 50/KPN 48/483'),
('generalZ1', 'Z1', 'Zinc Chloride', 'ZnCl2', 'CXL', 'AR', '500 g', '165.00', '2 ขวด', '2', 'stock (ตู้สารเคมี)', '', 'ปี 51/ศิริปัญญา 510000301'),
('generalZ2', 'Z2', 'Zinc Chloride', 'ZnCl2', 'APS', 'Unilab', '500 g', '430.00', '1 ขวด', '1', 'stock (ตู้สารเคมี)', '', 'ปี 50/NT 36/1794'),
('generalZ3', 'Z3', 'Zinc Dust', ' -', ' -', 'Commercial ', '1000 g', '3,100.00', '1 ขวด', '800 g', 'opened (ตู้สารเคมี)', '', 'CTL 5001996'),
('generalZ4', 'Z4', 'Zinc nitrate', 'Zn(NO3)2.6H2O', 'Ajax', 'Univar ', '500 g', '829.00', '1 ขวด', '1', 'stock (ตู้สารเคมี)', '', 'KPN 48/483'),
('generalZ5', 'Z4.1', 'Zinc nitrate', 'Zn(NO3)2.6H2O', 'Ajax', 'Univar ', '500 g', '850.00', '1 ขวด', '1', 'stock (ตู้สารเคมี)', '', 'ศิริปัญญา พยาบาล 54'),
('generalZ6', 'Z5', 'Zinc Sulfate', 'ZnSO4.7H2O', 'Ajax', 'AR', '500 g', '405.00', '1 ขวด', '200 g', 'opened (ตู้สารเคมี)', '', 'ปี 51/ สารเก่า/บริจาค'),
('generalZ7', 'Z6', 'Zinc Sulfate', 'ZnSO4.7H2O', 'Ajax', 'Univar ', '500 g', '431.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ศิริปัญญา 520000313'),
('generalZ8', 'Z____', 'Zinc Sulfate', 'ZnSO4.7H2O', '', 'Com.', '1 kg', '', '1 ขวด', '800 g', 'opened (ตู้สารเคมี)', '', 'ปี 51/ สารเก่า/บริจาค'),
('infectionA0', 'A01', 'Lead Acenetobacter Agar base', ' -', 'Himedia', ' -', '500 g', '3,531', '1 ขวด', '1', 'stock (ตู้เก็บสารอาหาร)', 'Jun-16', 'ปี 56/gibthai5608000297'),
('infectionB0', 'B1.2', 'Baird parker medium', ' -', 'Himedia', ' -', '500 g', '2,033.00', '4 ขวด', '100 g', 'opened (ตู้อาหาร) 2 /หมด2', 'Jan-18', 'Gibthai SX5705001206-2'),
('infectionB1', 'B1.3', 'Baird parker medium', ' -', 'Himedia', ' -', '500 g', '2,140.00', '3 ขวด', '3', 'stock (ตู้เก็บสารอาหาร)', 'Jan-19', 'ปี58/SP INV58000421 (ตกลง)'),
('infectionB10', 'B12', 'Bile salt mixture', ' -', 'Himedia', ' -', '100 g', '5,457.00', '1 ขวด', '50 g', 'opened (ตู้อาหาร)', 'Aug-10', 'ปี 51/โมเลค เคมิคอล 0707004'),
('infectionB11', 'B13', 'Bismuth sulphite agar', ' -', 'CDH', ' -', '500 g', '1,490.00', '1 ขวด', '250 g', 'opened (ตู้อาหาร)', 'Sep-12', 'ปี 50/ศิริปัญญา 501000257'),
('infectionB12', 'B15.2', 'Blood agar base ', '', 'Himedia', '-', '500 g', '1,540.80', '5 ขวด', '3', 'stock 3 / หมด 2 ', 'May-16', 'ปี 56/IV292/21544 (TC)'),
('infectionB13', 'B15.3', 'Blood agar base ', ' -', 'Himedia', ' -', '500 g', '1,348.20', '2 ขวด', '5 g ', 'opened / หมด 1', 'Jun-15', 'Gibthai SX5705001206-2'),
('infectionB14', 'B18.1', 'Brain heart infusion broth', '', 'Difco', ' -', '500 g', '', '1 ขวด', 'หมด', 'หมด', '', 'ปี58/UNS.'),
('infectionB15', 'B___', 'Brain heart infusion broth', '', 'Himedia', '', '500 g', '1,330.00', '2 ขวด', '', 'stock คณะ (อ. อัฉริยา)', '', 'ปี 59/ CM VM IV1607054'),
('infectionB16', 'B22', 'Brillant green bile broth 2%', ' -', 'Himedia', ' -', '500 g', '1,765.50', '5 ขวด', 'หมด', 'หมด', 'Dec-11', 'ปี 50/BT 50-11680'),
('infectionB17', 'B23', 'Brillant green bile broth ', ' -', 'Merck', ' -', '500 g', '3,495.00', '3 ขวด', '', 'opened (ห้องวิจัย) 2/ หมด 1', '', 'ปี 51/NCG 5112-0040'),
('infectionB18', 'B22.1', 'Brillant green bile broth 2%', ' -', 'Difco', ' -', '500 g', '2,460.00', '2 ขวด', '2', 'stock (ตู้อาหาร)', 'Feb-16', 'ปี 54/A.T.science IV5407085'),
('infectionB19', 'B22.2', 'Brillant green bile broth 2%', ' -', 'Himedia', ' -', '500 g', '1,348.20', '4 ขวด', '1900 g', 'stock (ตู้อาหาร)', 'Sep-16', 'Gibthai SX5705001206-2'),
('infectionB2', 'B4', 'Beef extract powder', ' -', 'CDH', ' -', '500 g', '1,100.00', '5 ขวด', '1700 g', 'opened 2 / stock 3', 'Jun-13', 'ปี 50/ศิริปัญญา 501000407'),
('infectionB20', 'B22.3', 'Brillant green bile broth 2%', '', 'Himedia', '', '500 g', '1,348.80', '1 ขวด', '1', 'stock (ตู้อาหาร)', 'Feb-19', 'ปี58/GT SX5807001208 (ตกลง)'),
('infectionB21', 'B33', 'Brila broth', '', 'Merck', '', '500 g', '3,495.00', '1 ขวด', '1', 'stock (ตู้อาหาร)', 'Aug-12', 'ปี 51/NCG51'),
('infectionB3', 'B5', 'Beef extract powder', ' -', 'Himedia', ' -', '500 g', '2,559.44', '10 ขวด', '2400 g', 'opened (ตู้อาหาร) / stock 4', 'Mar-12', 'ปี 52/เชียงใหม่ฯ 076002'),
('infectionB4', 'B6', 'Beef extract powder', ' -', 'Himedia', ' -', '500 g', '2,300.00', '3 ขวด', '', 'opened (ห้องวิจัย) 3', '', 'ปี 54/IM 268859'),
('infectionB5', 'B___', 'Beef extract powder', ' -', 'Himedia', ' -', '500 g', '1,391.00', '1 ขวด', '1', 'stock', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('infectionB6', 'B8', 'Bile esculin agar base', ' -', 'Criterion', ' -', '500 g', '3,540.00', '1 ขวด', 'หมด', 'หมด', 'Aug-11', 'ปี 51/BT'),
('infectionB7', 'B9', 'Bile esculin agar base', ' -', 'Himedia', ' -', '500 g', '2,700.00', '1 ขวด', '400 g', 'opened ', 'Oct-10', 'ปี 49/NCG 4908-0040'),
('infectionB8', 'B10', 'Bile esculin agar ', ' -', 'Scharlar', ' -', '500 g', '2,370.00', '2 ขวด', '400 g', 'opened /หมด 1', 'Jun-06', 'ปี 48/เบคไทย 48861'),
('infectionB9', 'B11', 'Bile salt', ' -', 'Criterion', ' -', '250 g', '2,712.45', '2 ขวด', '2', 'stock (ตู้อาหาร)', 'Nov-10', 'ปี 50/BT 50-11680'),
('infectionC0', 'C15', 'Casein', ' -', 'Alpha', '  Lab-reagent', '500 g', '960.00', '1 ขวด', 'หมด', 'หมด', '', 'ปี 50/ศิริปัญญา 501000257'),
('infectionC1', 'C15.1', 'Casien (Casein Enz.Hydrolysate Type II)', '', 'Himedia', '', '500g', '2,040.00', '1 ขวด', '400 g', 'opened', 'Feb-16', 'ปี 57/ SP INV5700000026'),
('infectionC2', 'C15.2', 'Casein sodium salt', '', 'Acros', '', '500 g', '1,590.00', '1 ขวด', '1', 'stock (ตู้เก็บอาหาร)', '', 'ปี58/ IT IV15-081461 (สอบ)'),
('infectionC3', 'C18.1', 'Cetrimide agar', ' -', 'Difco', ' -', '500 g', '2,420.00', '2 ขวด', '800 g', 'opened 2', 'Dec-16', 'ปี 56/ยูเนี่ยนซายน์56/057458'),
('infectionC4', 'C32.01', 'Cooked meat medium', ' -', 'Himedia', ' -', '500 g', '1,712.00', '2 ขวด', '350 g', 'opened 2', 'Jul-16', 'Gibthai SX5705001206-2'),
('infectionC5', 'C40', 'Corn meal agar', ' -', 'CDH', ' -', '500 g ', '3,600.00', '1 ขวด', '400 g', 'opened', 'Aug-13', 'ปี 51/ศิริปัญญา 510000407'),
('infectionC6', 'C40.1', 'Corn steep liquer', '', 'Sigma', ' - ', '500 g', '2,840.00', '1 ขวด', '400 g', 'opened', '', 'ปี53/พี.พี เคมิคอลฯ003/5300002'),
('infectionC7', 'C47', 'Cystine tellulite agar base', ' -', 'Biomark', 'for lab use only', '500 g', '2,022.00', '1 ขวด', '400 g', 'opened', 'Jul-10', 'ปี 50/CTL 5002000'),
('infectionC8', 'C50', 'Czapek\'s Agar ', ' -', 'Himedia', ' -', '500 g', '1,880.00', '2 ขวด', '505 g', 'opened / stock 1', 'Jan-16', 'ศิริปัญญา วิทย์แพทย์ 54'),
('infectionD0', 'D4', 'Deoxycholate citrate agar', ' -', 'Himedia', ' -', '500 g', '2650.00', '1 ขวด', '400 g', 'opened', 'Oct-12', 'ปี 51/IM'),
('infectionD1', 'D12', 'DNAse test agar with toluidne blue', ' -', 'Criterion', ' -', '500 g', '5850.00', '1 ขวด', '250 g', 'opened', 'Jun-12', 'ปี 51/IM 267831'),
('infectionD2', 'D__', 'DNAse test agar with toluidne blue', ' -', '', ' -', '500 g', '3317.00', '1 ขวด', '1', 'stock 59', '', 'ปี 59/TCIV327/25034 (ตกลง)'),
('infectionD3', 'D__', 'Dixon\'s Agar (twin pack)', '', 'Himedia', '', '500 g', '3050.00', '1 ขวด', '', 'อ.กานต์รวี', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('infectionE0', 'E0.1', 'E.C. broth', ' -', 'Difco', ' -', ' 500 g', '2,470.00', '1 ขวด', '100 g', 'opened', 'Mar-16', 'ยูเนี่ยน ซายน์ 55/460796'),
('infectionE1', 'E0.2', 'E.C. broth', ' -', 'Himedia', ' -', ' 500 g', '1,572.90', '2 ขวด', '2', 'stock', 'Jul-16', 'Gibthai SX5705001206-2'),
('infectionE2', 'E0.3', 'E.C. broth', '', '', '', '500 g', '1,572.90', '1 ขวด', '1', 'stock', 'Dec-18', 'ปี58/GT-SX5807001208 (ตกลง)'),
('infectionE3', 'E9', 'EMB agar', ' -', 'Merck', ' -', '500 g ', '3,560.00', '5 ขวด ', 'หมด', 'opened1/ วิจัย 1/ หมด2', 'Sep-12', 'ปี 51/NCG'),
('infectionE4', 'E9.1', 'EMB agar', ' -', 'Himedia', ' -', '500 g ', '1,572.90', '1 ขวด ', '500 g', 'opened (ตู้เก็บอาหาร)', 'May-17', 'Gibthai SX5705001206-2'),
('infectionE5', 'E9.2', 'EMB agar', '', 'Himedia', '', '500 g', '1,433.80', '1 ขวด', '1', 'stock (ตู้เก็บอาหาร)', 'Oct-18', 'ปี58/ TC IV317/24019 (ตกลง)'),
('infectionE6', 'E9.3', 'EMB agar', '', 'Himedia', '', '500 g', '', '1 ขวด', '1', 'stock (ตู้เก็บอาหาร)', 'Aug-18', 'ปี58/ UN S'),
('infectionE7', 'E___', 'EMB agar', '', 'Himedia', '', '500 g', '1,353.00', '1 ขวด', '', 'stock คณะ (อ.อัฉริยา)', '', 'ปี 59/ CM VMIV1607054 (ตกลง)'),
('infectionE8', 'E___', 'Eosin Methylene blue agar', '', 'Difco', ' -', '500 g', '-', '1 ขวด', '', 'หมด', '', 'ปี 51/ บริจาค/สารเก่า'),
('infectionG0', 'G1.1', 'GC agar base ', ' -', 'Difco', ' -', '500 g', '2,270.00', '1 ขวด', '200 g', 'opened ', 'Aug-15', 'ศิริปัญญา วิทย์แพทย์ 54'),
('infectionG1', 'G1.2', 'GC agar base ', ' -', 'Difco', ' -', '500 g', '', '1 ขวด', '1', 'stock ', 'Aug-15', 'งบพยาบาล 54'),
('infectionH0', 'H1', 'Hektoen enteric agar (HE agar)', ' -', 'Himedia', ' -', '500 g', '3,470.00', '2 ขวด', '400 g', 'opened', 'Dec-12', 'ปี 51/NCG'),
('infectionH1', 'H1.1', 'Hektoen enteric agar', ' -', 'Himedia', ' -', '500 g', '4,200.00', '2 ขวด', '2', 'stock (ตู้เก็บอาหาร)', 'Apr-16', 'ศิริปัญญา วิทย์แพทย์ 54'),
('infectionH2', 'H___', 'Hektoen enteric agar', ' -', 'Himedia', ' -', '500 g', '1,433.80', '1 ขวด', '1', 'stock (ตู้เก็บอาหาร)', 'Oct-18', 'ปี58/TC IV317/24019 (ตกลง)'),
('infectionI0', 'I21.1', 'ISP medium 2', ' -', 'Difco', ' -', '500 g', '6,750.00', '1 ขวด', '1', 'stock (ตู้เก็บอาหาร)', 'Mar-16', 'ปี 55/ยูเนี่ยนฯ55/460796'),
('infectionI1', 'I____', 'ISP medium No.4 (Inorganic salt starch agar)', ' -', 'Difco', ' -', '500 g', '2,889.00', '1 ขวด', '400 g', 'opened (ตู้เก็บอาหาร)', 'Jul-19', 'ปี58/ TC IV317/24019 (ตกลง)'),
('infectionL0', 'L9', 'Lactose broth', ' -', 'Merck', ' -', '500 g', '2,180.00', '1 ขวด', 'หมด', 'หมด', '', 'ปี 51/IM 269307'),
('infectionL1', 'L9.1', 'Lactose broth', ' -', 'Difco', ' -', '500 g', '1,800.00', '1 ขวด', '250 g', 'opened (ตู้เก็บอาหาร)', 'Oct-16', 'ปี 55/ยูเนี่ยนฯ 55/046796'),
('infectionL10', 'L____', 'Luria-bertani (LB)', '', 'Himedia', '', '500 g', '1,583.60', '1 ขวด', '1', 'stock', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('infectionL11', 'L____', 'Lysine decarboxylase broth', '', 'Difco', ' -', '500 g', '-', '1 ขวด', '', 'opened', 'Sep-11', 'ปี 51/บริจาค/ สารเก่า'),
('infectionL12', 'L____', 'Littman Oxgall Agar', ' -', 'Himedia', ' -', '500 g', '2,247.00', '1 ขวด', '', 'opened (ตู้อาหาร)', 'Jul-19', 'ปี58/ TC IV317/24019 (ตกลง)'),
('infectionL2', 'L8.1', 'Lactose broth', ' -', 'Himedia', ' -', '500 g', '1,177.00', '1 ขวด', '1', 'stock (ตู้เก็บอาหาร)', 'Mar-18', 'Gibthai SX5705001206-2'),
('infectionL3', 'L9.2', 'Lactose broth', ' -', 'Himedia', ' -', '500 g', '1,177.00', '2 ขวด', '2', 'stock (ตู้เก็บอาหาร)', 'Oct-15', 'ปี58/GT-i SX5807001208 (ตกลง)'),
('infectionL4', 'L11.3', 'Lauryl sulphate tryptose broth (LST)', ' -', 'Himedia', ' -', '500 g', '1,348.20', '3 ขวด', 'หมด', 'หมด 3', '', 'Gibthai SX5705001206-2'),
('infectionL5', 'L11.4', 'Lauryl sulphate tryptose broth (LST)', '', 'Himedia', '', '500 g', '1,348.20', '2 ขวด', '550 g', 'opened /stock 1', 'Nov-18', 'ปี58/GT-SX5807001208 (ตกลง)'),
('infectionL6', 'L___', 'Lauryl sulphate tryptose broth (LST)', '', 'Himedia', '', '500 g', '1,270.00', '1 ขวด', '1', 'stock คณะ', '', 'ปี 59/ Siripanya INV59000520 (ตกลง)'),
('infectionL7', 'L15', 'Listeria enrichment broth base', ' -', 'Biomark', ' -', '500 g', '2,091.85', '1 ขวด', '1', 'stock (ตู้อาหาร)', 'Mar-10', 'ปี 50/S-Sci 50-287'),
('infectionL8', 'L16', 'LJ medium (Lowenstein Jensen medium base)', ' -', 'Pronadisa', ' -', '500 g', '2,105.00', '1 ขวด', '400 g', 'ตู้เย็นดำ (4C)', 'Mar-15', 'ปี 54/แปซิฟิค ไซเอ็นซ์ 54'),
('infectionL9', 'L18.1', 'Luria-bertani (LB)', ' -', 'Sigma', ' -', '250 g', '1,220.00', '2 ขวด', '270 g', 'opened / stock 1 ', '', 'ปี58/SP- INV58000421 (ตกลง)'),
('infectionM0', 'M', 'MacConkey agar', ' -', 'Himedia', ' -', '500 g', '1,540.00', '6 ขวด', '', 'ห้องวิจัย 1/หมด 5', 'Dec-12', 'ปี 51/ NCG'),
('infectionM1', 'M 0.3', 'MacConkey agar', '', 'Himedia', '-', '500 g', '1,570.00', '7 ขวด', '2250 g', 'opened /stock  4 / หมด 2', 'Jun-16', 'ปี 56/ยูเนี่ยน ฯ 56/057458'),
('infectionM10', 'M31.1', 'MIL medium', ' -', 'Difco', ' -', '500 g', '5,660.00', '2 ขวด', '600 g', 'opened / stock 1', 'Jul-15', 'A.T.science วิทย์แพทย์ 54'),
('infectionM11', 'M31.2', 'MIL medium', ' -', 'Himedia', ' -', '500 g', '2,665.00', '1 ขวด', '1', 'stock', 'Feb-16', 'ศิริปัญญา พยาบาล 54'),
('infectionM12', 'M32', 'MIO medium', ' -', 'Difco', ' -', '500 g', '6,767.75', '1 ขวด', '250 g', 'opened ', 'Nov-11', 'S-Sci 50-366'),
('infectionM13', 'M33.6', 'MRS broth', '', 'Himedia', '', '500 g', '1,900.00', '7 ขวด', '3200 g', 'opened/stock6 (ตู้เย็นดำ)', '', 'ปี58/ US 58-083360 (ตกลง)'),
('infectionM14', 'M___', 'MRS broth', '', 'Himedia', '', '500 g', '-', '1 ขวด', '', 'IS', '', 'ปี 59/ Gibthai (ตกลง)'),
('infectionM15', 'M34', 'MR-VP medium (Methyl red and voges-proskauer medium)', ' -', 'Himedia', ' -', '500 g', '1,739.00', '2 ขวด', 'หมด', 'หมด 1', '', 'ปี 51/NCG'),
('infectionM16', 'M34.1', 'MR-VP medium', ' -', 'Himedia', ' -', '500 g', '', '1 ขวด', '300 g', 'opened ', 'Oct-15', 'งบพยาบาล 54'),
('infectionM17', 'M34.01', 'MR-VP medium', ' -', 'Himedia', ' -', '500 g', '1,620.00', '1 ขวด', '1', 'stock ', 'Apr-14', 'เบิกแพทย์ 54'),
('infectionM18', 'M34.2', 'MR-VP medium', ' -', 'Difco', ' -', '500 g', '', '1 ขวด', '1', 'stock ', 'Apr-16', 'งบ 55'),
('infectionM19', 'M35', 'MRVS broth ( Rappaport Vassiliadis Modified semi-solid Medium Base)', ' -', 'Scharlar', ' -', '500 g', '1,060.00', '1 ขวด', '300 g', 'opened ', 'Aug-08', 'ปี 51/เบคไทย 48861'),
('infectionM2', 'M 0.4', 'MacConkey agar', ' -', 'Himedia', ' -', '500 g', '1,348.20', '3 ขวด', '3', 'stock  (ตู้เก็บอาหาร)', 'Feb-16', 'Gibthai SX5705001206-2'),
('infectionM20', 'M35', 'MRVS broth', ' -', 'oxoid', ' -', '500 g', '', '1 ขวด', 'หมด', 'หมด', 'Mar-11', 'ปี 51/ บริจาค/สารเก่า'),
('infectionM21', 'M36.5', 'Mueller Hinton broth', '-', 'Himedia', '-', '500 g', '1,605.00', '6 ขวด', '300 g+ 4 ', 'opened/stock4', 'May-18', 'ปี58/Gibthai SX5807001208 (ตกลง)'),
('infectionM22', 'M___', 'Mueller Hinton broth', '-', 'Himedia', '-', '500 g', '1,515.00', '4 ขวด', '4', 'stock คณะ', '', 'ปี 59/Siripanya INV59000520 (ตกลงราคา)'),
('infectionM23', 'M38', 'MYP agar (Manitol-EggYolk-Polymyxin)', ' -', 'Himedia', ' -', '500 g', '2,760.60', '1 ขวด', '250 g', 'opened ', 'Jun-12', 'ปี 51/เชียงใหม่ วีเอ็ม 0706001'),
('infectionM24', 'M39', 'MYP agar', ' -', 'Himedia', ' -', '500 g', '2,790.00', '2 ขวด', '900 g', 'opened /stock 1', 'Jun-13', 'ปี 51/NCG'),
('infectionM25', 'M41', 'MYP agar ', ' -', 'Difco', ' -', '500 g', '', '2 ขวด', '2', 'stock ', 'Jun-16', 'งบ 55'),
('infectionM26', 'M41.1', 'MYP agar ', ' -', 'Himedia', ' -', '500 g', '2,696.40', '2 ขวด', '2', 'stock ', 'Nov-18', 'ปี58/TC IV317/24019 (ตกลง)'),
('infectionM27', 'M42', 'Mycosel Agar', ' -', 'Difco', ' -', '500 g', '6,650.00', '1 ขวด', '250 g', 'opened (ตู้อาหาร)', 'Dec-18', 'ปี58/ US 58-083360 (ตกลง)'),
('infectionM3', 'M9', 'Malt extract powder', ' -', 'Himedia', ' -', '500 g', '1,925.00', '5 ขวด', '100 g', 'opened 2 / หมด 3', 'Dec-12', 'ปี 51/NCG'),
('infectionM4', 'M9.1', 'Malt extract powder', ' -', 'Difco', ' -', '500 g', '', '1 ขวด', '1', 'stock  (ตู้เก็บอาหาร)', 'Aug-17', 'ปี58/'),
('infectionM5', 'M___', 'Malt extract powder', ' -', 'Difco', '', '500 g', '2,250.00', '1 ขวด', '1', 'stock', '', 'ปี 59/ UNS IV59/______(ตกลง)'),
('infectionM6', 'M17.2', 'Manital salt agar ', ' -', '', ' -', '500 g', '', '1 ขวด ', '', 'opened (ห้องวิจัย)', '', 'ปี54/งบพยาบาล 54'),
('infectionM7', 'M17.4', 'Manital salt agar ', '', 'Himedia', '', '500 g', '1,348.20', '2 ขวด', 'หมด', 'หมด', 'Aug-16', 'Gibthai SX5705001206-2'),
('infectionM8', 'M17.5', 'Manital salt agar ', '', 'Difco', '', '500 g', '1,350.00', '3 ขวด', '100 g + 2', 'stock 3', 'Dec-18', 'ปี58/ US 58-083360 (ตกลง)'),
('infectionM9', 'M___', 'Extract of meat', ' -', 'Merck', ' -', '500 g', '-', '1 ขวด', '20 g', 'opened ', 'Dec-05', 'ปี 51/บริจาค/ สารเก่า'),
('infectionN29', 'N11.1', 'Nitrate broth', '', 'Himedia', ' -', '500 g', '1,819.00', '1 ขวด', '250 g', 'opened (ตู้อาหาร)', 'Aug-15', 'Gibthai SX5705001206-2'),
('infectionN30', 'N___', 'Nitrate broth', '', 'Himedia', '-', '500 g', '1,819.00', '1 ขวด', '', 'stock 59', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('infectionN31', 'N20.1', 'Nutrient broth', ' -', 'Himedia', ' -', '500 g', '1,048.60', '5 ขวด', 'หมด', 'หมด', '', 'Gibthai SX5705001206-2'),
('infectionN32', 'N20.2', 'Nutrient broth', '', 'Himedia', '-', '500 g', '1,048.60', '6 ขวด', '1010 g', 'opened  /stock2/ หมด 3', 'Jun-18', 'ปี58/GT SX5807001208 (ตกลง)'),
('infectionN33', 'N___', 'Nutrient broth', '', 'Himedia', '-', '500 g', '-', '4 ขวด', '4', 'stock 4', 'Apr-19', 'ปี58/'),
('infectionN34', 'N___', 'Nutrient broth', '', 'Himedia', '-', '500 g', '1,198.40', '2 ขวด', '', 'ค้างส่ง', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('infectionO0', 'O__', 'Oatmeal Agar', ' -', 'Himedia', '', '500 g', '', '1 ขวด', '20 g', 'opened (ตู้อาหาร)', 'Dec-10', 'ปี 51/บริจาค/สารเก่า'),
('infectionO1', 'O.01', 'OF Basal Medium', ' -', 'Himedia', ' -', '500 g', '1,797.60', '2 ขวด', '900 g', 'opened/ stock ', 'May-10', 'ปี 56/TC/IV292/21544'),
('infectionO2', 'O__', 'OF Basal Medium', ' -', '', ' -', '500 g', '1,551.50', '1 ขวด', '1', 'stock คณะ', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('infectionP0', 'P6', 'Meat peptone                          (Peptic digest of animal tissue) ', ' -', 'Criterion', ' -', '500 g', '1,820.00', '1 ขวด', '400 g', 'opened', 'Sep-13', 'ปี 52/BT52-07239'),
('infectionP1', 'P6.1', 'Peptone M=Meat peptone', ' -', 'CDH', ' -', '500 g', '1,670.00', '1 ขวด', '500 g', 'stock ', 'Aug-10', 'ปี 51/ศิริฯ510000407'),
('infectionP10', 'P___', 'Plate count agar', '', 'Himedia', '', '500 g', '1,390.00', '1 ขวด', '500 g', 'stock คณะ', '', 'ปี 59/Siripanya INV59000520 (ตกลงราคา)'),
('infectionP11', 'P62.02', 'Potato dextrose broth', ' -', 'Himedia', ' -', '500 g', '1,660.00', '8 ขวด', '2950 g', 'opened / stock6', 'Jun-12', 'ปี58/ UN 58-083360 (ตกลง)'),
('infectionP12', 'P___', 'Potato dextrose Agar', ' -', 'Criterion', ' -', '500 g', '1,500.00', '14 ขวด', '', 'IS อ.นิคม', 'อ.นิคม', 'ปี58/BT L58-11_____(ตกลง)'),
('infectionP13', 'P___', 'Potato dextrose Agar', '', 'Difco', '', '500 g', '2,090.00', '24 ขวด', '', 'อ.นิคม', '', 'ปี 59/ TTK (ตกลง)'),
('infectionP14', 'P64', 'Proteose peptone', ' -', 'Criterion', ' -', '500 g', '1,979.50', '5 ขวด', '1750 g', 'opened 1/  ห้องวิจัย 1/ stock 3', 'May-12', 'ปี 50/BT 50-11680'),
('infectionP15', 'P67', 'Pseudomonas agar F (for fluorescein)', ' -', 'Himedia', ' -', '500 g', '2,835.50', '1 ขวด', '250 g', 'opened ', 'Aug-11', 'BT 50-11680'),
('infectionP16', 'P67.1', 'Pseudomonas agar F (for fluorescein)', ' -', 'Difco', ' -', '500 g', '', '1 ขวด', '500 g', 'stock', 'Apr-19', 'ปี58/UNS'),
('infectionP17', 'P68', 'Pseudomonas agar P (for pyocyanin)', ' -', 'Himedia', ' -', '500 g', '2,856.90', '1 ขวด', '250 g', 'opened ', 'May-11', 'BT 50-11680'),
('infectionP18', 'P68.1', 'Pseudomonas agar P  (for pyocyanin)', ' -', 'Difco', ' -', '500 g', '', '1 ขวด', '500 g', 'stock', 'Nov-19', 'ปี58/UNS'),
('infectionP2', 'P9.2', 'Peptone, bio', '-', 'Himedia', '-', '500 g', '1,679.00', '4 ขวด', '50 g', 'opened', 'Nov-16', 'ปี 56TC/ IV292/21544'),
('infectionP3', 'P9.5', 'Peptone', '', 'Himedia', '', '500 g', '1,198.40', '6 ขวด', '6', 'stock', 'Apr-19', 'ปี58/GT SX5807001208 (ตกลง)'),
('infectionP4', 'P9.6', 'Peptone', '', 'Himedia', '', '500 g', '', '2 ขวด', '2', 'stock', 'Dec-18', 'ปี58/UNS'),
('infectionP5', 'P___', 'Peptone', '', 'Himedia', '', '500 g', '1,198.40', '1 ขวด', '500 g', 'stock 59', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('infectionP6', 'P10', 'Peptone from casein', ' -', 'Himedia', ' -', '500 g', '2,375.00', '1 ขวด', '3 g', 'opened', 'Apr-13', 'ปี 51/NCG'),
('infectionP7', 'P___', 'Alkaline peptone water', ' -', 'Merck', ' -', '500 g', '-', '1 ขวด', 'หมด', 'หมด', '', 'ปี 51/สารเก่า/บริจาค'),
('infectionP8', 'P17', 'Phenol red broth base', ' -', 'CDH', 'for lab use only', '500 g', '1,600.00', '2 ขวด', '700 g', 'opened / stock 1', 'Aug-12', 'ศิริปัญญา501000258'),
('infectionP9', 'P20', 'Plate count agar', ' -', 'Himedia', ' -', '500 g', '1,990.00', '2 ขวด', '510 g', 'opened / stock 1', 'Dec-12', 'ปี 51/NCG'),
('infectionR0', 'R___', 'Rhamnose Broth', '', 'Fluka', 'Biochemika', '100 g', '', '1 ขวด', '80 g', 'opened ', 'Jul-12', 'ปี 51/สารเก่าฝ บริจาค'),
('infectionR1', 'R6', 'RVS broth', ' -', 'Oxoid', ' -', '500 g', '2,855.00', '2 ขวด', '750 g', ' opened / stock 1', 'Nov-08', 'ปี 51/NCG'),
('infectionR2', 'R7.1', 'Rose Bengal Agar', ' -', 'Himedia', ' -', '500 g', '2,372.00', '1 ขวด', '300 g', ' opened ', 'Jul-15', 'แพทย์ 54'),
('infectionR3', 'R7.2', 'Rose Bengal Agar', ' -', 'Himedia', ' -', '500 g', '2,330.00', '2 ขวด', '1000 g', 'stock ', 'Feb-18', 'ศิริปัญญา INV5700000324'),
('infectionR4', 'R7.3', 'Rose Bengal Agar', ' -', 'Himedia', ' -', '500 g', '2,461.00', '3 ขวด', '1500 g', 'stock  3', 'Feb-18/  APR-19', 'ปี58/TC IV317/24019 (ตกลง)'),
('infectionS0', 'S', 'Sabouroud 4% dextrose agar', ' -', 'Difco', ' -', '500 g', '2,200.00', '5 ขวด', 'หมด', 'หมด', '', 'ปี 52/ศิริปัญญา 520000313'),
('infectionS1', 'S1', 'Sabouroud 4% dextrose agar', ' -', 'Difco', ' -', '500 g', '1,177.00', '10 ขวด', '900 g ', 'stock 1/ หมด 8', 'Mar-12', 'ปี 50/S_Sci 50-367'),
('infectionS10', 'S14', 'Skim milk', ' -', 'Difco', ' -', '500 g', '1,730.00', '1 ขวด', 'หมด', 'หมด', 'Apr-15', 'ปี 53/ยูเนี่ยนฯ 53/026687'),
('infectionS11', 'S14.1', 'Skim milk', ' -', 'Himedia', ' -', '500 g', '1,000.00', '1 ขวด', '200 g', 'opened (ตู้อาหาร)', 'Feb-19', 'ปี58/ UN 58-083360 (ตกลง)'),
('infectionS12', 'S14.2', 'Skim milk', ' -', 'Himedia', ' -', '500 g', '', '1 ขวด', '1', 'stock', 'Jan-19', 'ปี58/'),
('infectionS13', 'S73', 'Salmonella shigella agar = SS agar', ' -', 'Himedia', ' -', '500 g', '1,800.00', '2 ขวด', '', 'opened วิจัย /หมด', 'May-16', 'ปี 51/ NCG'),
('infectionS14', 'S73.1', 'Salmonella shigella agar = SS agar', ' -', 'Himedia', ' -', '500 g', '1,800.00', '1 ขวด', 'หมด', 'หมด', '', 'ศิริปัญญา วิทย์แพทย์ 54'),
('infectionS15', 'S73.01', 'Salmonella shigella agar = SS agar', ' -', 'Himedia', ' -', '500 g', '1,800.00', '1 ขวด', '1', 'stock (ตู้เก็บอาหาร)', 'May-16', 'แพทย์ 54'),
('infectionS16', 'S73.2', 'Salmonella shigella agar = SS agar', '', 'Difco', '-', '500 g', '', '1 ขวด', '1', 'stock (ตู้เก็บอาหาร)', 'Feb-16', 'ปี 55'),
('infectionS17', 'S73.3', 'Salmonella shigella agar = SS agar', ' -', 'Himedia', ' -', '500 g', '1,348.20', '1 ขวด', '1', 'stock (ตู้เก็บอาหาร)', 'Nov-15', 'Gibthai SX5705001206-2'),
('infectionS18', 'S73.4', 'Salmonella shigella agar = SS agar', '', 'Himedia', '', '500 g', '1,690.00', '2 ขวด', '250 g + 1', 'stock (ตู้เก็บอาหาร)', 'Oct-18', 'ปี58/ UN 58-083360 (ตกลง)'),
('infectionS19', '-', 'Staphylococcus medium', '', 'Himedia', '', '500 g', '', '1 ขวด', '400 g', 'opened (ตู้อาหาร)', 'May-07', 'ปี 51/ สารเก่า/ บริจาค'),
('infectionS2', 'S___', 'SFP Agar Base', '', 'Difco', '', '500 g', '', '1 ขวด', '300 g', 'opened ', 'Nov-10', 'ปี 51/ สารเก่า/ บริจาค'),
('infectionS20', 'S75', 'Strach casien agar', ' -', 'Himedia', ' -', '500 g', '2,461.00', '3 ขวด', '400 g + 1 ', 'opened (ตู้อาหาร)', 'Apr-19', 'ปี58/TC IV317/24019 (ตกลง)'),
('infectionS21', 'S76', 'Streptococcus selective agar', ' -', 'Lab-scan', ' -', '500 g', '3,060.20', '1 ขวด', '400 g', 'opened (ตู้อาหาร)', 'Jan-10', 'BT 50-11680'),
('infectionS3', 'S11.1', 'Simmon citrate agar', ' -', 'Himedia', ' -', '500 g', '1,700.00', '2 ขวด', '', 'opened (ห้องวิจัย) 2', '', 'ปี 54/ศิริ1ฯวิทย์แพทย์ 54'),
('infectionS4', 'S11.2', 'Simmon citrate agar', ' -', 'Himedia', ' -', '500 g', '1,750.00', '1 ขวด', '100 g', 'opened', 'Dec-15', 'ปี 54/ศิริฯ พยาบาล 54'),
('infectionS5', 'S11.3', 'Simmon citrate agar', ' -', 'Himedia', ' -', '500 g', '1,783.00', '2 ขวด', '2', 'stock ', 'Mar-16', 'ปี 55/ศิริฯINV550000409'),
('infectionS6', 'S12.1', 'SIM medium', ' -', 'Himedia', ' -', '500 g', '2,030.00', '1 ขวด', '400 g ', 'opened ', 'Jan-16', 'ปี 54/ศิริ1ฯวิทย์แพทย์ 54'),
('infectionS7', 'S12.2', 'SIM medium', ' -', 'Himedia', ' -', '500 g', '1,930.00', '1 ขวด', '1', 'stock', 'Jan-16', 'ปี 54/ศิริฯ พยาบาล 54'),
('infectionS8', 'S12.3', 'SIM medium', ' -', 'Himedia', ' -', '500 g', '1,968.00', '1 ขวด', '1', 'stock', 'Jan-16', 'ปี 55/ศิริฯINV550000409'),
('infectionS9', 'S12.4', 'SIM medium', ' -', 'Himedia', ' -', '500 g', '1,940.00', '2 ขวด', '2', 'stock', 'sep-16/  Mar-16', 'ปี 56/ยูเนี่ยนฯ 56/057458'),
('infectionT0', 'T4', 'TCBS  Agar = Thioglycolate citrate bile salt sucrose Agar', ' -', 'Pronadisa', ' -', '500 g', '1,600.00', '1 ขวด', '', 'opened (ห้องวิจัย)', 'Aug-15', 'ปี 52/ศิริฯ 520000313'),
('infectionT1', 'T5', 'TCBS  Agar ', ' -', 'Pronadisa', ' -', '500 g', '1,380.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี 50/ศิริฯ 501000259'),
('infectionT10', 'T___', 'Thioglycolate medium', '', '', '', '500 g', '716.90', '1 ขวด', '', 'stock 59', '', 'ปี 59/ TC IV327/25034 (ตกลง)'),
('infectionT11', 'T21', 'Todd Hewitt broth', ' -', 'Sigma', ' -', '500 g', '6,826.60', '1 ขวด', '250 g', 'opened (ตู้เย็น 4C ขาว)', '', 'เอสเอ็ม เคมีคอล 0706767'),
('infectionT12', 'T32.7', 'Trypticase soy broth', '-', 'Himedia', '-', '500 g', '727.60', '6 ขวด', 'หมด', 'หมด', 'Apr-19', 'ปี58/Gibthai SX5807001208 (ตกลง)'),
('infectionT13', 'T32.8', 'Tryptacase soy broth', '-', 'Himedia', '-', '500 g', '', '1 ขวด', 'หมด', 'หมด', '', 'ปี 58/ '),
('infectionT14', 'T ___', 'Trypticase soy broth', '-', 'Himedia', '-', '500 g', '716.90', '10 ขวด', '', 'stock คณะ', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('infectionT15', 'T34.2', 'Tryptone glucose yeast extract agar', ' -', 'Himedia', ' -', '500 g', '2,195.00', '2 ขวด', '400 g + 1 ', 'opened / stock 1', 'May-19', 'ปี58/Siripanya INV58000421'),
('infectionT16', 'T___', 'Tryptone glucose yeast extract agar', ' -', '', ' -', '500 g', '1,439.60', '2 ขวด', '2', 'stock 59', '', 'ปี 59/ TC IV327/25034 (ตกลง)'),
('infectionT17', 'T34.3', 'Tryptose ', ' -', 'Himedia', ' -', '500 g', '', '1 ขวด', '400 g', 'opened ', 'Apr-16', 'ปี 55'),
('infectionT18', 'T35', 'Tryptone type I                             (Casein enzyme hydrolysate type I)', ' -', 'Himedia', ' -', '500 g', '2,020.00', '2 ขวด', 'หมด', 'opened (ห้องวิจัย)/ หมด 1', '', 'ปี 51/ NCG 5007-0169'),
('infectionT19', 'T36', 'Tryptone type I ', ' -', 'Himedia', ' -', '500 g', '2,120.00', '3 ขวด', '50 g + 200 g', 'opened 2/ หมด 1', 'Nov-12', 'ปี 51/ NCG '),
('infectionT2', 'T7.1', 'TCBS agar', ' -', 'Himedia', ' -', '500 g', '', '1 ขวด', '1', 'stock ', 'Aug-15', 'ปี 54/งบพยาบาล 54'),
('infectionT20', 'T___', 'Tryptone (Ceasin Enzyme Hydrolysate Type I)', '', '', '', '500 g', '1,935.00', '1 ขวด', '1', 'stock คณะ', '', 'ปี 59/ Siripanya INV59000520 (ตกลงราคา)'),
('infectionT21', 'T37', 'Tryptone water', ' -', 'Himedia', ' -', '500 g', '1,669.20', '2 ขวด', '1', 'opened / stock 1', 'Jan-12', 'BT 50-11680'),
('infectionT22', '-', 'Tryptone water', ' -', 'Himedia', ' -', '500 g', '', '1 ขวด', '', 'opened ', 'Nov-06', 'ปี 51/ บริจาค/ สารเก่า'),
('infectionT23', 'T39', 'TSC agar', ' -', 'Merck', ' -', '500 g', '6,215.00', '2 ขวด', '10 g + 1', 'opened/ stock 1', 'May-13', 'ศิริปัญญา 520000313'),
('infectionT24', 'T39.1', 'TSC agar', ' -', 'Merck', ' -', '500 g', '', '1 ขวด', '1', 'stock', 'Jul-16', 'ปี 55'),
('infectionT25', 'T39.2', 'TSC agar', '', 'Himedia', '', '500 g', '1,872.50', '1 ขวด', '1', 'stoc', 'Jun-19', 'ปี58/GT- SX5807001208 (ตกลง)'),
('infectionT26', 'T40', 'Triple sugar iron agar', ' -', 'Himedia', ' -', '500 g', '1,735.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี51/NCG'),
('infectionT27', 'T40.01', 'Triple sugar iron agar', ' -', 'Himedia', ' -', '500 g', '1,640.00', '1 ขวด', 'หมด', 'หมด', 'Feb-16', 'แพทย์ 54'),
('infectionT28', 'T40.2', 'Triple sugar iron agar', ' -', 'Himedia', ' -', '500 g', '1,700.00', '3 ขวด', '3', 'stock (ตู้อาหาร)', 'Jan-17', 'ศิริปัญญา INV560000243'),
('infectionT29', 'T40.3', 'Triple sugar iron agar', ' -', 'Himedia', ' -', '500 g', '1,348.20', '1 ขวด', '400 g', 'opened ', 'Sep-15', 'Gibthai SX5705001206-2'),
('infectionT3', 'T7.2', 'TCBS agar', ' -', 'Himedia', ' -', '500 g', '2,110.00', '1 ขวด', '400 g', 'opened ', 'Aug-15', 'ปี 54/แพทย์ 54'),
('infectionT4', 'T___', 'TCBS agar', '', 'Himedia', '-', '500 g', '1,695.00', '1 ขวด', '', 'stock คณะ', '', 'ปี 59/Siripanya INV59000520 (ตกลงราคา)'),
('infectionT5', 'T8.1', 'Tetrationate broth base', ' -', 'Himedia', ' -', '500 g', '1,260.00', '1 ขวด', '50 g', 'opened ', 'Jun-15', 'ปี 54/AT science  54'),
('infectionT6', 'T8.2', 'Tetrationate broth base', ' -', 'Himedia', ' -', '500 g', '1,260.00', '1 ขวด', '1', 'stock', 'Jun-15', 'แพทย์ 54'),
('infectionT7', 'T8.3', 'Tetrationate broth base', ' -', 'Himedia', ' -', '500 g', '1,305.40', '1 ขวด', '1', 'stock', 'Jul-18', 'ปี58/TC IV317/24019 (ตกลง)'),
('infectionT8', 'T12', 'Thioglycolate medium', ' -', 'CDH', ' -', '500 g', '940.00', '1 ขวด', '250 g', 'opened ', 'Jun-12', 'ปี 51/ศิริฯ 501000259'),
('infectionT9', 'T13', 'Thioglycolate medium', ' -', 'Difco', ' -', '500 g', '1,048.60', '2 ขวด', '250 g', 'opened / หมด 1', 'Oct-11', 'ปี 51/S-Sci  50-367'),
('infectionU0', 'U', 'Urea broth base', ' -', 'Himedia', ' -', '500 g', '1,950.00', '1 ขวด', '1', 'stock ', 'Apr-12', 'ปี 51/S-Sci 50-367'),
('infectionU1', 'U1', 'Urea broth base', ' -', 'Himedia', ' -', '500 g', '1,626.40', '2 ขวด', '200 g ', 'opened / ห้องวิจัย', 'Apr-12', 'ปี 51/NCG'),
('infectionU2', 'U___', 'Urea agar base', ' -', 'Himedia', ' -', '500 g', '', '1 ขวด', '', 'หมด', '', 'ปี 51/บริจาค/ สารเก่า'),
('infectionV0', 'V2', 'Violet Red Bile Agar', ' -', 'Himedia', ' -', '500 g', '1,798.00', '1 ขวด', '450 g', 'opened', 'Mar-11', 'S-Sci 49-306'),
('infectionV1', 'V3', 'Violet Red Bile Agar', ' -', 'Himedia', ' -', '500 g', '1,819.00', '1 ขวด', '1', 'stock ', 'Nov-11', 'BT 50-11680'),
('infectionX0', 'X1.2', 'XLD agar', ' -', 'Himedia', ' -', '500 g', '1,820.00', '1 ขวด', '50 g', 'opened ', 'Feb-16', 'แพทย์ 54'),
('infectionX1', 'X1.3', 'XLD agar', ' -', 'Himedia', ' -', '500 g', '1,465.90', '3 ขวด', '2', ' opened (ห้องวิจัย )/ stock 2', 'Apr-16', 'Gibthai SX5705001206-2'),
('infectionX2', 'X___', 'XLD agar', ' -', 'Himedia', ' -', '500 g', '1,465.90', '2 ขวด', '', 'stock ', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('infectionY0', 'Y3.3', 'Yeast Extract ', '', 'Himedia', '', '500 g', '1,177.00', '2 ขวด', 'หมด', 'หมด 1 / ห้องวิจัย', 'Aug-17', 'Gibthai SX5705001206-2'),
('infectionY1', 'Y3.4', 'Yeast Extract ', '', 'Himedia', '', '500 g', '1,177.00', '4 ขวด', '3', 'stock ', 'Mar-17', 'ปี58/GT-SX5807001208 (ตกลง)'),
('infectionY2', 'Y___', 'Yeast Extract ', '', 'Himedia', '', '500 g', '1,177.00', '3 ขวด', '250 g + 2', 'stock 59', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('infectionY3', 'Y___', 'Yeast Extract granulated', ' -', 'Merck', ' -', '500 g', '', '1 ขวด', '300 g', 'opened', '', 'ปี 51/ สารเก่า/ บริจาค'),
('infectionY4', 'Y6.2', 'Yeast Malt Broth (YM)', ' -', 'Himedia', ' -', '500 g', '1,572.90', '6 ขวด', '200 g + 4', ' opened / stock 4', 'Dec-18', 'ปี58/GT SX5807001208 (ตกลง)'),
('infectionY5', 'Y___', 'Yeast Malt Broth (YM)', ' -', 'Himedia', '', '500 g', '1,572.90', '2 ขวด', '', 'stock (อ.สมศักดิ์)', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('infectionY6', 'Y7', 'Yeast Malt Agar (YM agar)', ' -', 'Himedia', ' -', '500 g', '2,311.20', '3 ขวด', '', ' opened / หมด 2', '', 'ปี57 GibthaiSX5703000194 (งบ50000)'),
('infectionY7', 'Y8', 'Yeast Carbon Base ', ' -', 'Difco', ' -', '100 g', '2,300.50', '1 ขวด', '80 g', 'opened (ตู้เย็น4C)', 'Sep-18', 'ปี58/TC IV317/24019 (ตกลง)'),
('infectionY8', 'Y___', 'Yeast Carbon Base ', ' -', 'Difco', ' -', '100 g', '2,568.00', '1 ขวด', '', 'stock (ตู้เย็น4C) ', '', 'ปี 59/ TC IV327/25034 (ตกลง)'),
('infectionY9', 'Y9', 'Yeast Nitrogen Base ', ' -', 'Difco', ' -', '100 g', '2,300.50', '1 ขวด', '80 g', 'opened (ตู้เย็น4C)', 'May-18', 'ปี58/TC IV317/24019 (ตกลง)'),
('sugarA0', 'A3.2', 'Adonitol', 'C5H12O5', 'Difco', ' -', '10 g', '1,995', '1 ขวด', 'หก', 'opened (ห้องวิจัย)', 'กดหฟ', 'ปี 55/UNS 55/046796'),
('sugarA1', 'A32.4', 'L-arabinose', 'C5H10O5  ', 'Himedia', ' ', '25 g', '2,160', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี 55/UNS 55/046796'),
('sugarA2', 'A____', 'L-arabinose', 'C5H10O5  ', 'Himedia', ' ', '25 g', '-', '1 ขวด', 'หมด', 'หมด', '', 'สารบริจาค'),
('sugarA3', 'A____', 'L-arabinose', 'C5H10O5  ', 'Acros', ' ', '25 g', '2,090', '1 ขวด', 'หมด', 'หมด', '', 'ปี58/ IT IV15-081462 (สอบ)'),
('sugarA4', 'A33', 'L-Arginine hydrochloride', 'C6H14N4O11.H2O', 'Himedia', 'For Laboratory use only', '25 g', '450', '4 ขวด', '20 g + 3', 'opened (ตู้น้ำตาล)/ stock 3', 'มี.ค.-16', 'ปี 50/NCG 5007-0006'),
('sugarA5', 'A34.1', 'L-Asparagine monohydrate', 'NH2COCH2CH(NH2)COOH.H2O', 'USB', '', '100 g', '5,335.00', '2 ขวด', '50 g', ' opened (ตู้สารเคมี)/ห้องวิจัย', '', 'ปี 53/BT 53-09642'),
('sugarC0', 'C16', 'Celloibiose', ' -', 'Fluka', 'Biochemika', '50 g', '5,082.50', '2 ขวด', '', 'opened (ห้องวิจัย)/ หมด', '', 'ปี 50/TC 213-13688'),
('sugarC1', 'C16.1', 'D-(+)-Cellobiose', 'C12H22011', 'Fluka', '', '10 g', '1,700.00', '1 ขวด', '25 g', 'opened (ตู้น้ำตาล)', '', 'ปี 55/IV281/20465'),
('sugarC2', 'C16.2', 'D-(+)-Cellobiose', 'C12H22011', 'Acros', '', '25 g', '3,390.00', '1 ขวด', '1', 'stock (ตู้น้ำตาล)', '', 'ปี58/ IT IV 15-081462 (สอบ)'),
('sugarD0', 'D10.1', 'Dextrose,anhydrous = D+Glucose', '', 'Carlo', '', '500 g', '230.00', '8 ขวด', 'หมด', 'opened (ตู้น้ำตาล) /stock', '', 'ปี58/ IT IV 15-081462 (สอบ)'),
('sugarD1', 'D17', 'Dulcitol', 'C6H14O6', 'Ajax', ' -', '25 g', '1120.00', '1 ขวด', '15 g', 'opened (ตู้น้ำตาล)', '', 'ปี 55/IV281/20465'),
('sugarD2', 'D___', 'Dulcitol', 'C6H14O6', 'Acros', '', '25 g', '1100.00', '1 ขวด', '1', 'stock (ตู้น้ำตาล)', '', 'ปี58/ IT IV 15-081462 (สอบ)'),
('sugarF0', 'F1', 'D-Fructose', 'C6H12O6', 'Acros', ' -', '500 g', '577.80', '1 ขวด', '', 'opened (ตู้น้ำตาลเปิดใช้)', '', 'ปี 51/IM 236300'),
('sugarF1', 'F1.1', 'D-Fructose', 'C6H12O6', 'Ajax', ' -', '100 g', '530.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี 55/IV281/20465'),
('sugarF2', 'F1.2', 'D-Fructose', '', 'Ajax', '', '100g', '555.00', '1 ขวด', '1', 'stock (ตู้น้ำตาลยังไม่เปิด)', '', 'ปี 57 Union Science 57/066461'),
('sugarG0', 'G1', 'D(+)-Galactose ', 'C6H12O6', 'Fluka', ' -', '250 g', '4,000.00', '1 ขวด', '1', 'stock (ตู้น้ำตาลยังไม่เปิดใช้)', '', 'ปี 51/OV 05/02341'),
('sugarG1', 'G___', 'D(+)-Galactose ', 'C6H12O6', 'APS', ' -', '100 g', '-', '1 ขวด', '50 g', 'opened (ตู้น้ำตาล)', '', 'ปี 51/ บริจาค/ สารเก่า'),
('sugarG2', 'G6.4', 'D-Glucose ', 'C6H12O6', 'Ajax', '', '500 g', '320.00', '4 ขวด', '3', 'stock (ตู้น้ำตาล) 3 /หมด 1', '', 'ปี58/ TA SC IV5807102 (ตกลง)'),
('sugarG3', 'G6.5', 'D-Glucose ', 'C6H12O6', 'Carlo', '', '500 g', '230.00', '15 ขวด', '15', 'opened/ stock (ตู้น้ำตาล)', '', 'ปี58/ IT IV15-081462 (สอบ)'),
('sugarI0', 'I0.1', 'Inositol ', 'C6H12O6', 'Himedia', ' -', '25 g', ' -', ' -', 'หมด', 'หมด', '', 'ปี 51/บริจาค/ สารเก่า'),
('sugarI1', 'I0.2', 'Inositol ', 'C6H12O6', 'Himedia', ' -', '25 g', '650.00', '2 ขวด', '20 g', 'stock (ตู้เก็บน้ำตาล) / วิจัย 1', '', 'ปี 55/IV281/20465 '),
('sugarL0', 'L6', 'Lactose monohydrate', 'C12H22O11.H2O', 'CXL', 'AR', '500 g', '430.00', '1 ขวด', 'หมด', 'หมด', '', 'ปี 51/ศิริปัญญา 501000234'),
('sugarL1', 'L7', 'Lactose monohydrate', 'C12H22O11.H2O', 'CXL', 'AR', '500 g', '300.00', '3 ขวด', '250 g + 1', 'opened (ตู้น้ำตาลเปิดใช้)/ stock 1', '', 'ปี 51/ศิริปัญญา 510000298'),
('sugarL2', 'L7.1', 'Lactose', 'C12H22O11.H2O', 'Ajax', 'Univar ', '500 g', '700.00', ' 1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี 54/ยูเนี่ยน ซายน์ 034531'),
('sugarL3', 'L7.01', 'Lactose', 'C12H22O11.H2O', 'Ajax', 'Univar ', '500 g', '700.00', ' 1 ขวด', '1', 'stock (ตู้น้ำตาล)', '', 'ปี 54/งบแพทย์'),
('sugarL4', 'L7.2', 'Lactose', 'C12H22O11.H2O', 'Ajax', 'Univar ', '500 g', '680.00', ' 1 ขวด', '400 เ', 'opened (ตู้น้ำตาล)', '', 'ปี 55/IV281/20465'),
('sugarM0', 'M11', 'Maltose monohydrate , 90%', 'C12H22O11.H2O', 'Acros', 'Organic', '100 g', '899.00', '5 ขวด', '50 g + 1', 'opened /stock1/ หมด 3', '', 'ปี 51/IM 222676'),
('sugarM1', 'M12', 'Maltose', 'C12H22O11', 'Alpha', 'lab-reagent', '500 g', '1,230.00', '1 ขวด', '1', 'stock (ตู้น้ำตาล)', '', 'ปี 51//ศิริฯ501000258');
INSERT INTO `chemicals` (`type`, `code`, `name`, `chemical_formula`, `brand`, `grade`, `size`, `price/unit`, `amout`, `Remaining`, `storags`, `expiration_date`, `comment`) VALUES
('sugarM10', 'M19.1', 'D(+)Mannose', 'C6H12O6', 'Acros', '', '25 g', '1,000.00', '2 ขวด', '2', 'stock (ตู้เก็บน้ำตาล)', '', 'ปี58/ IT IV15-081462 (สอบ)'),
('sugarM11', 'M20.1', 'D+(-)Melibiose', 'C12H22O11', 'Merck', ' -', '5 g', '2,200.00', '1 ขวด', '1', 'opened (น้ำตาลเปิดใช้)', '', 'ปี 56/Union S. 56-061136'),
('sugarM12', 'M20.2', 'D+(-)Melibiose', 'C12H22O11', 'Acros', '', '5 g', '2,800.00', '2 ขวด', '2', 'stock (ตู้เก็บน้ำตาล)', '', 'ปี58/ IT IV15-081462 (สอบ)'),
('sugarM2', 'M12.1', 'Maltose monohydrate', 'C12H22O11.H2O', 'APS', 'Labchem', '100g', '-', '1 ขวด', '1', 'stock (ตู้น้ำตาล)', '', 'ปี 51/NT39/464'),
('sugarM3', 'M13', 'Maltose monohydrate', 'C12H22O11.H2O', 'Fluka', 'HPLC', '25 g', '1,080.00', '1 ขวด', '5 g', 'opened (ตู้น้ำตาล)', '', 'ปี 51//OV 05/02341'),
('sugarM4', 'M___', 'Maltose monohydrate', 'C12H22O11.H2O', 'APS', 'Labchem', '100g', '-', '1 ขวด', '80 g', 'opened (ตู้น้ำตาล)', '', 'ปี 51/บริจาค/ สารเก่า'),
('sugarM5', 'M13.1', 'Maltose monohydrate', 'C12H22O11.H2O', 'APS', 'Labchem', '100g', '880.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี 55//V281/20465'),
('sugarM6', 'M16', 'Mannitol', 'CH2OH(CHOH)4CH2OH', 'Ajax', 'Univar ', '500 g', '639.86', '1 ขวด', '200 g', 'opened (ตู้น้ำตาล)', '', 'ปี 51/S-Sci 47-573'),
('sugarM7', 'M17.01', 'D(-)Mannitol', 'C6H14O6', 'QReC', '', '500 g', '740.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี 55/ยูเนี่ยนฯ55/049796'),
('sugarM8', 'M17.2', 'D-Mannitol', '', 'Carlo', '', '500 g', '600.00', '1 ขวด', '1', 'stock (ตู้เก็บน้ำตาล)', '', 'ปี58/ IT IV15-081462 (สอบ)'),
('sugarM9', 'M19', 'D(+)Mannose', 'C6H12O6', 'Pharma chemika', 'LR', '25 g', '925.00', '4 ขวด', '5 g +20 g', 'opened 2/ ห้องวิจัย/ หมด 1', '', 'ศิริปัญญา 520000313'),
('sugarO0', 'O__', 'L-Ornithine monohydrochloride', 'C5H12O2.HCl', 'Himedia', '', '25 g', '', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี 51/บริจาค/สารเก่า'),
('sugarO1', 'O2', 'L-Ornithine monohydrochloride', 'C5H12O2.HCl', 'Merck', '', '25 g', '1,380.00', '1 ขวด', '20 g', 'opened (ตู้น้ำตาลเปิดใช้)', '', 'ปี 56/Union S. 56-061136'),
('sugarR0', 'R', 'D+(-)Raffinose', 'C18H32O16.5H2O', 'Merck', 'biochemistry', '50 g', '12,626.00', '1 ขวด', '25 g', 'opened (ตู้น้ำตาลเปิดใช้)', '', 'BT 50-11680'),
('sugarR1', 'R__', 'Raffinose', 'C18H32O16.5H2O', 'Fluka', '', '25 g', '', '', '10 g', 'opened (ตู้น้ำตาลเปิดใช้)', '', 'ปี 51/สารเก่าฝ บริจาค'),
('sugarR2', 'RR', 'Raffinose pentahydrate ', 'C18H32O16.5H2O', 'Bio-basic', 'Analitical', '25 g', '2,889.00', '1 ขวด', '20 g', 'opened (ตู้น้ำตาลเปิดใช้)', '', 'ปี 54/แปซิฟิค ไซเอ็นซ์ '),
('sugarR3', 'RR1', 'Raffinose', 'C18H32O16.5H2O', 'Acros', '', '25 g', '2,800.00', '1 ขวด', '1', 'stock (ตู้เก็บน้ำตาล)', '', 'ปี58/ IT IV15-081462 (สอบ)'),
('sugarR4', 'R1', 'L+(-)Rhamnose', 'C6H12O5.H2O', 'Fluka', ' -', '10 g', '6,537.70', '1 ขวด', 'หมด', 'หมด', '', 'BT 50-11680'),
('sugarR5', 'R1.1', 'L+(-)Rhamnose', 'C6H12O5.H2O', 'Difco', ' -', '25 g', '2,470.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ยูเนี่ยน ซายน์55/049796'),
('sugarR6', 'R1.2', 'L+(-)Rhamnose', '', 'Aldrich', ' -', '100 g', '2,400.00', '1 ขวด', '90 g', 'stock (ตู้เก็บน้ำตาล)', '', 'ปี58/ IT IV15-081462 (สอบ)'),
('sugarS0', 'S70', 'D-Sorbitol  ,powder', 'C2H2OH(CHOH)4', 'APS', 'Univar', '500 g', '545.00', '1 ขวด', '', 'opened (ตู้สารเปิดใช้)', '', 'ปี 51/ NT 562758'),
('sugarS1', 'S70.1', 'D-Sorbitol  ,powder', 'CH2OH(CHOH)4CH2OH', 'Ajax', '', '500 g', '600.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'ปี 55/ IV281/20465'),
('sugarS2', 'S83', ' Sucrose', '', 'JHD', 'AR', '500 g', '500.00', '3 ขวด', 'หมด', 'หมด', '', 'ปี 51/ศิริปัญญา 510000300'),
('sugarS3', 'S83.1', ' Sucrose', 'C12H22O11', 'Ajax', '', '500 g', '350.00', '1 ขวด', '', 'opened (ห้องวิจัย)', '', 'UNS034531(พยาบาล54)'),
('sugarS4', 'S83.2', ' Sucrose', 'C12H22O11', 'Ajax', '', '500 g', '350.00', '1 ขวด', '100 g', 'opened (ตู้เก็บน้ำตาล)', '', 'แพทย์ 54'),
('sugarS5', 'S83.3', ' Sucrose', 'C12H22O11', 'Carlo', '', '500 g', '350.00', '4 ขวด', '250 g+ 2', 'opened/ stock / หมด 1', '', 'ปี58/ IT IV15-081462 (สอบ)'),
('sugarT0', 'T22.1', 'D(+)-Trehalose', 'C12H22O11.2H2O', 'Merck', ' -', '25 g', '3,660.00', '1 ขวด', '5 g', 'opened (ตู้น้ำตาล)', '', 'ศิริปัญญาวิทย์แพทย์ 54'),
('sugarT1', 'T___', 'D(+)-Trehalose', 'C12H22O11.2H2O', 'Himedia', ' -', '25 g', '2,247.00', '1 ขวด', '', 'stock', '', 'ปี 59/ GT (ตกลง) SX5906002126'),
('sugarT2', 'T44', 'L-Tyrosine, 99+%', 'C9H11NO3', 'Acros', ' -', '100 g', '1,840.40', '5 ขวด', '20 g +3', 'opened / stock 3/ หมด 1', '', 'IM 236300'),
('sugarX0', 'X', 'Xanthine98%', ' -', 'Acros', 'Organic for lab use only', '25 g', '2,664.30', '20 ขวด', '20', 'stock (ตู้สารยังไม่เปิดใช้)', '', 'IM 236300'),
('sugarX1', 'X3', 'D(+)Xylose', 'C5H10O5', 'BDH', 'AnalaR', '100 g ', '1,444.50', '1 ขวด', '20 g', 'opened (ตู้น้ำตาลเปิดใช้)', '', 'BT 50-11336'),
('sugarX2', 'X4', 'D(+)Xylose', 'C5H10O5', 'Himedia', '', '25', '500.00', '1 ขวด', 'หมด', 'opened (ตู้น้ำตาลเปิดใช้)', '', 'ปี 55/IV281/20465'),
('sugarX3', 'X4.1', 'D(+)Xylose', 'C5H10O5', 'Acros', '', '100 g ', '1,400.00', '1 ขวด', '1', 'stock (ตู้น้ำตาล)', '', 'ปี58/ IT IV15-081462 (สอบ)');

-- --------------------------------------------------------

--
-- Table structure for table `chemicals_brand`
--

CREATE TABLE `chemicals_brand` (
  `id_brand` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf32 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chemicals_brand`
--

INSERT INTO `chemicals_brand` (`id_brand`, `name`) VALUES
(1, 'Biochemika'),
(2, 'For Laboratory use only'),
(3, 'AR'),
(4, 'HPLC');

-- --------------------------------------------------------

--
-- Table structure for table `chemicals_grade`
--

CREATE TABLE `chemicals_grade` (
  `id_grade` int(5) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chemicals_grade`
--

INSERT INTO `chemicals_grade` (`id_grade`, `name`) VALUES
(1, 'Fisher'),
(2, 'Labscan'),
(3, 'Merck'),
(4, 'Vivantis'),
(5, 'HPLC');

-- --------------------------------------------------------

--
-- Table structure for table `chemicals_storage`
--

CREATE TABLE `chemicals_storage` (
  `id_storage` int(5) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chemicals_storage`
--

INSERT INTO `chemicals_storage` (`id_storage`, `name`) VALUES
(1, 'opened (ตู้สารเคมี)'),
(2, 'opened (hood)'),
(3, 'ห้อง stock คณะ'),
(4, 'opened (ตู้เย็น 4 C ขาว)');

-- --------------------------------------------------------

--
-- Table structure for table `chemical_name`
--

CREATE TABLE `chemical_name` (
  `id_name_chemi` int(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `chemical_formula` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chemical_name`
--

INSERT INTO `chemical_name` (`id_name_chemi`, `name`, `chemical_formula`) VALUES
(1, 'L-arabinose', 'C5H10O5 '),
(2, 'Dulcitol', 'C6H14O6'),
(3, 'Celloibiose', '-'),
(4, 'Inositol', 'C6H12O6');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id_equipment` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name_eng` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name_th` varchar(100) CHARACTER SET utf8 NOT NULL,
  `brand` varchar(50) CHARACTER SET utf8 NOT NULL,
  `size` varchar(50) CHARACTER SET utf8 NOT NULL,
  `price/unit` varchar(50) CHARACTER SET utf8 NOT NULL,
  `amout` varchar(50) CHARACTER SET utf8 NOT NULL,
  `remaining(total)` varchar(50) CHARACTER SET utf8 NOT NULL,
  `storage` varchar(100) CHARACTER SET utf8 NOT NULL,
  `fiscal_year/no` varchar(100) CHARACTER SET utf8 NOT NULL,
  `comment` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id_equipment`, `name_eng`, `name_th`, `brand`, `size`, `price/unit`, `amout`, `remaining(total)`, `storage`, `fiscal_year/no`, `comment`) VALUES
('TypeA0', 'Air lock', 'แอร์ล็อค', ' -', ' -', ' -', ' -', '24', 'ห้อง stock ปฏิบัติ', '', ''),
('TypeA1', 'Alcohol burner', 'ตะเกียงแอลกอฮอล์', ' -', ' -', '138.00', '100 ชิ้น', '54 ชิ้น', 'การจุลชีววิทยาฯ', 'TC_S', ''),
('TypeA2', 'Alcohol burner', 'ตะเกียงแอลกอฮอล์', ' -', ' -', '60.00', '50 ชิ้น', '50 ชิ้น', '', '', ''),
('TypeA3', 'Alcohol burner', 'ตะเกียงแอลกอฮอล์', ' -', ' -', '53.50', '100 ชิ้น', '100 ชิ้น', '', 'ศิริปัญญา 520000325', ''),
('TypeA4', 'Alcohol burner (glass)', 'ตะเกียงแอลกอฮอล์แก้ว', ' -', ' -', '28.89', ' -', '99 ชิ้น', '', 'S-sci 48-240', ''),
('TypeA5', 'Alcohol meter', 'เครื่องวัดแอลกอฮอล์', ' -', '0-100%', '140.00', '1 ชิ้น', '1 ชิ้น', '', 'แกมมาโก้ 490926', ''),
('TypeA6', 'Alcohol meter', 'เครื่องวัดแอลกอฮอล์', ' -', '0-100%', '310.00', '1 ชิ้น', '1 ชิ้น', '', 'แกมมาโก้ 490926', ''),
('TypeA7', 'Anarobic jar', 'แอนแอโรบิกจาร์', ' -', ' -', '5,490.00', '4 ชิ้น', '4 ชิ้น', '', 'KPN 47/315', ''),
('TypeA8', 'Anarobic jar', 'แอนแอโรบิกจาร์', 'Merck', ' -', ' -', '1 ชิ้น', '1 ชิ้น', '', '', ''),
('TypeA9', 'Anarobic jar', 'แอนแอโรบิกจาร์', 'Merck', '', '', '2 ชิ้น', '2 ชิ้น', '', '', ''),
('TypeB0', 'Basket', 'ตะกร้า', ' -', '32x40x10 cm', '80.00', '40 ชิ้น', '19 ชิ้น', '', 'คลังครัวเรือนซัพพลาย ', ''),
('TypeB1', 'Basket', 'ตะกร้า', ' -', '11\" x 14\"', '50.00', '16 ชิ้น', '6 ชิ้น', '', 'ร้านเดียว 001/0002 ', ''),
('TypeB10', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'Pyrex', '50 ml', ' -', ' -', '4 ชิ้น', '', '', ''),
('TypeB11', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'OBEROI', '50 ml', '49.00', '80 ชิ้น', '80 ชิ้น', '', '', ''),
('TypeB12', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'Duran', '100 ml', '70.00', '30 ชิ้น', '10 ชิ้น', '', 'ศิริปัญญา 520000302', ''),
('TypeB13', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'Duran', '100 ml', '64.20', '40 ชิ้น', '10 ชิ้น', '', 'TC_S IV305/22844', ''),
('TypeB14', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'OBEROI', '100 ml', '58.00', '85 ชิ้น', '85 ชิ้น', '', '', ''),
('TypeB15', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'Duran', '250 ml', '69.55', '40 ชิ้น', '20 ชิ้น', '', 'TC_S IV305/22844', ''),
('TypeB16', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'Isolab', '250 ml', '64.00', '12 ชิ้น', '5 ชิ้น', '', 'BT-49-10931', ''),
('TypeB17', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'Pyrex', '250 ml', ' -', ' -', '7 ชิ้น', '', '', ''),
('TypeB18', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'OBEROI', '250 ml', '68.00', '100 ชิ้น', '100 ชิ้น', '', '', ''),
('TypeB19', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'Duran', '600 ml', '90.95', '10 ชิ้น', '4 ชิ้น', '', 'TC_S IV305/22844', ''),
('TypeB2', 'Basket', 'ตะกร้า', ' -', '11\" x 14\"', '62.40', '40 ชิ้น', '40 ชิ้น', '', 'TC_S IV319/24234', ''),
('TypeB20', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'Pyrex', '600 ml', '78.00', '12 ชิ้น', '5 ชิ้น', '', 'BT L56-05527', ''),
('TypeB21', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'TGI', '600 ml', '123.00', '25 ชิ้น', '25 ชิ้น', '', '', ''),
('TypeB22', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'Duran', '1,000 ml', '128.40', '10 ชิ้น', '5 ชิ้น', '', 'TC_S IV305/22844', ''),
('TypeB23', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'Pyrex', '1,000 ml', ' -', ' -', '2 ชิ้น', '', '', ''),
('TypeB24', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'Duran', '2,000 ml', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeB25', 'Beaker (Plastic)', 'บีกเกอร์พลาสติกไม่มีหูจับ', 'LP', '250 ml', '62.06', '5 ชิ้น', '5 ชิ้น', '', 'TC_S 215/13810', ''),
('TypeB26', 'Beaker (Plastic)', 'บีกเกอร์พลาสติกไม่มีหูจับ', 'Nikko', '300 ml', '110.00', ' -', '1 ชิ้น', '', 'S&M', ''),
('TypeB27', 'Beaker (Plastic)', 'บีกเกอร์พลาสติกมีหูจับ', 'Nikko', '300 ml', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeB28', 'Beaker (Plastic)', 'บีกเกอร์พลาสติกไม่มีหูจับ', 'Nikko', '500 ml', '150.00', ' -', '2 ชิ้น', '', '', ''),
('TypeB29', 'Beaker (Plastic)', 'บีกเกอร์พลาสติกมีหูจับ', 'Nikko', '500 ml', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeB3', 'Basket', 'ตะกร้า', ' -', '13\" x 17\"', '60.00', '50 ชิ้น', '0 ชิ้น', '', 'ยูเนี่ยน ซายน์ 56-061/36', ''),
('TypeB30', 'Beaker (Plastic)', 'บีกเกอร์พลาสติกไม่มีหูจับ', ' -', '1,000 ml', '90.95', ' -', '1 ชิ้น', '', 'S-sci 47-311', ''),
('TypeB31', 'Beaker (Plastic)', 'บีกเกอร์พลาสติกมีหูจับ', '', '1,000 ml', '128.40', '10 ชิ้น', '10 ชิ้น', '', 'TC_S IV319/24223', ''),
('TypeB32', 'Beaker (Plastic)', 'บีกเกอร์พลาสติกมีหูจับ', 'Nikko', '2,000 ml', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeB33', 'Beaker (Plastic)', 'บีกเกอร์พลาสติกมีหูจับ', ' -', '3,000 ml', ' -', ' -', '2 ชิ้น', '', '', ''),
('TypeB34', 'Beaker (Plastic)', 'บีกเกอร์พลาสติกมีหูจับ', 'Nikko', '3,000 ml', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeB35', 'Beaker (Plastic)', 'บีกเกอร์พลาสติกมีหูจับ', ' -', '3,000 ml', '330.00', '4 ชิ้น', '4 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070586', ''),
('TypeB36', 'Beaker (Plastic)', 'บีกเกอร์พลาสติกมีหูจับ', '', '3,000 ml', '363.80', '5 ชิ้น', '5 ชิ้น', '', 'TC_S IV319/24223', ''),
('TypeB37', 'Beaker (Plastic)', 'บีกเกอร์พลาสติกมีหูจับ', 'Nikko', '5,000 ml', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeB38', 'Beaker (Plastic)', 'บีกเกอร์พลาสติกมีหูจับ', '', '5,000 ml', '460.10', '3 ชิ้น', '3 ชิ้น', '', 'TC_S IV319/24223', ''),
('TypeB39', 'Beaker (Stainless)', 'บีกเกอร์สแตนเลส', ' -', '1,000 ml', ' -', ' -', ' 6 ชิ้น', '', '', ''),
('TypeB4', 'Basket', 'ตะกร้า', ' -', '13\" x 17\"', '45.00', '50 ชิ้น', '50 ชิ้น', '', 'คลังครัวเรือนซัพพลาย ', ''),
('TypeB40', 'Beaker (Stainless)', 'บีกเกอร์สแตนเลส', ' -', '1,000 ml', '350.00', '10 ชิ้น', '10 ชิ้น', '', '', ''),
('TypeB41', 'Beaker (Stainless)', 'บีกเกอร์สแตนเลส', ' -', '2,000 ml', ' -', ' -', '2 ชิ้น', '', 'ของเก่าก่อนปี 49', ''),
('TypeB42', 'Beaker (Stainless)', 'บีกเกอร์สแตนเลส', ' -', '2,000 ml', '481.50', '10 ชิ้น', '10 ชิ้น', '', 'TC_S 215/13890', ''),
('TypeB43', 'Beaker (Stainless)', 'บีกเกอร์สแตนเลส', ' -', '2,000 ml', '489.00', '4 ชิ้น', '4 ชิ้น', '', 'BT 49-10931', ''),
('TypeB44', 'Beaker (Stainless)', 'บีกเกอร์สแตนเลส', ' -', '2,000 ml', '402.00', '10 ชิ้น', '10 ชิน', '', '', ''),
('TypeB45', 'Bottle (Duran bottle amber)', 'ขวดดูแรน สีชา', 'Duran', '250 ml', '477.00', ' -', '12 ชิ้น', '', 'KPN 47/110', ''),
('TypeB46', 'Bottle (Duran bottle amber)', 'ขวดดูแรน สีชา', 'Duran', '500 ml', '520.00', ' -', '7 ชิ้น', '', 'KPN 47/110', ''),
('TypeB47', 'Bottle (Duran bottle amber)', 'ขวดดูแรน สีชา', '', '500 ml', '561.75', '20 ชิ้น', '20 ชิ้น', '', '', ''),
('TypeB48', 'Bottle (Duran bottle amber)', 'ขวดดูแรน สีชา', 'Duran', '2,000 ml', '1,030.00', '5 ชิ้น', '4 ชิ้น', '', 'BT 49-10931 (แตก 1)', ''),
('TypeB49', 'Bottle (Duran bottle)', 'ขวดดูแรน ใส', 'Duran', '50 ml', '91.00', '20 ชิ้น', '19 ชิ้น', '', 'BT 49-10931', ''),
('TypeB5', 'Basket', 'ตะกร้า', ' -', '13\" x 17\"', '55.00', '50 ชิ้น', '50 ชิ้น', '', 'ศิริปัญญา INV5700000324', ''),
('TypeB50', 'Bottle (Duran bottle)', 'ขวดดูแรน ใส', 'SEBC(Duran)', '100 ml', '80.25', '20 ชิ้น', '20 ชิ้น', '', 'ศิริปัญญา INV570000026', ''),
('TypeB51', 'Bottle (Duran bottle)', 'ขวดดูแรน ใส', 'SEBC(Duran)', '100 ml', '95.00', '20 ชิ้น', '20 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070586', ''),
('TypeB52', 'Bottle (Duran bottle)', 'ขวดดูแรน ใส', 'SIMAX', '100 ml', '74.90', '30 ชิ้น', '30 ชิ้น', '', '', ''),
('TypeB53', 'Bottle (Duran bottle)', 'ขวดดูแรน ใส', 'Duran', '250 ml', '98.44', '100 ชิ้น', '85 ชิ้น', '', 'ศิริปัญญา 520000324', ''),
('TypeB54', 'Bottle (Duran bottle)', 'ขวดดูแรน ใส', 'Duran', '250 ml', '93.00', '50 ชิ้น', '50 ชิ้น', '', 'ศิริปัญญา  INV560000243', ''),
('TypeB55', 'Bottle (Duran bottle)', 'ขวดดูแรน ใส', 'TGI', '250 ml', '120.00', '50 ชิ้น', '22 ชิ้น', '', 'ศิริปัญญา 510000303', ''),
('TypeB56', 'Bottle (Duran bottle)', 'ขวดดูแรน ใส', 'TGI', '250 ml', '92.00', '50 ชิ้น', '50 ชิ้น', '', '', ''),
('TypeB57', 'Bottle (Duran bottle)', 'ขวดดูแรน ใส', 'Duran', '500 ml', '119.84', '100 ชิ้น', '58 ชิ้น', '', 'ศิริปัญญา 520000324', ''),
('TypeB58', 'Bottle (Duran bottle)', 'ขวดดูแรน ใส', 'Duran', '500 ml', '101.65', '60 ชิ้น', '60 ชิ้น', '', 'TC_S IV292/21544', ''),
('TypeB59', 'Bottle (Duran bottle)', 'ขวดดูแรน ใส', 'Duran', '500 ml', '134.00', '20 ชิ้น', '20 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070586', ''),
('TypeB6', 'Basket', 'ตะกร้า', ' -', '13\" x 17\"', '74.90', '50 ชิ้น', '50 ชิ้น', '', 'TC_S IV319/24234', ''),
('TypeB60', 'Bottle (Duran bottle)', 'ขวดดูแรน ใส', 'TGI', '500 ml', '140.00', '50 ชิ้น', '12 ชิ้น', '', 'ศิริปัญญา 510000304', ''),
('TypeB61', 'Bottle (Duran bottle)', 'ขวดดูแรน ใส', 'Duran', '500 ml', '109.00', '50 ชิ้น', '50 ชิ้น', '', '', ''),
('TypeB62', 'Bottle (Duran bottle)', 'ขวดดูแรน ใส', 'Duran', '1,000 ml', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeB63', 'Bottle (Duran bottle)', 'ขวดดูแรน ใส', 'Duran', '1,000 ml', '175.00', '20 ชิ้น', '20 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070586', ''),
('TypeB64', 'Bottle (Duran bottle)', 'ขวดดูแรน ใส', 'Duran', '1,000 ml', '154.08', '10 ชิ้น', '10 ชิ้น', '', 'ทีซี สถาพร IV319/24227', ''),
('TypeB65', 'Bottle (Reagent bottle amber)', 'ขวดรีเอเจนท์สีชา ', ' -', '125 ml', ' -', ' -', '5 ชิ้น', '', '', ''),
('TypeB66', 'Bottle (Reagent bottle amber)', 'ขวดรีเอเจนท์สีชา ', ' -', '250 ml', ' -', ' -', '3 ชิ้น', '', '', ''),
('TypeB67', 'Bottle (Reagent bottle amber)', 'ขวดรีเอเจนท์สีชา ', ' -', '250 ml', '36.00', '10 ชิ้น', '10 ชิ้น', '', '', ''),
('TypeB68', 'Bottle (Reagent bottle amber)', 'ขวดรีเอเจนท์สีชา ', ' -', '500 ml', ' -', ' -', '6 ชิ้น', '', '', ''),
('TypeB69', 'Bottle (Reagent bottle)', 'ขวดรีเอเจนท์สีใส', ' -', '500 ml', ' -', ' -', '7 ชิ้น', '', '', ''),
('TypeB7', 'Basket', 'ตะกร้า', ' -', '14\" x 18\"', '50.00', '6 ชิ้น', ' 6 ชิ้น', '', 'ร้านเดียว 001/0003', ''),
('TypeB70', 'Bottle (Reagent bottle)', 'ขวดรีเอเจนท์สีใส', ' -', '500 ml', '49.00', '20 ชิ้น', '20 ชิ้น', '', '', ''),
('TypeB71', 'Bottle (Reagent bottle amber)', 'ขวดรีเอเจนท์สีชา ', ' -', '1,000 ml', ' -', ' -', '10 ชิ้น', '', '', ''),
('TypeB72', 'Bottle with cap & dropper', 'ขวดหยดสีชาพร้อมฝาแบบหลอดหยด', ' -', '60 ml', '12.84', '200 ชิ้น', '22 ชิ้น', '', 'TC_S IV305/22844', ''),
('TypeB73', 'Bottle ', 'ขวดหยดสารสีชา', ' -', '60 ml', '12.00', '200 ชิ้น', '200 ชิ้น', '', '', ''),
('TypeB74', 'Bottle ', 'ขวดฟิวเตอร์ริ่ง', '', '250 ml', '710.00', '2 ชิ้น', '2 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070589', ''),
('TypeB75', 'Bottle ', 'ขวดฟิวเตอร์ริ่ง', '', '500 ml', '920.00', '3 ชิ้น', '3 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070589', ''),
('TypeB76', 'Bottle(sample cell bottle)', 'ขวดเก็บเซลล์ตัวอย่าง', '', '25*95 mm', '3,200.00', '2 ชุด', '2 ชุด', '', 'AT science', ''),
('TypeB77', 'Bottle ', 'ขวดเพาะเลี้ยงเนื้อเยื่อ', '  -', '4 ออนซ์', '6.00', '100 ขวด', '100 ขวด', '', '', ''),
('TypeB78', 'Bottle ', 'ขวดเพาะเลี้ยงเนื้อเยื่อ', '  -', '8 ออนซ์', '8.00', '140 ขวด', '140 ขวด', '', '', ''),
('TypeB79', 'Box ', 'กล่องพลาสติก', '', '5*8\"', '53.50', '20 กล่อง', '20 กล่อง', '', 'TC_S IV319/24234', ''),
('TypeB8', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'Duran', '25 ml', '68.48', '20 ชิ้น', '5 ชิ้น', '', 'ศิริปัญญา 520000324', ''),
('TypeB80', 'Box ', 'กล่องพลาสติก', ' -', '13*17\"', '240.00', '20 กล่อง', '20 กล่อง', '', 'ศิริปัญญา INV570000324', ''),
('TypeB81', 'Box ', 'กล่องพลาสติก', ' -', '15*21\"', '240.00', '20 กล่อง', '20 กล่อง', '', 'ศิริปัญญา INV570000324', ''),
('TypeB82', 'Box ', 'กล่องพลาสติก', ' -', 'เบอร์ 605', '96.30', '10 กล่อง', '10 กล่อง', '', '', ''),
('TypeB83', 'Box ', 'กล่องพลาสติก', ' -', 'เบอร์ 645', '85.60', '10 กล่อง', '10 กล่อง', '', '', ''),
('TypeB84', 'Box ', 'กล่องพลาสติก', ' -', 'เบอร์ 831', '107.00', '10 กล่อง', '10 กล่อง', '', '', ''),
('TypeB85', 'Box ', 'กล่องพลาสติก', ' -', 'เบอร์ 633', '37.45', '10 กล่อง', '10 กล่อง', '', '', ''),
('TypeB86', 'Brush', 'แปรงล้างขวด', ' -', '3.5 cm', '28.00', '20 ชิ้น', '10 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070587', ''),
('TypeB87', 'Brush', 'แปรงล้างขวด', ' -', '5 cm', '42.00', '20 ชิ้น', '10 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070587', ''),
('TypeB88', 'Brush', 'แปรงล้างขวด', ' -', '6.4 cm', '52.00', '20 ชิ้น', '10 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070587', ''),
('TypeB89', 'Burette', 'บิวเรต', 'Wertlab', '50 ml', '604.55', '10 ชิ้น', '10 ชิ้น', '', 'ศิริปัญญา 520000324', ''),
('TypeB9', 'Beaker (glass)', 'บีกเกอร์แก้ว', 'Duran', '50 ml', '69.55', '40 ชิ้น', '21 ชิ้น', '', 'TC_S IV305/22844', ''),
('TypeB90', 'Burette', 'บิวเรต', ' -', '50 ml', '710.00', '10 ชิ้น', '10 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070588', ''),
('TypeB91', 'Burette clamp', 'แคลมพ์หนีบบิวเรต', ' -', ' -', '100.58', '10 ชิ้น', '10 ชิ้น', '', 'ศิริปัญญา 520000324', ''),
('TypeB92', 'Burette clamp', 'ที่จับบิวเรตโลหะ', ' -', ' -', '180.00', '10 ชิ้น', '10 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070588', ''),
('TypeC0', 'Cap', 'ฝาหลอดทดลอง(สำหรับหลอดทดลองขนาด 13*100mm)', '', '', '2.00', '800 ชิ้น', '500 ชิ้น', '', 'ศิริปัญญา 510000308', ''),
('TypeC1', 'Cap', 'ฝาหลอดทดลอง(สำหรับหลอดทดลองขนาด 13*100mm)', '', '', '1.60', '1,000 ชิ้น', '1,000 ชิ้น', '', 'TC_S IV305/22844', ''),
('TypeC10', 'CentrifugeTube', 'หลอดปั่นตะกอน +ฝา', ' -', '15 ml', '9.40', '50 ชิ้น', '50 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-066461', ''),
('TypeC11', 'CentrifugeTube', 'หลอดปั่นตะกอน +ฝา', ' -', '15 ml', '7.49', '1000 ชิ้น', '1000 ชิ้น', '', 'TC_S IV319/24223', ''),
('TypeC12', 'CentrifugeTube', 'หลอดปั่นตะกอน +ฝา', 'E&K', '50 ml', '12.00', '3,000 ชิ้น', '2,000 ชิ้น', '', '', ''),
('TypeC13', 'Cloth', 'ผ้าขนหนู', ' -  ', ' -', '42.80', '50 ชิ้น', '10 ชิ้น', '', 'TC_S IV319/24234', ''),
('TypeC14', 'Cock borer', 'ที่เจาะจุกค๊อก', ' -', ' -', '181.90', '5 ชุด', '5 ชุด', '', '', ''),
('TypeC15', 'Cock borer', 'ที่เจาะจุกค๊อก', ' -', ' -', '600.00', '10 ชุด', '10 ชุด', '', '', ''),
('TypeC16', 'Conductivity pen', 'ปากกาวัดค่าการนำไฟฟ้า', 'Index', ' - ', '1,500.00', '1 ชิ้น', '1 ชิ้น', '', '', ''),
('TypeC17', 'Coupling jar', 'คลูปปิ้ง จาร์', ' -', ' -', '305.00', '30 ชิ้น', '7 ชิ้น', '', 'S-Sci 49-307', ''),
('TypeC18', 'Coupling jar with cover', 'คลูปปิ้ง จาร์', ' -', ' -', '385.20', '50 ชิ้น', '22 ชิ้น', '', 'ศิริปัญญา 520000324', ''),
('TypeC19', 'Coupling jar (standning jar)', 'คลูปปิ้ง จาร์(แสตนนิ้ง จาร์)', ' -', ' -', '345.00', '20 ชิ้น', '20 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070588', ''),
('TypeC2', 'Cap', 'ฝาหลอดทดลอง(สำหรับหลอดทดลองขนาด 13*100mm)', '', '', '1.25', '2,000 ชิ้น', '2,000 ชิ้น', '', '', ''),
('TypeC20', 'Cotton box (stainless)', 'กระปุกใส่สำลี สเตนเลส', ' -', '7.5x5.7 cm', '107.00', '20 ชิ้น', '20 ชิ้น', '', '', ''),
('TypeC21', 'Cotton box (stainless)', 'กระปุกใส่สำลีสแตนเลสมีฝาปิด', '', '', '', '2 ชิ้น', '2 ชิ้น', '', '', ''),
('TypeC22', 'Cryo Vial ', 'หลอดไคโอ ไวแอล', ' -', '2 ml', '6.00', '100 ชิ้น', '100 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-066461', ''),
('TypeC23', 'Cryo Vial ', 'หลอดไคโอ ไวแอล', ' -', '', '4.20', '200 ชิ้น', '200 ชิ้น', '', '', ''),
('TypeC24', 'Cryo Vial box ', 'กล่องใส่หลอดไคโอ ไวแอล', ' -', ' -', '245.00', '1 ชิ้น', '1 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-066461', ''),
('TypeC25', 'Cryo Vial box ', 'กล่องใส่หลอดไคโอ ไวแอล', ' -', '10*10 ช่อง', '160.00', '10 ชิ้น', '10 ชิ้น', '', '', ''),
('TypeC26', 'Cylinder (glass)', 'กระบอกตวง แก้ว', 'Duran', '5 ml ', ' -', ' -', '2 ชิ้น', '', '', ''),
('TypeC27', 'Cylinder (glass)', 'กระบอกตวง แก้ว', 'GW', '5 ml ', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeC28', 'Cylinder (glass)', 'กระบอกตวง แก้ว', 'Witeg', '5 ml ', '170.00', ' -', '1 ชิ้น', '', 'S&M DB 0005-44', ''),
('TypeC29', 'Cylinder (glass)', 'กระบอกตวง แก้ว', 'DIN', '10 ml ', ' -', ' -', '24 ชิ้น', '', '', ''),
('TypeC3', 'Cap', 'ฝาหลอดทดลอง(สำหรับหลอดทดลองขนาด 16*150mm)', '', '', '2.00', '1,500 ชิ้น', '1,000 ชิ้น', '', 'ศิริปัญญา 510000308', ''),
('TypeC30', 'Cylinder (glass)', 'กระบอกตวง แก้ว', 'Duran', '25 ml ', '135.00', ' -', '1 ชิ้น', '', 'OV 009/04443 (แตก 1)', ''),
('TypeC31', 'Cylinder (glass)', 'กระบอกตวง แก้ว', 'Isolab', '50 ml', '188.32', '10 ชิ้น', '5 ชิ้น', '', 'BT 52-09868', ''),
('TypeC32', 'Cylinder (glass)', 'กระบอกตวง แก้ว', 'Favorit', '50 ml', '176.00', '20 ชิ้น', '20 ชิ้น', '', '', ''),
('TypeC33', 'Cylinder (glass)', 'กระบอกตวง แก้ว', 'Glassco', '100 ml', '', '', '4 ชิ้น', '', '', ''),
('TypeC34', 'Cylinder (glass)', 'กระบอกตวง แก้ว', 'Witeg', '100 ml', ' -', ' -', '4 ชิ้น', '', '', ''),
('TypeC35', 'Cylinder (glass)', 'กระบอกตวง แก้ว', 'Isolab', '100 ml', '212.93', '10 ชิ้น', '4 ชิ้น', '', 'BT 52-09868', ''),
('TypeC36', 'Cylinder (glass)', 'กระบอกตวง แก้ว', 'Duran', '100 ml', '197.00', '40 ชิ้น', '40 ชิ้น', '', '', ''),
('TypeC37', 'Cylinder (glass)', 'กระบอกตวง แก้ว', 'Duran', '250 ml', '306.00', ' -', '7 ชิ้น', '', 'NT 15/0742', ''),
('TypeC38', 'Cylinder (glass)', 'กระบอกตวง แก้ว', 'MC', '250 ml', ' -', ' -', '47 ชิ้น', '', '', ''),
('TypeC39', 'Cylinder (glass)', 'กระบอกตวง แก้ว', 'Duran', '500 ml', '495.00', ' -', '10 ชิ้น', '', 'NT 15/0742', ''),
('TypeC4', 'Cap', 'ฝาหลอดทดลอง(สำหรับหลอดทดลองขนาด 16*150mm)', '', '', '1.40', '1,600 ชิ้น', '1,600 ชิ้น', '', 'TC_S ตกลงราคา 52', ''),
('TypeC40', 'Cylinder (glass)', 'กระบอกตวง แก้ว', 'Witeg', '500 ml', '600.00', ' -', '1 ชิ้น', '', 'S&M DB 0005-44', ''),
('TypeC41', 'Cylinder (glass)', 'กระบอกตวง แก้ว', 'MC', '1,000 ml', ' -', ' -', '3 ชิ้น', '', '', ''),
('TypeC42', 'Cylinder (plastic)', 'กระบอกตวง พลาสติก', ' -', '10 ml ', ' -', ' -', '2 ชิ้น', '', '', ''),
('TypeC43', 'Cylinder (plastic)', 'กระบอกตวง พลาสติก', ' -', '50 ml', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeC44', 'Cylinder (plastic)', 'กระบอกตวง พลาสติก', ' -', '100 ml', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeC45', 'Cylinder (plastic)', 'กระบอกตวง พลาสติก', ' -', '250 ml', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeC46', 'Cylinder (plastic)', 'กระบอกตวง พลาสติก', 'Nikko', '250 ml', '390.00', ' -', '1 ชิ้น', '', 'S&M', ''),
('TypeC47', 'Cylinder (plastic)', 'กระบอกตวง พลาสติก', ' -', '1,000 ml', '556.40', '5 ชิ้น', '5 ชิ้น', '', 'S-Sci 50-365', ''),
('TypeC5', 'Cap', 'ฝาหลอดทดลอง(สำหรับหลอดทดลองขนาด 16*150mm)', '', '', '2.00', '1,000 ชิ้น', '1,000 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070587', ''),
('TypeC6', 'Cap', 'ฝาหลอดทดลอง(สำหรับหลอดทดลองขนาด 20*150mm)', '', '', '3.48', '500 ชิ้น', '300 ชิ้น', '', 'NCG 5008-0029', ''),
('TypeC7', 'Cap', 'ฝาหลอดทดลอง(สำหรับหลอดทดลองขนาด 20*150mm)', '', '', '3.25', '200 ชิ้น', '200 ชิ้น', '', '', ''),
('TypeC8', 'Cap', 'ฝาเกลียวปิดขวดสีชา พร้อมหลอดหยด', '', ' -', '9.00', '200 ชิ้น', '200 ชิ้น', '', '', ''),
('TypeC9', 'CentrifugeTube', 'หลอดปั่นตะกอน +ฝา', ' -', '15 ml', '3.42', '200 ชิ้น', '0', '', 'BT L56-05527', ''),
('TypeD0', 'Dropper', 'หลอดหยดพร้อมจุกยาง  ', ' -', ' -', ' -', ' -', '0', '', '', ''),
('TypeD1', 'Derham tube', 'หลอดดักก็าซ', ' -', '6*50 mm', '4.21', '2,000 ชิ้น', '1,289 ชิ้น', '', 'TC_S IV305/22844', ''),
('TypeE0', 'Erlenmeyer Flask', 'ขวดรูปชมพู่', 'Duran', '100 ml', ' -', ' -', '4 ชิ้น', '', '', ''),
('TypeE1', 'Erlenmeyer Flask', 'ขวดรูปชมพู่', 'Pyrex', '125 ml', ' -', ' -', '21 ชิ้น', '', '', ''),
('TypeE10', 'Erlenmeyer Flask', 'ขวดรูปชมพู่', 'Bomex', '1,000 ml', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeE11', 'Erlenmeyer Flask', 'ขวดรูปชมพู่', 'Duran', '1,000 ml', '133.75', '30 ชิ้น', '16 ชิ้น', '', 'TC_S 215/13890 แตก 3', ''),
('TypeE12', 'Erlenmeyer Flask', 'ขวดรูปชมพู่', 'Duran', '5,000 ml', '1,080.00', ' -', '2 ชิ้น', '', 'OV 012/05927', ''),
('TypeE13', 'Eyeglass', 'ครอบตานิรภัย', '3 M', ' -', '92.00', '6 ชิ้น', '6 ชิ้น', '', 'เอคเซฟคิวทีฟ เทรดดิ้ง 188-4907', ''),
('TypeE14', 'Eyeglass', 'แว่นตานิรภัย', '3 M', ' -', '285.00', '3 ชิ้น', '3 ชิ้น', '', 'เอคเซฟคิวทีฟ เทรดดิ้ง 188-4907', ''),
('TypeE2', 'Erlenmeyer Flask', 'ขวดรูปชมพู่', 'OBEROI', '125 ml', '66.00', '50 ชิ้น', '50 ชิ้น', '', '', ''),
('TypeE3', 'Erlenmeyer Flask', 'ขวดรูปชมพู่', 'Bomex', '250 ml', ' -', ' -', '6 ชิ้น', '', '', ''),
('TypeE4', 'Erlenmeyer Flask', 'ขวดรูปชมพู่', 'Duran', '250 ml', '90.00', '800 ชิ้น', '350 ชิ้น', '', 'ศิริปัญญา 510000302', ''),
('TypeE5', 'Erlenmeyer Flask', 'ขวดรูปชมพู่', 'Pyrex', '250 ml', ' -', ' -', '15 ชิ้น', '', '', ''),
('TypeE6', 'Erlenmeyer Flask', 'ขวดรูปชมพู่', 'Bomex', '500 ml', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeE7', 'Erlenmeyer Flask', 'ขวดรูปชมพู่', 'Duran', '500 ml', '101.65', '30 ชิ้น', '16 ชิ้น', '', 'TC_S 215/13890', ''),
('TypeE8', 'Erlenmeyer Flask', 'ขวดรูปชมพู่', 'Pyrex', '500 ml', '120.00', '20 ชิ้น', '20 ชิ้น', '', 'TC_S IV281/20465', ''),
('TypeE9', 'Erlenmeyer Flask', 'ขวดรูปชมพู่', 'Pyrex', '500 ml', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeF0', 'Foggy', 'กระบอกฉีดน้ำ', ' -', ' -', '85.00', '40 ชิ้น', '40 ชิ้น', '', 'ยูเนี่ยน ซายน์ 56-061/37', ''),
('TypeF1', 'Forcep', 'ปากคีบ', 'Mira', '5 นิ้ว', '49.00', ' -', '10 ชิ้น', '', 'S-Sci 49-307', ''),
('TypeF10', 'Funel(buchner funel)', 'กรวยกรองบุชเชอเนอร์', ' -', '11 cm', '410.00', '3 ชิ้น', '3 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070589', ''),
('TypeF11', 'Seperating funnel', 'กรวยแยก', 'Berlin', '125 ml', '280.00', '20 ชิ้น', '20 ชิ้น', '', '', ''),
('TypeF12', 'Seperating funnel', 'กรวยแยก', 'Tjlassco', '250 ml', ' -', ' -', '4 ชิ้น', '', '', ''),
('TypeF13', 'Seperating funnel', 'กรวยแยก', 'Berlin', '250 ml', '350.00', '10 ชิ้น', '10 ชิ้น', '', '', ''),
('TypeF2', 'Forcep', 'ปากคีบ', 'Mira', '6 นิ้ว', '65.00', '40 ชิ้น', '40 ชิ้น', '', '', ''),
('TypeF3', 'Forcep', 'ปากคีบ', 'Mira', '7 นิ้ว', '96.30', '50 ชิ้น', '50 ชิ้น', '', 'TC_S 243/16668', ''),
('TypeF4', 'Forcep', 'ปากคีบ', 'Mira', '7 นิ้ว', '90.00', '20 ชิ้น', '20 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070588', ''),
('TypeF5', 'Funel', 'กรวยกรอง', ' -', '75 mm', '30.00', '10 ชิ้น', '10 ชิ้น', '', 'ศิริปัญญา INV540000346', ''),
('TypeF6', 'Funel', 'กรวยกรอง', ' -', '75 mm', '38.00', '20 ชิ้น', '20 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070588', ''),
('TypeF7', 'Funel', 'กรวยกรอง', ' -', '120 mm', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeF8', 'Funel(buchner funel)', 'กรวยกรองบุชเชอเนอร์', ' -', '5 cm', '110.00', '2 ชิ้น', '2 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070589', ''),
('TypeF9', 'Funel(buchner funel)', 'กรวยกรองบุชเชอเนอร์', ' -', '5 ml', '105.00', '5 ชิ้น', '5 ชิ้น', '', '', ''),
('TypeG0', 'Glove', 'ถุงมือยางสีส้ม', ' -', ' Size S', '26.75', '30 คู่', '30 คู่', '', 'TC_S IV319/24234', ''),
('TypeG1', 'Glove', 'ถุงมือยางสีส้ม', 'KS', ' Size M', '24.17', '240 คู่', '100 คู่', '', 'ศิริปัญญา 510000307', ''),
('TypeG2', 'Glove', 'ถุงมือจับของร้อน', ' -', ' -', '374.50', '10 คู่', '5 คู่', '', '', ''),
('TypeG3', 'Glove', 'ถุงมือกันร้อนอย่างหนา', ' -', '', '214.00', '15 คู่', '15 คู่', '', 'TC_S IV319/24234', ''),
('TypeG4', 'Glove', 'ถุงมือไนไตรท์', ' -', ' -', ' -', ' -', '10 คู่', '', '', ''),
('TypeH0', 'Haemacytometer', 'สไลด์นับเม็ดเลือด', 'HBG', ' -', '1,260.00', '20 ชุด', '15 ชุด', '', 'S-Sci 49-307 ', ''),
('TypeH1', 'Haemacytometer', 'สไลด์นับเม็ดเลือด', 'HBG', ' -', '2,000.00', '10 ชิ้น', '10 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070588', ''),
('TypeH2', 'Haemacytometer', 'สไลด์นับเม็ดเลือด', 'HBG', '', '2,000.00', '25 ชิ้น', '25 ชิ้น', '', '', ''),
('TypeH3', 'Hand held tally counter', 'เครื่องนับจำนวนไม่มีฐาน', ' Diamond', ' -', '180.00', '10 ชิ้น', '10 ชิ้น', '', '', ''),
('TypeL0', 'Loop', 'ห่วงถ่ายเชื้อ', ' -', '0.5 mm', '12.84', '10 ชิ้น', '0 ชิ้น', '', 'TC_S 215/13890', ''),
('TypeL1', 'Loop', 'ห่วงถ่ายเชื้อ', ' -', '0.5 mm', '12.84', '100 ชิ้น', '100 ชิ้น', '', 'TC_S IV292/21544', ''),
('TypeL2', 'Loop', 'ห่วงถ่ายเชื้อ', ' -', '0.5 mm', '16.05', '100 ชิ้น', '100 ชิ้น', '', 'TC_S IV305/22844', ''),
('TypeL3', 'Loop', 'ห่วงถ่ายเชื้อ', ' -', '12 นิ้ว', '16.00', '100 ชิ้น', '100 ชิ้น', '', '', ''),
('TypeM0', 'Magnetic bar', 'แท่งแม่เหล็กคนสาร', ' - ', '1.5\"', '103.00', '45 ชิ้น', '20 ชิ้น', '', 'BT 49-10931', ''),
('TypeM1', 'Mask', 'หน้ากากกันฝุ่นละอองและไอกรด', '3M', ' -', '123.00', '1 ชิ้น', '1 ชิ้น', '', 'เอคเสคคิวทีฟ 188-4907', ''),
('TypeM2', 'Microcentrifuge tube', 'หลอดไมโครเซนตริฟิวส์', ' -', '1.5 ml', '0.65', '2,000 ชิ้น', '2,000 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-066461', ''),
('TypeM3', 'Microcentrifuge tube', 'หลอดไมโครเซนตริฟิวส์', ' - ', '1.5 ml ', '0.43', '10,000 ชิ้น', '10,000 ชิ้น', '', 'TC_S IV319/24223', ''),
('TypeM4', 'Micropipette', 'ไมโครปิเปต', 'Biohit', ' 2 - 20 µl', ' -', ' -', '2 ชิ้น', '', '', ''),
('TypeM5', 'Micropipette', 'ไมโครปิเปต', 'Biohit', ' 10 - 100 µl', ' -', ' -', '2 ชิ้น', '', '', ''),
('TypeM6', 'Micropipette', 'ไมโครปิเปต', 'Biohit', '1 - 5 ml', ' -', ' -', '3 ชิ้น', '', '', ''),
('TypeM7', 'Mortar and pestle', 'โกร่งบดสาร', ' -', ' -', ' -', ' -', '34 ชุด', '', '', ''),
('TypeN0', 'Needle ', 'เข็มเขี่ยเชื้อ', ' -', ' -', ' -', ' -', '50 ชิ้น', '', '', ''),
('TypeN1', 'Needle ', 'เข็มเขี่ยเชื้อสั้น', ' -', ' -', ' -', ' -', '10 ชิ้น', '', '', ''),
('TypeN2', 'Needle ', 'เข็มเขี่ยเชื้อ', ' -', ' -', '16.05', '100  ชิ้น', '100  ชิ้น', '', 'TC_S IV305/22844', ''),
('TypeO0', 'Ocular micrometer', 'ออคคูล่าร์ไมโครมิเตอร์', 'Olympus', ' -', ' -', ' -', '54 ชิ้น', '', '', ''),
('TypeP0', 'Pasture pipette', 'พาสเจอร์ปิเปต', ' -', '6\"', ' -', ' -', '0 ชิ้น', '', '', ''),
('TypeP1', 'Pasture pipette', 'พาสเจอร์ปิเปต', ' -', '150 mm', '340.00', '3 กล่อง', '3 กล่อง', '', '', ''),
('TypeP10', 'Pipette', 'ปิเปต', 'HBG', '1 ml', '25.00', '400 ชิ้น', '400 ชิ้น', '', 'ยูเนี่ยน ซายน์ 56-057459', ''),
('TypeP11', 'Pipette', 'ปิเปต', 'HBG', '1 ml', '26.75', '100 ชิ้น', '100 ชิ้น', '', 'TC_S ', ''),
('TypeP12', 'Pipette', 'ปิเปต', 'Isolab', '1 ml', '20.00', '50 ชิ้น', '30 ชิ้น', '', 'BT 49-10931', ''),
('TypeP13', 'Pipette', 'ปิเปต', 'Berlin', '1 ml', '20.50', '400 ชิ้น', '400 ชิ้น', '', '', ''),
('TypeP14', 'Pipette', 'ปิเปต', 'HBG', '2 ml', ' -', ' - ', '15 ชิ้น', '', '', ''),
('TypeP15', 'Pipette', 'ปิเปต', 'HBG', '5 ml', ' -', ' - ', '76 ชิ้น', '', '', ''),
('TypeP16', 'Pipette', 'ปิเปต', 'HBG', '10 ml', '26.00', '50 ชิ้น', '30 ชิ้น', '', 'TC_S 234/15745', ''),
('TypeP17', 'Pipette', 'ปิเปต', 'HBG', '10 ml', '27.00', '100 ชิ้น', '100 ชิ้น', '', 'TC_S ', ''),
('TypeP18', 'Pipette', 'ปิเปต', 'HBG', '10 ml', '29.55', '100 ชิ้น', '100 ชิ้น', '', 'TC_S IV270/19356       ', ''),
('TypeP19', 'Pipette', 'ปิเปต', 'HBG', '10 ml', '30.00', '200 ชิ้น', '200 ชิ้น', '', 'ยูเนี่ยน ซายน์ 56-057459', ''),
('TypeP2', 'Pipette can', 'กระบอกใส่ปิเปต', ' -', ' -', ' -', ' -', '7 ชิ้น', '', '', ''),
('TypeP20', 'Pipette', 'ปิเปต', 'Isolab', '10 ml', '28.00', '50 ชิ้น', '25 ชิ้น', '', 'BT 49-10931', ''),
('TypeP21', 'Pipette', 'ปิเปต', 'HBG', '25 ml', ' -', ' - ', ' 12 ชิ้น', '', '', ''),
('TypeP22', 'Pipette', 'ปิเปต', 'Witeg', '25 ml', ' -', ' - ', ' 17 ชิ้น', '', 'S&M DB0005-44', ''),
('TypeP23', 'Pipette tip wit box', 'ปิเปต ทิป พร้อมกล่อง', 'Diamond', '5 ml', ' -', '1 กล่อง', '1 กล่อง', '', '', ''),
('TypeP24', 'Pipette pump', 'ปิเปตปั้ม', '', '2 ml', '270.00', '15 ชิ้น', '10 ชิ้น', '', 'ศิริปัญญา INV550000630', ''),
('TypeP25', 'Pipette pump', 'ปิเปตปั้ม', 'Boeco', '2 ml', '321.00', '10 ชิ้น', '10 ชิ้น', '', 'TC_S IV303/22625', ''),
('TypeP26', 'Pipette pump', 'ปิเปตปั้ม', 'Isolab', '2 ml', '130.00', '20 ชิ้น', '20 ชิ้น', '', 'ศิริปัญญา', ''),
('TypeP27', 'Pipette pump', 'ปิเปตปั้ม', 'Isolab', '2 ml', '299.60', '20 ชิ้น', '20 ชิ้น', '', '', ''),
('TypeP28', 'Pipette pump', 'ปิเปตปั้ม', '', '10 ml', '270.00', '15 ชิ้น', '15 ชิ้น', '', 'ศิริปัญญา INV550000630', ''),
('TypeP29', 'Pipette pump', 'ปิเปตปั้ม', '', '10 ml', '270.00', '35 ชิ้น', '35 ชิ้น', '', 'L56-05527', ''),
('TypeP3', 'Pipette can', 'กระบอกใส่ปิเปต', ' -', ' -', '169.00', ' -', '71 ชิ้น', '', 'KPN 48/487', ''),
('TypeP30', 'Pipette pump', 'ปิเปตปั้ม', 'Boeco', '10 ml', '321.00', '10 ชิ้น', '10 ชิ้น', '', 'TC_S IV303/22625', ''),
('TypeP31', 'Pipette pump', 'ปิเปตปั้ม', 'Isolab', '10 ml', '150.00', '10 ชิ้น', '10 ชิ้น', '', 'ศิริปัญญา', ''),
('TypeP32', 'Pipette pump', 'ปิเปตปั้ม', ' -', '10 ml', '321.00', '20 ชิ้น', '20 ชิ้น', '', '', ''),
('TypeP33', 'Pipette pump', 'ปิเปตปั้ม', 'Glasfirm', '25 ml', ' -', ' - ', '2 ชิ้น', '', '', ''),
('TypeP34', 'Pipette pump', 'ปิเปตปั้ม', 'KLT', '25 ml', ' -', ' - ', '5 ชิ้น', '', '', ''),
('TypeP35', 'Plate', 'จานเพาะเชื้อ', 'PetriQ', '15x100 mm', '27.00', '2,000 คู่', '2,000 คู่', '', 'ศิริปัญญา  INV560000243', ''),
('TypeP36', 'Plate', 'จานเพาะเชื้อ', 'PetriQ', '15x100 mm', '27.00', '800 คู่', '700 คู่', '', 'TC_S IV305/22844', ''),
('TypeP37', 'Plate', 'จานเพาะเชื้อ', 'PetriQ', '15x100 mm', '25.15', '1,440 คู่', '1,440 คู่', '', '', ''),
('TypeP38', 'Plate can', 'กระบอกใส่จานเพาะเชื้อ', ' -', ' -', ' -', ' -', '17 ชิ้น', '', '', ''),
('TypeP39', 'Plate can', 'กระบอกใส่จานเพาะเชื้อ', ' -', ' -', '98.00', '40 ชิ้น', '40 ชิ้น', '', 'Hiat 500136', ''),
('TypeP4', 'Pipette can', 'กระบอกใส่ปิเปต', ' -', ' -', '224.70', '30 ชิ้น', '30 ชิ้น', '', 'Hiat 500136', ''),
('TypeP40', 'Plate can', 'กระบอกใส่จานเพาะเชื้อ', ' -', ' -', '320.00', '50 ชิ้น', '50 ชิ้น', '', 'ศิริปัญญา 510000361', ''),
('TypeP41', 'Plate can', 'กระบอกใส่จานเพาะเชื้อ', ' -', ' -', '267.50', '10 ชิ้น', '10 ชิ้น', '', 'TC_S ', ''),
('TypeP42', 'Plate can', 'กระบอกใส่จานเพาะเชื้อ', ' -', ' -', '206.00', '30 ชิ้น', '30 ชิ้น', '', '', ''),
('TypeP43', 'plastic weighting boat', 'พลาสติกชั่งสาร', ' -', '80x50x14 mm', '1,700.00', '2 แพ็ค', '2 แพ็ค', '', '', ''),
('TypeP44', 'plastic weighting boat', 'พลาสติกชั่งสาร', ' -', '125x100x19 mm', '3,400.00', '2 แพ็ค', '2 แพ็ค', '', '', ''),
('TypeP5', 'Pipette', 'ปิเปต', 'HBG', '0.1 ml', ' -', ' - ', '150 ชิ้น', '', '', ''),
('TypeP6', 'Pipette (transfer pipette)', 'ปิเปตแบบกระเปาะ', 'HBG', ' 1 ml', ' -', ' - ', ' 4 ชิ้น', '', '', ''),
('TypeP7', 'Pipette', 'ปิเปต', 'HBG', ' 1 ml', '22.00', '100 ชิ้น', '0 ชิ้น', '', 'TC_S 234/15745', ''),
('TypeP8', 'Pipette', 'ปิเปต', 'HBG', '1 ml', '21.00', '200 ชิ้น', '200 ชิ้น', '', 'TC_S ', ''),
('TypeP9', 'Pipette', 'ปิเปต', 'HBG', '1 ml', '26.75', '100 ชิ้น', '100 ชิ้น', '', 'TC_S IV270/19356       ', ''),
('TypeR0', 'Rack aluminium', 'ตะแกรงวางหลอดทดลองหลายขนาด', ' -', ' -', '110.00', ' -', '52 ชิ้น', '', 'NT 35/1726', ''),
('TypeR1', 'Rack', 'ตะแกรงวางหลอดทดลองขนาด 13 mm', '', '50 ช่อง', '168.00', '40 ชิ้น', '40 ชิ้น', '', 'CTL 5001531', ''),
('TypeR10', 'Rack', 'ตะแกรงวางหลอดทดลองขนาด 20 mm', '', '50 ช่อง', '198.00', '40 ชิ้น', '26 ชิ้น', '', 'CTL 5001531', ''),
('TypeR11', 'Rack', 'ตะแกรงวางหลอดทดลองขนาด 25 mm', '', '40 ช่อง', '225.00', ' -', '2 ชิ้น', '', 'CM 38/01915', ''),
('TypeR12', 'Rack', 'ตะแกรงวางหลอดทดลองขนาด 25 mm', '', '50 ช่อง', '115.00', '20 ชิ้น', '20 ชิ้น', '', 'CTL 5001990', ''),
('TypeR13', 'Rack  (Microcentrifuge)', 'ตะแกรงวางหลอดไมโครเซนตริฟิวซ์', '', ' -', '640.00', '10 ชิ้น', '10 ชิ้น', '', 'ศิริปัญญา 510000361', ''),
('TypeR14', 'Rack (Microcentrifuge)', 'ตะแกรงวางหลอดไมโครเซนตริฟิวซ์', '', ' -', '200.00', '6 ชิ้น', '6 ชิ้น', '', 'ยูเนี่ยน ซายน์ 56-061/37', ''),
('TypeR15', 'Rack (Microcentrifuge)', 'ตะแกรงวางหลอดไมโครเซนตริฟิวซ์', '', '48 ช่อง', '120.00', '30 ชิ้น', '30 ชิ้น', '', '', ''),
('TypeR16', 'Rack (PCR)', 'ตะแกรงวางหลอดPCR', ' -', ' -', '214.00', '10 ชิ้น', '7 ชิ้น', '', 'TC_S IV303/22625', ''),
('TypeR17', 'Rack (PCR)', 'ตะแกรงวางหลอดPCR', ' -', ' -', '214.00', '20 ชิ้น', '20 ชิ้น', '', 'TC_S IV305/22844', ''),
('TypeR18', 'Rack (PCR)', 'ตะแกรงวางหลอดPCR', ' -', ' -', '288.90', '10 ชิ้น', '10 ชิ้น', '', 'ทีซี สถาพร IV319/24227', ''),
('TypeR19', 'Rack centrifuge (plastic)', 'ตะแกรงวางหลอดเซนทรีฟิวซ์ขนาด 15 ml', ' -', '', '50.00', '50 ชิ้น', '50 ชิ้น', '', '', ''),
('TypeR2', 'Rack', 'ตะแกรงวางหลอดทดลองขนาด 13 mm', '', '50 ช่อง', '195.00', '20 ชิ้น', '20 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070587', ''),
('TypeR20', 'Rack centrifuge (plastic)', 'ตะแกรงวางหลอดเซนทรีฟิวซ์ขนาด 50 ml', ' -', '', '80.00', '50 ชิ้น', '50 ชิ้น', '', '', ''),
('TypeR3', 'Rack', 'ตะแกรงวางหลอดทดลองขนาด 13 mm', '', '50 ช่อง', '210.00', '40 ชิ้น', '40 ชิ้น', '', '', ''),
('TypeR4', 'Rack', 'ตะแกรงวางหลอดทดลองขนาด 16 mm', '', '40 ช่อง', '188.00', ' -', '16 ชิ้น', '', 'NT 94/4653', ''),
('TypeR5', 'Rack', 'ตะแกรงวางหลอดทดลองขนาด 16 mm', '', '50 ช่อง', ' -', '30 ชิ้น', '30 ชิ้น', '', 'TC_S 224/14774       ', ''),
('TypeR6', 'Rack', 'ตะแกรงวางหลอดทดลองขนาด 16 mm', '', '50 ช่อง', ' -', '100 ชิ้น', '85 ชิ้น', '', 'ศิริปัญญา 520000325', ''),
('TypeR7', 'Rack', 'ตะแกรงวางหลอดทดลองขนาด 16 mm', '', '50 ช่อง', '214.00', '10 ชิ้น', '10 ชิ้น', '', 'ศิริปัญญา INV540000346', ''),
('TypeR8', 'Rack', 'ตะแกรงวางหลอดทดลองขนาด 16 mm', '', '50 ช่อง', ' -', '40 ชิ้น', '40 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-070587', ''),
('TypeR9', 'Rack', 'ตะแกรงวางหลอดทดลองขนาด 16 mm', '', '50 ช่อง', '158.00', '40 ชิ้น', '40 ชิ้น', '', '', ''),
('TypeS0', 'Saccharometer', 'เครื่องวัดน้ำตาล', ' -', ' 0-30%', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeS1', 'Scapel handle', 'ด้ามมีดผ่าตัด', ' -', 'No.3', ' -', ' -', '9 ชิ้น', '', '', ''),
('TypeS10', 'Spatula (plastic)', 'ช้อนตักสารพลาสติก', ' -', ' -', ' -', ' -', '23 ชิ้น', '', '', ''),
('TypeS11', 'Spatula (stainless)', 'ช้อนตักสารสเตนเลส', ' -', '5\"', ' -', ' -', '5 ชิ้น', '', '', ''),
('TypeS12', 'Spatula (stainless)', 'ช้อนตักสารสเตนเลส', ' -', '8\"', ' -', ' -', '5 ชิ้น', '', '', ''),
('TypeS13', 'Spatula (stainless)', 'ช้อนตักสารสเตนเลส', ' -', '8\"', '95.95', '20 ชิ้น', '20 ชิ้น', '', '', ''),
('TypeS14', 'Spatula (stainless)', 'ช้อนตักสารสเตนเลส', ' -', '12\"', '85.00', '40 ชิ้น', '20 ชิ้น', '', 'NCG', ''),
('TypeS15', 'Spreader ', 'แท่งแก้วเกลี่ยเชื้อรูปตัว L', ' -', ' -', '19.00', ' -', '65 ชิ้น', '', 'NT 35/1715', ''),
('TypeS16', 'Spreader ', 'แท่งแก้วเกลี่ยเชื้อรูปสามเหลี่ยม', ' -', ' -', '20.33', '50 ชิ้น', '50 ชิ้น', '', 'ศิริปัญญา 520000325', ''),
('TypeS17', 'Spreader ', 'แท่งแก้วเกลี่ยเชื้อรูปสามเหลี่ยม', ' -', '6.5 นิ้ว', '19.26', '35 ชิ้น', '35 ชิ้น', '', 'TC_S IV303/22625', ''),
('TypeS18', 'Spreader ', 'แท่งแก้วเกลี่ยเชื้อรูปสามเหลี่ยม', ' -', ' -', '18.00', '100 ชิ้น', '100 ชิ้น', '', '', ''),
('TypeS19', 'Stage micrometer', 'สเตจไมโครมิเตอร์', 'Olympus', ' -', ' -', ' -', '55 ชิ้น', '', '', ''),
('TypeS2', 'Scapel handle', 'ด้ามมีดผ่าตัด', 'Mira', 'No.3', '64.20', '20 ชิ้น', '20 ชิ้น', '', 'TC_S IV270/19356       ', ''),
('TypeS20', 'Stage micrometer', 'สเตจไมโครมิเตอร์', 'Olympus', ' -', '2,460.00', '10 ชิ้น', '10 ชิ้น', '', 'E for L 4907-0230', ''),
('TypeS21', 'Stand and base', 'ขาตั้งพร้อมฐาน', ' -', ' -', '139.10', '10 ชุด', '10 ชุด', '', 'ศิริปัญญา 520000325', ''),
('TypeS22', 'Stand and base', 'ขาตั้งสแตนพร้อมเสา', ' -', ' -', '250.00', '10 ชุด', '10 ชุด', '', 'ยูเนี่ยน ซายน์ 57-070588', ''),
('TypeS23', 'Staining trey (glass)', '', ' -', ' -', '909.50', '20 ชุด', '20 ชุด', '', '', ''),
('TypeS24', 'Staining glass box', '', ' -', ' -', '449.40', '20 ชุด', '20 ชุด', '', '', ''),
('TypeS25', 'Stirring rod', 'แท่งแก้วคนสาร', ' -', '8\"', '12.80', '30 ชิ้น', '7 ชิ้น', '', 'TC_S IV270/19356       ', ''),
('TypeS26', 'Stirring rod', 'แท่งแก้วคนสาร', ' -', '8\" x 12 mm', '19.00', '50 ชิ้น', '35 ชิ้น', '', 'ศิริปัญญา 510000308', ''),
('TypeS27', 'Stirring rod', 'แท่งแก้วคนสาร', ' -', '8\"', '14.00', '30 ชิ้น', '30 ชิ้น', '', '', ''),
('TypeS28', 'Suction flask', 'ขวดลดความดัน', 'OBEROI', '250 ml', '540.00', '5 ชิ้น', '5 ชิ้น', '', '', ''),
('TypeS29', 'Syringe ball', 'ลูกยางปลายแหลม', ' -', ' -', '48.15', '10 ชิ้น', ' 0 ชิ้น', '', 'S-Sci 50-365 ', ''),
('TypeS3', 'Scapel handle', 'ด้ามมีดผ่าตัด', ' -', 'No.3', '53.50', '30 ชิ้น', '30 ชิ้น', '', '', ''),
('TypeS30', 'Syringe ball', 'ลูกยางสามทาง', ' -', ' -', '275.00', '20 ชิ้น', '20 ชิ้น', '', 'ยูเนียนซายน์ 046796', ''),
('TypeS31', 'Syringe ball', 'ลูกยางสำหรับพาสเจอร์ปิเปต', ' -', ' -', '2.14', '100 ชิ้น', '80 ชิ้น', '', 'TC_S 213/13688        ', ''),
('TypeS4', 'Scapel handle', 'ด้ามมีดผ่าตัด', ' -', 'No.4', ' -', ' -', '3 ชิ้น', '', '', ''),
('TypeS5', 'Scisser (stainless)', 'กรรไกรสเตนเลส', ' EMI', '7\"', '450.00', '20 ชิ้น', '11 ชิ้น', '', 'ศิริปัญญา 510000361', ''),
('TypeS6', 'Scisser (stainless)', 'กรรไกรสเตนเลส', ' EMI', '15 cm', '107.00', '20 ชิ้น', '20 ชิ้น', '', 'TC_S IV305/22844', ''),
('TypeS7', 'Slide box', 'กล่องใส่สไลด์', ' -', ' -', '240.00', '4 ชิ้น', '4 ชิ้น', '', 'แกมมาโก้ 490926', ''),
('TypeS8', 'Slide (single convex)', 'สไลด์หลุม 1 หลุม', 'Sail', ' 1x3\"', '273.00', '2 กล่อง', '2 กล่อง', '', 'S-Sci 49-448', ''),
('TypeS9', 'Slide (doublele convex)', 'สไลด์หลุม 2 หลุม', 'Sail', ' 1x3\"', '447.26', '2 กล่อง', '2 กล่อง', '', 'S-Sci 49-448', ''),
('TypeT0', 'Tank', 'ถังน้ำกลั่น', ' -', '15 L', '85.60', '1 ถัง', '1 ถัง', '', 'ศิริปัญญา 520000325', ''),
('TypeT1', 'Tank', 'ถังน้ำกลั่น', 'Nalgene', '20 L', '2,700.00', '1 ถัง', '1 ถัง', '', 'NCG 5008-0029', ''),
('TypeT10', 'Test tube', 'หลอดทดลอง', 'OBEROI', '20x150 mm', '15.00', '500 ชิ้น', '500 ชิ้น', '', '', ''),
('TypeT11', 'Test tube', 'หลอดทดลอง', 'Favorit', '25x150 mm', '18.19', '700 ชิ้น', '300 ชิ้น', '', '', ''),
('TypeT12', 'Test tube', 'หลอดทดลอง', 'Pyrex', '25x150 mm', ' -', ' -', '127 ชิ้น', '', '', ''),
('TypeT13', 'Test tube', 'หลอดทดลอง', 'Berlin', '25x150 mm', '20.00', '500 ชิ้น', '500 ชิ้น', '', '', ''),
('TypeT14', 'Test tube with screw cap', 'หลอดทดลองฝาเกลียว', 'Berlin', '13x100 mm', '14.00', '200 ชิ้น', '200 ชิ้น', '', '', ''),
('TypeT15', 'Test tube with screw cap', 'หลอดทดลองฝาเกลียว', 'Kimax', '16 x150 mm', ' -', ' -', '101 ชิ้น', '', '', ''),
('TypeT16', 'Test tube with screw cap', 'หลอดทดลองฝาเกลียว', 'Pyrex', '16x150 mm', ' -', ' -', '31 ชิ้น', '', '', ''),
('TypeT17', 'Test tube with screw cap', 'หลอดทดลองฝาเกลียว', 'Pyrex', '20x150 mm', ' -', ' -', '13 ชิ้น', '', '', ''),
('TypeT18', 'Test tube with screw cap', 'หลอดทดลองฝาเกลียว', 'Pyrex', '25x150 mm', '64.20', '200 ชิ้น', '66 ชิ้น', '', 'ศิริปัญญา 520000325 ', ''),
('TypeT19', 'Test tube with screw cap', 'หลอดทดลองฝาเกลียว', 'Berlin', '25x150 mm', '41.00', '200 ชิ้น', '200 ชิ้น', '', '', ''),
('TypeT2', 'Test tube', 'หลอดทดลอง', 'Boeco', '13x100 mm', '14.00', '1,000 ชิ้น', '1,000 ชิ้น', '', 'TC_S 243/16668', ''),
('TypeT20', 'Thermometer', 'เทอร์โมมิเตอร์', ' -', '0-100 °C', ' -', ' -', '6 ชิ้น', '', '', ''),
('TypeT21', 'Thermometer', 'เทอร์โมมิเตอร์', ' -', '0-100 °C', '25.00', '10 ชิ้น', '10 ชิ้น', '', '', ''),
('TypeT22', 'Thermometer', 'เทอร์โมมิเตอร์', ' -', '0-300 °C', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeT23', 'Tonuge Depressor', 'เหล็กกดลิ้น', ' -', ' -', '23.54', ' -', '20 ชิ้น', '', 'S-science 47-308', ''),
('TypeT24', 'Tray (stainless)', 'ถาดสแตนเลสก้นลึกมีฝาปิด', 'Sphinx', '32.4x50x10 cm', '1,680.00', '10 ชิ้น', '10 ชิ้น', '', 'คลังครัวเรือนซัพพลาย 05/8', ''),
('TypeT25', 'Tray (stainless)', 'ถาดสแตนเลสก้นลึกมีฝาปิด', '', '19x30x6 cm', '', ' -', '2 ชิ้น', '', '', ''),
('TypeT26', 'Tray (stainless)', 'ถาดสแตนเลสก้นลึกมีฝาปิด', '  - ', '17x4x5 cm', '214.00', '50 ชิ้น', '50 ชิ้น', '', '', ''),
('TypeT27', 'Tray ', 'ถาดอะลูมิเนียม', '  -', '27x42x8 cm', '214.00', '40 ชิ้น', '40 ชิ้น', '', '', ''),
('TypeT28', 'Tray', 'ถาดใส่สไลด์', ' -', '20 ช่อง', '130.00', '4 ชิ้น', '4 ชิ้น', '', 'ยูเนี่ยน ซายน์ 57-066461', ''),
('TypeT29', 'Tray', 'ถาดใส่สไลด์', ' -', '20 ช่อง', '70.00', '35 ชิ้น', '35 ชิ้น', '', '', ''),
('TypeT3', 'Test tube', 'หลอดทดลอง', 'Pyrex', '13x100 mm', '10.70', '500 ชิ้น', '500 ชิ้น', '', 'S-Sci 50-365', ''),
('TypeT30', 'Tripod', 'เหล็ก 3 ขา', ' -', ' -', '100.00', '12 ชิ้น', '12 ชิ้น', '', 'NCG 4908-0040', ''),
('TypeT4', 'Test tube', 'หลอดทดลอง', 'Pyrex', '13x100 mm', '8.80', '1,500 ชิ้น', '1,500 ชิ้น', '', 'TC_S', ''),
('TypeT5', 'Test tube', 'หลอดทดลอง', 'Pyrex', '16x150 mm', '12.30', '21,00 ชิ้น', '220 ชิ้น', '', 'IV292/21544', ''),
('TypeT6', 'Test tube', 'หลอดทดลอง', 'Pyrex', '16x150 mm', '11.56', '100 ชิ้น', '100 ชิ้น', '', 'TC_S IV303/22625', ''),
('TypeT7', 'Test tube', 'หลอดทดลอง', 'Pyrex', '16x150 mm', '11.56', '2,000 ชิ้น', '2,000 ชิ้น', '', 'TC_S IV305/22844', ''),
('TypeT8', 'Test tube', 'หลอดทดลอง', 'OBEROI', '16x150 mm', '9.75', '1000 ชิ้น', '1000 ชิ้น', '', '', ''),
('TypeT9', 'Test tube', 'หลอดทดลอง', 'Pyrex', '20x150 mm', '17.12', '500 ชิ้น', '241 ชิ้น', '', 'S-Sci 50-365', ''),
('TypeV0', 'Vernier caliper', 'เวอร์เนียร์ คาลิเปอร์', ' -', '0-150 mm', ' -', ' -', '1 ชิ้น', '', '', ''),
('TypeV1', 'Vial', ' ขวดไวออลใส', ' -', '42x20 mm', '7,019.20', '1 pack(200 ขวด)', '1 pack(200 ขวด)', '', 'Hiat 500136', ''),
('TypeV10', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Duran', '200  ml', ' -', ' -', '30  ชิ้น', '', '', ''),
('TypeV11', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Duran', '250  ml', ' -', ' -', '8  ชิ้น', '', '', ''),
('TypeV12', 'Volumetric flask', 'ขวดปรับปริมาตร', 'MC', '250  ml', ' -', ' -', '10  ชิ้น', '', '', ''),
('TypeV13', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Witeg', '250  ml', ' -', ' -', '1  ชิ้น', '', '', ''),
('TypeV14', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Duran', '500  ml', ' -', ' -', '14  ชิ้น', '', '', ''),
('TypeV15', 'Volumetric flask', 'ขวดปรับปริมาตร', 'MC', '500  ml', ' -', ' -', '2  ชิ้น', '', '', ''),
('TypeV16', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Glassco', '500  ml', ' -', ' -', '2  ชิ้น', '', '', ''),
('TypeV17', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Duran', '1,000  ml', ' -', ' -', '8 ชิ้น', '', '', ''),
('TypeV18', 'Volumetric flask', 'ขวดปรับปริมาตร', 'MC', '1,000  ml', ' -', ' -', '1  ชิ้น', '', '', ''),
('TypeV19', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Glassco', '1,000  ml', ' -', ' -', '7  ชิ้น', '', '', ''),
('TypeV2', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Duran', '5 ml', ' -', ' -', '2  ชิ้น', '', '', ''),
('TypeV20', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Witeg', '1,000  ml', ' -', ' -', '1  ชิ้น', '', '', ''),
('TypeV21', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Duran', '2,000  ml', ' -', ' -', '4  ชิ้น', '', '', ''),
('TypeV22', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Hjrschmann', '2,000  ml', ' -', ' -', '1  ชิ้น', '', '', ''),
('TypeV23', 'Volumetric flask', 'ขวดปรับปริมาตร', 'MC', '2,000  ml', ' -', ' -', ' 2  ชิ้น', '', '', ''),
('TypeV24', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Witeg', '2,000  ml', ' -', ' -', ' 3  ชิ้น', '', '', ''),
('TypeV25', 'V-shape rod glass', 'แท่งแก้วรูปตัววี', ' -', ' -', ' -', ' -', '0 ชิ้น', '', '', ''),
('TypeV26', 'V-shape rod glass', 'แท่งแก้วรูปตัววี', ' -', ' -', '18.00', '200 ชิ้น', '100 ชิ้น', '', 'ศิริปัญญา 2011-05-26-01', ''),
('TypeV27', 'V-shape rod glass', 'แท่งแก้วรูปตัววี', ' -', ' -', '19.00', '50 ชิ้น', '50 ชิ้น', '', 'TC_S IV303/22625', ''),
('TypeV28', 'V-shape rod glass', 'แท่งแก้วรูปตัววี', ' -', ' 5 mm', '32.10', '100 ชิ้น', '100 ชิ้น', '', 'TC_S IV305/22844', ''),
('TypeV29', 'V-shape rod glass', 'แท่งแก้วรูปตัววี', ' -', ' -', '13.50', '50 ชิ้น', '50 ชิ้น', '', '', ''),
('TypeV3', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Duran', '25 ml', ' -', ' -', '9  ชิ้น', '', '', ''),
('TypeV4', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Witeg', '25 ml', ' -', ' -', '5  ชิ้น', '', '', ''),
('TypeV5', 'Volumetric flask', 'ขวดปรับปริมาตร', 'MC', '50  ml', ' -', ' -', '8  ชิ้น', '', '', ''),
('TypeV6', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Glassco', '50  ml', ' -', ' -', ' 9  ชิ้น', '', '', ''),
('TypeV7', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Duran', '100  ml', ' -', ' -', '10  ชิ้น', '', '', ''),
('TypeV8', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Witeg', '100  ml', '237.00', ' -', '10  ชิ้น', '', 'OV 09/04146', ''),
('TypeV9', 'Volumetric flask', 'ขวดปรับปริมาตร', 'Witeg', '100  ml', ' -', ' -', '1  ชิ้น', '', '', ''),
('TypeW0', 'Wash bottle', 'ขวดน้ำกลั่น', 'Nalgene', '125 ml', '435.00', '50 ชิ้น', '50 ชิ้น', '', 'ศิริปัญญา 510000408', ''),
('TypeW1', 'Watch glass', 'กระจกนาฬิกา', ' -', '70 mm', ' -', ' -', '27 ชิ้น', '', '', ''),
('TypeW2', 'Weighing bottle', 'ขวดชั่งสารทรงเตี้ย', ' -', '  -', ' -', ' -', '31 ชิ้น', '', '', ''),
('TypeW3', 'Weighing bottle', 'ขวดชั่งสารทรงสูง', ' -', '  -', ' -', ' -', '60 ชิ้น', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `id_equipement` varchar(100) NOT NULL,
  `id_equipement_name` varchar(10) NOT NULL,
  `brand` varchar(10) NOT NULL,
  `size` varchar(10) NOT NULL,
  `unit` varchar(5) NOT NULL,
  `price/unit` varchar(20) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `unit_amount` varchar(10) NOT NULL,
  `remaining` varchar(10) NOT NULL,
  `unit_remaining` varchar(10) NOT NULL,
  `storage` varchar(100) NOT NULL,
  `fiscal_year/no` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id_equipement`, `id_equipement_name`, `brand`, `size`, `unit`, `price/unit`, `amount`, `unit_amount`, `remaining`, `unit_remaining`, `storage`, `fiscal_year/no`, `comment`) VALUES
('TypeA0', '1', ' -', ' -', '', ' -', ' -', ' -', '24', ' -', '1', 'eeee', 'sdas'),
('TypeA1', '2', ' -', ' -', '', '138.00', '100', '8', '54', '8', '2', 'TC_S', ''),
('TypeA2', '2', ' -', ' -', '', '60.00', '50', '8', '50', '8', '', '', ''),
('TypeA3', '2', ' -', ' -', '', '53.50', '100', '8', '100', '8', '', 'ศิริปัญญา 520000325', ''),
('TypeA4', '3', ' -', ' -', '', '28.89', ' -', '', '99', '8', '', 'S-sci 48-240', ''),
('TypeA5', '4', ' -', '0-100%', '', '140.00', '1', '8', '1', '8', '', 'แกมมาโก้ 490926', ''),
('TypeA6', '4', ' -', '0-100%', '', '310.00', '1', '8', '1', '8', '', 'แกมมาโก้ 490926', ''),
('TypeA7', '5', ' -', ' -', '', '5,490.00', '4', '8', '4', '8', '', 'KPN 47/315', ''),
('TypeA8', '5', '1', ' -', '', ' -', '1', '8', '1', '8', '', '', ''),
('TypeA9', '5', '1', '', '', '', '2', '8', '2', '8', '', '', ''),
('TypeB0', '6', ' -', '32x40x10 ', '11', '80.00', '40', '8', '19', '8', '', 'คลังครัวเรือนซัพพลาย ', ''),
('TypeB1', '6', ' -', '11\" x 14\"', '', '50.00', '16', '8', '6', '8', '', 'ร้านเดียว 001/0002 ', ''),
('TypeB10', '7', '3', '50', '1', ' -', ' -', '', '4', '8', '', '', ''),
('TypeB11', '7', '4', '50', '1', '49.00', '80', '8', '80', '8', '', '', ''),
('TypeB12', '7', '3', '100', '1', '70.00', '30', '8', '10', '8', '', 'ศิริปัญญา 520000302', ''),
('TypeB13', '7', '3', '100', '1', '64.20', '40', '8', '10', '8', '', 'TC_S IV305/22844', ''),
('TypeB14', '7', '4', '100', '1', '58.00', '85', '8', '85', '8', '', '', ''),
('TypeB15', '7', '2', '250', '1', '69.55', '40', '8', '20', '8', '', 'TC_S IV305/22844', ''),
('TypeB16', '7', '5', '250', '1', '64.00', '12', '8', '5', '8', '', 'BT-49-10931', ''),
('TypeB17', '7', '3', '250', '1', ' -', ' -', '', '7', '8', '', '', ''),
('TypeB18', '7', '4', '250', '1', '68.00', '100', '8', '100', '8', '', '', ''),
('TypeB19', '7', '2', '600', '1', '90.95', '10', '8', '4', '8', '', 'TC_S IV305/22844', ''),
('TypeB2', '6', ' -', '11\" x 14\"', '', '62.40', '40', '8', '40', '8', '', 'TC_S IV319/24234', ''),
('TypeB20', '7', '3', '600', '1', '78.00', '12', '8', '5', '8', '', 'BT L56-05527', ''),
('TypeB21', '7', '6', '600', '1', '123.00', '25', '8', '25', '8', '', '', ''),
('TypeB22', '7', '2', '1000', '1', '128.40', '10', '8', '5', '8', '', 'TC_S IV305/22844', ''),
('TypeB23', '7', '3', '1000', '1', ' -', ' -', '', '2', '8', '', '', ''),
('TypeB24', '7', '2', '2000', '1', ' -', ' -', '', '1', '8', '', '', ''),
('TypeB25', '8', '7', '250', '1', '62.06', '5', '8', '5', '8', '', 'TC_S 215/13810', ''),
('TypeB26', '8', '8', '300', '1', '110.00', ' -', '', '1', '8', '', 'S&M', ''),
('TypeB27', '8', '8', '300', '1', ' -', ' -', '', '1', '8', '', '', ''),
('TypeB28', '8', '8', '500', '1', '150.00', ' -', '', '2', '8', '', '', ''),
('TypeB29', '8', '8', '500', '1', ' -', ' -', '', '1', '8', '', '', ''),
('TypeB3', '6', ' -', '13\" x 17\"', '', '60.00', '50', '8', '0', '8', '', 'ยูเนี่ยน ซายน์ 56-061/36', ''),
('TypeB30', '8', ' -', '1000', '1', '90.95', ' -', '', '1', '8', '', 'S-sci 47-311', ''),
('TypeB31', '8', '', '1000', '1', '128.40', '10', '8', '10', '8', '', 'TC_S IV319/24223', ''),
('TypeB32', '8', '8', '2000', '1', ' -', ' -', '', '1', '8', '', '', ''),
('TypeB33', '8', ' -', '3000', '1', ' -', ' -', '', '2', '8', '', '', ''),
('TypeB34', '8', '8', '3000', '1', ' -', ' -', '', '1', '8', '', '', ''),
('TypeB35', '8', ' -', '3000', '1', '330.00', '4', '8', '4', '8', '', 'ยูเนี่ยน ซายน์ 57-070586', ''),
('TypeB36', '8', '', '3000', '1', '363.80', '5', '8', '5', '8', '', 'TC_S IV319/24223', ''),
('TypeB37', '8', '8', '5000', '1', ' -', ' -', '', '1', '8', '', '', ''),
('TypeB38', '8', '', '5000', '1', '460.10', '3', '8', '3', '8', '', 'TC_S IV319/24223', ''),
('TypeB39', '9', ' -', '1000', '1', ' -', ' -', '', '6', '8', '', '', ''),
('TypeB4', '6', ' -', '13\" x 17\"', '', '45.00', '50', '8', '50', '8', '', 'คลังครัวเรือนซัพพลาย ', ''),
('TypeB40', '9', ' -', '1000', '1', '350.00', '10', '8', '10', '8', '', '', ''),
('TypeB41', '9', ' -', '2000', '1', ' -', ' -', '', '2', '8', '', 'ของเก่าก่อนปี 49', ''),
('TypeB42', '9', ' -', '2000', '1', '481.50', '10', '8', '10', '8', '', 'TC_S 215/13890', ''),
('TypeB43', '9', ' -', '2000', '1', '489.00', '4', '8', '4', '8', '', 'BT 49-10931', ''),
('TypeB44', '9', ' -', '2000', '1', '402.00', '10', '8', '10', '8', '', '', ''),
('TypeB45', '10', '2', '250', '1', '477.00', ' -', '', '12', '8', '', 'KPN 47/110', ''),
('TypeB46', '10', '2', '500', '1', '520.00', ' -', '', '7', '8', '', 'KPN 47/110', ''),
('TypeB47', '10', '', '500', '1', '561.75', '20', '8', '20', '8', '', '', ''),
('TypeB48', '10', '2', '2000', '1', '1,030.00', '5', '8', '4', '8', '', 'BT 49-10931 (แตก 1)', ''),
('TypeB49', '11', '2', '50', '1', '91.00', '20', '8', '19', '8', '', 'BT 49-10931', ''),
('TypeB5', '6', ' -', '13\" x 17\"', '', '55.00', '50', '8', '50', '8', '', 'ศิริปัญญา INV5700000324', ''),
('TypeB50', '11', '9', '100', '1', '80.25', '20', '8', '20', '8', '', 'ศิริปัญญา INV570000026', ''),
('TypeB51', '11', '9', '100', '1', '95.00', '20', '8', '20', '8', '', 'ยูเนี่ยน ซายน์ 57-070586', ''),
('TypeB52', '11', '10', '100', '1', '74.90', '30', '8', '30', '8', '', '', ''),
('TypeB53', '11', '2', '250', '1', '98.44', '100', '8', '85', '8', '', 'ศิริปัญญา 520000324', ''),
('TypeB54', '11', '2', '250', '1', '93.00', '50', '8', '50', '8', '', 'ศิริปัญญา  INV560000243', ''),
('TypeB55', '11', '11', '250', '1', '120.00', '50', '8', '22', '8', '', 'ศิริปัญญา 510000303', ''),
('TypeB56', '11', '11', '250', '1', '92.00', '50', '8', '50', '8', '', '', ''),
('TypeB57', '11', '2', '500', '1', '119.84', '100', '8', '58', '8', '', 'ศิริปัญญา 520000324', ''),
('TypeB58', '11', '2', '500', '1', '101.65', '60', '8', '60', '8', '', 'TC_S IV292/21544', ''),
('TypeB59', '11', '2', '500', '1', '134.00', '20', '8', '20', '8', '', 'ยูเนี่ยน ซายน์ 57-070586', ''),
('TypeB6', '6', ' -', '13\" x 17\"', '', '74.90', '50', '8', '50', '8', '', 'TC_S IV319/24234', ''),
('TypeB60', '11', '6', '500', '1', '140.00', '50', '8', '12', '8', '', 'ศิริปัญญา 510000304', ''),
('TypeB61', '11', '2', '500', '1', '109.00', '50', '8', '50', '8', '', '', ''),
('TypeB62', '11', '2', '1000', '1', ' -', ' -', '', '1', '8', '', '', ''),
('TypeB63', '11', '2', '1000', '1', '175.00', '20', '8', '20', '8', '', 'ยูเนี่ยน ซายน์ 57-070586', ''),
('TypeB64', '11', '2', '1000', '1', '154.08', '10', '8', '10', '8', '', 'ทีซี สถาพร IV319/24227', ''),
('TypeB65', '12', ' -', '125', '1', ' -', ' -', '', '5', '8', '', '', ''),
('TypeB66', '12', ' -', '250', '11', ' -', ' -', '', '3', '8', '', '', ''),
('TypeB67', '12', ' -', '250', '1', '36.00', '10', '8', '10', '8', '', '', ''),
('TypeB68', '12', ' -', '500', '1', ' -', ' -', '', '6', '8', '', '', ''),
('TypeB69', '13', ' -', '500', '1', ' -', ' -', '', '7', '8', '', '', ''),
('TypeB7', '6', ' -', '14\" x 18\"', '', '50.00', '6', '8', '6', '8', '', 'ร้านเดียว 001/0003', ''),
('TypeB70', '13', ' -', '500', '1', '49.00', '20', '8', '20', '8', '', '', ''),
('TypeB71', '12', ' -', '1000', '1', ' -', ' -', '', '10', '8', '', '', ''),
('TypeB72', '14', ' -', '60', '1', '12.84', '200', '8', '22', '8', '', 'TC_S IV305/22844', ''),
('TypeB73', '15', ' -', '60', '1', '12.00', '200', '8', '200', '8', '', '', ''),
('TypeB74', '16', '', '250', '1', '710.00', '2', '8', '2', '8', '', 'ยูเนี่ยน ซายน์ 57-070589', ''),
('TypeB75', '16', '', '500', '1', '920.00', '3', '8', '3', '8', '', 'ยูเนี่ยน ซายน์ 57-070589', ''),
('TypeB76', '17', '', '25*95 ', '14', '3,200.00', '2', '9', '2', '8', '', 'AT science', ''),
('TypeB77', '18', '  -', '4', '12', '6.00', '100', '7', '100', '7', '', '', ''),
('TypeB78', '18', '  -', '8', '12', '8.00', '140', '7', '140', '7', '', '', ''),
('TypeB79', '19', '', '5*8\"', '', '53.50', '20', '10', '20', '10', '', 'TC_S IV319/24234', ''),
('TypeB8', '7', '2', '25', '1', '68.48', '20', '8', '5', '8', '', 'ศิริปัญญา 520000324', ''),
('TypeB80', '19', ' -', '13*17\"', '', '240.00', '20', '10', '20', '10', '', 'ศิริปัญญา INV570000324', ''),
('TypeB81', '19', ' -', '15*21\"', '', '240.00', '20', '10', '20', '10', '', 'ศิริปัญญา INV570000324', ''),
('TypeB82', '19', ' -', 'เบอร์ 605', '', '96.30', '10', '10', '10', '10', '', '', ''),
('TypeB83', '19', ' -', 'เบอร์ 645', '', '85.60', '10', '10', '10', '10', '', '', ''),
('TypeB84', '19', ' -', 'เบอร์ 831', '', '107.00', '10', '10', '10', '10', '', '', ''),
('TypeB85', '19', ' -', 'เบอร์ 633', '', '37.45', '10', '10', '10', '10', '', '', ''),
('TypeB86', '20', ' -', '3.5', '11', '28.00', '20', '8', '10', '8', '', 'ยูเนี่ยน ซายน์ 57-070587', ''),
('TypeB87', '20', ' -', '5', '11', '42.00', '20', '8', '10', '8', '', 'ยูเนี่ยน ซายน์ 57-070587', ''),
('TypeB88', '20', ' -', '6.4', '11', '52.00', '20', '8', '10', '8', '', 'ยูเนี่ยน ซายน์ 57-070587', ''),
('TypeB89', '21', '12', '50', '1', '604.55', '10', '8', '10', '8', '', 'ศิริปัญญา 520000324', ''),
('TypeB9', '7', '2', '50', '1', '69.55', '40', '8', '21', '8', '', 'TC_S IV305/22844', ''),
('TypeB90', '21', ' -', '50', '1', '710.00', '10', '8', '10', '8', '', 'ยูเนี่ยน ซายน์ 57-070588', ''),
('TypeB91', '22', ' -', ' -', '', '100.58', '10', '8', '10', '8', '', 'ศิริปัญญา 520000324', ''),
('TypeB92', '23', ' -', ' -', '', '180.00', '10', '8', '10', '8', '', 'ยูเนี่ยน ซายน์ 57-070588', ''),
('TypeC0', '24', '', '', '', '2.00', '800', '8', '500', '8', '', 'ศิริปัญญา 510000308', ''),
('TypeC1', '24', '', '', '', '1.60', '1000', '8', '1000', '8', '', 'TC_S IV305/22844', ''),
('TypeC10', '28', ' -', '15', '1', '9.40', '50', '8', '50', '8', '', 'ยูเนี่ยน ซายน์ 57-066461', ''),
('TypeC11', '28', '13', '50', '1', '7.49', '1000', '8', '1000', '8', '', 'TC_S IV319/24223', ''),
('TypeC12', '29', ' -  ', ' -', '', '12.00', '3000', '8', '2000', '8', '', '', ''),
('TypeC13', '30', ' -', ' -', '', '42.80', '50', '8', '10', '9', '', 'TC_S IV319/24234', ''),
('TypeC14', '30', ' -', ' -', '', '181.90', '5', '9', '5', '9', '', '', ''),
('TypeC15', '31', '14', ' - ', '', '600.00', '10', '9', '10', '9', '', '', ''),
('TypeC16', '32', ' -', ' -', '', '1,500.00', '1', '8', '1', '8', '', '', ''),
('TypeC17', '33', ' -', ' -', '', '305.00', '30', '8', '7', '8', '', 'S-Sci 49-307', ''),
('TypeC18', '34', ' -', ' -', '', '385.20', '50', '8', '22', '8', '', 'ศิริปัญญา 520000324', ''),
('TypeC19', '35', ' -', '7.5x5.7 ', '11', '345.00', '20', '8', '20', '8', '', 'ยูเนี่ยน ซายน์ 57-070588', ''),
('TypeC2', '25', '', '', '', '1.25', '2000', '8', '2000', '8', '', '', ''),
('TypeC20', '35', '', '', '', '107.00', '20', '8', '20', '8', '', '', ''),
('TypeC21', '36', ' -', '2', '1', '', '2', '8', '2', '8', '', '', ''),
('TypeC22', '37', ' -', '', '', '6.00', '100', '8', '100', '8', '', 'ยูเนี่ยน ซายน์ 57-066461', ''),
('TypeC23', '38', ' -', ' -', '', '4.20', '200', '8', '200', '8', '', '', ''),
('TypeC24', '38', ' -', '10*10 ', '13', '245.00', '1', '8', '1', '8', '', 'ยูเนี่ยน ซายน์ 57-066461', ''),
('TypeC25', '39', '2', '5', '1', '160.00', '10', '8', '10', '8', '', '', ''),
('TypeC26', '39', '15', '5', '1', ' -', ' -', '', '2', '8', '', '', ''),
('TypeC27', '39', '12', '5', '1', ' -', ' -', '', '1', '8', '', '', ''),
('TypeC28', '39', '17', '10', '1', '170.00', ' -', '', '1', '8', '', 'S&M DB 0005-44', ''),
('TypeC29', '39', '2', '25', '1', ' -', ' -', '', '24', '8', '', '', ''),
('TypeC3', '25', '', '', '', '2.00', '1500', '8', '1000', '8', '', 'ศิริปัญญา 510000308', ''),
('TypeC30', '39', '5', '50', '1', '135.00', ' -', '', '1', '8', '', 'OV 009/04443 (แตก 1)', ''),
('TypeC31', '39', '18', '50', '1', '188.32', '10', '8', '5', '8', '', 'BT 52-09868', ''),
('TypeC32', '39', '19', '100', '1', '176.00', '20', '8', '20', '8', '', '', ''),
('TypeC33', '39', '16', '100', '1', '', '', '', '4', '8', '', '', ''),
('TypeC34', '39', '5', '100', '1', ' -', ' -', '', '4', '8', '', '', ''),
('TypeC35', '39', '2', '100', '1', '212.93', '10', '8', '4', '8', '', 'BT 52-09868', ''),
('TypeC36', '39', '2', '250', '1', '197.00', '40', '8', '40', '8', '', '', ''),
('TypeC37', '39', '1', '250', '1', '306.00', ' -', '', '7', '8', '', 'NT 15/0742', ''),
('TypeC38', '39', '2', '500', '1', ' -', ' -', '', '47', '8', '', '', ''),
('TypeC39', '39', '16', '500', '1', '495.00', ' -', '', '10', '8', '', 'NT 15/0742', ''),
('TypeC4', '25', '', '', '', '1.40', '1600', '8', '1600', '8', '', 'TC_S ตกลงราคา 52', ''),
('TypeC40', '39', '20', '1000', '1', '600.00', ' -', '', '1', '8', '', 'S&M DB 0005-44', ''),
('TypeC41', '40', ' -', '10', '1', ' -', ' -', '', '3', '8', '', '', ''),
('TypeC42', '40', ' -', '50', '1', ' -', ' -', '', '2', '8', '', '', ''),
('TypeC43', '40', ' -', '100', '1', ' -', ' -', '', '1', '8', '', '', ''),
('TypeC44', '40', ' -', '250', '1', ' -', ' -', '', '1', '8', '', '', ''),
('TypeC45', '40', '8', '250', '1', ' -', ' -', '', '1', '8', '', '', ''),
('TypeC46', '40', ' -', '1000', '1', '390.00', ' -', '', '1', '8', '', 'S&M', ''),
('TypeC47', '40', ' -', ' -', '', '556.40', '5', '8', '5', '8', '', 'S-Sci 50-365', ''),
('TypeC5', '26', '', '', '', '2.00', '1000', '8', '1000', '8', '', 'ยูเนี่ยน ซายน์ 57-070587', ''),
('TypeC6', '26', '', '', '', '3.48', '500', '8', '300', '8', '', 'NCG 5008-0029', ''),
('TypeC7', '27', '', ' -', '', '3.25', '200', '8', '200', '8', '', '', ''),
('TypeC8', '28', ' -', '15', '1', '9.00', '200', '8', '200', '8', '', '', ''),
('TypeC9', '28', ' -', '15', '1', '3.42', '200', '8', '0', '', '', 'BT L56-05527', '');

-- --------------------------------------------------------

--
-- Table structure for table `equipment_brand`
--

CREATE TABLE `equipment_brand` (
  `id_equipement_brand` int(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipment_brand`
--

INSERT INTO `equipment_brand` (`id_equipement_brand`, `name`) VALUES
(1, 'Merck'),
(2, 'Duran'),
(3, 'Pyrex'),
(4, 'OBEROI'),
(5, 'Isolab'),
(6, 'TGI'),
(7, 'LP'),
(8, 'Nikko'),
(9, 'SEBC(Duran)'),
(10, 'SIMAX'),
(11, 'TGI'),
(12, 'Wertlab'),
(13, 'E&K'),
(14, 'Index'),
(15, 'GW'),
(16, 'Witeg'),
(17, 'DIN'),
(18, 'Favorit'),
(19, 'Glassco'),
(20, 'MC'),
(21, 'diamond'),
(22, 'ปู'),
(23, 'เจ้าสมุทร'),
(24, 'ดาว'),
(25, 'Aro'),
(26, 'Laser'),
(27, 'Vitex'),
(28, 'Hirchman'),
(29, 'รถพยาบาล'),
(30, 'ตรานก'),
(31, 'Jasmine'),
(32, 'HI-VAN'),
(33, 'Menzel-Glaser'),
(34, 'Kuvetten');

-- --------------------------------------------------------

--
-- Table structure for table `equipment_name`
--

CREATE TABLE `equipment_name` (
  `id_equipement_name` int(10) NOT NULL,
  `name_eng` varchar(100) NOT NULL,
  `name_th` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipment_name`
--

INSERT INTO `equipment_name` (`id_equipement_name`, `name_eng`, `name_th`) VALUES
(1, 'Air lock', 'แอร์ล็อค'),
(2, 'Alcohol burner', 'ตะเกียงแอลกอฮอล์'),
(3, 'Alcohol burner (glass)', 'ตะเกียงแอลกอฮอล์แก้ว'),
(4, 'Alcohol meter', 'เครื่องวัดแอลกอฮอล์'),
(5, 'Anarobic jar', 'แอนแอโรบิกจาร์'),
(6, 'Basket', 'ตะกร้า'),
(7, 'Beaker (glass)', 'บีกเกอร์แก้ว'),
(8, 'Beaker (Plastic)', 'บีกเกอร์พลาสติกไม่มีหูจับ'),
(9, 'Beaker (Stainless)', 'บีกเกอร์สแตนเลส'),
(10, 'Bottle (Duran bottle amber)', 'ขวดดูแรน สีชา'),
(11, 'Bottle (Duran bottle)', 'ขวดดูแรน ใส'),
(12, 'Bottle (Reagent bottle amber)', 'ขวดรีเอเจนท์สีชา '),
(13, 'Bottle (Reagent bottle)', 'ขวดรีเอเจนท์สีใส'),
(14, 'Bottle with cap & dropper', 'ขวดหยดสีชาพร้อมฝาแบบหลอดหยด'),
(15, 'Bottle ', 'ขวดหยดสารสีชา'),
(16, 'Bottle ', 'ขวดฟิวเตอร์ริ่ง'),
(17, 'Bottle(sample cell bottle)', 'ขวดเก็บเซลล์ตัวอย่าง'),
(18, 'Bottle ', 'ขวดเพาะเลี้ยงเนื้อเยื่อ'),
(19, 'Box', 'กล่องพลาสติก'),
(20, 'Brush', 'แปรงล้างขวด'),
(21, 'Burette', 'บิวเรต'),
(22, 'Burette clamp', 'แคลมพ์หนีบบิวเรต'),
(23, 'Burette clamp', 'ที่จับบิวเรตโลหะ'),
(24, 'Cap', 'ฝาหลอดทดลอง(สำหรับหลอดทดลองขนาด 13*100mm'),
(25, 'Cap', 'ฝาหลอดทดลอง(สำหรับหลอดทดลองขนาด 16*150mm)'),
(26, 'Cap', 'ฝาหลอดทดลอง(สำหรับหลอดทดลองขนาด 20*150mm)'),
(27, 'Cap', 'ฝาเกลียวปิดขวดสีชา พร้อมหลอดหยด'),
(28, 'CentrifugeTube', 'หลอดปั่นตะกอน +ฝา'),
(29, 'Cloth', 'ผ้าขนหนู'),
(30, 'Cock borer', 'ที่เจาะจุกค๊อก'),
(31, 'Cock borer', 'ปากกาวัดค่าการนำไฟฟ้า'),
(32, 'Conductivity pen', 'คลูปปิ้ง จาร์'),
(33, 'Coupling jar', 'คลูปปิ้ง จาร์'),
(34, 'Coupling jar with cover', 'คลูปปิ้ง จาร์(แสตนนิ้ง จาร์)'),
(35, 'Coupling jar (standning jar)', 'กระปุกใส่สำลี สเตนเลส'),
(36, 'Cotton box (stainless)', 'หลอดไคโอ ไวแอล'),
(37, 'Cryo Vial ', 'หลอดไคโอ ไวแอล'),
(38, 'Cryo Vial box ', 'กล่องใส่หลอดไคโอ ไวแอล'),
(39, 'Cylinder (glass)', 'กระบอกตวง แก้ว'),
(40, 'Cylinder (plastic)', 'กระบอกตวง พลาสติก');

-- --------------------------------------------------------

--
-- Table structure for table `equipment_s`
--

CREATE TABLE `equipment_s` (
  `id_equipement` varchar(100) NOT NULL,
  `id_equipement_name` varchar(10) NOT NULL,
  `brand` varchar(10) NOT NULL,
  `size` varchar(10) NOT NULL,
  `unit` int(5) NOT NULL,
  `price/unit` varchar(20) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `unit_amount` varchar(10) NOT NULL,
  `remaining` varchar(30) NOT NULL,
  `unit_remaining` varchar(10) NOT NULL,
  `fiscal_year/no` varchar(200) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipment_s`
--

INSERT INTO `equipment_s` (`id_equipement`, `id_equipement_name`, `brand`, `size`, `unit`, `price/unit`, `amount`, `unit_amount`, `remaining`, `unit_remaining`, `fiscal_year/no`, `comment`) VALUES
('Consumables_A0', '1', ' -(กล่องสี', ' 762 x 45.', 11, '58.85', '20', '10', '6', '10', 'ศิริปัญญา 520000324', 'eeeee'),
('Consumables_A1', '1', '21', ' 762 x 45.', 11, '85.00', '10', '10', '6', '10', 'Union science วิทย์แพทย์ 54/035821', ''),
('Consumables_A2', '1', '21', '762 x 45.7', 11, '85.00', '8', '10', '2', '10', 'Union scienceงบพยาบาล54/034531', 'งบพยาบาล 54'),
('Consumables_A3', '1', '', '18', 15, '85.00', '10', '17', '0', '10', 'ยูเนี่ยน ซายน์ 57/070585', 'งบปี 57'),
('Consumables_A4', '1', '', ' 762  x 45', 11, '85.60', '30', '10', '16', '10', 'ที.ซี.สถาพร กรุ๊ป IV319/24234', 'งบปี 58'),
('Consumables_A5', '2', ' -', ' -', 0, '99.26', '35', '17', '25', '17', 'Hiat 500137', 'สอบราคาปี 58'),
('Consumables_B0', '3', ' -', '8 x 12 ', 15, '85.00', '40', '18', '0', '', 'คลังครัวเรือนซัพพลาย 06/42', ''),
('Consumables_B1', '3', '22', '8 x 12 ', 15, '85(42.5)', '20', '4', '17', '18', 'คลังครัวเรือนซัพพลาย', ''),
('Consumables_B10', '6', ' - ', '18 x 20', 15, '40.00', '12', '4', '4', '18', 'ร้านเดียว 002/0052', ''),
('Consumables_B11', '7', ' - ', '18 x 20', 15, '48.15', '10', '4', '', '', 'ที.ซี.สถาพร กรุ๊ป IV319/24234', ''),
('Consumables_B12', '6', ' - ', '18 x 20', 15, '65.00', '20', '4', '', '', '', 'เปิดซอง 59'),
('Consumables_B13', '6', ' - ', '28 x 36', 15, '50.00', '10', '4', '0', '', 'คลังครัวเรือนซัพพลาย 06/42', ''),
('Consumables_B14', '7', ' - ', '28 x 36', 15, '48.15', '10', '4', '', '', 'ที.ซี.สถาพร กรุ๊ป IV319/24234', ''),
('Consumables_B15', '6', ' - ', '28 x 36', 15, '59.00', '20', '4', '', '', '', 'เปิดซอง 59'),
('Consumables_B16', '6', ' - ', '30 x 40', 15, '50.00', '10', '4', '0', '', 'คลังครัวเรือนซัพพลาย', ''),
('Consumables_B17', '6', '-', '30 x 40', 15, '59.00', '6 (1pack/1', '4', '5', '18', 'ยูเนี่ยน ซายน์ 56/', ''),
('Consumables_B18', '8', '26', ' -', 0, '4.82', '100', '10', '40', '10', 'ศิริปัญญา 520000325', ''),
('Consumables_B2', '3', '23', '8 x 12 ', 15, '96(48)', '5', '4', '10', '18', 'ที ซี สถาพร IV270/19356', ''),
('Consumables_B3', '4', '', '8 x 12 ', 15, '90.95', '20', '4', '15', '6', 'ที.ซี.สถาพร กรุ๊ป IV319/24234', ''),
('Consumables_B4', '5', '', '8 x 12 ', 15, '110.00', '20', '4', '', '', '', 'เปิดซอง 59'),
('Consumables_B5', '3', '24', '12 x 18 ', 15, '85.00', '20', '4', '0', '', 'คลังครัวเรือนซัพพลาย', ''),
('Consumables_B6', '3', '23', '12 x 18 ', 15, '96.00', '30', '18', '0', '', 'ที ซี สถาพร IV270/19356', ''),
('Consumables_B7', '3', '25', '12 x 18 ', 15, '110(55)', '15', '4', '29', '18', 'ยูเนี่ยน ซายน์ 56/', ''),
('Consumables_B8', '4', '', '12 x 18 ', 15, '90.95', '50', '4', '35', '4', 'ที.ซี.สถาพร กรุ๊ป IV319/24234', ''),
('Consumables_B9', '5', '', '12 x 18 ', 15, '130.00', '15', '4', '', '', '', 'เปิดซอง 59'),
('Consumables_C0', '9', '27', ' -', 0, '68.00', '2', '10', '0', '10', 'Union science วิทยแพทย์ ', ''),
('Consumables_C1', '9', '27', ' -', 0, '68.00', '2', '10', '0', '10', 'Union science งบพยาบาล54', ''),
('Consumables_C10', '13', '31', '450', 2, '117.70', '6', '20', '3', '20', 'ที ซี สถาพร IV292/21544', ''),
('Consumables_C11', '13', '-', '450', 2, '112.35', '5', '20', '5', '20', 'T.C. IV305/22844', ''),
('Consumables_C12', '13', '-', '450', 2, '120.00', '5', '18', '', '', '', 'เปิดซอง 59'),
('Consumables_C13', '14', ' -', 'M', 0, '25.00', '10', '18', '0', '', 'ศิริปัญญา งบวิทย์แพทย์ 54', ''),
('Consumables_C14', '14', '32', 'M', 0, '25.00', '30', '18', '10', '18', 'ศิริปัญญา งบ 55', ''),
('Consumables_C15', '14', '32', 'M', 0, '27.00', '50 (100ก้า', '18', '50', '18', 'ยูเนี่ยน ซายน์ 56/057458', ''),
('Consumables_C16', '14', '-', 'M', 0, '27.00', '40  (100 ก', '18', '40', '18', 'ยูเนี่ยน ซายน์ 57/070585', ''),
('Consumables_C17', '15', '27', '22 x 22 ', 14, '85.60', '20', '10', '0', '10', 'ศิริปัญญา 520000324', ''),
('Consumables_C18', '15', '33', '22 x 22 ', 14, '880.00', '10', '10', '0', '10', 'ศิริปัญญา 510000361', ''),
('Consumables_C19', '15', '33', '22 x 22 ', 14, '160.00', '9', '10', '0', '10', 'ยูเนี่ยน ซายน์ 56/', ''),
('Consumables_C2', '9', '28', ' -', 0, '65(6.5)', '20', '19', '10', '19', 'ศิริปัญญาฯงบพยาบาล 54', ''),
('Consumables_C20', '16', '33', 'dia 18', 0, '370.00', '10', '10', '9', '10', 'ศิริปัญญา 510000361', ''),
('Consumables_C21', '16', '33', 'dia 18', 0, '288.90', '10', '10', '0', '', 'TC.S 215/13890', ''),
('Consumables_C22', '17', '33', '22 x 50 ', 14, '1,615.00', '10', '10', '4', '10', 'ศิริปัญญา 510000361', ''),
('Consumables_C23', '15', '-', '22*22 ', 14, '59.00', '25', '10', '0', '10', 'ศิริปัญญา INV5700000026', ''),
('Consumables_C24', '15', '-', '22*22 ', 14, '21.40', '200 (100 แ', '10', '0', '10', 'T.C. IV305/22844', ''),
('Consumables_C25', '18', '-', '20*26 ', 14, '55.00', '3', '10', '', '', '', 'งบปี 59'),
('Consumables_C26', '19', ' -', ' -', 0, '179.76', '2', '20', '0', '', 'ศิริปัญญา 520000324', ''),
('Consumables_C27', '20', '34', '3', 1, '556.40', '100', '8', '0', '', 'ศิริปัญญา 520000324', ''),
('Consumables_C28', '20', '-', '1.5', 16, '700.00', '1 (100/กล่', '10', '78', '8', 'ยูเนี่ยน ซายน์ 56/057459', ''),
('Consumables_C29', '20', '-', '1.5', 16, '550.00', '2', '10', '', '', '', 'เปิดซอง 59'),
('Consumables_C3', '10', '-', '-', 0, '60.00', '10', '19', '10', '19', 'ศิริปัญญา INV560000243', ''),
('Consumables_C30', '21', '-', '2', 1, '245.00', '100', '8', '', '', 'ยูเนี่ยน ซายน์ 57/066461', ''),
('Consumables_C4', '11', '', '50', 5, '300.00', '2', '18', '', '', 'GIBTHAI CO. SX5703000194', ''),
('Consumables_C5', '12', '29', '450', 2, '66.34', '50', '17', '0', '', 'Hiat 500136', ''),
('Consumables_C6', '12', '29', '400', 2, '51.14', '22', '17', '0', '', 'งบพยาบาล', ''),
('Consumables_C7', '12', '29', '450', 2, '165.00', '44', '17', '0', '17', 'ยูเนี่ยน ซายน์ 56/', ''),
('Consumables_C8', '12', '29', '450', 2, '170.00', '100', '17', '70', '17', 'ยูเนี่ยน ซายน์ 57/070585', ''),
('Consumables_C9', '12', '30', '450', 2, '90.95', '60', '17', '60', '17', 'ที.ซี.สถาพร กรุ๊ป IV319/24234', 'สอบราคาปี 58');

-- --------------------------------------------------------

--
-- Table structure for table `equipment_scrounge`
--

CREATE TABLE `equipment_scrounge` (
  `id_equipement` varchar(30) NOT NULL,
  `name_eng` varchar(100) NOT NULL,
  `name_th` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price/unit` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `remaining(total)` varchar(50) NOT NULL,
  `fiscal_year/no` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipment_scrounge`
--

INSERT INTO `equipment_scrounge` (`id_equipement`, `name_eng`, `name_th`, `brand`, `size`, `price/unit`, `amount`, `remaining(total)`, `fiscal_year/no`, `comment`) VALUES
('Consumables_A0', 'Aluminium foil', 'อะลูมิเนียม ฟอยด์', ' -(กล่องสีขาว)', ' 7.62 m x 45.7 cm', '58.85', '20 กล่อง', '6 กล่อง', 'ศิริปัญญา 520000324', ''),
('Consumables_A1', 'Aluminium foil', 'อะลูมิเนียม ฟอยด์', 'diamond', ' 7.62 m x 45.7 cm', '85.00', '10  กล่อง', '6 กล่อง', 'Union science วิทย์แพทย์ 54/035821', ''),
('Consumables_A2', 'Aluminium foil', 'อะลูมิเนียม ฟอยด์', 'diamond', ' 7.62 m x 45.7 cm', '85.00', '8  กล่อง', '2  กล่อง', 'Union scienceงบพยาบาล54/034531', 'งบพยาบาล 54'),
('Consumables_A3', 'Aluminium foil', 'อะลูมิเนียม ฟอยด์', '', '18 นิ้ว', '85.00', '10 ม้วน', '0 กล่อง', 'ยูเนี่ยน ซายน์ 57/070585', 'งบปี 57'),
('Consumables_A4', 'Aluminium foil', 'อะลูมิเนียม ฟอยด์', '', ' 7.62 m x 45.7 cm', '85.60', '30 กล่อง', '16 กล่อง', 'ที.ซี.สถาพร กรุ๊ป IV319/24234', 'งบปี 58'),
('Consumables_A5', 'Autoclave tape', 'ออโต้เคลฟ เทป', ' -', ' -', '99.26', '35 ม้วน', '25 ม้วน', 'Hiat 500137', 'สอบราคาปี 58'),
('Consumables_B0', 'Bag', 'ถุงพลาสติกร้อนใส', ' -', '8\" x 12 \"', '85.00', '40 แพ็ค', '0', 'คลังครัวเรือนซัพพลาย 06/42', ''),
('Consumables_B1', 'Bag', 'ถุงพลาสติกร้อนใส', 'ปู', '8\" x 12 \"', '85(42.5)', '20kg(40 แพ็ค)', '17 pack', 'คลังครัวเรือนซัพพลาย', ''),
('Consumables_B10', 'Bag', 'ถุงขยะดำ', ' - ', '18\" x 20\"', '40.00', '12 kg=12 pack', '4 pack', 'ร้านเดียว 002/0052', ''),
('Consumables_B11', 'Bag', 'ถุงขยะดำ อย่างหนา', ' - ', '18\" x 20\"', '48.15', '10 kg', '', 'ที.ซี.สถาพร กรุ๊ป IV319/24234', ''),
('Consumables_B12', 'Bag', 'ถุงขยะดำ ', ' - ', '18\" x 20\"', '65.00', '20 kg', '', '', 'เปิดซอง 59'),
('Consumables_B13', 'Bag', 'ถุงขยะดำ', ' - ', '28\" x 36\"', '50.00', '10 kg', '0', 'คลังครัวเรือนซัพพลาย 06/42', ''),
('Consumables_B14', 'Bag', 'ถุงขยะดำ อย่างหนา', ' - ', '28\" x 36\"', '48.15', '10 kg', '', 'ที.ซี.สถาพร กรุ๊ป IV319/24234', ''),
('Consumables_B15', 'Bag', 'ถุงขยะดำ ', ' - ', '28\" x 36\"', '59.00', '20 kg', '', '', 'เปิดซอง 59'),
('Consumables_B16', 'Bag', 'ถุงขยะดำ', ' - ', '30\" x 40\"', '50.00', '10 kg', '0', 'คลังครัวเรือนซัพพลาย', ''),
('Consumables_B17', 'Bag', 'ถุงขยะดำ', '-', '30\" x 40\"', '59.00', '6 kg(1pack/1kg)', '5 pack', 'ยูเนี่ยน ซายน์ 56/', ''),
('Consumables_B18', 'Blade (Razor blade)', 'ใบมีดโกน', 'Laser', ' -', '4.82', '100 กล่องเล็ก', '40 กล่องเล็ก', 'ศิริปัญญา 520000325', ''),
('Consumables_B2', 'Bag', 'ถุงพลาสติกร้อนใส', 'เจ้าสมุทร', '8\" x 12 \"', '96(48)', '5kg(10 แพ็ค)', '10 pack', 'ที ซี สถาพร IV270/19356', ''),
('Consumables_B3', 'Bag', 'ถุงพลาสติกใส อย่างหนา', '', '8\" x 12 \"', '90.95', '20 kg ', '15 kg', 'ที.ซี.สถาพร กรุ๊ป IV319/24234', ''),
('Consumables_B4', 'Bag', 'ถุงพลาสติก', '', '8\" x 12 \"', '110.00', '20 kg ', '', '', 'เปิดซอง 59'),
('Consumables_B5', 'Bag', 'ถุงพลาสติกร้อนใส', 'ดาว', '12\" x 18 \"', '85.00', '20 kg', '0', 'คลังครัวเรือนซัพพลาย', ''),
('Consumables_B6', 'Bag', 'ถุงพลาสติกร้อนใส', 'เจ้าสมุทร', '12\" x 18 \"', '96.00', '30 แพ็ค', '0', 'ที ซี สถาพร IV270/19356', ''),
('Consumables_B7', 'Bag', 'ถุงพลาสติกร้อนใส', 'Aro', '12\" x 18 \"', '110(55)', '15 kg(30pack)', '29 pack', 'ยูเนี่ยน ซายน์ 56/', ''),
('Consumables_B8', 'Bag', 'ถุงพลาสติกใส อย่างหนา', '', '12\" x 18 \"', '90.95', '50 kg ', '35 kg', 'ที.ซี.สถาพร กรุ๊ป IV319/24234', ''),
('Consumables_B9', 'Bag', 'ถุงพลาสติก', '', '12\" x 18 \"', '130.00', '15 kg ', '', '', 'เปิดซอง 59'),
('Consumables_C0', 'Capillary  tube', 'หลอดคาปีลารี่', 'Vitex', ' -', '68.00', '2 กล่อง', '0 กล่อง', 'Union science วิทยแพทย์ ', ''),
('Consumables_C1', 'Capillary  tube', 'หลอดคาปีลารี่', 'Vitex', ' -', '68.00', '2 กล่อง', '0 กล่อง', 'Union science งบพยาบาล54', ''),
('Consumables_C10', 'Cotton', 'สำลีก้อนกลม', 'Jasmine', '450 g', '117.70', '6 ถุง', '3 ถุง', 'ที ซี สถาพร IV292/21544', ''),
('Consumables_C11', 'Cotton', 'สำลีก้อนกลม', '-', '450 g', '112.35', '5 ถุง', '5 ถุง', 'T.C. IV305/22844', ''),
('Consumables_C12', 'Cotton', 'สำลีก้อนกลม', '-', '450 g', '120.00', '5 แพ็ค', '', '', 'เปิดซอง 59'),
('Consumables_C13', 'Cotton swab', 'ไม้พันสำลี', ' -', 'M', '25.00', '10 แพ็ค', '0', 'ศิริปัญญา งบวิทย์แพทย์ 54', ''),
('Consumables_C14', 'Cotton swab', 'ไม้พันสำลี', 'HI-VAN', 'M', '25.00', '30 แพ็ค', '10 แพ็ค', 'ศิริปัญญา งบ 55', ''),
('Consumables_C15', 'Cotton swab', 'ไม้พันสำลี', 'HI-VAN', 'M', '27.00', '50 แพ็ค(100ก้าน/แพ็ค)', '50 แพ็ค', 'ยูเนี่ยน ซายน์ 56/057458', ''),
('Consumables_C16', 'Cotton swab ', 'ไม้พันสำลี', '-', 'M', '27.00', '40 แพ็ค (100 ก้าน/แพ็ค)', '40 แพ็ค', 'ยูเนี่ยน ซายน์ 57/070585', ''),
('Consumables_C17', 'Cover glass', 'กระจกปิดสไลด์', 'Viteg', '22 x 22 mm', '85.60', '20 กล่อง', '0 กล่อง', 'ศิริปัญญา 520000324', ''),
('Consumables_C18', 'Cover glass', 'กระจกปิดสไลด์', 'Menzel-Glaser', '22 x 22 mm', '880.00', '10 กล่องใหญ่', '0 กล่องใหญ่', 'ศิริปัญญา 510000361', ''),
('Consumables_C19', 'Cover glass', 'กระจกปิดสไลด์', 'Menzel-Glaser', '22 x 22 mm', '160.00', '9 กล่องเล็ก', '0 กล่อง', 'ยูเนี่ยน ซายน์ 56/', ''),
('Consumables_C2', 'Capillary  tube', 'หลอดคาปีลารี่', 'Hirchman', ' -', '65(6.5)', '2 กล่อง(20หลอด)', '1 กล่อง(10หลอด)', 'ศิริปัญญาฯงบพยาบาล 54', ''),
('Consumables_C20', 'Cover glass', 'กระจกปิดสไลด์ แบบกลม', 'Menzel-Glaser', 'dia 18', '370.00', '10 กล่องใหญ่', '9 กล่องใหญ่', 'ศิริปัญญา 510000361', ''),
('Consumables_C21', 'Cover glass', 'กระจกปิดสไลด์ แบบกลม', 'Menzel-Glaser', 'dia 18', '288.90', '10 กล่องใหญ่', '0', 'TC.S 215/13890', ''),
('Consumables_C22', 'Cover glass', 'กระจกปิดสไลด์แบบยาว', 'Menzel-Glaser', '22 x 50 mm', '1,615.00', '10 กล่องใหญ่', '4 กล่องใหญ่', 'ศิริปัญญา 510000361', ''),
('Consumables_C23', 'Cover glass', 'กระจกปิดสไลด์', '-', '22*22 mm', '59.00', '25 กล่อง', '0 กล่อง', 'ศิริปัญญา INV5700000026', ''),
('Consumables_C24', 'cover glass', 'กระจกปิดสไลด์', '-', '22*22 mm', '21.40', '200 กล่อง (100 แผ่น/กล่อง)', '0 กล่อง', 'T.C. IV305/22844', ''),
('Consumables_C25', 'cover glass', 'กระจกปิดสไลด์สำหรับ Hemacytometer ', '-', '20*26 mm', '55.00', '3 กล่อง', '', '', 'งบปี 59'),
('Consumables_C26', 'Cord', 'ไส้ตะเกียงแอลกอฮอล์', ' -', ' -', '179.76', '2 ถุง', '0', 'ศิริปัญญา 520000324', ''),
('Consumables_C27', 'Cuvette (plastic)', 'คิวเวตต์พลาสติก', 'Kuvetten', ' 3 ml', '556.40', '1 pack (100 ชิ้น)', '0', 'ศิริปัญญา 520000324', ''),
('Consumables_C28', 'Cuvette (plastic)', 'คิวเวตต์พลาสติก', '-', '1.5 CC', '700.00', '1 กล่อง(100/กล่อง)', '78ชิ้น', 'ยูเนี่ยน ซายน์ 56/057459', ''),
('Consumables_C29', 'Cuvette (plastic)', 'คิวเวตต์พลาสติก', '-', '1.5 CC', '550.00', '2 กล่อง', '', '', 'เปิดซอง 59'),
('Consumables_C3', 'Capillary  tube/Haematokrit tube', 'หลอดคาปีลารี่', '-', '-', '60.00', '10 หลอด', '10 หลอด', 'ศิริปัญญา INV560000243', ''),
('Consumables_C30', 'Cyovial', 'ไคโอไวแอล', '-', '2 ml', '245.00', '1 แพ็ค (100 ชิ้น/แพ็ค)', '', 'ยูเนี่ยน ซายน์ 57/066461', ''),
('Consumables_C4', 'Centrifuge tube', 'เซนตริฟิวก์ทิวป์', '', '50 µl', '300.00', '2 แพ็ค', '', 'GIBTHAI CO. SX5703000194', ''),
('Consumables_C5', 'Cotton', 'สำลีม้วน', 'รถพยาบาล', ' 450 g', '66.34', '50 ม้วน', '0', 'Hiat 500136', ''),
('Consumables_C6', 'Cotton', 'สำลีม้วน', 'รถพยาบาล', '400 g', '51.14', '22 ม้วน', '0', 'งบพยาบาล', ''),
('Consumables_C7', 'Cotton', 'สำลีม้วน', 'รถพยาบาล', '450 g', '165.00', '44 ม้วน', '0 ม้วน', 'ยูเนี่ยน ซายน์ 56/', ''),
('Consumables_C8', 'Cotton', 'สำลีม้วน', 'รถพยาบาล', '450 g', '170.00', '100 ม้วน', '70 ม้วน', 'ยูเนี่ยน ซายน์ 57/070585', ''),
('Consumables_C9', 'cotton', 'สำลีม้วน', 'ตรานก', '450 g', '90.95', '60 ม้วน', '60 ม้วน', 'ที.ซี.สถาพร กรุ๊ป IV319/24234', 'สอบราคาปี 58'),
('Consumables_D0', 'Amikacin disc', 'แผ่นดิสยาอะมิคาซิน', 'Oxoid', '-', '145.00', '5 vial', '5 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D1', 'Amikacin disc', 'แผ่นดิสยาอะมิคาซิน', 'Oxoid', '30 µg', '135.00', '3 vial', '', '', 'งบปี 59'),
('Consumables_D10', 'Ampicillin disc', 'แผ่นดิสยาแอมพิซิลิน', 'Oxoid', '30 µg', '143.00', '10 vial (50disc/vial)', '5 vial', 'แบงเทรดดิ้ง 1992 จำกัด', 'งบปี 58'),
('Consumables_D11', 'Ampicillin disc', 'แผ่นดิสยาแอมพิซิลิน', 'Oxoid', '10 µg', '135.00', '2 vial', '', '', 'งบปี 59'),
('Consumables_D12', 'Ampicillin sulbactam disc', 'แผ่นดิสยาแอมพิซิลิน ซัลแบคเทม ', 'Oxoid', ' -', '145.00', '5 vial', '5 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D13', 'Ampicillin sulbactam disc', 'แผ่นดิสยาแอมพิซิลิน ซัลแบคเทม ', 'Oxoid', '20 µg', '135.00', '2 vial', '', '', 'งบปี 59'),
('Consumables_D14', 'Bacitracin disc', 'แผ่นดิสยาบาสิทราซิน ', 'Oxoid', ' -', '749.00', '1pack (5 vial)', '0', 'S-Sci 50-287', ''),
('Consumables_D15', 'Bacitracin disc', 'แผ่นดิสยาบาสิทราซิน ', 'Oxoid', ' -', '850.00', '1pack (5 vial)', '5 vial', 'ศิริปัญญา  วิทย์แพทย์ 54', ''),
('Consumables_D16', 'Bacitracin disc', 'แผ่นดิสยาบาสิทราซิน ', 'Oxoid', ' -', '850.00', '1pack (5 vial)', '0 vial', 'งบพยาบาล54', ''),
('Consumables_D17', 'Bacitracin disc', 'แผ่นดิสยาบาสิทราซิน ', 'Oxoid', ' 0.04 U', '135.00', '2 vial', '', '', 'งบปี 59'),
('Consumables_D18', 'Cefalotin disc', 'แผ่นดิสยาเซฟาโลติน ', 'Oxoid', '30 µg', '135.00', '3 vial', '', '', 'งบปี 59'),
('Consumables_D19', 'Cefpime disc', 'แผ่นดิสยาเซฟีพริม', 'Oxoid', ' -', '145.00', '5 vial', '4 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D2', 'Amoxycillin disc', 'แผ่นดิสยาอะม็อคซี่ซิลีน', 'Oxoid', '10 µg', '135.00', '3 vial', '', '', 'งบปี 59'),
('Consumables_D20', 'Cefotaxime', 'แผ่นดิสยาเซโฟทาซิม', 'Oxoid', ' -', '145.00', '5 vial', '3 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D21', 'Cefotaxime', 'แผ่นดิสยาเซโพแทคซีม', 'Oxoid', '30 µg', '139.10', '5 vial', '5 vial', 'T.C. IV303/22625', 'งบปี 57'),
('Consumables_D22', 'Cefotaxime disc', 'แผ่นดิสยาเซโพแทคซีม', 'Oxoid', '30 µg', '135.00', '2 vial', '', '', 'งบปี 59'),
('Consumables_D23', 'Ceftazidime', 'แผ่นดิสยาเซฟต้าซิดีม', 'Oxoid', '30 µg', '139.10', '5 vial', '5 vial', 'T.C. IV303/22625', 'งบปี 57'),
('Consumables_D24', 'Ceftazidime', 'แผ่นดิสยาเซฟต้าซิดีม', 'Oxoid', '30 µg', '135.00', '2 vial', '', '', 'งบปี 59'),
('Consumables_D25', 'Ceftriaxone', 'แผ่นดิสยาเซฟไดรอาโซน', 'Oxoid', '30 µg', '139.10', '2 vial', '2 vial', 'T.C. IV303/22625', 'งบปี 57'),
('Consumables_D26', 'Chloramphenical disc', 'แผ่นดิสยาคลอแรมฟีนิคอล ', 'Oxoid', ' -', '738.3(267.5)', '1pack (5 vial)', '0 vial', 'S-Sci 50-287', ''),
('Consumables_D27', 'Chloramphenical disc', 'แผ่นดิสยาคลอแรมฟีนิคอล ', 'Oxoid', ' -', '850(170)', '1pack (5 vial)', '5 vial', 'ศิริปัญญา  วิทย์แพทย์ 54', ''),
('Consumables_D28', 'Chloramphenical disc', 'แผ่นดิสยาคลอแรมฟีนิคอล ', 'Oxoid', ' -', '147.00', '5 vial', '0 vial', 'ศิริปัญญา  530000498', ''),
('Consumables_D29', 'Chloramphenical disc', 'แผ่นดิสยาคลอแรมฟีนิคอล ', 'Oxoid', ' -', '170.00', '5 vial', '4 vial', 'งบพยาบาล54', ''),
('Consumables_D3', 'Amoxicillin/Clavulanic acid disc', 'แผ่นดิสยาอะม็อคซี่ซิลีน/คลาวูลานิก เอซิค (อ๊อกซอยด์)', 'Oxoid', '-', '139.10', '2 vial', '2 vial', 'T.C. IV303/22625', 'งบปี 57'),
('Consumables_D30', 'Chloramphenical disc', 'แผ่นดิสยาคลอแรมฟีนิคอล ', 'Oxoid', ' -', '145.00', '2 vial', '0 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D31', 'Chloramphenical disc', 'แผ่นดิสยาคลอแรมฟีนิคอล ', 'Oxoid', '30 µg', '139.10', '2 vial', '0 vial', 'T.C. IV305/22844', ''),
('Consumables_D32', 'Chloramphenical disc', 'แผ่นดิสยาคลอแรมฟีนิคอล ', 'Oxoid', '30 µg', '135.00', '7 vial', '', '', 'งบปี 59'),
('Consumables_D33', 'Ciprofloxacin', 'แผ่นดิสยาซิโปรฟอกซาซิน', 'Oxoid', ' -', '145.00', '2 vial', '0 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D34', 'Ciprofloxacin disc', 'แผ่นดิสยา ซิโปโพลซาซิน', 'Oxoid', '-', '139.10', '2 vial', '2 vial', 'T.C. Iv305/22844', ''),
('Consumables_D35', 'Ciprofloxacin disc', 'แผ่นดิสยา ซิโปโพลซาซิน', 'Oxoid', '5 µg', '135.00', '7 vial', '', '', 'งบปี 59'),
('Consumables_D36', 'DD1 Optochin', 'แผ่นดิสยา ดีดีวัน ออปโทซิน', 'Oxoid', '', '', '', '3 vial', '', 'งบปี 54'),
('Consumables_D37', 'Enrofloxacin disc', 'แผ่นดิสยา เอนโรฟอกซาซิน', 'Oxoid', '5 µg', '135.00', '1 vial', '', '', 'งบปี 59'),
('Consumables_D38', 'Erythromycin disc', 'แผ่นดิสยาอีริโทรมัยซิน ', 'Oxoid', ' -', '749.00', '1pack (5 vial)', '0 vial', 'S-Sci 50-287', ''),
('Consumables_D39', 'Erythromycin disc', 'แผ่นดิสยาอีริโทรมัยซิน ', 'Oxoid', ' -', '148.00', '5 vial', '3 vial', 'ศิริปัญญา  530000498', ''),
('Consumables_D4', 'Amoxicillin/Clavulanic acid disc 2:1', 'แผ่นดิสยาอะม็อคซี่ซิลีน/คลาวูลานิก เอซิค (อ๊อกซอยด์)', 'Oxoid', '30 µg', '135.00', '4 vial', '', '', 'งบปี 59'),
('Consumables_D40', 'Erythromycin disc', 'แผ่นดิสยาอีริโทรมัยซิน ', 'Oxoid', '10 µg', '143.00', '5 vial (50disc/vial)', '5 vial', 'แบงเทรดดิ้ง 1992 จำกัด', ''),
('Consumables_D41', 'Gentamycin disc', 'แผ่นดิสยาเจ็นต้ามัยซิน', 'Oxoid', ' -', '738.30', '1pack (5 vial)', '0', 'S-Sci 50-287', ''),
('Consumables_D42', 'Gentamycin disc', 'แผ่นดิสยาเจ็นต้ามัยซิน', 'Oxoid', ' -', '850(170)', '1pack (5 vial)', '4 vial', 'ศิริปัญญา  วิทย์แพทย์ 54', ''),
('Consumables_D43', 'Gentamycin disc', 'แผ่นดิสยาเจ็นต้ามัยซิน', 'Oxoid', ' -', '850(170)', '1pack (5 vial)', '3 vial', 'งบพยาบาล54', ''),
('Consumables_D44', 'Gentamycin disc', 'แผ่นดิสยาเจ็นต้ามัยซิน', 'Oxoid', ' -', '145.00', '2 vial', '2 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D45', 'Gentamycin disc', 'แผ่นดิสยาเจ็นต้ามัยซิน', 'Oxoid', '10 µg', '143.00', '10 vial (50disc/vial)', '5 vial', 'แบงเทรดดิ้ง 1992 จำกัด', ''),
('Consumables_D46', 'Imipenem disc', 'แผ่นดิสยาไอมิเพเนม', 'Oxoid', '10 µg', '135.00', '7 vial', '', '', 'งบปี 59'),
('Consumables_D47', 'Kanamycin disc', 'แผ่นดิสยากานามัยซิน', 'Oxoid', ' -', '850.00', '1pack (5 vial)', '2  vial', 'ศิริปัญญา  วิทย์แพทย์ 54', ''),
('Consumables_D48', 'Kanamycin disc', 'แผ่นดิสยากานามัยซิน', 'Oxoid', ' -', '148.00', '5 vial', '0 vial', 'ศิริปัญญา 530000498', ''),
('Consumables_D49', 'Kanamycin disc', 'แผ่นดิสยากานามัยซิน', 'Oxoid', ' -', '850(170)', '1pack (5 vial)', '3 vial', 'งบพยาบาล54 INV540000346', ''),
('Consumables_D5', 'Ampicillin disc', 'แผ่นดิสยาแอมพิซิลิน ', 'Oxoid', ' -', '735.00', '1pack (5 vial)', '0 vial', 'ศิริปัญญา 530000498', ''),
('Consumables_D50', 'Kanamycin disc', 'แผ่นดิสยากานามัยซิน', 'Oxoid', ' -', '145.00', '2 vial', '2 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D51', 'Kanamycin disc ', 'แผ่นดิสยากานามัยซิน', 'Oxoid', '30 µg', '139.10', '3 vial', '3 vial', 'T.C. IV305/22844', 'งบปี 57'),
('Consumables_D52', 'Kanamycin disc ', 'แผ่นดิสยากานามัยซิน', 'Oxoid', '30 µg', '143.00', '5 vial', '5 vial', 'แบงเทรดดิ้ง 1992 จำกัด', ''),
('Consumables_D53', 'Levofloxacin disc', 'แผ่นดิสยาเลโวฟร๊อกซาซิน', 'Oxoid', ' -', '145.00', '5 vial', '3 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D54', 'Merepemem disc', 'แผ่นดิสยาเมรีเพนเนม ', 'Oxoid', ' -', '145.00', '5 vial', '3 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D55', 'Meropenem disc', 'แผ่นดิสยามีโรเพเนม', 'Oxoid', '30 µg', '135.00', '7 vial', '', '', 'งบปี 59'),
('Consumables_D56', 'Nalidixic acid disc', 'แผ่นดิสยานาลิไดซิคเอซิด', 'Oxoid', ' -', '145.00', '2 vial', '2 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D57', 'Nalidixic acid disc', 'แผ่นดิสยานาลิดิซิค เอซิค', 'Oxoid', '30 µg', '139.10', '2 vial', '2 vial', 'T.C. IV305/22844', 'งบปี 57'),
('Consumables_D58', 'Nitrofurantoin disc', 'แผ่นดิสยาไนโตรฟูแรนโทอิน', 'Oxoid', '30 µg', '135.00', '1 vial', '', '', 'งบปี 59'),
('Consumables_D59', 'Novobiocin disc', 'แผ่นดิสยาโนโวไบโอซิน', 'Oxoid', '30 µg', '135.00', '2 vial', '', '', 'งบปี 59'),
('Consumables_D6', 'Ampicillin disc', 'แผ่นดิสยาแอมพิซิลิน ', 'Oxoid', ' -', '850(170)', '1pack (5 vial)', '1 vial', 'ศิริปัญญา วิทย์แพทย์ 54', ''),
('Consumables_D60', 'ONPG disc', 'แผ่นดิสยาโอ เอ็น พี จี', 'Oxoid', ' -', '920.20', '2 vial', '1 vial', 'โมเลค เคมิคอล 0707004', ''),
('Consumables_D61', 'ONPG disc', 'แผ่นดิสยาโอ เอ็น พี จี', 'Oxoid', 'DD 13', '780.00', '2 vial', '', '', 'งบปี 59'),
('Consumables_D62', 'Optochin disc', 'แผ่นดิสยา ออบโตชิน', 'Oxoid', ' -', '567(113.4)', '5 vial', '1 vial', 'ศิริปัญญา  530000498', ''),
('Consumables_D63', 'Optochin disc', 'แผ่นดิสยา ออบโตชิน', 'Oxoid', ' -', '725(145)', '1pack (5 vial)', '5 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D64', 'Oxinic acid dksc (Oxolinic acid)', 'แผ่นดิสยาออกซินิก เอซิค', 'Oxoid', '2 µg', '135.00', '1 vial', '', '', 'งบปี 59'),
('Consumables_D65', 'Penicillin disc', 'แผ่นดิสยาเพนนิซิลลิน', 'Oxoid', ' -', '770(154)', '1pack (5 vial)', '1 vial', 'ศิริฯ 520000325', ''),
('Consumables_D66', 'Penicillin disc', 'แผ่นดิสยาเพนนิซิลลิน', 'Oxoid', ' -', '850.00', '1pack (5 vial)', '0 vial', 'ศิริปัญญา  วิทย์แพทย์ 54', ''),
('Consumables_D67', 'Penicillin disc', 'แผ่นดิสยาเพนนิซิลลิน', 'Oxoid', ' -', '147.00', '5 vial', '0 vial', 'ศิริปัญญา  530000498', ''),
('Consumables_D68', 'Penicillin disc', 'แผ่นดิสยาเพนนิซิลลิน', 'Oxoid', ' -', '850.00', '1pack (5 vial)', '5 vial', 'งบพยาบาล54', ''),
('Consumables_D69', 'Penicillin G disc', 'แผ่นดิสยาเพนนิซิลลิน จี', 'Oxoid', '10 µg', '135.00', '5 vial', '', '', 'งบปี 59'),
('Consumables_D7', 'Ampicillin disc', 'แผ่นดิสยาแอมพิซิลิน ', 'Oxoid', ' -', '850.00', '1pack (5 vial)', '5 vial', 'งบพยาบาล 54', ''),
('Consumables_D70', 'Polymyxin B', 'แผ่นดิสยาโพลีมิกซิน บี', 'Oxoid', '300 Unit', '135.00', '2 vial', '', '', 'งบปี 59'),
('Consumables_D71', 'Sterptomycin disc', 'แผ่นดิสยาสเตรบโตมัยซิน', 'Oxoid', '-', '145.00', '2 vial', '1 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D72', 'Streptomycin disc', 'แผ่นดิสยาสเต็ปโตมัยซิน', 'Oxoid', '10 µg', '139.10', '2 vial', '2 vial', 'T.C. IV305/22844', 'งบปี 57'),
('Consumables_D73', 'Streptomycin disc', 'แผ่นดิสยาสเต็ปโตมัยซิน', 'Oxoid', '10 µg', '135.00', '10 vial ', '', '', 'งบปี 59'),
('Consumables_D74', 'Sulphamethoxazole disc = Cotrimoxazole disc', 'แผ่นดิสยาซัลฟาเมโทซาโซล', 'Oxoid', ' -', '1,337.50', '1pack (5 vial)', '5 vial', 'โมเลค เคมิคอล 0707004', ''),
('Consumables_D75', 'Tetracycline disc', 'แผ่นดิสยาเตตร้าไซคลิน', 'Oxoid', ' -', '770.40', '1pack (5 vial)', '0', 'S-Sci 50-287', ''),
('Consumables_D76', 'Tetracycline disc', 'แผ่นดิสยาเตตร้าไซคลิน', 'Oxoid', ' -', '145.00', '2 vial', '2 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D77', 'Tetracycline disc', 'แผ่นดิสยาเตตร้าไซคลิน', 'Oxoid', ' -', '147.00', '5 vial', '0 vial', 'ศิริปัญญา  530000498', ''),
('Consumables_D78', 'Tetracycline disc ', 'แผ่นดิสยาเตตตะไซคิน', 'Oxoid', '30 µg', '139.10', '2 vial', '2 vial', 'T.C. IV305/22844', 'งบปี 57'),
('Consumables_D79', 'Tetracycline disc ', 'แผ่นดิสยาเตตตะไซคิน', 'Oxoid', '30 µg', '135.00', '2 vial', '', '', 'งบปี 59'),
('Consumables_D8', 'Ampicillin disc', 'แผ่นดิสยาแอมพิซิลิน ', 'Oxoid', ' -', '145.00', '2 vial', '0 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D80', 'Ticarcillin clavulanic acid disc', 'แผ่นดิสยาเตตร้าไซคลิน', 'Oxoid', ' -', '145.00', '5 vial', '5 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D81', 'Trimaethoprim/Sulfamethoxazole', 'แผ่นดิสยาไตรแมโทรพริม ซัลฟาแมโทรซาโซล', 'Oxoid', ' -', '145.00', '2 vial', '2 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D82', 'Trimaethoprim/Sulfamethoxazole', 'แผ่นดิสยาไตรเมทโทรพรีม-ซันฟาเมทท็อคซาโซล', 'Oxoid', '-', '139.10', '2 vial', '2 vial', 'T.C. IV305/22844', 'งบปี 57'),
('Consumables_D83', 'Trimaethoprim/Sulfamethoxazole', 'แผ่นดิสยาไตรเมทโทรพรีม-ซันฟาเมทท็อคซาโซล', 'Oxoid', '25 µg', '135.00', '2 vial', '', '', 'งบปี 59'),
('Consumables_D84', 'Vancomycin disc', 'แผ่นดิสยาแวนโคมัยซิน', 'Oxoid', ' -', '145.00', '5 vial', ' 4 vial', 'ศิริปัญญา  INV550000409', ' งบปี 55'),
('Consumables_D85', 'Vancomycin disc', 'แผ่นดิสยาแวนโคมัยซิน', 'Oxoid', '30 µg', '135.00', '2 vial', '', '', 'งบปี 59'),
('Consumables_D9', 'Ampicillin disc', 'แผ่นดิสยาแอมพิซิลิน', 'Oxoid', '10 µg', '139.10', '5 vial', '3 vial', 'T.C. IV305/22844', 'งบปี 57'),
('Consumables_F0', 'Filter', 'แผ่นกรองฝุ่นละออง', '3 M', ' -', '360.00', '10 ชิ้น ', ' 9 ชิ้น', 'เอคเสคคิวทีฟ 188-4907', ''),
('Consumables_F1', 'Filter paper No. 1', 'กระดาษกรอง No. 1', 'Whatman', 'dia. 47 mm', '265.00', ' -', '3 กล่อง', 'BT 50-10973', ''),
('Consumables_F10', 'Filter paper No. 3', 'กระดาษกรอง No. 3', 'Whatman', 'dia. 90 mm', '540.00', '3 กล่อง', '1 กล่อง', 'BT 50-10973', ''),
('Consumables_F11', 'Filter paper No. 4', 'กระดาษกรอง No. 4', 'Whatman', 'dia. 70 mm', '225.00', '1 กล่อง', '1 กล่อง', 'BT 50-10973', 'มีนอกสต๊อกอีก 3 กล่อง'),
('Consumables_F12', 'Filter paper No. 4', 'กระดาษกรอง No. 4', 'Whatman', 'dia. 90 mm', '255.00', '10 กล่อง', '7 กล่อง', 'BT 50-10973', ''),
('Consumables_F13', 'Filter paper No. 5', 'กระดาษกรอง No. 5', 'Whatman', 'dia. 90 mm', '305.00', '7 กล่อง', '7 กล่อง', 'BT 50-10974', ''),
('Consumables_F14', 'Filter paper No. 5', 'กระดาษกรอง No. 5', 'Whatman', 'dia. 90 mm', '305.00', '3 กล่อง', '2 กล่อง', 'BT 50-10974', ''),
('Consumables_F15', 'Filter paper No. 41', 'กระดาษกรอง No. 41', 'Whatman', 'dia. 110 mm', '781.10', '2 กล่อง', '2 กล่อง', 'S-Sci 49-448', ''),
('Consumables_F16', 'Filter paper No. 42', 'กระดาษกรอง No. 42', 'Whatman', 'dia. 90 mm', '538.00', ' -', '1 กล่อง', 'NT 46/2286', ''),
('Consumables_F17', 'Filter paper No. 42', 'กระดาษกรอง No. 42', 'Whatman', 'dia. 110 mm', '652.70', '2 กล่อง', '2 กล่อง', 'S-Sci 49-448', ''),
('Consumables_F18', 'Filter paper bacteria', 'กระดาษกรองแบคทีเรีย', '-', '0.45 µm', '2,280.00', '3 แพ็ค', '', 'ยูเนี่ยน ซายน์ 57/070589', ''),
('Consumables_F19', 'Filter paper bacteria', 'กระดาษกรองแบคทีเรีย', '-', '0.45 µm', '2,200.00', '2 กล่อง (100แผ่น/กล่อง)', '', '', 'งบปี 59'),
('Consumables_F2', 'Filter paper No. 1', 'กระดาษกรอง No. 1', 'Wintech', 'dia. 70 mm', '110.00', '20 กล่อง', '9 กล่อง', 'ศิริปัญญา 510000306', ''),
('Consumables_F20', 'Filter paper nylon membrane 0.2 µm', 'กระดาษกรองไนลอนเมมเบรน0.2 µm', 'Whatman', 'dia. 25mm', '3,800.00', '1 กล่อง', '1 กล่อง', 'BT 50-10973', ''),
('Consumables_F21', 'Filter paper nylon membrane 0.45µm', 'กระดาษกรองไนลอนเมมเบรน0.45 µm', 'Filtrex', 'dia. 13 mm', '802.50', '3 กล่อง', '3 กล่อง', 'TC_S 213-13688', ''),
('Consumables_F22', 'Filter paper WCN membrane WP 0.2 µm', 'กระดาษกรอง WCN membrane WP 0.2 µm', 'Whatman', 'dia. 25 mm', '2,033.00', '1 กล่อง', '0 กล่อง', 'BT 50-10973', ''),
('Consumables_F23', 'Membrane fiter 0.45 µm', 'กระกรองเมมเบรน', 'Whatman', 'dia. 47 mm', '2,200.00', '2 กล่อง', '1 กล่อง', 'BT 50-10973', ''),
('Consumables_F24', 'Membrane fiter 0.45 µm', 'กระกรองเมมเบรน', 'Whatman', 'dia. 25 mm', '2,140.00', '1 กล่อง', '1 กล่อง', 'BT 50-10973', ''),
('Consumables_F25', 'Filter  WP 0.45 µm', 'กระดาษกรองไซริ้ง', 'Wintech', 'dia. 30 mm', '1,600.00', '1 กล่อง( 50 ชิ้น)', '0 กล่อง', 'ศิริปัญญา งบ 54', ''),
('Consumables_F26', 'Filter  WP 0.45 µm', 'กระดาษกรองไซริ้ง', 'Wintech', 'dia. 30 mm', '1,600.00', '1 กล่อง( 50 ชิ้น)', '0 กล่อง', 'ศิริปัญญา พยาบาล 54', ''),
('Consumables_F27', 'Membrane filter cellulose acetate', 'กระดาษกรอง cellulose acetate', 'Wintech', 'dia. 47 mm', '2,560.00', '10 กล่อง', '10 กล่อง', 'ศิริปัญญา 510000361', ''),
('Consumables_F28', 'Filter disc / Syringe filter', 'ตัวกรองแบคทีเรีย 0.22 ไมโครเมตร', '-', 'dia. 25 mm', '2300(46)', '1 กล่อง(50ชิ้น/กล่อง)', '0 ชิ้น', 'ยูเนี่ยน ซายน์ 56/061137', 'ยูเนี่ยน ซายน์56/057459'),
('Consumables_F29', 'Filter disc / Syringe filter', 'ตัวกรองแบคทีเรีย 0.45 ไมโครเมตร', '-', 'dia. 25 mm', '2300(46)', '1 กล่อง(50ชิ้น/กล่อง)', '0 ชิ้น', 'ยูเนี่ยน ซายน์ 56/061137', ''),
('Consumables_F3', 'Filter paper No. 1', 'กระดาษกรอง No. 1', 'Wintech', 'dia. 90 mm', '130.00', '20 กล่อง', '19 กล่อง', 'ศิริปัญญา 510000306', ''),
('Consumables_F30', 'Glass Microfiber fillers GF/C', 'กระดาษกรอง GF/C ขนาด 47 มิลลิเมตร', 'Whatman', 'dia. 47 mm', '1,150.00', '1 กล่อง', '1 กล่อง', 'ยูเนี่ยน ซายน์ 56/061137', ''),
('Consumables_F31', 'Glass Microfiber Filters', 'กระดาษกรอง GF/C', '', '47 mm (pore size 1.2 micron', '749.00', '10 กล่อง (100ชิ้น/กล่อง)', '', 'ที.ซี.สถาพร กรุ๊ป IV319/24223', 'ตกลงราคาปี 58'),
('Consumables_F4', 'Filter paper No. 1', 'กระดาษกรอง No. 1', 'Whatman', 'dia. 90 mm', '164.00', '6 กล่อง', '1 กล่อง', 'S-Sci 49-448', ''),
('Consumables_F5', 'Filter paper No. 1', 'กระดาษกรอง No. 1', 'Whatman', 'dia. 90 mm', '175.00', '4 กล่อง', '2 กล่อง', 'BT 50-10973', ''),
('Consumables_F6', 'Filter paper No. 1', 'กระดาษกรอง No. 1', 'Wintech', 'dia. 150 mm', '170.00', '15 กล่อง', '9 กล่อง', 'ศิริปัญญา 510000306', ''),
('Consumables_F7', 'Filter paper No. 1', 'กระดาษกรอง No. 1', 'Whatman', 'dia. 150 mm', '308.16', '20 กล่อง', '18 กล่อง', 'BT 52-09868', ''),
('Consumables_F8', 'Filter paper No. 2', 'กระดาษกรอง No. 2', 'Whatman', 'dia. 90 mm', '260.00', ' -', '2 กล่อง', 'BT 50-10973', ''),
('Consumables_F9', 'Filter paper No. 2', 'กระดาษกรอง No. 2', 'Whatman', 'dia. 125 mm', '405.00', ' -', '1 กล่อง', 'NT 57/2830', ''),
('Consumables_G0', 'Glove', 'ถุงมือผ่าตัด', 'Sempermed', 'size S', '128.00', '100 กล่อง(100/กล่อง)', '78 กล่อง', 'ยูเนี่ยน ซายน์ 56/057458', 'งบปี 56'),
('Consumables_G1', 'Glove', 'ถุงมือผ่าตัด', '', 'size S', '94.16', '125 กล่อง', '125 กล่อง', 'ที.ซี.สถาพร กรุ๊ป IV319/24223', 'สอบราคาปี 58'),
('Consumables_G10', 'Glove', 'ถุงมือทางการแพทย์ แบบไม่มีแป้ง', '-', 'size S', '125.00', '10 กล่อง (50 คู่/กล่อง)', '', '', 'เปิดซอง 59'),
('Consumables_G11', 'Glove', 'ถุงมือทางการแพทย์ แบบไม่มีแป้ง', '-', 'size M', '125.00', '10 กล่อง (50 คู่/กล่อง)', '', '', 'เปิดซอง 59'),
('Consumables_G12', 'Glass rod', 'แท่งแก้วกรวง', '-', ' -', '550.00', '1 กล่อง', '0 กล่อง', 'ศิริปัญญา 530000498', ''),
('Consumables_G13', 'Gas pack', 'แก๊สแพ็ค', 'Merck', ' -', '1,530.00', '10 กล่อง', '0 กล่อง', 'ศิริปัญญา วิทย์แพทย์ 54', ''),
('Consumables_G2', 'Glove', 'ถุงมือผ่าตัด', 'Hycare', 'size M', '90.95', '20 กล่อง', '0 กล่อง', 'TC_S 243/16668', ''),
('Consumables_G3', 'Glove', 'ถุงมือผ่าตัด', 'Sempermed', 'size M', '128.00', '90 กล่อง(100/กล่อง)', '83 กล่อง', 'ยูเนี่ยน ซายน์ 56/057458', 'งบปี 56'),
('Consumables_G4', 'Glove', 'ถุงมือผ่าตัด', '', 'size M', '94.16', '55 กล่อง(100/กล่อง)', '55 กล่อง', 'ที.ซี.สถาพร กรุ๊ป IV319/24223', 'สอบราคาปี 58'),
('Consumables_G5', 'Glove', 'ถุงมือผ่าตัด', 'Sempermed', 'size L', '128.00', '10 กล่อง(100/กล่อง)', '9 กล่อง', 'ยูเนี่ยน ซายน์ 56/057458', 'งบปี 56'),
('Consumables_G6', 'Glove', 'ถุงมือผ่าตัด', '', 'size L', '94.16', '10 กล่อง(100/กล่อง)', '10 กล่อง', 'ที.ซี.สถาพร กรุ๊ป IV319/24223', 'สอบราคาปี 58'),
('Consumables_G7', 'Glove', 'ถุงมือดีสโพส', '-', 'size S', '120.00', '150 กล่อง (100 ชิ้น/กล่อง)', '4 กล่อง', 'ยูเนี่ยน ซายน์ 57/070585', 'งบปี 57'),
('Consumables_G8', 'Glove', 'ถุงมือดีสโพส', '-', 'size M', '120.00', '30 กล่อง (100 ชิ้น/กล่อง)', '2 กล่อง', 'ยูเนี่ยน ซายน์ 57/070585', 'งบปี 57'),
('Consumables_G9', 'Glove', 'ถุงมือดีสโพส', '-', 'size L', '120.00', '20 กล่อง (100 ชิ้น/กล่อง)', '1 กล่อง', 'ยูเนี่ยน ซายน์ 57/070585', 'งบปี 57'),
('Consumables_L0', 'Lens Cleaning Tissue', 'กระดาษเช็ดเลนส์', 'Double ring', '8*11.5 mm', '11.128', '400 ซอง(50ซอง/แพ็ค)', '154 ซอง', 'BT 52-09868', ''),
('Consumables_L1', 'Lens cleaning Tissue', 'กระดาษเช็ดเลนส์', '-', '10×15 cm', '109.00', '50 แพ็ค ', '0 แพ็ค', 'ยูเนี่ยน ซายน์ 57/070588', 'งบปี 57'),
('Consumables_L2', 'Lens cleaning Tissue', 'กระดาษเช็ดเลนส์', 'Kimwipe', '11×21 cm', '100.00', '5 กล่อง', '', '', 'งบปี 59'),
('Consumables_L3', 'Lencet ', 'ใบมีดเจาะเลือด', 'Dura', ' -', '95.00', '5 กล่อง', '0 กล่อง', 'ยูเนี่ยน ซายน์ 046795', ''),
('Consumables_L4', 'Lencet ', 'ใบมีดเจาะเลือด', 'Dura', '-', '95.00', '5 กล่อง(200/กล่อง)', '5 กล่อง', 'ยูเนี่ยน ซายน์ 56/57458', ''),
('Consumables_L5', 'Lencet', 'ใบมีดเจาะเลือด', '-', '-', '95.00', '5 กล่อง (200 ชิ้น/กล่อง)', '', 'ยูเนี่ยน ซายน์ 57/070586', 'งบปี 57'),
('Consumables_M0', 'Mask', 'หน้ากาก', 'Dura', '5*7 นิ้ว', '85.00', '10 กล่อง', '0 กล่อง', 'ศิริปัญญา 530000498', ''),
('Consumables_M1', 'Mask', 'หน้ากาก', 'UCP', ' -', '70.00', '5 กล่อง', '0 กล่อง', 'ศิริปัญญา วิทย์แพทย์ 54', ''),
('Consumables_M2', 'Disposable ear loop face Mark', 'หน้ากากอนามัย', '', '', '54.00', '30 กล่อง (50ชิ้น/กล่อง)', '7 กล่อง', 'ศิริปัญญา เทรดดิ้ง INV58000514', 'สอบราคาปี 58'),
('Consumables_M3', '96-wells Micro test plate (U-shape)', 'ไมโครเทสเพลท 96 เวล (ยูเชฟ)', 'Pyrex', 'Delta', '1,500.00', '1 กล่อง', '0', 'ที ซี สถาพร IV281/20465', ''),
('Consumables_M4', '96-wells Micro test plate (U-shape)', 'ไมโครเทสเพลท 96 เวล (ยูเชฟ)', '-', '-', '3852(21.4)', '1 ถุง(180/ถุง)', '0 ชิ้น', 'แบงเทรดดิ้ง L56-05527', ''),
('Consumables_P0', 'Parafilm', 'พาราฟิล์ม', 'Whatman', '100mmx40m', '1,412.40', ' -', '2 กล่อง', 'S-Sci 48-232', ''),
('Consumables_P1', 'Parafilm', 'พาราฟิล์ม', 'Parafilm', '4 นิ้ว*125 ฟุต', '636.65', '10 แพ็ค', '7 แพ็ค', 'BT 52-09868', ''),
('Consumables_P2', 'Parafilm', 'พาราฟิล์ม', 'Parafilm', '4 นิ้ว*125 ฟุต', '750.00', '10 ม้วน', '', '', 'งบปี 59'),
('Consumables_P3', 'PCR tube', 'PCR tube', 'Tomos', '0.2 ml', '270.00', '4 ถุง', '2 ถุง', 'ศิริปัญญา 501000231', ''),
('Consumables_P4', 'PCR tube (Flat cap)', 'PCR tube', 'ไฮคอน-ไบโอ', '0.2 ml', '214.00', '10 แพ็ค', '', 'T.C. IV303/22625', 'งบปี 57'),
('Consumables_P5', 'pH paper', 'กระดาษวัด pH', 'Advantec', ' -', '214.00', '10 กล่อง', '0', 'S-Sci 49-448', ''),
('Consumables_P6', 'pH paper', 'กระดาษวัด pH', 'SSS', ' -', '87.00', '5 กล่อง', '1 กล่อง', 'NCG 4908-0043', ''),
('Consumables_P7', 'pH paper', 'กระดาษวัด pH', '-', '0-14', '290.00', '2 กล่อง', '0 กล่อง', 'ยูเนี่ยน ซายน์ 57/070588', 'งบปี 57'),
('Consumables_P8', 'pH paper', 'กระดาษวัด pH แบบธรรมดา', '', '1-14 (ความละเอียด 0.5-1.0)', '187.25', '10 กล่อง', '8 กล่อง', 'ที.ซี.สถาพร กรุ๊ป IV319/24223', 'สอบราคาปี 58'),
('Consumables_P9', 'Universal Indicator pH paper', 'กระดาษวัด pH (pH 1-14)', '', '1-14 (ความละเอียด 0.5-1.0)', '256.80', '10 กล่อง', '6 กล่อง', 'ที.ซี.สถาพร กรุ๊ป IV319/24223', 'สอบราคาปี 58'),
('Consumables_S0', 'Slide', 'แผ่นสไลด์', 'Sail', '1*3 นิ้ว', '42.80', '30', '0', 'ที ซี สถาพร', ''),
('Consumables_S1', 'Slide', 'แผ่นสไลด์', 'Sail', '75*25 mm', '', '10 กล่อง', '0', 'งบพยาบาล', ''),
('Consumables_S10', 'Disposal needle', 'เข็มฉีดยาพลาสติก', 'Nipro', 'No. 18x1 1/2\"', '60.00', '8 กล่อง(100/กล่อง)', '8 กล่อง', 'แบงเทรดดิ้ง L56-05527', ''),
('Consumables_S11', 'Disposal needle', 'เข็มฉีดยาพลาสติก ', 'Nipro', 'No. 21Gx1 1/2\"', '55.00', '3 กล่อง ', '2 กล่อง', 'IV281/20465', ''),
('Consumables_S12', 'Disposal needle', 'เข็มฉีดยาพลาสติก ', 'Nipro', 'No. 21x1 1/2\"', '60.00', '8 กล่อง(100/กล่อง)', '8 กล่อง', 'แบงเทรดดิ้ง L56-05527', ''),
('Consumables_S13', 'Disposal needle', 'เข็มฉีดยาพลาสติก ', 'Nipro', 'No. 21Gx1 1/2\"', '65.00', '2 กล่อง ', '0 กล่อง', 'พยาบาล 54 ', ''),
('Consumables_S14', 'Disposal needle', 'เข็มฉีดยาพลาสติก ', 'Nipro', 'No. 27Gx1\"', '', '2 กล่อง ', '2 กล่อง ', 'วิทย์แพทย์ 54', ''),
('Consumables_S15', 'Syringe (Plastic)', 'กระบอกฉีดยาพลาสติก', 'Nipro', '5 ml', '160.50', '5 กล่อง', '0 กล่อง', 'TC_S 243/16668', 'ยังมีอีก3 กล่อง'),
('Consumables_S16', 'Syringe (Plastic)', 'กระบอกฉีดยาพลาสติก ไม่ติดเข็ม', 'Nipro', '3 ml', '150.00', '5 กล่อง', '3 กล่อง', 'IV280/20360', ''),
('Consumables_S17', 'Syringe (Plastic)', 'กระบอกฉีดยาพลาสติก ไม่ติดเข็ม', 'Nipro', '3 ml', '144.45', '4 กล่อง', '4 กล่อง', 'ที ซี สถาพร IV292/21544', ''),
('Consumables_S18', 'Syringe (Plastic)', 'กระบอกฉีดยาพลาสติก', 'Nipro', '10 ml', '235.40', '5 กล่อง', '0 กล่อง', 'TC_S 243/16668', 'ยังมีอีก 1 กล่อง'),
('Consumables_S19', 'Syringe (Plastic) Tuberculin', 'กระบอกฉีดยาพลาสติก ทูเบอร์คูลิน', 'Nipro', '1 ml', '280.00', '3 กล่อง', '1 กล่อง', 'IV280/20360', ''),
('Consumables_S2', 'Slide', 'แผ่นสไลด์', 'จีนแดง', 'No.23', '35.00', '30 กล่อง', '0 กล่อง', 'IV281/20465', ''),
('Consumables_S20', 'Syringe (Plastic) Tuberculin', 'กระบอกฉีดยาพลาสติก ทูเบอร์คูลิน', 'Nipro', '1 ml', '288.90', '2 กล่อง ', '2 กล่อง', 'ที ซี สถาพร IV292/21544', ''),
('Consumables_S21', 'Soap', 'สบู่ก้อน', '', '', '10.70', '300 ก้อน', '256 ก้อน', 'ที.ซี.สถาพร IV319/24234', 'งบสอบราคาปี 58'),
('Consumables_S22', 'Scotch Brite', 'แผ่นใยขัดพิเศษ', '', '', '12.84', '50 อัน', '', 'ที.ซี.สถาพร IV319/24234', 'งบสอบราคาปี 58'),
('Consumables_S23', 'Dishwashing Sponge', 'ฟองน้ำแบบมีตาข่าย', '', '', '12.84', '68 ชิ้น', '', 'ที.ซี.สถาพร IV319/24234', 'งบสอบราคาปี 58'),
('Consumables_S3', 'Slide', 'แผ่นสไลด์', 'Viteg Germany', '-', '35.00', '60 กล่อง(72/กล่อง)', '0 กล่อง', 'ศิริปัญญา INV560000243', ''),
('Consumables_S4', 'slide', 'แผ่นสไลด์ใส (กล่องแดง)', '-', '-', '45.00', '10 กล่อง (72 ชิ้น/กล่อง)', '0 กล่อง', 'ยูเนี่ยน ซายน์ 57/066461', ''),
('Consumables_S5', 'Surgical blade', 'ใบมีดผ่าตัด', 'Paramount', 'No.11', '214.00', ' -', '12 กล่อง', '', ''),
('Consumables_S6', 'Surgical blade', 'ใบมีดผ่าตัด', ' Parabola', 'No.24', '214.00', '1 กล่อง', '1 กล่อง', 'TC_S 243/16668', ''),
('Consumables_S7', 'Syringe (Hypodermic syringe)', 'เข็มฉีดยา', 'Nipro', 'No. 25x1', '58.85', '1 กล่อง(100/กล่อง)', '1 กล่อง', 'TC_S 243/16668', ''),
('Consumables_S8', 'Disposal needle ', 'เข็มฉีดยา', '-', '21×1.5 นิ้ว', '69.00', '5 กล่อง (100 ชิ้น/กล่อง)', '', 'ยูเนี่ยน ซายน์ 57/070586', ''),
('Consumables_S9', 'Disposal needle', 'เข็มฉีดยาพลาสติก', 'Nipro', 'No. 18Gx1', '65.00', '5 กล่อง  ', '3 กล่อง', 'IV280/20360', ''),
('Consumables_T0', 'Tip (Micropipette tip)', 'ปิเปต ทิป', '-', '10 µl', '265.00', '1 แพ็ค', '', 'ยูเนี่ยน ซายน์ 57/066461', ''),
('Consumables_T1', 'Tip (Micropipette tip)', 'ไมโคร ทิป', '-', '10 µl', '280.00', '2 แพ็ค (100 ชิ้น/แพ็ค)', '', 'ยูเนี่ยน ซายน์ 57/070586', ''),
('Consumables_T10', 'Tip (Blue tip)', 'ไมโครปิเปตทิป', ' -', '1,000 µl', '400.00', '3 pack', '3 pack', 'ศิริปัญญา 54', ''),
('Consumables_T11', 'Tip (Blue tip)', 'ไปเปตทิป สีฟ้า', 'ไฮคอน', '1000 µl', '428.00', '3 แพ็ค (1000 อัน/แพ็ค)', '', 'T.C. IV305/22844', ''),
('Consumables_T12', 'Tip with box', 'กล่องพร้อมไมโครปิเปตทิป', ' - ', '20 µl', '321.00', '3 กล่อง', '2 กล่อง', 'Hiat 500102', ''),
('Consumables_T13', 'Tip with box', 'กล่องพร้อมไมโครปิเปตทิป', 'Axygen', '200 µl', '150.00', '10 กล่อง', '2 กล่อง', 'TC 224/14774', ''),
('Consumables_T14', 'Tip with box', 'กล่องพร้อมไมโครปิเปตทิป', 'Axygen', '1,000 µl', '250.00', '10 กล่อง', '5 กล่อง', 'TC 224/14774', ''),
('Consumables_T15', 'Tip with box (Pipette tip)', 'กล่องพร้อมไมโครปิเปตทิป', '', '5 ml', '1,000.00', '1 กล่อง', '', '', 'งบปี 59'),
('Consumables_T16', 'Heparin tube', 'หลอดเก็บเลือดแบบเฮบพาลีน', '-', '6 ml', '950.00', '1 แพ็ค', '', 'ยูเนี่ยน ซายน์ 57/066461', ''),
('Consumables_T17', 'Microcentrifuge tube', 'หลอดไมโครเซนตริฟิวก์', '-', '1.5 ml', '250.00', '2 แพ็ค', '', 'GIBTHAI CO.SX5703000194', ''),
('Consumables_T18', 'Microcentrifuge tube', 'หลอดไมโครเซนตริฟิวก์', 'ไฮคอน', '1.5 ml', '428.00', '10 แพ็ค (1000อัน/แพ็ค)', '', 'T.C. IV305/22844', ''),
('Consumables_T19', 'Microcentrifuge tube', 'หลอดไมโครเซนตริฟิวก์', '', '1.5 ml', '428.00', '10 แพ็ค (1000อัน/แพ็ค)', '', 'ที ซี สถาพร IV319/24223', 'สอบราคาปี 58'),
('Consumables_T2', 'Tip (Micropipette tip)', 'ไมโครปิเปตทิป', ' -', '100 µl', '235.40', '3 pack', '0 (ของยังมี 2 pack)', 'Hiat 500136', 'ของยังมี 2 pack'),
('Consumables_T20', 'screw cap centrifuge tube', 'หลอดเซนตริฟิวก์', 'PP/PE', '15 ml', '428.00', '20 แพ็ค (50 ชิ้น/แพ็ค)', '', 'T.C. IV305/22844', ''),
('Consumables_T21', 'Centrifuge tube', 'หลอดเซนตริฟิวก์', '', '15 ml', '374.50', '20 แพ็ค (50อัน/แพ็ค)', '', 'ที ซี สถาพร IV319/24223', 'สอบราคาปี 58'),
('Consumables_T22', 'Centrifuge tube', 'หลอดเซนตริฟิวก์', '', '50 ml', '428.00', '2 แพ็ค (50อัน/แพ็ค)', '', '', 'งบปี 59'),
('Consumables_T23', 'thin wall PCR tube', 'หลอดทินวอลล์พีซีอาร์ทิ้วป์ แฟลตแคป', 'ไฮคอน', '0.2 ml', '926.00', '2 แพ็ค', '', 'T.C. IV305/22844', ''),
('Consumables_T24', 'Filter Tip', 'ทิปที่มีตัวกรอง', '-', '20 µl', '380.00', '2 กล่อง', '0 กล่อง', 'ยูเนี่ยน ซายน์ 56/057459', ''),
('Consumables_T25', 'Tongue depressor', 'ไม้กดลิ้น', 'Progress', '-', '42.80', '10 กล่อง(100/กล่อง)', '9 กล่อง', 'ที ซี สถาพร IV292/21544', ''),
('Consumables_T26', 'vacutainer  tube EDTA', 'แวคคูเทนเนอร์ทิวป์ อีดีทีเอ', 'BD', '3 ml', '480.00', '2 กล่อง', '1 กล่อง', 'IV281/20465', ''),
('Consumables_T27', 'vacutainer  tube EDTA', 'แวคคูเทนเนอร์ทิวป์ อีดีทีเอ', '', '3 ml', '428.00', '4 กล่อง', '4 กล่อง', 'ที ซี สถาพร IV292/21544', ''),
('Consumables_T28', 'vacutainer  tube EDTA', 'แวคคูเทนเนอร์ทิวป์ อีดีทีเอ', 'BD', '3 ml', '588.50', '2 กล่อง', '2 กล่องง', 'ที ซี สถาพร IV292/21544', ''),
('Consumables_T29', 'HBsAg strip', 'ชุดตรวจไวรัส', ' -', '50 tests/box', '1,750.00', '50 ชุด', '0 ชุด', 'ศิริปัญญา วิทย์แพทย์ 54', ''),
('Consumables_T3', 'Tip (Micropipette tip)', 'ไมโครปิเปตทิป พร้อมกล่อง', '-', '100-1000 µl', '245.00', '30 กล่อง', '', '', 'เปิดซอง 59'),
('Consumables_T30', 'HBsAg strip', 'ชุดตรวจไวรัส', ' -', '50 tests/box', '1,750.00', '50 ชุด', '41 ชุด', 'เบิกจากแพทย์ ศิริปัญญา54(Exp.2013-05)', 'Exp.2013-05'),
('Consumables_T31', 'Anti HIV rapid test', 'ชุดทดสอบ แอนติ เอช ไอ วี เรพิด', '-', '40 tests/box', '2,500.00', '1 กล่อง', '0 กล่อง', 'TC IV280/20367', ''),
('Consumables_T32', 'Anti HIV rapid test', 'ชุดทดสอบ แอนติ เอช ไอ วี เรพิด', '-', '40 tests/box', '2,500.00', '1 กล่อง', '0 กล่อง', 'TC IV281/20465', ''),
('Consumables_T33', 'First Response HIV 1-2 Card test', 'ชุดทดสอบ เฟริส เรสพอน เอช ไอ วี ', '', '30 tests/box', '3,800.00', '2 กล่อง', '2 กล่อง', 'Lab focus 5607011(Exp.2014-08)', 'Exp.2014-08'),
('Consumables_T34', 'ASO Latex Kit', 'ชุดทดสอบ เอเอสไอ ลาเท็ก', 'USA', '50 tests/box', '1,880.00', '1 กล่อง', '0 test', 'TC IV280/20367(Exp.30 Sep.2012)', 'Exp.30 Sep.2012'),
('Consumables_T35', 'HBsAB One step Ultra Hepatitis B Surface Antibody Test', 'ชุดทดสอบ เฮพาไทติด บี ', '-', '50 strip/box', '1,300.00', '3 กล่อง', '2 กล่อง', 'TC IV280/20367(Exp.2013-12)', 'Exp.2013-12'),
('Consumables_T36', 'ABON HBsAB Strip (S/P)', 'ชุดทดสอบ ไวรัสตับอักเสบ ', '', '50 strip/box', '1,100.00', '2 กล่อง', '2 กล่อง', 'Lab focus 5607011(Exp.2015-01)', 'Exp.2015-01'),
('Consumables_T37', 'ABON HBsAg Strip (S/P)', 'ชุดทดสอบ ไวรัสตับอักเสบ ', '', '50 strip/box', '950.00', '3 กล่อง', '3 กล่อง', 'Lab focus 5607011(Exp.2015-01)', 'Exp.2015-01'),
('Consumables_T38', 'HCG One Step Pregnancy Test Strip', 'ชุดทดสอบ การตั้งครรภ์ เอทซีจี วัน สเตร็ป', '-', '50 strip/box', '420.00', '1 กล่อง', '0 test', 'TC IV280/20367', ''),
('Consumables_T39', 'Melioidosis Test', 'ชุดทดสอบ เมลิออยโดสิส', 'RAMA', '100 tests/box', '2,500.00', '1 กล่อง', '1 กล่อง', 'TC IV280/20367', ''),
('Consumables_T4', 'Tip (Micropipette tip)', 'ไมโครปิเปตทิป', ' -', '200 µl', '234.40', '2 pack', '0 (ของยังมี 3 pack)', 'Hiat 500136', 'ของยังมี 3 pack'),
('Consumables_T40', 'Melioidosis Test', 'ชุดทดสอบ เมลิออยโดสิส', '', '100 tests/box', '2,500.00', '4 กล่อง', '3 กล่อง', 'Lab focus 5607011', ''),
('Consumables_T41', 'Melioidosis Test ', 'ชุดทดสอบวินิจฉัยโรคเมลิออยโดลิส โดยวิธี IHA', '', '100 tests/box', '2,675.00', '4 กล่อง', '', 'Lab focus 5808007', 'งบตกลงราคาปี 58'),
('Consumables_T42', 'PSA Protate Specific Antigen Semi-Quantitative Ultra Whole Blood/Serum/Plasma', 'ชุดทดสอบ พีเอสเอ สเปซิซิค แอนติเจน', '-', '40 devices/box', '2,800.00', '1 กล่อง', '0 กล่อง', 'TC IV280/20367', ''),
('Consumables_T43', 'SLE Latex Kit', 'ชุดทดสอบ เอสแอลอี ลาเท็ก', '-', '100 tests/box', '3,500.00', '1 กล่อง', '1 กล่อง', 'TC IV280/20367', ''),
('Consumables_T44', 'RPR Carbon Antigen Card', 'ชุดทดสอบ อาร์พีอาร์ คาร์บอน แอนติเจน', '-', '500 tests/box', '2,800.00', '1 กล่อง', '1 กล่อง', 'TC IV280/20367(Exp.31 Mar. 2013)', 'Exp.31 Mar. 2013'),
('Consumables_T45', 'Syphilis test', 'ชุดทดสอบ ซิฟิลิส', '-', '50 tests/box', '850.00', '1 กล่อง(50test)', '35 test', 'TC IV281/20465', ''),
('Consumables_T46', 'Tissue paper', 'กระดาษทิชชู', 'สก๊อต', '96 ม้วน', '7.00', '1 pack', '0', 'TC IV281/20465', ''),
('Consumables_T47', 'Tissue paper', 'กระดาษชำระ', '', '', '154.08', '10 แพ็ค (24ม้วน/แพ็ค)', '0 ม้วน', 'ที.ซี.สถาพร กรุ๊ป IV319/24234', 'สอบราคาปี 58'),
('Consumables_T48', 'Tissue paper', 'กระดาษชำระ', '', '', '92.00', '5 แพ็ค (24ม้วน/แพ็ค)', '0 ม้วน', '', 'เปิดซอง 59'),
('Consumables_T49', 'Api 20E', '', '', '50 tests/box', '', '2 กล่อง(50test/กล่อง)', '1 กล่อง', 'เบิกจากแพทย์ ', ''),
('Consumables_T5', 'Tip (Micropipette tip)', 'ไมโครปิเปตทิป', 'Hycan', '200 µl', '267.50', '', '0 (ของยังมี 1 pack)', 'TC 213-13688', 'ของยังมี 1 pack'),
('Consumables_T50', 'Innuprep bood DNA mini kit, 50 RXNS', 'ชุดสกัดดีเอ็นเอจากเลือด', '-', 'KIT', '4,280.00', '2 ชุด', '', 'GIBTHAI CO.SX5807001468', 'งบตกลงราคาปี 58'),
('Consumables_T51', 'HIYIELD GEL/PCR DNA FRAGMENT EXTRACTION KIT', 'ชุดสกัดเจลและพีซีอาร์', '', 'KIT', '2,782.00', '1 ชุด', '', 'GIBTHAI CO.SX5807001468', 'งบตกลงราคาปี 58'),
('Consumables_T52', 'GENOMIC DNA EXTRACTION MINI KIT, 50 PREP', 'ชุดสกัดจีโนมิก ดีเอ็นเอ', '', 'KIT', '3,531.00', '2 ชุด', '', 'GIBTHAI CO.SX5807001468', 'งบตกลงราคาปี 58'),
('Consumables_T53', 'Nucleospin Tissue', 'นิวคลีโอสปิน ทิชชู', '', '', '5,000.00', '1 ชุด ', '', 'แปซิฟิก ไซเอ็นซ์ จำกัด.54492', 'งบตกลงราคาปี 58'),
('Consumables_T54', 'Nucleospin Plant II', 'นิวคลีโอสปิน แพลนท์ 2', '', '', '5,500.00', '1 ชุด', '', 'แปซิฟิก ไซเอ็นซ์ จำกัด.54492', 'งบตกลงราคาปี 58'),
('Consumables_T6', 'Tip (Yellow tip)', 'ไมโครปิเปตทิป', ' -', '200 µl', '350.00', '5 pack', '2 pack', 'ศิริปัญญา 510000305', ''),
('Consumables_T7', 'Tip (Yellow tip)', 'ไมโครปิเปตทิป', ' -', '200 µl', '268.00', '3 pack', '3 pack', 'ศิริปัญญา 54', ''),
('Consumables_T8', 'Tip (Yellow tip)', 'ไปเปตทิป สีเหลือง', 'ไฮคอน', '200 µl', '267.50', '5 แพ็ค (1000 อัน/แพ็ค)', '', 'T.C. IV305/22844', ''),
('Consumables_T9', 'Tip (Blue tip)', 'ไมโครปิเปตทิป', ' -', '1,000 µl', '560.00', '5 pack', '2 pack', 'ศิริปัญญา 510000302', ''),
('Consumables_U0', 'UV lamp set', 'หลอดไฟยูวีชนิดสั้นพร้อมอุปกรณ์', ' -', '20 W', '1,650.00', '10 ชิ้น', '0', 'NCG 4907-0121', '');

-- --------------------------------------------------------

--
-- Table structure for table `equipment_storage`
--

CREATE TABLE `equipment_storage` (
  `id_equipement_storage` int(10) NOT NULL,
  `name_storage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipment_storage`
--

INSERT INTO `equipment_storage` (`id_equipement_storage`, `name_storage`) VALUES
(1, 'ห้อง stock ปฏิบัติ'),
(2, 'การจุลชีววิทยาฯ');

-- --------------------------------------------------------

--
-- Table structure for table `equipment_s_name`
--

CREATE TABLE `equipment_s_name` (
  `id_equipement_s` int(10) NOT NULL,
  `name_eng` varchar(100) NOT NULL,
  `name_th` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipment_s_name`
--

INSERT INTO `equipment_s_name` (`id_equipement_s`, `name_eng`, `name_th`) VALUES
(1, 'Aluminium foil', 'อะลูมิเนียม ฟอยด์'),
(2, 'Autoclave tape', 'ออโต้เคลฟ เทป'),
(3, 'Bag', 'ถุงพลาสติกร้อนใส'),
(4, 'Bag', 'ถุงพลาสติกใส อย่างหนา'),
(5, 'Bag', 'ถุงพลาสติก'),
(6, 'Bag', 'ถุงขยะดำ'),
(7, 'Bag', 'ถุงขยะดำ อย่างหนา'),
(8, 'Blade (Razor blade)', 'ใบมีดโกน'),
(9, 'Capillary  tube', 'หลอดคาปีลารี่'),
(10, 'Capillary  tube/Haematokrit tube', 'หลอดคาปีลารี่'),
(11, 'Centrifuge tube', 'เซนตริฟิวก์ทิวป์'),
(12, 'Cotton', 'สำลีม้วน'),
(13, 'Cotton', 'สำลีก้อนกลม'),
(14, 'Cotton swab', 'ไม้พันสำลี'),
(15, 'Cover glass', 'กระจกปิดสไลด์'),
(16, 'Cover glass', 'กระจกปิดสไลด์ แบบกลม'),
(17, 'Cover glass', 'กระจกปิดสไลด์แบบยาว'),
(18, 'Cover glass', 'กระจกปิดสไลด์สำหรับ Hemacytometer'),
(19, 'Cord', 'ไส้ตะเกียงแอลกอฮอล์'),
(20, 'Cuvette (plastic)', 'คิวเวตต์พลาสติก'),
(21, 'Cyovial', 'ไคโอไวแอล');

-- --------------------------------------------------------

--
-- Table structure for table `insert_chemical`
--

CREATE TABLE `insert_chemical` (
  `No` int(5) NOT NULL,
  `type` varchar(100) NOT NULL,
  `name` varchar(5) NOT NULL,
  `brand` varchar(5) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `size` varchar(5) NOT NULL,
  `size_unit` varchar(5) NOT NULL,
  `price_unit` varchar(5) NOT NULL,
  `amount` int(10) NOT NULL,
  `unit_amount` varchar(5) NOT NULL,
  `remaining` int(10) NOT NULL,
  `unit_remaining` varchar(5) NOT NULL,
  `storag` varchar(5) NOT NULL,
  `expiration_date` date NOT NULL,
  `date_save` datetime NOT NULL,
  `comment` mediumtext CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insert_chemical`
--

INSERT INTO `insert_chemical` (`No`, `type`, `name`, `brand`, `grade`, `size`, `size_unit`, `price_unit`, `amount`, `unit_amount`, `remaining`, `unit_remaining`, `storag`, `expiration_date`, `date_save`, `comment`) VALUES
(1, 'drugP0', '4', '2', '5', '2', '2', '140', 0, '', 20, '2', '2', '2021-10-27', '2018-01-31 20:22:00', ''),
(2, 'drugP0', '4', '2', '4', '2', '2', '130', 0, '', 20, '2', '2', '2021-10-27', '2018-01-31 20:26:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `insert_equipment`
--

CREATE TABLE `insert_equipment` (
  `id_equipement` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `price` varchar(5) NOT NULL,
  `grade` int(4) NOT NULL,
  `size` varchar(10) NOT NULL,
  `amout1` varchar(15) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `date_save` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insert_equipment`
--

INSERT INTO `insert_equipment` (`id_equipement`, `name`, `brand`, `price`, `grade`, `size`, `amout1`, `comment`, `date_save`) VALUES
(1, 'ลอง', 'ฟหกด', 'หก', 2, '2s', 'sd', '', '2017-09-22'),
(2, 'ทดสอบ', 'test', '120', 1, '20ml', '2 ขวด', ' ', '2017-09-15'),
(3, 'ทดสอบ1', 'test1', '150', 2, '22ml', '2 ขวด', ' tast1', '2017-09-15');

-- --------------------------------------------------------

--
-- Table structure for table `login_test`
--

CREATE TABLE `login_test` (
  `code` int(11) NOT NULL,
  `pass` varchar(10) CHARACTER SET utf8 NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `major` varchar(30) CHARACTER SET utf8 NOT NULL,
  `telephone_num` text NOT NULL,
  `tepy` varchar(20) CHARACTER SET utf8 NOT NULL,
  `position` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_test`
--

INSERT INTO `login_test` (`code`, `pass`, `name`, `major`, `telephone_num`, `tepy`, `position`) VALUES
(5712345, 'guide', 'เจ้าหน้าที่วิทยาศาสตร์', 'จุลชีววิทยา', '084452666', '', 2),
(57021948, 'bank', 'นายภาสกร พากเพียร', 'จุลชีววิทยา', '1235555', '', 5),
(57024123, 'guide', 'Admin', 'จุลชีววิทยา', '055511222', '', 4),
(57024220, 'guide', 'ดร.สมศักดิ์ ธรรมวงษ์', 'จุลชีววิทยา', '02245669', '', 1),
(57024222, 'guide', 'นางสาวนภาพร คุณยศยิ่ง', 'วิศกรรมคอมพิวเตอร์', '0884059450', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `restore_borrow`
--

CREATE TABLE `restore_borrow` (
  `id_restore_borrow` int(5) NOT NULL,
  `id_borrow` int(5) NOT NULL,
  `number` int(10) NOT NULL,
  `restore_date` date NOT NULL,
  `fine` varchar(30) NOT NULL,
  `recipient` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scrounge`
--

CREATE TABLE `scrounge` (
  `id_scrounge` int(5) NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `id_chemicals` varchar(15) NOT NULL,
  `amout` varchar(10) NOT NULL,
  `unit` int(5) NOT NULL,
  `scrounge_date` date NOT NULL,
  `date_save` datetime NOT NULL,
  `comment_user` mediumtext NOT NULL,
  `comment_teacher` mediumtext NOT NULL,
  `check_status` varchar(10) NOT NULL,
  `comment_scientist` mediumtext NOT NULL,
  `check_status_s` varchar(10) NOT NULL,
  `scientist` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scrounge`
--

INSERT INTO `scrounge` (`id_scrounge`, `id_user`, `id_chemicals`, `amout`, `unit`, `scrounge_date`, `date_save`, `comment_user`, `comment_teacher`, `check_status`, `comment_scientist`, `check_status_s`, `scientist`) VALUES
(6, '57024222', 'sugarA1', '10', 2, '2018-07-12', '2018-07-11 15:49:00', '', '-', 'yes', '', '', ''),
(7, '57024222', 'sugarA1', '20', 2, '2018-07-11', '2018-07-11 15:53:00', '', '-', 'yes', '', 'yes', 'เจ้าหน้าที่วิทยาศาสตร์'),
(8, '57024222', 'drugP0', '5', 2, '2018-07-13', '2018-07-11 16:16:00', '', '', '', '', '', ''),
(9, '57021948', 'drugP0', '5', 2, '2018-07-15', '2018-07-15 00:44:00', '', '', '', '', '', ''),
(10, '57024222', 'drugP0', '5', 2, '2018-07-17', '2018-07-17 00:36:00', '', '', '', '', '', ''),
(11, '57024222', 'drugP0', '5', 2, '2018-07-18', '2018-07-18 21:58:00', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `scrourge_scientist`
--

CREATE TABLE `scrourge_scientist` (
  `id_scientist` int(5) NOT NULL,
  `approvers` varchar(30) NOT NULL,
  `status_approvers` varchar(20) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id_unit` int(5) NOT NULL,
  `unit_name` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id_unit`, `unit_name`) VALUES
(1, 'ml'),
(2, 'g'),
(3, 'L'),
(4, 'Kg'),
(5, 'MU'),
(6, 'Mg'),
(7, 'ขวด'),
(8, 'ชิ้น'),
(9, 'ชุด'),
(10, 'กล่อง'),
(11, 'cm'),
(12, 'ออนซ์'),
(13, 'ช่อง'),
(14, 'mm'),
(15, 'นิ้ว'),
(16, 'CC'),
(17, 'ม้วน'),
(18, 'แพ็ค'),
(19, 'หลอด'),
(20, 'ถุง');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(100) NOT NULL,
  `code` varchar(30) NOT NULL,
  `room` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `major` varchar(50) NOT NULL,
  `telephone_num` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `demand` varchar(50) NOT NULL,
  `demand_text` varchar(50) NOT NULL,
  `date_save` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `code`, `room`, `name`, `major`, `telephone_num`, `type`, `position`, `demand`, `demand_text`, `date_save`) VALUES
(10, '57024222', '', 'นางสาวนภาพร คุณยศยิ่ง', 'วิศกรรมคอมพิวเตอร์', '0884059450', '', '3', 'การทำโครงงาน', '', '2018-07-17 00:36:00'),
(11, '57021948', '', 'นายภาสกร พากเพียร', 'จุลชีววิทยา', '1235555', '', '5', 'การทำโครงงาน', '', '2018-07-17 00:41:00'),
(12, '57024222', '', 'นางสาวนภาพร คุณยศยิ่ง', 'วิศกรรมคอมพิวเตอร์', '0884059450', '', '3', 'การทำโครงงาน', '', '2018-07-18 21:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_major`
--

CREATE TABLE `user_major` (
  `id_major` int(5) NOT NULL,
  `major_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_position`
--

CREATE TABLE `user_position` (
  `id_position` int(5) NOT NULL,
  `position_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_position`
--

INSERT INTO `user_position` (`id_position`, `position_name`) VALUES
(1, 'อาจารย์'),
(2, 'เจ้าหน้าที่'),
(3, 'นิสิตปริญาตรี'),
(4, 'แอดมิน'),
(5, 'นิสิตปริญาตรี');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id_type` int(5) NOT NULL,
  `type_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id_type`, `type_name`) VALUES
(1, 'ผู้ขอเบิก/ยืม'),
(2, 'อาจารย์อนุมัติ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adviser`
--
ALTER TABLE `adviser`
  ADD PRIMARY KEY (`id_adviser`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`id_borrow`);

--
-- Indexes for table `check_status_approvers`
--
ALTER TABLE `check_status_approvers`
  ADD PRIMARY KEY (`id_check_status`);

--
-- Indexes for table `chemical`
--
ALTER TABLE `chemical`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `chemicals`
--
ALTER TABLE `chemicals`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `chemicals_brand`
--
ALTER TABLE `chemicals_brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indexes for table `chemicals_grade`
--
ALTER TABLE `chemicals_grade`
  ADD PRIMARY KEY (`id_grade`);

--
-- Indexes for table `chemicals_storage`
--
ALTER TABLE `chemicals_storage`
  ADD PRIMARY KEY (`id_storage`);

--
-- Indexes for table `chemical_name`
--
ALTER TABLE `chemical_name`
  ADD PRIMARY KEY (`id_name_chemi`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id_equipment`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id_equipement`);

--
-- Indexes for table `equipment_brand`
--
ALTER TABLE `equipment_brand`
  ADD PRIMARY KEY (`id_equipement_brand`);

--
-- Indexes for table `equipment_name`
--
ALTER TABLE `equipment_name`
  ADD PRIMARY KEY (`id_equipement_name`);

--
-- Indexes for table `equipment_s`
--
ALTER TABLE `equipment_s`
  ADD PRIMARY KEY (`id_equipement`);

--
-- Indexes for table `equipment_scrounge`
--
ALTER TABLE `equipment_scrounge`
  ADD PRIMARY KEY (`id_equipement`);

--
-- Indexes for table `equipment_storage`
--
ALTER TABLE `equipment_storage`
  ADD PRIMARY KEY (`id_equipement_storage`);

--
-- Indexes for table `equipment_s_name`
--
ALTER TABLE `equipment_s_name`
  ADD PRIMARY KEY (`id_equipement_s`);

--
-- Indexes for table `insert_chemical`
--
ALTER TABLE `insert_chemical`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `insert_equipment`
--
ALTER TABLE `insert_equipment`
  ADD PRIMARY KEY (`id_equipement`);

--
-- Indexes for table `login_test`
--
ALTER TABLE `login_test`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `restore_borrow`
--
ALTER TABLE `restore_borrow`
  ADD PRIMARY KEY (`id_restore_borrow`);

--
-- Indexes for table `scrounge`
--
ALTER TABLE `scrounge`
  ADD PRIMARY KEY (`id_scrounge`);

--
-- Indexes for table `scrourge_scientist`
--
ALTER TABLE `scrourge_scientist`
  ADD PRIMARY KEY (`id_scientist`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id_unit`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_major`
--
ALTER TABLE `user_major`
  ADD PRIMARY KEY (`id_major`);

--
-- Indexes for table `user_position`
--
ALTER TABLE `user_position`
  ADD PRIMARY KEY (`id_position`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adviser`
--
ALTER TABLE `adviser`
  MODIFY `id_adviser` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `id_borrow` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `check_status_approvers`
--
ALTER TABLE `check_status_approvers`
  MODIFY `id_check_status` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `chemicals_brand`
--
ALTER TABLE `chemicals_brand`
  MODIFY `id_brand` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chemicals_grade`
--
ALTER TABLE `chemicals_grade`
  MODIFY `id_grade` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chemicals_storage`
--
ALTER TABLE `chemicals_storage`
  MODIFY `id_storage` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chemical_name`
--
ALTER TABLE `chemical_name`
  MODIFY `id_name_chemi` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `equipment_brand`
--
ALTER TABLE `equipment_brand`
  MODIFY `id_equipement_brand` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `equipment_name`
--
ALTER TABLE `equipment_name`
  MODIFY `id_equipement_name` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `equipment_storage`
--
ALTER TABLE `equipment_storage`
  MODIFY `id_equipement_storage` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `equipment_s_name`
--
ALTER TABLE `equipment_s_name`
  MODIFY `id_equipement_s` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `insert_chemical`
--
ALTER TABLE `insert_chemical`
  MODIFY `No` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `insert_equipment`
--
ALTER TABLE `insert_equipment`
  MODIFY `id_equipement` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login_test`
--
ALTER TABLE `login_test`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57024223;

--
-- AUTO_INCREMENT for table `restore_borrow`
--
ALTER TABLE `restore_borrow`
  MODIFY `id_restore_borrow` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scrounge`
--
ALTER TABLE `scrounge`
  MODIFY `id_scrounge` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `scrourge_scientist`
--
ALTER TABLE `scrourge_scientist`
  MODIFY `id_scientist` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id_unit` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_major`
--
ALTER TABLE `user_major`
  MODIFY `id_major` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_position`
--
ALTER TABLE `user_position`
  MODIFY `id_position` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id_type` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
