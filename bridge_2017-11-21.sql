# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.19)
# Database: bridge
# Generation Time: 2017-11-21 17:43:18 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table bids
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bids`;

CREATE TABLE `bids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bidName` varchar(100) DEFAULT NULL,
  `bidClosureDate` datetime DEFAULT NULL,
  `supplyTimeFrame` text,
  `paymentMileStone` varchar(100) DEFAULT NULL,
  `paymentMethod` varchar(100) DEFAULT NULL,
  `bizId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `bids` WRITE;
/*!40000 ALTER TABLE `bids` DISABLE KEYS */;

INSERT INTO `bids` (`id`, `bidName`, `bidClosureDate`, `supplyTimeFrame`, `paymentMileStone`, `paymentMethod`, `bizId`)
VALUES
	(1,'build a car','2017-11-25 00:00:00','a month','weekly','cash',NULL);

/*!40000 ALTER TABLE `bids` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bidsrequisites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bidsrequisites`;

CREATE TABLE `bidsrequisites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requisite` varchar(100) DEFAULT NULL,
  `strRef` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `bidsrequisites` WRITE;
/*!40000 ALTER TABLE `bidsrequisites` DISABLE KEYS */;

INSERT INTO `bidsrequisites` (`id`, `requisite`, `strRef`)
VALUES
	(1,'Site Inspection is Required','siteinspection'),
	(2,'Site Audit is Required','siteaudit'),
	(3,'Professional Indemnity is Required','professionalindemnity'),
	(4,'Warranty is Required','warrantyrequired');

/*!40000 ALTER TABLE `bidsrequisites` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table businessdetails
# ------------------------------------------------------------

DROP TABLE IF EXISTS `businessdetails`;

CREATE TABLE `businessdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bridgrName` varchar(100) NOT NULL,
  `bizName` varchar(100) DEFAULT NULL,
  `companyWebiste` varchar(100) DEFAULT NULL,
  `legalStructure` varchar(100) DEFAULT NULL,
  `bizIncorpNumber` varchar(100) DEFAULT NULL,
  `companyLogo` varchar(100) DEFAULT NULL,
  `bizEmail` varchar(100) DEFAULT NULL,
  `bizFacebook` varchar(100) DEFAULT NULL,
  `countryOfBiz` varchar(100) DEFAULT NULL,
  `TaxNumber` varchar(100) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `bizAreas` text,
  `bizImage` varchar(255) DEFAULT NULL,
  `bizWebsite` varchar(255) DEFAULT NULL,
  `bizCountryReg` varchar(255) DEFAULT NULL,
  `bizCountryOperatn` varchar(255) DEFAULT NULL,
  `bizTwitter` varchar(255) DEFAULT NULL,
  `bizRegYear` varchar(100) DEFAULT NULL,
  `bizPhoneNumber` varchar(100) DEFAULT NULL,
  `bizAddress` text,
  `bizDescription` text NOT NULL,
  `bizType` varchar(100) DEFAULT NULL,
  `bizFirstYearExecution` varchar(20) DEFAULT NULL,
  `requestBusinessId` int(11) DEFAULT NULL,
  `bizServiceSector` varchar(20) DEFAULT NULL,
  `countryPhoneCode` varchar(10) DEFAULT NULL,
  `cacBizRegCert` varchar(200) DEFAULT NULL,
  `vatCert` varchar(200) DEFAULT NULL,
  `co2OtherBizDoc` varchar(200) DEFAULT NULL,
  `co7OtherBizDoc` varchar(200) DEFAULT NULL,
  `bizCeritifationns` varchar(200) DEFAULT NULL,
  `bizPermits` varchar(200) DEFAULT NULL,
  `bizCurrentIncomeDoc` varchar(200) DEFAULT NULL,
  `bizAuditedSoA` varchar(200) DEFAULT NULL,
  `bizQualityPolicy` varchar(200) DEFAULT NULL,
  `bizHSEPolicy` varchar(200) DEFAULT NULL,
  `bizESignature` varchar(200) DEFAULT NULL,
  `bizBoardResolution` varchar(200) DEFAULT NULL,
  `bizAgencyAgreement` varchar(200) DEFAULT NULL,
  `bizBankName` varchar(255) DEFAULT NULL,
  `bizBankCountry` varchar(255) DEFAULT NULL,
  `bizBankAddress` varchar(255) DEFAULT NULL,
  `bizBankSwiftCode` varchar(255) DEFAULT NULL,
  `bizBankBVNIdentity` varchar(255) DEFAULT NULL,
  `bizBVNIdentityAuth` varchar(255) DEFAULT NULL,
  `bizPaymentMode` varchar(255) DEFAULT NULL,
  `bizCapitalCurrency` varchar(255) DEFAULT NULL,
  `bizShareCapital` varchar(255) DEFAULT NULL,
  `bizHiighestProject` varchar(255) DEFAULT NULL,
  `bizBalanceSheet` varchar(255) DEFAULT NULL,
  `bizClientSize` double DEFAULT NULL,
  `bizEmployeeSize` double DEFAULT NULL,
  `bizYearFirstContract` int(11) DEFAULT NULL,
  `bizNonDisclosure` varchar(255) DEFAULT NULL,
  `bizEthicalDeclaration` varchar(255) DEFAULT NULL,
  `antiMoneyLaundering` varchar(255) DEFAULT NULL,
  `bizNature` varchar(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `createdTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bridgrName` (`bridgrName`) USING BTREE,
  UNIQUE KEY `uniqueCompany` (`bizName`,`bizIncorpNumber`) USING BTREE,
  UNIQUE KEY `bizIncorpNumber` (`bizIncorpNumber`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `businessdetails` WRITE;
/*!40000 ALTER TABLE `businessdetails` DISABLE KEYS */;

INSERT INTO `businessdetails` (`id`, `bridgrName`, `bizName`, `companyWebiste`, `legalStructure`, `bizIncorpNumber`, `companyLogo`, `bizEmail`, `bizFacebook`, `countryOfBiz`, `TaxNumber`, `userId`, `bizAreas`, `bizImage`, `bizWebsite`, `bizCountryReg`, `bizCountryOperatn`, `bizTwitter`, `bizRegYear`, `bizPhoneNumber`, `bizAddress`, `bizDescription`, `bizType`, `bizFirstYearExecution`, `requestBusinessId`, `bizServiceSector`, `countryPhoneCode`, `cacBizRegCert`, `vatCert`, `co2OtherBizDoc`, `co7OtherBizDoc`, `bizCeritifationns`, `bizPermits`, `bizCurrentIncomeDoc`, `bizAuditedSoA`, `bizQualityPolicy`, `bizHSEPolicy`, `bizESignature`, `bizBoardResolution`, `bizAgencyAgreement`, `bizBankName`, `bizBankCountry`, `bizBankAddress`, `bizBankSwiftCode`, `bizBankBVNIdentity`, `bizBVNIdentityAuth`, `bizPaymentMode`, `bizCapitalCurrency`, `bizShareCapital`, `bizHiighestProject`, `bizBalanceSheet`, `bizClientSize`, `bizEmployeeSize`, `bizYearFirstContract`, `bizNonDisclosure`, `bizEthicalDeclaration`, `antiMoneyLaundering`, `bizNature`, `active`, `createdTime`)
VALUES
	(10,'badmusajadi1506951564','Badmus Ajadi',NULL,'Unlimited','1981',NULL,'femijohn377@yahoo.com','http://localhost/bridgr_web/businesses',NULL,'2345678902',2,'Financial Services, IT & Technology, Logistics & Freight, Outsourced (Managed) Services, Plumbing , Travel Services',NULL,'www.synnodswebsite.com','Nigeria','Afghanistan','http://localhost/bridgr_web/businesses','2000','adeniyi','19 olawoyin street, anfani,challenge','Sheik Uthaymeen rahimahuLlah said, Whoever does not spend his time for the sake of Allah, what is better for him is DEATH!','Government','2001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'organization',0,NULL),
	(11,'syntaxinnovation1506952140','Syntax Innovations & Digitals','http://localhost/bridgr_web/businesses','unlimited','2345678902',NULL,'femijohn377@yahoo.com','http://localhost/bridgr_web/businesses','Nigeria','2345678902',67,'Construction & Engineering, Facilities maintenance, Financial Services, Professional Services',NULL,'adeniyi','Nigeria','Nigeria','http://localhost/bridgr_web/businessess','1709','adeniyi','19 olawoyin street, anfani,challenge','http://localhost/bridgr_web/businesses','government','2001',NULL,'Public','61',NULL,NULL,NULL,NULL,'bizCeritifationns.png',NULL,NULL,NULL,NULL,NULL,'bizESignature.jpg',NULL,NULL,'United Bank for Africa','Central African Republic','19 olawoyin street, anfani,challenge','SWIFT23993TP','1111000033111','11110000331110','Draft','CAD - Canada Dollar','230000000000000','2300000000000001','2300000000000000',24,100,2000,NULL,'bizEthicalDeclaration.jpg',NULL,'bizRegYear',0,NULL),
	(12,'hormetintegratedservices1507348304','Hormet Integrated Services',NULL,NULL,NULL,NULL,'bros@hormet.com',NULL,NULL,NULL,67,'Catering Services, Financial Services, Outsourced (Managed) Services',NULL,'www.hormetservices.com','France','Nigeria',NULL,NULL,'07037477381','Aderibigbe Shitta, Maryland','http://localhost/bridgr_web/businesses',NULL,NULL,NULL,NULL,'971',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'bizESignature.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NGN - Nigeria Naira',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'organization',0,NULL),
	(13,'joshconceps1507348392','Josh Concepts Limited',NULL,NULL,NULL,NULL,'femijohn377@yahoo.com',NULL,NULL,NULL,67,'Catering Services, Financial Services, Outsourced (Managed) Services, Parts & Machine Tools',NULL,'www.hormetservices.com','American Samoa','Nigeria',NULL,NULL,'07037477381','19 olawoyin street, anfani,challenge','requisite','government',NULL,NULL,'Public','1264',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'GHC - Ghana Cedis',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'organization',1,NULL),
	(14,'tsabointech1507348432','Tsaboin Tech World',NULL,NULL,NULL,NULL,'femijohn377@yahoo.con',NULL,NULL,NULL,67,'Construction & Engineering, IT & Technology, Security & Concierge Service, ',NULL,'www.hormetservices.com','Anguilla','Afghanistan',NULL,NULL,'07037477381','19 olawoyin street, anfani,challenge','',NULL,NULL,NULL,NULL,NULL,'cacBizRegCert.jpg','vatCert.pdf','co2OtherBizDoc.jpg','co7OtherBizDoc.jpg','bizCeritifationns.jpg','bizPermits.jpg','bizCurrentIncomeDoc.jpg','bizAuditedSoA.jpg','bizQualityPolicy.jpg','bizHSEPolicy.jpg','bizESignature.png','bizBoardResolution.jpg','bizAgencyAgreement.jpg',NULL,'American Samoa',NULL,NULL,NULL,NULL,'Draft','AFN',NULL,NULL,NULL,NULL,NULL,1715,'bizNonDisclosure.pdf','bizEthicalDeclaration.pdf','antiMoneyLaundering.jpg',NULL,0,NULL),
	(18,'badmus1507838535','Badmus Ajadi',NULL,NULL,NULL,NULL,'femijohn377@yahoo.com',NULL,NULL,NULL,67,'Catering Services, Construction & Engineering, ',NULL,NULL,'Ghana','Ghana',NULL,NULL,'07037477388','19 olawoyin street, anfani,challenge','addorganization',NULL,NULL,NULL,NULL,'994',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'organization',0,NULL),
	(19,'adeboyo1507842531','Adeboyo & Sons Limited',NULL,NULL,NULL,NULL,'femijohn377@yahoo.com',NULL,NULL,NULL,67,'Construction & Engineering, Electrical & HVAC, Equipment Rental, Facilities maintenance, Furnishing & Wood works, Logistics & Freight, Outsourced (Managed) Services, Printing & Branding, Professional Services, ',NULL,NULL,'Ghana','Ghana',NULL,NULL,'adeniyi','19 olawoyin street, anfani,challenge','Adeboyo & Sons Limited',NULL,NULL,NULL,NULL,'994',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'organization',0,NULL),
	(20,'zenith1507987021','Zenith Bank Plc',NULL,NULL,NULL,NULL,'femijohn377@yahoo.com',NULL,NULL,NULL,67,'Construction & Engineering, Facilities maintenance, Metals & Mining, Professional Services, ',NULL,NULL,'Ghana','Ghana',NULL,NULL,'07037477388','19 olawoyin street, anfani,challenge','$bridgrName',NULL,NULL,NULL,NULL,'234',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'organization',0,NULL),
	(21,'brainwave1507987160','Brainwave Educonsult Limited',NULL,NULL,NULL,NULL,'fatah@gmail.com',NULL,NULL,NULL,67,'Catering Services, Energy, Equipment Rental, IT & Technology, Logistics & Freight, Plumbing , Printing & Branding, Welding & Fabrication, ',NULL,NULL,'Niger','Niger',NULL,NULL,'07037477381','19 olawoyin street, anfani,challenge','But the problem in this is that if the workspace is damaged, and you delete it, all your settings are lost and everything is reset to the default NetBeans IDE settings.',NULL,NULL,NULL,NULL,'233',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'organization',0,NULL);

/*!40000 ALTER TABLE `businessdetails` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table data_rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`)
VALUES
	(1,1,'id','number','ID',1,0,0,0,0,0,'',1),
	(2,1,'author_id','text','Author',1,0,1,1,0,1,'',2),
	(3,1,'category_id','text','Category',1,0,1,1,1,0,'',3),
	(4,1,'title','text','Title',1,1,1,1,1,1,'',4),
	(5,1,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',5),
	(6,1,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),
	(7,1,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),
	(8,1,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',8),
	(9,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,'',9),
	(10,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,'',10),
	(11,1,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),
	(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,'',12),
	(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',13),
	(14,2,'id','number','id',1,0,0,0,0,0,'',1),
	(15,2,'author_id','text','author_id',1,0,0,0,0,0,'',2),
	(16,2,'title','text','title',1,1,1,1,1,1,'',3),
	(17,2,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',4),
	(18,2,'body','rich_text_box','body',1,0,1,1,1,1,'',5),
	(19,2,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"}}',6),
	(20,2,'meta_description','text','meta_description',1,0,1,1,1,1,'',7),
	(21,2,'meta_keywords','text','meta_keywords',1,0,1,1,1,1,'',8),
	(22,2,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),
	(23,2,'created_at','timestamp','created_at',1,1,1,0,0,0,'',10),
	(24,2,'updated_at','timestamp','updated_at',1,0,0,0,0,0,'',11),
	(25,2,'image','image','image',0,1,1,1,1,1,'',12),
	(26,3,'id','number','id',1,0,0,0,0,0,'',1),
	(27,3,'name','text','name',1,1,1,1,1,1,'',2),
	(28,3,'email','text','email',1,1,1,1,1,1,'',3),
	(29,3,'password','password','password',0,0,0,1,1,0,'',4),
	(30,3,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),
	(31,3,'remember_token','text','remember_token',0,0,0,0,0,0,'',5),
	(32,3,'created_at','timestamp','created_at',0,1,1,0,0,0,'',6),
	(33,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),
	(34,3,'avatar','image','avatar',0,1,1,1,1,1,'',8),
	(35,5,'id','number','id',1,0,0,0,0,0,'',1),
	(36,5,'name','text','name',1,1,1,1,1,1,'',2),
	(37,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),
	(38,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),
	(39,4,'id','number','id',1,0,0,0,0,0,'',1),
	(40,4,'parent_id','select_dropdown','parent_id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
	(41,4,'order','text','order',1,1,1,1,1,1,'{\"default\":1}',3),
	(42,4,'name','text','name',1,1,1,1,1,1,'',4),
	(43,4,'slug','text','slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),
	(44,4,'created_at','timestamp','created_at',0,0,1,0,0,0,'',6),
	(45,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),
	(46,6,'id','number','id',1,0,0,0,0,0,'',1),
	(47,6,'name','text','Name',1,1,1,1,1,1,'',2),
	(48,6,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),
	(49,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),
	(50,6,'display_name','text','Display Name',1,1,1,1,1,1,'',5),
	(51,1,'seo_title','text','seo_title',0,1,1,1,1,1,'',14),
	(52,1,'featured','checkbox','featured',1,1,1,1,1,1,'',15),
	(53,3,'role_id','text','role_id',1,1,1,1,1,1,'',9),
	(61,8,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(62,8,'bidName','text','Bid Name',0,1,1,1,1,1,NULL,2),
	(63,8,'bidClosureDate','date','Bid Closure Date',0,1,1,1,1,1,NULL,3),
	(64,8,'supplyTimeFrame','text','Supply Time Frame',0,1,1,1,1,1,NULL,4),
	(65,8,'paymentMileStone','text','Payment Mile Stone',0,1,1,1,1,1,NULL,5),
	(66,8,'paymentMethod','text','Payment Method',0,1,1,1,1,1,NULL,6),
	(67,8,'bizId','checkbox','BizId',0,0,0,0,0,0,NULL,7),
	(93,10,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(94,10,'bridgrName','text','Bridgr Name',1,0,1,1,1,1,NULL,3),
	(95,10,'bizName','text','Business Name',0,1,1,1,1,1,NULL,2),
	(96,10,'companyWebiste','text','Company Webiste',0,1,1,1,1,1,NULL,4),
	(97,10,'legalStructure','text','Legal Structure',0,0,1,1,1,1,NULL,5),
	(98,10,'bizIncorpNumber','text','Business Incorporation Number',0,0,0,0,0,0,NULL,6),
	(99,10,'companyLogo','image','Company Logo',0,0,1,1,1,1,NULL,7),
	(100,10,'bizEmail','text','Business Email',0,1,1,1,1,1,NULL,8),
	(101,10,'bizFacebook','text','Facebook',0,0,1,1,1,1,NULL,9),
	(102,10,'countryOfBiz','text','Country of Operation',0,1,1,1,1,1,NULL,10),
	(103,10,'TaxNumber','text','Tax Number',0,0,1,1,1,1,NULL,11),
	(104,10,'userId','number','User Id',0,0,1,1,1,1,NULL,12),
	(105,10,'bizAreas','text','Business Areas',0,0,1,1,1,1,NULL,13),
	(106,10,'bizImage','image','Business Image',0,0,1,1,1,1,NULL,14),
	(107,10,'bizWebsite','text','Business Website',0,0,1,1,1,1,NULL,15),
	(108,10,'bizCountryReg','text','Country of Registration',0,0,1,1,1,1,NULL,16),
	(109,10,'bizCountryOperatn','text','Country of Operation',0,0,1,1,1,1,NULL,17),
	(110,10,'bizTwitter','checkbox','Twitter',0,0,1,1,1,1,NULL,18),
	(111,10,'bizRegYear','text','Registration Year',0,0,1,1,1,1,NULL,19),
	(112,10,'bizPhoneNumber','text','Phone Number',0,0,1,1,1,1,NULL,20),
	(113,10,'bizAddress','text','Address',0,0,1,1,1,1,NULL,21),
	(114,10,'bizDescription','checkbox','Business Description',1,0,1,1,1,1,NULL,22),
	(115,10,'bizType','text','Type',0,0,1,1,1,1,NULL,23),
	(116,10,'bizFirstYearExecution','text','First Year of Execution',0,0,1,1,1,1,NULL,24),
	(117,10,'requestBusinessId','number','RequestBusinessId',0,0,0,0,0,0,NULL,25),
	(118,10,'bizServiceSector','text','Service Sector',0,0,1,1,1,1,NULL,26),
	(119,10,'countryPhoneCode','checkbox','CountryPhoneCode',0,0,0,0,0,0,NULL,27),
	(120,10,'cacBizRegCert','checkbox','CacBizRegCert',0,0,0,0,0,0,NULL,28),
	(121,10,'vatCert','checkbox','VatCert',0,0,0,0,0,0,NULL,29),
	(122,10,'co2OtherBizDoc','checkbox','Co2OtherBizDoc',0,0,0,0,0,0,NULL,30),
	(123,10,'co7OtherBizDoc','checkbox','Co7OtherBizDoc',0,0,0,0,0,0,NULL,31),
	(124,10,'bizCeritifationns','checkbox','BizCeritifationns',0,0,0,0,0,0,NULL,32),
	(125,10,'bizPermits','checkbox','BizPermits',0,0,0,0,0,0,NULL,33),
	(126,10,'bizCurrentIncomeDoc','checkbox','BizCurrentIncomeDoc',0,0,0,0,0,0,NULL,34),
	(127,10,'bizAuditedSoA','checkbox','BizAuditedSoA',0,0,0,0,0,0,NULL,35),
	(128,10,'bizQualityPolicy','checkbox','BizQualityPolicy',0,0,0,0,0,0,NULL,36),
	(129,10,'bizHSEPolicy','checkbox','BizHSEPolicy',0,0,0,0,0,0,NULL,37),
	(130,10,'bizESignature','checkbox','BizESignature',0,0,0,0,0,0,NULL,38),
	(131,10,'bizBoardResolution','checkbox','BizBoardResolution',0,0,0,0,0,0,NULL,39),
	(132,10,'bizAgencyAgreement','checkbox','BizAgencyAgreement',0,0,0,0,0,0,NULL,40),
	(133,10,'bizBankName','checkbox','BizBankName',0,0,0,0,0,0,NULL,41),
	(134,10,'bizBankCountry','checkbox','BizBankCountry',0,0,0,0,0,0,NULL,42),
	(135,10,'bizBankAddress','checkbox','BizBankAddress',0,0,0,0,0,0,NULL,43),
	(136,10,'bizBankSwiftCode','checkbox','BizBankSwiftCode',0,0,0,0,0,0,NULL,44),
	(137,10,'bizBankBVNIdentity','checkbox','BizBankBVNIdentity',0,0,0,0,0,0,NULL,45),
	(138,10,'bizBVNIdentityAuth','checkbox','BizBVNIdentityAuth',0,0,0,0,0,0,NULL,46),
	(139,10,'bizPaymentMode','checkbox','BizPaymentMode',0,0,0,0,0,0,NULL,47),
	(140,10,'bizCapitalCurrency','checkbox','BizCapitalCurrency',0,0,0,0,0,0,NULL,48),
	(141,10,'bizShareCapital','checkbox','BizShareCapital',0,0,0,0,0,0,NULL,49),
	(142,10,'bizHiighestProject','checkbox','BizHiighestProject',0,0,0,0,0,0,NULL,50),
	(143,10,'bizBalanceSheet','checkbox','BizBalanceSheet',0,0,0,0,0,0,NULL,51),
	(144,10,'bizClientSize','checkbox','BizClientSize',0,0,0,0,0,0,NULL,52),
	(145,10,'bizEmployeeSize','checkbox','BizEmployeeSize',0,0,0,0,0,0,NULL,53),
	(146,10,'bizYearFirstContract','checkbox','BizYearFirstContract',0,0,0,0,0,0,NULL,54),
	(147,10,'bizNonDisclosure','checkbox','BizNonDisclosure',0,0,0,0,0,0,NULL,55),
	(148,10,'bizEthicalDeclaration','checkbox','BizEthicalDeclaration',0,0,0,0,0,0,NULL,56),
	(149,10,'antiMoneyLaundering','checkbox','AntiMoneyLaundering',0,0,0,0,0,0,NULL,57),
	(150,10,'bizNature','checkbox','BizNature',0,0,0,0,0,0,NULL,58),
	(151,10,'active','checkbox','Active',0,0,0,0,0,0,NULL,59),
	(152,10,'createdTime','timestamp','CreatedTime',0,0,0,0,0,0,NULL,60),
	(153,11,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(154,11,'userEmail','text','User Email',0,1,1,1,1,1,NULL,2),
	(155,11,'userMobile','text','User Mobile',0,1,1,1,1,1,NULL,3),
	(156,11,'firstName','text','First Name',0,1,1,1,1,1,NULL,4),
	(157,11,'lastName','text','Last Name',0,1,1,1,1,1,NULL,5),
	(158,11,'stateOfResidence','text','State Of Residence',0,1,1,1,1,1,NULL,6),
	(159,11,'homeAddress','text','Home Address',0,0,1,1,1,1,NULL,7),
	(160,11,'subscriptonId','checkbox','SubscriptonId',0,0,1,1,1,1,NULL,8),
	(161,11,'isCompanyInfo','checkbox','IsCompanyInfo',0,0,0,0,0,0,NULL,9),
	(162,11,'typeTag','checkbox','TypeTag',0,0,0,0,0,0,NULL,10),
	(163,11,'eSignature','checkbox','ESignature',0,0,1,0,0,1,NULL,11),
	(164,11,'smsVerifyCode','checkbox','SmsVerifyCode',0,0,0,0,0,0,NULL,12),
	(165,11,'emailVerifyString','checkbox','EmailVerifyString',0,0,0,0,0,0,NULL,13),
	(166,11,'isMobileVerified','checkbox','IsMobileVerified',0,0,0,0,0,0,NULL,14),
	(167,11,'isEmailVerified','checkbox','IsEmailVerified',0,0,0,0,0,0,NULL,15),
	(168,11,'userPassword','checkbox','UserPassword',0,0,0,0,0,0,NULL,16),
	(169,11,'activeToken','checkbox','ActiveToken',0,0,0,0,0,0,NULL,17),
	(170,11,'userCountry','text','User Country',0,0,1,1,1,1,NULL,18),
	(171,11,'userState','text','User State',0,0,1,1,1,1,NULL,19),
	(172,11,'userAddress','text','User Address',0,0,1,1,1,1,NULL,20),
	(173,11,'userWebsite','text','User Website',0,0,1,1,1,1,NULL,21),
	(174,11,'userFacebook','checkbox','UserFacebook',0,0,1,1,1,1,NULL,22),
	(175,11,'userTwitter','checkbox','UserTwitter',0,0,1,1,1,1,NULL,23),
	(176,11,'userLinkedin','checkbox','UserLinkedin',0,0,1,1,1,1,NULL,24),
	(177,11,'createdTime','timestamp','Created Time',1,0,1,0,0,0,NULL,25),
	(178,12,'title','text','Title',0,1,1,1,1,1,NULL,2),
	(179,12,'mainNumber','number','Main Number',0,0,1,1,0,1,NULL,3),
	(180,12,'sectionNumber','checkbox','Section Number',0,0,1,1,0,1,NULL,4),
	(181,12,'subSectionNumber','number','Sub Section Number',0,0,1,1,0,1,NULL,5),
	(182,12,'isTitle','checkbox','IsTitle',0,0,0,0,0,0,NULL,6),
	(183,12,'isSection','checkbox','IsSection',0,0,0,0,0,0,NULL,7),
	(184,12,'isSubsection','checkbox','IsSubsection',0,0,0,0,0,0,NULL,8),
	(185,12,'content','text_area','Content',0,1,1,1,1,1,NULL,9),
	(186,12,'requestHash','checkbox','RequestHash',0,0,0,0,0,0,NULL,10),
	(187,12,'dateCreated','timestamp','Date Created',0,1,1,1,1,1,NULL,11),
	(188,12,'lastModified','timestamp','Last Modified',0,1,1,1,1,1,NULL,12),
	(189,12,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(190,13,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(191,13,'itemName','text','Name',0,1,1,1,1,1,NULL,2),
	(192,13,'itemDescription','text_area','Description',0,1,1,1,1,1,NULL,3),
	(193,13,'unitOfMeasure','text','Unit Of Measure',0,1,1,1,1,1,NULL,4),
	(194,13,'itemQuantity','text','Quantity',0,1,1,1,1,1,NULL,5),
	(195,13,'requestId','checkbox','RequestId',0,0,0,0,0,0,NULL,6),
	(196,13,'createdTime','timestamp','CreatedTime',0,0,1,0,0,0,NULL,7),
	(197,13,'requestProfileBridgrName','checkbox','Bridgr Name',0,0,1,0,0,0,NULL,8),
	(198,13,'requestHash','checkbox','RequestHash',0,0,0,0,0,0,NULL,9),
	(199,11,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,NULL,26);

/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`)
VALUES
	(1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,'2017-10-30 01:37:52','2017-10-30 01:37:52'),
	(2,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,'2017-10-30 01:37:52','2017-10-30 01:37:52'),
	(3,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,'2017-10-30 01:37:52','2017-10-30 01:37:52'),
	(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,'2017-10-30 01:37:52','2017-10-30 01:37:52'),
	(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,'2017-10-30 01:37:52','2017-10-30 01:37:52'),
	(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,'2017-10-30 01:37:52','2017-10-30 01:37:52'),
	(8,'bids','bids','Bid','Bids',NULL,'App\\Bid',NULL,NULL,NULL,1,0,'2017-10-30 02:25:12','2017-10-30 02:25:12'),
	(10,'businessdetails','businessdetails','Business Detail','Business Details',NULL,'App\\BDetails',NULL,NULL,NULL,1,0,'2017-10-30 04:41:26','2017-10-30 04:41:26'),
	(11,'userdetails','userdetails','User Detail','User Details',NULL,'App\\UDetails',NULL,NULL,NULL,1,0,'2017-10-30 04:49:37','2017-11-18 22:56:21'),
	(12,'rfqcontents','rfqcontents','RFQ Content','RFQ Contents','voyager-diamond','App\\Rfqcontent',NULL,NULL,NULL,1,0,'2017-11-07 00:31:34','2017-11-07 01:36:14'),
	(13,'requestitems','requestitems','Request Item','Request Items','voyager-dollar','App\\Requestitem',NULL,NULL,NULL,1,0,'2017-11-07 00:57:07','2017-11-07 00:57:07');

/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table fieldcategories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fieldcategories`;

CREATE TABLE `fieldcategories` (
  `categoryName` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `fieldcategories` WRITE;
/*!40000 ALTER TABLE `fieldcategories` DISABLE KEYS */;

INSERT INTO `fieldcategories` (`categoryName`, `id`)
VALUES
	('Energy',1),
	('Construction & Engineering',2),
	('IT & Technology',3),
	('Logistics & Freight',4),
	('Financial Services',5),
	('Catering Services',6),
	('Facilities maintenance',7),
	('Professional Services',8),
	('Parts & Machine Tools',9),
	('Metals & Mining',10),
	('Outsourced (Managed) Services',11),
	('Welding & Fabrication',12),
	('Security & Concierge Service',13),
	('Equipment Rental',14),
	('Furnishing & Wood works',15),
	('Printing & Branding',16),
	('Travel Services',17),
	('Consumables',18),
	('Electrical & HVAC',19),
	('Plumbing ',20);

/*!40000 ALTER TABLE `fieldcategories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`)
VALUES
	(1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2017-10-30 01:37:53','2017-10-30 01:37:53','voyager.dashboard',NULL),
	(4,1,'All Admins','','_self','voyager-person','#000000',NULL,3,'2017-10-30 01:37:53','2017-10-30 04:45:07','voyager.users.index','null'),
	(7,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2017-10-30 01:37:53','2017-10-30 01:37:53','voyager.roles.index',NULL),
	(8,1,'Tools','','_self','voyager-tools',NULL,NULL,10,'2017-10-30 01:37:53','2017-11-07 08:31:22',NULL,NULL),
	(9,1,'Menu Builder','','_self','voyager-list',NULL,8,1,'2017-10-30 01:37:53','2017-10-30 03:25:29','voyager.menus.index',NULL),
	(10,1,'Database','','_self','voyager-data',NULL,8,2,'2017-10-30 01:37:53','2017-10-30 03:25:29','voyager.database.index',NULL),
	(11,1,'Compass','/admin/compass','_self','voyager-compass',NULL,8,3,'2017-10-30 01:37:53','2017-10-30 03:25:29',NULL,NULL),
	(12,1,'Hooks','/admin/hooks','_self','voyager-hook',NULL,8,4,'2017-10-30 01:37:53','2017-10-30 03:25:29',NULL,NULL),
	(13,1,'Settings','','_self','voyager-settings',NULL,NULL,7,'2017-10-30 01:37:53','2017-11-07 08:31:21','voyager.settings.index',NULL),
	(14,1,'Bids','/admin/bids','_self','voyager-hammer','#0433ff',NULL,4,'2017-10-30 01:46:09','2017-10-30 09:27:04',NULL,''),
	(17,1,'Business Details','/admin/businessdetails','_self','voyager-lighthouse','#000000',NULL,5,'2017-10-30 04:41:26','2017-10-30 09:27:08',NULL,''),
	(18,1,'User Details','/admin/userdetails','_self','voyager-people','#000000',NULL,6,'2017-10-30 04:49:37','2017-10-30 09:27:16',NULL,''),
	(19,1,'RFQ Contents','/admin/rfqcontents','_self','voyager-diamond','#000000',NULL,8,'2017-11-07 00:31:35','2017-11-07 08:31:22',NULL,''),
	(20,1,'Request Items','/admin/requestitems','_self','voyager-dollar',NULL,NULL,9,'2017-11-07 00:57:08','2017-11-07 08:31:22',NULL,NULL);

/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','2017-10-30 01:37:53','2017-10-30 01:37:53');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senderId` int(11) DEFAULT NULL,
  `receiverId` int(11) DEFAULT NULL,
  `readStatus` tinyint(4) DEFAULT NULL,
  `message` text,
  `bidId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_01_01_000000_add_voyager_user_fields',1),
	(4,'2016_01_01_000000_create_data_types_table',1),
	(5,'2016_01_01_000000_create_pages_table',1),
	(6,'2016_01_01_000000_create_posts_table',1),
	(7,'2016_02_15_204651_create_categories_table',1),
	(8,'2016_05_19_173453_create_menu_table',1),
	(9,'2016_10_21_190000_create_roles_table',1),
	(10,'2016_10_21_190000_create_settings_table',1),
	(11,'2016_11_30_135954_create_permission_table',1),
	(12,'2016_11_30_141208_create_permission_role_table',1),
	(13,'2016_12_26_201236_data_types__add__server_side',1),
	(14,'2017_01_13_000000_add_route_to_menu_items_table',1),
	(15,'2017_01_14_005015_create_translations_table',1),
	(16,'2017_01_15_000000_add_permission_group_id_to_permissions_table',1),
	(17,'2017_01_15_000000_create_permission_groups_table',1),
	(18,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),
	(19,'2017_03_06_000000_add_controller_to_data_types_table',1),
	(20,'2017_04_11_000000_alter_post_nullable_fields_table',1),
	(21,'2017_04_21_000000_add_order_to_data_rows_table',1),
	(22,'2017_07_05_210000_add_policyname_to_data_types_table',1),
	(23,'2017_08_05_000000_add_group_to_settings_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permission_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_groups`;

CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1),
	(26,1),
	(27,1),
	(28,1),
	(29,1),
	(30,1),
	(31,1),
	(32,1),
	(33,1),
	(34,1),
	(35,1),
	(36,1),
	(37,1),
	(38,1),
	(39,1),
	(45,1),
	(46,1),
	(47,1),
	(48,1),
	(49,1),
	(55,1),
	(56,1),
	(56,2),
	(57,1),
	(58,1),
	(59,1),
	(60,1),
	(61,1),
	(62,1),
	(63,1),
	(64,1),
	(65,1),
	(66,1),
	(67,1),
	(68,1),
	(69,1),
	(70,1),
	(71,1),
	(72,1),
	(73,1),
	(74,1);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`)
VALUES
	(1,'browse_admin',NULL,'2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(2,'browse_database',NULL,'2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(3,'browse_media',NULL,'2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(4,'browse_compass',NULL,'2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(5,'browse_menus','menus','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(6,'read_menus','menus','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(7,'edit_menus','menus','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(8,'add_menus','menus','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(9,'delete_menus','menus','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(10,'browse_pages','pages','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(11,'read_pages','pages','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(12,'edit_pages','pages','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(13,'add_pages','pages','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(14,'delete_pages','pages','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(15,'browse_roles','roles','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(16,'read_roles','roles','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(17,'edit_roles','roles','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(18,'add_roles','roles','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(19,'delete_roles','roles','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(20,'browse_users','users','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(21,'read_users','users','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(22,'edit_users','users','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(23,'add_users','users','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(24,'delete_users','users','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(25,'browse_posts','posts','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(26,'read_posts','posts','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(27,'edit_posts','posts','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(28,'add_posts','posts','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(29,'delete_posts','posts','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(30,'browse_categories','categories','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(31,'read_categories','categories','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(32,'edit_categories','categories','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(33,'add_categories','categories','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(34,'delete_categories','categories','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(35,'browse_settings','settings','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(36,'read_settings','settings','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(37,'edit_settings','settings','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(38,'add_settings','settings','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(39,'delete_settings','settings','2017-10-30 01:37:54','2017-10-30 01:37:54',NULL),
	(45,'browse_bids','bids','2017-10-30 02:25:12','2017-10-30 02:25:12',NULL),
	(46,'read_bids','bids','2017-10-30 02:25:12','2017-10-30 02:25:12',NULL),
	(47,'edit_bids','bids','2017-10-30 02:25:12','2017-10-30 02:25:12',NULL),
	(48,'add_bids','bids','2017-10-30 02:25:12','2017-10-30 02:25:12',NULL),
	(49,'delete_bids','bids','2017-10-30 02:25:12','2017-10-30 02:25:12',NULL),
	(55,'browse_businessdetails','businessdetails','2017-10-30 04:41:26','2017-10-30 04:41:26',NULL),
	(56,'read_businessdetails','businessdetails','2017-10-30 04:41:26','2017-10-30 04:41:26',NULL),
	(57,'edit_businessdetails','businessdetails','2017-10-30 04:41:26','2017-10-30 04:41:26',NULL),
	(58,'add_businessdetails','businessdetails','2017-10-30 04:41:26','2017-10-30 04:41:26',NULL),
	(59,'delete_businessdetails','businessdetails','2017-10-30 04:41:26','2017-10-30 04:41:26',NULL),
	(60,'browse_userdetails','userdetails','2017-10-30 04:49:37','2017-10-30 04:49:37',NULL),
	(61,'read_userdetails','userdetails','2017-10-30 04:49:37','2017-10-30 04:49:37',NULL),
	(62,'edit_userdetails','userdetails','2017-10-30 04:49:37','2017-10-30 04:49:37',NULL),
	(63,'add_userdetails','userdetails','2017-10-30 04:49:37','2017-10-30 04:49:37',NULL),
	(64,'delete_userdetails','userdetails','2017-10-30 04:49:37','2017-10-30 04:49:37',NULL),
	(65,'browse_rfqcontents','rfqcontents','2017-11-07 00:31:35','2017-11-07 00:31:35',NULL),
	(66,'read_rfqcontents','rfqcontents','2017-11-07 00:31:35','2017-11-07 00:31:35',NULL),
	(67,'edit_rfqcontents','rfqcontents','2017-11-07 00:31:35','2017-11-07 00:31:35',NULL),
	(68,'add_rfqcontents','rfqcontents','2017-11-07 00:31:35','2017-11-07 00:31:35',NULL),
	(69,'delete_rfqcontents','rfqcontents','2017-11-07 00:31:35','2017-11-07 00:31:35',NULL),
	(70,'browse_requestitems','requestitems','2017-11-07 00:57:08','2017-11-07 00:57:08',NULL),
	(71,'read_requestitems','requestitems','2017-11-07 00:57:08','2017-11-07 00:57:08',NULL),
	(72,'edit_requestitems','requestitems','2017-11-07 00:57:08','2017-11-07 00:57:08',NULL),
	(73,'add_requestitems','requestitems','2017-11-07 00:57:08','2017-11-07 00:57:08',NULL),
	(74,'delete_requestitems','requestitems','2017-11-07 00:57:08','2017-11-07 00:57:08',NULL);

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table requestforexplanations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `requestforexplanations`;

CREATE TABLE `requestforexplanations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senderId` int(11) DEFAULT NULL,
  `receiverId` int(11) DEFAULT NULL,
  `readStatus` tinyint(4) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table requestitems
# ------------------------------------------------------------

DROP TABLE IF EXISTS `requestitems`;

CREATE TABLE `requestitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(255) DEFAULT NULL,
  `itemDescription` text,
  `unitOfMeasure` varchar(50) DEFAULT NULL,
  `itemQuantity` varchar(255) DEFAULT NULL,
  `requestId` int(11) DEFAULT NULL,
  `createdTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `requestProfileBridgrName` varchar(50) DEFAULT NULL,
  `requestHash` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `requestitems` WRITE;
/*!40000 ALTER TABLE `requestitems` DISABLE KEYS */;

INSERT INTO `requestitems` (`id`, `itemName`, `itemDescription`, `unitOfMeasure`, `itemQuantity`, `requestId`, `createdTime`, `requestProfileBridgrName`, `requestHash`)
VALUES
	(54,'Kerosine','The Senior Resident Representative and Mission Chief for Nigeria, Africa Department, IMF, Mr. Amine Mati, who','GALLON  (gal)','12',30,'2017-10-30 09:35:37','joshconceps1507348392','72a0346d466645ea39b321482bf5d095'),
	(55,'Kerosine','The Senior Resident Representative and Mission Chief for Nigeria, Africa Department, IMF, Mr. Amine Mati, who','GALLON  (gal)','12',30,'2017-10-30 09:35:37','joshconceps1507348392','72a0346d466645ea39b321482bf5d095'),
	(56,'Department, IMF, Mr. Amine Mati, who','The Senior Resident Representative and Mission Chief for Nigeria, Africa Department, IMF, Mr. Amine Mati, who','STONE (stn)','50',30,'2017-10-30 09:35:37','joshconceps1507348392','72a0346d466645ea39b321482bf5d095'),
	(57,'Department, IMF, Mr. Amine Mati, who','The Senior Resident Representative and Mission Chief for Nigeria, Africa Department, IMF, Mr. Amine Mati, who','SQUARE FEET (ft2)','50',30,'2017-10-30 09:35:37','joshconceps1507348392','72a0346d466645ea39b321482bf5d095'),
	(58,'Department, IMF, Mr. Amine Mati, who','requisite  Department, IMF, Mr. Amine Mati, who   Department, IMF, Mr. Amine Mati, who','MILLIMETER  (mm)','20',NULL,'2017-10-30 17:43:49','joshconceps1507348392',NULL),
	(59,'Department, IMF, Mr. Amine Mati, who','requisite  Department, IMF, Mr. Amine Mati, who   Department, IMF, Mr. Amine Mati, who','MILLIMETER  (mm)','20',NULL,'2017-10-30 17:43:49','joshconceps1507348392',NULL),
	(60,'Department, IMF, Mr. Amine Mati, who','requisite  Department, IMF, Mr. Amine Mati, who   Department, IMF, Mr. Amine Mati, who','MILLIMETER  (mm)','20',NULL,'2017-10-30 17:43:49','joshconceps1507348392',NULL),
	(61,'Department, IMF, Mr. Amine Mati, who','requisite  Department, IMF, Mr. Amine Mati, who   Department, IMF, Mr. Amine Mati, who','MILLIMETER  (mm)','20',NULL,'2017-10-30 17:43:49','joshconceps1507348392',NULL),
	(62,'Department, IMF, Mr. Amine Mati, who','requisite  Department, IMF, Mr. Amine Mati, who  Department, IMF, Mr. Amine Mati, who  Department, IMF, Mr. Amine Mati, who','CENTIMETER (cm)','20',NULL,'2017-10-30 17:44:20','joshconceps1507348392',NULL),
	(63,'Department, IMF, Mr. Amine Mati, who','requisite  Department, IMF, Mr. Amine Mati, who  Department, IMF, Mr. Amine Mati, who  Department, IMF, Mr. Amine Mati, who','CENTIMETER (cm)','20',NULL,'2017-10-30 17:44:20','joshconceps1507348392',NULL),
	(64,'Department, IMF, Mr. Amine Mati, who','requisite  Department, IMF, Mr. Amine Mati, who  Department, IMF, Mr. Amine Mati, who  Department, IMF, Mr. Amine Mati, who','CENTIMETER (cm)','20',NULL,'2017-10-30 17:44:20','joshconceps1507348392',NULL),
	(92,'Department, IMF, Mr. Amine Mati, who','requisite  Department, IMF, Mr. Amin requisite  Department, IMF, Mr. Amine Mati, who requisite  Department, IMF, Mr. Amine Mati, who \n e Mati, who','YARD (yrd)','10',33,'2017-11-01 13:16:56','joshconceps1507348392','b1b3141d9b857f4820b129b52c29d463'),
	(93,'Department, IMF, Mr. Amine Mati, who','requisite  Department, IMF, Mr. Amin requisite  Department, IMF, Mr. Amine Mati, who requisite  Department, IMF, Mr. Amine Mati, who \n e Mati, who','YARD (yrd)','10',33,'2017-11-01 13:16:56','joshconceps1507348392','b1b3141d9b857f4820b129b52c29d463'),
	(94,'Department, IMF, Mr. Amine Mati, who','requisite  Department, IMF, Mr. Amin requisite  Department, IMF, Mr. Amine Mati, who requisite  Department, IMF, Mr. Amine Mati, who \n e Mati, who','YARD (yrd)','10',33,'2017-11-01 13:16:56','joshconceps1507348392','b1b3141d9b857f4820b129b52c29d463'),
	(95,'item name for first Item','item name for first Itemitem name for first Itemitem name for first Item','STONE (stn)','2345',34,'2017-11-02 12:23:59','joshconceps1507348392','rfq9da5fb745ef71d85004ec925125a26e5');

/*!40000 ALTER TABLE `requestitems` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table requests
# ------------------------------------------------------------

DROP TABLE IF EXISTS `requests`;

CREATE TABLE `requests` (
  `requestTitle` varchar(300) DEFAULT NULL,
  `requestCategory` varchar(50) DEFAULT NULL,
  `projectCostEstimate` double DEFAULT NULL,
  `requestCountry` varchar(100) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `requestType` varchar(50) DEFAULT NULL,
  `numberOfSuppliers` int(11) DEFAULT NULL,
  `preferredSuppliers` text,
  `siteInspection` varchar(5) DEFAULT NULL,
  `requestRequisite` text,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `supplyCountry` varchar(100) DEFAULT NULL,
  `bidSubmissionOpenDate` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requestRefNumber` varchar(100) DEFAULT NULL,
  `usdLocalExchangeRate` varchar(50) DEFAULT NULL,
  `requesBidStructure` varchar(50) DEFAULT NULL,
  `requestAddress` varchar(255) DEFAULT NULL,
  `supplierList` text,
  `bidSubmissionCloseDate` datetime DEFAULT NULL,
  `paymentModel` varchar(50) DEFAULT NULL,
  `deliveryTimeline` varchar(50) DEFAULT NULL,
  `applicableVAT` varchar(50) DEFAULT NULL,
  `applicableWHT` varchar(50) DEFAULT NULL,
  `requestDescription` text,
  `closedBidOpeningDate` datetime DEFAULT NULL,
  `vendorCountry` text,
  `paymentTerms` varchar(50) DEFAULT NULL,
  `requestProfileId` double(11,0) DEFAULT NULL,
  `suppliersOfChoice` text,
  `requestRequisites` text,
  `createdTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `requestHash` varchar(50) DEFAULT NULL,
  `requestProfileBridgrName` varchar(100) DEFAULT NULL,
  `requestTerms` varchar(100) DEFAULT NULL,
  `isPublished` tinyint(1) DEFAULT '0',
  `requestAccessToBiddersDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ageOfSuppliers` varchar(50) DEFAULT NULL,
  `biddersLegalStructure` varchar(50) DEFAULT NULL,
  `biddersAgeOfFirstProject` varchar(50) DEFAULT NULL,
  `biddersMinimumClient` varchar(50) DEFAULT NULL,
  `bidderHasbusinessCertification` tinyint(1) NOT NULL DEFAULT '0',
  ` bidderHasServiceWarranty` tinyint(1) DEFAULT '0',
  `bidderHasQualityPolicy` tinyint(1) DEFAULT '0',
  `bidderHasAuditedFinancialStatement` tinyint(1) DEFAULT '0',
  `bidderHasPermitsLicense` tinyint(1) DEFAULT '0',
  `bidderHasVAT_TINCertificate` tinyint(1) DEFAULT '0',
  `bidderHasIncomeTaxClearance` tinyint(1) DEFAULT '0',
  `bidderHasSafetyPolicy` tinyint(1) DEFAULT '0',
  `timeHash` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;

INSERT INTO `requests` (`requestTitle`, `requestCategory`, `projectCostEstimate`, `requestCountry`, `currency`, `requestType`, `numberOfSuppliers`, `preferredSuppliers`, `siteInspection`, `requestRequisite`, `paymentMethod`, `supplyCountry`, `bidSubmissionOpenDate`, `id`, `requestRefNumber`, `usdLocalExchangeRate`, `requesBidStructure`, `requestAddress`, `supplierList`, `bidSubmissionCloseDate`, `paymentModel`, `deliveryTimeline`, `applicableVAT`, `applicableWHT`, `requestDescription`, `closedBidOpeningDate`, `vendorCountry`, `paymentTerms`, `requestProfileId`, `suppliersOfChoice`, `requestRequisites`, `createdTime`, `requestHash`, `requestProfileBridgrName`, `requestTerms`, `isPublished`, `requestAccessToBiddersDate`, `ageOfSuppliers`, `biddersLegalStructure`, `biddersAgeOfFirstProject`, `biddersMinimumClient`, `bidderHasbusinessCertification`, ` bidderHasServiceWarranty`, `bidderHasQualityPolicy`, `bidderHasAuditedFinancialStatement`, `bidderHasPermitsLicense`, `bidderHasVAT_TINCertificate`, `bidderHasIncomeTaxClearance`, `bidderHasSafetyPolicy`, `timeHash`)
VALUES
	('http://localhost/bridgr_web/requests','supply',23000000,'19 olawoyin street, anfani,challenge','USD','close',10,NULL,'on',NULL,NULL,'American Samoa','2017-10-12 00:00:00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('http://localhost/bridgr_web/requests','supply',23000000,'19 olawoyin street, anfani,challenge','USD','close',10,NULL,'on',NULL,NULL,'Bahrain','2017-10-19 00:00:00',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('</fieldset>','supply',23000000,'American Samoa','USD - US Dollar',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-18 00:00:00',3,NULL,'370','close','</fieldset>',NULL,'2017-10-13 00:00:00','Milestone','150','5','10','</fieldset>','2017-10-12 00:00:00',NULL,'180',11,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('ggggggggggg','supply',23000000,'American Samoa','CAD - Canada Dollar',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-12 00:00:00',4,NULL,'345','close','345',NULL,'2017-10-06 00:00:00','Milestone','345','45','60','ggggggggggg','2017-10-12 00:00:00','Nigeria, Algeria, Andorra','45',11,'hormetintegratedservices1507348304, joshconceps1507348392, syntaxinnovation1506952140,','Professional Indemnity is Required, Site Inspection is Required',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('ggggggggggg','supply',23000000,'American Samoa','CAD - Canada Dollar',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-12 00:00:00',5,NULL,'345','close','345',NULL,'2017-10-06 00:00:00','Milestone','345','45','60','ggggggggggg','2017-10-12 00:00:00','Nigeria, Algeria, Andorra','45',11,'hormetintegratedservices1507348304, joshconceps1507348392, syntaxinnovation1506952140,','Professional Indemnity is Required, Site Inspection is Required',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('ggggggggggg','supply',23000000,'American Samoa','CAD - Canada Dollar',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-12 00:00:00',6,NULL,'345','close','345',NULL,'2017-10-06 00:00:00','Milestone','345','45','60','ggggggggggg','2017-10-12 00:00:00','Nigeria, Algeria, Andorra','45',11,'hormetintegratedservices1507348304, joshconceps1507348392, syntaxinnovation1506952140,','Professional Indemnity is Required, Site Inspection is Required',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('ggggggggggg','supply',23000000,'American Samoa','CAD - Canada Dollar',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-12 00:00:00',7,NULL,'345','close','345',NULL,'2017-10-06 00:00:00','Milestone','345','45','60','ggggggggggg','2017-10-12 00:00:00','Nigeria, Algeria, Andorra','45',11,'hormetintegratedservices1507348304, joshconceps1507348392, syntaxinnovation1506952140,','Professional Indemnity is Required, Site Inspection is Required','2017-10-17 05:04:55',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('This is where we are','supply',23000000,'Nigeria','USD - US Dollar',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-19 00:00:00',8,NULL,'560','close','This is where we are',NULL,'2017-10-26 00:00:00','Milestone','360','6','10','This is where we are','2018-07-12 00:00:00','Nigeria, Afghanistan, American Samoa','180',11,'hormetintegratedservices1507348304, joshconceps1507348392, syntaxinnovation1506952140,','Professional Indemnity is Required, Site Audit is Required','2017-10-17 05:07:45',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('Testing Request','supply',23000000,'Ghana','AFN',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-19 00:00:00',9,NULL,'450','close','34 Adebesin Street',NULL,'2017-10-26 00:00:00','Milestone','300','5','10','newrequest Testing Request newrequest Testing Request','2018-03-01 00:00:00','Nigeria, Afghanistan, Ghana','90',14,'adeboyo1507842531, badmusajadi1506951564, badmus1507838535, hormetintegratedservices1507348304, joshconceps1507348392, syntaxinnovation1506952140,','Site Audit is Required, Site Inspection is Required, Warranty is Required','2017-10-17 12:01:33','1980f5d144e1cdcd0cd59e068e2bd877','adeboyo1507842531',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('$request__','supply',23000000,'Anguilla','GHC - Ghana Cedis',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-20 00:00:00',10,NULL,'345','close','$request__',NULL,'2017-10-19 00:00:00','Upfront','345','5','5','$request__','2017-10-27 00:00:00','Nigeria, Afghanistan','90',13,'badmusajadi1506951564, hormetintegratedservices1507348304, joshconceps1507348392,','Professional Indemnity is Required, Site Audit is Required','2017-10-17 14:34:02','b8adea8bda57078f400653afb386132b','joshconceps1507348392',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('$request__','supply',23000000,'Anguilla','GHC - Ghana Cedis',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-20 00:00:00',11,NULL,'345','close','$request__',NULL,'2017-10-19 00:00:00','Upfront','345','5','5','$request__',NULL,'Nigeria, Afghanistan','90',13,'badmusajadi1506951564, hormetintegratedservices1507348304, joshconceps1507348392,','Professional Indemnity is Required, Site Audit is Required','2017-10-17 14:35:53','0556d1c31c2bc449d53dfc5c675c1e17','joshconceps1507348392',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('$request__','supply',23000000,'Anguilla','GHC - Ghana Cedis',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-20 00:00:00',12,NULL,'345','close','$request__',NULL,'2017-10-19 00:00:00','Upfront','345','5','5','$request__',NULL,'Nigeria, Afghanistan','90',13,'badmusajadi1506951564, hormetintegratedservices1507348304, joshconceps1507348392,','Professional Indemnity is Required, Site Audit is Required','2017-10-17 14:38:07','3e40f6a79b45b0126a05c59c5fd9e489','joshconceps1507348392',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('$request__','supply',23000000,'Anguilla','GHC - Ghana Cedis',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-20 00:00:00',13,NULL,'345','close','$request__',NULL,'2017-10-19 00:00:00','Upfront','345','5','5','$request__',NULL,'Nigeria, Afghanistan','90',13,'badmusajadi1506951564, hormetintegratedservices1507348304, joshconceps1507348392,','Professional Indemnity is Required, Site Audit is Required','2017-10-17 14:41:05','fa2d24a21f940d23955e486023a72606','joshconceps1507348392',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('$request__','supply',23000000,'Anguilla','GHC - Ghana Cedis',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-20 00:00:00',14,NULL,'345','close','$request__',NULL,'2017-10-19 00:00:00','Upfront','345','5','5','$request__',NULL,'Nigeria, Afghanistan','90',13,'badmusajadi1506951564, hormetintegratedservices1507348304, joshconceps1507348392,','Professional Indemnity is Required, Site Audit is Required','2017-10-17 14:45:06','8ba89858f09ed736ea8e986e5bdb0392','joshconceps1507348392',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('$request__','supply',23000000,'Anguilla','GHC - Ghana Cedis',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-20 00:00:00',15,NULL,'345','close','$request__',NULL,'2017-10-19 00:00:00','Upfront','345','5','5','$request__',NULL,'Nigeria, Afghanistan','90',13,'badmusajadi1506951564, hormetintegratedservices1507348304, joshconceps1507348392,','Professional Indemnity is Required, Site Audit is Required','2017-10-17 14:45:19','8ba89858f09ed736ea8e986e5bdb0392','joshconceps1507348392',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('$request__','supply',23000000,'Anguilla','GHC - Ghana Cedis',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-20 00:00:00',16,NULL,'345','close','$request__',NULL,'2017-10-19 00:00:00','Upfront','345','5','5','$request__',NULL,'Nigeria, Afghanistan','90',13,'badmusajadi1506951564, hormetintegratedservices1507348304, joshconceps1507348392,','Professional Indemnity is Required, Site Audit is Required','2017-10-17 14:46:16','bd77fcaaf86739982055109e5061ba41','joshconceps1507348392',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('$request__','supply',23000000,'Anguilla','GHC - Ghana Cedis',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-20 00:00:00',17,NULL,'345','close','$request__',NULL,'2017-10-19 00:00:00','Upfront','345','5','5','$request__',NULL,'Nigeria, Afghanistan','90',13,'badmusajadi1506951564, hormetintegratedservices1507348304, joshconceps1507348392,','Professional Indemnity is Required, Site Audit is Required','2017-10-17 14:46:29','ead58cd5d4c45e5f7dee983da8f5a0ec','joshconceps1507348392',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('$request__','supply',23000000,'Anguilla','GHC - Ghana Cedis',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-20 00:00:00',18,NULL,'345','close','$request__',NULL,'2017-10-19 00:00:00','Upfront','345','5','5','$request__',NULL,'Nigeria, Afghanistan','90',13,'badmusajadi1506951564, hormetintegratedservices1507348304, joshconceps1507348392,','Professional Indemnity is Required, Site Audit is Required','2017-10-17 14:47:52','d4391fb28527850a42144a3dd0fdbbc3','joshconceps1507348392',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('$request__','supply',23000000,'Anguilla','GHC - Ghana Cedis',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-20 00:00:00',19,NULL,'345','close','$request__',NULL,'2017-10-19 00:00:00','Upfront','345','5','5','$request__',NULL,'Nigeria, Afghanistan','90',13,'badmusajadi1506951564, hormetintegratedservices1507348304, joshconceps1507348392,','Professional Indemnity is Required, Site Audit is Required','2017-10-17 14:47:59','d4391fb28527850a42144a3dd0fdbbc3','joshconceps1507348392',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('$request__','supply',23000000,'Anguilla','GHC - Ghana Cedis',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-20 00:00:00',20,NULL,'345','close','$request__',NULL,'2017-10-19 00:00:00','Upfront','345','5','5','$request__',NULL,'Nigeria, Afghanistan','90',13,'badmusajadi1506951564, hormetintegratedservices1507348304, joshconceps1507348392,','Professional Indemnity is Required, Site Audit is Required','2017-10-17 14:48:03','d4391fb28527850a42144a3dd0fdbbc3','joshconceps1507348392',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('$request__','supply',23000000,'Anguilla','GHC - Ghana Cedis',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-20 00:00:00',21,NULL,'345','close','$request__',NULL,'2017-10-19 00:00:00','Upfront','345','5','5','$request__',NULL,'Nigeria, Afghanistan','90',13,'badmusajadi1506951564, hormetintegratedservices1507348304, joshconceps1507348392,','Professional Indemnity is Required, Site Audit is Required','2017-10-17 14:48:06','d4391fb28527850a42144a3dd0fdbbc3','joshconceps1507348392',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('$request__','supply',23000000,'Anguilla','GHC - Ghana Cedis',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-20 00:00:00',22,NULL,'345','close','$request__',NULL,'2017-10-19 00:00:00','Upfront','345','5','5','$request__',NULL,'Nigeria, Afghanistan','90',13,'badmusajadi1506951564, hormetintegratedservices1507348304, joshconceps1507348392,','Professional Indemnity is Required, Site Audit is Required','2017-10-17 14:54:22','46e344f0395bd67f613d8f6b77a720bd','joshconceps1507348392','1, 2, 3',0,'2017-10-21 07:04:11',NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,'1508565713'),
	('$request__','supply',23000000,'Anguilla','GHC - Ghana Cedis',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-20 00:00:00',23,NULL,'345','close','$request__',NULL,'2017-10-19 00:00:00','Upfront','345','5','5','$request__',NULL,'Nigeria, Afghanistan','90',13,'badmusajadi1506951564, hormetintegratedservices1507348304, joshconceps1507348392,','Professional Indemnity is Required, Site Audit is Required','2017-10-17 14:55:01','0157e4b0316cc265f81bfe061d72d9de','joshconceps1507348392',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('$request__','supply',23000000,'Anguilla','GHC - Ghana Cedis',NULL,5,NULL,NULL,NULL,'onsite',NULL,'2017-10-20 00:00:00',24,NULL,'345','close','$request__',NULL,'2017-10-19 00:00:00','Milestone','345','5','5','$request__',NULL,'Nigeria, Afghanistan','90',13,'badmusajadi1506951564, hormetintegratedservices1507348304, joshconceps1507348392,','Professional Indemnity is Required, Site Audit is Required, Site Inspection is Required','2017-10-18 06:22:09','1dbecbb82f58407837d9cf566e8e5310','joshconceps1507348392','1, 2, 3',0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,NULL),
	('Test Request Title','supply',23000000,'Nigeria','CAD - Canada Dollar',NULL,5,NULL,NULL,NULL,'online',NULL,'2017-11-08 00:12:00',25,NULL,'380','close','3 Abosee Aro, Lagos',NULL,'2017-12-14 13:02:00','Upfront','50','5','10','Test Request Description',NULL,'Any, Nigeria','180',11,'badmusajadi1506951564, hormetintegratedservices1507348304, joshconceps1507348392, syntaxinnovation1506952140,','Professional Indemnity is Required, Site Audit is Required, Site Inspection is Required, Warranty is Required','2017-10-20 00:21:49','a42f214f6dbb2378b31dd6e6d10321a8','syntaxinnovation1506952140',NULL,0,'2017-10-20 00:12:00','10','limited','10','5',1,0,1,0,0,1,1,1,NULL),
	('New Requests - RFQ','supply',23000000,'Austria','CAD - Canada Dollar',NULL,10,NULL,NULL,NULL,'onsite',NULL,'2017-10-28 12:12:00',26,NULL,'400','close','New Requests - RFQ',NULL,'2017-10-18 12:12:00','Upfront','30','5','3','New Requests - RFQ','2017-10-27 12:12:00','Nigeria, Afghanistan, American Samoa, Andorra','60',11,'hormetintegratedservices1507348304, joshconceps1507348392, tsabointech1507348432,','Professional Indemnity is Required, Site Audit is Required, Site Inspection is Required, Warranty is Required','2017-10-20 00:27:24','eb97946b2018b7e5a49c3a50a768fd5f','syntaxinnovation1506952140','1, 9',0,'2017-10-20 00:30:12','5','limited','5','5',1,0,1,1,1,0,0,0,NULL);

/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rfqcontents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rfqcontents`;

CREATE TABLE `rfqcontents` (
  `title` text,
  `mainNumber` int(11) DEFAULT NULL,
  `sectionNumber` double DEFAULT NULL,
  `subSectionNumber` double DEFAULT NULL,
  `isTitle` text,
  `isSection` tinyint(1) DEFAULT '0',
  `isSubsection` tinyint(1) DEFAULT '0',
  `content` text,
  `requestHash` varchar(255) DEFAULT NULL,
  `dateCreated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `lastModified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Administrator','2017-10-30 01:37:53','2017-10-30 01:37:53'),
	(2,'sub','sub','2017-10-31 12:44:13','2017-10-31 12:44:13');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`)
VALUES
	(1,'site.title','Site Title','bridgr','','text',1,'Site'),
	(2,'site.description','Site Description','Site Description','','text',2,'Site'),
	(3,'site.logo','Site Logo','','','image',3,'Site'),
	(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','UA-108478224-1','','text',4,'Site'),
	(5,'admin.bg_image','Admin Background Image','settings/October2017/macbook setup1.jpg','','image',5,'Admin'),
	(6,'admin.title','Admin Title','Bridgr','','text',1,'Admin'),
	(7,'admin.description','Admin Description','Welcome to Bridgr Dashboard','','text',2,'Admin'),
	(8,'admin.loader','Admin Loader','','','image',3,'Admin'),
	(9,'admin.icon_image','Admin Icon Image','settings/October2017/apple grey.png','','image',4,'Admin'),
	(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','897088659312-647n0c5nskdfberepbvj14cpu33opis1.apps.googleusercontent.com','','text',1,'Admin');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table supplierfilters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `supplierfilters`;

CREATE TABLE `supplierfilters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filterName` varchar(100) DEFAULT NULL,
  `filterStringRef` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `supplierfilters` WRITE;
/*!40000 ALTER TABLE `supplierfilters` DISABLE KEYS */;

INSERT INTO `supplierfilters` (`id`, `filterName`, `filterStringRef`)
VALUES
	(1,'Business Certification Required','bidderHasbusinessCertification'),
	(2,'Service Warranty & Guarantee Required','bidderHasServiceWarranty'),
	(3,'Quality Policy Required','bidderHasQualityPolicy'),
	(4,'Audited Financial Statement Required','bidderHasAuditedFinancialStatement'),
	(5,'Working Permits License Required','bidderHasPermitsLicense'),
	(6,'VAT TIN Certificate Required','bidderHasVAT_TINCertificate'),
	(7,'Income Tax Clearance Required','bidderHasIncomeTaxClearance'),
	(8,'Safety Policy Required','bidderHasSafetyPolicy');

/*!40000 ALTER TABLE `supplierfilters` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `terms`;

CREATE TABLE `terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `termTitle` varchar(255) DEFAULT NULL,
  `termContent` text,
  `termCreator` varchar(255) DEFAULT NULL,
  `createdTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `terms` WRITE;
/*!40000 ALTER TABLE `terms` DISABLE KEYS */;

INSERT INTO `terms` (`id`, `termTitle`, `termContent`, `termCreator`, `createdTime`)
VALUES
	(1,'Visits: This is how many times ','Pages/Visit: This number is the average amount of pages a single visitor is viewing before leaving the website. Remember that this is just an average, some visitors view many more pages and some may view less.','system','2017-10-17 22:16:44'),
	(2,'ounce Rate % is the amount of people','Pages/Visit: This number is the average amount of pages a single visitor is viewing before leaving the website. Remember that this is just an average, some visitors view many more pages and some may view less.','system','2017-10-17 22:16:44'),
	(3,'Geographic: Analytics offers','Pages/Visit: This number is the average amount of pages a single visitor is viewing before leaving the website. Remember that this is just an average, some visitors view many more pages and some may view less.','system','2017-10-17 22:16:44'),
	(4,'Bounce Rate can be determined','Pages/Visit: This number is the average amount of pages a single visitor is viewing before leaving the website. Remember that this is just an average, some visitors view many more pages and some may view less.','joshconceps1507348392','2017-10-17 22:16:44'),
	(5,'Bounce Rate can be determined','Pages/Visit: This number is the average amount of pages a single visitor is viewing before leaving the website. Remember that this is just an average, some visitors view many more pages and some may view less.','system','2017-10-17 22:16:44'),
	(6,'Bounce Rate can be determined','Pages/Visit: This number is the average amount of pages a single visitor is viewing before leaving the website. Remember that this is just an average, some visitors view many more pages and some may view less.','joshconceps1507348392','2017-10-17 22:16:44'),
	(7,'termConditions','termConditions','adeboyo1507842531',NULL),
	(8,'The Location.reload()','Aug 24, 2017 - The Location.reload() method reloads the resource from the current URL. Its optional unique parameter is a Boolean, which, when it is true, causes the page to always be reloaded from the server. If it is false or not specified, the browser may reload the page from its cache.','adeboyo1507842531',NULL),
	(9,'Payment Terms in Synnod','Pages/Visit: This number is the average amount of pages a single visitor is viewing before leaving the website. Remember that this is just an average, some visitors view many more pages and some may view less.','syntaxinnovation1506952140','2017-10-20 00:29:42');

/*!40000 ALTER TABLE `terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table unitsofmeasure
# ------------------------------------------------------------

DROP TABLE IF EXISTS `unitsofmeasure`;

CREATE TABLE `unitsofmeasure` (
  `UNITS` varchar(255) DEFAULT NULL,
  `ABBREVIATIONS` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `unitsofmeasure` WRITE;
/*!40000 ALTER TABLE `unitsofmeasure` DISABLE KEYS */;

INSERT INTO `unitsofmeasure` (`UNITS`, `ABBREVIATIONS`)
VALUES
	('KILOMETER ','km'),
	('SQUARE KILOMETER','km2'),
	('MILLIMETER ','mm'),
	('CENTIMETER','cm'),
	('METER','mtr'),
	('INCH','in'),
	('YARD','yrd'),
	('FOOT','ft'),
	('SQUARE FEET','ft2'),
	('CUBIC FEET','Ft³'),
	('SQUARE METER','mtr2'),
	('CUBIC METER','mtr³'),
	('LITRE','ltr'),
	('GALLON ','gal'),
	('DRUM','drm'),
	('ONCE','oz'),
	('POUND','lbs'),
	('STONE','stn'),
	('TON','ton'),
	('MILLIGRAM','mg'),
	('GRAM','grm'),
	('KILOGRAM','kg'),
	('PIECES','pcs'),
	('PACKET','pkt'),
	('NUMBER','nr'),
	('ROLL','rol'),
	('MONTHLY','mnt'),
	('WEEK','wk'),
	('DAILY RATE','dlr'),
	('HOURLY','hrl'),
	('LUMPSUM','lmp'),
	('','');

/*!40000 ALTER TABLE `unitsofmeasure` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table userdetails
# ------------------------------------------------------------

DROP TABLE IF EXISTS `userdetails`;

CREATE TABLE `userdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(100) DEFAULT NULL,
  `userMobile` varchar(100) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `stateOfResidence` varchar(100) DEFAULT NULL,
  `homeAddress` varchar(100) DEFAULT NULL,
  `subscriptonId` int(11) DEFAULT NULL,
  `isCompanyInfo` tinyint(1) DEFAULT NULL,
  `typeTag` text,
  `eSignature` varchar(100) DEFAULT NULL,
  `smsVerifyCode` varchar(100) DEFAULT NULL,
  `emailVerifyString` varchar(100) DEFAULT NULL,
  `isMobileVerified` tinyint(1) DEFAULT '0',
  `isEmailVerified` tinyint(1) DEFAULT '0',
  `userPassword` varchar(100) DEFAULT NULL,
  `activeToken` varchar(100) DEFAULT NULL,
  `userCountry` varchar(100) DEFAULT NULL,
  `userState` varchar(100) DEFAULT NULL,
  `userAddress` varchar(100) DEFAULT NULL,
  `userWebsite` varchar(100) DEFAULT NULL,
  `userFacebook` varchar(100) DEFAULT NULL,
  `userTwitter` varchar(100) DEFAULT NULL,
  `userLinkedin` varchar(100) DEFAULT NULL,
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userkey1` (`userEmail`) USING BTREE,
  UNIQUE KEY `userkey2` (`userMobile`),
  KEY `eSignature` (`eSignature`,`smsVerifyCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `userdetails` WRITE;
/*!40000 ALTER TABLE `userdetails` DISABLE KEYS */;

INSERT INTO `userdetails` (`id`, `userEmail`, `userMobile`, `firstName`, `lastName`, `stateOfResidence`, `homeAddress`, `subscriptonId`, `isCompanyInfo`, `typeTag`, `eSignature`, `smsVerifyCode`, `emailVerifyString`, `isMobileVerified`, `isEmailVerified`, `userPassword`, `activeToken`, `userCountry`, `userState`, `userAddress`, `userWebsite`, `userFacebook`, `userTwitter`, `userLinkedin`, `createdTime`, `deleted_at`)
VALUES
	(67,'niyi@bridgr.com','2347037477380','AbdulFathah','Salaudeen',NULL,NULL,0,NULL,NULL,NULL,'958766','051a3f4d5cb85195d8b4eb52c3dd4387',1,1,'8bd10a61f0d7f76f18e63431c4ec4cc8','4cc01c7fe20d17b6c673751b99276c8c','Nigeria','Lagos','$refreshSession-',NULL,'1','1','1','2017-10-17 05:04:28',NULL),
	(69,'michael@okoh.co.uk','08148888971','Michael','Okoh','Lagos','D55 Landbridge Avenue, Victoria Island, Lagos',0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'Nigeria','Lagos',NULL,NULL,'0','0','0','2017-11-18 22:29:07','2017-11-18 21:29:17'),
	(70,'neo@okoh.co.uk','09054867834','Michael','Smatt','Lagos',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','2017-11-19 17:30:44',NULL);

/*!40000 ALTER TABLE `userdetails` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,1,'Michael Okoh','trojan@hotels.ng','users/default.png','$2y$10$EaWPpwMIgaUIjWz/y0pFUePnFzzCE9RnbULCgyzFR0w7lu.paFQ7e','d6EnbQwREoULB0IuYoxJW6No0EbM6n34vbFIbAUEv7ooT9aT4H7mlclqX5Zi','2017-10-30 01:40:59','2017-10-30 01:40:59'),
	(2,NULL,'Emesibe Ene','emesibe@bridgr.com','users/default.png','$2y$10$T7NjLDITkd5TSM8UqUSPj.IMGnsJpUJRjs0zGRGRxWEIQhLYErmSe',NULL,'2017-11-07 09:43:58','2017-11-07 09:43:58');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
