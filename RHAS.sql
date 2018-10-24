-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: RHAS
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AGENT_REPORT_APPLICANTS`
--

DROP TABLE IF EXISTS `AGENT_REPORT_APPLICANTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AGENT_REPORT_APPLICANTS` (
  `AADHAR_COPY` enum('YES','NO') DEFAULT NULL,
  `BIRTH_CERT_COPY` enum('YES','NO') DEFAULT NULL,
  `INCOME_CERT_COPY` enum('YES','NO') DEFAULT NULL,
  `RATION_COPY` enum('YES','NO') DEFAULT NULL,
  `MARRIAGE_CERT_COPY` enum('YES','NO','NOT APPLICABLE') DEFAULT NULL,
  `DEATH_CERT_COPY` enum('YES','NO','NOT APPLICABLE') DEFAULT NULL,
  `AGENT_NUM` varchar(6) DEFAULT NULL,
  `APPLI_NUM` varchar(6) DEFAULT NULL,
  KEY `FK_rep_app` (`APPLI_NUM`),
  KEY `FK_rep_app1` (`AGENT_NUM`),
  CONSTRAINT `AGENT_REPORT_APPLICANTS_ibfk_1` FOREIGN KEY (`APPLI_NUM`) REFERENCES `APPLICANTS` (`Applicant_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `AGENT_REPORT_APPLICANTS_ibfk_2` FOREIGN KEY (`AGENT_NUM`) REFERENCES `SURVEY_AGENT` (`Employee_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AGENT_REPORT_APPLICANTS`
--

LOCK TABLES `AGENT_REPORT_APPLICANTS` WRITE;
/*!40000 ALTER TABLE `AGENT_REPORT_APPLICANTS` DISABLE KEYS */;
/*!40000 ALTER TABLE `AGENT_REPORT_APPLICANTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AGENT_REPORT_REGION`
--

DROP TABLE IF EXISTS `AGENT_REPORT_REGION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AGENT_REPORT_REGION` (
  `REGION_CODE` varchar(6) DEFAULT NULL,
  `GDP_REGION` decimal(10,2) DEFAULT NULL,
  `NO_FAMILIES` int(5) DEFAULT NULL,
  `LAND_TYPE` enum('AGRICULTURAL','BARREN','INDUSTRIAL','RESIDENTIAL') DEFAULT NULL,
  `AGENT_NUMB` varchar(6) DEFAULT NULL,
  KEY `FK_rep_reg` (`AGENT_NUMB`),
  KEY `FK_rep_reg1` (`REGION_CODE`),
  CONSTRAINT `AGENT_REPORT_REGION_ibfk_1` FOREIGN KEY (`AGENT_NUMB`) REFERENCES `SURVEY_AGENT` (`Employee_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `AGENT_REPORT_REGION_ibfk_2` FOREIGN KEY (`REGION_CODE`) REFERENCES `PROJECT` (`SITE_CODE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AGENT_REPORT_REGION`
--

LOCK TABLES `AGENT_REPORT_REGION` WRITE;
/*!40000 ALTER TABLE `AGENT_REPORT_REGION` DISABLE KEYS */;
/*!40000 ALTER TABLE `AGENT_REPORT_REGION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APPLICANTS`
--

DROP TABLE IF EXISTS `APPLICANTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APPLICANTS` (
  `Applicant_no` varchar(6) NOT NULL,
  `Aadhar_no` bigint(6) DEFAULT NULL,
  `First_name` char(20) DEFAULT NULL,
  `Middle_name` char(20) DEFAULT NULL,
  `Last_name` char(20) DEFAULT NULL,
  `Income_annum` int(8) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` enum('FEMALE','MALE','OTHER') DEFAULT NULL,
  `Marital_status` enum('MARRIED','UNMARRIED','WIDOWED') DEFAULT NULL,
  `VILLAGE` varchar(50) DEFAULT NULL,
  `TALUKA` varchar(50) DEFAULT NULL,
  `DISTRICT` varchar(50) DEFAULT NULL,
  `STATE` varchar(50) DEFAULT NULL,
  `Agent_ID` varchar(6) DEFAULT NULL,
  `PROJECT_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`Applicant_no`),
  UNIQUE KEY `Aadhar_no` (`Aadhar_no`),
  KEY `FK_project_appl` (`PROJECT_ID`),
  KEY `FK_appl_sag` (`Agent_ID`),
  CONSTRAINT `APPLICANTS_ibfk_1` FOREIGN KEY (`PROJECT_ID`) REFERENCES `PROJECT` (`SITE_CODE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `APPLICANTS_ibfk_2` FOREIGN KEY (`Agent_ID`) REFERENCES `CSMC` (`Officer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APPLICANTS`
--

LOCK TABLES `APPLICANTS` WRITE;
/*!40000 ALTER TABLE `APPLICANTS` DISABLE KEYS */;
INSERT INTO `APPLICANTS` VALUES ('APP002',334526789876,'ARAV','AMIT','SHAH',100000,'1978-07-06','MALE','MARRIED','DHANPUR','MARWAHI','BILASPUR','CHATTISGARH',NULL,NULL),('APP003',324526789876,'Aasiya','SHAM','Kamal',104000,'1977-07-06','FEMALE','MARRIED','LOHARI','MARWAHI','BILASPUR','CHATTISGARH',NULL,NULL),('APP004',334345667898,'Aatha','RAM','SHARMA',304000,'1970-08-16','FEMALE','UNMARRIED','BATRA','PALI','KORBA','CHATTISGARH',NULL,NULL),('APP005',303434566798,'PRASAD','ANAND','SAHU',504000,'1973-08-16','MALE','UNMARRIED','SIRLI','PALI','KORBA','CHATTISGARH',NULL,NULL),('APP006',303422566798,'ARPITA','AYUSH','JAIN',500000,'1971-04-19','FEMALE','MARRIED','AMERI','ARANG','RAIPUR','CHATTISGARH',NULL,NULL),('APP007',303435667983,'PRASHANT','ANUJ','SAHU',204000,'1976-08-16','MALE','MARRIED','SIRLI','PALI','RAIPUR','CHATTISGARH',NULL,NULL),('APP008',384521419085,'Sanchaya','Prabhat','Ismail',600000,'1983-05-19','MALE','MARRIED','DEVDHA','BAGH','DHAR','MADHYA PRADESH',NULL,NULL),('APP009',394604029754,'Aashish','Dhanalakshmi','Jain',400000,'1996-07-14','MALE','UNMARRIED','JALI','BAGH','DHAR','MADHYA PRADESH',NULL,NULL),('APP010',311871083007,'Abhinav','Ranjita','Raj',700000,'1986-07-12','MALE','MARRIED','DAVRI','ARON','GUNA','MADHYA PRADESH',NULL,NULL),('APP011',310053484173,'Amba','Aslesha','Ismail',800000,'1959-12-15','FEMALE','MARRIED','PATAN','ARON','GUNA','MADHYA PRADESH',NULL,NULL),('APP012',314980129563,'Anandini','Shishir','Patel',900000,'1975-09-01','FEMALE','MARRIED','GANJ','GUNOR','PANNA','MADHYA PRADESH',NULL,NULL),('APP013',327756147952,'Aruni','Navin','Singh',1000000,'2000-03-18','FEMALE','UNMARRIED','KAMTANA','GUNOR','PANNA','MADHYA PRADESH',NULL,NULL),('APP014',321153583673,'Charudutta','Gajalakshmi','Sathe',1500000,'1978-03-16','FEMALE','WIDOWED','DARI','NASHIK','NASHIK','MAHARASHTRA',NULL,NULL),('APP015',353331935515,'Chhabi','Darpan','Kumar',1200000,'1966-12-10','FEMALE','MARRIED','MATORI','NASHIK','NASHIK','MAHARASHTRA',NULL,NULL),('APP016',352436909397,'Chitrangada','Kamraj','Raj',900000,'1983-09-14','MALE','MARRIED','ALAND','DEOLGAON RAJA','BULDHANA','MAHARASHTRA',NULL,NULL),('APP017',302328860406,'Daksha','Suvarna','Khan',700000,'1953-09-20','FEMALE','MARRIED','UMBARKHED','DEOLGAON RAJA','BULDHANA','MAHARASHTRA',NULL,NULL),('APP018',382888008610,'Dayakara','Avikshit','Ismail',200000,'1968-12-16','MALE','UNMARRIED','JALOD','SHIRPUR','DHULE','MAHARASHTRA',NULL,NULL),('APP019',356940585751,'Deepashikha','Jalindra','Raj',300000,'1979-07-24','OTHER','UNMARRIED','MANDAL','SHIRPUR','DHULE','MAHARASHTRA',NULL,NULL),('APP020',307692596735,'Dheer','Sarasvat','Raj',400000,'1977-07-29','MALE','UNMARRIED','KAIKALA','HARIPAL','HOOGLY','WEST BENGAL',NULL,NULL),('APP021',320313339834,'Divena','Shrilata','Ismail',200000,'1983-05-30','FEMALE','MARRIED','JEJUR','HARIPAL','HOOGLY','WEST BENGAL',NULL,NULL),('APP022',361049386397,'Dulari','Agriya','Jain',800000,'1980-04-10','MALE','MARRIED','JALUNDI','NANOOR','BIRBHUM','WEST BENGAL',NULL,NULL),('APP023',374882245807,'Fanibhusan','Chaitali','Raj',300000,'1989-03-21','FEMALE','MARRIED','THUPSARA','NANOOR','BIRBHUM','WEST BENGAL',NULL,NULL),('APP024',366900301930,'Gayatri','Sulalit','Khan',560000,'1962-01-24','FEMALE','MARRIED','DHOLA','KULPI','SOUTH 24 PARGANAS','WEST BENGAL',NULL,NULL),('APP025',315442849274,'Giridari','Puskara','Ismail',670000,'1962-09-20','MALE','MARRIED','RAMKISHORE','KULPI','SOUTH 24 PARGANAS','WEST BENGAL',NULL,NULL),('APP026',396633842533,'Gopa','Ratnakar','Singh',100000,'1977-07-06','MALE','MARRIED','DHANPUR','MARWAHI','BILASPUR','CHATTISGARH',NULL,NULL),('APP027',382707387247,'Gopesh','Hemachandra','Ismail',104000,'1967-07-08','MALE','MARRIED','LOHARI','MARWAHI','BILASPUR','CHATTISGARH',NULL,NULL),('APP028',370757627197,'Hriday','Chanda','Ismail',304000,'1970-08-16','MALE','UNMARRIED','BATRA','PALI','KORBA','CHATTISGARH',NULL,NULL),('APP029',319848212970,'Iham','Trishul','Ismail',504000,'1972-08-16','MALE','UNMARRIED','SIRLI','PALI','KORBA','CHATTISGARH',NULL,NULL),('APP030',370273923644,'Ikshu','Manimala','Kumar',500000,'1971-05-19','FEMALE','MARRIED','AMERI','ARANG','RAIPUR','CHATTISGARH',NULL,NULL),('APP031',363556825547,'Ilavalagan','Vinanti','Jain',204000,'1978-08-16','MALE','MARRIED','SIRLI','PALI','RAIPUR','CHATTISGARH',NULL,NULL),('APP032',385782568985,'Ina','Susita','Khan',600000,'1966-10-16','FEMALE','WIDOWED','DEVDHA','BAGH','DHAR','MADHYA PRADESH',NULL,NULL),('APP033',386704464445,'Indukala','Suchi','Raj',400000,'1972-04-29','FEMALE','MARRIED','JALI','BAGH','DHAR','MADHYA PRADESH',NULL,NULL),('APP034',303081332440,'Izhar','Shripati','Patel',700000,'1966-07-12','MALE','MARRIED','DAVRI','ARON','GUNA','MADHYA PRADESH',NULL,NULL),('APP035',342386455022,'Joel','Ratnabala','Jain',800000,'1993-06-22','OTHER','UNMARRIED','PATAN','ARON','GUNA','MADHYA PRADESH',NULL,NULL),('APP036',380746960491,'Kalika','Urshita','Patel',900000,'1975-09-08','FEMALE','MARRIED','GANJ','GUNOR','PANNA','MADHYA PRADESH',NULL,NULL),('APP037',385782568986,'Ina','Sushan','Jain',1000000,'1967-10-16','FEMALE','WIDOWED','KAMTANA','GUNOR','PANNA','MADHYA PRADESH',NULL,NULL),('APP038',217172873714,'Kanimoli','Muskan','Jain',1500000,'1980-07-24','FEMALE','WIDOWED','DARI','NASHIK','NASHIK','MAHARASHTRA',NULL,NULL),('APP039',703058627244,'Kanitha','Valmiki','Ismail',1200000,'1965-04-01','FEMALE','MARRIED','MATORI','NASHIK','NASHIK','MAHARASHTRA',NULL,NULL),('APP040',833797222611,'Kaushalya','Nandan','Patel',900000,'1953-02-14','MALE','MARRIED','ALAND','DEOLGAON RAJA','BULDHANA','MAHARASHTRA',NULL,'PID015'),('APP041',133031676002,'Kavan','Satyarupa','Ismail',700000,'1984-10-05','FEMALE','MARRIED','UMBARKHED','DEOLGAON RAJA','BULDHANA','MAHARASHTRA',NULL,NULL),('APP042',793468547336,'Keshav','Ushashi','Jain',200000,'1974-09-26','MALE','UNMARRIED','JALOD','SHIRPUR','DHULE','MAHARASHTRA',NULL,NULL),('APP043',217172873715,'Nandini','Manik','Parth',300000,'1983-10-25','FEMALE','UNMARRIED','MANDAL','SHIRPUR','DHULE','MAHARASHTRA',NULL,NULL),('APP044',945209772489,'Latafat','Shuchismita','Raj',400000,'1976-07-29','MALE','UNMARRIED','KAIKALA','HARIPAL','HOOGLY','WEST BENGAL',NULL,NULL),('APP045',885268428156,'Leena','Anjushree','Jain',200000,'1986-05-30','FEMALE','MARRIED','JEJUR','HARIPAL','HOOGLY','WEST BENGAL',NULL,NULL),('APP046',755242078000,'Lochan','Foolan','Patel',800000,'1983-04-10','MALE','MARRIED','JALUNDI','NANOOR','BIRBHUM','WEST BENGAL',NULL,NULL),('APP047',403329180439,'Madhavilata','Shreya','Kumar',300000,'1985-03-21','FEMALE','MARRIED','THUPSARA','NANOOR','BIRBHUM','WEST BENGAL',NULL,NULL),('APP048',661943417167,'Malina','Charudutta','Patel',560000,'1965-01-24','FEMALE','WIDOWED','DHOLA','KULPI','SOUTH 24 PARGANAS','WEST BENGAL',NULL,NULL),('APP049',260610802020,'Mandarmalika','Milan','Raj',670000,'1967-09-20','MALE','MARRIED','RAMKISHORE','KULPI','SOUTH 24 PARGANAS','WEST BENGAL',NULL,NULL),('APP050',481034345515,'Manjubala','Kusumavati','Ismail',100000,'1992-04-01','FEMALE','WIDOWED','DHANPUR','MARWAHI','BILASPUR','CHATTISGARH',NULL,NULL),('APP051',336964176465,'Manohar','Suman','Patel',104000,'1952-01-15','MALE','MARRIED','LOHARI','MARWAHI','BILASPUR','CHATTISGARH',NULL,NULL),('APP052',747787309347,'Marichi','Shripad','Raj',304000,'1955-05-14','OTHER','UNMARRIED','BATRA','PALI','KORBA','CHATTISGARH',NULL,NULL),('APP053',982135165903,'Mausumi','Harishchandra','Singh',504000,'1959-12-15','MALE','UNMARRIED','SIRLI','PALI','KORBA','CHATTISGARH',NULL,NULL),('APP054',320604354399,'Nandika','Shama','Raj',500000,'1982-06-22','FEMALE','MARRIED','AMERI','ARANG','RAIPUR','CHATTISGARH',NULL,NULL),('APP055',577512323232,'Niharika','Devanand','Singh',204000,'1975-12-27','MALE','MARRIED','SIRLI','PALI','RAIPUR','CHATTISGARH',NULL,NULL),('APP060',257273961316,'Nikunji','Balachandrav','Kumar',600000,'1977-03-25','FEMALE','WIDOWED','DEVDHA','BAGH','DHAR','MADHYA PRADESH',NULL,NULL),('APP061',489091274998,'Niramay','Radhak','Ismail',400000,'1976-07-23','MALE','MARRIED','JALI','BAGH','DHAR','MADHYA PRADESH',NULL,NULL),('APP062',256452845072,'Niti','Premila','Khan',700000,'1989-04-04','FEMALE','MARRIED','DAVRI','ARON','GUNA','MADHYA PRADESH',NULL,NULL),('APP063',343386455022,'Joel','Ratna','Jain',800000,'1970-04-01','OTHER','UNMARRIED','PATAN','ARON','GUNA','MADHYA PRADESH',NULL,NULL),('APP064',193011328865,'Palash','Ayushman','Kumar',900000,'1982-02-16','MALE','MARRIED','GANJ','GUNOR','PANNA','MADHYA PRADESH',NULL,NULL),('APP065',272082935573,'Paramananda','Tanay','Jain',1000000,'1961-01-06','FEMALE','WIDOWED','KAMTANA','GUNOR','PANNA','MADHYA PRADESH',NULL,NULL),('APP066',445642696002,'Parul','Swapnil','Patel',1500000,'1966-06-28','FEMALE','WIDOWED','DARI','NASHIK','NASHIK','MAHARASHTRA',NULL,NULL),('APP067',632084620598,'Phiroza','Vyomesh','Raj',1200000,'1955-12-20','FEMALE','MARRIED','MATORI','NASHIK','NASHIK','MAHARASHTRA',NULL,NULL),('APP068',843242350846,'Prakash','Kiran','Raj',900000,'1984-11-22','MALE','MARRIED','ALAND','DEOLGAON RAJA','BULDHANA','MAHARASHTRA',NULL,NULL),('APP069',506157492554,'Pratima','Samata','Jain',700000,'1957-03-20','FEMALE','MARRIED','UMBARKHED','DEOLGAON RAJA','BULDHANA','MAHARASHTRA',NULL,NULL),('APP070',926947197527,'Priyank','Vijendra','Singh',200000,'1956-12-20','MALE','UNMARRIED','JALOD','SHIRPUR','DHULE','MAHARASHTRA',NULL,NULL),('APP071',645981199839,'Pundarik','Kapalini','Khan',300000,'1983-10-25','FEMALE','UNMARRIED','MANDAL','SHIRPUR','DHULE','MAHARASHTRA',NULL,NULL),('APP072',753162063538,'Rachita','Banbihari','Singh',400000,'1976-07-29','MALE','UNMARRIED','KAIKALA','HARIPAL','HOOGLY','WEST BENGAL',NULL,NULL),('APP073',768043192141,'Raheem','Agneya','Ismail',200000,'1986-05-30','FEMALE','MARRIED','JEJUR','HARIPAL','HOOGLY','WEST BENGAL',NULL,NULL),('APP074',880081245580,'Rajanya','Samantha','Khan',800000,'1983-04-10','MALE','MARRIED','JALUNDI','NANOOR','BIRBHUM','WEST BENGAL',NULL,NULL),('APP075',574255951055,'Rashmika','Parthivi','Raj',300000,'1985-03-21','FEMALE','MARRIED','THUPSARA','NANOOR','BIRBHUM','WEST BENGAL',NULL,NULL),('APP076',162705127556,'Ratnajyouti','Shatrughna','Khan',560000,'1965-01-24','FEMALE','MARRIED','DHOLA','KULPI','SOUTH 24 PARGANAS','WEST BENGAL',NULL,NULL),('APP077',343930003713,'Ravinandan','Subhan','Ismail',670000,'1967-09-20','MALE','MARRIED','RAMKISHORE','KULPI','SOUTH 24 PARGANAS','WEST BENGAL',NULL,NULL);
/*!40000 ALTER TABLE `APPLICANTS` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER generate_applicant_id
BEFORE INSERT ON APPLICANTS
FOR EACH ROW
BEGIN
INSERT INTO Sequence_Applicants VALUES (NULL);
SET NEW.Applicant_no = CONCAT('APP', LPAD(LAST_INSERT_ID(), 3, '0'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER reject_applicants1
BEFORE DELETE ON APPLICANTS
FOR EACH ROW
BEGIN
INSERT INTO REJECTED_APPLICANTS
VALUES ( OLD.Applicant_no , OLD.First_name );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `APPL_DOCS_SUBMIT`
--

DROP TABLE IF EXISTS `APPL_DOCS_SUBMIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APPL_DOCS_SUBMIT` (
  `aadhar_copy` enum('YES','NO') DEFAULT NULL,
  `birth_cert_copy` enum('YES','NO') DEFAULT NULL,
  `income_cert_copy` enum('YES','NO') DEFAULT NULL,
  `ration_copy` enum('YES','NO') DEFAULT NULL,
  `marriage_copy` enum('YES','NO','NOT APPLICABLE') DEFAULT NULL,
  `death_copy` enum('YES','NO','NOT APPLICABLE') DEFAULT NULL,
  `TIME_OF_SUBMIT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `appl_num` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APPL_DOCS_SUBMIT`
--

LOCK TABLES `APPL_DOCS_SUBMIT` WRITE;
/*!40000 ALTER TABLE `APPL_DOCS_SUBMIT` DISABLE KEYS */;
/*!40000 ALTER TABLE `APPL_DOCS_SUBMIT` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER reject_applicants
AFTER INSERT ON APPL_DOCS_SUBMIT
FOR EACH ROW
IF ( NEW.aadhar_copy = 'NO' OR NEW.birth_cert_copy = 'NO' OR NEW.income_cert_copy = 'NO' OR NEW.ration_copy = 'NO' OR NEW.marriage_copy = 'NO' OR NEW.death_copy = 'NO' )
THEN
DELETE FROM APPLICANTS
WHERE Applicant_no = NEW.appl_num;
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `COMPANY`
--

DROP TABLE IF EXISTS `COMPANY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPANY` (
  `Company_ID` varchar(6) NOT NULL,
  `Status` enum('NATIONAL','STATE') DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Contact_no` bigint(10) DEFAULT NULL,
  `Experience` int(5) DEFAULT NULL,
  `No_projects` int(2) DEFAULT NULL,
  `MOH_officer` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`Company_ID`),
  KEY `FK_moh_company` (`MOH_officer`),
  CONSTRAINT `COMPANY_ibfk_1` FOREIGN KEY (`MOH_officer`) REFERENCES `MOH` (`Officer_Code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPANY`
--

LOCK TABLES `COMPANY` WRITE;
/*!40000 ALTER TABLE `COMPANY` DISABLE KEYS */;
INSERT INTO `COMPANY` VALUES ('COM001','NATIONAL','PHASE CONSTRUCTION',9856745362,10,4,'MOH001'),('COM002','STATE','SUNSHINE CONSTRUCTION',9675345627,20,5,'MOH001'),('COM003','STATE','DREAM CONSTRUCTION',8789456732,20,3,'MOH001'),('COM004','NATIONAL','PRESTIGE CONSTUCTION',7066188546,15,4,'MOH001'),('COM005','NATIONAL','SKYLINE CONSTRUCTION',8456786548,25,5,'MOH001'),('COM006','STATE','MOONLIGHT CONSTRUCTION',8976856736,15,4,'MOH001'),('COM007','NATIONAL','QUALITY CONSTRUCTION',8567386754,27,4,'MOH001'),('COM008','STATE','CASTLE CONSTRUCTION',9845367865,12,6,'MOH001'),('COM009','NATIONAL','INFINITY CONSTRUCTION',8796785647,25,3,'MOH001'),('COM010','STATE','HORIZON CONSTRUCTION',8456785647,20,2,'MOH001');
/*!40000 ALTER TABLE `COMPANY` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER generate_company_sequence
BEFORE INSERT ON COMPANY
FOR EACH ROW
BEGIN
INSERT INTO Sequence_Company VALUES (NULL);
SET NEW.Company_ID = CONCAT('COM', LPAD(LAST_INSERT_ID(), 3, '0'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `CPR`
--

DROP TABLE IF EXISTS `CPR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CPR` (
  `P_ID` varchar(6) NOT NULL,
  `p1` enum('YES','NO') DEFAULT NULL,
  `p2` enum('YES','NO') DEFAULT NULL,
  `p3` enum('YES','NO') DEFAULT NULL,
  `p4` enum('YES','NO') DEFAULT NULL,
  PRIMARY KEY (`P_ID`),
  CONSTRAINT `CPR_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `PROJECT` (`SITE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CPR`
--

LOCK TABLES `CPR` WRITE;
/*!40000 ALTER TABLE `CPR` DISABLE KEYS */;
INSERT INTO `CPR` VALUES ('PID004','YES','YES','YES','YES'),('PID007','YES','YES','YES','NO'),('PID010','YES','NO','NO','NO'),('PID019','YES','YES','YES','NO'),('PID023','YES','YES','YES','NO'),('PID024','YES','YES','YES','YES');
/*!40000 ALTER TABLE `CPR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CSMC`
--

DROP TABLE IF EXISTS `CSMC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CSMC` (
  `Officer_ID` varchar(6) NOT NULL,
  `f_name` char(20) DEFAULT NULL,
  `m_name` char(20) DEFAULT NULL,
  `l_name` char(20) DEFAULT NULL,
  `MOH_code` varchar(6) DEFAULT NULL,
  `State` char(20) DEFAULT NULL,
  PRIMARY KEY (`Officer_ID`),
  KEY `FK_csmc_moh` (`MOH_code`),
  CONSTRAINT `CSMC_ibfk_1` FOREIGN KEY (`MOH_code`) REFERENCES `MOH` (`Officer_Code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CSMC`
--

LOCK TABLES `CSMC` WRITE;
/*!40000 ALTER TABLE `CSMC` DISABLE KEYS */;
INSERT INTO `CSMC` VALUES ('CSM001','MILIND','RAJ','GOYANKA','MOH001','CHATTISGARH'),('CSM002','SHIV','KUMAR','SHARMA','MOH001','MADHYA PRADESH'),('CSM003','AVINASH','NITIN','BHAT','MOH001','MAHARASHTRA'),('CSM004','ABHIK','SUBIR','BHATTACHARJEE','MOH001','WEST BENGAL');
/*!40000 ALTER TABLE `CSMC` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER generate_CSMC_id
BEFORE INSERT ON CSMC
FOR EACH ROW
BEGIN
INSERT INTO Sequence_CSMC VALUES (NULL);
SET NEW.Officer_ID = CONCAT('CSM', LPAD(LAST_INSERT_ID(), 3, '0'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `CSMC_APPOINT_AGENT`
--

DROP TABLE IF EXISTS `CSMC_APPOINT_AGENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CSMC_APPOINT_AGENT` (
  `SURVEY_AGENT_NO` varchar(6) DEFAULT NULL,
  `PROJ_ID` varchar(6) DEFAULT NULL,
  `AGENT_NO` varchar(6) DEFAULT NULL,
  KEY `FK_csmc_appoint_agent1` (`AGENT_NO`),
  KEY `FK_csmc_appoint_agent` (`PROJ_ID`),
  KEY `FK_csmc_appoint_agent2` (`SURVEY_AGENT_NO`),
  CONSTRAINT `CSMC_APPOINT_AGENT_ibfk_1` FOREIGN KEY (`AGENT_NO`) REFERENCES `CSMC` (`Officer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CSMC_APPOINT_AGENT_ibfk_2` FOREIGN KEY (`PROJ_ID`) REFERENCES `PROJECT` (`SITE_CODE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CSMC_APPOINT_AGENT_ibfk_3` FOREIGN KEY (`SURVEY_AGENT_NO`) REFERENCES `SURVEY_AGENT` (`Employee_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CSMC_APPOINT_AGENT`
--

LOCK TABLES `CSMC_APPOINT_AGENT` WRITE;
/*!40000 ALTER TABLE `CSMC_APPOINT_AGENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `CSMC_APPOINT_AGENT` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER allocation_survey_agent
     AFTER INSERT ON CSMC_APPOINT_AGENT
     FOR EACH ROW
     BEGIN
     UPDATE SURVEY_AGENT
     SET CSMC_ID = NEW.AGENT_NO
     WHERE Employee_ID = NEW.SURVEY_AGENT_NO;
     END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER allocation_survey_agent1
     AFTER INSERT ON CSMC_APPOINT_AGENT
     FOR EACH ROW
     BEGIN
     UPDATE SURVEY_AGENT
     SET PROJ_id = NEW.PROJ_ID
     WHERE EMPLOYEE_ID = NEW.SURVEY_AGENT_NO;
     END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER applicant_survey_agent
     AFTER INSERT ON CSMC_APPOINT_AGENT
     FOR EACH ROW
     BEGIN
     UPDATE APPLICANTS
     SET Agent_ID = NEW.SURVEY_AGENT_NO
     WHERE PROJECT_ID = NEW.PROJ_ID;
     END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `CSMC_APPOINT_APPL`
--

DROP TABLE IF EXISTS `CSMC_APPOINT_APPL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CSMC_APPOINT_APPL` (
  `PROJ_NUM` varchar(6) DEFAULT NULL,
  `APP_NUM` varchar(6) DEFAULT NULL,
  KEY `FK_csmc_appoint_appl` (`PROJ_NUM`),
  KEY `FK_csmc_appoint_appl1` (`APP_NUM`),
  CONSTRAINT `CSMC_APPOINT_APPL_ibfk_1` FOREIGN KEY (`PROJ_NUM`) REFERENCES `PROJECT` (`SITE_CODE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CSMC_APPOINT_APPL_ibfk_2` FOREIGN KEY (`APP_NUM`) REFERENCES `APPLICANTS` (`Applicant_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CSMC_APPOINT_APPL`
--

LOCK TABLES `CSMC_APPOINT_APPL` WRITE;
/*!40000 ALTER TABLE `CSMC_APPOINT_APPL` DISABLE KEYS */;
INSERT INTO `CSMC_APPOINT_APPL` VALUES ('PID015','APP040');
/*!40000 ALTER TABLE `CSMC_APPOINT_APPL` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER csmc_appoint_applicant
AFTER INSERT ON CSMC_APPOINT_APPL
FOR EACH ROW
BEGIN
UPDATE PROJECT
SET FLATS = FLATS - 1
WHERE SITE_CODE = NEW.PROJ_NUM;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER csmc_appoint_applicant1
AFTER INSERT ON CSMC_APPOINT_APPL
FOR EACH ROW
BEGIN
UPDATE APPLICANTS
SET PROJECT_ID = NEW.PROJ_NUM
WHERE Applicant_no = NEW.APP_NUM;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `EXPIRED_TENDER`
--

DROP TABLE IF EXISTS `EXPIRED_TENDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EXPIRED_TENDER` (
  `PROJ_NUMBER` varchar(6) DEFAULT NULL,
  `START_date` date DEFAULT NULL,
  `END_date` date DEFAULT NULL,
  KEY `FK_expired_tender` (`PROJ_NUMBER`),
  CONSTRAINT `EXPIRED_TENDER_ibfk_1` FOREIGN KEY (`PROJ_NUMBER`) REFERENCES `PROJECT` (`SITE_CODE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EXPIRED_TENDER`
--

LOCK TABLES `EXPIRED_TENDER` WRITE;
/*!40000 ALTER TABLE `EXPIRED_TENDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `EXPIRED_TENDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INCOME_DETAILS`
--

DROP TABLE IF EXISTS `INCOME_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INCOME_DETAILS` (
  `PROOF_INC` enum('TEHSILDAR REPORT','INCOME ANNEXURE II','EWS CERTIFICATE') DEFAULT NULL,
  `RATION_TYPE` enum('WHITE','ORANGE','YELLOW') DEFAULT NULL,
  `APP_NUMBER` varchar(6) DEFAULT NULL,
  KEY `FK_inc_details_app` (`APP_NUMBER`),
  CONSTRAINT `INCOME_DETAILS_ibfk_1` FOREIGN KEY (`APP_NUMBER`) REFERENCES `APPLICANTS` (`Applicant_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INCOME_DETAILS`
--

LOCK TABLES `INCOME_DETAILS` WRITE;
/*!40000 ALTER TABLE `INCOME_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `INCOME_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MOH`
--

DROP TABLE IF EXISTS `MOH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MOH` (
  `Officer_Code` varchar(6) NOT NULL,
  `F_name` char(20) DEFAULT NULL,
  `M_name` char(20) DEFAULT NULL,
  `L_name` char(20) DEFAULT NULL,
  `Dob` date DEFAULT NULL,
  PRIMARY KEY (`Officer_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MOH`
--

LOCK TABLES `MOH` WRITE;
/*!40000 ALTER TABLE `MOH` DISABLE KEYS */;
INSERT INTO `MOH` VALUES ('MOH001','RAKESH','SANJAY','KUMAR','1980-05-06');
/*!40000 ALTER TABLE `MOH` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER generate_MOH_sequence
BEFORE INSERT ON MOH
FOR EACH ROW
BEGIN
INSERT INTO Sequence_MOH VALUES (NULL);
SET NEW.Officer_Code = CONCAT('MOH',LPAD(LAST_INSERT_ID(), 3, '0'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `MOH_OPENS_TENDER`
--

DROP TABLE IF EXISTS `MOH_OPENS_TENDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MOH_OPENS_TENDER` (
  `PROJECT_NUMBER` varchar(6) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `quot` int(10) DEFAULT NULL,
  KEY `FK_moh_opens_tender` (`PROJECT_NUMBER`),
  CONSTRAINT `MOH_OPENS_TENDER_ibfk_1` FOREIGN KEY (`PROJECT_NUMBER`) REFERENCES `PROJECT` (`SITE_CODE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MOH_OPENS_TENDER`
--

LOCK TABLES `MOH_OPENS_TENDER` WRITE;
/*!40000 ALTER TABLE `MOH_OPENS_TENDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `MOH_OPENS_TENDER` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tender_expiry
BEFORE DELETE ON MOH_OPENS_TENDER
FOR EACH ROW
BEGIN
INSERT INTO EXPIRED_TENDER
VALUES (OLD.PROJECT_NUMBER,OLD.START_DATE,OLD.END_DATE);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PROJECT`
--

DROP TABLE IF EXISTS `PROJECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROJECT` (
  `SITE_CODE` varchar(6) NOT NULL,
  `VILLAGE` char(50) DEFAULT NULL,
  `TALUKA` char(50) DEFAULT NULL,
  `DISTRICT` char(50) DEFAULT NULL,
  `STATE` char(50) DEFAULT NULL,
  `REGION_GDP` decimal(12,3) DEFAULT NULL,
  `FLOORS` int(3) DEFAULT NULL,
  `FLATS` int(3) unsigned DEFAULT NULL,
  `moh_officer_code` varchar(6) DEFAULT NULL,
  `csmc_officer_code` varchar(6) DEFAULT NULL,
  `sag_code` varchar(6) DEFAULT NULL,
  `company_code` varchar(6) DEFAULT NULL,
  `T_FLATS` int(3) DEFAULT NULL,
  PRIMARY KEY (`SITE_CODE`),
  KEY `FK_moh_project` (`moh_officer_code`),
  KEY `FK_csmc_project` (`csmc_officer_code`),
  KEY `FK_sag_project` (`sag_code`),
  KEY `FK_company_project` (`company_code`),
  CONSTRAINT `PROJECT_ibfk_1` FOREIGN KEY (`moh_officer_code`) REFERENCES `MOH` (`Officer_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PROJECT_ibfk_2` FOREIGN KEY (`csmc_officer_code`) REFERENCES `CSMC` (`Officer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PROJECT_ibfk_3` FOREIGN KEY (`sag_code`) REFERENCES `SURVEY_AGENT` (`Employee_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PROJECT_ibfk_4` FOREIGN KEY (`company_code`) REFERENCES `COMPANY` (`Company_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROJECT`
--

LOCK TABLES `PROJECT` WRITE;
/*!40000 ALTER TABLE `PROJECT` DISABLE KEYS */;
INSERT INTO `PROJECT` VALUES ('PID001','DHANPUR','MARWAHI','BILASPUR','CHATTISGARH',345666767.090,4,16,'MOH001',NULL,NULL,NULL,16),('PID002','LOHARI','MARWAHI','BILASPUR','CHATTISGARH',345666767.090,3,12,'MOH001',NULL,NULL,NULL,12),('PID003','BATRA','PALI','KORBA','CHATTISGARH',231435356.020,5,20,'MOH001',NULL,NULL,NULL,20),('PID004','SIRLI','PALI','KORBA','CHATTISGARH',431435356.030,4,16,'MOH001',NULL,NULL,NULL,16),('PID005','AMERI','ARANG','RAIPUR','CHATTISGARH',301435356.020,3,12,'MOH001',NULL,NULL,NULL,12),('PID006','NISDA','ARANG','RAIPUR','CHATTISGARH',206435356.020,6,24,'MOH001',NULL,NULL,NULL,24),('PID007','DEVDHA','BAGH','DHAR','MADHYA PRADESH',40875356.020,4,16,'MOH001',NULL,NULL,NULL,16),('PID008','JALI','BAGH','DHAR','MADHYA PRADESH',40875356.020,7,28,'MOH001',NULL,NULL,NULL,28),('PID009','DAVRI','ARON','GUNA','MADHYA PRADESH',28875356.460,6,24,'MOH001',NULL,NULL,NULL,24),('PID010','PATAN','ARON','GUNA','MADHYA PRADESH',806875356.400,5,20,'MOH001',NULL,NULL,NULL,20),('PID011','GANJ','GUNOR','PANNA','MADHYA PRADESH',60875356.460,3,12,'MOH001',NULL,NULL,NULL,12),('PID012','KAMTANA','GUNOR','PANNA','MADHYA PRADESH',70875356.460,6,24,'MOH001',NULL,NULL,NULL,24),('PID013','DARI','NASHIK','NASHIK','MAHARASHTRA',7087556.460,5,20,'MOH001',NULL,NULL,NULL,20),('PID014','MATORI','NASHIK','NASHIK','MAHARASHTRA',8908755.440,5,20,'MOH001',NULL,NULL,NULL,20),('PID015','ALAND','DEOLGAON RAJA','BULDHANA','MAHARASHTRA',5087556.460,4,15,'MOH001',NULL,NULL,NULL,16),('PID016','UMBARKHED','DEOLGAON RAJA','BULDHANA','MAHARASHTRA',2908755.440,5,20,'MOH001',NULL,NULL,NULL,20),('PID017','JALOD','SHIRPUR','DHULE','MAHARASHTRA',7087556.460,6,24,'MOH001',NULL,NULL,NULL,24),('PID018','MANDAL','SHIRPUR','DHULE','MAHARASHTRA',4908755.440,5,20,'MOH001',NULL,NULL,NULL,20),('PID019','KAIKALA','HARIPAL','HOOGLY','WEST BENGAL',3408755.440,4,16,'MOH001',NULL,NULL,NULL,16),('PID020','JEJUR','HARIPAL','HOOGLY','WEST BENGAL',4508755.440,3,12,'MOH001',NULL,NULL,NULL,12),('PID021','JALUNDI','NANOOR','BIRBHUM','WEST BENGAL',5608755.440,7,28,'MOH001',NULL,NULL,NULL,28),('PID022','THUPSARA','NANOOR','BIRBHUM','WEST BENGAL',4508755.440,5,20,'MOH001',NULL,NULL,NULL,20),('PID023','DHOLA','KULPI','SOUTH 24 PARGANAS','WEST BENGAL',36608755.440,4,16,'MOH001',NULL,NULL,NULL,16),('PID024','RAMKISHORE','KULPI','SOUTH 24 PARGANAS','WEST BENGAL',36608755.440,3,12,'MOH001',NULL,NULL,NULL,12);
/*!40000 ALTER TABLE `PROJECT` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER generate_project_sequence
BEFORE INSERT ON PROJECT
FOR EACH ROW
BEGIN
INSERT INTO Sequence_Project VALUES (NULL);
SET NEW.SITE_CODE = CONCAT('PID', LPAD(LAST_INSERT_ID(), 3, '0'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `REJECTED_APPLICANTS`
--

DROP TABLE IF EXISTS `REJECTED_APPLICANTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REJECTED_APPLICANTS` (
  `app_number` varchar(6) DEFAULT NULL,
  `name` char(20) DEFAULT NULL,
  KEY `FK_rejected_app` (`app_number`),
  CONSTRAINT `REJECTED_APPLICANTS_ibfk_1` FOREIGN KEY (`app_number`) REFERENCES `APPLICANTS` (`Applicant_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REJECTED_APPLICANTS`
--

LOCK TABLES `REJECTED_APPLICANTS` WRITE;
/*!40000 ALTER TABLE `REJECTED_APPLICANTS` DISABLE KEYS */;
/*!40000 ALTER TABLE `REJECTED_APPLICANTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SURVEY_AGENT`
--

DROP TABLE IF EXISTS `SURVEY_AGENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SURVEY_AGENT` (
  `Employee_ID` varchar(60) NOT NULL,
  `First_Name` char(20) DEFAULT NULL,
  `Middle_Name` char(20) DEFAULT NULL,
  `Last_Name` char(20) DEFAULT NULL,
  `Gender` enum('MALE','FEMALE') DEFAULT NULL,
  `Birth_date` date DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `CSMC_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`),
  KEY `FK_csmc_sag` (`CSMC_ID`),
  CONSTRAINT `SURVEY_AGENT_ibfk_1` FOREIGN KEY (`CSMC_ID`) REFERENCES `CSMC` (`Officer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SURVEY_AGENT`
--

LOCK TABLES `SURVEY_AGENT` WRITE;
/*!40000 ALTER TABLE `SURVEY_AGENT` DISABLE KEYS */;
INSERT INTO `SURVEY_AGENT` VALUES ('SAG003','SATYA','RAM','DUBEY','MALE','1980-03-05',38,'CSM001'),('SAG004','SUZANNA','SAM','MUKHERJEE','FEMALE','1978-05-06',40,'CSM001'),('SAG005','VEGA','ANUP','TAMODIA','FEMALE','1979-04-05',39,'CSM001'),('SAG006','KISHORE','SANDIT','SAHU','MALE','1978-10-11',40,'CSM001'),('SAG007','ANUJ','ANUP','SHARMA','MALE','1975-07-08',43,'CSM001'),('SAG008','SWATI','GOVIND','VERMA','FEMALE','1978-09-14',40,'CSM001'),('SAG009','BHAGWAN','RAM','MURAD','MALE','1980-05-15',38,'CSM002'),('SAG010','MRINAL','HARI','PANDE','FEMALE','1978-05-16',40,'CSM002'),('SAG011','VIDYA','CHANDRA','SHAH','FEMALE','1979-01-05',39,'CSM002'),('SAG012','VAGISH','SANDIT','SHASTRI','MALE','1978-02-11',40,'CSM002'),('SAG013','ANAND','ANUP','PRAKASH','MALE','1975-03-08',43,'CSM002'),('SAG014','SITA','GOVIND','FAZLI','FEMALE','1978-09-14',40,'CSM002'),('SAG015','ABHISHEK','PRATAP','KAKAD','MALE','1980-05-11',38,'CSM003'),('SAG016','RUTUJA','HARI','DARADE','FEMALE','1978-04-12',40,'CSM003'),('SAG017','VIDYAGAURI','CHANDRA','SATAM','FEMALE','1979-01-13',39,'CSM003'),('SAG018','VARAD','PRANAV','KULKARNI','MALE','1978-02-15',40,'CSM003'),('SAG019','ANAND','ANIL','PATIL','MALE','1975-04-17',43,'CSM003'),('SAG020','GITA','GOVIND','DHATRAK','FEMALE','1978-09-14',40,'CSM003'),('SAG021','ANIL','KUMAR','GAIN','MALE','1980-05-21',38,'CSM004'),('SAG022','CHITRA','ANAD','GHOSH','FEMALE','1978-04-23',40,'CSM004'),('SAG023','KABERI','CHANDRA','BASU','FEMALE','1979-01-25',39,'CSM004'),('SAG024','DILIP','AMIT','TAGORE','MALE','1978-02-27',40,'CSM004'),('SAG025','ANAND','SOBODH','ROY','MALE','1975-04-29',43,'CSM004'),('SAG026','BIMAL','SUBHASH','KAR','FEMALE','1978-09-24',40,'CSM004');
/*!40000 ALTER TABLE `SURVEY_AGENT` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER generate_survey_agent_id
BEFORE INSERT ON SURVEY_AGENT
FOR EACH ROW
BEGIN
INSERT INTO Sequence_Survey_agent VALUES (NULL);
SET NEW.Employee_ID = CONCAT('SAG', LPAD(LAST_INSERT_ID(), 3, '0'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Sequence_Applicants`
--

DROP TABLE IF EXISTS `Sequence_Applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sequence_Applicants` (
  `A_ID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`A_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sequence_Applicants`
--

LOCK TABLES `Sequence_Applicants` WRITE;
/*!40000 ALTER TABLE `Sequence_Applicants` DISABLE KEYS */;
INSERT INTO `Sequence_Applicants` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77);
/*!40000 ALTER TABLE `Sequence_Applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sequence_CSMC`
--

DROP TABLE IF EXISTS `Sequence_CSMC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sequence_CSMC` (
  `CSMC_ID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`CSMC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sequence_CSMC`
--

LOCK TABLES `Sequence_CSMC` WRITE;
/*!40000 ALTER TABLE `Sequence_CSMC` DISABLE KEYS */;
INSERT INTO `Sequence_CSMC` VALUES (1),(2),(3),(4);
/*!40000 ALTER TABLE `Sequence_CSMC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sequence_Company`
--

DROP TABLE IF EXISTS `Sequence_Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sequence_Company` (
  `C_ID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sequence_Company`
--

LOCK TABLES `Sequence_Company` WRITE;
/*!40000 ALTER TABLE `Sequence_Company` DISABLE KEYS */;
INSERT INTO `Sequence_Company` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);
/*!40000 ALTER TABLE `Sequence_Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sequence_MOH`
--

DROP TABLE IF EXISTS `Sequence_MOH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sequence_MOH` (
  `MOH_ID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`MOH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sequence_MOH`
--

LOCK TABLES `Sequence_MOH` WRITE;
/*!40000 ALTER TABLE `Sequence_MOH` DISABLE KEYS */;
INSERT INTO `Sequence_MOH` VALUES (1);
/*!40000 ALTER TABLE `Sequence_MOH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sequence_Project`
--

DROP TABLE IF EXISTS `Sequence_Project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sequence_Project` (
  `P_ID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`P_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sequence_Project`
--

LOCK TABLES `Sequence_Project` WRITE;
/*!40000 ALTER TABLE `Sequence_Project` DISABLE KEYS */;
INSERT INTO `Sequence_Project` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24);
/*!40000 ALTER TABLE `Sequence_Project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sequence_Survey_agent`
--

DROP TABLE IF EXISTS `Sequence_Survey_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sequence_Survey_agent` (
  `SA_ID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`SA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sequence_Survey_agent`
--

LOCK TABLES `Sequence_Survey_agent` WRITE;
/*!40000 ALTER TABLE `Sequence_Survey_agent` DISABLE KEYS */;
INSERT INTO `Sequence_Survey_agent` VALUES (3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26);
/*!40000 ALTER TABLE `Sequence_Survey_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TENDER`
--

DROP TABLE IF EXISTS `TENDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TENDER` (
  `TENDER_NO` int(3) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(6) DEFAULT NULL,
  `moh_id` varchar(6) DEFAULT NULL,
  `company_id` varchar(6) DEFAULT NULL,
  `Quotation` int(10) DEFAULT NULL,
  `Tender_SUBMIT_date` date DEFAULT NULL,
  PRIMARY KEY (`TENDER_NO`),
  KEY `FK_company_tender` (`company_id`),
  KEY `FK_moh_tender` (`moh_id`),
  KEY `FK_project_tender` (`project_id`),
  CONSTRAINT `TENDER_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `COMPANY` (`Company_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `TENDER_ibfk_2` FOREIGN KEY (`moh_id`) REFERENCES `MOH` (`Officer_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `TENDER_ibfk_3` FOREIGN KEY (`project_id`) REFERENCES `PROJECT` (`SITE_CODE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TENDER`
--

LOCK TABLES `TENDER` WRITE;
/*!40000 ALTER TABLE `TENDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `TENDER` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER deafult_date
BEFORE INSERT ON TENDER
FOR EACH ROW
IF ( ISNULL(NEW.Tender_SUBMIT_date) )
THEN
SET NEW.Tender_SUBMIT_date = CURDATE();
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tender_validation1
AFTER INSERT ON TENDER
FOR EACH ROW
IF ( NEW.Tender_SUBMIT_date < ( SELECT START_DATE FROM MOH_OPENS_TENDER WHERE PROJECT_NUMBER = NEW.project_id ) )
THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'TENDER SUBMISSION PROCESS NOT YET STARTED. PLEASE TRY AGAIN LATER';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tender_validation
AFTER INSERT ON TENDER
FOR EACH ROW
IF ( NEW.Tender_SUBMIT_date > ( SELECT END_DATE FROM MOH_OPENS_TENDER WHERE PROJECT_NUMBER = NEW.project_id ) )
THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'YOU HAVE EXCEEDED LAST DATE TO SUBMIT TENDER. TENDER REJECTED';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-24 12:14:36
