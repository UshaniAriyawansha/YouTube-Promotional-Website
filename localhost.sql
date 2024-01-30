-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 30, 2022 at 11:08 AM
-- Server version: 10.3.35-MariaDB-log-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trafwygw_test`
--
CREATE DATABASE IF NOT EXISTS `trafwygw_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `trafwygw_test`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(8) UNSIGNED NOT NULL,
  `name` varchar(21) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `mail` varchar(65) NOT NULL,
  `code` varchar(35) NOT NULL,
  `datetime` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `name`, `pass`, `mail`, `code`, `datetime`) VALUES
(1, 'Maleesha Udan', 'a24a84dfcd19b0f1bb0b016c0439f984', 'maleeshaudan6@gmail.com', '1', 1628725260);

-- --------------------------------------------------------

--
-- Table structure for table `foget`
--

CREATE TABLE `foget` (
  `ID` int(8) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `code` varchar(30) NOT NULL,
  `dtime` int(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foget`
--

INSERT INTO `foget` (`ID`, `mail`, `code`, `dtime`) VALUES
(1, 'k.n@gmail.com', 'vxt6ncily1hr4k1jpfboe86uwszAmg', 1631713080),
(3, 'naveenbandara9899@gmail.com', 'eti4u1kl6Apzvryjdq6c8x1hombngw', 1631953860),
(4, 'maleeshaudan@gmail.com', 'g16wpcfhr8ynvldbek1izqo6Atu4sm', 1631954760),
(5, 'gihansachindra503@gmail.com', 'hop8dryA6kumbviwxnqzgj614cfl1e', 1632192180),
(6, 'menuja624@gmail.com', '1mh46jcrbwe6ouAqkid8fsvgnlpyzx', 1632197940),
(7, 'wishvaedirisingha@gmail.com', 'mbyku4qp1lgc1srxwAtz6f8eihndjv', 1632278340),
(8, 'hansajadesilva23@gmail.com', 'xkub16nAwelm8y4hd6opzisrqg1tfv', 1632409020);

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `ID` int(255) NOT NULL,
  `sid` int(20) NOT NULL,
  `rid` int(20) NOT NULL,
  `dtime` varchar(40) NOT NULL,
  `seen` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`ID`, `sid`, `rid`, `dtime`, `seen`) VALUES
(86, 324, 324, 'October 13, 2021, 3:50 am', 1),
(87, 324, 324, 'October 13, 2021, 3:53 am', 1);

-- --------------------------------------------------------

--
-- Table structure for table `point`
--

CREATE TABLE `point` (
  `ID` int(5) NOT NULL,
  `reg` int(5) NOT NULL,
  `ref` int(5) NOT NULL,
  `refa` int(5) NOT NULL,
  `vv` int(5) NOT NULL,
  `wv` int(5) NOT NULL,
  `avv` int(5) NOT NULL,
  `awv` int(5) NOT NULL,
  `web` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `point`
--

INSERT INTO `point` (`ID`, `reg`, `ref`, `refa`, `vv`, `wv`, `avv`, `awv`, `web`) VALUES
(1, 100, 100, 100, 200, 100, 100, 150, 50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(8) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `mail` varchar(70) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `code` varchar(30) NOT NULL,
  `refcode` varchar(10) NOT NULL,
  `stat` int(1) NOT NULL,
  `dtime` varchar(40) NOT NULL,
  `point` int(40) NOT NULL,
  `status` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `fname`, `lname`, `mail`, `user`, `pass`, `code`, `refcode`, `stat`, `dtime`, `point`, `status`) VALUES
(29, '', '', '', 'a', '', '', '', 0, '', 2147471447, 0),
(32, 'Pramodya', 'Female', 'kaushipramo@gmail.com', 'Pramo', 'aaf7dac8aac22025c3ad29244c3a07de', 'gfd6bheicj', 'fhd6ebgc', 0, '1631897040', 100, 0),
(31, 'Ushani Ariyawansha', 'Female', 'ushaniariyawansha@gmail.com', 'ushani_001', '1fc3003048c806edcb9b1b9e0a55a1ce', 'fjib6hgdce', 'hbcdf6ge', 0, '1631894520', 5670, 0),
(28, 'niroshan', 'Male', 'niroshanatradecenter2@gmail.com', 'Elpitiyaniro', '9f1a10d48fdaa0048a99ef63387aa40b', 'ibecgfhdj6', 'fgh6bdec', 0, '1631892420', 650, 0),
(25, 'anoj', 'Male', 'ad2001dinuranga@gmail.com', 'anoj001', 'af2bea5f3044e53134a9c5ad4d02f40c', 'ghceijf6bd', 'bchegdf6', 0, '1631882280', 1010, 0),
(36, 'Amila Ganegoda', 'Male', 'amilagak@gmail.com', 'Lewva bro', 'dd3f8e3556c3c0d0aa0ed38334295ae3', 'dbfc6iegjh', 'h6gebcfd', 0, '1631936640', 100, 0),
(27, 'Dulara', 'Male', 'theekshanamb2002@gmail.com', 'Emrys', '9558140c793210434c3db46739d5b9dc', 'g6hedijbfc', 'gfehd6bc', 0, '1631890380', 2000, 0),
(35, 'Harshi', 'Female', 'isanka36@gmail.com', 'App Tech Zone', '71655994a42ae213c4d6c7e8445178ad', '6djefhbcgi', 'f6bedcgh', 0, '1631935920', 100, 0),
(37, 'chami', 'Male', 'chamiudara777@gmail.com', 'chamiudara777', '69d6de5a0acba830bbe9a024bd4da211', 'hejdc6fibg', 'fe6bdhgc', 0, '1631937300', 250, 0),
(60, 'Naveen bandara', 'Male', 'naveenbandara9899@gmail.com', 'Naveen', '70d982d9e40fa73404ae0e8f27997296', 'fchidbej6g', 'dfhgcb6e', 0, '1631950320', 350, 0),
(58, 'Dileesha', 'Female', 'sawanathar@gmail.com', 'Dns patabendige', '697b09f48b07bd26e0718c553b6d19d7', 'dc6gbfjihe', 'he6gbdcf', 0, '1631949900', 200, 0),
(40, 'Darsha', 'Female', 's.gayanisakaraja@gmail.com', 'Sunshine23', '602927456116e5619346207f5e1cd3ba', 'bcigf6dejh', 'fech6gdb', 0, '1631938980', 250, 0),
(41, 'Superlanka', 'Male', 'amithprasannamonaragala1@gmail.com', 'SuperlankaTV', '69005bb62e9622ee1de61958aacf0f63', 'dhbc6igfej', 'fb6dcegh', 0, '1631939160', 200, 0),
(59, 'Thisaru', 'Male', 'thisarusanjeewa1102@gmail.com', 'Tharu123', 'e4e0b6a0409bbefc0fcbaf62dfb5b652', 'bdhjegifc6', '6hgbcedf', 0, '1631950260', 200, 0),
(43, 'Rashith', 'Male', 'www.rdrharshane25@gmail.com', 'Art of graphics', '8bacf83020c03e3a0ac30d42791005b1', 'ib6ehjcgfd', 'gehc6bfd', 0, '1631940600', 300, 0),
(44, 'Samitha', 'Male', 'samithaeranda91@gmail.com', 'samithaeranda', '9570d5500506463dc2a38475a172e0d9', 'bghcjidf6e', '6fcgebhd', 0, '1631940600', 100, 0),
(45, 'Andrew', 'Male', 'andrewyoha9@gmail.com', 'Andrewy', 'd91547d65ab4c30802a91faaca9db77d', 'gjebd6icfh', 'cedb6ghf', 0, '1631940660', 100, 0),
(79, 'MRS Editors', 'Male', 'mrseditorsbusiness12345@gmail.com', 'MRS Editors', '101a1e40240c447bcf6619a66733ae03', 'i6jbdghfec', '6behcdgf', 0, '1631971020', 150, 0),
(63, 'test account', 'Male', 'addark65@gmail.com', 'test account', 'af2bea5f3044e53134a9c5ad4d02f40c', 'eic6hgfdjb', 'de6fgbch', 0, '1631953320', 300, 0),
(48, 'sachith', 'Male', 'sachithroxy@gmail.com', 'Sachithroxy', '4c514267cd66e04edc57a88dfd159903', '6dfcebihjg', 'efg6bdhc', 0, '1631940780', 280, 0),
(49, 'ishan perera', 'Male', 'ishanperera@live.com', 'ishan', '0240fdf4f7b3a4543e875004fd842d18', 'e6fhjcibdg', 'dcgh6fbe', 0, '1631941560', 450, 0),
(50, 'P.H.S.Shyaman', 'Male', 'shyamansuresh@gmail.com', 'AnonyShy', 'a610811d5a655985c34e755cf38cd84b', '6ehfgbdjci', 'hecgdbf6', 0, '1631941740', 110, 0),
(77, 'Jeewa', 'Male', 'jeewanajayamalzz@gmail.com', 'Jeewa', 'a8cc8cd5d0637025ba85b332f90ea95b', '6edfjcigbh', 'hge6cfbd', 0, '1631964660', 50, 0),
(65, 'Bandara', 'Male', 'bandarashalika35@gmail.com', 'Bandara', '56585c0a2330cab39f60c407b0c1166c', 'ihebgcd6fj', 'egbhfc6d', 0, '1631955000', 200, 0),
(52, 'Chamila', 'Male', 'chamilaharshana3@gmail.com', 'Chamila', 'a51453939484c86cf7f1a7cc008568dc', 'gbiefhdcj6', 'gc6dbhef', 0, '1631942760', 200, 0),
(53, 'D. Navod vimukthi am', 'Male', 'vimukthin516@gmail.com', 'vimukthin516', 'bfce97998b7e53ce7e0691e9408ed748', 'jidhcf6gbe', 'edcgf6hb', 0, '1631944920', 1260, 0),
(54, 'N.SANDEEPANA', 'Male', 'RIKSANSANDEEPANAORIGINAL@GMAIL.COM', 'SANDEEPANA', '1617b5539989095f53386c4a3593929e', 'edjfbgchi6', 'fgdce6hb', 0, '1631945100', 300, 0),
(55, 'Sandeepa', 'Male', 'sandeepakanchana1982@gmail.com', 'Sandeepa 1982', '55994ebe7a08f2a85338283eb75cb640', 'bdgi6ejhfc', 'efcdg6bh', 0, '1631946240', 450, 0),
(57, 'Naveen bandara', 'Male', '2018ict95@vau.jfn.ac.lk', 'Naveen_001', '1818a5bfa2666140abdeff7751cced74', 'gbficeh6jd', 'bhefgc6d', 0, '1631949120', 200, 0),
(85, 'Sasintha Vidunjana', 'Male', 'shadowh303@gmail.com', 'Sasintha Vidunjana', '59642e959da7929146d346d178a0d4c7', 'e6hibcgjfd', 'cfdg6ebh', 0, '1631976900', 100, 0),
(78, 'manoj chathuranga', 'Male', 'manojchathuranga540@gmail.com', 'Manoj', '9ed95b2cafc9aefcabdd43abe5f47562', 'fdgbcjei6h', 'bge6dhfc', 0, '1631966760', 100, 0),
(67, 'Roshantha Hewamaddum', 'Male', 'rhewamadduma@gmail.com', 'Apedoctor', '15d80812db3408314cdbd1be6e277bca', 'fji6hcbdeg', 'bcfgd6eh', 0, '1631956020', 50, 0),
(68, 'VishwaTV', 'Male', 'vishwatvsl@gmail.com', 'VishwaTVSL', '7492f1ca01c30e0cab1015f2614ebfad', 'jdeig6cbhf', 'b6gdhfce', 0, '1631956200', 200, 0),
(69, 'Sanjika', 'Male', 'sanjikaprasath@gmail.com', 'Sanjika', '77c7964c665dd46f61cbda265e93b17d', 'fdjb6ecgih', 'hcbde6fg', 0, '1631956920', 200, 0),
(70, 'Ramesh tissera', 'Male', 'ramswarnak@gmail.com', 'Ramswarnak', 'd7599938f40300c6f9990dacd4c08c78', 'jbf6gdehic', 'cefbg6dh', 0, '1631956980', 200, 0),
(71, 'thisal chathnuka', 'Male', 'thisalchathnuka@gmail.com', 'thisal', 'fc7fae9cecabe6813c210bb4788e3676', 'defchbgij6', 'cheg6fdb', 0, '1631957580', 200, 0),
(72, 'T R Rahim', 'Male', 'tuanrahim@gmail.com', 'tuanrahim', '6a57a3e8e367298f40a4ad8d574c5827', 'jech6fidbg', 'b6cehdfg', 0, '1631959680', 2850, 0),
(73, 'chandar rana', 'Male', 'chandarrana1@gmail.com', 'chandarrana', 'fa03507b16c5f6d4eed2dd42f586e562', 'j6degbhfci', '6gcdbfhe', 0, '1631961120', 200, 0),
(75, 'Dimuthu', 'Male', 'slcovers8@gmail.com', 'Slcovers', '1f7f45b633322cbed9a851c9e3510acb', 'fbejhig6cd', 'fdehbc6g', 0, '1631964300', 250, 0),
(76, 'DininduAdithya', 'Male', 'wsepalini@gmail.com', 'dininduadithya', '09113b4d43fb2ff1801c1cbfc2af63a8', 'gfejh6dcib', 'cf6bdegh', 0, '1631964360', 410, 0),
(80, 'Pasidu Dilshan', 'Male', 'pasidudilshan1000@gmail.com', 'Pasidu1000', '74448941668e270ec29efd8a07a2c768', 'cjidb6ghef', 'ged6bchf', 0, '1631971500', 400, 0),
(109, 'Chandunu Karunarathn', 'Male', 'miriguwa0@gmail.com', 'Chandunu19125', 'f3beeec2616cb317561edc88f7d4b312', 'ig6cjbehfd', 'hb6fdcge', 0, '1632027300', 200, 0),
(99, 'Ajith', 'Male', 'ajithkumara805@gmail.com', 'Ajith', '0dd451bbc534c6818aff7c8c75b9253e', 'jeh6bfgcid', '6cbhedfg', 0, '1632015600', 160, 0),
(82, 'Jayaweera Menuka', 'Female', 'menukajayaweera95@gmail.com', 'Jayaweera', '8983b912775041b6ec93ee58bf74f4ab', 'hgc6ijbedf', 'ef6bdchg', 0, '1631973660', 150, 0),
(83, 'harshana Maliyadda', 'Male', 'harshanamaliyadda14@gmail.com', 'Harshana', '8ffb3e49cd4c0e42c15c8c3189ef070c', 'gifdej6bhc', 'fdhecg6b', 0, '1631973840', 200, 0),
(84, 'KUMARA', 'Male', 'mdspkumara77@gmail.com', 'Kumara', '0dd451bbc534c6818aff7c8c75b9253e', 'jcehbd6igf', 'fec6hbgd', 0, '1631974320', 880, 0),
(97, 'Speak with the Taste', 'Male', 'speaktaste@gmail.com', 'Speaktaste', '23b04b90f3e1420a97a74c4f9a19a66a', 'hibgd6jcef', 'bgd6cehf', 0, '1632009360', 250, 0),
(88, 'asela premarathna', 'Male', 'aselarock204@gmail.com', 'asela1990', '82ac8219c45dcc5508e338ae0ef3f10e', '6fhcdbeijg', '6fdgcbhe', 0, '1631979720', 300, 0),
(95, 'Harsha Edirisingha', 'Male', 'harshaediri81@gmail.com', 'Topetop', 'bf5ffe12fa265ee88f214e29f2f23db0', 'cdh6gijfbe', 'fbc6dghe', 0, '1631992920', 250, 0),
(91, 'Duminda sampath', 'Male', 'dumindasampath124@gmail.com', 'Dumi124', '468923fbf1a19d5322c1726648c31570', 'e6hgjfcibd', 'cghfeb6d', 0, '1631983860', 50, 0),
(92, 'Mahesh Vidanagamage', 'Male', 'maheshrda1982@gmail.com', 'maheshrda1982', '6444b3923008a39541cf4fc22a4fa15e', 'gcdeb6jhif', 'behfdcg6', 0, '1631984280', 150, 0),
(93, 'Nisalya Yomadi', 'Female', 'neshma231@gmail.com', 'NESHI DIY &amp;CRAFT', 'b140d9081249cf7603e7049f42771310', 'hgecbid6fj', '6bfhegcd', 0, '1631984580', 150, 0),
(96, 'Chanaka', 'Male', 'chanakabothejurox@gmail.com', 'Chana', '7a029fe27b35f9025bffa050639fa921', 'iehdjg6fcb', 'eg6dfcbh', 0, '1632002640', 300, 0),
(100, 'Tharanga', 'Male', 'lakshaninfo1@gmail.com', 'nirmala95', 'a3da9f2ab7083a0ae1b4f41ecf76c6d3', 'dcgjfeihb6', '', 0, '1632018000', 650, 0),
(101, 'Muditha', 'Male', 'mudithagamini.mg.mg@gmail.com', 'Muditha1993', 'ea4f6b80306fb4973a83f9bdb2ff3a86', 'b6jhfdcgei', 'ghcfebd6', 0, '1632018360', 150, 0),
(114, 'Supunmadusanka', 'Male', 'supunmadusankasamarasinha@gmail.com', 'Supunmadusanka', 'a9ba8c5fb3855bf3deca068d4da2b31a', 'ifcbgjh6de', 'fhgbdce6', 0, '1632038280', 200, 0),
(113, 'Chamod', 'Male', 'chamodsachintha8@gmail.com', 'Chams1995', '1a65955f0382beab2040df7ba07430a6', 'h6icbjgfed', 'h6befcgd', 0, '1632035700', 100, 0),
(104, 'Gimhan', 'Male', 'gimhanaloka3@gmail.com', 'gimhan12345', '17df2d234e7d8f31e5a353c8aea6bc5c', 'icjghfd6eb', 'gced6fhb', 0, '1632020280', 370, 0),
(105, 'Damith kumara', 'Male', 'damithkumararoxx55@gmail.com', 'damith98kumara', '2e49628a11f004234b23ae5c00a024a6', 'c6ehjfbdig', 'gdfce6bh', 0, '1632020520', 1900, 0),
(106, 'Sanju Saman', 'Male', 'wsssanju@gmail.com', 'Sanju1209', 'fcbf1cba76742367266171a949567629', 'dci6gjfhbe', '6fecdhbg', 0, '1632022620', 100, 0),
(112, 'Gihan Sandeepa', 'Male', 'gihan20050113@gmail.com', 'gihan13', 'dc16b5618e1929c89d754cee5b111b91', 'ghjbfedc6i', 'gcbh6efd', 0, '1632035520', 400, 0),
(108, 'kasuni gayathri', 'Female', 'kasunigayathri90@gmail.com', 'Kasuni Gayathri', '81e3e78b475e00768763b191cf233ad5', 'bfh6icejgd', 'gh6cedfb', 0, '1632024540', 300, 0),
(110, 'Pasindu kaushalye', 'Male', 'kaushalyepp@gmail.com', 'Pasindu21', '8fb50d487a0d326cce1f0ab4df7fe07a', 'ib6cehdjfg', 'bhef6cdg', 0, '1632030180', 100, 0),
(111, 'lankara', 'Male', 'wgblankara@gmail.com', 'wgblankara', '63da725a20b534b5a62cdc95d7fda61e', 'fghdbc6eij', 'dgfh6ecb', 0, '1632030360', 200, 0),
(115, 'Amal Kingsly', 'Male', 'amalkingsly@gmail.com', 'amalkingsly', 'f61cc4e0a192cc900ff7ca98a18ad2c4', 'gdfehjb6ci', 'cfgbhed6', 0, '1632041100', 450, 0),
(116, 'Chamal Lakshitha', 'Male', 'clakshitha.me@gmail.com', 'Clakshitha', 'be1ee803465cc300d07d77ba876b1317', 'hdj6cibegf', 'bed6chgf', 0, '1632044220', 80, 0),
(117, 'isuru m jayasinghe', 'Male', 'isurumjayasinghe7@gmail.com', 'Jayasinghe2121', '52c955c1fa62753980dab3023352f71c', 'ibedfjgc6h', 'ghcbfd6e', 0, '1632048480', 200, 0),
(118, 'Pathum Sameera', 'Male', 'nethsarasm@gmail.com', 'Pathum', 'a6a5237e546dc3f5fc8d03185e32e772', 'jgbcdfie6h', 'gcfbedh6', 0, '1632050880', 200, 0),
(119, 'Deneth Rukmal Silva', 'Male', 'denethrukmal253@gmail.com', 'Pexel', '6cbc6af8b35db69888f83c2a50ebaa7e', 'ebi6gcfdhj', 'ghe6bcdf', 0, '1632051600', 300, 0),
(120, 'Dinidu Roshantha', 'Male', 'mr.dinidu@gmail.com', 'Diniduroshantha', '3c465d87b9d5ff213d37bb29c2ac7a69', 'gjdebifc6h', 'cghbdf6e', 0, '1632058800', 100, 0),
(124, 'Manoj', 'Male', 'msthenuwara@gmail.com', 'Msthenuwara', 'a11c2576aee75f55e843c70869ebe4b2', 'dh6bgficje', 'hdebcf6g', 0, '1632078420', 50, 0),
(122, 'ruwan', 'Male', 'ruwansasika86@gmail.com', 'Sasi', '74546a6044c1507d1f0985f788a92323', 'igefcd6jbh', 'ceg6dhfb', 0, '1632066960', 300, 0),
(123, 'Uditha', 'Male', 'cniro1995@gmail.com', 'Udithaniro', 'c9dafbf5287d196fdcb8955d9866608d', 'gbdij6echf', 'hcdeg6bf', 0, '1632068580', 200, 0),
(125, 'Pradeep Suranga', 'Male', 'besteye21@gmail.com', 'besteye', '688f5f59b797cf4be272e2bf4b5e3c8f', 'c6fdhjbegi', 'geh6fdbc', 0, '1632081960', 100, 0),
(126, 'Prasanga Lahiru', 'Male', 'officialprasanga@gmail.com', 'OneTech', '9002b925e17e3264eca51dba97213ead', 'fie6dhjgbc', 'bhef6gcd', 0, '1632105600', 50, 0),
(127, 'chamali ruwanthika', 'Female', 'rumeshneranjen1989@gmail.com', 'village girl', 'a8a769b376506ad42d8b90c9f587c199', '6jibhcefgd', 'fbdhg6ec', 0, '1632108780', 50, 0),
(144, 'Wiman', 'Male', 'sandaruwije9@gmail.com', 'Wiman', '1e9ab89a346372d1832fcfcab9f19310', 'dcheibfjg6', 'dhcbg6ef', 0, '1632125220', 150, 0),
(131, 'Sanjeewa', 'Male', 'amilasanjeewa1984@gmail.com', 'Ameeya', '6461b415d1425121eab565f073101489', '6gdfcejbhi', 'hfceb6gd', 0, '1632114000', 500, 0),
(130, 'samitha', 'Male', 'smithkulara7@gmail.com', 'samitha', '1908fb26edf1a9fa3263e7bb129f7fed', 'c6diefhjbg', 'bfc6edgh', 0, '1632112620', 150, 0),
(133, 'Dulip Nadeeka', 'Male', 'dulipnadeeka311@gmail.com', 'Dulip', '2af2f0683864593b2b83e8196dd5b9a4', '6gfcbeihjd', 'hg6cedfb', 0, '1632114840', 450, 0),
(134, 'Lakshan', 'Male', 'lakshanravidu480@gmail.com', 'Lakshan', 'd9f3b5413ab6593b8343a4047b4684ad', 'iefdjcgbh6', 'cgbefdh6', 0, '1632115560', 350, 0),
(135, 'Anupama Damayantha', 'Male', 'mg.nirosha98@gmail.com', 'SLAnuwa_007', 'a5aea79538a586acfaa91f85152cf29f', 'gbhfed6cij', 'bc6gdfhe', 0, '1632117180', 200, 0),
(136, 'Ishara', 'Male', 'isharaovitigala@outlook.com', 'I madusanka', 'a496ff54f8abaa421b1ffb8d69e6fe21', 'h6giebcjfd', 'efcb6hgd', 0, '1632117720', 200, 0),
(137, 'Shan Silva', 'Male', 'gajasingheantiques@gmail.com', 'Golden ceylon', 'b4d04a3e99d7a3303302297ad91c851e', 'ifecjdh6bg', 'ehd6bfgc', 0, '1632118440', 200, 0),
(138, 'Suranga', 'Male', 'suranganirmal7@gmail.com', 'Nirmal', '815fba28486851fa88e4506785ba041b', 'bdci6hejgf', 'bfcg6ehd', 0, '1632118620', 350, 0),
(139, 'harasha', 'Male', 'educationplace701@gmail.com', 'harasha1234', 'dd5d095601390c1ba15dae0d4e22f3f3', 'd6ijhgcfeb', 'cdbh6feg', 0, '1632119280', 150, 0),
(140, 'Prabath Maduranga', 'Male', 'prabathmadurangaa87@gmail.com', 'Prabathm87', '25ad6fd0e6be38f642a934a21ddeaae1', 'hdgibec6fj', 'hfgc6edb', 0, '1632119340', 300, 0),
(141, 'dhanushka', 'Male', 'tikkamatale.95@gmail.com', 'dhanushkasl.net', '471302d65c34e6905ff2fa28ed83e2ee', 'hbcjif6dge', 'hfcdebg6', 0, '1632119580', 100, 0),
(143, 'Menuka Risith', 'Male', 'snimsara012@gmail.com', 'menuka2008', '6fb8d50231a1f53d978f4c276ed3d37e', 'cdegjihf6b', 'gefdhcb6', 0, '1632122160', 200, 0),
(145, 'Lakshitha ravihansa', 'Male', 'ravihansalakshitha2@gmail.com', 'Ravihansal', '0431314a99c35bdfd8d7887f0a06e34d', 'ijbfe6hdcg', 'edcgfb6h', 0, '1632127860', 200, 0),
(146, 'pakaya ponnaya', 'Male', 'rdzzkslhaf@uniromax.com', 'sfsdf34r3r', '68ffea3e42f048f4b499ac834d6f267a', 'febjichg6d', 'dgehb6cf', 0, '1632128100', 100, 0),
(147, 'Guru Gedara Iskole', 'Female', 'chathu.rncj@gmail.com', 'Guru Gedara Iskole', 'b81f06f1557c5d93fe269e0b040779f8', 'jbfgc6hdei', 'cdfhgb6e', 0, '1632128340', 250, 0),
(148, 'vidarshana Rathnayak', 'Male', 'vidarshanan@gmail.com', 'vida1982', '68ed94f271b4c48c8ee9722ba580fb1f', 'jd6febghic', '6cbfehdg', 0, '1632129240', 100, 0),
(164, 'REAL à¶‰à¶­à·Šà¶­à·‘', 'Male', 'Lakshandagaya93@gmail.com', '123lakshan', 'e2a32027eb959f3d1a8e1f1397e42cdc', 'ehcgb6ifdj', 'gfbc6deh', 0, '1632142380', 200, 0),
(151, 'Okithma Menula', 'Female', 'divitrafficputtalam@gmail.com', 'Okithma Menula', 'a449392e6cd09246b63846c2799f56d0', 'hdcb6jeigf', 'dc6egfbh', 0, '1632130920', 150, 0),
(152, 'Bandara', 'Male', 'udithabandara07@gmail.com', 'Uditha', '05749afa8e355ce866ac1aeb97071411', 'ecdf6hijgb', 'gcheb6df', 0, '1632131340', 200, 0),
(153, 'gamingmate92', 'Male', 'sadeeparathnayaka@gmail.com', 'gamingmate92', '2ab6ace1ca5be6aaedf0911a2e030fba', 'bh6icegdjf', 'fhd6cbeg', 0, '1632131640', 250, 0),
(154, 'Madhushanka Wanniara', 'Male', 'madhushankawa@gmail.com', 'madhushankawa', '689d3ededdf57f7537e18ca65f91e714', 'hjigdcebf6', 'e6fhdcbg', 0, '1632135060', 200, 0),
(185, 'Sajith Dilshan', 'Male', 'sajithdilshanrupasingha11@gmail.com', 'Sajith', '989763caf9060ee2fdef06689feab566', 'eghbjid6cf', 'efbhcg6d', 0, '1632160560', 50, 0),
(156, 'Vidana Gamage Shehan', 'Male', 'Vgskavinda963@gmail.com', 'SL Motivator', 'fabae4a486e15f331151a96d5d972cb7', 'jhbgfice6d', 'cgedh6bf', 0, '1632138600', 50, 0),
(157, 'Upul Chandana', 'Male', 'Sandaruwanharsha401@gmail.com', 'Harshasandaruwan', 'eca917fb5765f1230dac333288047dda', 'ficdbhejg6', '6cbdhegf', 0, '1632139020', 1260, 0),
(158, 'SL Ayesh GAMING', 'Male', 'ayeshrashmina2005@gmail.com', 'SL Ayesh GAMING', '3aa96dc6579bd89272ef415b0e723f6b', 'efjhdcb6ig', '6bgecfdh', 0, '1632139200', 300, 0),
(181, 'Theekshana', 'Male', 'rdtheekshanapremasinghe@gmail.com', 'Theekshana', '2249f42fcf69d206b9dec730b5d2d774', 'bgc6hdjife', '6fdechgb', 0, '1632154620', 100, 0),
(178, 'Dileep', 'Male', 'dileep774@gmail.com', 'dileep774', '4359f46fa319e958174cd7c779b3ffc5', 'dhigcfbej6', 'dcef6ghb', 0, '1632152820', 50, 0),
(161, 'Malinda', 'Male', 'butterflyclik@gmail.com', 'Butterfly', '878cba91d0a42468a360fe9a05635d59', 'jbgfcied6h', 'gdeb6hfc', 0, '1632139920', 200, 0),
(162, 'Aruna', 'Male', 'ggamini13@gmail.com', 'Aruna.suresh077', 'dd264225e4df93ca8647de2cd83ce937', 'hbf6decgij', 'dh6becgf', 0, '1632140100', 250, 0),
(180, 'G.D.M SILVA', 'Male', 'gdmsilva890@gmail.com', 'Danuja890', 'aafcd4698e851c6cc63b0f6919b67aa3', 'dbgieh6cfj', '6cbefghd', 0, '1632154440', 250, 0),
(165, 'Dinesh', 'Male', 'wddmadushanka@gmail.com', 'Wddmadushanka', '1402c731063d70c14e606562625a25fb', 'bgfhc6diej', 'dcfehbg6', 0, '1632142440', 100, 0),
(179, 'Madhawa', 'Male', 'tixonicsl@gmail.com', 'Madhawa', 'b62e33616641c26c98df977c4323f6ce', 'ec6gfhbjid', 'degfchb6', 0, '1632153780', 50, 0),
(182, 'Lakshan Sachintha', 'Male', 'sachintha390@gmail.com', 'Lakshan Sachintha', 'bb8a1fd2822ad63ab5b9c3769c498030', 'b6fdhgecij', 'cdgbfe6h', 0, '1632155400', 100, 0),
(168, 'kulanjith thejana', 'Male', 'kulanjithzoysa@gmail.com', 'kulanjith618', 'f7419fe8805ea5de0009d6dcd1b3a9e4', 'cj6ebfdihg', 'hgb6dfec', 0, '1632144240', 150, 0),
(169, 'nayanajith', 'Male', 'nayanajithdevinda0@gmail.com', 'Devinda', 'fcb43fe12a975b86d91c0c37c51b4832', 'c6fiebjdgh', 'h6dfebcg', 0, '1632144840', 100, 0),
(170, 'sathsarani', 'Female', 'sathsaranipiumi52@gmail.com', 'sathsarani', '92e22e9757439fb8e22d82621ff190b4', 'igjhcdebf6', '6edhfgbc', 0, '1632146340', 100, 0),
(171, 'Pathum chinthaka', 'Male', 'pathum51381@gmail.com', 'pathum51381', '8a15642e98bb1dd6181fe7957fce4aba', 'ighfdecjb6', 'c6fhgbde', 0, '1632147180', 250, 0),
(183, 'Shashikala', 'Female', 'oneeimc@gmail.com', 'Shashikala10', '340021c34f11b34bb42ab74b00b3a466', 'c6hijgfdbe', 'efcdbhg6', 0, '1632158340', 200, 0),
(173, 'Sheveen tharunda', 'Male', 'stharunda@gmail.com', 'Tharunda2006', 'd3d3a89140ddba1c621c464b2e227d92', 'ifbcjdg6he', 'ge6fhbdc', 0, '1632147660', 100, 0),
(184, 'Tharanga', 'Male', 'ttharanga409@gmail.com', 'Thara1292', '15833450595deb597d0378db621c4cf5', 'fheijbg6cd', 'dfec6bhg', 0, '1632158940', 200, 0),
(175, 'Osuka', 'Male', 'chamanidamayanthi0929@gmail.com', 'Chanu', '780599480adff349bda8fe7744416492', '6cdfbijgeh', 'bd6cfegh', 0, '1632147780', 50, 0),
(176, 'Yasintha', 'Male', 'dinukarobotics@gmail.com', 'TravelEurope4K', '30cc64a421d500e62f7baf2386a94ca4', 'b6fjigehcd', 'dc6hgbef', 0, '1632148620', 700, 0),
(177, 'Indika Abeywickrama', 'Male', 'tmindika@gmail.com', 'tmindika', '86a2695bb019b311b8485f4574723f26', 'hjfigb6edc', 'hefdcbg6', 0, '1632148800', 400, 0),
(191, 'Hansika Sathyanga', 'Male', 'hansika123456season@gmail.com', 'Hansika@bhagy', '8ab5db404f3f5981612f79508785ec64', 'd6bhegifjc', 'ged6chbf', 0, '1632181080', 200, 0),
(187, 'Ramsina farvin', 'Female', 'jframsina@gmail.com', 'Ramsi', 'cfc7e7fc1f015675acadec7db7462deb', 'bdh6fgejic', 'cfged6hb', 0, '1632161580', 300, 0),
(190, 'Praveen', 'Male', 'praveentharuka02@gmail.com', 'Tharuka', '12f830330b67d2a6507505f447dc903b', 'gdfich6ejb', '6cdgebhf', 0, '1632174420', 100, 0),
(189, 'Upul priyankara', 'Male', 'upulpriyankara322@gmail.com', 'Upul priyankara', '575e79c860c81b1ba5fc8725c281df29', 'hicgeb6djf', 'gdfbec6h', 0, '1632167340', 260, 0),
(192, 'Akila Jayaweera', 'Male', 'akilajayaweera0011@gmail.com', 'akira', '0f928961dbef9be5a228b88131a0d602', 'bgcfehdi6j', 'efbg6dch', 0, '1632183180', 200, 0),
(224, 'Herath mudhiyanselag', 'Male', 'senanayakeherath@gmail.com', 'Senanayake hm', '78d460d8f905f95ec8b37c4f3fd682c9', 'egfhjdb6ic', 'bchefgd6', 0, '1632212760', 50, 0),
(194, 'Nimsara', 'Male', 'bolfysamarawickrama123@gmail.com', 'pro tech sl', 'da32ef797bc44e0f373e232937f484eb', 'jehidfcgb6', 'egfhd6cb', 0, '1632188820', 150, 0),
(195, 'Arana', 'Male', 'aranasl772@gmail.com', 'SL Arana', '3f5f631bb19a5f03a82dc40acd16bb08', 'cidf6hjebg', '6cebgdfh', 0, '1632189420', 360, 0),
(212, 'Pradeep weerasinghe', 'Male', 'dushshanthapradeepweerasinghe@gmail.com', 'Pradeep', '2ecb1240a05569b7758aea3ecea067c9', 'gijdh6cefb', 'chbf6gde', 0, '1632202320', 50, 0),
(197, 'Menuja', 'Male', 'menuja624@gmail.com', 'Menuja1234', '6d7d8c80beb5a490e2149eba451c791a', 'fje6gdichb', 'fhecdb6g', 0, '1632190440', 260, 0),
(198, 'Miran', 'Male', 'miravlogs4466@gmail.com', 'Miravlogs', '0c072cf916db863586013cb4767c9bd6', 'ig6dhfecjb', 'gchefb6d', 0, '1632191580', 150, 0),
(199, 'gihan Sachindra', 'Female', 'gihansachindra503@gmail.com', 'Sachiya', '900196d608ca5193530c806da91b3984', 'fjihbgde6c', 'dbefgh6c', 0, '1632191640', 200, 0),
(200, 'Dulmith', 'Male', 'upekshith1@gmail.com', 'Dulmith', '04b7c4e73902e33c03b54cf227bdb4f1', 'bhedi6cgjf', 'ebch6dgf', 0, '1632192480', 200, 0),
(216, 'Pasan madhusha', 'Male', 'kavindutharusha429@gmail.com', 'Madhuwa', '99899068998f1f9d2475f021f125e7b3', 'bicdegjh6f', 'gbche6fd', 0, '1632206580', 350, 0),
(203, 'Dushman', 'Male', 'ellmain21@gmail.com', 'Dusha', '2d4cd6aa7ed692a2efb8c7c70bd9efae', 'cjdefgbi6h', 'fdhe6bcg', 0, '1632192780', 200, 0),
(204, 'Niroshan', 'Male', 'nirogunarathne@gmail.com', 'Niroshan', 'eab55ee2a2f91c8e9476fa52c96e5108', '6jdefghbci', 'ebgc6fhd', 0, '1632193080', 970, 0),
(205, 'Sajith', 'Male', 'sandaruwansajith96@gmail.com', 'Sandaruwan', '7c8e4cdb575e762d739c824524772227', '6cihedbgjf', 'fhegc6bd', 0, '1632193560', 100, 0),
(206, 'Srinath Dissanayaka', 'Male', 'bgs.dissanayaka@gmail.com', 'Malajhon', 'fe586822a5dcc7ecb377bbbf8eb3200f', 'bcgfedij6h', '6dehfgcb', 0, '1632195120', 150, 0),
(207, 'Jayanthi', 'Female', 'malshierangika1996@gmail.com', 'Mal123', 'fb6ada42eb9f27a2146fd6b0158cfe2e', 'gcjiebhd6f', 'e6fdhcgb', 0, '1632195960', 50, 0),
(208, 'sasanka uvanpriya', 'Male', 'sasankaacom2020@gmail.com', 'sasanka technology', '308f92e968ebe92b7d3d59341e37a276', '6bfihdegjc', 'bdefg6hc', 0, '1632197580', 200, 0),
(221, 'Eranga', 'Male', 'malshierangika@gmail.com', 'Eranga123', 'fb6ada42eb9f27a2146fd6b0158cfe2e', 'ijhd6becgf', 'dcgfeh6b', 0, '1632210240', 100, 0),
(222, 'sohan edirisinghe', 'Male', 'sohan.edirisinghe@gmail.com', 'Sohan', '905fb1e7aad1bceefd83337557f4008d', 'ih6cedfbgj', 'g6hecbdf', 0, '1632211560', 150, 0),
(213, 'Geefm', 'Male', 'mynextdream3@gmail.com', 'Geefm', 'd569d4c42fdf282075815d4d6c1f0878', 'efgbd6hcij', '6dehcfgb', 0, '1632202320', 50, 0),
(214, 'T.g.i.kawshalya', 'Female', 'ashinshanashanali@gmail.com', 'Shanali', '08b1bd787e0ac29361f50d806923c810', 'g6hfcidejb', 'dbgfehc6', 0, '1632202860', 200, 0),
(215, 'sithum vihanga', 'Male', 'sithummaxvihanga@gmail.com', 'svmoses', 'faa2fef55d07270458ea94aedc867bbb', 'g6fhejdcbi', 'bchfg6ed', 0, '1632202980', 100, 0),
(218, 'M.b.s.s wijewardhana', 'Male', 'stdsnc@gmail.com', 'Sandun650', '6091e53cf2cff29507c8476f952b4693', 'cbjghfie6d', 'gdh6bfec', 0, '1632208080', 650, 0),
(219, 'dushn', 'Male', 'karmapaka6@gmail.com', 'repa', 'e9ce2534bb4ff3127a1dcc252298b29d', 'gdjf6ehcib', 'gcefb6hd', 0, '1632208620', 200, 0),
(220, 'Noven', 'Male', 'mdnovenhazra@gmail.com', 'Noven', '71475d36f683f79e74cba7862d5d146d', 'fhg6dbiecj', 'dbcfhge6', 0, '1632209280', 150, 0),
(247, 'Tetra aquarium', 'Male', 'madhurahewage@gmail.com', 'Tetra aquarium', '7efb5142f8d7e9f5bb1fd43bd2e9ab50', 'f6jichdbge', 'ecf6gbhd', 0, '1632240600', 100, 0),
(248, 'Jinal chinthana', 'Male', 'jinalchinthana2@gmail.com', 'Jinal', '4fd3c83a8e497494fcb1680c370f45f1', 'hdicbej6gf', '6bfcedhg', 0, '1632242400', 100, 0),
(244, 'Chenitha De Zoysa', 'Male', 'dezoysachenitha@gmail.com', 'chenithadez', 'b67bd27d6f6e2177d1e34de84b7628b2', 'gjchdifb6e', '6hgfebdc', 0, '1632234720', 1210, 0),
(241, 'Chamali', 'Female', 'j.a.chamalipriyadarshani@gmail.com', 'Beyond the Eye', 'c812ff0f090d7e6f53aa779a7e11696b', 'figjceb6hd', 'cfgeb6hd', 0, '1632228960', 580, 0),
(227, 'sanupama', 'Male', 'octapadspd66350@gmail.com', 'saman ingilka', 'd2da1e9f79c6ca6d5d60c7a2b8673c5a', 'd6bichfgje', 'hg6dcbfe', 0, '1632216240', 150, 0),
(228, 'samare', 'Male', 'sammanipasasum@gmail.com', 'samare', 'cc8cf70f9ad2334be7a24f32aec78828', 'ghj6iebfcd', 'hgd6cefb', 0, '1632216240', 200, 0),
(229, 'Anuhas', 'Male', 'anuhaskaveesha24@gmail.com', 'Anuhas', '28bc4105c2927775d69a7aefa9fb6610', 'dbfj6gehic', '6dfcgehb', 0, '1632216300', 150, 0),
(230, 'Asanka Chandima', 'Male', 'asankanir0129@gmail.com', 'Rush Music Lk', 'c19c34b2e284311394f578c292842e2f', 'fijb6dghec', 'hfegc6bd', 0, '1632216360', 450, 0),
(231, 'Hemantha disanayaka', 'Male', 'hemanthadisanayaka1983@gmail.com', 'Hemantha', '52738a8e58f0d994de8525854bd1a0a3', 'eih6fbcdjg', 'db6fhegc', 0, '1632216720', 200, 0),
(232, 'Chathura Lakmal', 'Male', 'chathuralakmal.rox@gmail.com', 'Chathura0160', '75bcbcf2e88cd812f7ce67b55a4f8c36', 'gfedhjibc6', 'fbgdh6ce', 0, '1632217140', 300, 0),
(233, 'saman Ela', 'Male', 'octapadsampledownload@gmail.com', 'dsga gnhbf', 'd2da1e9f79c6ca6d5d60c7a2b8673c5a', 'cbe6fjigdh', 'gebdfhc6', 0, '1632217740', 250, 0),
(234, 'damath sanka', 'Male', 'octapadsinhalapanthiya@gmail.com', 'ade yako', 'd2da1e9f79c6ca6d5d60c7a2b8673c5a', 'fjbdcegh6i', 'hbdf6egc', 0, '1632218040', 150, 0),
(242, 'Samash piumantha', 'Male', 'samashm54m@gmail.com', 'Samash', '771f8b750c78fe00922544f90a467aa2', 'cdjfgbie6h', 'ce6hbgdf', 0, '1632229320', 150, 0),
(237, 'Chathura akalanka', 'Male', 'machandope119@gmail.com', 'Machandope119', 'c139f46cad9889b73c4e99de95f3de24', 'bfjei6ghdc', 'd6ghbcfe', 0, '1632219600', 50, 0),
(238, 'glt sampath', 'Male', 'vcdsampath@gmail.com', 'glt077', 'cfe0690a8bc9cc2c4ed6199d5daf4eef', 'igecfjbd6h', 'fghdb6ec', 0, '1632220500', 100, 0),
(246, 'Upali', 'Male', 'rockupali@gmail.com', 'Upali', 'e35fcaa734b6c60b6b4ca83cb003fa4e', 'i6hfdjgbce', 'ed6fcgbh', 0, '1632238200', 200, 0),
(240, 'supul', 'Male', 'supulnamina@gmail.com', 'supul 12', '7e093add97ffe45922bda1d6111f1b7c', 'd6efbcgihj', 'fd6gcehb', 0, '1632225660', 300, 0),
(245, 'Sudath Jayatissa', 'Male', 'sudathjayatissa@gmail.com', 'Sudath Jayatissa', '686df0a196802eae8bb4caa39d4433ef', 'ij6cfbhgde', 'd6bghecf', 0, '1632235620', 200, 0),
(249, 'Shanthani', 'Female', 'roxjeseelan@gmail.com', 'Shanthani', '460cca5362ec726b1ccfafd5a4cd0779', 'eg6ijhcdfb', 'de6ghbcf', 0, '1632243540', 250, 0),
(254, 'Harshan Shaminda', 'Male', 'harshanshaminda@gmail.com', 'Agent flox', 'd4ceea93c86217aed9369ca83b18d105', 'ichd6ejbfg', 'ebfg6cdh', 0, '1632257280', 100, 0),
(251, 'Sachithra', 'Male', 'sachithramadusanka@gmail.com', 'Sachithra119', '7daf3ab8f87ef04d5710c47e066e56d2', 'decbhgfj6i', 'fb6dechg', 0, '1632244680', 550, 0),
(252, 'Suranga Prasad', 'Male', 'jayasingheprasad514@gmail.com', 'Jmsp jayasinghe', 'b3c8e819c5bfb8de2ea1f3a048d366c4', 'cb6jfgheid', 'h6fdcbeg', 0, '1632253140', 300, 0),
(253, 'Hiba', 'Female', 'Candyraja8@gmail.com', 'Candy', 'f56510596afe66348f7d5796f06ef734', 'fie6dhbgcj', 'b6hfdecg', 0, '1632254760', 150, 0),
(255, 'Sumith Kumara', 'Male', 'sumiyacenematic@gmail.com', 'Sumiya', 'ac40e9038adccc953960ca725078766e', 'gjdibf6hec', 'bfh6cedg', 0, '1632258120', 1940, 0),
(260, 'Dil', 'Male', 'dilru4850@gmail.com', 'Dil', '7bf8d0621d1026c942ce89191a6dcd45', 'gcbfijhed6', 'cbedghf6', 0, '1632273180', 100, 0),
(257, 'Tirosh Menuka', 'Male', 'r.indikasilva@gmail.com', 'tirosh1', 'e42bf7cc7d6cb8b16b6d5d748442251c', 'fe6cdgbhij', 'g6becdhf', 0, '1632258300', 50, 0),
(258, 'Thilini', 'Female', 'thiliniprasadika989@yahoo.com', 'Thilini', '31c635208a93501763a63ad3323f7245', 'jigdcb6hfe', 'ghcfbde6', 0, '1632263640', 100, 0),
(259, 'Sameera', 'Male', 'sameerabandara587@gmail.com', 'SLsameera', '6adef0a286e83425007cc8c37d0c400d', 'fh6jebdigc', 'cghd6bef', 0, '1632265920', 150, 0),
(261, 'Charith wishva', 'Male', 'wishvaedirisingha@gmail.com', 'wishva@92', '3a3d6251e5b0ec1cd91dacdedae495cc', 'bdcif6ehjg', 'gb6hcfed', 0, '1632277980', 200, 0),
(270, 'shamith udayanga', 'Male', 'udayangaa273@gmail.com', 'udayaelectric', 'f11c23106ccc0ca1d69915c4ca14875a', 'jicbgfhe6d', 'dcbgh6ef', 0, '1632298020', 110, 0),
(269, 'Dil', 'Female', 'dkawshi@gmail.com', 'Dkawshi', 'd398fa378ce3cb2c10e5a24f689968e8', 'gfhebd6icj', '6bfghedc', 0, '1632294900', 200, 0),
(264, 'janaka kasun', 'Male', 'jkasun146@gmail.com', 'janaka', '948cc12be7745ff9abf444a4fbd1868b', 'fdjgb6cieh', 'fhce6dgb', 0, '1632281760', 150, 0),
(268, 'Lochana Dayawansha', 'Male', 'dayawanshalochana@gmail.com', 'Lochana', '0a7b189e09d479635c36fb1942475c9f', 'fhjigcbe6d', '6gcfdbhe', 0, '1632294180', 100, 0),
(266, 'Nirmal Vimukthi', 'Male', 'nirmalvimukthi76@gmail.com', 'Creed', 'a2c119d86481b27279bd14a300f022dd', 'jbcfedhig6', 'gcbdhfe6', 0, '1632285900', 100, 0),
(267, 'Tharindu', 'Male', 'mmatlakmal2127@gmail.com', 'Tharindu', '75c8cfba5c7d64c5b8b737c225dbbd1b', 'bhd6eficjg', 'cbe6hgfd', 0, '1632288540', 100, 0),
(271, 'InduwaraN', 'Male', 'Induwara.nandasena@gmail.com', 'InduwaraN', '12ae156407db3d40d67982220461ff3c', 'bhjec6fdgi', 'gbdcfhe6', 0, '1632303900', 40, 0),
(274, 'Idunil Chathuranga', 'Male', 'idunil.chathurangainfo@gmail.com', 'Chathuranga', '5cf061be27e1862eed0daa4fd710bfb1', 'idjecfhb6g', 'hfcebg6d', 0, '1632315900', 100, 0),
(273, 'Rashmika heshan', 'Male', 'rashmikaheshan2006@gmail.com', 'Sl power knowledge', 'bec93bed3b64daa6006d49c7c1b62c52', 'gdej6fhbic', 'fh6begdc', 0, '1632309060', 100, 0),
(275, 'Thanu Geek', 'Male', 'dineththanusha@gmail.com', '@thanugeek', 'e4b01c6d41c2d506f5fb136cff7428d4', 'de6hbgcfij', '6egfdhbc', 0, '1632317760', 50, 0),
(276, 'asamga', 'Male', 'max2000hit@gmail.com', 'asangaranawaka', '4b83af38cd0f92399696abe89d28eddd', 'icdhjebg6f', 'fbhcg6ed', 0, '1632321480', 280, 0),
(291, 'Poststous', 'Male', 'poststous@gmail.com', 'poststous', 'bb1f4d0d97d9e9611fa9eac6c29ec1b7', 'ecjhid6gbf', '6egbfhcd', 0, '1632354780', 210, 0),
(292, 'NH BOY', 'Male', 'hansajadesilva23@gmail.com', 'nhboy@gmail.com', '0f7cfb6a1c67e22cad5864030929f729', 'ijedhc6gfb', 'hbfg6edc', 0, '1632357840', 10, 0),
(287, 'Rana Husnain', 'Male', 'ranahusnain770@gmail.com', 'ranahusnain789', 'da734028f42626ce86001a651c1d1bc4', 'jcibh6dgfe', '6efchgbd', 0, '1632337560', 100, 0),
(286, 'dilum rangana', 'Male', 'vvip.lksl@gmail.com', 'amdrangana', '1e8b125dc10e9e6713f0bd59a1c15421', 'hdjibgfc6e', 'dgc6bhfe', 0, '1632336480', 180, 0),
(280, 'Dinethma', 'Female', 'wihagidinethma@gmail.com', 'Dinethma', 'c0be75d309fc3bf7665a8648eade0c31', 'bgchej6dif', 'hgcfd6be', 0, '1632328020', 100, 0),
(281, 'Nimal rathnayaka', 'Male', 'www.nimalmy148@gmail.com', 'Nimal', '11ee864813dc48a527ec29601b4394b6', 'bef6ijdghc', 'cehfbgd6', 0, '1632328140', 50, 0),
(282, 'Asim', 'Male', 'asimkunic1994@gmail.com', 'AskeTv', 'b7e11a03362fb056f3521cc05671168f', 'gjfhdcb6ie', 'hfb6egdc', 0, '1632331080', 100, 0),
(284, 'Mohammed Mashood', 'Male', 'msdshd88@gmail.com', 'Mashood79', '4957514b06e970b8c83edeb4eea8987b', 'hbgj6fcedi', 'ehcdbgf6', 0, '1632332460', 100, 0),
(285, 'Nayana nipul', 'Male', 'nipulnayana@gmail.com', 'nayananipul', '16a2fcb6ba203b68ddfb80142de8de5e', 'jf6gciehbd', 'gecdfbh6', 0, '1632332640', 100, 0),
(289, 'Md Maksudur Rahman', 'Male', 'mmaksud@hotmail.com', 'Maksud', 'ae2a5abf5bbf09ff7af710575e1e2211', 'jfdg6chibe', 'f6hedgbc', 0, '1632340380', 160, 0),
(290, 'chamil priyadharshan', 'Male', 'chamilpriyadharshana90@gmail.com', 'chamiya', 'ecfdb6b51faf4f54239ed183e0a4f67c', 'hcg6idfjbe', '6cdfbghe', 0, '1632342060', 130, 0),
(293, 'Tharmenthira Ratnasi', 'Male', 'ttharmi85@gmail.com', 'Tharmi', '05427f23ef3e0039606fc0a02327bb31', 'djigbfh6ce', 'edh6cgfb', 0, '1632358500', 100, 0),
(294, 'Om singh', 'Male', 'os562472@gmail.com', 'MARVEL DC STUDIOS', '7925aa5cd8e0df17a285bf9bf597f695', 'iefb6dhjgc', 'hcfbg6ed', 0, '1632359460', 50, 0),
(295, 'Lakmal', 'Male', 'sampathmw87@gmail.com', 'Lakmalsampath', '6d069d6c32358e5b3f10096fa407f2c4', 'gdcfihjb6e', 'cdbehgf6', 0, '1632362640', 340, 0),
(296, 'Sandani Rathnayake', 'Female', 'sandaniratnayake@gmail.com', 'Sandani@12', '398b05bd8da5317fd52b882296be04d8', 'jgc6bdeihf', 'cfh6gedb', 0, '1632365040', 450, 0),
(297, 'sandaru chamika', 'Male', 'sandaruchamika1998@gmail.com', 'sandaru', '958eaf4cfd54df733a94772e51f02a4c', 'higbedfcj6', 'cebgd6hf', 0, '1632366480', 50, 0),
(298, 'Shanaka Silva', 'Male', 'shanakamalith94@gmail.com', 'Upahara', '6c15756e42c9174300294ac3ecfe2602', 'cjigbhdf6e', 'hgcedfb6', 0, '1632372540', 100, 0),
(301, 'Prasanna', 'Male', 'prasanna.amaranayake@gmail.com', 'Prasanna', 'c3044b07bff9815c57e6600a5a1eb525', 'jibdefhg6c', 'gdche6fb', 0, '1632384600', 60, 0),
(300, 'Manoj', 'Male', 'manojra077@yahoo.com', 'manj1234', '2ec16aeaffb70538939720ee7d3bf49a', 'b6fhcgjdei', 'gecd6fhb', 0, '1632375900', 100, 0),
(302, 'Sharon malshani', 'Female', 'k.w.g.malshan@gmail.com', 'Sharon', 'c1de5965c039f0c6e5852dc08d6f69c1', 'jdfbi6hcge', 'chbgfe6d', 0, '1632385680', 100, 0),
(303, 'unshape', 'Female', 'unshape10951414@gmail.com', 'UN-SHAPE', 'e1bad7ed34ea1b78151701150f0b0ef8', 'edbj6gchfi', 'egbd6hcf', 0, '1632385920', 1060, 0),
(308, 'kl jobs vacancies', 'Male', 'kithlankay@gmail.com', 'kithlankay@gmail.com', '89ea3c21b39623db95753f11455b20b1', 'ejdh6ibgfc', 'ecg6dhbf', 0, '1632411840', 100, 0),
(305, 'Kiri aiya', 'Male', 'kiriaiya3@gmail.com', 'Prdeep', '5cf4d974d6582306a8ba0ba96ba7dd6f', 'gfi6becdjh', 'fceb6hdg', 0, '1632386160', 100, 0),
(306, 'Rajika', 'Male', 'rajikabt@gmail.com', 'Rajika', 'e718e31a381a014035ee22957d14d266', 'cfgdh6jbie', 'bgf6ehdc', 0, '1632387960', 100, 0),
(307, 'Dulaksha', 'Male', 'Chavindujayathunga@gmail.com', 'Dula', 'dc0bbd0f227a6b52aece1c94e77a0365', 'g6dfehibjc', 'hbfd6egc', 0, '1632395460', 130, 0),
(312, 'Miyuru prabath', 'Male', 'miuruprabath267@gmail.com', 'Miyuru57', '1f62da2b1a5e1159cec769b052aada9f', 'dj6bhecgfi', '6edfghcb', 0, '1632454860', 100, 0),
(311, 'Chandana kumara', 'Male', 'chandana9600@yahoo.com', 'Chandu99', '7e20d6a3a8d6e1568e3c5052fd976c90', '6dcijgehbf', 'bcge6fhd', 0, '1632434040', 190, 0),
(313, 'Y.K.R.Wijayarathna', 'Male', 'kaviruruwindana2001@gmail.com', 'Slkmax', 'f61ee4bd67d4f0450b18263672592d03', 'cdjegih6bf', 'dh6fcbeg', 0, '1632455040', 50, 0),
(315, 'Art Events', 'Male', 'arteventsint@gmail.com', 'arteventsint', '80081431a5161b09f0d04d584c00181a', 'je6cbghdif', 'h6cgfdeb', 0, '1632491700', 100, 0),
(316, 'Imo Chibueze', 'Male', 'imochibueze3@gmail.com', 'Imo the best', 'c27b443f3e202f51327fe2f1b7c000a5', 'hjgd6biecf', 'bg6chdfe', 0, '1632493860', 100, 0),
(318, 'Malan ranathunga', 'Male', 'smartmalan@gmail.com', 'smartmalan', 'aeb29746ca5339e32a4fd6b72a174c87', 'eb6idfjchg', 'gbc6hdfe', 0, '1632532740', 160, 0),
(319, 'Riyaz', 'Male', 'Khanriyaz72971@gmail.com', 'Riyaz', 'f88353b24337bd4f8625450df4465d97', 'iegdj6bfhc', 'cghde6bf', 0, '1632542940', 100, 0),
(322, 'Navee Weenu', 'Female', 'naveeandweenu@gmail.com', 'naveeweenu', 'fadd02c0c33f027303dcabc7a5b1083d', 'e6ghcibjdf', 'bc6ghdef', 0, '1632641640', 410, 0),
(323, 'Melissa Baldsing', 'Female', 'melonline16@gmail.com', 'Mel2021', '3fb5184c1871f4b66280296302ff01ce', 'b6digfechj', 'hfcdb6ge', 0, '1632644340', 130, 0);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `ID` int(15) NOT NULL,
  `user` varchar(40) NOT NULL,
  `link` varchar(200) NOT NULL,
  `type` int(1) NOT NULL,
  `dtime` varchar(40) NOT NULL,
  `views` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`ID`, `user`, `link`, `type`, `dtime`, `views`) VALUES
(650, 'AnonyShy', 'inwoCfIIwgU', 1, '25/09/2021 6:55 pm', 0),
(72, 'chamiudara777', 'unOoeAs726k', 2, '17/09/2021 11:59 pm', 1),
(36, 'a', '4snj3ZxMgm8', 4, '17/09/2021 8:32 am', 16),
(37, 'a', 'vAT2AVraUtk', 4, '17/09/2021 8:35 am', 16),
(168, 'Ajith', 'I3TNe7etBNg', 1, '18/09/2021 9:45 pm', 1),
(274, 'menuka2008', 'QbGReuIMyUo', 1, '20/09/2021 3:18 am', 0),
(167, 'Ajith', 'vny8xYd50lM', 1, '18/09/2021 9:42 pm', 1),
(170, 'Ajith', 'U8pY0Nid8aY', 1, '18/09/2021 9:47 pm', 1),
(71, 'Lewva bro', '9ltWViy-b5g', 2, '17/09/2021 11:49 pm', 1),
(169, 'Ajith', 'njOxN9fEBE4', 1, '18/09/2021 9:46 pm', 1),
(70, 'App Tech Zone', 'Gu5fGqnOLU0', 2, '17/09/2021 11:35 pm', 1),
(53, 'a', 'u36ayYVi_e0', 3, '17/09/2021 10:48 am', 66),
(69, 'Pramo', '5pEeU-0FKAc', 2, '17/09/2021 12:45 pm', 1),
(649, 'AnonyShy', 'd_-hs0zaV0w', 1, '25/09/2021 6:53 pm', 1),
(647, 'AnonyShy', 'cZ20G06Cdoo', 2, '25/09/2021 6:51 pm', 0),
(648, 'AnonyShy', 'zP94ao3lWeg', 1, '25/09/2021 6:52 pm', 0),
(640, 'Sachithroxy', 'uDa-XfxxB6s', 1, '24/09/2021 11:57 pm', 0),
(104, 'Naveen', '6QenZ284BgE', 2, '18/09/2021 3:51 am', 1),
(372, 'Tharu123', '8FFmMl5WKMs', 1, '20/09/2021 9:14 pm', 0),
(643, 'Elpitiyaniro', 'ir-adijfkYY', 1, '25/09/2021 12:12 pm', 0),
(73, 'Sunshine23', '0GDIqUkej_E', 1, '18/09/2021 12:26 am', 4),
(74, 'SuperlankaTV', 'QNqN1H21Olo', 1, '18/09/2021 12:29 am', 3),
(76, 'Andrewy', 'rqrW_H2w9Lk', 1, '18/09/2021 12:53 am', 1),
(81, 'samithaeranda', 'gICoN7oJhug', 1, '18/09/2021 12:56 am', 1),
(78, 'Andrewy', 'XNqAsdZ9Pao', 1, '18/09/2021 12:54 am', 1),
(79, 'Andrewy', 'eTxlC4gdBss', 1, '18/09/2021 12:54 am', 2),
(80, 'samithaeranda', 'ow_oL4oZRwA', 2, '18/09/2021 12:54 am', 1),
(82, 'Andrewy', '_gjvlbQLgV4', 1, '18/09/2021 12:57 am', 1),
(84, 'Andrewy', 'H8MQU5jJQqA', 1, '18/09/2021 12:58 am', 1),
(86, 'AnonyShy', 'gyhR3JXQUOo', 2, '18/09/2021 1:11 am', 0),
(454, 'Art of graphics', 'EFzWjrU6EZc', 2, '21/09/2021 5:28 am', 0),
(645, 'AnonyShy', 'uqs2AhDkpNY', 2, '25/09/2021 6:07 pm', 0),
(88, 'AnonyShy', '-kPzou3QQnc', 2, '18/09/2021 1:14 am', 1),
(89, 'AnonyShy', '_Zf97oJmWBM', 2, '18/09/2021 1:14 am', 0),
(646, 'AnonyShy', 'ua71f3AER8k', 1, '25/09/2021 6:09 pm', 0),
(456, 'Art of graphics', '1v8mVOYAoqU', 2, '21/09/2021 5:29 am', 0),
(92, 'Art of graphics', 'ipQPTdzRsiM', 2, '18/09/2021 1:18 am', 1),
(458, 'Art of graphics', 'dXZWDyL9vqo', 2, '21/09/2021 5:30 am', 0),
(94, 'a', 'p7eKsvCluN8', 4, '18/09/2021 1:37 am', 17),
(102, 'Dns patabendige', '2dE5TklEzbE', 2, '18/09/2021 3:26 am', 1),
(97, 'vimukthin516', 'ppV5_caj3A8', 2, '18/09/2021 2:05 am', 1),
(98, 'Sandeepa 1982', 'MxJnnyAil4M', 2, '18/09/2021 2:28 am', 1),
(99, 'Sandeepa 1982', 'tZy2nAnF6jM', 2, '18/09/2021 2:36 am', 1),
(100, 'Sandeepa 1982', 'XVgGkZ2ruFg', 2, '18/09/2021 2:37 am', 1),
(101, 'Sandeepa 1982', 'EyDys7fHZws', 2, '18/09/2021 2:38 am', 2),
(652, 'Eranga123', '5b-Ma_aU2f0', 1, '26/09/2021 2:35 am', 1),
(638, 'smartmalan', 'sTszdNXOfgA', 1, '24/09/2021 9:21 pm', 0),
(109, 'Apedoctor', 'AftXtYeekJs', 1, '18/09/2021 5:09 am', 3),
(110, 'VishwaTVSL', 'oLc1KdR6MA4', 2, '18/09/2021 5:14 am', 1),
(111, 'VishwaTVSL', 'QoZ_HJePOcs', 2, '18/09/2021 5:16 am', 1),
(112, 'Sanjika', '8SFk71tFRLg', 2, '18/09/2021 5:33 am', 1),
(114, 'thisal', 'zDGz7U9zsrk', 1, '18/09/2021 5:43 am', 3),
(185, 'thisal', 'V4uYDktWGzs', 1, '19/09/2021 12:11 am', 1),
(639, 'smartmalan', 'JIHbCtoqAhE', 2, '24/09/2021 9:23 pm', 0),
(119, 'Slcovers', '7DCFDHNDdG4', 1, '18/09/2021 7:29 am', 2),
(120, 'Jeewa', 'ykCI6GKkKxI', 1, '18/09/2021 7:39 am', 1),
(121, 'Jeewa', '409K5q2wQ3U', 1, '18/09/2021 7:43 am', 1),
(122, 'Jeewa', 'u1-3ZmnI064', 1, '18/09/2021 7:45 am', 2),
(123, 'Jeewa', 'Gc7x0VK7pQ8', 1, '18/09/2021 7:46 am', 1),
(124, 'Jeewa', 'CUjuS8y2us0', 1, '18/09/2021 7:47 am', 2),
(128, 'dininduadithya', 'n07KVkAjuyY', 2, '18/09/2021 7:55 am', 1),
(129, 'dininduadithya', 'jU0XWKmKvw4', 2, '18/09/2021 7:58 am', 1),
(130, 'Manoj', '4HuK_YXaOo4', 2, '18/09/2021 8:08 am', 1),
(132, 'MRS Editors', '_QoyZTm7Zz8', 2, '18/09/2021 9:20 am', 1),
(133, 'Pasidu1000', '8QiRozzD9_w', 2, '18/09/2021 9:26 am', 1),
(134, 'Pasidu1000', 'I4c7x7B0UEQ', 1, '18/09/2021 9:30 am', 2),
(135, 'Jayaweera', 'Iyj9Tky9EvA', 2, '18/09/2021 10:04 am', 1),
(136, 'Jayaweera', 'jZREZPlM90g', 2, '18/09/2021 10:04 am', 0),
(137, 'Jayaweera', 'JCn9-B7Nr2Q', 2, '18/09/2021 10:05 am', 1),
(139, 'Jayaweera', 'YZf_u6kTbuI', 2, '18/09/2021 10:06 am', 1),
(140, 'Jayaweera', 'gkXyCawzqRc', 2, '18/09/2021 10:07 am', 1),
(636, 'Bandara', 'wsF2aHwnQlc', 1, '24/09/2021 12:17 pm', 1),
(141, 'Kumara', '7-lKxA55WWA', 2, '18/09/2021 10:16 am', 1),
(142, 'Jayaweera', 'SZUHgJVJ1s8', 1, '18/09/2021 10:20 am', 2),
(143, 'Sasintha Vidunjana', 'xrCTMrjtORQ', 2, '18/09/2021 10:59 am', 1),
(144, 'Sasintha Vidunjana', 'keZEwNY97Es', 2, '18/09/2021 11:00 am', 1),
(145, 'asela1990', 'k7FMRs312Zg', 1, '18/09/2021 11:49 am', 2),
(357, 'Speaktaste', 'i_1RztPJNG8', 2, '20/09/2021 1:04 pm', 0),
(147, 'maheshrda1982', 'MqMDVbSGE9A', 2, '18/09/2021 1:01 pm', 1),
(148, 'NESHI DIY &amp;CRAFT', 'h9HrMf5QURs', 1, '18/09/2021 1:05 pm', 2),
(149, 'NESHI DIY &amp;CRAFT', 'IU1BD62EtpU', 1, '18/09/2021 1:06 pm', 0),
(289, 'Okithma Menula', 'zyRG3krTiPg', 2, '20/09/2021 7:50 am', 0),
(287, 'Okithma Menula', '3RoGAwGA0Jk', 1, '20/09/2021 7:48 am', 2),
(153, 'Apedoctor', 'InISTAYrSnc', 1, '18/09/2021 1:27 pm', 2),
(154, 'Dumi124', 'xwKIHexWQ0E', 1, '18/09/2021 1:28 pm', 2),
(155, 'Dumi124', 'xmzMODrYT2U', 1, '18/09/2021 1:28 pm', 2),
(156, 'Dumi124', '1ynF36WOlbs', 1, '18/09/2021 1:29 pm', 1),
(157, 'Dumi124', 'q3ZvFWp0fRA', 1, '18/09/2021 1:29 pm', 2),
(427, 'tuanrahim', '53Or2wU3pkA', 2, '21/09/2021 3:05 am', 0),
(158, 'Topetop', 'uxGrOGM5kQ0', 1, '18/09/2021 3:30 pm', 2),
(159, 'Chana', 'rOTPYvX-bzQ', 2, '18/09/2021 6:07 pm', 0),
(160, 'Chana', 'tzLDESI_N-w', 2, '18/09/2021 6:09 pm', 0),
(161, 'Chana', 'z0bElo9q-fE', 2, '18/09/2021 6:10 pm', 0),
(162, 'Chana', '6gbnVYIDQI4', 2, '18/09/2021 6:11 pm', 1),
(163, 'Chana', '8v7UCBSVsU0', 1, '18/09/2021 6:22 pm', 2),
(164, 'Chana', 'af3Dp2FWhdQ', 1, '18/09/2021 6:23 pm', 2),
(358, 'Speaktaste', 'lwmngfP2LHM', 1, '20/09/2021 1:05 pm', 1),
(356, 'Speaktaste', 'IJUtovMhyps', 2, '20/09/2021 1:03 pm', 0),
(171, 'Kumara', 'uupNaI6Ux28', 1, '18/09/2021 9:58 pm', 1),
(621, 'kithlankay@gmail.com', 'UCIhfrNVi6z', 1, '23/09/2021 11:48 am', 0),
(173, 'Muditha1993', '9nVu9AQO98s', 1, '18/09/2021 10:29 pm', 1),
(174, 'Muditha1993', 'LhpJCkns6Ck', 2, '18/09/2021 10:34 pm', 1),
(175, 'damith98kumara', 't_lreL9o-kQ', 1, '18/09/2021 11:04 pm', 1),
(177, 'Sanju1209', 'udr10s-HA20', 2, '18/09/2021 11:39 pm', 0),
(178, 'Sanju1209', 'kcnk21I5JHg', 2, '18/09/2021 11:40 pm', 1),
(181, 'Sanju1209', 'yGcZVpw_uCg', 2, '18/09/2021 11:42 pm', 0),
(188, 'thisal', 'fWg5q2xeqJQ', 2, '19/09/2021 12:13 am', 0),
(206, 'thisal', 'gqdKvkbbAJI', 2, '19/09/2021 4:07 am', 1),
(190, 'Kasuni Gayathri', '5hrUoH-aKqc', 2, '19/09/2021 12:19 am', 0),
(191, 'Kasuni Gayathri', 'jm9jgyKYcwA', 2, '19/09/2021 12:28 am', 0),
(192, 'Kasuni Gayathri', 'pJD7SOYf53I', 2, '19/09/2021 12:39 am', 0),
(622, 'kithlankay@gmail.com', 'lWsOXs2Odx0', 2, '23/09/2021 11:52 am', 0),
(194, 'Pasindu21', 'oaMDKFBWF8w', 2, '19/09/2021 1:45 am', 0),
(195, 'Pasindu21', 'XG5GXCjAeDY', 2, '19/09/2021 1:46 am', 0),
(196, 'Pasindu21', 'qFJr9iAmKkU', 2, '19/09/2021 1:46 am', 0),
(197, 'Pasindu21', 'qC_os5tK_7c', 2, '19/09/2021 1:46 am', 0),
(198, 'Pasindu21', 'OgnCYapEweo', 2, '19/09/2021 1:47 am', 1),
(201, 'gihan13', 'EcK2VgEiD94', 2, '19/09/2021 3:16 am', 0),
(207, 'thisal', 'r2oIMOYhrvo', 2, '19/09/2021 4:07 am', 0),
(208, 'thisal', '2bFQRz1PSFk', 2, '19/09/2021 4:07 am', 0),
(209, 'thisal', 'wahmnWY5NIw', 1, '19/09/2021 4:08 am', 1),
(210, 'thisal', 'C7NRYLhX0tQ', 1, '19/09/2021 4:09 am', 1),
(211, 'thisal', 'nJGXrECH-Vk', 2, '19/09/2021 4:10 am', 1),
(212, 'amalkingsly', 'eOzqzr31RRo', 1, '19/09/2021 5:10 am', 1),
(213, 'Clakshitha', 'JNs7ZhZjvSM', 2, '19/09/2021 5:44 am', 1),
(214, 'Clakshitha', 'o2L-Q1Ym-yk', 2, '19/09/2021 5:45 am', 0),
(215, 'Clakshitha', 'LKt5AYLrbZs', 1, '19/09/2021 5:51 am', 1),
(216, 'Clakshitha', 'TrpgoYlNQLY', 1, '19/09/2021 5:52 am', 1),
(217, 'Clakshitha', 'PKoVXIe7v58', 2, '19/09/2021 5:52 am', 0),
(218, 'Clakshitha', 'vL_MERaZQWE', 2, '19/09/2021 5:53 am', 0),
(219, 'Clakshitha', 'vUwkvv4klvs', 2, '19/09/2021 5:54 am', 1),
(220, 'Pathum', '4qbqfpHs3tA', 2, '19/09/2021 7:31 am', 0),
(221, 'Pathum', 'x6Jcx8jypRA', 2, '19/09/2021 7:34 am', 0),
(222, 'Pathum', 'mh5_YYbKWXU', 2, '19/09/2021 7:35 am', 0),
(223, 'Pathum', 'lZRVGKGs0oQ', 2, '19/09/2021 7:36 am', 0),
(224, 'Pathum', 'G7t27e4dr3o', 2, '19/09/2021 7:36 am', 0),
(225, 'Pexel', '6XF-x4XOKD8', 1, '19/09/2021 7:42 am', 1),
(406, 'Geefm', 'Fdzu5h9tqg4', 2, '21/09/2021 1:35 am', 0),
(226, 'Diniduroshantha', 'nxBvRYFnmmc', 2, '19/09/2021 9:51 am', 1),
(227, 'Diniduroshantha', 'L9paukF_-Fc', 2, '19/09/2021 9:52 am', 0),
(228, 'Sasi', 'yomIkN_c8Gg', 2, '19/09/2021 12:01 pm', 0),
(229, 'Msthenuwara', 'XtJO6B_q828', 1, '19/09/2021 3:09 pm', 1),
(230, 'Msthenuwara', 'M-85e0Tr-6A', 1, '19/09/2021 3:11 pm', 2),
(231, 'Msthenuwara', '0oa9u5cvd0M', 1, '19/09/2021 3:12 pm', 0),
(232, 'besteye', 'mOifa57yj9Y', 1, '19/09/2021 4:12 pm', 2),
(233, 'Kumara', '0VzlJrjKC58', 2, '19/09/2021 9:56 pm', 1),
(234, 'Kumara', 'B9Lt-4Feqco', 1, '19/09/2021 10:06 pm', 1),
(235, 'Kumara', 'RwQXvi1S76c', 2, '19/09/2021 10:09 pm', 0),
(236, 'Kumara', 'Tbm7blVlY_A', 2, '19/09/2021 10:11 pm', 1),
(290, 'SL Motivator', 'Kx_Ot4LkaBM', 2, '20/09/2021 7:54 am', 0),
(237, 'OneTech', 'Umb82G3Kulc', 2, '19/09/2021 10:42 pm', 1),
(238, 'OneTech', 'OLKUfztbAS4', 1, '19/09/2021 10:42 pm', 1),
(239, 'village girl', 'VP6MetlRXuM', 1, '19/09/2021 11:34 pm', 1),
(240, 'village girl', 'LMqAkeb_sTI', 1, '19/09/2021 11:36 pm', 0),
(241, 'village girl', 'KLdItvLgYrU', 1, '19/09/2021 11:37 pm', 1),
(242, 'village girl', 'XDbiti8siew', 1, '19/09/2021 11:38 pm', 0),
(243, 'village girl', 'vJEV06Uxr7w', 1, '19/09/2021 11:38 pm', 1),
(244, 'samitha', 'x2qZS5hVBHc', 1, '20/09/2021 12:41 am', 1),
(245, 'Dulip', 'Sx2Q4K2BPRY', 2, '20/09/2021 1:20 am', 0),
(246, 'Ameeya', 'wHDckZ5HyX8', 2, '20/09/2021 1:24 am', 0),
(247, 'Lakshan', 'zlcqiPYiPGA', 2, '20/09/2021 1:28 am', 0),
(248, 'Dulip', 'T1Qmt17B_kc', 1, '20/09/2021 1:33 am', 2),
(249, 'Lakshan', 'Zrj81FKPXdU', 1, '20/09/2021 1:37 am', 2),
(250, 'SLAnuwa_007', 'APDh8SaJUqY', 2, '20/09/2021 1:56 am', 0),
(252, 'Golden ceylon', 'edwn09tQpQE', 2, '20/09/2021 2:19 am', 0),
(253, 'Golden ceylon', 'jJ3a5xuHjFw', 2, '20/09/2021 2:23 am', 0),
(254, 'Nirmal', 'pCP1vsyFkJ4', 2, '20/09/2021 2:23 am', 0),
(264, 'harasha1234', 'mOFECJ3GlbM', 1, '20/09/2021 2:30 am', 2),
(256, 'Nirmal', 'O1RBn-z8UFA', 2, '20/09/2021 2:24 am', 0),
(263, 'Golden ceylon', 'o_LmT7ARUeM', 2, '20/09/2021 2:29 am', 0),
(258, 'Nirmal', '4LMcBhSdzzU', 2, '20/09/2021 2:25 am', 0),
(262, 'Golden ceylon', 'XdiybXBK6Mg', 2, '20/09/2021 2:28 am', 0),
(260, 'Nirmal', 'BK0GnxsFm74', 2, '20/09/2021 2:26 am', 0),
(261, 'Nirmal', '_bS0ZtlW3N0', 2, '20/09/2021 2:26 am', 0),
(265, 'Golden ceylon', 'rBY8PlJyEBY', 2, '20/09/2021 2:31 am', 0),
(267, 'Prabathm87', 'uSteEdQAGGA', 2, '20/09/2021 2:33 am', 0),
(268, 'Prabathm87', 'j9SEiPmhFAs', 2, '20/09/2021 2:34 am', 0),
(269, 'dhanushkasl.net', 'XKxuZHz-jpo', 2, '20/09/2021 2:44 am', 0),
(270, 'dhanushkasl.net', '6FEaMERXM60', 2, '20/09/2021 2:47 am', 0),
(271, 'dhanushkasl.net', '9OKaOTHHYyQ', 2, '20/09/2021 2:47 am', 0),
(272, 'dhanushkasl.net', 'Je3KcmR4eSU', 2, '20/09/2021 2:48 am', 1),
(273, 'dhanushkasl.net', 'kzh1wHNQDFU', 2, '20/09/2021 2:48 am', 1),
(275, 'Wiman', 'FxKUApNJhIk', 1, '20/09/2021 4:15 am', 2),
(276, 'Ravihansal', 'Nh0_sY-dIy0', 2, '20/09/2021 4:53 am', 0),
(277, 'sfsdf34r3r', 'B9hRhfv781c', 2, '20/09/2021 4:56 am', 1),
(624, 'kithlankay@gmail.com', 'nVlZF8BFIFc', 2, '23/09/2021 11:54 am', 0),
(623, 'kithlankay@gmail.com', 'j2PgBRmOxBg', 2, '23/09/2021 11:53 am', 0),
(281, 'vida1982', '0sbNx1qQ_DU', 1, '20/09/2021 5:21 am', 2),
(288, 'Okithma Menula', '4rdjY3YUX10', 1, '20/09/2021 7:49 am', 2),
(283, 'Uditha', '21pGUgJtcQY', 2, '20/09/2021 5:52 am', 0),
(284, 'Uditha', 'qQRJsoi4Osc', 2, '20/09/2021 5:52 am', 0),
(285, 'gamingmate92', 'wPJZocGN4-8', 2, '20/09/2021 5:55 am', 0),
(291, 'SL Motivator', 'MfON4f-9dXE', 1, '20/09/2021 7:54 am', 1),
(292, 'SL Motivator', 'F1yoy7Rbhzg', 1, '20/09/2021 7:58 am', 1),
(293, 'SL Motivator', 'EvPjkmNncTI', 1, '20/09/2021 7:58 am', 0),
(294, 'SL Motivator', 'kFbjtMolalw', 1, '20/09/2021 7:59 am', 0),
(295, 'Slcovers', 'zC81UfqdUAk', 1, '20/09/2021 7:59 am', 1),
(296, 'SL Motivator', '2kxbtzto7IA', 1, '20/09/2021 8:00 am', 1),
(297, 'Harshasandaruwan', 'PBbTFR3zzEU', 1, '20/09/2021 8:03 am', 1),
(298, 'Harshasandaruwan', 'WQiMYDJO63k', 1, '20/09/2021 8:05 am', 1),
(299, 'Harshasandaruwan', 'C8jMyq3Fy20', 1, '20/09/2021 8:05 am', 1),
(300, 'Harshasandaruwan', 'x63nFZS-ZL0', 1, '20/09/2021 8:06 am', 1),
(302, 'Harshasandaruwan', 'wQg_gbFqN-c', 1, '20/09/2021 8:08 am', 1),
(303, 'Butterfly', 'UCWJeWM8bSS', 2, '20/09/2021 8:16 am', 0),
(304, 'Aruna.suresh077', 'ZjQuY7qwl2g', 2, '20/09/2021 8:28 am', 1),
(305, 'Aruna.suresh077', '2Ekqfz7i9n0', 2, '20/09/2021 8:30 am', 0),
(306, '123lakshan', 'tKR_IQDO9e8', 1, '20/09/2021 8:55 am', 2),
(307, 'Wddmadushanka', '8-cow7_8XmQ', 1, '20/09/2021 8:55 am', 1),
(308, 'Wddmadushanka', 'AykQxEMgE54', 1, '20/09/2021 8:57 am', 1),
(309, 'Wddmadushanka', 'o_rcF82za3A', 2, '20/09/2021 8:58 am', 0),
(310, 'Dulip', '2ZqwKM8ap9Y', 1, '20/09/2021 9:17 am', 1),
(311, 'kulanjith618', 'g9hxsTodCg0', 1, '20/09/2021 9:27 am', 1),
(312, 'Devinda', 'vN57LusxQhw', 2, '20/09/2021 9:44 am', 1),
(313, 'sathsarani', 'dm3sjkeCjuo', 2, '20/09/2021 10:04 am', 1),
(314, 'pathum51381', 'fcDZCdFbfys', 1, '20/09/2021 10:16 am', 1),
(315, 'Chanu', 'FZf-Yu5bQ4Q', 2, '20/09/2021 10:25 am', 1),
(316, 'Chanu', 'xnfrS9_Ats8', 1, '20/09/2021 10:25 am', 1),
(317, 'Tharunda2006', 'GrV5ypU_6qg', 2, '20/09/2021 10:31 am', 1),
(319, 'TravelEurope4K', 's3G15mWfjtM', 1, '20/09/2021 10:42 am', 1),
(320, 'tmindika', 'C7_hNz0oY28', 2, '20/09/2021 10:43 am', 1),
(321, 'tmindika', 'sXYEJ6eqEpg', 2, '20/09/2021 10:44 am', 1),
(322, 'tmindika', 'uroWZJ1xxoQ', 2, '20/09/2021 10:45 am', 1),
(506, 'Jmsp jayasinghe', 'cshoKSBgpTk', 1, '21/09/2021 3:46 pm', 1),
(430, 'Eranga123', 'M0DsPYox2DQ', 1, '21/09/2021 3:51 am', 1),
(325, 'dileep774', 'FxEU8H5-mfw', 2, '20/09/2021 11:52 am', 0),
(326, 'dileep774', 'T49in9jjigU', 2, '20/09/2021 11:54 am', 0),
(327, 'dileep774', 'Vj8EgF-Dr6Q', 2, '20/09/2021 11:54 am', 0),
(328, 'dileep774', 'TTB0Tx--yqo', 2, '20/09/2021 11:55 am', 0),
(334, 'dileep774', '3Gb-XC9iAtg', 2, '20/09/2021 12:02 pm', 0),
(330, 'dileep774', '9viLvSE7PxU', 1, '20/09/2021 11:59 am', 1),
(331, 'dileep774', 'MViCMoFCCxI', 1, '20/09/2021 11:59 am', 1),
(333, 'dileep774', '3rzI76elviw', 1, '20/09/2021 12:01 pm', 0),
(335, 'dileep774', '9EJdsAKZ4bU', 1, '20/09/2021 12:02 pm', 1),
(336, 'dileep774', 'YdRTHZpjyl8', 1, '20/09/2021 12:03 pm', 0),
(337, 'Madhawa', 'O8LPOMsKsNc', 1, '20/09/2021 12:08 pm', 1),
(340, 'Madhawa', '3ZCLnFEzFZU', 1, '20/09/2021 12:10 pm', 1),
(339, 'Madhawa', '-iH6-GeoI-g', 1, '20/09/2021 12:09 pm', 1),
(341, 'Madhawa', 'omqXYDRw-nE', 2, '20/09/2021 12:10 pm', 0),
(342, 'Madhawa', 'aZ3MrW0IR_c', 2, '20/09/2021 12:14 pm', 0),
(343, 'Danuja890', 'AEbaQ6cASjw', 2, '20/09/2021 12:15 pm', 0),
(344, 'Danuja890', 'D_Xx6anQAio', 1, '20/09/2021 12:17 pm', 1),
(345, 'Theekshana', 'IlRCX_97WAs', 2, '20/09/2021 12:19 pm', 0),
(346, 'Theekshana', 'KBspKbxBp1o', 2, '20/09/2021 12:20 pm', 0),
(347, 'Theekshana', '9WIiavrdFdk', 2, '20/09/2021 12:21 pm', 1),
(348, 'Theekshana', 'Vhrh6xfFdcQ', 2, '20/09/2021 12:21 pm', 0),
(349, 'Theekshana', 'noOyl5Hc_PE', 2, '20/09/2021 12:22 pm', 0),
(350, 'Lakshan Sachintha', 'SWJK51gJGsQ', 2, '20/09/2021 12:42 pm', 1),
(351, 'Lakshan Sachintha', '4La-NmCDWkU', 1, '20/09/2021 12:43 pm', 1),
(352, 'Lakshan Sachintha', '31ReiAMbIrs', 2, '20/09/2021 12:44 pm', 1),
(353, 'Lakshan Sachintha', 'aIJEo3u4RX4', 1, '20/09/2021 12:45 pm', 1),
(354, 'Lakshan Sachintha', 'pzE7K4M5C-w', 1, '20/09/2021 12:46 pm', 1),
(355, 'Okithma Menula', 'Z-BWvIIDPIA', 1, '20/09/2021 12:53 pm', 1),
(359, 'Shashikala10', 'XeLrxCap6fY', 2, '20/09/2021 1:22 pm', 1),
(360, 'Thara1292', 'QJIVWfOjS20', 2, '20/09/2021 1:31 pm', 1),
(361, 'Thara1292', 'dZx3acZ3h_k', 1, '20/09/2021 1:42 pm', 1),
(362, 'Thara1292', 'd7cEZEhedOA', 2, '20/09/2021 1:53 pm', 1),
(363, 'Sajith', '1hGsB6VsGoI', 1, '20/09/2021 1:58 pm', 1),
(364, 'Sajith', 'gVPvvvCVXFk', 2, '20/09/2021 1:59 pm', 1),
(365, 'Upul priyankara', 'VJqqgAMfL_Q', 1, '20/09/2021 4:01 pm', 1),
(366, 'Upul priyankara', 'RB6SaIr8ZWI', 1, '20/09/2021 4:02 pm', 1),
(367, 'Upul priyankara', 'tU6DVjG9stw', 1, '20/09/2021 4:24 pm', 1),
(368, 'Tharuka', 'kiz2PwAy1Pk', 2, '20/09/2021 5:49 pm', 0),
(369, 'Tharuka', 'Phr9Ob2L9n0', 2, '20/09/2021 5:50 pm', 0),
(370, 'Tharuka', 'vpiaGPq6yYU', 2, '20/09/2021 5:51 pm', 1),
(371, 'akira', 'DL7mrcGRZow', 2, '20/09/2021 8:15 pm', 0),
(373, 'pro tech sl', 'wEa8hvsLuP4', 2, '20/09/2021 9:51 pm', 1),
(374, 'pro tech sl', 'uUfbXdbrVfE', 1, '20/09/2021 9:53 pm', 1),
(375, 'SL Arana', '0W-dUYvEYIc', 2, '20/09/2021 10:09 pm', 0),
(376, 'Menuja1234', 'g6o5dJApk5E', 2, '20/09/2021 10:15 pm', 1),
(377, 'Miravlogs', 'ZEzA6OFh-Cs', 1, '20/09/2021 10:35 pm', 1),
(378, 'Dulmith', '777JHVgf2JA', 2, '20/09/2021 10:49 pm', 1),
(379, 'Sachiya', 'B2G94vOzxcc', 2, '20/09/2021 10:51 pm', 0),
(380, 'Niroshan', 'B_mZNJY6JRw', 2, '20/09/2021 11:03 pm', 1),
(381, 'Niroshan', '93X_d4o6NwM', 2, '20/09/2021 11:05 pm', 1),
(382, 'Niroshan', 'sRx_p-Pwvxs', 1, '20/09/2021 11:06 pm', 1),
(383, 'Niroshan', 'iqxEjBgmZpY', 1, '20/09/2021 11:06 pm', 1),
(384, 'Sandaruwan', 'xP0XDXvBhWA', 2, '20/09/2021 11:12 pm', 1),
(385, 'Niroshan', 'RUFA1SEbkGo', 1, '20/09/2021 11:16 pm', 1),
(386, 'Niroshan', 'cFOitWXIBvc', 2, '20/09/2021 11:16 pm', 1),
(388, 'Niroshan', 'cqmfiS8N9Ac', 2, '20/09/2021 11:17 pm', 1),
(389, 'Niroshan', 'qhV-7_6QD_o', 2, '20/09/2021 11:18 pm', 1),
(390, 'Niroshan', '3RDyzx_XyY8', 1, '20/09/2021 11:19 pm', 1),
(392, 'Dulmith', 'lv8uoSjkSZQ', 2, '20/09/2021 11:21 pm', 1),
(399, 'Dulmith', 'zy6hEM6OExc', 1, '20/09/2021 11:40 pm', 0),
(400, 'Dulmith', 'lziu4x4u0i8', 2, '20/09/2021 11:40 pm', 1),
(395, 'Dulmith', 'KLsNhJlA8-U', 2, '20/09/2021 11:23 pm', 0),
(397, 'Malajhon', 'Kl-mOVY8AUQ', 1, '20/09/2021 11:35 pm', 1),
(401, 'Dulmith', 'pyAr6DEoscA', 2, '20/09/2021 11:42 pm', 1),
(402, 'Dulmith', 'J33ywD6hHmY', 1, '20/09/2021 11:42 pm', 1),
(403, 'Dulmith', 'PWhtv8ku_nA', 1, '20/09/2021 11:43 pm', 1),
(405, 'sasanka technology', 'KGRcyAxRQnc', 2, '21/09/2021 12:14 am', 1),
(407, 'Geefm', 'lXsw792euQc', 2, '21/09/2021 1:36 am', 0),
(408, 'Geefm', 'Aa9SLl7i2Bo', 2, '21/09/2021 1:38 am', 0),
(409, 'Pradeep', 'GG6QjDRbOJ8', 2, '21/09/2021 1:38 am', 0),
(410, 'Geefm', 'vJ15K-dMu-A', 2, '21/09/2021 1:38 am', 1),
(411, 'Geefm', 'JSHwn_NwTag', 2, '21/09/2021 1:39 am', 1),
(412, 'Pradeep', 'nDhUkibfhbI', 2, '21/09/2021 1:40 am', 0),
(413, 'Pradeep', 'ATNCciK-2TQ', 2, '21/09/2021 1:40 am', 0),
(414, 'Pradeep', 'eOIBIjfokjc', 2, '21/09/2021 1:41 am', 0),
(415, 'Dulip', 'HAyHcmcH7X4', 2, '21/09/2021 1:43 am', 1),
(416, 'svmoses', 'KZFA7q_ujH0', 2, '21/09/2021 1:44 am', 0),
(417, 'svmoses', '4-qOcbZNRuc', 2, '21/09/2021 1:45 am', 0),
(418, 'svmoses', 'CaKGSp2Vs7o', 2, '21/09/2021 1:46 am', 0),
(419, 'Pradeep', 'Ic7m9fbbDGM', 1, '21/09/2021 1:47 am', 1),
(420, 'Pradeep', 'c-bS33elJ_Q', 1, '21/09/2021 1:47 am', 1),
(421, 'Pradeep', 'mFqfrBtpNGo', 1, '21/09/2021 1:48 am', 1),
(422, 'Pradeep', 'ZJlIXgEfg7M', 1, '21/09/2021 1:49 am', 1),
(423, 'Pradeep', 'dT3ni7jBlDU', 1, '21/09/2021 1:50 am', 1),
(424, 'svmoses', 'fKp2TusiE8k', 1, '21/09/2021 2:34 am', 1),
(425, 'svmoses', 'Ui1g7pqXVJ0', 1, '21/09/2021 2:34 am', 1),
(455, 'samare', 'bEn0_045dcA', 2, '21/09/2021 5:28 am', 0),
(428, 'Sandun650', '1hmKYwPlWdM', 2, '21/09/2021 3:10 am', 0),
(450, 'Noven', '82XyePN9aoY', 1, '21/09/2021 4:49 am', 1),
(436, 'Eranga123', 'JXvigpkwsSg', 1, '21/09/2021 3:55 am', 1),
(433, 'TravelEurope4K', 'm8BfTRRbQww', 2, '21/09/2021 3:52 am', 1),
(435, 'gimhan12345', 'ssvUYEDUFPU', 1, '21/09/2021 3:54 am', 1),
(437, 'Sohan', '66TOs18Vz2w', 1, '21/09/2021 4:08 am', 1),
(440, 'TravelEurope4K', 'fJPFQGu9NPQ', 2, '21/09/2021 4:23 am', 1),
(441, 'TravelEurope4K', 'WyEeUd6KmYY', 1, '21/09/2021 4:24 am', 1),
(452, 'saman ingilka', 'YYIfjWMMtZE', 1, '21/09/2021 5:26 am', 1),
(453, 'saman ingilka', 'Sy9QjZ4mjDE', 2, '21/09/2021 5:27 am', 0),
(444, 'Senanayake hm', 'ikthoWndJZg', 1, '21/09/2021 4:28 am', 1),
(445, 'Senanayake hm', 'pdaShc-3Pns', 2, '21/09/2021 4:28 am', 0),
(446, 'Senanayake hm', '-P8dNHjXQ2Q', 1, '21/09/2021 4:30 am', 1),
(447, 'Senanayake hm', 'gANrwTsWqhc', 1, '21/09/2021 4:30 am', 0),
(449, 'Senanayake hm', 'Ma_oyct7mNM', 1, '21/09/2021 4:31 am', 1),
(457, 'Rush Music Lk', 'iIinB_fuM1Q', 2, '21/09/2021 5:30 am', 0),
(459, 'Rush Music Lk', '4RBrNbp1uu8', 2, '21/09/2021 5:31 am', 0),
(460, 'Rush Music Lk', 'ThGS_9Tug_Y', 2, '21/09/2021 5:31 am', 0),
(461, 'Hemantha', '9-lkhfwIuKY', 1, '21/09/2021 5:36 am', 1),
(462, 'Hemantha', 'Vg9Nsd3omIw', 1, '21/09/2021 5:46 am', 1),
(463, 'Chathura0160', '24VojC6Ho3Q', 2, '21/09/2021 5:47 am', 0),
(465, 'dsga gnhbf', 'D3zAQ-_X-GQ', 1, '21/09/2021 5:51 am', 1),
(466, 'ade yako', 'emA48misqLo', 1, '21/09/2021 5:56 am', 1),
(468, 'ade yako', 'nPNKtt_yPIg', 1, '21/09/2021 6:05 am', 1),
(469, 'ade yako', 'w05bzuVfL1I', 1, '21/09/2021 6:06 am', 1),
(470, 'Anuhas', 'q24qnWFlsXc', 1, '21/09/2021 6:09 am', 1),
(619, 'Mal123', 'F_CIjBemV8I', 2, '23/09/2021 11:42 am', 1),
(527, 'Agent flox', 'SzVe5qgsxTQ', 1, '22/09/2021 1:25 am', 1),
(528, 'Tharindu', 'EQNDiuX902M', 2, '22/09/2021 1:36 am', 1),
(475, 'Machandope119', 'B1x25tSkbHo', 1, '21/09/2021 6:22 am', 1),
(476, 'Machandope119', 'Ik66wPw0cGI', 2, '21/09/2021 6:23 am', 0),
(477, 'Machandope119', 'NG3i58AByAw', 2, '21/09/2021 6:24 am', 1),
(478, 'Machandope119', '9N0M3T7D8Po', 2, '21/09/2021 6:25 am', 0),
(479, 'Machandope119', 'ZaEvOGcSaSU', 1, '21/09/2021 6:26 am', 0),
(480, 'Machandope119', '7SygLp72LQc', 2, '21/09/2021 6:26 am', 0),
(481, 'glt077', 'BoeB3MuYDQw', 2, '21/09/2021 6:37 am', 1),
(482, 'glt077', '5k08Zc0PLao', 2, '21/09/2021 6:40 am', 0),
(484, 'Beyond the Eye', 'fWd4rkWL_FA', 1, '21/09/2021 9:03 am', 1),
(485, 'supul 12', 'KtBRRXlUYLE', 2, '21/09/2021 9:03 am', 0),
(497, 'Samash', '6NwnhvnlA9U', 1, '21/09/2021 12:25 pm', 1),
(487, '123lakshan', 'JKZ9lAdX2QU', 2, '21/09/2021 9:22 am', 0),
(488, 'Sandun650', 'LBT6k0f4Jpg', 2, '21/09/2021 9:30 am', 0),
(489, 'Sandun650', 'usFu9zXxhQ0', 2, '21/09/2021 9:30 am', 0),
(490, 'Sandun650', 'y_28zKD8q4w', 2, '21/09/2021 9:31 am', 0),
(491, 'Sandun650', '8XITLcJXG-U', 2, '21/09/2021 9:32 am', 1),
(492, 'chenithadez', 'zDo13Ne1HyE', 2, '21/09/2021 10:33 am', 1),
(493, 'chenithadez', 'MOqAOhE3kRQ', 1, '21/09/2021 10:42 am', 1),
(642, 'Niroshan', 'vDueRCEyXk0', 1, '25/09/2021 8:14 am', 1),
(494, 'Sudath Jayatissa', '5ErKbRhrjfc', 2, '21/09/2021 10:55 am', 0),
(620, 'Mal123', 'jTGCS8wOgiQ', 1, '23/09/2021 11:42 am', 1),
(495, 'Tetra aquarium', 'Sp4JBdsgFLM', 2, '21/09/2021 12:16 pm', 0),
(496, 'Tetra aquarium', 'NN6hsSZEyIY', 2, '21/09/2021 12:23 pm', 1),
(498, 'Jinal', '8H04vsCPP2k', 2, '21/09/2021 1:00 pm', 1),
(499, 'Shanthani', 'DZfRli1d63Q', 2, '21/09/2021 1:01 pm', 0),
(500, 'Sachithra119', '2oyCrU3GTvw', 2, '21/09/2021 1:19 pm', 0),
(501, 'Sachithra119', 'a-9PQEOjffU', 2, '21/09/2021 1:28 pm', 0),
(502, 'Sachithra119', '69cnkNVlHng', 2, '21/09/2021 1:40 pm', 1),
(503, 'Sachithra119', '_F_YHaXlUw8', 2, '21/09/2021 1:40 pm', 0),
(505, 'Sachithra119', '3MwITwECQlI', 1, '21/09/2021 1:43 pm', 1),
(507, 'Candy', '1SGEnXfLYF4', 2, '21/09/2021 4:07 pm', 0),
(508, 'Candy', '5Y_zgQqOjCM', 1, '21/09/2021 4:08 pm', 1),
(509, 'Jmsp jayasinghe', 'sYlOX5JSxXc', 2, '21/09/2021 4:39 pm', 0),
(510, 'Agent flox', 'RdzidSazh5A', 1, '21/09/2021 4:52 pm', 1),
(511, 'Agent flox', 'fKvrjm0VsYE', 2, '21/09/2021 4:55 pm', 0),
(517, 'Thilini', 'l-g41MhaACI', 2, '21/09/2021 6:40 pm', 0),
(513, 'tirosh1', '6eIRlvu65fo', 2, '21/09/2021 5:21 pm', 1),
(514, 'tirosh1', 'g_VxzDMt17k', 1, '21/09/2021 5:22 pm', 1),
(515, 'tirosh1', 'vmfwzvb1yVQ', 2, '21/09/2021 5:23 pm', 1),
(516, 'tirosh1', 'gPW29ZTU7oQ', 2, '21/09/2021 5:23 pm', 1),
(518, 'Thilini', 'IAlaH_BFpFo', 2, '21/09/2021 6:41 pm', 0),
(519, 'Thilini', 'ZCLRTMVAjOU', 2, '21/09/2021 6:42 pm', 0),
(520, 'Thilini', 'n0YNvIgfHSA', 2, '21/09/2021 6:44 pm', 0),
(521, 'Thilini', 'mvdQ14Iu7CA', 2, '21/09/2021 6:45 pm', 1),
(522, 'SLsameera', 'allq0pWkYos', 2, '21/09/2021 7:17 pm', 1),
(523, 'SLsameera', 'c1i_Pf_JW1I', 1, '21/09/2021 7:19 pm', 1),
(524, 'Dil', 'YqOFhnC5vmw', 2, '21/09/2021 9:24 pm', 1),
(525, 'janaka', 'rq_DDdjr-Ug', 1, '22/09/2021 12:07 am', 1),
(526, 'Creed', 'kRvjuJkB-V8', 2, '22/09/2021 12:47 am', 1),
(529, 'Lochana', 'YkBKjHwTEtQ', 2, '22/09/2021 3:07 am', 0),
(530, 'Dkawshi', 'qmjtjCQAvXA', 2, '22/09/2021 3:17 am', 0),
(531, 'samithaeranda', 'keMk92MEeIk', 2, '22/09/2021 4:09 am', 0),
(532, 'samithaeranda', 'aCQj7aZqB6U', 1, '22/09/2021 4:10 am', 1),
(533, 'samithaeranda', 'WbjrobI5YQ8', 1, '22/09/2021 4:12 am', 1),
(534, 'udayaelectric', 'Gu2pFICril4', 1, '22/09/2021 4:17 am', 1),
(535, 'Geefm', 'QPDMa7JxOw8', 1, '22/09/2021 5:04 am', 1),
(536, 'InduwaraN', 'JGF-gdruCSE', 1, '22/09/2021 5:49 am', 1),
(537, 'InduwaraN', 'l8NtB_NgOo4', 1, '22/09/2021 5:52 am', 1),
(538, 'InduwaraN', '8vOQ0a3Dnn8', 2, '22/09/2021 5:53 am', 0),
(539, 'InduwaraN', 'LLpRwmvXRoA', 1, '22/09/2021 6:21 am', 1),
(540, 'InduwaraN', 'oThOV7OeoQA', 1, '22/09/2021 6:24 am', 0),
(541, 'Sl power knowledge', 'DKt7tC6JhcM', 2, '22/09/2021 7:14 am', 0),
(542, 'janaka', 's7Jp53sLzuU', 1, '22/09/2021 7:20 am', 1),
(543, 'chenithadez', 'm8QP4M3p8lk', 2, '22/09/2021 7:48 am', 0),
(544, 'Chathuranga', 'idtOMurlsDM', 2, '22/09/2021 9:08 am', 0),
(545, '@thanugeek', 'CxIwMyw8uMo', 1, '22/09/2021 9:39 am', 1),
(546, '@thanugeek', 'c_AfssKtHa4', 2, '22/09/2021 9:39 am', 0),
(547, 'udayaelectric', 'MfNXqK507DY', 2, '22/09/2021 10:38 am', 0),
(548, 'asangaranawaka', 'zy6vlt5LqNw', 2, '22/09/2021 11:03 am', 0),
(549, 'chenithadez', '_EWKnmj1SW0', 1, '22/09/2021 11:22 am', 1),
(550, 'chenithadez', 'L4m1yD4RyQM', 1, '22/09/2021 11:22 am', 1),
(551, 'chenithadez', 'yqUIB_Vb5j8', 1, '22/09/2021 11:22 am', 1),
(552, 'chenithadez', 'qp5tdY6qSuo', 1, '22/09/2021 11:24 am', 1),
(554, 'chenithadez', 'LmVO8XABaAo', 2, '22/09/2021 11:24 am', 0),
(555, 'Dinethma', 'UCY4x_9zVEc', 2, '22/09/2021 12:31 pm', 0),
(556, 'Nimal', '7BDIX5y1Ka8', 1, '22/09/2021 12:31 pm', 1),
(557, 'Nimal', 'tX3Zar_pU2k', 1, '22/09/2021 12:33 pm', 0),
(558, 'nayananipul', 'UC_rPz8-dOG', 1, '22/09/2021 1:46 pm', 0),
(560, 'amdrangana', 'OdrZBjVCdRA', 1, '22/09/2021 2:58 pm', 1),
(561, 'amdrangana', '-EyJnagxu4g', 2, '22/09/2021 2:59 pm', 0),
(562, 'amdrangana', 'puprMPJ22VI', 1, '22/09/2021 3:07 pm', 1),
(563, 'ranahusnain789', 'lKnX6IHz1L4', 2, '22/09/2021 3:07 pm', 0),
(564, 'amdrangana', 'mEMKXzA2-Es', 1, '22/09/2021 3:08 pm', 1),
(565, 'amdrangana', 'P0ZKSizGpEM', 1, '22/09/2021 3:08 pm', 1),
(566, 'amdrangana', 'kUChpE6-Exo', 1, '22/09/2021 3:09 pm', 1),
(568, 'amdrangana', '14oOFJNKzQ8', 2, '22/09/2021 3:10 pm', 0),
(569, 'amdrangana', 'RmTxtvDa8b0', 2, '22/09/2021 3:10 pm', 0),
(570, 'amdrangana', '0EaRck1oui4', 2, '22/09/2021 3:11 pm', 0),
(571, 'amdrangana', 'JWGY7vkyq3I', 2, '22/09/2021 3:12 pm', 0),
(572, 'chamiya', 'Yn6Wh4rzQJE', 2, '22/09/2021 4:23 pm', 0),
(573, 'poststous', '5JMMUYuVpK8', 2, '22/09/2021 7:55 pm', 0),
(574, 'poststous', 'izM3OcpCfQ0', 2, '22/09/2021 8:07 pm', 0),
(578, 'nhboy@gmail.com', 'mTRs-xLLYJY', 2, '22/09/2021 8:58 pm', 0),
(576, 'nhboy@gmail.com', 'xzxmnzpgqiw', 1, '22/09/2021 8:56 pm', 1),
(577, 'Tharmi', 'DkDWEdse7iY', 2, '22/09/2021 8:57 pm', 0),
(579, 'nhboy@gmail.com', '74VsXm4eEjg', 1, '22/09/2021 9:04 pm', 1),
(580, 'nhboy@gmail.com', 'gIKMT0CvqFg', 1, '22/09/2021 9:04 pm', 1),
(581, 'nhboy@gmail.com', 'rJG169VNcSM', 1, '22/09/2021 9:05 pm', 0),
(582, 'nhboy@gmail.com', 'vSEMX3lzfkM', 2, '22/09/2021 9:05 pm', 0),
(583, 'MARVEL DC STUDIOS', 'JU7NxpMcUfs', 1, '22/09/2021 9:12 pm', 1),
(584, 'Lakmalsampath', 'qYoAIKQcu58', 2, '22/09/2021 10:29 pm', 0),
(585, 'Sandani@12', 'xLB9WCWjsyA', 2, '22/09/2021 10:58 pm', 0),
(586, 'sandaru', '3i6ckbp2_gw', 1, '22/09/2021 11:09 pm', 1),
(587, 'sandaru', '9nRG2Rd3sJs', 1, '22/09/2021 11:10 pm', 0),
(588, 'sandaru', 'MXws-st_3VQ', 2, '22/09/2021 11:12 pm', 0),
(589, 'Upahara', 'CU2MB-MPEXY', 2, '23/09/2021 12:53 am', 0),
(590, 'Upahara', 'TlSB80tbCmY', 1, '23/09/2021 12:57 am', 0),
(591, 'Beyond the Eye', 'WUpPUwBxcjw', 1, '23/09/2021 1:24 am', 1),
(592, 'manj1234', 'RZ-XnM4HjCs', 1, '23/09/2021 1:48 am', 0),
(593, 'Agent flox', 'yeYpFnrjB28', 1, '23/09/2021 1:52 am', 1),
(594, 'Agent flox', '0xfgTNuWO6A', 1, '23/09/2021 1:53 am', 0),
(595, 'Agent flox', 'bDAdFqrwQPY', 1, '23/09/2021 1:54 am', 0),
(596, 'UN-SHAPE', 'CUt4p7Dfwi8', 2, '23/09/2021 4:35 am', 0),
(597, 'Prasanna', 'rfIs6om44F4', 1, '23/09/2021 4:35 am', 1),
(598, 'Prasanna', 'OzvLt1nMo8Y', 1, '23/09/2021 4:36 am', 0),
(599, 'Prasanna', 'N-Q2dAFQAoI', 1, '23/09/2021 4:36 am', 0),
(600, 'Prasanna', 'jGWVDf7ZJ8Q', 1, '23/09/2021 4:36 am', 0),
(603, 'Prasanna', '1pWmh0xlJjk', 1, '23/09/2021 4:38 am', 0),
(605, 'Prasanna', '6s6_rsSOX3A', 2, '23/09/2021 4:38 am', 0),
(606, 'Prasanna', 'vcFyN3lTHN8', 2, '23/09/2021 4:38 am', 0),
(607, 'Prasanna', 'N7FQUDbdz50', 2, '23/09/2021 4:39 am', 0),
(608, 'Prasanna', 'YupwL00mf_I', 2, '23/09/2021 4:39 am', 0),
(609, 'Prasanna', 'WvSGhr9tvQw', 2, '23/09/2021 4:39 am', 0),
(610, 'Rajika', 'Um6IHp7WW60', 2, '23/09/2021 5:11 am', 0),
(611, 'Rajika', 'tEczuSPyp9k', 2, '23/09/2021 5:12 am', 0),
(612, 'Rajika', 'MvZI1dJFmYg', 2, '23/09/2021 5:13 am', 0),
(613, 'Rajika', 'HHOo9yL6Epk', 2, '23/09/2021 5:14 am', 0),
(614, 'Rajika', '0YfiWz1feUA', 2, '23/09/2021 5:14 am', 0),
(615, 'UN-SHAPE', '4jDk_1zN-KM', 1, '23/09/2021 5:21 am', 0),
(616, 'Dula', 'sp8yqUK087w', 1, '23/09/2021 7:15 am', 0),
(617, 'UN-SHAPE', 'NwvUctbJ73E', 1, '23/09/2021 7:16 am', 0),
(618, 'Dula', 'tC3TvOOA3MU', 1, '23/09/2021 7:22 am', 0),
(626, 'kithlankay@gmail.com', 'VHcXC27uCJ0', 2, '23/09/2021 11:56 am', 0),
(627, 'Chandu99', '842Nr7uY2mo', 2, '23/09/2021 6:06 pm', 0),
(628, 'Chandu99', 'ZmRf90_8bPI', 2, '23/09/2021 6:08 pm', 0),
(629, 'Chandu99', '9tDTmpg-b_Q', 1, '23/09/2021 6:13 pm', 0),
(630, 'Chandu99', 'vDWPwkhy2oI', 1, '23/09/2021 6:14 pm', 0),
(631, 'Chandu99', 'E-yjMm2TGpA', 2, '23/09/2021 6:19 pm', 0),
(632, 'Miyuru57', 'ZCYx2HRNrYs', 2, '23/09/2021 11:44 pm', 0),
(634, 'Slkmax', 'SsZJBSlVVrk', 1, '23/09/2021 11:49 pm', 1),
(635, 'arteventsint', 'P2J860fIn-c', 2, '24/09/2021 10:00 am', 0),
(641, 'Riyaz', '1MFIqic3b6o', 1, '25/09/2021 12:12 am', 0),
(651, 'AnonyShy', 'FucC_WaxbOQ', 1, '25/09/2021 6:56 pm', 0),
(653, 'Mel2021', 'XRMAfcUnlt0', 2, '26/09/2021 4:21 am', 0),
(654, 'Mel2021', 'Wid8c54WHls', 2, '26/09/2021 4:22 am', 0),
(655, 'naveeweenu', '4HUIY84MEtM', 2, '26/09/2021 6:33 am', 0),
(656, 'naveeweenu', 'vfNEhqduQM4', 2, '26/09/2021 6:34 am', 0),
(657, 'naveeweenu', 'bVuh-K1xl8Q', 2, '26/09/2021 6:38 am', 0),
(658, 'naveeweenu', 'TOZq6TTSbsk', 2, '26/09/2021 6:38 am', 0),
(659, 'Kumara', 'kD1UZIg2RCE', 2, '26/09/2021 9:48 pm', 0),
(660, 'UN-SHAPE', 'sMxZyb8EN0I', 1, '27/09/2021 12:59 am', 0),
(661, 'anoj001', '_SLBAuig7TE', 1, '27/09/2021 10:45 am', 2),
(662, 'HelaScript', 'DTQDMKx4Rks', 1, '29/09/2021 9:05 am', 1);

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE `view` (
  `ID` int(15) NOT NULL,
  `user` varchar(15) NOT NULL,
  `video` varchar(15) NOT NULL,
  `dtime` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `ID` int(8) NOT NULL,
  `web` varchar(500) NOT NULL,
  `user` varchar(40) NOT NULL,
  `dtime` int(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`ID`, `web`, `user`, `dtime`) VALUES
(22, 'https://nacktube.com/', 'Sumiya', 1632626475);

-- --------------------------------------------------------

--
-- Table structure for table `web`
--

CREATE TABLE `web` (
  `ID` int(8) NOT NULL,
  `web` varchar(500) NOT NULL,
  `dtime` varchar(40) NOT NULL,
  `views` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web`
--

INSERT INTO `web` (`ID`, `web`, `dtime`, `views`) VALUES
(10, 'https://nacktube.com/', '18/09/2021 6:46 am', 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `foget`
--
ALTER TABLE `foget`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `point`
--
ALTER TABLE `point`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `foget`
--
ALTER TABLE `foget`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `point`
--
ALTER TABLE `point`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=663;

--
-- AUTO_INCREMENT for table `view`
--
ALTER TABLE `view`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;

--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `web`
--
ALTER TABLE `web`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `trafwygw_traff`
--
CREATE DATABASE IF NOT EXISTS `trafwygw_traff` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `trafwygw_traff`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(8) UNSIGNED NOT NULL,
  `name` varchar(21) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `mail` varchar(65) NOT NULL,
  `code` varchar(35) NOT NULL,
  `datetime` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `name`, `pass`, `mail`, `code`, `datetime`) VALUES
(1, 'Maleesha Udan', '107062f0318180cce4f8d810c17d1165', 'maleeshaudan6@gmail.com', '1', 1628725260);

-- --------------------------------------------------------

--
-- Table structure for table `foget`
--

CREATE TABLE `foget` (
  `ID` int(8) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `code` varchar(30) NOT NULL,
  `dtime` int(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foget`
--

INSERT INTO `foget` (`ID`, `mail`, `code`, `dtime`) VALUES
(1, 'k.n@gmail.com', 'vxt6ncily1hr4k1jpfboe86uwszAmg', 1631713080),
(3, 'naveenbandara9899@gmail.com', 'eti4u1kl6Apzvryjdq6c8x1hombngw', 1631953860),
(4, 'maleeshaudan@gmail.com', 'g16wpcfhr8ynvldbek1izqo6Atu4sm', 1631954760),
(5, 'gihansachindra503@gmail.com', 'hop8dryA6kumbviwxnqzgj614cfl1e', 1632192180),
(6, 'menuja624@gmail.com', '1mh46jcrbwe6ouAqkid8fsvgnlpyzx', 1632197940),
(7, 'wishvaedirisingha@gmail.com', 'mbyku4qp1lgc1srxwAtz6f8eihndjv', 1632278340),
(8, 'hansajadesilva23@gmail.com', 'xkub16nAwelm8y4hd6opzisrqg1tfv', 1632409020),
(9, 'tuanrahim@gmail.com', 'snvwdxi8qtz6bmjc4egolr16khuypf', 1646717160);

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `ID` int(255) NOT NULL,
  `sid` int(20) NOT NULL,
  `rid` int(20) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `dtime` varchar(40) NOT NULL,
  `seen` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`ID`, `sid`, `rid`, `msg`, `dtime`, `seen`) VALUES
(221, 341, 329, '', 'November 7, 2021, 1:55 am', 1),
(380, 341, 25, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=lj5SzG4XHJo', 'December 25, 2021, 9:46 am', 1),
(379, 344, 25, 'Malli message eka awada', 'December 25, 2021, 9:45 am', 1),
(227, 341, 341, 'H', 'November 7, 2021, 4:01 am', 1),
(377, 25, 341, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=VFoEDN-yobo', 'December 25, 2021, 8:28 am', 1),
(378, 344, 25, 'Hi', 'December 25, 2021, 9:44 am', 1),
(376, 341, 25, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=UZX5kH72Yx4', 'December 25, 2021, 8:20 am', 1),
(374, 344, 329, 'test msg', 'December 25, 2021, 8:14 am', 1),
(375, 341, 344, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=UZX5kH72Yx4', 'December 25, 2021, 8:20 am', 1),
(372, 344, 344, 'tst', 'December 1, 2021, 2:46 am', 1),
(373, 344, 329, 'hi', 'December 25, 2021, 8:14 am', 1),
(371, 344, 329, 'this is a test msg 2', 'December 1, 2021, 2:46 am', 1),
(370, 344, 329, 'This is a test msg 1', 'December 1, 2021, 2:46 am', 1),
(369, 344, 329, 'How are you', 'December 1, 2021, 2:46 am', 1),
(368, 344, 329, 'test msg', 'November 30, 2021, 11:39 am', 1),
(366, 344, 329, 'This is a test msg', 'November 30, 2021, 10:54 am', 1),
(367, 344, 329, 'hi', 'November 30, 2021, 11:39 am', 1),
(364, 344, 25, 'Test msg', 'November 30, 2021, 9:20 am', 1),
(365, 344, 329, 'Hi', 'November 30, 2021, 10:53 am', 1),
(363, 344, 25, 'Hi', 'November 30, 2021, 9:19 am', 1),
(362, 25, 344, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=VFoEDN-yobo', 'November 30, 2021, 9:19 am', 1),
(361, 25, 344, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=VFoEDN-yobo', 'November 30, 2021, 9:18 am', 1),
(360, 344, 25, 'thank you', 'November 30, 2021, 9:17 am', 1),
(359, 344, 25, 'ok', 'November 30, 2021, 9:17 am', 1),
(358, 25, 344, 'ðŸ˜‹ðŸ˜‹ðŸ˜‹', 'November 30, 2021, 9:16 am', 1),
(357, 25, 344, 'hello i got ur mesage', 'November 30, 2021, 9:16 am', 1),
(356, 344, 25, 'hi', 'November 30, 2021, 9:16 am', 1),
(355, 25, 344, 'test message i got', 'November 30, 2021, 9:15 am', 1),
(353, 341, 25, 'Qq', 'November 30, 2021, 9:13 am', 1),
(352, 341, 25, 'Uu', 'November 30, 2021, 9:13 am', 1),
(351, 341, 25, 'Aa', 'November 30, 2021, 9:13 am', 1),
(350, 25, 341, 'api muge kamu', 'November 30, 2021, 9:12 am', 1),
(345, 25, 329, 'hello admin', 'November 30, 2021, 9:11 am', 1),
(344, 344, 329, 'test msg', 'November 30, 2021, 9:11 am', 1),
(343, 344, 0, 'hi', 'November 30, 2021, 8:59 am', 0),
(342, 341, 329, 'hi', 'November 25, 2021, 1:44 am', 1),
(334, 25, 341, '14', 'November 7, 2021, 6:19 am', 1),
(339, 341, 25, 'Yyy', 'November 7, 2021, 6:19 am', 1),
(338, 25, 341, '18', 'November 7, 2021, 6:19 am', 1),
(340, 341, 341, 's', 'November 25, 2021, 1:44 am', 1),
(341, 341, 341, 'l', 'November 25, 2021, 1:44 am', 1),
(335, 25, 341, '15', 'November 7, 2021, 6:19 am', 1),
(336, 25, 341, '16', 'November 7, 2021, 6:19 am', 1),
(332, 25, 341, '12', 'November 7, 2021, 6:19 am', 1),
(337, 25, 341, '17', 'November 7, 2021, 6:19 am', 1),
(333, 25, 341, '13', 'November 7, 2021, 6:19 am', 1),
(354, 344, 25, 'test msg', 'November 30, 2021, 9:15 am', 1),
(346, 341, 25, 'Hi', 'November 30, 2021, 9:11 am', 1),
(347, 341, 25, 'Hui', 'November 30, 2021, 9:11 am', 1),
(348, 344, 25, 'hi', 'November 30, 2021, 9:12 am', 1),
(349, 25, 344, 'hello aiye', 'November 30, 2021, 9:12 am', 1),
(381, 344, 341, 'Hi', 'December 25, 2021, 9:46 am', 1),
(382, 344, 341, 'Test message', 'December 25, 2021, 9:46 am', 1),
(383, 344, 341, 'Malli message eka awada?', 'December 25, 2021, 9:46 am', 1),
(384, 25, 344, 'test', 'December 25, 2021, 9:48 am', 1),
(385, 344, 25, 'Got it', 'December 25, 2021, 9:48 am', 1),
(386, 25, 344, 'cool', 'December 25, 2021, 9:49 am', 1),
(387, 344, 25, 'https://trafforyou.com/video.php?n=2comJanUbUyBaacode=5g2mmmLq8XI', 'December 25, 2021, 9:50 am', 1),
(388, 341, 341, 'https://trafforyou.com/video.php?n=2comJanUbUyBaacode=5g2mmmLq8XI', 'December 25, 2021, 9:52 am', 1),
(389, 25, 341, 'wada na habai', 'December 25, 2021, 9:52 am', 1),
(390, 344, 25, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=GRde7WGScrM', 'December 25, 2021, 9:53 am', 1),
(391, 341, 25, 'Denbalanna', 'December 25, 2021, 9:54 am', 1),
(392, 341, 344, 'Awoo', 'December 25, 2021, 9:54 am', 1),
(393, 344, 341, 'Malli', 'December 25, 2021, 9:55 am', 1),
(394, 344, 341, 'Videos play wenakota play back error ekak enawa', 'December 25, 2021, 9:56 am', 1),
(395, 344, 341, 'à¶¸à¶½à·Šà¶½à·’ à·ƒà·’à¶±à·Šà·„à¶½ à¶¸à·à·ƒà·šà¶¢à·”à¶­à·Š à·€à·à¶© à¶±à·šà¶¯', 'December 25, 2021, 9:56 am', 1),
(396, 344, 25, 'à¶¸à¶½à·Šà¶½à·’', 'December 25, 2021, 9:57 am', 1),
(397, 344, 25, 'à·ƒà·’à¶±à·Šà·„à¶½ à¶¸à·à·ƒà·šà¶¢à·”à¶­à·Š à·€à·à¶© à¶±à·šà¶¯', 'December 25, 2021, 9:57 am', 1),
(398, 344, 344, 'Hi', 'December 25, 2021, 9:57 am', 1),
(399, 344, 341, 'ðŸ‘ŒðŸ‘ŒðŸ‘ŒðŸ‘Œ', 'December 25, 2021, 10:00 am', 1),
(400, 344, 341, 'à¶‰à¶¸à·à¶¢à·’ à¶´à·šà¶±à·€à· à¶±à·šà¶¯ à¶¸à¶½à·Šà¶½à·’', 'December 25, 2021, 10:00 am', 1),
(401, 341, 25, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=03PXPQybgi8', 'December 25, 2021, 10:03 am', 1),
(402, 344, 25, 'hi', 'January 16, 2022, 9:42 am', 1),
(403, 344, 25, 'malli message eka awa neda?', 'January 16, 2022, 9:43 am', 1),
(404, 25, 344, 'ow aiyye', 'January 16, 2022, 9:43 am', 1),
(405, 344, 329, '2022.01.16', 'January 16, 2022, 9:44 am', 1),
(406, 344, 348, 'hi', 'January 16, 2022, 9:45 am', 1),
(407, 344, 348, 'hi', 'January 16, 2022, 9:47 am', 1),
(408, 344, 25, 'malli oyage eka digata message dispaly wenwada loop ekk wage?', 'January 16, 2022, 9:51 am', 1),
(409, 344, 348, 'ðŸ˜Š', 'January 16, 2022, 9:53 am', 1),
(410, 344, 348, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=BiWwjOnudMY', 'January 16, 2022, 10:13 am', 1),
(411, 344, 25, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=BiWwjOnudMY', 'January 16, 2022, 10:18 am', 1),
(412, 25, 348, 'hello', 'January 16, 2022, 10:20 am', 0),
(413, 25, 348, 'knwa yako', 'January 16, 2022, 10:21 am', 0),
(414, 344, 348, 'hi', 'January 16, 2022, 10:21 am', 1),
(415, 25, 348, 'wenna ba habai', 'January 16, 2022, 10:22 am', 0),
(416, 344, 348, 'malli messaage eka awada?', 'January 16, 2022, 10:22 am', 1),
(417, 344, 25, 'Hi', 'January 16, 2022, 10:34 am', 1),
(418, 344, 25, 'Hi', 'January 16, 2022, 10:34 am', 1),
(419, 344, 25, 'Message eka awada malli', 'January 16, 2022, 10:34 am', 1),
(420, 341, 341, 'Gg', 'January 16, 2022, 11:31 am', 1),
(421, 341, 341, 'Aa', 'January 16, 2022, 11:31 am', 1),
(422, 341, 341, 'Aa', 'January 16, 2022, 11:31 am', 1),
(423, 341, 341, 'Hh', 'January 16, 2022, 11:31 am', 1),
(424, 341, 341, 'Typ', 'January 16, 2022, 11:31 am', 1),
(425, 341, 348, 'Mofa dulata', 'January 16, 2022, 11:33 am', 1),
(426, 348, 341, 'hi', 'January 16, 2022, 11:33 am', 1),
(427, 341, 348, 'Hui', 'January 16, 2022, 11:33 am', 1),
(428, 348, 341, 'ow huthhtu', 'January 16, 2022, 11:33 am', 1),
(429, 348, 341, 'ow huththooooooooo', 'January 16, 2022, 11:33 am', 1),
(430, 341, 348, 'Hahahah', 'January 16, 2022, 11:34 am', 1),
(431, 341, 348, 'Hahah', 'January 16, 2022, 11:34 am', 1),
(432, 341, 348, 'Haha', 'January 16, 2022, 11:34 am', 1),
(433, 348, 348, 'maraanwa ykoo', 'January 16, 2022, 11:35 am', 1),
(434, 348, 341, 'maranwa ykoo', 'January 16, 2022, 11:35 am', 1),
(435, 341, 348, 'Kanawa yakoh', 'January 16, 2022, 11:35 am', 1),
(436, 348, 341, 'ai uba game da', 'January 16, 2022, 11:35 am', 1),
(437, 341, 348, 'Ow ai ai ai', 'January 16, 2022, 11:36 am', 1),
(438, 348, 341, 'muktuh ne', 'January 16, 2022, 11:36 am', 1),
(439, 341, 25, 'D', 'January 16, 2022, 11:37 am', 1),
(440, 348, 348, 'maranwa ykoo', 'January 16, 2022, 11:37 am', 1),
(441, 348, 348, 'hii', 'January 16, 2022, 11:37 am', 1),
(442, 341, 341, 'Hi', 'January 16, 2022, 11:38 am', 1),
(443, 341, 341, 'Huuuui', 'January 16, 2022, 11:38 am', 1),
(444, 341, 341, 'Uuu', 'January 16, 2022, 11:39 am', 1),
(445, 348, 344, 'hi', 'January 16, 2022, 11:59 am', 1),
(446, 344, 348, 'hi', 'January 16, 2022, 12:00 pm', 1),
(447, 348, 344, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=2kEIfAurC3A', 'January 16, 2022, 12:03 pm', 1),
(448, 348, 344, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=2kEIfAurC3A', 'January 16, 2022, 12:03 pm', 1),
(449, 348, 344, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=isnCi9Zjpr4', 'January 16, 2022, 12:04 pm', 1),
(450, 344, 329, 'hi', 'January 16, 2022, 12:06 pm', 1),
(451, 344, 348, 'hi', 'January 16, 2022, 12:07 pm', 1),
(452, 348, 329, 'hi', 'January 16, 2022, 12:08 pm', 1),
(453, 348, 329, 'hi', 'January 16, 2022, 12:13 pm', 1),
(454, 348, 329, 'dulara', 'January 16, 2022, 12:14 pm', 1),
(455, 329, 348, 'maleesha', 'January 16, 2022, 12:14 pm', 1),
(456, 348, 329, 'à¶¢à·Šà·†à·Šà¶¯à·Šà¶¶à·Šà·†à·Šà¶¯à·Šà¶¶à·Šà·†à·Šà·„à·Šà¶¶à·Šà·ƒà·Š', 'January 16, 2022, 12:14 pm', 1),
(457, 329, 348, 'à·ƒà·’à¶‚à·„à¶½', 'January 16, 2022, 12:14 pm', 1),
(458, 329, 348, 'kohomada', 'January 16, 2022, 12:17 pm', 1),
(459, 348, 329, 'guyig', 'January 16, 2022, 12:17 pm', 1),
(460, 348, 329, 'gctgvtgcck', 'January 16, 2022, 12:18 pm', 1),
(461, 348, 329, 'helascript', 'January 16, 2022, 12:18 pm', 1),
(462, 348, 329, 'sfbsdf;b;', 'January 16, 2022, 12:19 pm', 1),
(463, 348, 329, 'jnjfjdbfs', 'January 16, 2022, 12:19 pm', 1),
(464, 348, 329, 'fbjsdbfjbds', 'January 16, 2022, 12:19 pm', 1),
(465, 329, 348, 'fdfenb,feiprtjrf', 'January 16, 2022, 12:19 pm', 1),
(466, 348, 329, 'dfjndjfbjsd', 'January 16, 2022, 12:19 pm', 1),
(467, 348, 329, 'jdfbjdbfjbdlf', 'January 16, 2022, 12:19 pm', 1),
(468, 348, 329, 'djfnjdbjfbdsjf', 'January 16, 2022, 12:19 pm', 1),
(469, 348, 329, 'jdfjdbfjbdsj', 'January 16, 2022, 12:19 pm', 1),
(470, 329, 348, 'fgfrewhrthg', 'January 16, 2022, 12:19 pm', 1),
(471, 348, 329, 'jbfdjbdsjkfb', 'January 16, 2022, 12:19 pm', 1),
(472, 348, 329, 'jfdsjfbjsd', 'January 16, 2022, 12:19 pm', 1),
(473, 329, 348, 'gtenjegtjqtyjyt', 'January 16, 2022, 12:19 pm', 1),
(474, 348, 329, 'jfsdjfbjsdb', 'January 16, 2022, 12:19 pm', 1),
(475, 348, 329, 'jfsdjfbdf', 'January 16, 2022, 12:19 pm', 1),
(476, 348, 329, 'djfjdbfjbs', 'January 16, 2022, 12:19 pm', 1),
(477, 329, 348, 'hrtehfbfshtehjteggfd', 'January 16, 2022, 12:19 pm', 1),
(478, 348, 329, 'jfbjdsbfjbdsl[', 'January 16, 2022, 12:19 pm', 1),
(479, 348, 329, 'fjdsbfjsbdf', 'January 16, 2022, 12:19 pm', 1),
(480, 348, 329, 'jbfjdbjfsd', 'January 16, 2022, 12:19 pm', 1),
(481, 348, 329, 'jdbfjdbfjjf', 'January 16, 2022, 12:19 pm', 1),
(482, 329, 348, 'fhehdcgvrfhrfgbfgf', 'January 16, 2022, 12:19 pm', 1),
(483, 348, 329, 'jbdjsbjbsf', 'January 16, 2022, 12:19 pm', 1),
(484, 348, 329, 'fjsdbfjsd', 'January 16, 2022, 12:19 pm', 1),
(485, 348, 329, 'jfbsdjfbdsjf', 'January 16, 2022, 12:19 pm', 1),
(486, 329, 348, 'rwdfdsg3herfasferwdgr', 'January 16, 2022, 12:19 pm', 1),
(487, 348, 329, 'djfbjsdfbjsd', 'January 16, 2022, 12:19 pm', 1),
(488, 348, 329, 'bfjsdbfjs', 'January 16, 2022, 12:19 pm', 1),
(489, 329, 348, 'dafdagrhdzfdgrfwdgr', 'January 16, 2022, 12:19 pm', 1),
(490, 329, 348, 'dgrhrwgdafewgt4qehjr', 'January 16, 2022, 12:19 pm', 1),
(491, 329, 348, 'fgsfdeqgrwvsfgrewhethsfdfeda', 'January 16, 2022, 12:19 pm', 1),
(492, 329, 348, 'snsdwsmdwdhgsid sdkwoduwdugwjdsmdlwsd', 'January 16, 2022, 12:20 pm', 1),
(493, 348, 329, 'dulara pramod bfjbjsdbf', 'January 16, 2022, 12:22 pm', 0),
(494, 329, 349, 'hi', 'January 16, 2022, 12:24 pm', 1),
(495, 348, 344, 'hiii', 'January 16, 2022, 12:24 pm', 1),
(496, 329, 349, 'kohomada', 'January 16, 2022, 12:25 pm', 1),
(497, 344, 329, 'test msg', 'January 16, 2022, 12:25 pm', 1),
(498, 349, 344, 'hgy', 'January 16, 2022, 12:26 pm', 1),
(499, 349, 329, 'k', 'January 16, 2022, 12:26 pm', 1),
(500, 329, 349, 'test mnsg', 'January 16, 2022, 12:26 pm', 1),
(501, 344, 349, 'test', 'January 16, 2022, 12:27 pm', 1),
(502, 344, 349, 'awada?', 'January 16, 2022, 12:27 pm', 0),
(503, 329, 350, 'hi', 'January 16, 2022, 12:32 pm', 1),
(504, 329, 350, 'test message', 'January 16, 2022, 12:33 pm', 1),
(505, 344, 350, 'malli msg eka awada?', 'January 16, 2022, 12:35 pm', 1),
(506, 350, 344, 'jjjjjjjjjjjjj', 'January 16, 2022, 12:35 pm', 1),
(507, 329, 350, 'gnljkgnrektgh5r3', 'January 16, 2022, 12:35 pm', 1),
(508, 350, 329, 'jfbujsbefbs', 'January 16, 2022, 12:35 pm', 1),
(509, 350, 329, 'dbfbshdfhsbd', 'January 16, 2022, 12:35 pm', 1),
(510, 350, 329, 'hdbfhsbdhfbs', 'January 16, 2022, 12:35 pm', 1),
(511, 350, 329, 'hfbshdbf', 'January 16, 2022, 12:36 pm', 1),
(512, 329, 350, 'rytgjdsbdjwqgew', 'January 16, 2022, 12:36 pm', 1),
(513, 329, 350, 'snqkfhnekgfrew;fved', 'January 16, 2022, 12:36 pm', 1),
(514, 350, 344, 'dfsfsdf', 'January 16, 2022, 12:36 pm', 1),
(515, 329, 350, 'ksnsqqc;sjhfe', 'January 16, 2022, 12:36 pm', 1),
(516, 344, 350, 'eqgwrghrwgwrgredwfed', 'January 16, 2022, 12:36 pm', 1),
(517, 350, 329, 'dasdasds', 'January 16, 2022, 12:36 pm', 1),
(518, 344, 350, 'dhgrw2gdvdabgfevdfdfe', 'January 16, 2022, 12:36 pm', 1),
(519, 350, 329, 'sdasdasdddddddd', 'January 16, 2022, 12:36 pm', 1),
(520, 344, 350, 'wfrerdgregr45grfe', 'January 16, 2022, 12:36 pm', 1),
(521, 344, 350, 'sgr53hgrwcsdegre', 'January 16, 2022, 12:36 pm', 1),
(522, 344, 350, 'wsfdewfgedwjkfdnsqkdnwq', 'January 16, 2022, 12:36 pm', 1),
(523, 344, 350, 'djhdbjleqnfe2gfuewhdwq', 'January 16, 2022, 12:36 pm', 1),
(524, 350, 329, 'sadjbhasdhashdv', 'January 16, 2022, 12:36 pm', 1),
(525, 350, 329, 'bhfbhsdf', 'January 16, 2022, 12:36 pm', 1),
(526, 344, 350, 'dkhfdiojhfsq;d,mwlfhewudiojfsq', 'January 16, 2022, 12:36 pm', 1),
(527, 350, 329, 'bbdhsba', 'January 16, 2022, 12:36 pm', 1),
(528, 344, 350, 'odjslkmledje2ifheikdmsw', 'January 16, 2022, 12:36 pm', 1),
(529, 350, 329, 'sdbshbdhsbdjba', 'January 16, 2022, 12:36 pm', 1),
(530, 350, 329, 'sjdbasbdjb', 'January 16, 2022, 12:36 pm', 1),
(531, 350, 329, 'jdbjasdbasjbd', 'January 16, 2022, 12:36 pm', 1),
(532, 329, 350, 'sfgqegeqfwqeqw', 'January 16, 2022, 12:36 pm', 1),
(533, 344, 350, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=a4pPnhhxvOU', 'January 16, 2022, 12:38 pm', 1),
(534, 344, 329, 'test 1', 'January 16, 2022, 12:39 pm', 1),
(535, 350, 344, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=hEPmyKwYwNo', 'January 16, 2022, 12:40 pm', 1),
(536, 344, 350, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=a4pPnhhxvOU', 'January 16, 2022, 12:41 pm', 1),
(537, 350, 344, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=3EHGK5RDH1U', 'January 16, 2022, 12:41 pm', 1),
(538, 344, 350, 'test 123', 'January 16, 2022, 12:47 pm', 1),
(539, 344, 350, '123 test message', 'January 16, 2022, 12:47 pm', 1),
(540, 344, 350, 'oya online innwd malli??', 'January 16, 2022, 12:48 pm', 1),
(541, 344, 329, 'this is a test message', 'January 16, 2022, 1:42 pm', 1),
(542, 329, 344, 'got it', 'January 16, 2022, 1:43 pm', 1),
(543, 344, 329, 'test message 2', 'January 16, 2022, 1:43 pm', 1),
(544, 329, 344, 'got test message 2', 'January 16, 2022, 1:43 pm', 1),
(545, 344, 348, 'test 2', 'January 16, 2022, 1:44 pm', 1),
(546, 341, 0, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=BiWwjOnudMY', 'January 16, 2022, 8:19 pm', 0),
(547, 341, 0, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=BiWwjOnudMY', 'January 16, 2022, 8:20 pm', 0),
(548, 341, 341, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=BiWwjOnudMY', 'January 16, 2022, 8:20 pm', 1),
(549, 341, 351, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=BiWwjOnudMY', 'January 16, 2022, 8:23 pm', 1),
(550, 351, 341, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=BiWwjOnudMY', 'January 16, 2022, 8:40 pm', 1),
(551, 344, 329, 'â¤ï¸â¤ï¸', 'January 16, 2022, 10:20 pm', 0),
(552, 344, 348, 'test', 'January 17, 2022, 12:19 am', 1),
(553, 344, 348, 'hi', 'January 17, 2022, 12:20 am', 1),
(554, 344, 348, 'gfugiphg', 'January 17, 2022, 12:21 am', 1),
(555, 344, 348, 'Hi', 'January 17, 2022, 12:24 am', 1),
(556, 344, 348, 'Kohomada', 'January 17, 2022, 12:24 am', 1),
(557, 344, 350, 'this is a test message', 'January 17, 2022, 1:02 am', 0),
(558, 344, 349, 'this is a test message 02', 'January 17, 2022, 1:03 am', 0),
(559, 344, 329, 'test message', 'January 17, 2022, 1:03 am', 0),
(560, 348, 344, 'tetxx', 'January 18, 2022, 2:07 am', 1),
(561, 344, 348, 'test message', 'January 18, 2022, 2:07 am', 1),
(562, 348, 344, 'n', 'January 18, 2022, 2:07 am', 1),
(563, 344, 348, 'maleesha', 'January 18, 2022, 2:07 am', 1),
(564, 348, 344, 'grsgsfg', 'January 18, 2022, 2:07 am', 1),
(565, 348, 344, 'n', 'January 18, 2022, 2:08 am', 1),
(566, 344, 348, 'dulara', 'January 18, 2022, 2:08 am', 1),
(567, 348, 344, 'sgggggggggggg', 'January 18, 2022, 2:08 am', 1),
(568, 344, 348, 'Maleesha', 'January 18, 2022, 2:09 am', 1),
(569, 344, 348, 'Test 2', 'January 18, 2022, 2:09 am', 1),
(570, 344, 348, 'test', 'January 18, 2022, 2:10 am', 1),
(571, 348, 344, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=PJ1gim8RqTo', 'January 18, 2022, 2:11 am', 1),
(572, 344, 348, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=4wCH1K-ckZw', 'January 18, 2022, 2:12 am', 1),
(573, 344, 348, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=3RQ6opJtIpQ', 'January 18, 2022, 2:51 am', 1),
(574, 341, 351, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=3RQ6opJtIpQ', 'January 18, 2022, 4:44 am', 1),
(575, 351, 341, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=CaTwmVx75xI', 'January 18, 2022, 5:10 am', 1),
(576, 351, 351, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=3wgZ8_p7Oco', 'January 18, 2022, 5:27 am', 1),
(577, 351, 341, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=3wgZ8_p7Oco', 'January 18, 2022, 5:27 am', 1),
(578, 341, 351, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=x5RslsxleY0', 'January 18, 2022, 5:29 am', 1),
(579, 341, 351, 'https://trafforyou.com/video.php?n=1comJanUbUyBaacode=3RQ6opJtIpQ', 'January 18, 2022, 5:33 am', 1),
(580, 72, 0, 'Hi, Why cant you display our video views count in this page ?', 'March 8, 2022, 7:44 am', 0),
(581, 72, 0, 'How can I check my video view count ?', 'March 8, 2022, 7:56 am', 0),
(582, 344, 329, 'hi', 'May 7, 2022, 1:43 pm', 0);

-- --------------------------------------------------------

--
-- Table structure for table `point`
--

CREATE TABLE `point` (
  `ID` int(5) NOT NULL,
  `reg` int(5) NOT NULL,
  `ref` int(5) NOT NULL,
  `refa` int(5) NOT NULL,
  `vv` int(5) NOT NULL,
  `wv` int(5) NOT NULL,
  `avv` int(5) NOT NULL,
  `awv` int(5) NOT NULL,
  `web` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `point`
--

INSERT INTO `point` (`ID`, `reg`, `ref`, `refa`, `vv`, `wv`, `avv`, `awv`, `web`) VALUES
(1, 100, 100, 100, 50, 100, 100, 150, 50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(8) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `mail` varchar(70) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `code` varchar(30) NOT NULL,
  `refcode` varchar(10) NOT NULL,
  `stat` int(1) NOT NULL,
  `dtime` varchar(40) NOT NULL,
  `point` int(40) NOT NULL,
  `status` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `fname`, `lname`, `mail`, `user`, `pass`, `code`, `refcode`, `stat`, `dtime`, `point`, `status`) VALUES
(29, '', '', '', 'a', '', '', '', 0, '', 2147473897, 0),
(32, 'Pramodya', 'Female', 'kaushipramo@gmail.com', 'Pramo', 'aaf7dac8aac22025c3ad29244c3a07de', 'gfd6bheicj', 'fhd6ebgc', 0, '1631897040', 100, 0),
(344, 'Ushani Ariyawansha', 'Female', 'ushaniariyawansha@gmail.com', 'ushani_001', '23629ba8da15b4afe20f0ec2b47f6108', 'bgjchf6dei', 'fedc6ghb', 0, '1638280440', 360, 1659193005),
(28, 'niroshan', 'Male', 'niroshanatradecenter2@gmail.com', 'Elpitiyaniro', '9f1a10d48fdaa0048a99ef63387aa40b', 'ibecgfhdj6', 'fgh6bdec', 0, '1631892420', 600, 0),
(25, 'anoj', 'Male', 'ad2001dinuranga@gmail.com', 'anoj001', 'af2bea5f3044e53134a9c5ad4d02f40c', 'ghceijf6bd', 'bchegdf6', 0, '1631882280', 1260, 0),
(36, 'Amila Ganegoda', 'Male', 'amilagak@gmail.com', 'Lewva bro', 'dd3f8e3556c3c0d0aa0ed38334295ae3', 'dbfc6iegjh', 'h6gebcfd', 0, '1631936640', 100, 0),
(27, 'Dulara', 'Male', 'theekshanamb2002@gmail.com', 'Emrys', '9558140c793210434c3db46739d5b9dc', 'g6hedijbfc', 'gfehd6bc', 0, '1631890380', 200, 0),
(35, 'Harshi', 'Female', 'isanka36@gmail.com', 'App Tech Zone', '71655994a42ae213c4d6c7e8445178ad', '6djefhbcgi', 'f6bedcgh', 0, '1631935920', 100, 0),
(37, 'chami', 'Male', 'chamiudara777@gmail.com', 'chamiudara777', '69d6de5a0acba830bbe9a024bd4da211', 'hejdc6fibg', 'fe6bdhgc', 0, '1631937300', 250, 0),
(60, 'Naveen bandara', 'Male', 'naveenbandara9899@gmail.com', 'Naveen', '70d982d9e40fa73404ae0e8f27997296', 'fchidbej6g', 'dfhgcb6e', 0, '1631950320', 350, 0),
(58, 'Dileesha', 'Female', 'sawanathar@gmail.com', 'Dns patabendige', '697b09f48b07bd26e0718c553b6d19d7', 'dc6gbfjihe', 'he6gbdcf', 0, '1631949900', 200, 0),
(40, 'Darsha', 'Female', 's.gayanisakaraja@gmail.com', 'Sunshine23', '602927456116e5619346207f5e1cd3ba', 'bcigf6dejh', 'fech6gdb', 0, '1631938980', 250, 0),
(41, 'Superlanka', 'Male', 'amithprasannamonaragala1@gmail.com', 'SuperlankaTV', '69005bb62e9622ee1de61958aacf0f63', 'dhbc6igfej', 'fb6dcegh', 0, '1631939160', 200, 0),
(59, 'Thisaru', 'Male', 'thisarusanjeewa1102@gmail.com', 'Tharu123', 'e4e0b6a0409bbefc0fcbaf62dfb5b652', 'bdhjegifc6', '6hgbcedf', 0, '1631950260', 150, 0),
(43, 'Rashith', 'Male', 'www.rdrharshane25@gmail.com', 'Art of graphics', '8bacf83020c03e3a0ac30d42791005b1', 'ib6ehjcgfd', 'gehc6bfd', 0, '1631940600', 300, 0),
(44, 'Samitha', 'Male', 'samithaeranda91@gmail.com', 'samithaeranda', '9570d5500506463dc2a38475a172e0d9', 'bghcjidf6e', '6fcgebhd', 0, '1631940600', 50, 0),
(45, 'Andrew', 'Male', 'andrewyoha9@gmail.com', 'Andrewy', 'd91547d65ab4c30802a91faaca9db77d', 'gjebd6icfh', 'cedb6ghf', 0, '1631940660', 100, 0),
(79, 'MRS Editors', 'Male', 'mrseditorsbusiness12345@gmail.com', 'MRS Editors', '101a1e40240c447bcf6619a66733ae03', 'i6jbdghfec', '6behcdgf', 0, '1631971020', 150, 0),
(63, 'test account', 'Male', 'addark65@gmail.com', 'test account', 'af2bea5f3044e53134a9c5ad4d02f40c', 'eic6hgfdjb', 'de6fgbch', 0, '1631953320', 300, 0),
(48, 'sachith', 'Male', 'sachithroxy@gmail.com', 'Sachithroxy', '4c514267cd66e04edc57a88dfd159903', '6dfcebihjg', 'efg6bdhc', 0, '1631940780', 230, 0),
(49, 'ishan perera', 'Male', 'ishanperera@live.com', 'ishan', '0240fdf4f7b3a4543e875004fd842d18', 'e6fhjcibdg', 'dcgh6fbe', 0, '1631941560', 450, 0),
(50, 'P.H.S.Shyaman', 'Male', 'shyamansuresh@gmail.com', 'AnonyShy', 'a610811d5a655985c34e755cf38cd84b', '6ehfgbdjci', 'hecgdbf6', 0, '1631941740', 400, 0),
(77, 'Jeewa', 'Male', 'jeewanajayamalzz@gmail.com', 'Jeewa', 'a8cc8cd5d0637025ba85b332f90ea95b', '6edfjcigbh', 'hge6cfbd', 0, '1631964660', 50, 0),
(65, 'Bandara', 'Male', 'bandarashalika35@gmail.com', 'Bandara', '56585c0a2330cab39f60c407b0c1166c', 'ihebgcd6fj', 'egbhfc6d', 0, '1631955000', 200, 0),
(52, 'Chamila', 'Male', 'chamilaharshana3@gmail.com', 'Chamila', 'a51453939484c86cf7f1a7cc008568dc', 'gbiefhdcj6', 'gc6dbhef', 0, '1631942760', 200, 0),
(53, 'D. Navod vimukthi am', 'Male', 'vimukthin516@gmail.com', 'vimukthin516', 'bfce97998b7e53ce7e0691e9408ed748', 'jidhcf6gbe', 'edcgf6hb', 0, '1631944920', 1260, 0),
(54, 'N.SANDEEPANA', 'Male', 'RIKSANSANDEEPANAORIGINAL@GMAIL.COM', 'SANDEEPANA', '1617b5539989095f53386c4a3593929e', 'edjfbgchi6', 'fgdce6hb', 0, '1631945100', 300, 0),
(55, 'Sandeepa', 'Male', 'sandeepakanchana1982@gmail.com', 'Sandeepa 1982', '55994ebe7a08f2a85338283eb75cb640', 'bdgi6ejhfc', 'efcdg6bh', 0, '1631946240', 450, 0),
(57, 'Naveen bandara', 'Male', '2018ict95@vau.jfn.ac.lk', 'Naveen_001', '1818a5bfa2666140abdeff7751cced74', 'gbficeh6jd', 'bhefgc6d', 0, '1631949120', 200, 0),
(85, 'Sasintha Vidunjana', 'Male', 'shadowh303@gmail.com', 'Sasintha Vidunjana', '59642e959da7929146d346d178a0d4c7', 'e6hibcgjfd', 'cfdg6ebh', 0, '1631976900', 100, 0),
(78, 'manoj chathuranga', 'Male', 'manojchathuranga540@gmail.com', 'Manoj', '9ed95b2cafc9aefcabdd43abe5f47562', 'fdgbcjei6h', 'bge6dhfc', 0, '1631966760', 100, 0),
(67, 'Roshantha Hewamaddum', 'Male', 'rhewamadduma@gmail.com', 'Apedoctor', '15d80812db3408314cdbd1be6e277bca', 'fji6hcbdeg', 'bcfgd6eh', 0, '1631956020', 50, 0),
(68, 'VishwaTV', 'Male', 'vishwatvsl@gmail.com', 'VishwaTVSL', '7492f1ca01c30e0cab1015f2614ebfad', 'jdeig6cbhf', 'b6gdhfce', 0, '1631956200', 200, 0),
(69, 'Sanjika', 'Male', 'sanjikaprasath@gmail.com', 'Sanjika', '77c7964c665dd46f61cbda265e93b17d', 'fdjb6ecgih', 'hcbde6fg', 0, '1631956920', 200, 0),
(70, 'Ramesh tissera', 'Male', 'ramswarnak@gmail.com', 'Ramswarnak', 'd7599938f40300c6f9990dacd4c08c78', 'jbf6gdehic', 'cefbg6dh', 0, '1631956980', 200, 0),
(71, 'thisal chathnuka', 'Male', 'thisalchathnuka@gmail.com', 'thisal', 'fc7fae9cecabe6813c210bb4788e3676', 'defchbgij6', 'cheg6fdb', 0, '1631957580', 200, 0),
(72, 'T R Rahim', 'Male', 'tuanrahim@gmail.com', 'tuanrahim', '6a57a3e8e367298f40a4ad8d574c5827', 'jech6fidbg', 'b6cehdfg', 0, '1631959680', 4200, 0),
(73, 'chandar rana', 'Male', 'chandarrana1@gmail.com', 'chandarrana', 'fa03507b16c5f6d4eed2dd42f586e562', 'j6degbhfci', '6gcdbfhe', 0, '1631961120', 200, 0),
(75, 'Dimuthu', 'Male', 'slcovers8@gmail.com', 'Slcovers', '1f7f45b633322cbed9a851c9e3510acb', 'fbejhig6cd', 'fdehbc6g', 0, '1631964300', 250, 0),
(76, 'DininduAdithya', 'Male', 'wsepalini@gmail.com', 'dininduadithya', '09113b4d43fb2ff1801c1cbfc2af63a8', 'gfejh6dcib', 'cf6bdegh', 0, '1631964360', 410, 0),
(80, 'Pasidu Dilshan', 'Male', 'pasidudilshan1000@gmail.com', 'Pasidu1000', '74448941668e270ec29efd8a07a2c768', 'cjidb6ghef', 'ged6bchf', 0, '1631971500', 350, 0),
(109, 'Chandunu Karunarathn', 'Male', 'miriguwa0@gmail.com', 'Chandunu19125', 'f3beeec2616cb317561edc88f7d4b312', 'ig6cjbehfd', 'hb6fdcge', 0, '1632027300', 200, 0),
(99, 'Ajith', 'Male', 'ajithkumara805@gmail.com', 'Ajith', '0dd451bbc534c6818aff7c8c75b9253e', 'jeh6bfgcid', '6cbhedfg', 0, '1632015600', 160, 0),
(82, 'Jayaweera Menuka', 'Female', 'menukajayaweera95@gmail.com', 'Jayaweera', '8983b912775041b6ec93ee58bf74f4ab', 'hgc6ijbedf', 'ef6bdchg', 0, '1631973660', 150, 0),
(83, 'harshana Maliyadda', 'Male', 'harshanamaliyadda14@gmail.com', 'Harshana', '8ffb3e49cd4c0e42c15c8c3189ef070c', 'gifdej6bhc', 'fdhecg6b', 0, '1631973840', 200, 0),
(84, 'KUMARA', 'Male', 'mdspkumara77@gmail.com', 'Kumara', '0dd451bbc534c6818aff7c8c75b9253e', 'jcehbd6igf', 'fec6hbgd', 0, '1631974320', 880, 0),
(97, 'Speak with the Taste', 'Male', 'speaktaste@gmail.com', 'Speaktaste', '23b04b90f3e1420a97a74c4f9a19a66a', 'hibgd6jcef', 'bgd6cehf', 0, '1632009360', 250, 0),
(88, 'asela premarathna', 'Male', 'aselarock204@gmail.com', 'asela1990', '82ac8219c45dcc5508e338ae0ef3f10e', '6fhcdbeijg', '6fdgcbhe', 0, '1631979720', 300, 0),
(95, 'Harsha Edirisingha', 'Male', 'harshaediri81@gmail.com', 'Topetop', 'bf5ffe12fa265ee88f214e29f2f23db0', 'cdh6gijfbe', 'fbc6dghe', 0, '1631992920', 250, 0),
(91, 'Duminda sampath', 'Male', 'dumindasampath124@gmail.com', 'Dumi124', '468923fbf1a19d5322c1726648c31570', 'e6hgjfcibd', 'cghfeb6d', 0, '1631983860', 50, 0),
(92, 'Mahesh Vidanagamage', 'Male', 'maheshrda1982@gmail.com', 'maheshrda1982', '6444b3923008a39541cf4fc22a4fa15e', 'gcdeb6jhif', 'behfdcg6', 0, '1631984280', 150, 0),
(93, 'Nisalya Yomadi', 'Female', 'neshma231@gmail.com', 'NESHI DIY &amp;CRAFT', 'b140d9081249cf7603e7049f42771310', 'hgecbid6fj', '6bfhegcd', 0, '1631984580', 100, 0),
(96, 'Chanaka', 'Male', 'chanakabothejurox@gmail.com', 'Chana', '7a029fe27b35f9025bffa050639fa921', 'iehdjg6fcb', 'eg6dfcbh', 0, '1632002640', 300, 0),
(100, 'Tharanga', 'Male', 'lakshaninfo1@gmail.com', 'nirmala95', 'a3da9f2ab7083a0ae1b4f41ecf76c6d3', 'dcgjfeihb6', '', 0, '1632018000', 4550, 0),
(101, 'Muditha', 'Male', 'mudithagamini.mg.mg@gmail.com', 'Muditha1993', 'ea4f6b80306fb4973a83f9bdb2ff3a86', 'b6jhfdcgei', 'ghcfebd6', 0, '1632018360', 150, 0),
(114, 'Supunmadusanka', 'Male', 'supunmadusankasamarasinha@gmail.com', 'Supunmadusanka', 'a9ba8c5fb3855bf3deca068d4da2b31a', 'ifcbgjh6de', 'fhgbdce6', 0, '1632038280', 200, 0),
(113, 'Chamod', 'Male', 'chamodsachintha8@gmail.com', 'Chams1995', '1a65955f0382beab2040df7ba07430a6', 'h6icbjgfed', 'h6befcgd', 0, '1632035700', 100, 0),
(104, 'Gimhan', 'Male', 'gimhanaloka3@gmail.com', 'gimhan12345', '17df2d234e7d8f31e5a353c8aea6bc5c', 'icjghfd6eb', 'gced6fhb', 0, '1632020280', 370, 0),
(105, 'Damith kumara', 'Male', 'damithkumararoxx55@gmail.com', 'damith98kumara', '2e49628a11f004234b23ae5c00a024a6', 'c6ehjfbdig', 'gdfce6bh', 0, '1632020520', 1900, 0),
(106, 'Sanju Saman', 'Male', 'wsssanju@gmail.com', 'Sanju1209', 'fcbf1cba76742367266171a949567629', 'dci6gjfhbe', '6fecdhbg', 0, '1632022620', 100, 0),
(112, 'Gihan Sandeepa', 'Male', 'gihan20050113@gmail.com', 'gihan13', 'dc16b5618e1929c89d754cee5b111b91', 'ghjbfedc6i', 'gcbh6efd', 0, '1632035520', 400, 0),
(108, 'kasuni gayathri', 'Female', 'kasunigayathri90@gmail.com', 'Kasuni Gayathri', '81e3e78b475e00768763b191cf233ad5', 'bfh6icejgd', 'gh6cedfb', 0, '1632024540', 300, 0),
(110, 'Pasindu kaushalye', 'Male', 'kaushalyepp@gmail.com', 'Pasindu21', '8fb50d487a0d326cce1f0ab4df7fe07a', 'ib6cehdjfg', 'bhef6cdg', 0, '1632030180', 100, 0),
(111, 'lankara', 'Male', 'wgblankara@gmail.com', 'wgblankara', '63da725a20b534b5a62cdc95d7fda61e', 'fghdbc6eij', 'dgfh6ecb', 0, '1632030360', 200, 0),
(115, 'Amal Kingsly', 'Male', 'amalkingsly@gmail.com', 'amalkingsly', 'f61cc4e0a192cc900ff7ca98a18ad2c4', 'gdfehjb6ci', 'cfgbhed6', 0, '1632041100', 450, 0),
(116, 'Chamal Lakshitha', 'Male', 'clakshitha.me@gmail.com', 'Clakshitha', 'be1ee803465cc300d07d77ba876b1317', 'hdj6cibegf', 'bed6chgf', 0, '1632044220', 80, 0),
(117, 'isuru m jayasinghe', 'Male', 'isurumjayasinghe7@gmail.com', 'Jayasinghe2121', '52c955c1fa62753980dab3023352f71c', 'ibedfjgc6h', 'ghcbfd6e', 0, '1632048480', 410, 0),
(118, 'Pathum Sameera', 'Male', 'nethsarasm@gmail.com', 'Pathum', 'a6a5237e546dc3f5fc8d03185e32e772', 'jgbcdfie6h', 'gcfbedh6', 0, '1632050880', 200, 0),
(119, 'Deneth Rukmal Silva', 'Male', 'denethrukmal253@gmail.com', 'Pexel', '6cbc6af8b35db69888f83c2a50ebaa7e', 'ebi6gcfdhj', 'ghe6bcdf', 0, '1632051600', 300, 0),
(120, 'Dinidu Roshantha', 'Male', 'mr.dinidu@gmail.com', 'Diniduroshantha', '3c465d87b9d5ff213d37bb29c2ac7a69', 'gjdebifc6h', 'cghbdf6e', 0, '1632058800', 100, 0),
(124, 'Manoj', 'Male', 'msthenuwara@gmail.com', 'Msthenuwara', 'a11c2576aee75f55e843c70869ebe4b2', 'dh6bgficje', 'hdebcf6g', 0, '1632078420', 50, 0),
(122, 'ruwan', 'Male', 'ruwansasika86@gmail.com', 'Sasi', '74546a6044c1507d1f0985f788a92323', 'igefcd6jbh', 'ceg6dhfb', 0, '1632066960', 300, 0),
(123, 'Uditha', 'Male', 'cniro1995@gmail.com', 'Udithaniro', 'c9dafbf5287d196fdcb8955d9866608d', 'gbdij6echf', 'hcdeg6bf', 0, '1632068580', 200, 0),
(125, 'Pradeep Suranga', 'Male', 'besteye21@gmail.com', 'besteye', '688f5f59b797cf4be272e2bf4b5e3c8f', 'c6fdhjbegi', 'geh6fdbc', 0, '1632081960', 100, 0),
(126, 'Prasanga Lahiru', 'Male', 'officialprasanga@gmail.com', 'OneTech', '9002b925e17e3264eca51dba97213ead', 'fie6dhjgbc', 'bhef6gcd', 0, '1632105600', 50, 0),
(127, 'chamali ruwanthika', 'Female', 'rumeshneranjen1989@gmail.com', 'village girl', 'a8a769b376506ad42d8b90c9f587c199', '6jibhcefgd', 'fbdhg6ec', 0, '1632108780', 50, 0),
(144, 'Wiman', 'Male', 'sandaruwije9@gmail.com', 'Wiman', '1e9ab89a346372d1832fcfcab9f19310', 'dcheibfjg6', 'dhcbg6ef', 0, '1632125220', 210, 0),
(131, 'Sanjeewa', 'Male', 'amilasanjeewa1984@gmail.com', 'Ameeya', '6461b415d1425121eab565f073101489', '6gdfcejbhi', 'hfceb6gd', 0, '1632114000', 400, 0),
(130, 'samitha', 'Male', 'smithkulara7@gmail.com', 'samitha', '1908fb26edf1a9fa3263e7bb129f7fed', 'c6diefhjbg', 'bfc6edgh', 0, '1632112620', 150, 0),
(133, 'Dulip Nadeeka', 'Male', 'dulipnadeeka311@gmail.com', 'Dulip', '2af2f0683864593b2b83e8196dd5b9a4', '6gfcbeihjd', 'hg6cedfb', 0, '1632114840', 350, 0),
(134, 'Lakshan', 'Male', 'lakshanravidu480@gmail.com', 'Lakshan', 'd9f3b5413ab6593b8343a4047b4684ad', 'iefdjcgbh6', 'cgbefdh6', 0, '1632115560', 250, 0),
(135, 'Anupama Damayantha', 'Male', 'mg.nirosha98@gmail.com', 'SLAnuwa_007', 'a5aea79538a586acfaa91f85152cf29f', 'gbhfed6cij', 'bc6gdfhe', 0, '1632117180', 100, 0),
(136, 'Ishara', 'Male', 'isharaovitigala@outlook.com', 'I madusanka', 'a496ff54f8abaa421b1ffb8d69e6fe21', 'h6giebcjfd', 'efcb6hgd', 0, '1632117720', 200, 0),
(137, 'Shan Silva', 'Male', 'gajasingheantiques@gmail.com', 'Golden ceylon', 'b4d04a3e99d7a3303302297ad91c851e', 'ifecjdh6bg', 'ehd6bfgc', 0, '1632118440', 100, 0),
(138, 'Suranga', 'Male', 'suranganirmal7@gmail.com', 'Nirmal', '815fba28486851fa88e4506785ba041b', 'bdci6hejgf', 'bfcg6ehd', 0, '1632118620', 50, 0),
(139, 'harasha', 'Male', 'educationplace701@gmail.com', 'harasha1234', 'dd5d095601390c1ba15dae0d4e22f3f3', 'd6ijhgcfeb', 'cdbh6feg', 0, '1632119280', 150, 0),
(140, 'Prabath Maduranga', 'Male', 'prabathmadurangaa87@gmail.com', 'Prabathm87', '25ad6fd0e6be38f642a934a21ddeaae1', 'hdgibec6fj', 'hfgc6edb', 0, '1632119340', 100, 0),
(141, 'dhanushka', 'Male', 'tikkamatale.95@gmail.com', 'dhanushkasl.net', '471302d65c34e6905ff2fa28ed83e2ee', 'hbcjif6dge', 'hfcdebg6', 0, '1632119580', 100, 0),
(143, 'Menuka Risith', 'Male', 'snimsara012@gmail.com', 'menuka2008', '6fb8d50231a1f53d978f4c276ed3d37e', 'cdegjihf6b', 'gefdhcb6', 0, '1632122160', 150, 0),
(145, 'Lakshitha ravihansa', 'Male', 'ravihansalakshitha2@gmail.com', 'Ravihansal', '0431314a99c35bdfd8d7887f0a06e34d', 'ijbfe6hdcg', 'edcgfb6h', 0, '1632127860', 100, 0),
(146, 'pakaya ponnaya', 'Male', 'rdzzkslhaf@uniromax.com', 'sfsdf34r3r', '68ffea3e42f048f4b499ac834d6f267a', 'febjichg6d', 'dgehb6cf', 0, '1632128100', 100, 0),
(147, 'Guru Gedara Iskole', 'Female', 'chathu.rncj@gmail.com', 'Guru Gedara Iskole', 'b81f06f1557c5d93fe269e0b040779f8', 'jbfgc6hdei', 'cdfhgb6e', 0, '1632128340', 250, 0),
(148, 'vidarshana Rathnayak', 'Male', 'vidarshanan@gmail.com', 'vida1982', '68ed94f271b4c48c8ee9722ba580fb1f', 'jd6febghic', '6cbfehdg', 0, '1632129240', 100, 0),
(164, 'REAL à¶‰à¶­à·Šà¶­à·‘', 'Male', 'Lakshandagaya93@gmail.com', '123lakshan', 'e2a32027eb959f3d1a8e1f1397e42cdc', 'ehcgb6ifdj', 'gfbc6deh', 0, '1632142380', 200, 0),
(151, 'Okithma Menula', 'Female', 'divitrafficputtalam@gmail.com', 'Okithma Menula', 'a449392e6cd09246b63846c2799f56d0', 'hdcb6jeigf', 'dc6egfbh', 0, '1632130920', 150, 0),
(152, 'Bandara', 'Male', 'udithabandara07@gmail.com', 'Uditha', '05749afa8e355ce866ac1aeb97071411', 'ecdf6hijgb', 'gcheb6df', 0, '1632131340', 100, 0),
(153, 'gamingmate92', 'Male', 'sadeeparathnayaka@gmail.com', 'gamingmate92', '2ab6ace1ca5be6aaedf0911a2e030fba', 'bh6icegdjf', 'fhd6cbeg', 0, '1632131640', 150, 0),
(154, 'Madhushanka Wanniara', 'Male', 'madhushankawa@gmail.com', 'madhushankawa', '689d3ededdf57f7537e18ca65f91e714', 'hjigdcebf6', 'e6fhdcbg', 0, '1632135060', 200, 0),
(185, 'Sajith Dilshan', 'Male', 'sajithdilshanrupasingha11@gmail.com', 'Sajith', '989763caf9060ee2fdef06689feab566', 'eghbjid6cf', 'efbhcg6d', 0, '1632160560', 50, 0),
(156, 'Vidana Gamage Shehan', 'Male', 'Vgskavinda963@gmail.com', 'SL Motivator', 'fabae4a486e15f331151a96d5d972cb7', 'jhbgfice6d', 'cgedh6bf', 0, '1632138600', 50, 0),
(157, 'Upul Chandana', 'Male', 'Sandaruwanharsha401@gmail.com', 'Harshasandaruwan', 'eca917fb5765f1230dac333288047dda', 'ficdbhejg6', '6cbdhegf', 0, '1632139020', 1260, 0),
(158, 'SL Ayesh GAMING', 'Male', 'ayeshrashmina2005@gmail.com', 'SL Ayesh GAMING', '3aa96dc6579bd89272ef415b0e723f6b', 'efjhdcb6ig', '6bgecfdh', 0, '1632139200', 300, 0),
(181, 'Theekshana', 'Male', 'rdtheekshanapremasinghe@gmail.com', 'Theekshana', '2249f42fcf69d206b9dec730b5d2d774', 'bgc6hdjife', '6fdechgb', 0, '1632154620', 100, 0),
(178, 'Dileep', 'Male', 'dileep774@gmail.com', 'dileep774', '4359f46fa319e958174cd7c779b3ffc5', 'dhigcfbej6', 'dcef6ghb', 0, '1632152820', 50, 0),
(161, 'Malinda', 'Male', 'butterflyclik@gmail.com', 'Butterfly', '878cba91d0a42468a360fe9a05635d59', 'jbgfcied6h', 'gdeb6hfc', 0, '1632139920', 200, 0),
(162, 'Aruna', 'Male', 'ggamini13@gmail.com', 'Aruna.suresh077', 'dd264225e4df93ca8647de2cd83ce937', 'hbf6decgij', 'dh6becgf', 0, '1632140100', 150, 0),
(180, 'G.D.M SILVA', 'Male', 'gdmsilva890@gmail.com', 'Danuja890', 'aafcd4698e851c6cc63b0f6919b67aa3', 'dbgieh6cfj', '6cbefghd', 0, '1632154440', 250, 0),
(165, 'Dinesh', 'Male', 'wddmadushanka@gmail.com', 'Wddmadushanka', '1402c731063d70c14e606562625a25fb', 'bgfhc6diej', 'dcfehbg6', 0, '1632142440', 100, 0),
(179, 'Madhawa', 'Male', 'tixonicsl@gmail.com', 'Madhawa', 'b62e33616641c26c98df977c4323f6ce', 'ec6gfhbjid', 'degfchb6', 0, '1632153780', 50, 0),
(182, 'Lakshan Sachintha', 'Male', 'sachintha390@gmail.com', 'Lakshan Sachintha', 'bb8a1fd2822ad63ab5b9c3769c498030', 'b6fdhgecij', 'cdgbfe6h', 0, '1632155400', 100, 0),
(168, 'kulanjith thejana', 'Male', 'kulanjithzoysa@gmail.com', 'kulanjith618', 'f7419fe8805ea5de0009d6dcd1b3a9e4', 'cj6ebfdihg', 'hgb6dfec', 0, '1632144240', 150, 0),
(169, 'nayanajith', 'Male', 'nayanajithdevinda0@gmail.com', 'Devinda', 'fcb43fe12a975b86d91c0c37c51b4832', 'c6fiebjdgh', 'h6dfebcg', 0, '1632144840', 100, 0),
(170, 'sathsarani', 'Female', 'sathsaranipiumi52@gmail.com', 'sathsarani', '92e22e9757439fb8e22d82621ff190b4', 'igjhcdebf6', '6edhfgbc', 0, '1632146340', 100, 0),
(171, 'Pathum chinthaka', 'Male', 'pathum51381@gmail.com', 'pathum51381', '8a15642e98bb1dd6181fe7957fce4aba', 'ighfdecjb6', 'c6fhgbde', 0, '1632147180', 250, 0),
(183, 'Shashikala', 'Female', 'oneeimc@gmail.com', 'Shashikala10', '340021c34f11b34bb42ab74b00b3a466', 'c6hijgfdbe', 'efcdbhg6', 0, '1632158340', 200, 0),
(173, 'Sheveen tharunda', 'Male', 'stharunda@gmail.com', 'Tharunda2006', 'd3d3a89140ddba1c621c464b2e227d92', 'ifbcjdg6he', 'ge6fhbdc', 0, '1632147660', 100, 0),
(184, 'Tharanga', 'Male', 'ttharanga409@gmail.com', 'Thara1292', '15833450595deb597d0378db621c4cf5', 'fheijbg6cd', 'dfec6bhg', 0, '1632158940', 200, 0),
(175, 'Osuka', 'Male', 'chamanidamayanthi0929@gmail.com', 'Chanu', '780599480adff349bda8fe7744416492', '6cdfbijgeh', 'bd6cfegh', 0, '1632147780', 50, 0),
(176, 'Yasintha', 'Male', 'dinukarobotics@gmail.com', 'TravelEurope4K', '30cc64a421d500e62f7baf2386a94ca4', 'b6fjigehcd', 'dc6hgbef', 0, '1632148620', 650, 0),
(177, 'Indika Abeywickrama', 'Male', 'tmindika@gmail.com', 'tmindika', '86a2695bb019b311b8485f4574723f26', 'hjfigb6edc', 'hefdcbg6', 0, '1632148800', 400, 0),
(191, 'Hansika Sathyanga', 'Male', 'hansika123456season@gmail.com', 'Hansika@bhagy', '8ab5db404f3f5981612f79508785ec64', 'd6bhegifjc', 'ged6chbf', 0, '1632181080', 200, 0),
(187, 'Ramsina farvin', 'Female', 'jframsina@gmail.com', 'Ramsi', 'cfc7e7fc1f015675acadec7db7462deb', 'bdh6fgejic', 'cfged6hb', 0, '1632161580', 300, 0),
(190, 'Praveen', 'Male', 'praveentharuka02@gmail.com', 'Tharuka', '12f830330b67d2a6507505f447dc903b', 'gdfich6ejb', '6cdgebhf', 0, '1632174420', 100, 0),
(189, 'Upul priyankara', 'Male', 'upulpriyankara322@gmail.com', 'Upul priyankara', '575e79c860c81b1ba5fc8725c281df29', 'hicgeb6djf', 'gdfbec6h', 0, '1632167340', 260, 0),
(192, 'Akila Jayaweera', 'Male', 'akilajayaweera0011@gmail.com', 'akira', '0f928961dbef9be5a228b88131a0d602', 'bgcfehdi6j', 'efbg6dch', 0, '1632183180', 200, 0),
(224, 'Herath mudhiyanselag', 'Male', 'senanayakeherath@gmail.com', 'Senanayake hm', '78d460d8f905f95ec8b37c4f3fd682c9', 'egfhjdb6ic', 'bchefgd6', 0, '1632212760', 50, 0),
(194, 'Nimsara', 'Male', 'bolfysamarawickrama123@gmail.com', 'pro tech sl', 'da32ef797bc44e0f373e232937f484eb', 'jehidfcgb6', 'egfhd6cb', 0, '1632188820', 150, 0),
(195, 'Arana', 'Male', 'aranasl772@gmail.com', 'SL Arana', '3f5f631bb19a5f03a82dc40acd16bb08', 'cidf6hjebg', '6cebgdfh', 0, '1632189420', 360, 0),
(212, 'Pradeep weerasinghe', 'Male', 'dushshanthapradeepweerasinghe@gmail.com', 'Pradeep', '2ecb1240a05569b7758aea3ecea067c9', 'gijdh6cefb', 'chbf6gde', 0, '1632202320', 50, 0),
(197, 'Menuja', 'Male', 'menuja624@gmail.com', 'Menuja1234', '6d7d8c80beb5a490e2149eba451c791a', 'fje6gdichb', 'fhecdb6g', 0, '1632190440', 260, 0),
(198, 'Miran', 'Male', 'miravlogs4466@gmail.com', 'Miravlogs', '0c072cf916db863586013cb4767c9bd6', 'ig6dhfecjb', 'gchefb6d', 0, '1632191580', 150, 0),
(199, 'gihan Sachindra', 'Female', 'gihansachindra503@gmail.com', 'Sachiya', '900196d608ca5193530c806da91b3984', 'fjihbgde6c', 'dbefgh6c', 0, '1632191640', 200, 0),
(200, 'Dulmith', 'Male', 'upekshith1@gmail.com', 'Dulmith', '04b7c4e73902e33c03b54cf227bdb4f1', 'bhedi6cgjf', 'ebch6dgf', 0, '1632192480', 200, 0),
(216, 'Pasan madhusha', 'Male', 'kavindutharusha429@gmail.com', 'Madhuwa', '99899068998f1f9d2475f021f125e7b3', 'bicdegjh6f', 'gbche6fd', 0, '1632206580', 350, 0),
(203, 'Dushman', 'Male', 'ellmain21@gmail.com', 'Dusha', '2d4cd6aa7ed692a2efb8c7c70bd9efae', 'cjdefgbi6h', 'fdhe6bcg', 0, '1632192780', 200, 0),
(204, 'Niroshan', 'Male', 'nirogunarathne@gmail.com', 'Niroshan', 'eab55ee2a2f91c8e9476fa52c96e5108', '6jdefghbci', 'ebgc6fhd', 0, '1632193080', 1700, 0),
(205, 'Sajith', 'Male', 'sandaruwansajith96@gmail.com', 'Sandaruwan', '7c8e4cdb575e762d739c824524772227', '6cihedbgjf', 'fhegc6bd', 0, '1632193560', 100, 0),
(206, 'Srinath Dissanayaka', 'Male', 'bgs.dissanayaka@gmail.com', 'Malajhon', 'fe586822a5dcc7ecb377bbbf8eb3200f', 'bcgfedij6h', '6dehfgcb', 0, '1632195120', 150, 0),
(207, 'Jayanthi', 'Female', 'malshierangika1996@gmail.com', 'Mal123', 'fb6ada42eb9f27a2146fd6b0158cfe2e', 'gcjiebhd6f', 'e6fdhcgb', 0, '1632195960', 50, 0),
(208, 'sasanka uvanpriya', 'Male', 'sasankaacom2020@gmail.com', 'sasanka technology', '308f92e968ebe92b7d3d59341e37a276', '6bfihdegjc', 'bdefg6hc', 0, '1632197580', 200, 0),
(221, 'Eranga', 'Male', 'malshierangika@gmail.com', 'Eranga123', 'fb6ada42eb9f27a2146fd6b0158cfe2e', 'ijhd6becgf', 'dcgfeh6b', 0, '1632210240', 200, 0),
(222, 'sohan edirisinghe', 'Male', 'sohan.edirisinghe@gmail.com', 'Sohan', '905fb1e7aad1bceefd83337557f4008d', 'ih6cedfbgj', 'g6hecbdf', 0, '1632211560', 150, 0),
(213, 'Geefm', 'Male', 'mynextdream3@gmail.com', 'Geefm', 'd569d4c42fdf282075815d4d6c1f0878', 'efgbd6hcij', '6dehcfgb', 0, '1632202320', 50, 0),
(214, 'T.g.i.kawshalya', 'Female', 'ashinshanashanali@gmail.com', 'Shanali', '08b1bd787e0ac29361f50d806923c810', 'g6hfcidejb', 'dbgfehc6', 0, '1632202860', 200, 0),
(215, 'sithum vihanga', 'Male', 'sithummaxvihanga@gmail.com', 'svmoses', 'faa2fef55d07270458ea94aedc867bbb', 'g6fhejdcbi', 'bchfg6ed', 0, '1632202980', 100, 0),
(218, 'M.b.s.s wijewardhana', 'Male', 'stdsnc@gmail.com', 'Sandun650', '6091e53cf2cff29507c8476f952b4693', 'cbjghfie6d', 'gdh6bfec', 0, '1632208080', 450, 0),
(219, 'dushn', 'Male', 'karmapaka6@gmail.com', 'repa', 'e9ce2534bb4ff3127a1dcc252298b29d', 'gdjf6ehcib', 'gcefb6hd', 0, '1632208620', 200, 0),
(220, 'Noven', 'Male', 'mdnovenhazra@gmail.com', 'Noven', '71475d36f683f79e74cba7862d5d146d', 'fhg6dbiecj', 'dbcfhge6', 0, '1632209280', 150, 0),
(247, 'Tetra aquarium', 'Male', 'madhurahewage@gmail.com', 'Tetra aquarium', '7efb5142f8d7e9f5bb1fd43bd2e9ab50', 'f6jichdbge', 'ecf6gbhd', 0, '1632240600', 100, 0),
(248, 'Jinal chinthana', 'Male', 'jinalchinthana2@gmail.com', 'Jinal', '4fd3c83a8e497494fcb1680c370f45f1', 'hdicbej6gf', '6bfcedhg', 0, '1632242400', 100, 0),
(244, 'Chenitha De Zoysa', 'Male', 'dezoysachenitha@gmail.com', 'chenithadez', 'b67bd27d6f6e2177d1e34de84b7628b2', 'gjchdifb6e', '6hgfebdc', 0, '1632234720', 1010, 0),
(241, 'Chamali', 'Female', 'j.a.chamalipriyadarshani@gmail.com', 'Beyond the Eye', 'c812ff0f090d7e6f53aa779a7e11696b', 'figjceb6hd', 'cfgeb6hd', 0, '1632228960', 530, 0),
(227, 'sanupama', 'Male', 'octapadspd66350@gmail.com', 'saman ingilka', 'd2da1e9f79c6ca6d5d60c7a2b8673c5a', 'd6bichfgje', 'hg6dcbfe', 0, '1632216240', 50, 0),
(228, 'samare', 'Male', 'sammanipasasum@gmail.com', 'samare', 'cc8cf70f9ad2334be7a24f32aec78828', 'ghj6iebfcd', 'hgd6cefb', 0, '1632216240', 200, 0),
(229, 'Anuhas', 'Male', 'anuhaskaveesha24@gmail.com', 'Anuhas', '28bc4105c2927775d69a7aefa9fb6610', 'dbfj6gehic', '6dfcgehb', 0, '1632216300', 100, 0),
(230, 'Asanka Chandima', 'Male', 'asankanir0129@gmail.com', 'Rush Music Lk', 'c19c34b2e284311394f578c292842e2f', 'fijb6dghec', 'hfegc6bd', 0, '1632216360', 350, 0),
(231, 'Hemantha disanayaka', 'Male', 'hemanthadisanayaka1983@gmail.com', 'Hemantha', '52738a8e58f0d994de8525854bd1a0a3', 'eih6fbcdjg', 'db6fhegc', 0, '1632216720', 100, 0),
(232, 'Chathura Lakmal', 'Male', 'chathuralakmal.rox@gmail.com', 'Chathura0160', '75bcbcf2e88cd812f7ce67b55a4f8c36', 'gfedhjibc6', 'fbgdh6ce', 0, '1632217140', 300, 0),
(233, 'saman Ela', 'Male', 'octapadsampledownload@gmail.com', 'dsga gnhbf', 'd2da1e9f79c6ca6d5d60c7a2b8673c5a', 'cbe6fjigdh', 'gebdfhc6', 0, '1632217740', 200, 0),
(234, 'damath sanka', 'Male', 'octapadsinhalapanthiya@gmail.com', 'ade yako', 'd2da1e9f79c6ca6d5d60c7a2b8673c5a', 'fjbdcegh6i', 'hbdf6egc', 0, '1632218040', 50, 0),
(242, 'Samash piumantha', 'Male', 'samashm54m@gmail.com', 'Samash', '771f8b750c78fe00922544f90a467aa2', 'cdjfgbie6h', 'ce6hbgdf', 0, '1632229320', 150, 0),
(237, 'Chathura akalanka', 'Male', 'machandope119@gmail.com', 'Machandope119', 'c139f46cad9889b73c4e99de95f3de24', 'bfjei6ghdc', 'd6ghbcfe', 0, '1632219600', 50, 0),
(238, 'glt sampath', 'Male', 'vcdsampath@gmail.com', 'glt077', 'cfe0690a8bc9cc2c4ed6199d5daf4eef', 'igecfjbd6h', 'fghdb6ec', 0, '1632220500', 100, 0),
(246, 'Upali', 'Male', 'rockupali@gmail.com', 'Upali', 'e35fcaa734b6c60b6b4ca83cb003fa4e', 'i6hfdjgbce', 'ed6fcgbh', 0, '1632238200', 200, 0),
(240, 'supul', 'Male', 'supulnamina@gmail.com', 'supul 12', '7e093add97ffe45922bda1d6111f1b7c', 'd6efbcgihj', 'fd6gcehb', 0, '1632225660', 200, 0),
(245, 'Sudath Jayatissa', 'Male', 'sudathjayatissa@gmail.com', 'Sudath Jayatissa', '686df0a196802eae8bb4caa39d4433ef', 'ij6cfbhgde', 'd6bghecf', 0, '1632235620', 200, 0),
(249, 'Shanthani', 'Female', 'roxjeseelan@gmail.com', 'Shanthani', '460cca5362ec726b1ccfafd5a4cd0779', 'eg6ijhcdfb', 'de6ghbcf', 0, '1632243540', 250, 0),
(254, 'Harshan Shaminda', 'Male', 'harshanshaminda@gmail.com', 'Agent flox', 'd4ceea93c86217aed9369ca83b18d105', 'ichd6ejbfg', 'ebfg6cdh', 0, '1632257280', 100, 0),
(251, 'Sachithra', 'Male', 'sachithramadusanka@gmail.com', 'Sachithra119', '7daf3ab8f87ef04d5710c47e066e56d2', 'decbhgfj6i', 'fb6dechg', 0, '1632244680', 450, 0),
(252, 'Suranga Prasad', 'Male', 'jayasingheprasad514@gmail.com', 'Jmsp jayasinghe', 'b3c8e819c5bfb8de2ea1f3a048d366c4', 'cb6jfgheid', 'h6fdcbeg', 0, '1632253140', 200, 0),
(253, 'Hiba', 'Female', 'Candyraja8@gmail.com', 'Candy', 'f56510596afe66348f7d5796f06ef734', 'fie6dhbgcj', 'b6hfdecg', 0, '1632254760', 150, 0),
(255, 'Sumith Kumara', 'Male', 'sumiyacenematic@gmail.com', 'Sumiya', 'ac40e9038adccc953960ca725078766e', 'gjdibf6hec', 'bfh6cedg', 0, '1632258120', 1940, 0),
(260, 'Dil', 'Male', 'dilru4850@gmail.com', 'Dil', '7bf8d0621d1026c942ce89191a6dcd45', 'gcbfijhed6', 'cbedghf6', 0, '1632273180', 100, 0),
(257, 'Tirosh Menuka', 'Male', 'r.indikasilva@gmail.com', 'tirosh1', 'e42bf7cc7d6cb8b16b6d5d748442251c', 'fe6cdgbhij', 'g6becdhf', 0, '1632258300', 50, 0),
(258, 'Thilini', 'Female', 'thiliniprasadika989@yahoo.com', 'Thilini', '31c635208a93501763a63ad3323f7245', 'jigdcb6hfe', 'ghcfbde6', 0, '1632263640', 100, 0),
(259, 'Sameera', 'Male', 'sameerabandara587@gmail.com', 'SLsameera', '6adef0a286e83425007cc8c37d0c400d', 'fh6jebdigc', 'cghd6bef', 0, '1632265920', 100, 0),
(261, 'Charith wishva', 'Male', 'wishvaedirisingha@gmail.com', 'wishva@92', '3a3d6251e5b0ec1cd91dacdedae495cc', 'bdcif6ehjg', 'gb6hcfed', 0, '1632277980', 200, 0),
(270, 'shamith udayanga', 'Male', 'udayangaa273@gmail.com', 'udayaelectric', 'f11c23106ccc0ca1d69915c4ca14875a', 'jicbgfhe6d', 'dcbgh6ef', 0, '1632298020', 10, 0),
(269, 'Dil', 'Female', 'dkawshi@gmail.com', 'Dkawshi', 'd398fa378ce3cb2c10e5a24f689968e8', 'gfhebd6icj', '6bfghedc', 0, '1632294900', 100, 0),
(264, 'janaka kasun', 'Male', 'jkasun146@gmail.com', 'janaka', '948cc12be7745ff9abf444a4fbd1868b', 'fdjgb6cieh', 'fhce6dgb', 0, '1632281760', 100, 0),
(268, 'Lochana Dayawansha', 'Male', 'dayawanshalochana@gmail.com', 'Lochana', '0a7b189e09d479635c36fb1942475c9f', 'fhjigcbe6d', '6gcfdbhe', 0, '1632294180', 100, 0),
(266, 'Nirmal Vimukthi', 'Male', 'nirmalvimukthi76@gmail.com', 'Creed', 'a2c119d86481b27279bd14a300f022dd', 'jbcfedhig6', 'gcbdhfe6', 0, '1632285900', 100, 0),
(267, 'Tharindu', 'Male', 'mmatlakmal2127@gmail.com', 'Tharindu', '75c8cfba5c7d64c5b8b737c225dbbd1b', 'bhd6eficjg', 'cbe6hgfd', 0, '1632288540', 100, 0),
(271, 'InduwaraN', 'Male', 'Induwara.nandasena@gmail.com', 'InduwaraN', '12ae156407db3d40d67982220461ff3c', 'bhjec6fdgi', 'gbdcfhe6', 0, '1632303900', 40, 0),
(274, 'Idunil Chathuranga', 'Male', 'idunil.chathurangainfo@gmail.com', 'Chathuranga', '5cf061be27e1862eed0daa4fd710bfb1', 'idjecfhb6g', 'hfcebg6d', 0, '1632315900', 100, 0),
(273, 'Rashmika heshan', 'Male', 'rashmikaheshan2006@gmail.com', 'Sl power knowledge', 'bec93bed3b64daa6006d49c7c1b62c52', 'gdej6fhbic', 'fh6begdc', 0, '1632309060', 100, 0),
(275, 'Thanu Geek', 'Male', 'dineththanusha@gmail.com', '@thanugeek', 'e4b01c6d41c2d506f5fb136cff7428d4', 'de6hbgcfij', '6egfdhbc', 0, '1632317760', 50, 0),
(276, 'asamga', 'Male', 'max2000hit@gmail.com', 'asangaranawaka', '4b83af38cd0f92399696abe89d28eddd', 'icdhjebg6f', 'fbhcg6ed', 0, '1632321480', 180, 0),
(291, 'Poststous', 'Male', 'poststous@gmail.com', 'poststous', 'bb1f4d0d97d9e9611fa9eac6c29ec1b7', 'ecjhid6gbf', '6egbfhcd', 0, '1632354780', 210, 0),
(292, 'NH BOY', 'Male', 'hansajadesilva23@gmail.com', 'nhboy@gmail.com', '0f7cfb6a1c67e22cad5864030929f729', 'ijedhc6gfb', 'hbfg6edc', 0, '1632357840', 10, 0),
(287, 'Rana Husnain', 'Male', 'ranahusnain770@gmail.com', 'ranahusnain789', 'da734028f42626ce86001a651c1d1bc4', 'jcibh6dgfe', '6efchgbd', 0, '1632337560', 100, 0),
(286, 'dilum rangana', 'Male', 'vvip.lksl@gmail.com', 'amdrangana', '1e8b125dc10e9e6713f0bd59a1c15421', 'hdjibgfc6e', 'dgc6bhfe', 0, '1632336480', 80, 0),
(280, 'Dinethma', 'Female', 'wihagidinethma@gmail.com', 'Dinethma', 'c0be75d309fc3bf7665a8648eade0c31', 'bgchej6dif', 'hgcfd6be', 0, '1632328020', 100, 0),
(281, 'Nimal rathnayaka', 'Male', 'www.nimalmy148@gmail.com', 'Nimal', '11ee864813dc48a527ec29601b4394b6', 'bef6ijdghc', 'cehfbgd6', 0, '1632328140', 50, 0),
(282, 'Asim', 'Male', 'asimkunic1994@gmail.com', 'AskeTv', 'b7e11a03362fb056f3521cc05671168f', 'gjfhdcb6ie', 'hfb6egdc', 0, '1632331080', 100, 0),
(284, 'Mohammed Mashood', 'Male', 'msdshd88@gmail.com', 'Mashood79', '4957514b06e970b8c83edeb4eea8987b', 'hbgj6fcedi', 'ehcdbgf6', 0, '1632332460', 100, 0),
(285, 'Nayana nipul', 'Male', 'nipulnayana@gmail.com', 'nayananipul', '16a2fcb6ba203b68ddfb80142de8de5e', 'jf6gciehbd', 'gecdfbh6', 0, '1632332640', 100, 0),
(289, 'Md Maksudur Rahman', 'Male', 'mmaksud@hotmail.com', 'Maksud', 'ae2a5abf5bbf09ff7af710575e1e2211', 'jfdg6chibe', 'f6hedgbc', 0, '1632340380', 160, 0),
(290, 'chamil priyadharshan', 'Male', 'chamilpriyadharshana90@gmail.com', 'chamiya', 'ecfdb6b51faf4f54239ed183e0a4f67c', 'hcg6idfjbe', '6cdfbghe', 0, '1632342060', 130, 0),
(293, 'Tharmenthira Ratnasi', 'Male', 'ttharmi85@gmail.com', 'Tharmi', '05427f23ef3e0039606fc0a02327bb31', 'djigbfh6ce', 'edh6cgfb', 0, '1632358500', 100, 0),
(294, 'Om singh', 'Male', 'os562472@gmail.com', 'MARVEL DC STUDIOS', '7925aa5cd8e0df17a285bf9bf597f695', 'iefb6dhjgc', 'hcfbg6ed', 0, '1632359460', 50, 0),
(295, 'Lakmal', 'Male', 'sampathmw87@gmail.com', 'Lakmalsampath', '6d069d6c32358e5b3f10096fa407f2c4', 'gdcfihjb6e', 'cdbehgf6', 0, '1632362640', 340, 0),
(296, 'Sandani Rathnayake', 'Female', 'sandaniratnayake@gmail.com', 'Sandani@12', '398b05bd8da5317fd52b882296be04d8', 'jgc6bdeihf', 'cfh6gedb', 0, '1632365040', 450, 0),
(297, 'sandaru chamika', 'Male', 'sandaruchamika1998@gmail.com', 'sandaru', '958eaf4cfd54df733a94772e51f02a4c', 'higbedfcj6', 'cebgd6hf', 0, '1632366480', 50, 0),
(298, 'Shanaka Silva', 'Male', 'shanakamalith94@gmail.com', 'Upahara', '6c15756e42c9174300294ac3ecfe2602', 'cjigbhdf6e', 'hgcedfb6', 0, '1632372540', 50, 0),
(301, 'Prasanna', 'Male', 'prasanna.amaranayake@gmail.com', 'Prasanna', 'c3044b07bff9815c57e6600a5a1eb525', 'jibdefhg6c', 'gdche6fb', 0, '1632384600', 10, 0),
(300, 'Manoj', 'Male', 'manojra077@yahoo.com', 'manj1234', '2ec16aeaffb70538939720ee7d3bf49a', 'b6fhcgjdei', 'gecd6fhb', 0, '1632375900', 50, 0),
(302, 'Sharon malshani', 'Female', 'k.w.g.malshan@gmail.com', 'Sharon', 'c1de5965c039f0c6e5852dc08d6f69c1', 'jdfbi6hcge', 'chbgfe6d', 0, '1632385680', 100, 0),
(303, 'unshape', 'Female', 'unshape10951414@gmail.com', 'UN-SHAPE', 'e1bad7ed34ea1b78151701150f0b0ef8', 'edbj6gchfi', 'egbd6hcf', 0, '1632385920', 960, 0),
(308, 'kl jobs vacancies', 'Male', 'kithlankay@gmail.com', 'kithlankay@gmail.com', '89ea3c21b39623db95753f11455b20b1', 'ejdh6ibgfc', 'ecg6dhbf', 0, '1632411840', 100, 0),
(305, 'Kiri aiya', 'Male', 'kiriaiya3@gmail.com', 'Prdeep', '5cf4d974d6582306a8ba0ba96ba7dd6f', 'gfi6becdjh', 'fceb6hdg', 0, '1632386160', 100, 0),
(306, 'Rajika', 'Male', 'rajikabt@gmail.com', 'Rajika', 'e718e31a381a014035ee22957d14d266', 'cfgdh6jbie', 'bgf6ehdc', 0, '1632387960', 100, 0),
(307, 'Dulaksha', 'Male', 'Chavindujayathunga@gmail.com', 'Dula', 'dc0bbd0f227a6b52aece1c94e77a0365', 'g6dfehibjc', 'hbfd6egc', 0, '1632395460', 30, 0),
(312, 'Miyuru prabath', 'Male', 'miuruprabath267@gmail.com', 'Miyuru57', '1f62da2b1a5e1159cec769b052aada9f', 'dj6bhecgfi', '6edfghcb', 0, '1632454860', 100, 0),
(311, 'Chandana kumara', 'Male', 'chandana9600@yahoo.com', 'Chandu99', '7e20d6a3a8d6e1568e3c5052fd976c90', '6dcijgehbf', 'bcge6fhd', 0, '1632434040', 90, 0),
(313, 'Y.K.R.Wijayarathna', 'Male', 'kaviruruwindana2001@gmail.com', 'Slkmax', 'f61ee4bd67d4f0450b18263672592d03', 'cdjegih6bf', 'dh6fcbeg', 0, '1632455040', 50, 0),
(315, 'Art Events', 'Male', 'arteventsint@gmail.com', 'arteventsint', '80081431a5161b09f0d04d584c00181a', 'je6cbghdif', 'h6cgfdeb', 0, '1632491700', 100, 0),
(316, 'Imo Chibueze', 'Male', 'imochibueze3@gmail.com', 'Imo the best', 'c27b443f3e202f51327fe2f1b7c000a5', 'hjgd6biecf', 'bg6chdfe', 0, '1632493860', 100, 0),
(318, 'Malan ranathunga', 'Male', 'smartmalan@gmail.com', 'smartmalan', 'aeb29746ca5339e32a4fd6b72a174c87', 'eb6idfjchg', 'gbc6hdfe', 0, '1632532740', 110, 0),
(319, 'Riyaz', 'Male', 'Khanriyaz72971@gmail.com', 'Riyaz', 'f88353b24337bd4f8625450df4465d97', 'iegdj6bfhc', 'cghde6bf', 0, '1632542940', 50, 0),
(322, 'Navee Weenu', 'Female', 'naveeandweenu@gmail.com', 'naveeweenu', 'fadd02c0c33f027303dcabc7a5b1083d', 'e6ghcibjdf', 'bc6ghdef', 0, '1632641640', 260, 0),
(323, 'Melissa Baldsing', 'Female', 'melonline16@gmail.com', 'Mel2021', '3fb5184c1871f4b66280296302ff01ce', 'b6digfechj', 'hfcdb6ge', 0, '1632644340', 130, 0),
(341, 'KavinduNimesh', 'Male', 'kani.kntech@gmail.com', 'HelaScript', '5290d1aa998cdfde437a8780d0a26f39', 'df6gecijbh', 'hdfeg6cb', 0, '1636262220', 60, 0),
(328, 'Kavi', 'Female', 'k.nimesh.kn@gmail.com', 'kana', '8fdc80409758362db66763062a07ed4c', 'dbfhc6gjie', 'h6bgdefc', 0, '1632919680', 100, 0),
(327, 'MOHAMED NAIF', 'Male', 'naifmohamed40@gmail.com', 'naif1993', '62f107c5a109259b1df3402a08d7caa7', 'c6edjbfigh', 'fg6dehcb', 0, '1632820620', 160, 0),
(329, 'Maleesha Udan', 'Male', 'maleeshaudan6@gmail.com', 'Admin', 'a24a84dfcd19b0f1bb0b016c0439f984', 'gcbfihj6ed', 'bghf6ced', 0, '1633835100', 100, 0),
(342, 'Asitha wanigasekara', 'Male', 'asitha12988@gmail.com', 'youtube123', '97dcc5cc369d9d342bb2887be73c8153', 'gdejifhc6b', 'c6ehdfgb', 0, '1636768140', 100, 0),
(331, 'fishingWithSuresh', 'Male', 'sureshmadushankakodikara@gmail.com', 'FishingWithSuresh', '2d8a68017c8938b2afbee10dfa09cbb8', 'hbfigce6jd', 'bdch6egf', 0, '1634463900', 150, 0),
(332, 'Paduma Induwara', 'Male', 'induwarapaduma2002@gmail.com', 'Induwara@11', 'e9fb2cdf45abc4c5caf39e231e806eb9', 'd6fbgicjeh', '6hcdfgeb', 0, '1634710560', 1450, 0),
(336, 'SuperLanka', 'Male', 'amithmonaragala@gmail.com', 'Superlanka1', '69005bb62e9622ee1de61958aacf0f63', 'ijchgbf6de', 'befg6hcd', 0, '1636160520', 100, 0),
(335, 'Ajith Perera', 'Male', 'send2ajith@gmail.com', 'AWP', 'eaed67a4a53f0b231604a5929bd9cbdf', 'icjefhdgb6', '6hedfbcg', 0, '1635818100', 100, 0),
(348, 'dulara2222', 'Male', 'dularapramod88@gmail.com', 'helascript22', '79c80b2b1edc799e1fb42315279f1d72', 'igdefbc6jh', 'febdgh6c', 0, '1642344120', 30, 0),
(347, 'Kasun', 'Male', 'kasunknd2@gmail.com', 'Kndsemoney', 'dc499238da564d9baa5c1c535deef3ec', 'efgcbjh6di', 'g6cbhfed', 0, '1639844340', 100, 0),
(343, 'Rumal Ransika', 'Male', 'rumala5599@gmail.com', 'Rumal5', '937c563835d5dd070bc3dd31a990f9b2', 'bcfhgei6jd', 'cfbehd6g', 0, '1637936580', 100, 0),
(350, 'werwerwer', 'Female', 'upulsampath643@gmail.com', 'werer', '17110b1357be45c7d5500196bbeceeb6', 'hbcfgd6eji', 'd6cfegbh', 0, '1642354260', 50, 0),
(349, 'dull323', 'Male', 'dularapramod19@gmail.com', 'soft', '17110b1357be45c7d5500196bbeceeb6', 'ifcbgjhde6', 'hbg6dcef', 0, '1642353600', 100, 0),
(370, 'test', 'Male', 'kasun0496@gmail.com', 'test1000', '5a21c3a038d20ea728da893efbb1a8b5', 'sfrotl4gmx681niejkbwuvdqp6hcy1', 'f6cedhgb', 0, '1659193440', 100, 0),
(352, 'Tharindu', 'Male', 'tharuas@gmail.com', 'tharuas', '4aa9c48caaddcdb95f295f98cf5234cb', 'jbdgfechi6', 'bfchge6d', 0, '1643863320', 100, 0),
(353, 'isanka darsha', 'Male', 'traffic.puttalam@police.lk', 'dmaxspd', '4d559d0209b52e783e74b0554d7d15b4', 'gdjeb6chif', 'eghb6cdf', 0, '1645521660', 100, 0),
(354, 'Niroshan', 'Male', 'niroshankarunathilaka59@gmail.com', 'Nik', '5536dfeeb673be0df0ba906e13ce87a9', 'dcjfg6ehib', '6hcdfebg', 0, '1645804860', 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `ID` int(15) NOT NULL,
  `user` varchar(40) NOT NULL,
  `link` varchar(200) NOT NULL,
  `type` int(1) NOT NULL,
  `dtime` varchar(40) NOT NULL,
  `views` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`ID`, `user`, `link`, `type`, `dtime`, `views`) VALUES
(56, 'Emrys', '45K_KRzZ9QQ', 1, '17/09/2021 10:55 am', 1),
(667, 'AnonyShy', '3bh468DRHd8', 1, '4/10/2021 3:02 am', 1),
(72, 'chamiudara777', 'unOoeAs726k', 2, '17/09/2021 11:59 pm', 1),
(36, 'a', '4snj3ZxMgm8', 4, '17/09/2021 8:32 am', 17),
(37, 'a', 'vAT2AVraUtk', 4, '17/09/2021 8:35 am', 17),
(168, 'Ajith', 'I3TNe7etBNg', 1, '18/09/2021 9:45 pm', 1),
(274, 'menuka2008', 'QbGReuIMyUo', 1, '20/09/2021 3:18 am', 1),
(167, 'Ajith', 'vny8xYd50lM', 1, '18/09/2021 9:42 pm', 1),
(170, 'Ajith', 'U8pY0Nid8aY', 1, '18/09/2021 9:47 pm', 1),
(71, 'Lewva bro', '9ltWViy-b5g', 2, '17/09/2021 11:49 pm', 1),
(169, 'Ajith', 'njOxN9fEBE4', 1, '18/09/2021 9:46 pm', 1),
(70, 'App Tech Zone', 'Gu5fGqnOLU0', 2, '17/09/2021 11:35 pm', 1),
(53, 'a', 'u36ayYVi_e0', 3, '17/09/2021 10:48 am', 71),
(69, 'Pramo', '5pEeU-0FKAc', 2, '17/09/2021 12:45 pm', 1),
(649, 'AnonyShy', 'd_-hs0zaV0w', 1, '25/09/2021 6:53 pm', 1),
(739, 'AnonyShy', 'uqs2AhDkpNY', 1, '13/02/2022 12:09 pm', 1),
(647, 'AnonyShy', 'cZ20G06Cdoo', 2, '25/09/2021 6:51 pm', 0),
(640, 'Sachithroxy', 'uDa-XfxxB6s', 1, '24/09/2021 11:57 pm', 1),
(104, 'Naveen', '6QenZ284BgE', 2, '18/09/2021 3:51 am', 1),
(372, 'Tharu123', '8FFmMl5WKMs', 1, '20/09/2021 9:14 pm', 1),
(643, 'Elpitiyaniro', 'ir-adijfkYY', 1, '25/09/2021 12:12 pm', 1),
(73, 'Sunshine23', '0GDIqUkej_E', 1, '18/09/2021 12:26 am', 4),
(74, 'SuperlankaTV', 'QNqN1H21Olo', 1, '18/09/2021 12:29 am', 3),
(76, 'Andrewy', 'rqrW_H2w9Lk', 1, '18/09/2021 12:53 am', 1),
(81, 'samithaeranda', 'gICoN7oJhug', 1, '18/09/2021 12:56 am', 1),
(78, 'Andrewy', 'XNqAsdZ9Pao', 1, '18/09/2021 12:54 am', 1),
(79, 'Andrewy', 'eTxlC4gdBss', 1, '18/09/2021 12:54 am', 2),
(80, 'samithaeranda', 'ow_oL4oZRwA', 2, '18/09/2021 12:54 am', 1),
(82, 'Andrewy', '_gjvlbQLgV4', 1, '18/09/2021 12:57 am', 1),
(84, 'Andrewy', 'H8MQU5jJQqA', 1, '18/09/2021 12:58 am', 1),
(86, 'AnonyShy', 'gyhR3JXQUOo', 2, '18/09/2021 1:11 am', 0),
(454, 'Art of graphics', 'EFzWjrU6EZc', 2, '21/09/2021 5:28 am', 0),
(736, 'kani', 'x5RslsxleY0', 1, '18/01/2022 5:29 am', 1),
(88, 'AnonyShy', '-kPzou3QQnc', 2, '18/09/2021 1:14 am', 1),
(89, 'AnonyShy', '_Zf97oJmWBM', 2, '18/09/2021 1:14 am', 0),
(456, 'Art of graphics', '1v8mVOYAoqU', 2, '21/09/2021 5:29 am', 0),
(92, 'Art of graphics', 'ipQPTdzRsiM', 2, '18/09/2021 1:18 am', 1),
(458, 'Art of graphics', 'dXZWDyL9vqo', 2, '21/09/2021 5:30 am', 0),
(94, 'a', 'p7eKsvCluN8', 4, '18/09/2021 1:37 am', 20),
(102, 'Dns patabendige', '2dE5TklEzbE', 2, '18/09/2021 3:26 am', 1),
(97, 'vimukthin516', 'ppV5_caj3A8', 2, '18/09/2021 2:05 am', 1),
(98, 'Sandeepa 1982', 'MxJnnyAil4M', 2, '18/09/2021 2:28 am', 1),
(99, 'Sandeepa 1982', 'tZy2nAnF6jM', 2, '18/09/2021 2:36 am', 1),
(100, 'Sandeepa 1982', 'XVgGkZ2ruFg', 2, '18/09/2021 2:37 am', 1),
(101, 'Sandeepa 1982', 'EyDys7fHZws', 2, '18/09/2021 2:38 am', 2),
(652, 'Eranga123', '5b-Ma_aU2f0', 1, '26/09/2021 2:35 am', 1),
(638, 'smartmalan', 'sTszdNXOfgA', 1, '24/09/2021 9:21 pm', 1),
(109, 'Apedoctor', 'AftXtYeekJs', 1, '18/09/2021 5:09 am', 3),
(110, 'VishwaTVSL', 'oLc1KdR6MA4', 2, '18/09/2021 5:14 am', 1),
(111, 'VishwaTVSL', 'QoZ_HJePOcs', 2, '18/09/2021 5:16 am', 1),
(112, 'Sanjika', '8SFk71tFRLg', 2, '18/09/2021 5:33 am', 1),
(114, 'thisal', 'zDGz7U9zsrk', 1, '18/09/2021 5:43 am', 3),
(185, 'thisal', 'V4uYDktWGzs', 1, '19/09/2021 12:11 am', 1),
(639, 'smartmalan', 'JIHbCtoqAhE', 2, '24/09/2021 9:23 pm', 0),
(119, 'Slcovers', '7DCFDHNDdG4', 1, '18/09/2021 7:29 am', 2),
(120, 'Jeewa', 'ykCI6GKkKxI', 1, '18/09/2021 7:39 am', 1),
(121, 'Jeewa', '409K5q2wQ3U', 1, '18/09/2021 7:43 am', 1),
(122, 'Jeewa', 'u1-3ZmnI064', 1, '18/09/2021 7:45 am', 2),
(123, 'Jeewa', 'Gc7x0VK7pQ8', 1, '18/09/2021 7:46 am', 1),
(124, 'Jeewa', 'CUjuS8y2us0', 1, '18/09/2021 7:47 am', 2),
(128, 'dininduadithya', 'n07KVkAjuyY', 2, '18/09/2021 7:55 am', 1),
(129, 'dininduadithya', 'jU0XWKmKvw4', 2, '18/09/2021 7:58 am', 1),
(130, 'Manoj', '4HuK_YXaOo4', 2, '18/09/2021 8:08 am', 1),
(132, 'MRS Editors', '_QoyZTm7Zz8', 2, '18/09/2021 9:20 am', 1),
(133, 'Pasidu1000', '8QiRozzD9_w', 2, '18/09/2021 9:26 am', 1),
(134, 'Pasidu1000', 'I4c7x7B0UEQ', 1, '18/09/2021 9:30 am', 2),
(135, 'Jayaweera', 'Iyj9Tky9EvA', 2, '18/09/2021 10:04 am', 1),
(136, 'Jayaweera', 'jZREZPlM90g', 2, '18/09/2021 10:04 am', 0),
(137, 'Jayaweera', 'JCn9-B7Nr2Q', 2, '18/09/2021 10:05 am', 1),
(139, 'Jayaweera', 'YZf_u6kTbuI', 2, '18/09/2021 10:06 am', 1),
(140, 'Jayaweera', 'gkXyCawzqRc', 2, '18/09/2021 10:07 am', 1),
(636, 'Bandara', 'wsF2aHwnQlc', 1, '24/09/2021 12:17 pm', 1),
(141, 'Kumara', '7-lKxA55WWA', 2, '18/09/2021 10:16 am', 1),
(142, 'Jayaweera', 'SZUHgJVJ1s8', 1, '18/09/2021 10:20 am', 2),
(143, 'Sasintha Vidunjana', 'xrCTMrjtORQ', 2, '18/09/2021 10:59 am', 1),
(144, 'Sasintha Vidunjana', 'keZEwNY97Es', 2, '18/09/2021 11:00 am', 1),
(145, 'asela1990', 'k7FMRs312Zg', 1, '18/09/2021 11:49 am', 2),
(357, 'Speaktaste', 'i_1RztPJNG8', 2, '20/09/2021 1:04 pm', 0),
(147, 'maheshrda1982', 'MqMDVbSGE9A', 2, '18/09/2021 1:01 pm', 1),
(148, 'NESHI DIY &amp;CRAFT', 'h9HrMf5QURs', 1, '18/09/2021 1:05 pm', 2),
(149, 'NESHI DIY &amp;CRAFT', 'IU1BD62EtpU', 1, '18/09/2021 1:06 pm', 1),
(289, 'Okithma Menula', 'zyRG3krTiPg', 2, '20/09/2021 7:50 am', 0),
(287, 'Okithma Menula', '3RoGAwGA0Jk', 1, '20/09/2021 7:48 am', 2),
(153, 'Apedoctor', 'InISTAYrSnc', 1, '18/09/2021 1:27 pm', 2),
(154, 'Dumi124', 'xwKIHexWQ0E', 1, '18/09/2021 1:28 pm', 2),
(155, 'Dumi124', 'xmzMODrYT2U', 1, '18/09/2021 1:28 pm', 2),
(156, 'Dumi124', '1ynF36WOlbs', 1, '18/09/2021 1:29 pm', 1),
(157, 'Dumi124', 'q3ZvFWp0fRA', 1, '18/09/2021 1:29 pm', 2),
(741, 'tuanrahim', 'J7Rww0RPQZc', 1, '8/03/2022 11:33 pm', 0),
(158, 'Topetop', 'uxGrOGM5kQ0', 1, '18/09/2021 3:30 pm', 2),
(159, 'Chana', 'rOTPYvX-bzQ', 2, '18/09/2021 6:07 pm', 0),
(160, 'Chana', 'tzLDESI_N-w', 2, '18/09/2021 6:09 pm', 0),
(161, 'Chana', 'z0bElo9q-fE', 2, '18/09/2021 6:10 pm', 0),
(162, 'Chana', '6gbnVYIDQI4', 2, '18/09/2021 6:11 pm', 1),
(163, 'Chana', '8v7UCBSVsU0', 1, '18/09/2021 6:22 pm', 2),
(164, 'Chana', 'af3Dp2FWhdQ', 1, '18/09/2021 6:23 pm', 2),
(358, 'Speaktaste', 'lwmngfP2LHM', 1, '20/09/2021 1:05 pm', 1),
(356, 'Speaktaste', 'IJUtovMhyps', 2, '20/09/2021 1:03 pm', 0),
(171, 'Kumara', 'uupNaI6Ux28', 1, '18/09/2021 9:58 pm', 1),
(621, 'kithlankay@gmail.com', 'UCIhfrNVi6z', 1, '23/09/2021 11:48 am', 0),
(173, 'Muditha1993', '9nVu9AQO98s', 1, '18/09/2021 10:29 pm', 1),
(174, 'Muditha1993', 'LhpJCkns6Ck', 2, '18/09/2021 10:34 pm', 1),
(175, 'damith98kumara', 't_lreL9o-kQ', 1, '18/09/2021 11:04 pm', 1),
(177, 'Sanju1209', 'udr10s-HA20', 2, '18/09/2021 11:39 pm', 0),
(178, 'Sanju1209', 'kcnk21I5JHg', 2, '18/09/2021 11:40 pm', 1),
(181, 'Sanju1209', 'yGcZVpw_uCg', 2, '18/09/2021 11:42 pm', 0),
(188, 'thisal', 'fWg5q2xeqJQ', 2, '19/09/2021 12:13 am', 0),
(206, 'thisal', 'gqdKvkbbAJI', 2, '19/09/2021 4:07 am', 1),
(190, 'Kasuni Gayathri', '5hrUoH-aKqc', 2, '19/09/2021 12:19 am', 0),
(191, 'Kasuni Gayathri', 'jm9jgyKYcwA', 2, '19/09/2021 12:28 am', 0),
(192, 'Kasuni Gayathri', 'pJD7SOYf53I', 2, '19/09/2021 12:39 am', 0),
(622, 'kithlankay@gmail.com', 'lWsOXs2Odx0', 2, '23/09/2021 11:52 am', 0),
(194, 'Pasindu21', 'oaMDKFBWF8w', 2, '19/09/2021 1:45 am', 0),
(195, 'Pasindu21', 'XG5GXCjAeDY', 2, '19/09/2021 1:46 am', 0),
(196, 'Pasindu21', 'qFJr9iAmKkU', 2, '19/09/2021 1:46 am', 0),
(197, 'Pasindu21', 'qC_os5tK_7c', 2, '19/09/2021 1:46 am', 0),
(198, 'Pasindu21', 'OgnCYapEweo', 2, '19/09/2021 1:47 am', 1),
(201, 'gihan13', 'EcK2VgEiD94', 2, '19/09/2021 3:16 am', 0),
(207, 'thisal', 'r2oIMOYhrvo', 2, '19/09/2021 4:07 am', 0),
(208, 'thisal', '2bFQRz1PSFk', 2, '19/09/2021 4:07 am', 0),
(209, 'thisal', 'wahmnWY5NIw', 1, '19/09/2021 4:08 am', 1),
(210, 'thisal', 'C7NRYLhX0tQ', 1, '19/09/2021 4:09 am', 1),
(211, 'thisal', 'nJGXrECH-Vk', 2, '19/09/2021 4:10 am', 1),
(212, 'amalkingsly', 'eOzqzr31RRo', 1, '19/09/2021 5:10 am', 1),
(213, 'Clakshitha', 'JNs7ZhZjvSM', 2, '19/09/2021 5:44 am', 1),
(214, 'Clakshitha', 'o2L-Q1Ym-yk', 2, '19/09/2021 5:45 am', 0),
(215, 'Clakshitha', 'LKt5AYLrbZs', 1, '19/09/2021 5:51 am', 1),
(216, 'Clakshitha', 'TrpgoYlNQLY', 1, '19/09/2021 5:52 am', 1),
(217, 'Clakshitha', 'PKoVXIe7v58', 2, '19/09/2021 5:52 am', 0),
(218, 'Clakshitha', 'vL_MERaZQWE', 2, '19/09/2021 5:53 am', 0),
(219, 'Clakshitha', 'vUwkvv4klvs', 2, '19/09/2021 5:54 am', 1),
(220, 'Pathum', '4qbqfpHs3tA', 2, '19/09/2021 7:31 am', 0),
(221, 'Pathum', 'x6Jcx8jypRA', 2, '19/09/2021 7:34 am', 0),
(222, 'Pathum', 'mh5_YYbKWXU', 2, '19/09/2021 7:35 am', 0),
(223, 'Pathum', 'lZRVGKGs0oQ', 2, '19/09/2021 7:36 am', 0),
(224, 'Pathum', 'G7t27e4dr3o', 2, '19/09/2021 7:36 am', 0),
(225, 'Pexel', '6XF-x4XOKD8', 1, '19/09/2021 7:42 am', 1),
(406, 'Geefm', 'Fdzu5h9tqg4', 2, '21/09/2021 1:35 am', 0),
(226, 'Diniduroshantha', 'nxBvRYFnmmc', 2, '19/09/2021 9:51 am', 1),
(227, 'Diniduroshantha', 'L9paukF_-Fc', 2, '19/09/2021 9:52 am', 0),
(228, 'Sasi', 'yomIkN_c8Gg', 2, '19/09/2021 12:01 pm', 0),
(229, 'Msthenuwara', 'XtJO6B_q828', 1, '19/09/2021 3:09 pm', 1),
(230, 'Msthenuwara', 'M-85e0Tr-6A', 1, '19/09/2021 3:11 pm', 2),
(231, 'Msthenuwara', '0oa9u5cvd0M', 1, '19/09/2021 3:12 pm', 0),
(232, 'besteye', 'mOifa57yj9Y', 1, '19/09/2021 4:12 pm', 2),
(233, 'Kumara', '0VzlJrjKC58', 2, '19/09/2021 9:56 pm', 1),
(234, 'Kumara', 'B9Lt-4Feqco', 1, '19/09/2021 10:06 pm', 1),
(235, 'Kumara', 'RwQXvi1S76c', 2, '19/09/2021 10:09 pm', 0),
(236, 'Kumara', 'Tbm7blVlY_A', 2, '19/09/2021 10:11 pm', 1),
(290, 'SL Motivator', 'Kx_Ot4LkaBM', 2, '20/09/2021 7:54 am', 0),
(237, 'OneTech', 'Umb82G3Kulc', 2, '19/09/2021 10:42 pm', 1),
(238, 'OneTech', 'OLKUfztbAS4', 1, '19/09/2021 10:42 pm', 1),
(239, 'village girl', 'VP6MetlRXuM', 1, '19/09/2021 11:34 pm', 1),
(240, 'village girl', 'LMqAkeb_sTI', 1, '19/09/2021 11:36 pm', 0),
(241, 'village girl', 'KLdItvLgYrU', 1, '19/09/2021 11:37 pm', 1),
(242, 'village girl', 'XDbiti8siew', 1, '19/09/2021 11:38 pm', 0),
(243, 'village girl', 'vJEV06Uxr7w', 1, '19/09/2021 11:38 pm', 1),
(244, 'samitha', 'x2qZS5hVBHc', 1, '20/09/2021 12:41 am', 1),
(245, 'Dulip', 'Sx2Q4K2BPRY', 2, '20/09/2021 1:20 am', 1),
(246, 'Ameeya', 'wHDckZ5HyX8', 2, '20/09/2021 1:24 am', 1),
(247, 'Lakshan', 'zlcqiPYiPGA', 2, '20/09/2021 1:28 am', 1),
(248, 'Dulip', 'T1Qmt17B_kc', 1, '20/09/2021 1:33 am', 2),
(249, 'Lakshan', 'Zrj81FKPXdU', 1, '20/09/2021 1:37 am', 2),
(250, 'SLAnuwa_007', 'APDh8SaJUqY', 2, '20/09/2021 1:56 am', 1),
(252, 'Golden ceylon', 'edwn09tQpQE', 2, '20/09/2021 2:19 am', 0),
(253, 'Golden ceylon', 'jJ3a5xuHjFw', 2, '20/09/2021 2:23 am', 0),
(254, 'Nirmal', 'pCP1vsyFkJ4', 2, '20/09/2021 2:23 am', 0),
(264, 'harasha1234', 'mOFECJ3GlbM', 1, '20/09/2021 2:30 am', 2),
(256, 'Nirmal', 'O1RBn-z8UFA', 2, '20/09/2021 2:24 am', 1),
(263, 'Golden ceylon', 'o_LmT7ARUeM', 2, '20/09/2021 2:29 am', 0),
(258, 'Nirmal', '4LMcBhSdzzU', 2, '20/09/2021 2:25 am', 0),
(262, 'Golden ceylon', 'XdiybXBK6Mg', 2, '20/09/2021 2:28 am', 0),
(260, 'Nirmal', 'BK0GnxsFm74', 2, '20/09/2021 2:26 am', 1),
(261, 'Nirmal', '_bS0ZtlW3N0', 2, '20/09/2021 2:26 am', 1),
(265, 'Golden ceylon', 'rBY8PlJyEBY', 2, '20/09/2021 2:31 am', 1),
(267, 'Prabathm87', 'uSteEdQAGGA', 2, '20/09/2021 2:33 am', 1),
(268, 'Prabathm87', 'j9SEiPmhFAs', 2, '20/09/2021 2:34 am', 1),
(269, 'dhanushkasl.net', 'XKxuZHz-jpo', 2, '20/09/2021 2:44 am', 0),
(270, 'dhanushkasl.net', '6FEaMERXM60', 2, '20/09/2021 2:47 am', 0),
(271, 'dhanushkasl.net', '9OKaOTHHYyQ', 2, '20/09/2021 2:47 am', 0),
(272, 'dhanushkasl.net', 'Je3KcmR4eSU', 2, '20/09/2021 2:48 am', 1),
(273, 'dhanushkasl.net', 'kzh1wHNQDFU', 2, '20/09/2021 2:48 am', 1),
(275, 'Wiman', 'FxKUApNJhIk', 1, '20/09/2021 4:15 am', 2),
(276, 'Ravihansal', 'Nh0_sY-dIy0', 2, '20/09/2021 4:53 am', 1),
(277, 'sfsdf34r3r', 'B9hRhfv781c', 2, '20/09/2021 4:56 am', 1),
(624, 'kithlankay@gmail.com', 'nVlZF8BFIFc', 2, '23/09/2021 11:54 am', 0),
(623, 'kithlankay@gmail.com', 'j2PgBRmOxBg', 2, '23/09/2021 11:53 am', 0),
(281, 'vida1982', '0sbNx1qQ_DU', 1, '20/09/2021 5:21 am', 2),
(288, 'Okithma Menula', '4rdjY3YUX10', 1, '20/09/2021 7:49 am', 2),
(283, 'Uditha', '21pGUgJtcQY', 2, '20/09/2021 5:52 am', 0),
(284, 'Uditha', 'qQRJsoi4Osc', 2, '20/09/2021 5:52 am', 1),
(285, 'gamingmate92', 'wPJZocGN4-8', 2, '20/09/2021 5:55 am', 1),
(291, 'SL Motivator', 'MfON4f-9dXE', 1, '20/09/2021 7:54 am', 1),
(292, 'SL Motivator', 'F1yoy7Rbhzg', 1, '20/09/2021 7:58 am', 1),
(293, 'SL Motivator', 'EvPjkmNncTI', 1, '20/09/2021 7:58 am', 0),
(294, 'SL Motivator', 'kFbjtMolalw', 1, '20/09/2021 7:59 am', 0),
(295, 'Slcovers', 'zC81UfqdUAk', 1, '20/09/2021 7:59 am', 1),
(296, 'SL Motivator', '2kxbtzto7IA', 1, '20/09/2021 8:00 am', 1),
(297, 'Harshasandaruwan', 'PBbTFR3zzEU', 1, '20/09/2021 8:03 am', 1),
(298, 'Harshasandaruwan', 'WQiMYDJO63k', 1, '20/09/2021 8:05 am', 1),
(299, 'Harshasandaruwan', 'C8jMyq3Fy20', 1, '20/09/2021 8:05 am', 1),
(300, 'Harshasandaruwan', 'x63nFZS-ZL0', 1, '20/09/2021 8:06 am', 1),
(302, 'Harshasandaruwan', 'wQg_gbFqN-c', 1, '20/09/2021 8:08 am', 1),
(303, 'Butterfly', 'UCWJeWM8bSS', 2, '20/09/2021 8:16 am', 0),
(304, 'Aruna.suresh077', 'ZjQuY7qwl2g', 2, '20/09/2021 8:28 am', 1),
(305, 'Aruna.suresh077', '2Ekqfz7i9n0', 2, '20/09/2021 8:30 am', 1),
(306, '123lakshan', 'tKR_IQDO9e8', 1, '20/09/2021 8:55 am', 2),
(307, 'Wddmadushanka', '8-cow7_8XmQ', 1, '20/09/2021 8:55 am', 1),
(308, 'Wddmadushanka', 'AykQxEMgE54', 1, '20/09/2021 8:57 am', 1),
(309, 'Wddmadushanka', 'o_rcF82za3A', 2, '20/09/2021 8:58 am', 0),
(310, 'Dulip', '2ZqwKM8ap9Y', 1, '20/09/2021 9:17 am', 1),
(311, 'kulanjith618', 'g9hxsTodCg0', 1, '20/09/2021 9:27 am', 1),
(312, 'Devinda', 'vN57LusxQhw', 2, '20/09/2021 9:44 am', 1),
(313, 'sathsarani', 'dm3sjkeCjuo', 2, '20/09/2021 10:04 am', 1),
(314, 'pathum51381', 'fcDZCdFbfys', 1, '20/09/2021 10:16 am', 1),
(315, 'Chanu', 'FZf-Yu5bQ4Q', 2, '20/09/2021 10:25 am', 1),
(316, 'Chanu', 'xnfrS9_Ats8', 1, '20/09/2021 10:25 am', 1),
(317, 'Tharunda2006', 'GrV5ypU_6qg', 2, '20/09/2021 10:31 am', 1),
(319, 'TravelEurope4K', 's3G15mWfjtM', 1, '20/09/2021 10:42 am', 1),
(320, 'tmindika', 'C7_hNz0oY28', 2, '20/09/2021 10:43 am', 1),
(321, 'tmindika', 'sXYEJ6eqEpg', 2, '20/09/2021 10:44 am', 1),
(322, 'tmindika', 'uroWZJ1xxoQ', 2, '20/09/2021 10:45 am', 1),
(506, 'Jmsp jayasinghe', 'cshoKSBgpTk', 1, '21/09/2021 3:46 pm', 1),
(430, 'Eranga123', 'M0DsPYox2DQ', 1, '21/09/2021 3:51 am', 1),
(325, 'dileep774', 'FxEU8H5-mfw', 2, '20/09/2021 11:52 am', 0),
(326, 'dileep774', 'T49in9jjigU', 2, '20/09/2021 11:54 am', 0),
(327, 'dileep774', 'Vj8EgF-Dr6Q', 2, '20/09/2021 11:54 am', 0),
(328, 'dileep774', 'TTB0Tx--yqo', 2, '20/09/2021 11:55 am', 0),
(334, 'dileep774', '3Gb-XC9iAtg', 2, '20/09/2021 12:02 pm', 0),
(330, 'dileep774', '9viLvSE7PxU', 1, '20/09/2021 11:59 am', 1),
(331, 'dileep774', 'MViCMoFCCxI', 1, '20/09/2021 11:59 am', 1),
(333, 'dileep774', '3rzI76elviw', 1, '20/09/2021 12:01 pm', 0),
(335, 'dileep774', '9EJdsAKZ4bU', 1, '20/09/2021 12:02 pm', 1),
(336, 'dileep774', 'YdRTHZpjyl8', 1, '20/09/2021 12:03 pm', 0),
(337, 'Madhawa', 'O8LPOMsKsNc', 1, '20/09/2021 12:08 pm', 1),
(340, 'Madhawa', '3ZCLnFEzFZU', 1, '20/09/2021 12:10 pm', 1),
(339, 'Madhawa', '-iH6-GeoI-g', 1, '20/09/2021 12:09 pm', 1),
(341, 'Madhawa', 'omqXYDRw-nE', 2, '20/09/2021 12:10 pm', 0),
(342, 'Madhawa', 'aZ3MrW0IR_c', 2, '20/09/2021 12:14 pm', 0),
(343, 'Danuja890', 'AEbaQ6cASjw', 2, '20/09/2021 12:15 pm', 0),
(344, 'Danuja890', 'D_Xx6anQAio', 1, '20/09/2021 12:17 pm', 1),
(345, 'Theekshana', 'IlRCX_97WAs', 2, '20/09/2021 12:19 pm', 0),
(346, 'Theekshana', 'KBspKbxBp1o', 2, '20/09/2021 12:20 pm', 0),
(347, 'Theekshana', '9WIiavrdFdk', 2, '20/09/2021 12:21 pm', 1),
(348, 'Theekshana', 'Vhrh6xfFdcQ', 2, '20/09/2021 12:21 pm', 0),
(349, 'Theekshana', 'noOyl5Hc_PE', 2, '20/09/2021 12:22 pm', 0),
(350, 'Lakshan Sachintha', 'SWJK51gJGsQ', 2, '20/09/2021 12:42 pm', 1),
(351, 'Lakshan Sachintha', '4La-NmCDWkU', 1, '20/09/2021 12:43 pm', 1),
(352, 'Lakshan Sachintha', '31ReiAMbIrs', 2, '20/09/2021 12:44 pm', 1),
(353, 'Lakshan Sachintha', 'aIJEo3u4RX4', 1, '20/09/2021 12:45 pm', 1),
(354, 'Lakshan Sachintha', 'pzE7K4M5C-w', 1, '20/09/2021 12:46 pm', 1),
(355, 'Okithma Menula', 'Z-BWvIIDPIA', 1, '20/09/2021 12:53 pm', 1),
(359, 'Shashikala10', 'XeLrxCap6fY', 2, '20/09/2021 1:22 pm', 1),
(360, 'Thara1292', 'QJIVWfOjS20', 2, '20/09/2021 1:31 pm', 1),
(361, 'Thara1292', 'dZx3acZ3h_k', 1, '20/09/2021 1:42 pm', 1),
(362, 'Thara1292', 'd7cEZEhedOA', 2, '20/09/2021 1:53 pm', 1),
(363, 'Sajith', '1hGsB6VsGoI', 1, '20/09/2021 1:58 pm', 1),
(364, 'Sajith', 'gVPvvvCVXFk', 2, '20/09/2021 1:59 pm', 1),
(365, 'Upul priyankara', 'VJqqgAMfL_Q', 1, '20/09/2021 4:01 pm', 1),
(366, 'Upul priyankara', 'RB6SaIr8ZWI', 1, '20/09/2021 4:02 pm', 1),
(367, 'Upul priyankara', 'tU6DVjG9stw', 1, '20/09/2021 4:24 pm', 1),
(368, 'Tharuka', 'kiz2PwAy1Pk', 2, '20/09/2021 5:49 pm', 0),
(369, 'Tharuka', 'Phr9Ob2L9n0', 2, '20/09/2021 5:50 pm', 0),
(370, 'Tharuka', 'vpiaGPq6yYU', 2, '20/09/2021 5:51 pm', 1),
(371, 'akira', 'DL7mrcGRZow', 2, '20/09/2021 8:15 pm', 0),
(373, 'pro tech sl', 'wEa8hvsLuP4', 2, '20/09/2021 9:51 pm', 1),
(374, 'pro tech sl', 'uUfbXdbrVfE', 1, '20/09/2021 9:53 pm', 1),
(375, 'SL Arana', '0W-dUYvEYIc', 2, '20/09/2021 10:09 pm', 0),
(376, 'Menuja1234', 'g6o5dJApk5E', 2, '20/09/2021 10:15 pm', 1),
(377, 'Miravlogs', 'ZEzA6OFh-Cs', 1, '20/09/2021 10:35 pm', 1),
(378, 'Dulmith', '777JHVgf2JA', 2, '20/09/2021 10:49 pm', 1),
(379, 'Sachiya', 'B2G94vOzxcc', 2, '20/09/2021 10:51 pm', 0),
(380, 'Niroshan', 'B_mZNJY6JRw', 2, '20/09/2021 11:03 pm', 1),
(381, 'Niroshan', '93X_d4o6NwM', 2, '20/09/2021 11:05 pm', 1),
(382, 'Niroshan', 'sRx_p-Pwvxs', 1, '20/09/2021 11:06 pm', 1),
(383, 'Niroshan', 'iqxEjBgmZpY', 1, '20/09/2021 11:06 pm', 1),
(384, 'Sandaruwan', 'xP0XDXvBhWA', 2, '20/09/2021 11:12 pm', 1),
(385, 'Niroshan', 'RUFA1SEbkGo', 1, '20/09/2021 11:16 pm', 1),
(386, 'Niroshan', 'cFOitWXIBvc', 2, '20/09/2021 11:16 pm', 1),
(686, 'Niroshan', 'rmlAS13LAus', 1, '14/10/2021 4:46 am', 1),
(388, 'Niroshan', 'cqmfiS8N9Ac', 2, '20/09/2021 11:17 pm', 1),
(389, 'Niroshan', 'qhV-7_6QD_o', 2, '20/09/2021 11:18 pm', 1),
(390, 'Niroshan', '3RDyzx_XyY8', 1, '20/09/2021 11:19 pm', 1),
(392, 'Dulmith', 'lv8uoSjkSZQ', 2, '20/09/2021 11:21 pm', 1),
(399, 'Dulmith', 'zy6hEM6OExc', 1, '20/09/2021 11:40 pm', 0),
(400, 'Dulmith', 'lziu4x4u0i8', 2, '20/09/2021 11:40 pm', 1),
(395, 'Dulmith', 'KLsNhJlA8-U', 2, '20/09/2021 11:23 pm', 0),
(397, 'Malajhon', 'Kl-mOVY8AUQ', 1, '20/09/2021 11:35 pm', 1),
(401, 'Dulmith', 'pyAr6DEoscA', 2, '20/09/2021 11:42 pm', 1),
(402, 'Dulmith', 'J33ywD6hHmY', 1, '20/09/2021 11:42 pm', 1),
(403, 'Dulmith', 'PWhtv8ku_nA', 1, '20/09/2021 11:43 pm', 1),
(405, 'sasanka technology', 'KGRcyAxRQnc', 2, '21/09/2021 12:14 am', 1),
(407, 'Geefm', 'lXsw792euQc', 2, '21/09/2021 1:36 am', 0),
(408, 'Geefm', 'Aa9SLl7i2Bo', 2, '21/09/2021 1:38 am', 0),
(409, 'Pradeep', 'GG6QjDRbOJ8', 2, '21/09/2021 1:38 am', 0),
(410, 'Geefm', 'vJ15K-dMu-A', 2, '21/09/2021 1:38 am', 1),
(411, 'Geefm', 'JSHwn_NwTag', 2, '21/09/2021 1:39 am', 1),
(412, 'Pradeep', 'nDhUkibfhbI', 2, '21/09/2021 1:40 am', 0),
(413, 'Pradeep', 'ATNCciK-2TQ', 2, '21/09/2021 1:40 am', 0),
(414, 'Pradeep', 'eOIBIjfokjc', 2, '21/09/2021 1:41 am', 0),
(415, 'Dulip', 'HAyHcmcH7X4', 2, '21/09/2021 1:43 am', 1),
(416, 'svmoses', 'KZFA7q_ujH0', 2, '21/09/2021 1:44 am', 0),
(417, 'svmoses', '4-qOcbZNRuc', 2, '21/09/2021 1:45 am', 0),
(418, 'svmoses', 'CaKGSp2Vs7o', 2, '21/09/2021 1:46 am', 0),
(419, 'Pradeep', 'Ic7m9fbbDGM', 1, '21/09/2021 1:47 am', 1),
(420, 'Pradeep', 'c-bS33elJ_Q', 1, '21/09/2021 1:47 am', 1),
(421, 'Pradeep', 'mFqfrBtpNGo', 1, '21/09/2021 1:48 am', 1),
(422, 'Pradeep', 'ZJlIXgEfg7M', 1, '21/09/2021 1:49 am', 1),
(423, 'Pradeep', 'dT3ni7jBlDU', 1, '21/09/2021 1:50 am', 1),
(424, 'svmoses', 'fKp2TusiE8k', 1, '21/09/2021 2:34 am', 1),
(425, 'svmoses', 'Ui1g7pqXVJ0', 1, '21/09/2021 2:34 am', 1),
(455, 'samare', 'bEn0_045dcA', 2, '21/09/2021 5:28 am', 0),
(428, 'Sandun650', '1hmKYwPlWdM', 2, '21/09/2021 3:10 am', 0),
(450, 'Noven', '82XyePN9aoY', 1, '21/09/2021 4:49 am', 1),
(436, 'Eranga123', 'JXvigpkwsSg', 1, '21/09/2021 3:55 am', 1),
(737, 'tharuas', 'Cs1FIB21FEI', 2, '2/02/2022 11:49 pm', 0),
(435, 'gimhan12345', 'ssvUYEDUFPU', 1, '21/09/2021 3:54 am', 1),
(437, 'Sohan', '66TOs18Vz2w', 1, '21/09/2021 4:08 am', 1),
(440, 'TravelEurope4K', 'fJPFQGu9NPQ', 2, '21/09/2021 4:23 am', 1),
(441, 'TravelEurope4K', 'WyEeUd6KmYY', 1, '21/09/2021 4:24 am', 1),
(452, 'saman ingilka', 'YYIfjWMMtZE', 1, '21/09/2021 5:26 am', 1),
(453, 'saman ingilka', 'Sy9QjZ4mjDE', 2, '21/09/2021 5:27 am', 1),
(444, 'Senanayake hm', 'ikthoWndJZg', 1, '21/09/2021 4:28 am', 1),
(445, 'Senanayake hm', 'pdaShc-3Pns', 2, '21/09/2021 4:28 am', 0),
(446, 'Senanayake hm', '-P8dNHjXQ2Q', 1, '21/09/2021 4:30 am', 1),
(447, 'Senanayake hm', 'gANrwTsWqhc', 1, '21/09/2021 4:30 am', 0),
(449, 'Senanayake hm', 'Ma_oyct7mNM', 1, '21/09/2021 4:31 am', 1),
(457, 'Rush Music Lk', 'iIinB_fuM1Q', 2, '21/09/2021 5:30 am', 1),
(459, 'Rush Music Lk', '4RBrNbp1uu8', 2, '21/09/2021 5:31 am', 0),
(460, 'Rush Music Lk', 'ThGS_9Tug_Y', 2, '21/09/2021 5:31 am', 0),
(461, 'Hemantha', '9-lkhfwIuKY', 1, '21/09/2021 5:36 am', 2),
(462, 'Hemantha', 'Vg9Nsd3omIw', 1, '21/09/2021 5:46 am', 2),
(463, 'Chathura0160', '24VojC6Ho3Q', 2, '21/09/2021 5:47 am', 0),
(465, 'dsga gnhbf', 'D3zAQ-_X-GQ', 1, '21/09/2021 5:51 am', 2),
(466, 'ade yako', 'emA48misqLo', 1, '21/09/2021 5:56 am', 1),
(468, 'ade yako', 'nPNKtt_yPIg', 1, '21/09/2021 6:05 am', 2),
(469, 'ade yako', 'w05bzuVfL1I', 1, '21/09/2021 6:06 am', 2),
(470, 'Anuhas', 'q24qnWFlsXc', 1, '21/09/2021 6:09 am', 2),
(619, 'Mal123', 'F_CIjBemV8I', 2, '23/09/2021 11:42 am', 1),
(527, 'Agent flox', 'SzVe5qgsxTQ', 1, '22/09/2021 1:25 am', 2),
(528, 'Tharindu', 'EQNDiuX902M', 2, '22/09/2021 1:36 am', 1),
(475, 'Machandope119', 'B1x25tSkbHo', 1, '21/09/2021 6:22 am', 1),
(476, 'Machandope119', 'Ik66wPw0cGI', 2, '21/09/2021 6:23 am', 0),
(477, 'Machandope119', 'NG3i58AByAw', 2, '21/09/2021 6:24 am', 1),
(478, 'Machandope119', '9N0M3T7D8Po', 2, '21/09/2021 6:25 am', 0),
(479, 'Machandope119', 'ZaEvOGcSaSU', 1, '21/09/2021 6:26 am', 0),
(480, 'Machandope119', '7SygLp72LQc', 2, '21/09/2021 6:26 am', 0),
(481, 'glt077', 'BoeB3MuYDQw', 2, '21/09/2021 6:37 am', 1),
(482, 'glt077', '5k08Zc0PLao', 2, '21/09/2021 6:40 am', 0),
(484, 'Beyond the Eye', 'fWd4rkWL_FA', 1, '21/09/2021 9:03 am', 2),
(485, 'supul 12', 'KtBRRXlUYLE', 2, '21/09/2021 9:03 am', 1),
(497, 'Samash', '6NwnhvnlA9U', 1, '21/09/2021 12:25 pm', 1),
(487, '123lakshan', 'JKZ9lAdX2QU', 2, '21/09/2021 9:22 am', 0),
(488, 'Sandun650', 'LBT6k0f4Jpg', 2, '21/09/2021 9:30 am', 1),
(489, 'Sandun650', 'usFu9zXxhQ0', 2, '21/09/2021 9:30 am', 0),
(490, 'Sandun650', 'y_28zKD8q4w', 2, '21/09/2021 9:31 am', 1),
(491, 'Sandun650', '8XITLcJXG-U', 2, '21/09/2021 9:32 am', 1),
(492, 'chenithadez', 'zDo13Ne1HyE', 2, '21/09/2021 10:33 am', 1),
(493, 'chenithadez', 'MOqAOhE3kRQ', 1, '21/09/2021 10:42 am', 1),
(494, 'Sudath Jayatissa', '5ErKbRhrjfc', 2, '21/09/2021 10:55 am', 0),
(620, 'Mal123', 'jTGCS8wOgiQ', 1, '23/09/2021 11:42 am', 1),
(495, 'Tetra aquarium', 'Sp4JBdsgFLM', 2, '21/09/2021 12:16 pm', 0),
(496, 'Tetra aquarium', 'NN6hsSZEyIY', 2, '21/09/2021 12:23 pm', 1),
(498, 'Jinal', '8H04vsCPP2k', 2, '21/09/2021 1:00 pm', 1),
(499, 'Shanthani', 'DZfRli1d63Q', 2, '21/09/2021 1:01 pm', 0),
(500, 'Sachithra119', '2oyCrU3GTvw', 2, '21/09/2021 1:19 pm', 0),
(501, 'Sachithra119', 'a-9PQEOjffU', 2, '21/09/2021 1:28 pm', 1),
(502, 'Sachithra119', '69cnkNVlHng', 2, '21/09/2021 1:40 pm', 1),
(503, 'Sachithra119', '_F_YHaXlUw8', 2, '21/09/2021 1:40 pm', 0),
(505, 'Sachithra119', '3MwITwECQlI', 1, '21/09/2021 1:43 pm', 1),
(507, 'Candy', '1SGEnXfLYF4', 2, '21/09/2021 4:07 pm', 0),
(508, 'Candy', '5Y_zgQqOjCM', 1, '21/09/2021 4:08 pm', 1),
(509, 'Jmsp jayasinghe', 'sYlOX5JSxXc', 2, '21/09/2021 4:39 pm', 1),
(510, 'Agent flox', 'RdzidSazh5A', 1, '21/09/2021 4:52 pm', 1),
(511, 'Agent flox', 'fKvrjm0VsYE', 2, '21/09/2021 4:55 pm', 0),
(517, 'Thilini', 'l-g41MhaACI', 2, '21/09/2021 6:40 pm', 0),
(513, 'tirosh1', '6eIRlvu65fo', 2, '21/09/2021 5:21 pm', 1),
(514, 'tirosh1', 'g_VxzDMt17k', 1, '21/09/2021 5:22 pm', 1),
(515, 'tirosh1', 'vmfwzvb1yVQ', 2, '21/09/2021 5:23 pm', 1),
(516, 'tirosh1', 'gPW29ZTU7oQ', 2, '21/09/2021 5:23 pm', 1),
(518, 'Thilini', 'IAlaH_BFpFo', 2, '21/09/2021 6:41 pm', 0),
(519, 'Thilini', 'ZCLRTMVAjOU', 2, '21/09/2021 6:42 pm', 0),
(520, 'Thilini', 'n0YNvIgfHSA', 2, '21/09/2021 6:44 pm', 0),
(521, 'Thilini', 'mvdQ14Iu7CA', 2, '21/09/2021 6:45 pm', 1),
(522, 'SLsameera', 'allq0pWkYos', 2, '21/09/2021 7:17 pm', 1),
(523, 'SLsameera', 'c1i_Pf_JW1I', 1, '21/09/2021 7:19 pm', 2),
(524, 'Dil', 'YqOFhnC5vmw', 2, '21/09/2021 9:24 pm', 1),
(525, 'janaka', 'rq_DDdjr-Ug', 1, '22/09/2021 12:07 am', 2),
(526, 'Creed', 'kRvjuJkB-V8', 2, '22/09/2021 12:47 am', 1),
(529, 'Lochana', 'YkBKjHwTEtQ', 2, '22/09/2021 3:07 am', 0),
(530, 'Dkawshi', 'qmjtjCQAvXA', 2, '22/09/2021 3:17 am', 1),
(688, 'samithaeranda', 'x2BWlYO8_W4', 2, '16/10/2021 1:55 am', 0),
(532, 'samithaeranda', 'aCQj7aZqB6U', 1, '22/09/2021 4:10 am', 1),
(533, 'samithaeranda', 'WbjrobI5YQ8', 1, '22/09/2021 4:12 am', 1),
(534, 'udayaelectric', 'Gu2pFICril4', 1, '22/09/2021 4:17 am', 1),
(535, 'Geefm', 'QPDMa7JxOw8', 1, '22/09/2021 5:04 am', 1),
(536, 'InduwaraN', 'JGF-gdruCSE', 1, '22/09/2021 5:49 am', 1),
(537, 'InduwaraN', 'l8NtB_NgOo4', 1, '22/09/2021 5:52 am', 1),
(538, 'InduwaraN', '8vOQ0a3Dnn8', 2, '22/09/2021 5:53 am', 0),
(539, 'InduwaraN', 'LLpRwmvXRoA', 1, '22/09/2021 6:21 am', 1),
(540, 'InduwaraN', 'oThOV7OeoQA', 1, '22/09/2021 6:24 am', 0),
(541, 'Sl power knowledge', 'DKt7tC6JhcM', 2, '22/09/2021 7:14 am', 0),
(542, 'janaka', 's7Jp53sLzuU', 1, '22/09/2021 7:20 am', 1),
(543, 'chenithadez', 'm8QP4M3p8lk', 2, '22/09/2021 7:48 am', 1),
(544, 'Chathuranga', 'idtOMurlsDM', 2, '22/09/2021 9:08 am', 0),
(545, '@thanugeek', 'CxIwMyw8uMo', 1, '22/09/2021 9:39 am', 1),
(546, '@thanugeek', 'c_AfssKtHa4', 2, '22/09/2021 9:39 am', 0),
(547, 'udayaelectric', 'MfNXqK507DY', 2, '22/09/2021 10:38 am', 1),
(548, 'asangaranawaka', 'zy6vlt5LqNw', 2, '22/09/2021 11:03 am', 1),
(549, 'chenithadez', '_EWKnmj1SW0', 1, '22/09/2021 11:22 am', 1),
(550, 'chenithadez', 'L4m1yD4RyQM', 1, '22/09/2021 11:22 am', 1),
(551, 'chenithadez', 'yqUIB_Vb5j8', 1, '22/09/2021 11:22 am', 1),
(552, 'chenithadez', 'qp5tdY6qSuo', 1, '22/09/2021 11:24 am', 1),
(554, 'chenithadez', 'LmVO8XABaAo', 2, '22/09/2021 11:24 am', 1),
(555, 'Dinethma', 'UCY4x_9zVEc', 2, '22/09/2021 12:31 pm', 0),
(556, 'Nimal', '7BDIX5y1Ka8', 1, '22/09/2021 12:31 pm', 1),
(557, 'Nimal', 'tX3Zar_pU2k', 1, '22/09/2021 12:33 pm', 0),
(746, 'AnonyShy', 'ohtEj6qEgjg', 2, '21/03/2022 12:34 pm', 0),
(560, 'amdrangana', 'OdrZBjVCdRA', 1, '22/09/2021 2:58 pm', 1),
(561, 'amdrangana', '-EyJnagxu4g', 2, '22/09/2021 2:59 pm', 1),
(562, 'amdrangana', 'puprMPJ22VI', 1, '22/09/2021 3:07 pm', 1),
(563, 'ranahusnain789', 'lKnX6IHz1L4', 2, '22/09/2021 3:07 pm', 0),
(564, 'amdrangana', 'mEMKXzA2-Es', 1, '22/09/2021 3:08 pm', 1),
(565, 'amdrangana', 'P0ZKSizGpEM', 1, '22/09/2021 3:08 pm', 1),
(566, 'amdrangana', 'kUChpE6-Exo', 1, '22/09/2021 3:09 pm', 1),
(568, 'amdrangana', '14oOFJNKzQ8', 2, '22/09/2021 3:10 pm', 0),
(569, 'amdrangana', 'RmTxtvDa8b0', 2, '22/09/2021 3:10 pm', 0),
(570, 'amdrangana', '0EaRck1oui4', 2, '22/09/2021 3:11 pm', 0),
(571, 'amdrangana', 'JWGY7vkyq3I', 2, '22/09/2021 3:12 pm', 0),
(572, 'chamiya', 'Yn6Wh4rzQJE', 2, '22/09/2021 4:23 pm', 0),
(573, 'poststous', '5JMMUYuVpK8', 2, '22/09/2021 7:55 pm', 0),
(574, 'poststous', 'izM3OcpCfQ0', 2, '22/09/2021 8:07 pm', 0),
(578, 'nhboy@gmail.com', 'mTRs-xLLYJY', 2, '22/09/2021 8:58 pm', 0),
(576, 'nhboy@gmail.com', 'xzxmnzpgqiw', 1, '22/09/2021 8:56 pm', 1),
(577, 'Tharmi', 'DkDWEdse7iY', 2, '22/09/2021 8:57 pm', 0),
(579, 'nhboy@gmail.com', '74VsXm4eEjg', 1, '22/09/2021 9:04 pm', 1),
(580, 'nhboy@gmail.com', 'gIKMT0CvqFg', 1, '22/09/2021 9:04 pm', 1),
(581, 'nhboy@gmail.com', 'rJG169VNcSM', 1, '22/09/2021 9:05 pm', 0),
(582, 'nhboy@gmail.com', 'vSEMX3lzfkM', 2, '22/09/2021 9:05 pm', 0),
(583, 'MARVEL DC STUDIOS', 'JU7NxpMcUfs', 1, '22/09/2021 9:12 pm', 1),
(584, 'Lakmalsampath', 'qYoAIKQcu58', 2, '22/09/2021 10:29 pm', 0),
(585, 'Sandani@12', 'xLB9WCWjsyA', 2, '22/09/2021 10:58 pm', 0),
(586, 'sandaru', '3i6ckbp2_gw', 1, '22/09/2021 11:09 pm', 1),
(587, 'sandaru', '9nRG2Rd3sJs', 1, '22/09/2021 11:10 pm', 0),
(588, 'sandaru', 'MXws-st_3VQ', 2, '22/09/2021 11:12 pm', 0),
(589, 'Upahara', 'CU2MB-MPEXY', 2, '23/09/2021 12:53 am', 0),
(590, 'Upahara', 'TlSB80tbCmY', 1, '23/09/2021 12:57 am', 1),
(591, 'Beyond the Eye', 'WUpPUwBxcjw', 1, '23/09/2021 1:24 am', 1),
(592, 'manj1234', 'RZ-XnM4HjCs', 1, '23/09/2021 1:48 am', 1),
(593, 'Agent flox', 'yeYpFnrjB28', 1, '23/09/2021 1:52 am', 1),
(594, 'Agent flox', '0xfgTNuWO6A', 1, '23/09/2021 1:53 am', 1),
(595, 'Agent flox', 'bDAdFqrwQPY', 1, '23/09/2021 1:54 am', 1),
(596, 'UN-SHAPE', 'CUt4p7Dfwi8', 2, '23/09/2021 4:35 am', 0),
(597, 'Prasanna', 'rfIs6om44F4', 1, '23/09/2021 4:35 am', 1),
(598, 'Prasanna', 'OzvLt1nMo8Y', 1, '23/09/2021 4:36 am', 1),
(599, 'Prasanna', 'N-Q2dAFQAoI', 1, '23/09/2021 4:36 am', 1),
(600, 'Prasanna', 'jGWVDf7ZJ8Q', 1, '23/09/2021 4:36 am', 1),
(603, 'Prasanna', '1pWmh0xlJjk', 1, '23/09/2021 4:38 am', 1),
(605, 'Prasanna', '6s6_rsSOX3A', 2, '23/09/2021 4:38 am', 0),
(606, 'Prasanna', 'vcFyN3lTHN8', 2, '23/09/2021 4:38 am', 0),
(607, 'Prasanna', 'N7FQUDbdz50', 2, '23/09/2021 4:39 am', 0),
(608, 'Prasanna', 'YupwL00mf_I', 2, '23/09/2021 4:39 am', 0),
(609, 'Prasanna', 'WvSGhr9tvQw', 2, '23/09/2021 4:39 am', 0),
(610, 'Rajika', 'Um6IHp7WW60', 2, '23/09/2021 5:11 am', 0),
(611, 'Rajika', 'tEczuSPyp9k', 2, '23/09/2021 5:12 am', 0),
(612, 'Rajika', 'MvZI1dJFmYg', 2, '23/09/2021 5:13 am', 0),
(613, 'Rajika', 'HHOo9yL6Epk', 2, '23/09/2021 5:14 am', 0),
(614, 'Rajika', '0YfiWz1feUA', 2, '23/09/2021 5:14 am', 0),
(615, 'UN-SHAPE', '4jDk_1zN-KM', 1, '23/09/2021 5:21 am', 1),
(616, 'Dula', 'sp8yqUK087w', 1, '23/09/2021 7:15 am', 1),
(617, 'UN-SHAPE', 'NwvUctbJ73E', 1, '23/09/2021 7:16 am', 1),
(618, 'Dula', 'tC3TvOOA3MU', 1, '23/09/2021 7:22 am', 1),
(626, 'kithlankay@gmail.com', 'VHcXC27uCJ0', 2, '23/09/2021 11:56 am', 0),
(627, 'Chandu99', '842Nr7uY2mo', 2, '23/09/2021 6:06 pm', 0),
(628, 'Chandu99', 'ZmRf90_8bPI', 2, '23/09/2021 6:08 pm', 0),
(629, 'Chandu99', '9tDTmpg-b_Q', 1, '23/09/2021 6:13 pm', 1),
(630, 'Chandu99', 'vDWPwkhy2oI', 1, '23/09/2021 6:14 pm', 1),
(631, 'Chandu99', 'E-yjMm2TGpA', 2, '23/09/2021 6:19 pm', 0),
(632, 'Miyuru57', 'ZCYx2HRNrYs', 2, '23/09/2021 11:44 pm', 0),
(634, 'Slkmax', 'SsZJBSlVVrk', 1, '23/09/2021 11:49 pm', 1),
(635, 'arteventsint', 'P2J860fIn-c', 2, '24/09/2021 10:00 am', 0),
(641, 'Riyaz', '1MFIqic3b6o', 1, '25/09/2021 12:12 am', 1),
(738, 'AnonyShy', 'ua71f3AER8k', 1, '13/02/2022 12:09 pm', 1),
(653, 'Mel2021', 'XRMAfcUnlt0', 2, '26/09/2021 4:21 am', 0),
(654, 'Mel2021', 'Wid8c54WHls', 2, '26/09/2021 4:22 am', 0),
(655, 'naveeweenu', '4HUIY84MEtM', 2, '26/09/2021 6:33 am', 0),
(656, 'naveeweenu', 'vfNEhqduQM4', 2, '26/09/2021 6:34 am', 0),
(657, 'naveeweenu', 'bVuh-K1xl8Q', 2, '26/09/2021 6:38 am', 0),
(658, 'naveeweenu', 'TOZq6TTSbsk', 2, '26/09/2021 6:38 am', 0),
(659, 'Kumara', 'kD1UZIg2RCE', 2, '26/09/2021 9:48 pm', 0),
(660, 'UN-SHAPE', 'sMxZyb8EN0I', 1, '27/09/2021 12:59 am', 0),
(662, 'naif1993', '5zeuqVBVNIY', 2, '28/09/2021 5:19 am', 0),
(663, 'Eranga123', '_FQ99AWsj4s', 1, '2/10/2021 4:37 am', 1),
(664, 'TravelEurope4K', 'Eq1yzLIH37c', 1, '3/10/2021 12:36 pm', 1),
(671, 'Kavi', 'oA-jkgLJCHQ', 2, '13/10/2021 2:03 am', 1),
(745, 'tuanrahim', 'TKXchSbxU8k', 1, '16/03/2022 12:55 am', 0),
(721, 'helascript22', '2kEIfAurC3A', 1, '16/01/2022 12:03 pm', 0),
(722, 'helascript22', 'isnCi9Zjpr4', 1, '16/01/2022 12:04 pm', 1),
(728, 'helascript22', 'PJ1gim8RqTo', 1, '18/01/2022 2:10 am', 0),
(724, 'werer', 'hEPmyKwYwNo', 1, '16/01/2022 12:39 pm', 0),
(725, 'werer', '3EHGK5RDH1U', 1, '16/01/2022 12:41 pm', 1),
(720, 'a', 'hP6YEgio604', 3, '16/01/2022 10:53 am', 2),
(735, 'kani', '3wgZ8_p7Oco', 1, '18/01/2022 5:26 am', 1),
(734, 'maleesha675', '3RQ6opJtIpQ', 1, '18/01/2022 2:50 am', 1),
(730, 'helascript22', 'bfyoNyFSygg', 1, '18/01/2022 2:17 am', 0),
(733, 'helascript22', 'CaTwmVx75xI', 1, '18/01/2022 2:47 am', 1);

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE `view` (
  `ID` int(15) NOT NULL,
  `user` varchar(15) NOT NULL,
  `video` varchar(15) NOT NULL,
  `dtime` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `ID` int(8) NOT NULL,
  `web` varchar(500) NOT NULL,
  `user` varchar(40) NOT NULL,
  `dtime` int(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `web`
--

CREATE TABLE `web` (
  `ID` int(8) NOT NULL,
  `web` varchar(500) NOT NULL,
  `dtime` varchar(40) NOT NULL,
  `views` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web`
--

INSERT INTO `web` (`ID`, `web`, `dtime`, `views`) VALUES
(10, 'https://nacktube.com/', '18/09/2021 6:46 am', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `foget`
--
ALTER TABLE `foget`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `point`
--
ALTER TABLE `point`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `foget`
--
ALTER TABLE `foget`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=583;

--
-- AUTO_INCREMENT for table `point`
--
ALTER TABLE `point`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=747;

--
-- AUTO_INCREMENT for table `view`
--
ALTER TABLE `view`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=671;

--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `web`
--
ALTER TABLE `web`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
