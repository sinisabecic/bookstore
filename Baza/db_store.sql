-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2019 at 06:58 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(1, 'Elmaz Feratovic', 'admin', 'admin@admin.com', '12345', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Veseli cetvrtak'),
(2, 'Nova knjiga'),
(3, 'Laguna'),
(4, 'Vulkan'),
(5, 'Carobna knjiga'),
(6, 'Darkwood'),
(7, 'Bigz'),
(8, 'Beopoliss');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(28, 'hb1dkvk8ptdfhleq375m01e891', 1, ' Ariyan Lorem Ipsum fsdfasdaf', 525.00, 1, 'upload/a2d9ff0c56.png'),
(42, 'ki70g8rmb4mfqs7cmei2l3qpi3', 10, 'Woman Tshirt 03', 300.00, 1, 'upload/a2fccb0144.png'),
(43, 'e6r6avk209clao063d5p18i597', 7, 'Mans Tshirt 02', 400.00, 1, 'upload/4b2b2f0556.png'),
(47, 'ncan4pfmi5206kbsa33ben8dfq', 1, 'Vreme Cuda', 300.00, 1, 'upload/24bdf0aefc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(4, 'Branka Prpa'),
(6, 'Ernesto Sabato'),
(7, 'Erih From'),
(9, 'Alber Kami'),
(10, 'Borislav PekiÄ‡'),
(11, 'Å½an Pol Sartr');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_copy`
--

CREATE TABLE `tbl_copy` (
  `id` int(11) NOT NULL,
  `copyright` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_copy`
--

INSERT INTO `tbl_copy` (`id`, `copyright`) VALUES
(1, 'Elmaz Feratovic - Internet Tehnologije');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(2, 'siki', 'Groan Puran Polton south Dhaka ', 'ctg', 'USA', '1100', '069891329', 'siki@gmail.com', '12345'),
(3, 'Elmaz Feratovic', 'Bijelo Polje bb', 'Bijelo Polje', 'Montenegro', '10222', '123456', 'elmaz@elmaz.com', '12345'),
(4, 'Sinisa Becic', 'Podgorica', 'Podgorica', 'Montenegro', '81000', '55555555', 'siki.pfk@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

CREATE TABLE `tbl_image` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_message`
--

INSERT INTO `tbl_message` (`id`, `message`, `name`, `email`, `phone`, `date`) VALUES
(2, 'Davno je ustanovljena Äinjenica da Ä‡e Äitaoc biti omamljen Äitljivim sadrÅ¾ajem stranice kada gleda njegov izgled. Smisao upotrebe Lorema Ipsuma je da ima viÅ¡e ili manje normalne distribucije slova. Postoje mnoge varijacije odlomaka Lorem Ipsum-a, ali veÄ‡ina ih je pretrpjela promjenu u nekoj formi, ubrizganim humorom ili nasumiÄnim rijeÄima ne izgledaju Äak ni malo uvjerljivi. Ako Ä‡ete koristiti odlomak Lorem Ipsum, morate biti sigurni da se niÅ¡ta neugodno ne naÄ‘e u sredini teksta.', 'Sinisa Becic', 'siki.pfk@gmail.com', '123456', '2019-07-15 16:30:11'),
(3, 'Davno je ustanovljena Äinjenica da Ä‡e Äitaoc biti omamljen Äitljivim sadrÅ¾ajem stranice kada gleda njegov izgled. Smisao upotrebe Lorema Ipsuma je da ima viÅ¡e ili manje normalne distribucije slova. Postoje mnoge varijacije odlomaka Lorem Ipsum-a, ali veÄ‡ina ih je pretrpjela promjenu u nekoj formi, ubrizganim humorom ili nasumiÄnim rijeÄima ne izgledaju Äak ni malo uvjerljivi. Ako Ä‡ete koristiti odlomak Lorem Ipsum, morate biti sigurni da se niÅ¡ta neugodno ne naÄ‘e u sredini teksta.Davno je ustanovljena Äinjenica da Ä‡e Äitaoc biti omamljen Äitljivim sadrÅ¾ajem stranice kada gleda njegov izgled. Smisao upotrebe Lorema Ipsuma je da ima viÅ¡e ili manje normalne distribucije slova. Postoje mnoge varijacije odlomaka Lorem Ipsum-a, ali veÄ‡ina ih je pretrpjela promjenu u nekoj formi, ubrizganim humorom ili nasumiÄnim rijeÄima ne izgledaju Äak ni malo uvjerljivi. Ako Ä‡ete koristiti odlomak Lorem Ipsum, morate biti sigurni da se niÅ¡ta neugodno ne naÄ‘e u sredini teksta.Davno je ustanovljena Äinjenica da Ä‡e Äitaoc biti omamljen Äitljivim sadrÅ¾ajem stranice kada gleda njegov izgled. Smisao upotrebe Lorema Ipsuma je da ima viÅ¡e ili manje normalne distribucije slova. Postoje mnoge varijacije odlomaka Lorem Ipsum-a, ali veÄ‡ina ih je pretrpjela promjenu u nekoj formi, ubrizganim humorom ili nasumiÄnim rijeÄima ne izgledaju Äak ni malo uvjerljivi. Ako Ä‡ete koristiti odlomak Lorem Ipsum, morate biti sigurni da se niÅ¡ta neugodno ne naÄ‘e u sredini teksta.Davno je ustanovljena Äinjenica da Ä‡e Äitaoc biti omamljen Äitljivim sadrÅ¾ajem stranice kada gleda njegov izgled. Smisao upotrebe Lorema Ipsuma je da ima viÅ¡e ili manje normalne distribucije slova. Postoje mnoge varijacije odlomaka Lorem Ipsum-a, ali veÄ‡ina ih je pretrpjela promjenu u nekoj formi, ubrizganim humorom ili nasumiÄnim rijeÄima ne izgledaju Äak ni malo uvjerljivi. Ako Ä‡ete koristiti odlomak Lorem Ipsum, morate biti sigurni da se niÅ¡ta neugodno ne naÄ‘e u sredini teksta.', 'Sinisa Becic', 'siki.pfk@gmail.com', '55555555', '2019-07-15 16:34:18'),
(4, 'da ima viÅ¡e ili manje normalne distribucije slova. Postoje mnoge varijacije odlomaka Lorem Ipsum-a, ali veÄ‡ina ih je pretrpjela promjenu u nekoj formi, ubrizganim humorom ili nasumiÄnim rijeÄima ne izgledaju Äak ni malo uvjerljivi. Ako Ä‡ete koristiti odlomak Lorem Ipsum, morate biti sigurni da se niÅ¡ta neugodno ne naÄ‘e u sredini teksta.da ima viÅ¡e ili manje normalne distribucije slova. Postoje mnoge varijacije odlomaka Lorem Ipsum-a, ali veÄ‡ina ih je pretrpjela promjenu u nekoj formi, ubrizganim humorom ili nasumiÄnim rijeÄima ne izgledaju Äak ni malo uvjerljivi. Ako Ä‡ete koristiti odlomak Lorem Ipsum, morate biti sigurni da se niÅ¡ta neugodno ne naÄ‘e u sredini teksta.da ima viÅ¡e ili manje normalne distribucije slova. Postoje mnoge varijacije odlomaka Lorem Ipsum-a, ali veÄ‡ina ih je pretrpjela promjenu u nekoj formi, ubrizganim humorom ili nasumiÄnim rijeÄima ne izgledaju Äak ni malo uvjerljivi. Ako Ä‡ete koristiti odlomak Lorem Ipsum, morate biti sigurni da se niÅ¡ta neugodno ne naÄ‘e u sredini teksta.', 'Sinisa Becic', 'siki.pfk@gmail.com', '55555555', '2019-07-15 16:34:54'),
(6, 'ssssssss', 'Sinisa Becic', 'siki.pfk@gmail.com', '777', '2019-07-15 16:42:31'),
(7, 'aaaaa', 'Sinisa Becic', 'siki.pfk@gmail.com', '', '2019-07-15 16:43:25'),
(8, '', 'Sinisa', 'beksona@gmail.com', '', '2019-07-15 16:45:06'),
(9, '', 'Sinisa Becic', 'siki.pfk@gmail.com', '', '2019-07-15 16:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `status`, `date`) VALUES
(1, 3, 2, 'Vreme Cuda', 1, 12.00, 'upload/f42e913b1f.jpg', 0, '2019-07-15 15:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(1, 'O junacima i grobovima', 6, 1, 'Ovaj roman je nastao 1961. godine i autoru je doneo svetsku slavu. Sastoji se od Äetiri dela. U prva dva, Zmaj i princeza i Nevidljiva lica, opisuje se Äudna ljubavna veza izmeÄ‘u Martina, osetljivog mladiÄ‡a koji ima naruÅ¡ene odnose sa roditeljima, i Alejandre, zagonetne devojke Äudnog ponaÅ¡anja, poreklom iz stare, nekada ugledne argentinske porodice. TreÄ‡i deo, IzveÅ¡taj o slepima, opisuje morbidno istraÅ¾ivanje Fernanda Vidala Olmosa, okrutnog paranoika opsednutog slepcima i zlom. Poslednji deo, Nepoznati bog, bavi se Martinom i Brunom nakon tragedije najavljene na poÄetku, njihovim savladavanjem Å¾ivotnih teÅ¡koÄ‡a. U ovakvu, vremenski ispresecanu, radnju upliÄ‡u se epizode iz argentinske istorije i razvijaju autorove politiÄke, moralne, metafiziÄke, religijske, estetske ideje i stavovi.', 13.00, 'upload/24bdf0aefc.jpg', 0),
(2, 'Vreme Cuda', 10, 3, 'Å½ivimo u vremenu Äuda u kome su Äuda okrenuta protiv Äoveka.\r\n\r\nâ€žOd Äuda se ne zahteva da pomaÅ¾u veÄ‡ da menjaju, a od ovih najveÄ‡ih ne da izopaÄuju sadaÅ¡njost veÄ‡ da razgraÄ‘ujuÄ‡i je, grade buduÄ‡nost.â€œ Borislav PekiÄ‡\r\n\r\nOkvir ovog PekiÄ‡evog maestralnog romana, sastavljenog iz priÄa, jesu biblijski motivi Isusovih Äuda u Judeji. Sa poetiÄnom dijalektikom ona su izokrenuta u svoju suprotnost sa puno humora ali i duboke empatije za ljudsku patnju, ljubav i sudbinu. Leprozna Å¾ena je isceljena ali nije prihvaÄ‡ena viÅ¡e nigde, slepi Äovek progleda ali vidi svet i zgaÄ‘en sam sebi kopa oÄi, mutavac kada progovori o onome Å¡to je uvek mislio biva razapet na krst. SloÅ¾eno i slojevito delo na slikovit naÄin ukazuje na iskljuÄivost ideologija, dogmi i doktrina, gde iz najveÄ‡eg nametnutog dobra proistiÄu najveÄ‡e nevolje. Na magiÄan naÄin uvedeni smo u svet daleke proÅ¡losti gde ideoloÅ¡ka zagriÅ¾enost i netrpeljivost bilo koje dve suprostavljene snage pokazuje iste osobine kao i u bilo koje doba ljudske istorije. IdeoloÅ¡ka polarizacija zraÄi svojom porukom sve do danaÅ¡njih dana.', 12.00, 'upload/f42e913b1f.jpg', 0),
(3, 'Autoritet i porodica', 7, 7, 'Knjiga â€žAutoritet i porodica â€œ, Eriha Froma, nastaje kao delo zasnovano na nauÄnim Äinjenicama iznetim u poznatoj studiji o autoritetu i porodici koja je izdata u Parizu 1936. godine. IzdavaÄ studije je Institut za socioloÅ¡koâ€“psiholoÅ¡ka istraÅ¾ivanja. (Studien Ã¼ber AutoritÃ¤t und Familie, Instituts fÃ¼r Sozialforschung, Paris, 1936). Studija je napisana od strane viÅ¡e autora, meÄ‘u kojima je i Erih From autor knjige za prikaz â€“ â€œAutoritet i porodicaâ€œ.', 12.00, 'upload/8ba11dfe0c.jpg', 1),
(4, 'Mit o Sizifu', 9, 2, 'Mit o Sizifu je knjiga filozofskih eseja francuskog egzistencijalistiÄkog filozofa Albera Kamija. Delo je prvi put objavljeno 1942. godine.\r\n \r\n\r\nApsurdno prosuÄ‘ivanje - Kami poglavlje poÄinje objaÅ¡njavanjem Å¡ta on smatra glavnim pitanjem filozofije: zahteva li nuÅ¾no samoubistvo realizacija besmislenosti i apsurda Å¾ivota. U nastavku objaÅ¡njava stanje apsurda â€“ velik deo Å¾ivota gradimo na nadi za sutraÅ¡nji dan, a sutraÅ¡nji dan nas vodi korak bliÅ¾e smrti; ljudi Å¾ive nesmetano iako su svesni neizbeÅ¾nosti smrti. Kami tvrdi kako ljudi i svet nisu apsurdni sami po sebi, veÄ‡ apsurd nastaje kada ljudi pokuÅ¡aju razumeti nerazumljivosti sveta. IstiÄe filozofe koji su se bavili pojmom apsurda: Heidegger, Jaspers, Å estov, Kjerkegor i Huserl, no tvrdi da su izvrÅ¡ili i \"filozofsko samoubistvo\" zakljuÄcima koji su utemeljeni na stvarnom Bogu ili apstraktnom bogu. Tvrdi da bez smisla u Å¾ivotu nema niti lestvice vrednosti. Poglavlje zavrÅ¡ava 03:00 posledicama prihvatanja apsurda, a to su revolt, sloboda i strast.\r\n\r\n \r\nApsurdni Äovek - Poglavljem dominira pitanje kako Äovek apsurda treba Å¾iveti. Tvrdi da se etiÄka pravila ne mogu primeniti te da je sve dopuÅ¡teno, ali to ne dovodi do radosti, veÄ‡ do shvatanja neidealnog stanja Å¾ivota. Tada kreÄ‡e s primerima: Don Å½uan kao Äovek koji Å¾ivot pun strasti Å¾ivi Å¡to duÅ¾e moÅ¾e; glumac koji \"oslikava\" kratak Å¾ivot zbog kratkoroÄne slave; te osvajaÄ Äije Ä‡e ime sigurno uÄ‡i na par stranica ljudske istorije.\r\n\r\n \r\nApsurdno stvaranje - Kami istraÅ¾uje apsurd stvaraoca i umetnika. BuduÄ‡i da je objaÅ¡njenje nemoguÄ‡e, umetnost apsurda ograniÄena je u opisima. U nastavku analizira rad Dostojevskog i tvrdi kako njegova dela polaze sa stajaliÅ¡ta apsurda i istraÅ¾uju teme filozofskog samoubistva. No , poslednja dela Dostojevskog prikazuju put nade i vere te tako nisu u potpunosti kreacije o apsurdu.', 12.00, 'upload/88da8be593.jpg', 1),
(5, 'SRPSKI INTELEKTUALCI I JUGOSLAVIJA 1918-1929', 4, 4, 'Jugoslavija je 1918. bila novi toponim na starim geopolitiÄkim mapama Evrope i nedvosmisleni dokaz da je Prvi svetski rat iz korena promenio vekovna nasleÄ‘a evropskih naroda. U pobedniÄkom posleratnom ucrtavanju evropske geografije uÄestvovali su i predstavnici juÅ¾noslovenskih naroda, solidarno i dogovorno. Trebalo je, u istom maniru, da takav posao obave i kod kuÄ‡e. To se, meÄ‘utim, nije dogodilo. Prva decenija postojanja nove drÅ¾ave JuÅ¾nih Slovena suoÄila je srpske intelektualce sa mnogim izazovima zajedniÄkog Å¾ivota sa drugim narodima ali, isto tako, kohabitacije sa starim politiÄkim elitama Srbije sa kojima i pre ujedinjenja nisu mogli da naÄ‘u zajedniÄki jezik. PoÄetni konfuzni nagoveÅ¡taji da politiÄari nisu sposobni da u procesu konstituisanja nove drÅ¾ave obave svoju istorijsku misiju, postali su realnost.\r\n\r\nOva knjiga, zasnovana na brojnim arhivskim dokumentima i literaturi, obiluje podacima o miÅ¡ljenjima i stavovima srpskih intelektualaca o vremenu u kom su Å¾iveli i stvarali i o problemima drÅ¾ave Äiji su stanovnici bili. Nema iole poznatijeg akademika, profesora univerziteta, publiciste ili knjiÅ¾evnika Äija argumentacija nije ukljuÄena u ovu knjigu, od Jovana CvijiÄ‡a, Jovana Å½ujoviÄ‡a, Slobodana JovanoviÄ‡a, Ljubomira StojanoviÄ‡a, Milana Grola do Branislava NuÅ¡iÄ‡a, MiloÅ¡a Crnjanskog i Justina PopoviÄ‡a.\r\n\r\nUprkos harizmi, znanju i ugledu, srpski intelektualci su bili nemoÄ‡ni u odnosu sa politikom. Iza sebe nisu imali potrebnu partijsku i drÅ¾avnu strukturu i bez obzira na to koliko su njihova miÅ¡ljenja bila racionalna a predlozi korisni, oni nisu uvaÅ¾avani. U drÅ¾avi slabo razvijene politiÄke kulture, skoro opÅ¡te nerazvijenosti i nepismenosti i tek na pragu demokratskih procesa koje je usvojio savremeni svet, idealizam intelektualaca je bio poniÅ¡ten politiÄkim interesima. Srpski intelektualci bili su aktivni i angaÅ¾ovani uÄesnici istorije Äije sudbinsko razreÅ¡enje je bilo van njihove moÄ‡i.', 9.00, 'upload/604580254b.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'https://www.facebook.com/ariyan', 'https://twitter.com/ariyan', 'https://linkedin.com/ariyan', 'https://www.google.com/ariyan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wlist`
--

CREATE TABLE `tbl_wlist` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_copy`
--
ALTER TABLE `tbl_copy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_image`
--
ALTER TABLE `tbl_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `tbl_product_ibfk_1` (`catId`),
  ADD KEY `tbl_product_ibfk_2` (`brandId`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_copy`
--
ALTER TABLE `tbl_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_image`
--
ALTER TABLE `tbl_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `tbl_category` (`catId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `tbl_brand` (`brandId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
