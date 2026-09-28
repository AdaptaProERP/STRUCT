-- MySQL dump 10.13  Distrib 5.5.62, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: dpsgev60
-- ------------------------------------------------------
-- Server version	5.5.62

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
-- Current Database: `dpsgev60`
--

/*!40000 DROP DATABASE IF EXISTS `dpsgev60`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dpsgev60` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dpsgev60`;

--
-- Table structure for table `dpactecomun`
--

DROP TABLE IF EXISTS `dpactecomun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpactecomun` (
  `AEM_PORCEN` decimal(5,2) DEFAULT NULL,
  `AEM_ACTIVO` decimal(1,0) DEFAULT NULL,
  `AEM_CODIGO` char(4) NOT NULL,
  `AEM_DESCRI` varchar(120) DEFAULT NULL COMMENT 'Actividad',
  PRIMARY KEY (`AEM_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpactividad_e`
--

DROP TABLE IF EXISTS `dpactividad_e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpactividad_e` (
  `ACT_CODIGO` char(35) NOT NULL,
  `ACT_DESCRI` char(40) DEFAULT NULL,
  `ACT_MEMO` longtext,
  `ACT_ACTIVO` decimal(1,0) DEFAULT NULL,
  `ACT_CLRGRA` decimal(10,0) DEFAULT NULL,
  `ACT_PORRTM` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`ACT_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpactividadcli`
--

DROP TABLE IF EXISTS `dpactividadcli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpactividadcli` (
  `ACC_CODACT` char(6) DEFAULT NULL,
  `ACC_CODCLI` char(10) DEFAULT NULL,
  KEY `DPACTIVIDADCLI1` (`ACC_CODCLI`),
  KEY `DPACTIVIDADCLI_2` (`ACC_CODCLI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpactivos`
--

DROP TABLE IF EXISTS `dpactivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpactivos` (
  `ATV_ACTIVO` decimal(1,0) DEFAULT NULL,
  `ATV_ANOGAR` decimal(2,0) DEFAULT NULL,
  `ATV_CENCOS` char(8) DEFAULT NULL,
  `ATV_CODDEP` char(10) DEFAULT NULL,
  `ATV_CODGRU` char(8) DEFAULT NULL,
  `ATV_CODIGO` char(15) DEFAULT NULL,
  `ATV_CODMON` char(3) DEFAULT NULL,
  `ATV_CODPRO` char(10) DEFAULT NULL,
  `ATV_CODSUC` char(6) DEFAULT NULL,
  `ATV_CODUBI` char(8) DEFAULT NULL,
  `ATV_COSADQ` decimal(16,2) DEFAULT NULL,
  `ATV_COSUND` decimal(12,2) DEFAULT NULL,
  `ATV_CTAACT` char(20) DEFAULT NULL,
  `ATV_CTAACU` char(20) DEFAULT NULL,
  `ATV_CTADEP` char(20) DEFAULT NULL,
  `ATV_CTAINT` decimal(1,0) DEFAULT NULL,
  `ATV_DEPACU` decimal(16,2) DEFAULT NULL,
  `ATV_DEPMEN` decimal(16,2) DEFAULT NULL,
  `ATV_DEPRE` char(1) DEFAULT NULL,
  `ATV_DESCRI` char(50) DEFAULT NULL,
  `ATV_ESTADO` char(1) DEFAULT NULL,
  `ATV_FCHADQ` date DEFAULT NULL,
  `ATV_FCHDEP` date DEFAULT NULL,
  `ATV_FCHEST` date DEFAULT NULL,
  `ATV_FCHGAR` date DEFAULT NULL,
  `ATV_FCHINC` date DEFAULT NULL,
  `ATV_FCHMAX` date DEFAULT NULL,
  `ATV_FILBMP` char(60) DEFAULT NULL,
  `ATV_FILMAI` decimal(7,0) DEFAULT NULL,
  `ATV_GARANT` decimal(3,0) DEFAULT NULL,
  `ATV_GARMOD` char(1) DEFAULT NULL,
  `ATV_ITEM` char(4) DEFAULT NULL,
  `ATV_LINXLS` decimal(4,0) DEFAULT NULL,
  `ATV_MEJACT` char(15) DEFAULT NULL,
  `ATV_MESDEP` decimal(4,0) DEFAULT NULL,
  `ATV_MESGAR` decimal(2,0) DEFAULT NULL,
  `ATV_METODO` char(1) DEFAULT NULL,
  `ATV_NUMCC` char(6) DEFAULT NULL,
  `ATV_NUMDOC` char(10) DEFAULT NULL,
  `ATV_NUMMEM` decimal(6,0) DEFAULT NULL,
  `ATV_PORVAL` decimal(2,0) DEFAULT NULL,
  `ATV_SERIAL` char(20) DEFAULT NULL,
  `ATV_TIPDOC` char(3) DEFAULT NULL,
  `ATV_UNIPRO` decimal(10,2) DEFAULT NULL,
  `ATV_VALSAL` decimal(16,2) DEFAULT NULL,
  `ATV_VIDA_A` decimal(2,0) DEFAULT NULL,
  `ATV_VIDA_M` decimal(3,0) DEFAULT NULL,
  `ATV_CODAUX` varchar(10) DEFAULT NULL,
  `ATV_PROYEC` varchar(8) DEFAULT NULL,
  KEY `DPACTIVOS1` (`ATV_CODSUC`,`ATV_CODIGO`),
  KEY `DPACTIVOS2` (`ATV_CODIGO`),
  KEY `DPACTIVOS3` (`ATV_CODGRU`),
  KEY `DPACTIVOS4` (`ATV_CENCOS`),
  KEY `DPACTIVOS5` (`ATV_CTAACT`),
  KEY `DPACTIVOS6` (`ATV_CODSUC`),
  KEY `DPACTIVOS7` (`ATV_CODUBI`),
  KEY `DPACTIVOS8` (`ATV_NUMMEM`),
  KEY `DPACTIVOS_10` (`ATV_CODSUC`),
  KEY `DPACTIVOS_2` (`ATV_CODGRU`),
  KEY `DPACTIVOS_4` (`ATV_CODSUC`,`ATV_CODIGO`),
  KEY `DPACTIVOS_6` (`ATV_CODIGO`),
  KEY `DPACTIVOS_8` (`ATV_CENCOS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpactivos_cta`
--

DROP TABLE IF EXISTS `dpactivos_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpactivos_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(15) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(6) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPACTIVOS_CTA1` (`CIC_CODIGO`),
  KEY `DPACTIVOS_CTA2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPACTIVOS_CTA3` (`CIC_CUENTA`),
  KEY `DPACTIVOS_CTA5` (`CIC_CODSUC`,`CIC_CODIGO`),
  KEY `DPACTIVOS_CTA7` (`CIC_CODSUC`),
  KEY `DPACTIVOS_CTA_2` (`CIC_CODSUC`,`CIC_CODIGO`),
  KEY `DPACTIVOS_CTA_4` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPACTIVOS_CTA_6` (`CIC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpactivosrep`
--

DROP TABLE IF EXISTS `dpactivosrep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpactivosrep` (
  `RDA_CANTID` decimal(5,2) DEFAULT NULL,
  `RDA_CODIGO` char(20) DEFAULT NULL,
  `RDA_CODINV` char(20) DEFAULT NULL,
  `RDA_FREMAN` char(10) DEFAULT NULL,
  `RDA_FREREM` char(10) DEFAULT NULL,
  `RDA_REQMAN` decimal(1,0) DEFAULT NULL,
  `RDA_REQREM` decimal(1,0) DEFAULT NULL,
  KEY `DPACTIVOSREP1` (`RDA_CODIGO`),
  KEY `DPACTIVOSREP_2` (`RDA_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpafiliasas`
--

DROP TABLE IF EXISTS `dpafiliasas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpafiliasas` (
  `SAS_ID` char(4) NOT NULL,
  `SAS_ACTIVO` decimal(1,0) DEFAULT NULL,
  `SAS_FCHFIN` date DEFAULT NULL,
  `SAS_FCHINI` date DEFAULT NULL,
  `SAS_LOGIN` char(120) DEFAULT NULL,
  `SAS_NOMBRE` char(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpagrcontab`
--

DROP TABLE IF EXISTS `dpagrcontab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpagrcontab` (
  `AGC_CODCTA` varchar(20) DEFAULT NULL COMMENT 'Cuenta Contable',
  `AGC_CENCOS` varchar(8) DEFAULT NULL COMMENT 'Centro de Costo',
  `AGC_CODDPT` varchar(3) DEFAULT NULL COMMENT 'Departamento',
  `AGC_CODPAR` varchar(3) DEFAULT NULL COMMENT 'Partida',
  KEY `DPAGRCONTAB1` (`AGC_CODCTA`),
  KEY `DPAGRCONTAB2` (`AGC_CENCOS`),
  KEY `DPAGRCONTAB3` (`AGC_CODDPT`),
  KEY `DPAGRCONTAB4` (`AGC_CODPAR`),
  KEY `DPAGRCONTAB5` (`AGC_CODCTA`,`AGC_CENCOS`,`AGC_CODDPT`,`AGC_CODPAR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpagrupgen`
--

DROP TABLE IF EXISTS `dpagrupgen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpagrupgen` (
  `AGE_CODDET` varchar(4) DEFAULT NULL COMMENT 'Detalle Agrupado',
  `AGE_CODPAR` varchar(3) DEFAULT NULL COMMENT 'Partida',
  `AGE_CODDPT` varchar(3) DEFAULT NULL COMMENT 'Departamento',
  KEY `DPAGRUPGEN2` (`AGE_CODDET`),
  KEY `DPAGRUPGEN3` (`AGE_CODDPT`),
  KEY `DPAGRUPGEN4` (`AGE_CODPAR`),
  KEY `DPAGRUPGEN1` (`AGE_CODDET`,`AGE_CODDPT`,`AGE_CODPAR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpalmacen`
--

DROP TABLE IF EXISTS `dpalmacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpalmacen` (
  `ALM_ACTIVO` decimal(1,0) DEFAULT NULL,
  `ALM_A_E` char(4) DEFAULT NULL,
  `ALM_A_S` char(4) DEFAULT NULL,
  `ALM_CODARE` char(4) DEFAULT NULL,
  `ALM_CODDEP` char(10) DEFAULT NULL,
  `ALM_CODIGO` char(3) DEFAULT NULL,
  `ALM_CODSUC` char(6) DEFAULT NULL,
  `ALM_CODTRA` char(6) DEFAULT NULL,
  `ALM_DESCRI` char(40) DEFAULT NULL,
  `ALM_DIR1` char(40) DEFAULT NULL,
  `ALM_DIR2` char(40) DEFAULT NULL,
  `ALM_ENCARG` char(40) DEFAULT NULL,
  `ALM_EXTERN` decimal(1,0) DEFAULT NULL,
  `ALM_MTRCUB` decimal(8,3) DEFAULT NULL,
  `ALM_P_E` char(4) DEFAULT NULL,
  `ALM_P_S` char(4) DEFAULT NULL,
  `ALM_RIFALM` char(10) DEFAULT NULL,
  `ALM_TEL1` char(12) DEFAULT NULL,
  `ALM_TEL2` char(12) DEFAULT NULL,
  `ALM_TEL3` char(12) DEFAULT NULL,
  `ALM_T_E` char(4) DEFAULT NULL,
  `ALM_T_S` char(4) DEFAULT NULL,
  `ALM_TITCOL` char(80) DEFAULT NULL,
  KEY `DPALMACEN1` (`ALM_CODSUC`,`ALM_CODIGO`),
  KEY `DPALMACEN2` (`ALM_CODDEP`),
  KEY `DPALMACEN3` (`ALM_CODSUC`),
  KEY `DPALMACEN_2` (`ALM_CODSUC`,`ALM_CODIGO`),
  KEY `DPALMACEN_4` (`ALM_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dparchivaderoy`
--

DROP TABLE IF EXISTS `dparchivaderoy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dparchivaderoy` (
  `ARCHIVOX` varchar(35) DEFAULT NULL COMMENT 'Archivo X',
  `ARCHIVOY` varchar(20) DEFAULT NULL COMMENT 'Archivo Y',
  `CODAREA` varchar(3) DEFAULT NULL COMMENT 'Codigo de Area'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dparchivox`
--

DROP TABLE IF EXISTS `dparchivox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dparchivox` (
  `ARCHIVOX` char(35) NOT NULL,
  `CODAREA` varchar(4) DEFAULT NULL COMMENT 'CÃ³digo de Area',
  PRIMARY KEY (`ARCHIVOX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dparchivoz`
--

DROP TABLE IF EXISTS `dparchivoz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dparchivoz` (
  `ARCHIVOX` varchar(35) DEFAULT NULL COMMENT 'Archivo X',
  `ARCHIVOY` varchar(20) DEFAULT NULL COMMENT 'Archivo Y',
  `ARCHIVOZ` varchar(20) DEFAULT NULL COMMENT 'Archivo Z',
  `CODAREA` varchar(10) DEFAULT NULL COMMENT 'Ubicacion'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientocencos`
--

DROP TABLE IF EXISTS `dpasientocencos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientocencos` (
  `ACC_ACTUAL` char(1) DEFAULT NULL,
  `ACC_CODCOS` char(8) DEFAULT NULL,
  `ACC_CODCTA` char(20) DEFAULT NULL,
  `ACC_CODMON` char(3) DEFAULT NULL,
  `ACC_CODSUC` char(6) DEFAULT NULL,
  `ACC_CTAMOD` char(6) DEFAULT NULL,
  `ACC_FECHA` date DEFAULT NULL,
  `ACC_ITEM` char(4) DEFAULT NULL,
  `ACC_MONTO` decimal(16,2) DEFAULT NULL,
  `ACC_NUMCBT` char(8) DEFAULT NULL,
  KEY `DPASIENTOCENCOS1` (`ACC_CODSUC`,`ACC_ACTUAL`,`ACC_NUMCBT`,`ACC_FECHA`,`ACC_ITEM`,`ACC_CODCTA`),
  KEY `DPASIENTOCENCOS2` (`ACC_CODCOS`),
  KEY `DPASIENTOCENCOS3` (`ACC_CODCTA`),
  KEY `DPASIENTOCENCOS_2` (`ACC_CODSUC`,`ACC_ACTUAL`,`ACC_NUMCBT`,`ACC_FECHA`,`ACC_ITEM`,`ACC_CODCTA`),
  KEY `DPASIENTOCENCOS_4` (`ACC_CODCOS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientocencos_cta`
--

DROP TABLE IF EXISTS `dpasientocencos_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientocencos_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(15) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPASIENTOCENCOS_CTA1` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPASIENTOCENCOS_CTA3` (`CIC_CODSUC`),
  KEY `DPASIENTOCENCOS_CTA_` (`CIC_CTAMOD`,`CIC_CUENTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientos`
--

DROP TABLE IF EXISTS `dpasientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientos` (
  `MOC_ACTUAL` char(1) DEFAULT NULL,
  `MOC_ALTER` decimal(1,0) DEFAULT NULL,
  `MOC_CENCOS` char(8) DEFAULT NULL,
  `MOC_CODAUX` char(20) DEFAULT NULL,
  `MOC_CODDEP` char(10) DEFAULT NULL,
  `MOC_CODEMP` char(4) DEFAULT NULL,
  `MOC_CODINT` char(10) DEFAULT NULL,
  `MOC_CODMON` char(3) DEFAULT NULL,
  `MOC_CODSUC` char(6) DEFAULT NULL,
  `MOC_CTAMOD` char(6) DEFAULT NULL,
  `MOC_CUENTA` char(20) DEFAULT NULL,
  `MOC_DESCRI` char(120) DEFAULT NULL,
  `MOC_DOCPAG` char(14) DEFAULT NULL,
  `MOC_DOCUME` char(20) DEFAULT NULL,
  `MOC_FECHA` date DEFAULT NULL,
  `MOC_ITEM` char(4) DEFAULT NULL,
  `MOC_MONTO` decimal(24,2) DEFAULT NULL,
  `MOC_NUMCBT` char(8) DEFAULT NULL,
  `MOC_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOC_NUMPAR` char(5) DEFAULT NULL,
  `MOC_NUMTRA` char(8) DEFAULT NULL,
  `MOC_ORIGEN` char(3) DEFAULT NULL,
  `MOC_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOC_RIF` char(15) DEFAULT NULL,
  `MOC_SERFIS` char(2) DEFAULT NULL,
  `MOC_TIPO` char(4) DEFAULT NULL,
  `MOC_TIPTRA` char(1) DEFAULT NULL,
  `MOC_VALCAM` decimal(24,2) DEFAULT NULL,
  `MOC_ITEM_O` char(5) DEFAULT NULL,
  `MOC_NUMEJE` char(4) DEFAULT NULL,
  `MOC_MTOORG` decimal(19,2) DEFAULT NULL,
  `MOC_TIPASI` char(3) DEFAULT NULL,
  `MOC_FILMAI` decimal(8,0) DEFAULT NULL,
  `MOC_ESTORG` char(20) DEFAULT NULL,
  `MOC_NODEDU` decimal(1,0) DEFAULT NULL,
  `MOC_TIPAUX` char(3) DEFAULT NULL,
  `MOC_CODPRY` varchar(8) DEFAULT NULL,
  `MOC_NUMFIL` decimal(8,0) DEFAULT NULL,
  `MOC_ITEM_S` char(5) DEFAULT NULL,
  `MOC_MTODIV` decimal(19,2) DEFAULT NULL,
  KEY `DPASIENTOS1` (`MOC_CODSUC`,`MOC_CUENTA`,`MOC_ACTUAL`,`MOC_FECHA`),
  KEY `DPASIENTOS10` (`MOC_CUENTA`),
  KEY `DPASIENTOS11` (`MOC_CUENTA`,`MOC_CTAMOD`),
  KEY `DPASIENTOS2` (`MOC_CODSUC`,`MOC_FECHA`,`MOC_NUMCBT`),
  KEY `DPASIENTOS3` (`MOC_ORIGEN`,`MOC_TIPO`,`MOC_CODSUC`),
  KEY `DPASIENTOS4` (`MOC_CODSUC`,`MOC_ORIGEN`,`MOC_TIPO`,`MOC_CODAUX`),
  KEY `DPASIENTOS5` (`MOC_CODSUC`,`MOC_NUMCBT`,`MOC_FECHA`,`MOC_TIPO`,`MOC_DOCUME`,`MOC_CODAUX`,`MOC_ORIGEN`),
  KEY `DPASIENTOS6` (`MOC_CODSUC`,`MOC_ACTUAL`,`MOC_NUMCBT`,`MOC_FECHA`,`MOC_ITEM`,`MOC_CUENTA`),
  KEY `DPASIENTOS8` (`MOC_CODSUC`,`MOC_ACTUAL`,`MOC_FECHA`,`MOC_NUMCBT`),
  KEY `DPASIENTOS9` (`MOC_CODDEP`),
  KEY `DPASIENTOS7` (`MOC_NUMMEM`),
  KEY `MOCCODDEP` (`MOC_CODDEP`),
  KEY `MOCCODSUC` (`MOC_CODSUC`),
  KEY `DPASIENTOS_1` (`MOC_CODSUC`,`MOC_ACTUAL`,`MOC_CTAMOD`,`MOC_FECHA`,`MOC_CUENTA`),
  KEY `DPASIENTOS_2` (`MOC_CUENTA`,`MOC_CTAMOD`),
  KEY `DPASIENTOSMOC_CTAMO` (`MOC_CTAMOD`,`MOC_CUENTA`),
  KEY `DPASIENTOS_NUMEJE` (`MOC_NUMEJE`),
  KEY `DPCTASLD` (`MOC_CODSUC`,`MOC_ACTUAL`,`MOC_CTAMOD`,`MOC_FECHA`,`MOC_CUENTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER dpasientos_after_update AFTER UPDATE ON DPASIENTOS
FOR EACH ROW BEGIN  
 DECLARE cChar VARCHAR(20);

 SET cChar:=LTRIM(NEW.MOC_CUENTA);

 WHILE LENGTH(cChar)>0 do

   SET cChar:=LEFT(cChar,LENGTH(cChar)-1);

   IF NEW.MOC_ACTUAL="S" THEN
 
    IF NEW.MOC_MONTO>0 THEN 
 
      UPDATE DPCTASLD SET SLD_DEBE     = SLD_DEBE  + (NEW.MOC_MONTO)
                    WHERE SLD_CODSUC=NEW.MOC_CODSUC AND SLD_CTAMOD=NEW.MOC_CTAMOD AND SLD_NUMEJE=NEW.MOC_NUMEJE AND SLD_CUENTA = cChar;
    
    ELSE

      UPDATE DPCTASLD SET SLD_HABER    = SLD_HABER  + (NEW.MOC_MONTO*-1)
                    WHERE SLD_CODSUC=NEW.MOC_CODSUC AND SLD_CTAMOD=NEW.MOC_CTAMOD AND SLD_NUMEJE=NEW.MOC_NUMEJE AND SLD_CUENTA = cChar;
 

    END IF;

    UPDATE DPCTASLD SET SLD_SALDO  = SLD_SALDO  + (NEW.MOC_MONTO),
                        SLD_ASIACT = SLD_ASIACT+1,
                        SLD_ASIPEN = SLD_ASIPEN-1 
                  WHERE SLD_CODSUC=NEW.MOC_CODSUC AND SLD_CTAMOD=NEW.MOC_CTAMOD AND SLD_NUMEJE=NEW.MOC_NUMEJE AND SLD_CUENTA = cChar;


   END IF;

   IF NEW.MOC_ACTUAL="N" THEN
 
    UPDATE DPCTASLD SET SLD_ASIACT   = SLD_ASIACT-1,
                        SLD_ASIPEN   = SLD_ASIPEN+1 
                    WHERE SLD_CODSUC=NEW.MOC_CODSUC AND SLD_CTAMOD=NEW.MOC_CTAMOD AND SLD_NUMEJE=NEW.MOC_NUMEJE AND SLD_CUENTA = cChar;


   END IF;


 END WHILE;


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `dpasientos_cta`
--

DROP TABLE IF EXISTS `dpasientos_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientos_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPASIENTOS_CTA_2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPASIENTOS_CTA_4` (`CIC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientos_del`
--

DROP TABLE IF EXISTS `dpasientos_del`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientos_del` (
  `MOC_ACTUAL` char(1) DEFAULT NULL,
  `MOC_ALTER` decimal(1,0) DEFAULT NULL,
  `MOC_CENCOS` char(8) DEFAULT NULL,
  `MOC_CODAUX` char(20) DEFAULT NULL,
  `MOC_CODDEP` char(10) DEFAULT NULL,
  `MOC_CODEMP` char(4) DEFAULT NULL,
  `MOC_CODINT` char(10) DEFAULT NULL,
  `MOC_CODMON` char(3) DEFAULT NULL,
  `MOC_CODSUC` char(6) DEFAULT NULL,
  `MOC_CTAMOD` char(6) DEFAULT NULL,
  `MOC_CUENTA` char(20) DEFAULT NULL,
  `MOC_DESCRI` char(120) DEFAULT NULL,
  `MOC_DOCPAG` char(14) DEFAULT NULL,
  `MOC_DOCUME` char(20) DEFAULT NULL,
  `MOC_FECHA` date DEFAULT NULL,
  `MOC_FILMAI` decimal(8,0) DEFAULT NULL,
  `MOC_ITEM` char(4) DEFAULT NULL,
  `MOC_ITEM_O` char(5) DEFAULT NULL,
  `MOC_MONTO` decimal(17,2) DEFAULT NULL,
  `MOC_MTOORG` decimal(18,0) DEFAULT NULL,
  `MOC_NUMCBT` char(8) DEFAULT NULL,
  `MOC_NUMEJE` char(4) DEFAULT NULL,
  `MOC_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOC_NUMPAR` char(5) DEFAULT NULL,
  `MOC_NUMTRA` char(8) DEFAULT NULL,
  `MOC_ORIGEN` char(3) DEFAULT NULL,
  `MOC_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOC_RIF` char(12) DEFAULT NULL,
  `MOC_SERFIS` char(2) DEFAULT NULL,
  `MOC_TIPASI` char(3) DEFAULT NULL,
  `MOC_TIPO` char(4) DEFAULT NULL,
  `MOC_TIPTRA` char(1) DEFAULT NULL,
  `MOC_VALCAM` decimal(17,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientos_ef`
--

DROP TABLE IF EXISTS `dpasientos_ef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientos_ef` (
  `MOC_ACTUAL` char(1) DEFAULT NULL,
  `MOC_ALTER` decimal(1,0) DEFAULT NULL,
  `MOC_CENCOS` char(8) DEFAULT NULL,
  `MOC_CODAUX` char(20) DEFAULT NULL,
  `MOC_CODDEP` char(10) DEFAULT NULL,
  `MOC_CODEMP` char(4) DEFAULT NULL,
  `MOC_CODINT` char(10) DEFAULT NULL,
  `MOC_CODMON` char(3) DEFAULT NULL,
  `MOC_CODSUC` char(6) DEFAULT NULL,
  `MOC_CTAMOD` char(6) DEFAULT NULL,
  `MOC_CUENTA` char(20) DEFAULT NULL,
  `MOC_DESCRI` char(120) DEFAULT NULL,
  `MOC_DOCPAG` char(14) DEFAULT NULL,
  `MOC_DOCUME` char(20) DEFAULT NULL,
  `MOC_ESTORG` char(20) DEFAULT NULL,
  `MOC_FECHA` date DEFAULT NULL,
  `MOC_FILMAI` decimal(8,0) DEFAULT NULL,
  `MOC_ITEM` char(4) DEFAULT NULL,
  `MOC_ITEM_O` char(5) DEFAULT NULL,
  `MOC_MONTO` decimal(17,2) DEFAULT NULL,
  `MOC_MTOORG` decimal(18,0) DEFAULT NULL,
  `MOC_NUMCBT` char(8) DEFAULT NULL,
  `MOC_NUMEJE` char(4) DEFAULT NULL,
  `MOC_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOC_NUMPAR` char(5) DEFAULT NULL,
  `MOC_NUMTRA` char(8) DEFAULT NULL,
  `MOC_ORIGEN` char(3) DEFAULT NULL,
  `MOC_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOC_RIF` char(12) DEFAULT NULL,
  `MOC_SERFIS` char(2) DEFAULT NULL,
  `MOC_TIPASI` char(3) DEFAULT NULL,
  `MOC_TIPO` char(4) DEFAULT NULL,
  `MOC_TIPTRA` char(1) DEFAULT NULL,
  `MOC_VALCAM` decimal(17,2) DEFAULT NULL,
  KEY `DPASIENTOS_EF_2` (`MOC_CODSUC`,`MOC_NUMCBT`,`MOC_ACTUAL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientos_ef_cta`
--

DROP TABLE IF EXISTS `dpasientos_ef_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientos_ef_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPASIENTOS_EF_CTA_2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPASIENTOS_EF_CTA_4` (`CIC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientos_his`
--

DROP TABLE IF EXISTS `dpasientos_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientos_his` (
  `MOC_ACTUAL` char(1) DEFAULT NULL,
  `MOC_ALTER` decimal(1,0) DEFAULT NULL,
  `MOC_CENCOS` char(8) DEFAULT NULL,
  `MOC_CODAUX` char(20) DEFAULT NULL,
  `MOC_CODDEP` char(10) DEFAULT NULL,
  `MOC_CODEMP` char(4) DEFAULT NULL,
  `MOC_CODINT` char(10) DEFAULT NULL,
  `MOC_CODMON` char(3) DEFAULT NULL,
  `MOC_CODPRY` char(8) DEFAULT NULL,
  `MOC_CODSUC` char(6) DEFAULT NULL,
  `MOC_CTAMOD` char(6) DEFAULT NULL,
  `MOC_CUENTA` char(20) DEFAULT NULL,
  `MOC_DESCRI` char(120) DEFAULT NULL,
  `MOC_DOCPAG` char(14) DEFAULT NULL,
  `MOC_DOCUME` char(20) DEFAULT NULL,
  `MOC_ESTORG` char(20) DEFAULT NULL,
  `MOC_FECHA` date DEFAULT NULL,
  `MOC_FILMAI` decimal(8,0) DEFAULT NULL,
  `MOC_ITEM` char(4) DEFAULT NULL,
  `MOC_ITEM_O` char(5) DEFAULT NULL,
  `MOC_ITEM_S` char(5) DEFAULT NULL,
  `MOC_MONTO` decimal(24,2) DEFAULT NULL,
  `MOC_MTODIV` decimal(19,0) DEFAULT NULL,
  `MOC_MTOORG` decimal(19,2) DEFAULT NULL,
  `MOC_NODEDU` decimal(1,0) DEFAULT NULL,
  `MOC_NUMCBT` char(8) DEFAULT NULL,
  `MOC_NUMEJE` char(4) DEFAULT NULL,
  `MOC_NUMFIL` decimal(8,0) DEFAULT NULL,
  `MOC_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOC_NUMPAR` char(5) DEFAULT NULL,
  `MOC_NUMTRA` char(8) DEFAULT NULL,
  `MOC_ORIGEN` char(3) DEFAULT NULL,
  `MOC_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOC_RIF` char(15) DEFAULT NULL,
  `MOC_SERFIS` char(2) DEFAULT NULL,
  `MOC_TIPASI` char(3) DEFAULT NULL,
  `MOC_TIPAUX` char(3) DEFAULT NULL,
  `MOC_TIPO` char(4) DEFAULT NULL,
  `MOC_TIPTRA` char(1) DEFAULT NULL,
  `MOC_VALCAM` decimal(19,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientos_prog`
--

DROP TABLE IF EXISTS `dpasientos_prog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientos_prog` (
  `MOC_ACTUAL` char(1) DEFAULT NULL,
  `MOC_ALTER` decimal(1,0) DEFAULT NULL,
  `MOC_CENCOS` char(8) DEFAULT NULL,
  `MOC_CODAUX` char(20) DEFAULT NULL,
  `MOC_CODDEP` char(10) DEFAULT NULL,
  `MOC_CODEMP` char(4) DEFAULT NULL,
  `MOC_CODINT` char(10) DEFAULT NULL,
  `MOC_CODMON` char(3) DEFAULT NULL,
  `MOC_CODSUC` char(6) DEFAULT NULL,
  `MOC_CTAMOD` char(6) DEFAULT NULL,
  `MOC_CUENTA` char(20) DEFAULT NULL,
  `MOC_DESCRI` char(120) DEFAULT NULL,
  `MOC_DOCPAG` char(14) DEFAULT NULL,
  `MOC_DOCUME` char(20) DEFAULT NULL,
  `MOC_ESTORG` char(20) DEFAULT NULL,
  `MOC_FECHA` date DEFAULT NULL,
  `MOC_FILMAI` decimal(8,0) DEFAULT NULL,
  `MOC_ITEM` char(4) DEFAULT NULL,
  `MOC_ITEM_O` char(5) DEFAULT NULL,
  `MOC_MONTO` decimal(17,2) DEFAULT NULL,
  `MOC_MTOORG` decimal(19,2) DEFAULT NULL,
  `MOC_NUMCBT` char(8) DEFAULT NULL,
  `MOC_NUMEJE` char(4) DEFAULT NULL,
  `MOC_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOC_NUMPAR` char(5) DEFAULT NULL,
  `MOC_NUMTRA` char(8) DEFAULT NULL,
  `MOC_ORIGEN` char(3) DEFAULT NULL,
  `MOC_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOC_RIF` char(12) DEFAULT NULL,
  `MOC_SERFIS` char(2) DEFAULT NULL,
  `MOC_TIPASI` char(3) DEFAULT NULL,
  `MOC_TIPO` char(4) DEFAULT NULL,
  `MOC_TIPTRA` char(1) DEFAULT NULL,
  `MOC_VALCAM` decimal(17,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientos_rep`
--

DROP TABLE IF EXISTS `dpasientos_rep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientos_rep` (
  `MOC_ACTUAL` char(1) DEFAULT NULL,
  `MOC_ALTER` decimal(1,0) DEFAULT NULL,
  `MOC_CENCOS` char(8) DEFAULT NULL,
  `MOC_CODAUX` char(20) DEFAULT NULL,
  `MOC_CODDEP` char(10) DEFAULT NULL,
  `MOC_CODEMP` char(4) DEFAULT NULL,
  `MOC_CODINT` char(10) DEFAULT NULL,
  `MOC_CODMON` char(3) DEFAULT NULL,
  `MOC_CODPRY` char(8) DEFAULT NULL,
  `MOC_CODSUC` char(6) DEFAULT NULL,
  `MOC_CTAMOD` char(6) DEFAULT NULL,
  `MOC_CUENTA` char(20) DEFAULT NULL,
  `MOC_DESCRI` char(250) DEFAULT NULL,
  `MOC_DOCPAG` char(14) DEFAULT NULL,
  `MOC_DOCUME` char(20) DEFAULT NULL,
  `MOC_ESTORG` char(20) DEFAULT NULL,
  `MOC_FECHA` date DEFAULT NULL,
  `MOC_FILMAI` decimal(8,0) DEFAULT NULL,
  `MOC_ITEM` char(4) DEFAULT NULL,
  `MOC_ITEM_O` char(5) DEFAULT NULL,
  `MOC_ITEM_S` char(5) DEFAULT NULL,
  `MOC_MONTO` decimal(17,2) DEFAULT NULL,
  `MOC_MTOORG` decimal(18,0) DEFAULT NULL,
  `MOC_NODEDU` decimal(1,0) DEFAULT NULL,
  `MOC_NUMCBT` char(8) DEFAULT NULL,
  `MOC_NUMEJE` char(4) DEFAULT NULL,
  `MOC_NUMFIL` decimal(8,0) DEFAULT NULL,
  `MOC_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOC_NUMPAR` char(5) DEFAULT NULL,
  `MOC_NUMTRA` char(8) DEFAULT NULL,
  `MOC_ORIGEN` char(3) DEFAULT NULL,
  `MOC_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOC_RIF` char(12) DEFAULT NULL,
  `MOC_SERFIS` char(2) DEFAULT NULL,
  `MOC_TIPASI` char(3) DEFAULT NULL,
  `MOC_TIPAUX` char(3) DEFAULT NULL,
  `MOC_TIPO` char(4) DEFAULT NULL,
  `MOC_TIPTRA` char(1) DEFAULT NULL,
  `MOC_VALCAM` decimal(17,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientoscol`
--

DROP TABLE IF EXISTS `dpasientoscol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientoscol` (
  `CTD_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CTD_AFTER` char(20) DEFAULT NULL,
  `CTD_DEFAUL` char(250) DEFAULT NULL,
  `CTD_FIELD` char(20) DEFAULT NULL,
  `CTD_MEMOEJ` longtext,
  `CTD_NUMPOS` decimal(2,0) DEFAULT NULL,
  `CTD_PICTUR` char(24) DEFAULT NULL,
  `CTD_REPITE` decimal(1,0) DEFAULT NULL,
  `CTD_SIZE` decimal(3,0) DEFAULT NULL,
  `CTD_TIPDOC` char(3) DEFAULT NULL,
  `CTD_TITLE` char(200) DEFAULT NULL,
  `CTD_USUARI` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientosdpto`
--

DROP TABLE IF EXISTS `dpasientosdpto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientosdpto` (
  `ACP_ACTUAL` char(1) DEFAULT NULL,
  `ACP_CODCTA` char(20) DEFAULT NULL,
  `ACP_CODDEP` char(8) DEFAULT NULL,
  `ACP_CODSUC` char(6) DEFAULT NULL,
  `ACP_CTAMOD` char(6) DEFAULT NULL,
  `ACP_FECHA` date DEFAULT NULL,
  `ACP_ITEM` char(4) DEFAULT NULL,
  `ACP_MONTO` decimal(19,2) DEFAULT NULL,
  `ACP_NUMCBT` char(8) DEFAULT NULL,
  KEY `DPASIENTOSDPTO_2` (`ACP_CODSUC`,`ACP_ACTUAL`,`ACP_NUMCBT`,`ACP_FECHA`,`ACP_ITEM`,`ACP_CODCTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientosorg`
--

DROP TABLE IF EXISTS `dpasientosorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientosorg` (
  `ORG_CODIGO` char(3) NOT NULL,
  `ORG_DESCRI` char(40) DEFAULT NULL,
  PRIMARY KEY (`ORG_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientospre`
--

DROP TABLE IF EXISTS `dpasientospre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientospre` (
  `ASP_ACTUAL` char(1) DEFAULT NULL,
  `ASP_CENCOS` char(8) DEFAULT NULL,
  `ASP_CODCTA` char(20) DEFAULT NULL,
  `ASP_CODMON` char(3) DEFAULT NULL,
  `ASP_CODSUC` char(8) DEFAULT NULL,
  `ASP_CTAMOD` char(6) DEFAULT NULL,
  `ASP_DESCRI` char(40) DEFAULT NULL,
  `ASP_DOCUME` char(10) DEFAULT NULL,
  `ASP_FECHA` date DEFAULT NULL,
  `ASP_ITEM` char(5) DEFAULT NULL,
  `ASP_MONTO` decimal(18,2) DEFAULT NULL,
  `ASP_MTOORG` decimal(19,6) DEFAULT NULL,
  `ASP_NUMEJE` char(4) DEFAULT NULL,
  `ASP_NUMERO` char(10) DEFAULT NULL,
  `ASP_NUMMEM` decimal(7,0) DEFAULT NULL,
  `ASP_ORIGEN` char(3) DEFAULT NULL,
  `ASP_PROYEC` char(8) DEFAULT NULL,
  `ASP_TIPDOC` char(3) DEFAULT NULL,
  `ASP_TIPO` char(2) DEFAULT NULL,
  `ASP_VALCAM` decimal(19,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientosprec`
--

DROP TABLE IF EXISTS `dpasientosprec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientosprec` (
  `MOC_ACTUAL` char(1) DEFAULT NULL,
  `MOC_CENCOS` char(8) DEFAULT NULL,
  `MOC_CODAUX` char(12) DEFAULT NULL,
  `MOC_CODMON` char(3) DEFAULT NULL,
  `MOC_CODSUC` char(6) DEFAULT NULL,
  `MOC_CTAMOD` char(6) DEFAULT NULL,
  `MOC_CUENTA` char(20) DEFAULT NULL,
  `MOC_DESCRI` char(50) DEFAULT NULL,
  `MOC_DOCPAG` char(14) DEFAULT NULL,
  `MOC_DOCUME` char(10) DEFAULT NULL,
  `MOC_FECHA` date DEFAULT NULL,
  `MOC_ITEM` char(4) DEFAULT NULL,
  `MOC_ITEM_O` char(5) DEFAULT NULL,
  `MOC_MONTO` decimal(19,2) DEFAULT NULL,
  `MOC_NUMCBT` char(8) DEFAULT NULL,
  `MOC_NUMMEM` decimal(19,0) DEFAULT NULL,
  `MOC_NUMTRA` char(8) DEFAULT NULL,
  `MOC_ORIGEN` char(3) DEFAULT NULL,
  `MOC_RIF` char(15) DEFAULT NULL,
  `MOC_TIPASI` char(3) DEFAULT NULL,
  `MOC_TIPO` char(4) DEFAULT NULL,
  `MOC_TIPTRA` char(1) DEFAULT NULL,
  `MOC_USUARI` char(3) DEFAULT NULL,
  `MOC_VALCAM` decimal(19,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientosprec_cta`
--

DROP TABLE IF EXISTS `dpasientosprec_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientosprec_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPASIENTOSPREC_CTA_2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPASIENTOSPREC_CTA_4` (`CIC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientostip`
--

DROP TABLE IF EXISTS `dpasientostip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientostip` (
  `AST_APLORG` char(3) DEFAULT NULL,
  `AST_CLRGRA` decimal(10,0) DEFAULT NULL,
  `AST_CODINT` char(10) DEFAULT NULL,
  `AST_DESCRI` char(120) DEFAULT NULL,
  `AST_ID` char(3) NOT NULL,
  `AST_TIPDOC` char(4) DEFAULT NULL,
  `AST_TIPO` char(3) DEFAULT NULL,
  `AST_TIPTRA` char(1) DEFAULT NULL,
  PRIMARY KEY (`AST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpasientostipcol`
--

DROP TABLE IF EXISTS `dpasientostipcol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpasientostipcol` (
  `TDC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TDC_DESCRI` char(250) DEFAULT NULL,
  `TDC_SIZEFN` decimal(3,0) DEFAULT NULL,
  `TDC_TIPO` char(3) DEFAULT NULL,
  `TDC_USUARI` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpatv_ctaref`
--

DROP TABLE IF EXISTS `dpatv_ctaref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpatv_ctaref` (
  `CIR_CODINT` char(6) DEFAULT NULL,
  `CIR_DESCRI` char(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpauditaelimod`
--

DROP TABLE IF EXISTS `dpauditaelimod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpauditaelimod` (
  `AEM_CLAVE` char(120) DEFAULT NULL,
  `AEM_ESTACI` char(20) DEFAULT NULL,
  `AEM_FECHA` date DEFAULT NULL,
  `AEM_HORA` char(8) DEFAULT NULL,
  `AEM_IP` char(15) DEFAULT NULL,
  `AEM_KEY` char(120) DEFAULT NULL,
  `AEM_MEMO` longtext,
  `AEM_OPCION` char(1) DEFAULT NULL,
  `AEM_REGAUD` decimal(8,0) DEFAULT NULL,
  `AEM_TABLA` char(40) DEFAULT NULL,
  `AEM_USUARI` char(3) DEFAULT NULL,
  `AEM_HASH` char(64) DEFAULT NULL,
  `AUD_HASOLD` char(64) DEFAULT NULL,
  KEY `DPAUDITAELIMOD1` (`AEM_TABLA`,`AEM_CLAVE`,`AEM_FECHA`),
  KEY `DPAUDITAELIMOD2` (`AEM_REGAUD`),
  KEY `DPAUDITAELIMOD5` (`AEM_TABLA`,`AEM_HASH`),
  KEY `DPAUDITAELIMOD3` (`AEM_TABLA`,`AEM_HASH`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpauditor`
--

DROP TABLE IF EXISTS `dpauditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpauditor` (
  `AUD_AP` char(1) DEFAULT NULL,
  `AUD_CLAVE` char(200) DEFAULT NULL,
  `AUD_ENCRIP` longtext,
  `AUD_ESTACI` char(14) DEFAULT NULL,
  `AUD_FECHAO` date DEFAULT NULL,
  `AUD_FECHAS` date DEFAULT NULL,
  `AUD_FILMAI` decimal(7,0) DEFAULT NULL,
  `AUD_HORA` char(8) DEFAULT NULL,
  `AUD_IP` char(14) DEFAULT NULL,
  `AUD_MEMO` longtext,
  `AUD_NUMERO` decimal(10,0) DEFAULT NULL,
  `AUD_SCLAVE` char(120) DEFAULT NULL,
  `AUD_TABLA` char(20) DEFAULT NULL,
  `AUD_TIPO` char(4) DEFAULT NULL,
  `AUD_USUARI` char(3) DEFAULT NULL,
  `AUD_HASOLD` char(64) DEFAULT NULL,
  KEY `DPAUDITOR1` (`AUD_TABLA`,`AUD_HASOLD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpauditor_docfis`
--

DROP TABLE IF EXISTS `dpauditor_docfis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpauditor_docfis` (
  `AUD_AP` char(1) DEFAULT NULL,
  `AUD_CLAVE` char(200) DEFAULT NULL,
  `AUD_CODSUC` char(6) DEFAULT NULL,
  `AUD_ENCRIP` longtext,
  `AUD_ESTACI` char(14) DEFAULT NULL,
  `AUD_FECHAO` date DEFAULT NULL,
  `AUD_FECHAS` date DEFAULT NULL,
  `AUD_FILMAI` decimal(7,0) DEFAULT NULL,
  `AUD_HORA` char(8) DEFAULT NULL,
  `AUD_IP` char(14) DEFAULT NULL,
  `AUD_MEMO` longtext,
  `AUD_NUMDOC` char(10) DEFAULT NULL,
  `AUD_NUMERO` decimal(10,0) DEFAULT NULL,
  `AUD_SCLAVE` char(120) DEFAULT NULL,
  `AUD_TABLA` char(20) DEFAULT NULL,
  `AUD_TIPDOC` char(3) DEFAULT NULL,
  `AUD_TIPO` char(4) DEFAULT NULL,
  `AUD_TIPTRA` char(1) DEFAULT NULL,
  `AUD_USUARI` char(3) DEFAULT NULL,
  `AUD_HASH` char(64) DEFAULT NULL,
  KEY `DPAUDITOR_DOCFIS` (`AUD_CODSUC`,`AUD_TIPDOC`,`AUD_NUMDOC`,`AUD_TIPTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpbalanzainv`
--

DROP TABLE IF EXISTS `dpbalanzainv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpbalanzainv` (
  `PXB_CODIGO` char(3) DEFAULT NULL,
  `PXB_CODINV` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpbancodir`
--

DROP TABLE IF EXISTS `dpbancodir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpbancodir` (
  `BAN_ACTIVO` decimal(1,0) DEFAULT NULL,
  `BAN_CESTAT` decimal(1,0) DEFAULT NULL,
  `BAN_CHEQUE` decimal(1,0) DEFAULT NULL,
  `BAN_CODBCO` char(6) DEFAULT NULL,
  `BAN_CODIGO` char(5) DEFAULT NULL,
  `BAN_COMTAR` decimal(6,2) DEFAULT NULL,
  `BAN_CTABAN` char(20) DEFAULT NULL,
  `BAN_ISLR` decimal(5,2) DEFAULT NULL,
  `BAN_MEMO` longtext,
  `BAN_NOMBRE` char(40) NOT NULL,
  `BAN_SWIFT` char(10) DEFAULT NULL,
  `BAN_TARCRE` decimal(1,0) DEFAULT NULL,
  `BAN_TARDEB` decimal(1,0) DEFAULT NULL,
  `BAN_TELEF1` char(12) DEFAULT NULL,
  `BAN_TELEF2` char(12) DEFAULT NULL,
  `BAN_TELEF3` char(12) DEFAULT NULL,
  `BAN_TELEF4` char(12) DEFAULT NULL,
  `BAN_WEB` char(40) DEFAULT NULL,
  PRIMARY KEY (`BAN_NOMBRE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpbancodirpor`
--

DROP TABLE IF EXISTS `dpbancodirpor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpbancodirpor` (
  `CXI_BANCO` char(40) DEFAULT NULL,
  `CXI_CODBCO` char(6) DEFAULT NULL,
  `CXI_CODINS` char(4) DEFAULT NULL,
  `CXI_MARCA` char(25) DEFAULT NULL,
  `CXI_PORCOM` decimal(6,3) DEFAULT NULL,
  `CXI_PORIMP` decimal(6,2) DEFAULT NULL,
  KEY `DPBANCODIRPOR_2` (`CXI_BANCO`),
  KEY `DPBANCODIRPOR_4` (`CXI_CODBCO`),
  KEY `DPBANCODIRPOR_6` (`CXI_CODINS`),
  KEY `DPBANCODIRPOR_8` (`CXI_MARCA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpbancos`
--

DROP TABLE IF EXISTS `dpbancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpbancos` (
  `BAN_ACTIVO` decimal(1,0) DEFAULT NULL,
  `BAN_BCOTXT` char(120) DEFAULT NULL,
  `BAN_CASILL` char(10) DEFAULT NULL,
  `BAN_CLAVE` char(20) DEFAULT NULL,
  `BAN_CODDIR` char(5) DEFAULT NULL,
  `BAN_CODIGO` char(6) NOT NULL,
  `BAN_COMEN1` char(40) DEFAULT NULL,
  `BAN_COMEN2` char(40) DEFAULT NULL,
  `BAN_COMENT` longtext,
  `BAN_CONTAC` char(40) DEFAULT NULL,
  `BAN_DEFAFI` longtext,
  `BAN_DEFCSV` longtext,
  `BAN_DEFNOM` longtext,
  `BAN_DEFPAG` longtext,
  `BAN_DEFREM` longtext,
  `BAN_DEFXLS` longtext,
  `BAN_DEFXML` longtext,
  `BAN_EMAIL` char(30) DEFAULT NULL,
  `BAN_FECHA` date DEFAULT NULL,
  `BAN_FILCSV` char(250) DEFAULT NULL,
  `BAN_FILILX` longtext,
  `BAN_FILXLS` char(250) DEFAULT NULL,
  `BAN_FILXML` char(250) DEFAULT NULL,
  `BAN_HORA` char(8) DEFAULT NULL,
  `BAN_LOGIN` char(20) DEFAULT NULL,
  `BAN_NOMBRE` char(40) DEFAULT NULL,
  `BAN_RIF` char(12) DEFAULT NULL,
  `BAN_TEL1` char(12) DEFAULT NULL,
  `BAN_TEL2` char(12) DEFAULT NULL,
  `BAN_TEL3` char(12) DEFAULT NULL,
  `BAN_TELEF2` char(12) DEFAULT NULL,
  `BAN_TELEFO` char(12) DEFAULT NULL,
  `BAN_WEB` char(40) DEFAULT NULL,
  `BAN_XLSCOL` decimal(2,0) DEFAULT NULL,
  `BAN_XLSDAT` decimal(2,0) DEFAULT NULL,
  `BAN_XLSENC` decimal(2,0) DEFAULT NULL,
  `BAN_XLSFIN` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`BAN_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpbancosper`
--

DROP TABLE IF EXISTS `dpbancosper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpbancosper` (
  `PDC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `PDC_CARGO` char(35) DEFAULT NULL,
  `PDC_CELULA` char(12) DEFAULT NULL,
  `PDC_CI` char(11) DEFAULT NULL,
  `PDC_CLAVE` char(20) DEFAULT NULL,
  `PDC_CODIGO` char(10) DEFAULT NULL,
  `PDC_COMENT` char(40) DEFAULT NULL,
  `PDC_EMAIL` char(70) DEFAULT NULL,
  `PDC_EXTENS` char(4) DEFAULT NULL,
  `PDC_LOGIN` char(20) DEFAULT NULL,
  `PDC_MEMO` decimal(19,0) DEFAULT NULL,
  `PDC_PERSON` char(40) DEFAULT NULL,
  `PDC_PIN` char(8) DEFAULT NULL,
  `PDC_TELEFO` char(12) DEFAULT NULL,
  `PDC_TIPO` char(10) DEFAULT NULL,
  KEY `DPBANCOSPER_2` (`PDC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpbancotip`
--

DROP TABLE IF EXISTS `dpbancotip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpbancotip` (
  `BAN_ABREV` char(14) DEFAULT NULL,
  `BAN_TRAMA` char(2) DEFAULT NULL,
  `TDB_ABREV` char(14) DEFAULT NULL,
  `TDB_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TDB_AUMENT` decimal(1,0) DEFAULT NULL,
  `TDB_BMP` char(250) DEFAULT NULL,
  `TDB_CODIGO` char(4) NOT NULL,
  `TDB_CODMON` char(3) DEFAULT NULL,
  `TDB_CTABCO` char(20) DEFAULT NULL,
  `TDB_CTRNUM` decimal(1,0) DEFAULT NULL,
  `TDB_FECHA` date DEFAULT NULL,
  `TDB_HORA` char(8) DEFAULT NULL,
  `TDB_INGRES` decimal(1,0) DEFAULT NULL,
  `TDB_ITF` decimal(1,0) DEFAULT NULL,
  `TDB_NOMBRE` char(40) DEFAULT NULL,
  `TDB_PAGELE` decimal(1,0) DEFAULT NULL,
  `TDB_PAGOS` decimal(1,0) DEFAULT NULL,
  `TDB_PORCOM` decimal(10,2) DEFAULT NULL,
  `TDB_PORISR` decimal(16,6) DEFAULT NULL,
  `TDB_SIGNO` decimal(2,0) DEFAULT NULL,
  `TDB_TRAMA` char(2) DEFAULT NULL,
  PRIMARY KEY (`TDB_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpbancotipislr`
--

DROP TABLE IF EXISTS `dpbancotipislr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpbancotipislr` (
  `CXI_BANCO` char(40) DEFAULT NULL,
  `CXI_CODBCO` char(6) DEFAULT NULL,
  `CXI_CODINS` char(4) DEFAULT NULL,
  `CXI_MARCA` char(25) DEFAULT NULL,
  `CXI_PORCOM` decimal(6,0) DEFAULT NULL,
  `CXI_PORIMP` decimal(6,0) DEFAULT NULL,
  KEY `DPBANCOTIPISLR_2` (`CXI_CODINS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpbcoctaregcon`
--

DROP TABLE IF EXISTS `dpbcoctaregcon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpbcoctaregcon` (
  `ECB_ASODOC` char(10) DEFAULT NULL,
  `ECB_CHKSUM` decimal(6,0) DEFAULT NULL,
  `ECB_CODBCO` char(6) DEFAULT NULL,
  `ECB_CODMON` char(3) DEFAULT NULL,
  `ECB_CODSUC` char(6) DEFAULT NULL,
  `ECB_CTABCO` char(20) DEFAULT NULL,
  `ECB_DEBE` decimal(19,2) DEFAULT NULL,
  `ECB_DESCRI` char(80) DEFAULT NULL,
  `ECB_FCHREG` date DEFAULT NULL,
  `ECB_FECHA` date DEFAULT NULL,
  `ECB_HABER` decimal(19,2) DEFAULT NULL,
  `ECB_ITEM` char(6) DEFAULT NULL,
  `ECB_MONTO` decimal(19,2) DEFAULT NULL,
  `ECB_MTODIV` decimal(19,2) DEFAULT NULL,
  `ECB_NUMREG` char(6) DEFAULT NULL,
  `ECB_NUMTRA` char(8) DEFAULT NULL,
  `ECB_ORIGEN` char(3) DEFAULT NULL,
  `ECB_REFERE` char(20) DEFAULT NULL,
  `ECB_RIF` char(14) DEFAULT NULL,
  `ECB_SALDO` decimal(19,2) DEFAULT NULL,
  `ECB_TIPBCO` char(4) DEFAULT NULL,
  `ECB_TIPO` char(4) DEFAULT NULL,
  `ECB_TIPREL` char(21) DEFAULT NULL,
  `ECB_VALCAM` decimal(19,2) DEFAULT NULL,
  KEY `DPBCOCTAREGCON_2` (`ECB_CODBCO`,`ECB_CTABCO`),
  KEY `DPBCOCTAREGCON_4` (`ECB_CODBCO`,`ECB_CTABCO`,`ECB_NUMREG`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpbcoctaregcon_his`
--

DROP TABLE IF EXISTS `dpbcoctaregcon_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpbcoctaregcon_his` (
  `ECB_ASODOC` char(10) DEFAULT NULL,
  `ECB_CHKSUM` decimal(5,0) DEFAULT NULL,
  `ECB_CODBCO` char(6) DEFAULT NULL,
  `ECB_CODMON` char(3) DEFAULT NULL,
  `ECB_CODSUC` char(6) DEFAULT NULL,
  `ECB_CTABCO` char(20) DEFAULT NULL,
  `ECB_DEBE` decimal(17,2) DEFAULT NULL,
  `ECB_DESCRI` char(80) DEFAULT NULL,
  `ECB_FCHREG` date DEFAULT NULL,
  `ECB_FECHA` date DEFAULT NULL,
  `ECB_HABER` decimal(17,2) DEFAULT NULL,
  `ECB_ITEM` char(6) DEFAULT NULL,
  `ECB_MONTO` decimal(17,2) DEFAULT NULL,
  `ECB_MTODIV` decimal(17,2) DEFAULT NULL,
  `ECB_NUMREG` char(6) DEFAULT NULL,
  `ECB_NUMTRA` char(8) DEFAULT NULL,
  `ECB_ORIGEN` char(3) DEFAULT NULL,
  `ECB_REFERE` char(20) DEFAULT NULL,
  `ECB_RIF` char(14) DEFAULT NULL,
  `ECB_SALDO` decimal(17,2) DEFAULT NULL,
  `ECB_TIPBCO` char(4) DEFAULT NULL,
  `ECB_TIPO` char(200) DEFAULT NULL,
  `ECB_TIPREL` char(21) DEFAULT NULL,
  `ECB_VALCAM` decimal(17,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpbcodefconc`
--

DROP TABLE IF EXISTS `dpbcodefconc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpbcodefconc` (
  `DFC_CODBCO` char(6) DEFAULT NULL,
  `DFC_INCAUT` decimal(1,0) DEFAULT NULL,
  `DFC_SIGNO` char(1) DEFAULT NULL,
  `DFC_TIPBCO` char(120) DEFAULT NULL,
  `DFC_TIPO` char(4) DEFAULT NULL,
  `DFC_TIPREL` char(10) DEFAULT NULL,
  KEY `DPBCODEFCONC_2` (`DFC_CODBCO`),
  KEY `DPBCODEFCONC_4` (`DFC_TIPO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpbcoxproveedor`
--

DROP TABLE IF EXISTS `dpbcoxproveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpbcoxproveedor` (
  `BXP_ACTIVO` decimal(1,0) DEFAULT NULL,
  `BXP_BCOCTA` char(20) DEFAULT NULL,
  `BXP_CODBCO` char(6) DEFAULT NULL,
  `BXP_CODPRO` char(10) DEFAULT NULL,
  `BXP_DIRBCO` char(40) DEFAULT NULL,
  `BXP_FECHA` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcaja`
--

DROP TABLE IF EXISTS `dpcaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcaja` (
  `CAJ_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CAJ_BRWLBC` decimal(1,0) DEFAULT NULL,
  `CAJ_BRWLBV` decimal(1,0) DEFAULT NULL,
  `CAJ_CODCAJ` char(8) DEFAULT NULL,
  `CAJ_CODCTA` char(20) DEFAULT NULL,
  `CAJ_CODIGO` char(6) NOT NULL,
  `CAJ_CODMON` char(4) DEFAULT NULL,
  `CAJ_CODTRA` char(6) DEFAULT NULL,
  `CAJ_EFEDEP` decimal(19,0) DEFAULT NULL,
  `CAJ_EGRESO` decimal(1,0) DEFAULT NULL,
  `CAJ_FECHA` date DEFAULT NULL,
  `CAJ_HORA` char(8) DEFAULT NULL,
  `CAJ_INGRES` decimal(1,0) DEFAULT NULL,
  `CAJ_MEMO` longtext,
  `CAJ_MTODEP` decimal(19,0) DEFAULT NULL,
  `CAJ_MTODIS` decimal(19,0) DEFAULT NULL,
  `CAJ_NOMBRE` char(40) DEFAULT NULL,
  `CAJ_ORGBCO` decimal(1,0) DEFAULT NULL,
  `CAJ_VALDIS` decimal(1,0) DEFAULT NULL,
  PRIMARY KEY (`CAJ_CODIGO`),
  KEY `DPCAJA_2` (`CAJ_CODTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcaja_cta`
--

DROP TABLE IF EXISTS `dpcaja_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcaja_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(6) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPCAJA_CTA_2` (`CIC_CODSUC`),
  KEY `DPCAJA_CTA_4` (`CIC_CODIGO`),
  KEY `DPCAJA_CTA_6` (`CIC_CTAMOD`,`CIC_CUENTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcajainst`
--

DROP TABLE IF EXISTS `dpcajainst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcajainst` (
  `ICJ_ABREV` char(14) DEFAULT NULL,
  `ICJ_ACTIVO` decimal(1,0) DEFAULT NULL,
  `ICJ_BMP` char(250) DEFAULT NULL,
  `ICJ_CALITF` decimal(1,0) DEFAULT NULL,
  `ICJ_CLIENT` decimal(1,0) DEFAULT NULL,
  `ICJ_CODIGO` char(4) NOT NULL,
  `ICJ_CODMON` char(3) DEFAULT NULL,
  `ICJ_COMBCO` decimal(1,0) DEFAULT NULL,
  `ICJ_CUENTA` char(20) DEFAULT NULL,
  `ICJ_DEPOSI` decimal(1,0) DEFAULT NULL,
  `ICJ_DIRBCO` decimal(1,0) DEFAULT NULL,
  `ICJ_EGRESO` decimal(1,0) DEFAULT NULL,
  `ICJ_FECHA` date DEFAULT NULL,
  `ICJ_HORA` char(8) DEFAULT NULL,
  `ICJ_INGCOM` decimal(1,0) DEFAULT NULL,
  `ICJ_INGRES` decimal(1,0) DEFAULT NULL,
  `ICJ_MEMO` longtext,
  `ICJ_MONEDA` decimal(1,0) DEFAULT NULL,
  `ICJ_NOMBRE` char(40) DEFAULT NULL,
  `ICJ_PAGELE` decimal(1,0) DEFAULT NULL,
  `ICJ_PORITF` decimal(6,0) DEFAULT NULL,
  `ICJ_REQNUM` decimal(1,0) DEFAULT NULL,
  `ICJ_RETIMP` decimal(1,0) DEFAULT NULL,
  `ICJ_TRAEGR` decimal(1,0) DEFAULT NULL,
  `ICJ_TRAING` decimal(1,0) DEFAULT NULL,
  `ICJ_TRAMA` char(3) DEFAULT NULL,
  `ICJ_TRAMAI` char(3) DEFAULT NULL,
  `ICJ_TRAMAIF` char(3) DEFAULT NULL,
  PRIMARY KEY (`ICJ_CODIGO`),
  KEY `DPCAJAINST_2` (`ICJ_CODMON`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcajainst_cta`
--

DROP TABLE IF EXISTS `dpcajainst_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcajainst_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(6) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPCAJAINST_CTA_2` (`CIC_CODIGO`),
  KEY `DPCAJAINST_CTA_4` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPCAJAINST_CTA_6` (`CIC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcajainstxmarca`
--

DROP TABLE IF EXISTS `dpcajainstxmarca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcajainstxmarca` (
  `IXM_CODINS` char(4) DEFAULT NULL,
  `IXM_MARCA` char(25) DEFAULT NULL,
  KEY `DPCAJAINSTXMARCA_2` (`IXM_CODINS`),
  KEY `DPCAJAINSTXMARCA_4` (`IXM_MARCA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcajainstxprov`
--

DROP TABLE IF EXISTS `dpcajainstxprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcajainstxprov` (
  `IXP_ACTIVO` decimal(1,0) DEFAULT NULL,
  `IXP_CODINS` char(4) DEFAULT NULL,
  `IXP_CODPRO` char(10) DEFAULT NULL,
  KEY `DPCAJAINSTXPROV_2` (`IXP_CODINS`),
  KEY `DPCAJAINSTXPROV_4` (`IXP_CODPRO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcajamov`
--

DROP TABLE IF EXISTS `dpcajamov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcajamov` (
  `CAJ_ACT` decimal(2,0) DEFAULT NULL,
  `CAJ_BCODIR` char(20) DEFAULT NULL,
  `CAJ_CAJORG` decimal(1,0) DEFAULT NULL,
  `CAJ_CENCOS` char(8) DEFAULT NULL,
  `CAJ_CHQCTA` char(20) DEFAULT NULL,
  `CAJ_CHQPLA` char(1) DEFAULT NULL,
  `CAJ_CMNNAC` char(3) DEFAULT NULL,
  `CAJ_CODBCO` char(6) DEFAULT NULL,
  `CAJ_CODCAJ` char(6) DEFAULT NULL,
  `CAJ_CODCTA` char(20) DEFAULT NULL,
  `CAJ_CODMAE` char(10) DEFAULT NULL,
  `CAJ_CODMON` char(3) DEFAULT NULL,
  `CAJ_CODSUC` char(6) DEFAULT NULL,
  `CAJ_COMPRO` char(8) DEFAULT NULL,
  `CAJ_CONTAB` char(1) DEFAULT NULL,
  `CAJ_CTAEGR` char(20) DEFAULT NULL,
  `CAJ_CUENTA` char(20) DEFAULT NULL,
  `CAJ_DEBCRE` decimal(2,0) DEFAULT NULL,
  `CAJ_DESCRI` char(60) DEFAULT NULL,
  `CAJ_DOCASO` char(10) DEFAULT NULL,
  `CAJ_FCHCON` date DEFAULT NULL,
  `CAJ_FCHDEP` date DEFAULT NULL,
  `CAJ_FECHA` date DEFAULT NULL,
  `CAJ_FILMAI` decimal(7,0) DEFAULT NULL,
  `CAJ_HORA` char(5) DEFAULT NULL,
  `CAJ_MARCAF` char(20) DEFAULT NULL,
  `CAJ_MONTO` decimal(14,2) DEFAULT NULL,
  `CAJ_MTODIV` decimal(19,2) DEFAULT NULL,
  `CAJ_MTOIMP` decimal(14,2) DEFAULT NULL,
  `CAJ_MTOITF` decimal(19,2) DEFAULT NULL,
  `CAJ_NUMCAJ` char(14) DEFAULT NULL,
  `CAJ_NUMDEP` char(20) DEFAULT NULL,
  `CAJ_NUMERO` char(14) DEFAULT NULL,
  `CAJ_NUMMEM` decimal(6,0) DEFAULT NULL,
  `CAJ_NUMPAG` char(8) DEFAULT NULL,
  `CAJ_NUMTRA` char(8) DEFAULT NULL,
  `CAJ_ORGPAG` char(3) DEFAULT NULL,
  `CAJ_ORIGEN` char(3) DEFAULT NULL,
  `CAJ_PORCOM` decimal(6,3) DEFAULT NULL,
  `CAJ_PORIMP` decimal(6,2) DEFAULT NULL,
  `CAJ_PORITF` decimal(6,2) DEFAULT NULL,
  `CAJ_POSBCO` char(3) DEFAULT NULL,
  `CAJ_REGDEP` char(8) DEFAULT NULL,
  `CAJ_TIPCTA` char(1) DEFAULT NULL,
  `CAJ_TIPO` char(4) DEFAULT NULL,
  `CAJ_USUARI` char(3) DEFAULT NULL,
  `CAJ_VALCAM` decimal(19,6) DEFAULT NULL,
  KEY `DPCAJAMOV1` (`CAJ_CODSUC`,`CAJ_DOCASO`,`CAJ_ORIGEN`),
  KEY `DPCAJAMOV2` (`CAJ_CODSUC`,`CAJ_CODCAJ`,`CAJ_FECHA`,`CAJ_TIPO`,`CAJ_ACT`),
  KEY `DPCAJAMOV3` (`CAJ_ORIGEN`,`CAJ_TIPO`,`CAJ_DEBCRE`,`CAJ_ACT`),
  KEY `DPCAJAMOV5` (`CAJ_CODCAJ`),
  KEY `DPCAJAMOV7` (`CAJ_CODSUC`),
  KEY `DPCAJAMOV9` (`CAJ_TIPO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcajamov_his`
--

DROP TABLE IF EXISTS `dpcajamov_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcajamov_his` (
  `CAJ_ACT` decimal(2,0) DEFAULT NULL,
  `CAJ_BCODIR` char(20) DEFAULT NULL,
  `CAJ_CAJORG` decimal(1,0) DEFAULT NULL,
  `CAJ_CENCOS` char(8) DEFAULT NULL,
  `CAJ_CHQCTA` char(20) DEFAULT NULL,
  `CAJ_CHQPLA` char(1) DEFAULT NULL,
  `CAJ_CMNNAC` char(3) DEFAULT NULL,
  `CAJ_CODBCO` char(6) DEFAULT NULL,
  `CAJ_CODCAJ` char(6) DEFAULT NULL,
  `CAJ_CODCTA` char(20) DEFAULT NULL,
  `CAJ_CODMAE` char(10) DEFAULT NULL,
  `CAJ_CODMON` char(3) DEFAULT NULL,
  `CAJ_CODSUC` char(6) DEFAULT NULL,
  `CAJ_COMPRO` char(8) DEFAULT NULL,
  `CAJ_CONTAB` char(1) DEFAULT NULL,
  `CAJ_CTAEGR` char(20) DEFAULT NULL,
  `CAJ_CUENTA` char(20) DEFAULT NULL,
  `CAJ_DEBCRE` decimal(2,0) DEFAULT NULL,
  `CAJ_DESCRI` char(60) DEFAULT NULL,
  `CAJ_DOCASO` char(10) DEFAULT NULL,
  `CAJ_FCHCON` date DEFAULT NULL,
  `CAJ_FCHDEP` date DEFAULT NULL,
  `CAJ_FECHA` date DEFAULT NULL,
  `CAJ_FILMAI` decimal(7,0) DEFAULT NULL,
  `CAJ_HORA` char(5) DEFAULT NULL,
  `CAJ_MARCAF` char(20) DEFAULT NULL,
  `CAJ_MONTO` decimal(14,2) DEFAULT NULL,
  `CAJ_MTODIV` decimal(19,0) DEFAULT NULL,
  `CAJ_MTOIMP` decimal(14,2) DEFAULT NULL,
  `CAJ_MTOITF` decimal(19,0) DEFAULT NULL,
  `CAJ_NUMCAJ` char(14) DEFAULT NULL,
  `CAJ_NUMDEP` char(20) DEFAULT NULL,
  `CAJ_NUMERO` char(14) DEFAULT NULL,
  `CAJ_NUMMEM` decimal(6,0) DEFAULT NULL,
  `CAJ_NUMPAG` char(8) DEFAULT NULL,
  `CAJ_NUMTRA` char(8) DEFAULT NULL,
  `CAJ_ORGPAG` char(3) DEFAULT NULL,
  `CAJ_ORIGEN` char(3) DEFAULT NULL,
  `CAJ_PORCOM` decimal(6,3) DEFAULT NULL,
  `CAJ_PORIMP` decimal(6,2) DEFAULT NULL,
  `CAJ_PORITF` decimal(6,2) DEFAULT NULL,
  `CAJ_POSBCO` char(3) DEFAULT NULL,
  `CAJ_REGDEP` char(8) DEFAULT NULL,
  `CAJ_TIPCTA` char(1) DEFAULT NULL,
  `CAJ_TIPO` char(4) DEFAULT NULL,
  `CAJ_USUARI` char(3) DEFAULT NULL,
  `CAJ_VALCAM` decimal(19,6) DEFAULT NULL,
  KEY `DPCAJAMOV_HIS_2` (`CAJ_CODCAJ`),
  KEY `DPCAJAMOV_HIS_4` (`CAJ_TIPO`),
  KEY `DPCAJAMOV_HIS_6` (`CAJ_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcajatransf`
--

DROP TABLE IF EXISTS `dpcajatransf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcajatransf` (
  `TDC_ACT` decimal(1,0) DEFAULT NULL,
  `TDC_CAJDES` char(6) DEFAULT NULL,
  `TDC_CAJORG` char(6) DEFAULT NULL,
  `TDC_CODMON` char(3) DEFAULT NULL,
  `TDC_CODSUC` char(6) DEFAULT NULL,
  `TDC_DESCRI` char(40) DEFAULT NULL,
  `TDC_FECHA` date DEFAULT NULL,
  `TDC_HORA` char(6) DEFAULT NULL,
  `TDC_MONTO` decimal(14,2) DEFAULT NULL,
  `TDC_NUMERO` char(8) DEFAULT NULL,
  `TDC_NUMMEM` decimal(8,0) DEFAULT NULL,
  KEY `DPCAJATRANSF_2` (`TDC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcargos`
--

DROP TABLE IF EXISTS `dpcargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcargos` (
  `CAR_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CAR_CODIGO` char(35) NOT NULL,
  `CAR_GERCOM` decimal(1,0) DEFAULT NULL,
  `CAR_NUMMEM` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`CAR_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcategorizacli`
--

DROP TABLE IF EXISTS `dpcategorizacli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcategorizacli` (
  `DFC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `DFC_CAMPO` char(20) DEFAULT NULL,
  `DFC_CODIGO` char(2) NOT NULL,
  `DFC_DESCRI` char(60) DEFAULT NULL,
  `DFC_DIAS` decimal(3,0) DEFAULT NULL,
  `DFC_FECHA` date DEFAULT NULL,
  `DFC_FUNCION` char(40) DEFAULT NULL,
  `DFC_FUNPAR` char(250) DEFAULT NULL,
  `DFC_FUNVAR` char(80) DEFAULT NULL,
  `DFC_HORA` char(8) DEFAULT NULL,
  `DFC_SQLVIS` longtext,
  `DFC_TABLE` char(20) DEFAULT NULL,
  `DFC_VISTA` char(40) DEFAULT NULL,
  `DFC_WHEREF` char(250) DEFAULT NULL,
  PRIMARY KEY (`DFC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcategorizaclidet`
--

DROP TABLE IF EXISTS `dpcategorizaclidet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcategorizaclidet` (
  `DCD_CATEGO` char(40) DEFAULT NULL,
  `DCD_CODIGO` char(2) DEFAULT NULL,
  `DCD_MONTO` decimal(14,0) DEFAULT NULL,
  `DCD_PUNTOS` decimal(3,0) DEFAULT NULL,
  KEY `DPCATEGORIZACLIDET_2` (`DCD_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcatsat`
--

DROP TABLE IF EXISTS `dpcatsat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcatsat` (
  `CAT_CODIGO` char(40) NOT NULL,
  `CAT_CODMAR` char(10) DEFAULT NULL,
  `CAT_DESCRI` char(120) DEFAULT NULL,
  `CAT_MODELO` char(40) DEFAULT NULL,
  PRIMARY KEY (`CAT_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcatsat_inv`
--

DROP TABLE IF EXISTS `dpcatsat_inv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcatsat_inv` (
  `CXI_ANOD` char(4) DEFAULT NULL,
  `CXI_ANOH` char(4) DEFAULT NULL,
  `CXI_CODINV` char(20) DEFAULT NULL,
  `CXI_CODSAT` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcbte`
--

DROP TABLE IF EXISTS `dpcbte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcbte` (
  `CBT_ACTUAL` char(1) DEFAULT NULL,
  `CBT_CENCOS` char(10) DEFAULT NULL,
  `CBT_CENGEN` decimal(1,0) DEFAULT NULL,
  `CBT_CODEMP` char(4) DEFAULT NULL,
  `CBT_CODMON` char(3) DEFAULT NULL,
  `CBT_CODSUC` char(6) DEFAULT NULL,
  `CBT_COMEN1` char(60) DEFAULT NULL,
  `CBT_COMEN2` char(60) DEFAULT NULL,
  `CBT_DEFCBT` char(3) DEFAULT NULL,
  `CBT_FCHFIN` date DEFAULT NULL,
  `CBT_FCHINI` date DEFAULT NULL,
  `CBT_FECHA` date DEFAULT NULL,
  `CBT_FILMAI` decimal(7,0) DEFAULT NULL,
  `CBT_NUMEJE` char(4) DEFAULT NULL,
  `CBT_NUMERO` char(8) DEFAULT NULL,
  `CBT_NUMFIL` decimal(8,0) DEFAULT NULL,
  `CBT_NUMMEM` decimal(6,0) DEFAULT NULL,
  `CBT_NUMPRO` char(6) DEFAULT NULL,
  `CBT_ORGPLA` char(8) DEFAULT NULL,
  `CBT_ORIGEN` char(3) DEFAULT NULL,
  `CBT_PERIOD` char(10) DEFAULT NULL,
  `CBT_REGAUD` decimal(8,0) DEFAULT NULL,
  `CBT_USUARI` char(3) DEFAULT NULL,
  `CBT_VALCAM` decimal(19,2) DEFAULT NULL,
  KEY `DPCBTE_10` (`CBT_CODSUC`,`CBT_NUMEJE`),
  KEY `DPCBTE_2` (`CBT_CODSUC`,`CBT_ACTUAL`,`CBT_NUMERO`,`CBT_FECHA`),
  KEY `DPCBTE_4` (`CBT_CODSUC`,`CBT_NUMERO`,`CBT_FECHA`,`CBT_ACTUAL`),
  KEY `DPCBTE_6` (`CBT_CODSUC`,`CBT_ACTUAL`,`CBT_FECHA`,`CBT_NUMERO`),
  KEY `DPCBTE_8` (`CBT_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcbte_auto`
--

DROP TABLE IF EXISTS `dpcbte_auto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcbte_auto` (
  `CBA_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CBA_ACTUAL` char(1) DEFAULT NULL,
  `CBA_CODSUC` char(6) DEFAULT NULL,
  `CBA_DESCRI` char(180) DEFAULT NULL,
  `CBA_DESDE` date DEFAULT NULL,
  `CBA_FECHA` date DEFAULT NULL,
  `CBA_HASTA` date DEFAULT NULL,
  `CBA_NUMERO` char(8) DEFAULT NULL,
  `CBA_NUMPRG` char(8) DEFAULT NULL,
  `CBA_PERIODO` char(10) DEFAULT NULL,
  KEY `DPCBTE_AUTO_2` (`CBA_CODSUC`,`CBA_ACTUAL`,`CBA_FECHA`,`CBA_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcbte_del`
--

DROP TABLE IF EXISTS `dpcbte_del`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcbte_del` (
  `CBT_ACTUAL` char(1) DEFAULT NULL,
  `CBT_CODEMP` char(4) DEFAULT NULL,
  `CBT_CODMON` char(3) DEFAULT NULL,
  `CBT_CODSUC` char(6) DEFAULT NULL,
  `CBT_COMEN1` char(60) DEFAULT NULL,
  `CBT_COMEN2` char(60) DEFAULT NULL,
  `CBT_DEFCBT` char(3) DEFAULT NULL,
  `CBT_FCHFIN` date DEFAULT NULL,
  `CBT_FCHINI` date DEFAULT NULL,
  `CBT_FECHA` date DEFAULT NULL,
  `CBT_FILMAI` decimal(7,0) DEFAULT NULL,
  `CBT_NUMEJE` char(4) DEFAULT NULL,
  `CBT_NUMERO` char(8) DEFAULT NULL,
  `CBT_NUMMEM` decimal(6,0) DEFAULT NULL,
  `CBT_ORGPLA` char(8) DEFAULT NULL,
  `CBT_ORIGEN` char(3) DEFAULT NULL,
  `CBT_PERIOD` char(10) DEFAULT NULL,
  `CBT_REGAUD` decimal(8,0) DEFAULT NULL,
  `CBT_VALCAM` decimal(17,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcbte_ef`
--

DROP TABLE IF EXISTS `dpcbte_ef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcbte_ef` (
  `CBT_ACTUAL` char(1) DEFAULT NULL,
  `CBT_CENCOS` char(10) DEFAULT NULL,
  `CBT_CENGEN` decimal(1,0) DEFAULT NULL,
  `CBT_CODEMP` char(4) DEFAULT NULL,
  `CBT_CODMON` char(3) DEFAULT NULL,
  `CBT_CODSUC` char(6) DEFAULT NULL,
  `CBT_COMEN1` char(60) DEFAULT NULL,
  `CBT_COMEN2` char(60) DEFAULT NULL,
  `CBT_DEFCBT` char(3) DEFAULT NULL,
  `CBT_FCHFIN` date DEFAULT NULL,
  `CBT_FCHINI` date DEFAULT NULL,
  `CBT_FECHA` date DEFAULT NULL,
  `CBT_FILMAI` decimal(7,0) DEFAULT NULL,
  `CBT_NUMEJE` char(4) DEFAULT NULL,
  `CBT_NUMERO` char(8) DEFAULT NULL,
  `CBT_NUMMEM` decimal(6,0) DEFAULT NULL,
  `CBT_NUMPRO` char(6) DEFAULT NULL,
  `CBT_ORGPLA` char(8) DEFAULT NULL,
  `CBT_ORIGEN` char(3) DEFAULT NULL,
  `CBT_PERIOD` char(10) DEFAULT NULL,
  `CBT_REGAUD` decimal(8,0) DEFAULT NULL,
  `CBT_USUARI` char(3) DEFAULT NULL,
  `CBT_VALCAM` decimal(17,2) DEFAULT NULL,
  KEY `DPCBTE_EF_2` (`CBT_CODSUC`,`CBT_NUMERO`,`CBT_ACTUAL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcbte_his`
--

DROP TABLE IF EXISTS `dpcbte_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcbte_his` (
  `CBT_ACTUAL` char(1) DEFAULT NULL,
  `CBT_CENCOS` char(10) DEFAULT NULL,
  `CBT_CENGEN` decimal(1,0) DEFAULT NULL,
  `CBT_CODEMP` char(4) DEFAULT NULL,
  `CBT_CODMON` char(3) DEFAULT NULL,
  `CBT_CODSUC` char(6) DEFAULT NULL,
  `CBT_COMEN1` char(60) DEFAULT NULL,
  `CBT_COMEN2` char(60) DEFAULT NULL,
  `CBT_DEFCBT` char(3) DEFAULT NULL,
  `CBT_FCHFIN` date DEFAULT NULL,
  `CBT_FCHINI` date DEFAULT NULL,
  `CBT_FECHA` date DEFAULT NULL,
  `CBT_FILMAI` decimal(7,0) DEFAULT NULL,
  `CBT_NUMEJE` char(4) DEFAULT NULL,
  `CBT_NUMERO` char(8) DEFAULT NULL,
  `CBT_NUMMEM` decimal(6,0) DEFAULT NULL,
  `CBT_NUMPRO` char(6) DEFAULT NULL,
  `CBT_ORGPLA` char(8) DEFAULT NULL,
  `CBT_ORIGEN` char(3) DEFAULT NULL,
  `CBT_PERIOD` char(10) DEFAULT NULL,
  `CBT_PERIODO` char(20) DEFAULT NULL,
  `CBT_REGAUD` decimal(8,0) DEFAULT NULL,
  `CBT_USUARI` char(3) DEFAULT NULL,
  `CBT_VALCAM` decimal(19,2) DEFAULT NULL,
  KEY `DPCBTE_HIS_2` (`CBT_CODSUC`),
  KEY `DPCBTE_HIS_4` (`CBT_CODSUC`,`CBT_NUMEJE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcbte_prog`
--

DROP TABLE IF EXISTS `dpcbte_prog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcbte_prog` (
  `CBT_ACTUAL` char(1) DEFAULT NULL,
  `CBT_CODEMP` char(4) DEFAULT NULL,
  `CBT_CODMON` char(3) DEFAULT NULL,
  `CBT_CODSUC` char(6) DEFAULT NULL,
  `CBT_COMEN1` char(60) DEFAULT NULL,
  `CBT_COMEN2` char(60) DEFAULT NULL,
  `CBT_FECHA` date DEFAULT NULL,
  `CBT_FILMAI` decimal(7,0) DEFAULT NULL,
  `CBT_NUMEJE` char(4) DEFAULT NULL,
  `CBT_NUMERO` char(8) DEFAULT NULL,
  `CBT_NUMMEM` decimal(6,0) DEFAULT NULL,
  `CBT_ORIGEN` char(3) DEFAULT NULL,
  `CBT_REGAUD` decimal(8,0) DEFAULT NULL,
  `CBT_VALCAM` decimal(17,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcbteincxpar`
--

DROP TABLE IF EXISTS `dpcbteincxpar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcbteincxpar` (
  `IPC_ACTUAL` char(1) DEFAULT NULL,
  `IPC_CODSUC` char(6) DEFAULT NULL,
  `IPC_FECHA` date DEFAULT NULL,
  `IPC_ITEM` char(4) DEFAULT NULL,
  `IPC_MOTIVO` char(250) DEFAULT NULL,
  `IPC_NUMCBT` char(8) DEFAULT NULL,
  `IPC_NUMPAR` char(6) DEFAULT NULL,
  `IPC_ORIGEN` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcbtepago`
--

DROP TABLE IF EXISTS `dpcbtepago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcbtepago` (
  `PAG_ACT` decimal(2,0) DEFAULT NULL,
  `PAG_ANOMBR` char(40) DEFAULT NULL,
  `PAG_AUTORI` decimal(1,0) DEFAULT NULL,
  `PAG_CBTNUM` char(8) DEFAULT NULL,
  `PAG_CENCOS` char(8) DEFAULT NULL,
  `PAG_CODCAJ` char(6) DEFAULT NULL,
  `PAG_CODIGO` char(10) DEFAULT NULL,
  `PAG_CODMON` char(3) DEFAULT NULL,
  `PAG_CODSUC` char(6) DEFAULT NULL,
  `PAG_COMEN1` char(60) DEFAULT NULL,
  `PAG_COMEN2` char(60) DEFAULT NULL,
  `PAG_DIFCAM` decimal(1,0) DEFAULT NULL,
  `PAG_ESTADO` char(1) DEFAULT NULL,
  `PAG_FCHREG` date DEFAULT NULL,
  `PAG_FECHA` date DEFAULT NULL,
  `PAG_FILMAI` decimal(7,0) DEFAULT NULL,
  `PAG_HORA` char(8) DEFAULT NULL,
  `PAG_IMPRES` decimal(1,0) DEFAULT NULL,
  `PAG_LETRA` char(1) DEFAULT NULL,
  `PAG_MONTO` decimal(14,2) DEFAULT NULL,
  `PAG_MTODIF` decimal(20,2) DEFAULT NULL,
  `PAG_MTOITF` decimal(19,0) DEFAULT NULL,
  `PAG_MTOIVA` decimal(16,2) DEFAULT NULL,
  `PAG_NUMDOC` char(20) DEFAULT NULL,
  `PAG_NUMERO` char(8) DEFAULT NULL,
  `PAG_NUMMEM` decimal(7,0) DEFAULT NULL,
  `PAG_NUMORD` char(8) DEFAULT NULL,
  `PAG_NUMORG` char(8) DEFAULT NULL,
  `PAG_NUMPAR` char(5) DEFAULT NULL,
  `PAG_NUMRMU` char(10) DEFAULT NULL,
  `PAG_REGAUD` decimal(8,0) DEFAULT NULL,
  `PAG_RETIRO` decimal(1,0) DEFAULT NULL,
  `PAG_TIPDOC` char(4) DEFAULT NULL,
  `PAG_TIPPAG` char(1) DEFAULT NULL,
  `PAG_USUAR2` char(3) DEFAULT NULL,
  `PAG_VALCAM` decimal(19,4) DEFAULT NULL,
  KEY `DPCBTEPAGO1` (`PAG_CODSUC`,`PAG_NUMERO`),
  KEY `DPCBTEPAGO3` (`PAG_CENCOS`),
  KEY `DPCBTEPAGO5` (`PAG_CODSUC`),
  KEY `DPCBTEPAGO7` (`PAG_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcbtepago_his`
--

DROP TABLE IF EXISTS `dpcbtepago_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcbtepago_his` (
  `PAG_ACT` decimal(2,0) DEFAULT NULL,
  `PAG_ANOMBR` char(40) DEFAULT NULL,
  `PAG_AUTORI` decimal(1,0) DEFAULT NULL,
  `PAG_CBTNUM` char(8) DEFAULT NULL,
  `PAG_CENCOS` char(8) DEFAULT NULL,
  `PAG_CODCAJ` char(6) DEFAULT NULL,
  `PAG_CODIGO` char(10) DEFAULT NULL,
  `PAG_CODMON` char(3) DEFAULT NULL,
  `PAG_CODSUC` char(6) DEFAULT NULL,
  `PAG_COMEN1` char(60) DEFAULT NULL,
  `PAG_COMEN2` char(60) DEFAULT NULL,
  `PAG_DIFCAM` decimal(1,0) DEFAULT NULL,
  `PAG_ESTADO` char(1) DEFAULT NULL,
  `PAG_FCHREG` date DEFAULT NULL,
  `PAG_FECHA` date DEFAULT NULL,
  `PAG_FILMAI` decimal(7,0) DEFAULT NULL,
  `PAG_HORA` char(8) DEFAULT NULL,
  `PAG_IMPRES` decimal(1,0) DEFAULT NULL,
  `PAG_LETRA` char(1) DEFAULT NULL,
  `PAG_MONTO` decimal(14,2) DEFAULT NULL,
  `PAG_MTODIF` decimal(20,2) DEFAULT NULL,
  `PAG_MTOITF` decimal(19,0) DEFAULT NULL,
  `PAG_MTOIVA` decimal(16,2) DEFAULT NULL,
  `PAG_NUMDOC` char(20) DEFAULT NULL,
  `PAG_NUMERO` char(8) DEFAULT NULL,
  `PAG_NUMMEM` decimal(7,0) DEFAULT NULL,
  `PAG_NUMORD` char(8) DEFAULT NULL,
  `PAG_NUMORG` char(8) DEFAULT NULL,
  `PAG_NUMPAR` char(5) DEFAULT NULL,
  `PAG_NUMRMU` char(10) DEFAULT NULL,
  `PAG_PROYEC` char(8) DEFAULT NULL,
  `PAG_REGAUD` decimal(8,0) DEFAULT NULL,
  `PAG_RETIRO` decimal(1,0) DEFAULT NULL,
  `PAG_TIPDOC` char(4) DEFAULT NULL,
  `PAG_TIPPAG` char(1) DEFAULT NULL,
  `PAG_USUAR2` char(3) DEFAULT NULL,
  `PAG_VALCAM` decimal(19,4) DEFAULT NULL,
  KEY `DPCBTEPAGO_HIS_2` (`PAG_CENCOS`),
  KEY `DPCBTEPAGO_HIS_4` (`PAG_CODSUC`),
  KEY `DPCBTEPAGO_HIS_6` (`PAG_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcbtepresup`
--

DROP TABLE IF EXISTS `dpcbtepresup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcbtepresup` (
  `CPC_ACTUAL` char(1) DEFAULT NULL,
  `CPC_CENCOS` char(8) DEFAULT NULL,
  `CPC_CODSUC` char(8) DEFAULT NULL,
  `CPC_FECHA` date DEFAULT NULL,
  `CPC_NUMEJE` char(4) DEFAULT NULL,
  `CPC_NUMERO` char(10) DEFAULT NULL,
  `CPC_TIPO` char(2) DEFAULT NULL,
  `CPC_TITULO` char(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcbteprog`
--

DROP TABLE IF EXISTS `dpcbteprog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcbteprog` (
  `CCP_ACTUAL` char(1) DEFAULT NULL,
  `CCP_CBTFCH` date DEFAULT NULL,
  `CCP_CBTNUM` char(8) DEFAULT NULL,
  `CCP_CODSUC` char(6) DEFAULT NULL,
  `CCP_FECHA` date DEFAULT NULL,
  `CCP_REGPLA` char(8) DEFAULT NULL,
  KEY `DPCBTEPROG_2` (`CCP_CODSUC`,`CCP_CBTNUM`,`CCP_CBTFCH`,`CCP_ACTUAL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcencos`
--

DROP TABLE IF EXISTS `dpcencos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcencos` (
  `CEN_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CEN_CLDANT` decimal(19,0) DEFAULT NULL,
  `CEN_CLDING` decimal(19,0) DEFAULT NULL,
  `CEN_CLIANT` decimal(19,0) DEFAULT NULL,
  `CEN_CLIING` decimal(19,0) DEFAULT NULL,
  `CEN_CLRGRA` decimal(19,0) DEFAULT NULL,
  `CEN_CODCLI` char(10) DEFAULT NULL,
  `CEN_CODIGO` char(8) NOT NULL,
  `CEN_CODINV` char(20) DEFAULT NULL,
  `CEN_CODMAT` decimal(19,0) DEFAULT NULL,
  `CEN_CODPER` char(10) DEFAULT NULL,
  `CEN_CODSER` decimal(19,0) DEFAULT NULL,
  `CEN_CODSUC` char(8) DEFAULT NULL,
  `CEN_COMEN1` char(40) DEFAULT NULL,
  `CEN_COMEN2` char(40) DEFAULT NULL,
  `CEN_COMMAT` decimal(19,0) DEFAULT NULL,
  `CEN_COMSER` decimal(19,0) DEFAULT NULL,
  `CEN_DEFSUB` char(120) DEFAULT NULL,
  `CEN_DESCRI` char(50) DEFAULT NULL,
  `CEN_FCHFIN` date DEFAULT NULL,
  `CEN_FCHINI` date DEFAULT NULL,
  `CEN_FILMAI` decimal(7,0) DEFAULT NULL,
  `CEN_MTDCXC` decimal(19,0) DEFAULT NULL,
  `CEN_MTDCXP` decimal(19,0) DEFAULT NULL,
  `CEN_MTDFAV` decimal(19,0) DEFAULT NULL,
  `CEN_MTDGAS` decimal(19,0) DEFAULT NULL,
  `CEN_MTDMAQ` decimal(19,0) DEFAULT NULL,
  `CEN_MTDMAT` decimal(19,0) DEFAULT NULL,
  `CEN_MTDOTR` decimal(19,0) DEFAULT NULL,
  `CEN_MTDPAP` decimal(19,0) DEFAULT NULL,
  `CEN_MTDPRE` decimal(19,0) DEFAULT NULL,
  `CEN_MTDSER` decimal(19,0) DEFAULT NULL,
  `CEN_MTDTRA` decimal(19,0) DEFAULT NULL,
  `CEN_MTOCXC` decimal(19,0) DEFAULT NULL,
  `CEN_MTOCXP` decimal(19,0) DEFAULT NULL,
  `CEN_MTOFAV` decimal(19,0) DEFAULT NULL,
  `CEN_MTOGAS` decimal(19,0) DEFAULT NULL,
  `CEN_MTOMAQ` decimal(19,0) DEFAULT NULL,
  `CEN_MTOMAT` decimal(19,0) DEFAULT NULL,
  `CEN_MTOOTR` decimal(19,0) DEFAULT NULL,
  `CEN_MTOPAP` decimal(19,0) DEFAULT NULL,
  `CEN_MTOPRE` decimal(19,0) DEFAULT NULL,
  `CEN_MTOSER` decimal(19,0) DEFAULT NULL,
  `CEN_MTOTRA` decimal(19,0) DEFAULT NULL,
  `CEN_NUMDOC` char(10) DEFAULT NULL,
  `CEN_NUMMEM` decimal(7,0) DEFAULT NULL,
  `CEN_PORGAN` decimal(6,0) DEFAULT NULL,
  `CEN_POROPE` decimal(5,0) DEFAULT NULL,
  `CEN_PORPRO` decimal(5,0) DEFAULT NULL,
  `CEN_PORSER` decimal(5,0) DEFAULT NULL,
  `CEN_PORVTA` decimal(5,0) DEFAULT NULL,
  `CEN_PRDANT` decimal(19,0) DEFAULT NULL,
  `CEN_PRDPAG` decimal(19,0) DEFAULT NULL,
  `CEN_PROANT` decimal(19,0) DEFAULT NULL,
  `CEN_PRODUC` decimal(1,0) DEFAULT NULL,
  `CEN_PROPAG` decimal(19,0) DEFAULT NULL,
  `CEN_REGACT` decimal(1,0) DEFAULT NULL,
  `CEN_REGINV` decimal(1,0) DEFAULT NULL,
  `CEN_REGPRO` decimal(1,0) DEFAULT NULL,
  `CEN_REGTRA` decimal(1,0) DEFAULT NULL,
  `CEN_RIF` char(12) DEFAULT NULL,
  `CEN_RIFMAQ` char(10) DEFAULT NULL,
  `CEN_TIPDOC` char(3) DEFAULT NULL,
  `CEN_TITCOL` char(20) DEFAULT NULL,
  PRIMARY KEY (`CEN_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpciudades`
--

DROP TABLE IF EXISTS `dpciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpciudades` (
  `CIUDAD` char(40) DEFAULT NULL,
  `CODAREA` char(4) DEFAULT NULL,
  `ESTADO` char(40) DEFAULT NULL,
  `PAIS` char(40) DEFAULT NULL,
  KEY `DPCIUDADES_2` (`PAIS`,`ESTADO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclactaegre`
--

DROP TABLE IF EXISTS `dpclactaegre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclactaegre` (
  `CCE_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CCE_CLRGRA` decimal(10,0) DEFAULT NULL,
  `CCE_CODIGO` char(10) NOT NULL,
  `CCE_DESCRI` char(49) DEFAULT NULL,
  `CCE_GASTO` decimal(1,0) DEFAULT NULL,
  `CCE_MEMO` longtext,
  `CCE_TIPO` char(30) DEFAULT NULL,
  PRIMARY KEY (`CCE_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclasifictareas`
--

DROP TABLE IF EXISTS `dpclasifictareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclasifictareas` (
  `CDT_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CDT_CLRGRA` decimal(10,0) DEFAULT NULL,
  `CDT_CLRHEX` char(10) DEFAULT NULL,
  `CDT_CODIGO` char(10) DEFAULT NULL,
  `CDT_DESCRI` char(40) DEFAULT NULL,
  `CDT_FILMAI` decimal(7,0) DEFAULT NULL,
  `CDT_NUMMEM` decimal(8,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclavaloragre`
--

DROP TABLE IF EXISTS `dpclavaloragre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclavaloragre` (
  `CVA_CODIGO` char(10) NOT NULL,
  `CVA_DESCRI` char(40) DEFAULT NULL,
  `CVA_TEXTO` longtext,
  PRIMARY KEY (`CVA_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcliasoc`
--

DROP TABLE IF EXISTS `dpcliasoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcliasoc` (
  `CCA_CODCLI` char(10) DEFAULT NULL,
  `CCA_CODIGO` char(10) DEFAULT NULL,
  `CCA_COMENT` char(40) DEFAULT NULL,
  `CCA_FECHA` date DEFAULT NULL,
  `CCA_NUMMEM` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclicla`
--

DROP TABLE IF EXISTS `dpclicla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclicla` (
  `CLC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CLC_CLRGRA` decimal(10,0) DEFAULT NULL,
  `CLC_CODIGO` char(6) NOT NULL,
  `CLC_DESCRI` char(40) DEFAULT NULL,
  `CLC_MEMO` longtext,
  `CLC_TIPO` char(60) DEFAULT NULL,
  PRIMARY KEY (`CLC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclientecta`
--

DROP TABLE IF EXISTS `dpclientecta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclientecta` (
  `CXC_CODIGO` char(10) DEFAULT NULL,
  `CXC_CODMOD` char(6) DEFAULT NULL,
  `CXC_CTACRE` char(20) DEFAULT NULL,
  `CXC_CTADEB` char(20) DEFAULT NULL,
  `CXC_FECHA` date DEFAULT NULL,
  `CXC_HORA` char(8) DEFAULT NULL,
  `CXC_TIPDOC` char(3) DEFAULT NULL,
  `CXC_USUARI` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclientecta_his`
--

DROP TABLE IF EXISTS `dpclientecta_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclientecta_his` (
  `CXC_CODIGO` char(10) DEFAULT NULL,
  `CXC_CODMOD` char(6) DEFAULT NULL,
  `CXC_CTACRE` char(20) DEFAULT NULL,
  `CXC_CTADEB` char(20) DEFAULT NULL,
  `CXC_FECHA` date DEFAULT NULL,
  `CXC_HORA` char(8) DEFAULT NULL,
  `CXC_TIPDOC` char(3) DEFAULT NULL,
  `CXC_USUARI` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclienteent`
--

DROP TABLE IF EXISTS `dpclienteent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclienteent` (
  `ENT_ATENDI` char(20) DEFAULT NULL,
  `ENT_BASEDA` char(20) DEFAULT NULL,
  `ENT_CALINT` char(10) DEFAULT NULL,
  `ENT_CALPRO` char(20) DEFAULT NULL,
  `ENT_CALRES` char(10) DEFAULT NULL,
  `ENT_CALSER` char(20) DEFAULT NULL,
  `ENT_CALTEC` char(10) DEFAULT NULL,
  `ENT_CALVEN` char(10) DEFAULT NULL,
  `ENT_CANUSU` decimal(3,0) DEFAULT NULL,
  `ENT_CARGO` char(20) DEFAULT NULL,
  `ENT_CODIGO` char(10) DEFAULT NULL,
  `ENT_CODSUC` char(6) DEFAULT NULL,
  `ENT_CODTRA` char(6) DEFAULT NULL,
  `ENT_CODVEN` char(8) DEFAULT NULL,
  `ENT_COMENT` char(40) DEFAULT NULL,
  `ENT_CONCOL` char(20) DEFAULT NULL,
  `ENT_CONREM` decimal(2,0) DEFAULT NULL,
  `ENT_CONTRA` char(1) DEFAULT NULL,
  `ENT_CURSOS` char(1) DEFAULT NULL,
  `ENT_DETAL` char(1) DEFAULT NULL,
  `ENT_ECOMME` char(30) DEFAULT NULL,
  `ENT_FABRIC` char(1) DEFAULT NULL,
  `ENT_FCHVIS` date DEFAULT NULL,
  `ENT_FCHVOL` date DEFAULT NULL,
  `ENT_FECHA` date DEFAULT NULL,
  `ENT_FRANC` char(1) DEFAULT NULL,
  `ENT_HORA` char(8) DEFAULT NULL,
  `ENT_HORVOL` char(8) DEFAULT NULL,
  `ENT_IMPORT` char(1) DEFAULT NULL,
  `ENT_LOCTI` char(1) DEFAULT NULL,
  `ENT_MAYOR` char(1) DEFAULT NULL,
  `ENT_MEDIO` char(20) DEFAULT NULL,
  `ENT_MONEXT` char(1) DEFAULT NULL,
  `ENT_NUEPRO` char(20) DEFAULT NULL,
  `ENT_NUMERO` char(8) DEFAULT NULL,
  `ENT_NUMMEM` decimal(6,0) DEFAULT NULL,
  `ENT_ORIGEN` char(1) DEFAULT NULL,
  `ENT_OSPC` char(40) DEFAULT NULL,
  `ENT_PERSON` char(20) DEFAULT NULL,
  `ENT_PETROL` char(1) DEFAULT NULL,
  `ENT_PRESER` char(1) DEFAULT NULL,
  `ENT_RECLAM` char(40) DEFAULT NULL,
  `ENT_REQSER` char(1) DEFAULT NULL,
  `ENT_SERVID` char(20) DEFAULT NULL,
  `ENT_SISADM` char(20) DEFAULT NULL,
  `ENT_SISCON` char(20) DEFAULT NULL,
  `ENT_SISNOM` char(20) DEFAULT NULL,
  `ENT_SISOTR` char(60) DEFAULT NULL,
  `ENT_SITUAC` char(30) DEFAULT NULL,
  `ENT_SUCURS` decimal(2,0) DEFAULT NULL,
  `ENT_TIPO` char(1) DEFAULT NULL,
  `ENT_TRABAJ` decimal(4,0) DEFAULT NULL,
  `ENT_ULTPER` char(40) DEFAULT NULL,
  `ENT_USUARI` char(3) DEFAULT NULL,
  `ENT_WINDOW` char(1) DEFAULT NULL,
  KEY `DPCLIENTEENT_2` (`ENT_NUMERO`,`ENT_TIPO`),
  KEY `DPCLIENTEENT_4` (`ENT_CODIGO`),
  KEY `DPCLIENTEENT_6` (`ENT_CODSUC`),
  KEY `DPCLIENTEENT_8` (`ENT_CODTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclienteprog`
--

DROP TABLE IF EXISTS `dpclienteprog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclienteprog` (
  `DPG_CODIGO` char(10) DEFAULT NULL,
  `DPG_CODINV` char(20) DEFAULT NULL,
  `DPG_CODSUC` char(6) DEFAULT NULL,
  `DPG_CUODIV` decimal(1,0) DEFAULT NULL,
  `DPG_DIA` decimal(4,0) DEFAULT NULL,
  `DPG_DIAS` decimal(6,0) DEFAULT NULL,
  `DPG_ESTATU` char(1) DEFAULT NULL,
  `DPG_FCGPRI` date DEFAULT NULL,
  `DPG_FCHFIN` date DEFAULT NULL,
  `DPG_FCHINI` date DEFAULT NULL,
  `DPG_FECHA` date DEFAULT NULL,
  `DPG_FILMAI` decimal(7,0) DEFAULT NULL,
  `DPG_LTEXTO` decimal(1,0) DEFAULT NULL,
  `DPG_MONTO` decimal(14,2) DEFAULT NULL,
  `DPG_MTOORG` decimal(14,2) DEFAULT NULL,
  `DPG_NUMDOC` char(10) DEFAULT NULL,
  `DPG_NUMERO` char(8) DEFAULT NULL,
  `DPG_NUMMEM` decimal(8,0) DEFAULT NULL,
  `DPG_PERIOD` char(15) DEFAULT NULL,
  `DPG_REFERE` char(120) DEFAULT NULL,
  `DPG_TIPDES` char(3) DEFAULT NULL,
  `DPG_TIPDOC` char(3) DEFAULT NULL,
  `DPG_TIPTRA` char(1) DEFAULT NULL,
  `DPG_VALCAM` decimal(19,0) DEFAULT NULL,
  `DPG_VARIA` decimal(1,0) DEFAULT NULL,
  `DPG_VECES` decimal(3,0) DEFAULT NULL,
  `INV_GRUACT` char(8) DEFAULT NULL,
  `PDG_CUOTAS` decimal(1,0) DEFAULT NULL,
  KEY `DPCLIENTEPROG_2` (`DPG_CODSUC`,`DPG_TIPDOC`,`DPG_NUMDOC`,`DPG_TIPTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclientes`
--

DROP TABLE IF EXISTS `dpclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclientes` (
  `CLI_ACTECO` char(200) DEFAULT NULL,
  `CLI_ACTIVI` char(6) DEFAULT NULL,
  `CLI_AM_F` char(5) DEFAULT NULL,
  `CLI_AM_I` char(5) DEFAULT NULL,
  `CLI_AREA` char(4) DEFAULT NULL,
  `CLI_CAPPAG` decimal(16,2) DEFAULT NULL,
  `CLI_CAPSUS` decimal(16,2) DEFAULT NULL,
  `CLI_CATEGO` char(40) DEFAULT NULL,
  `CLI_CDESC` char(30) DEFAULT NULL,
  `CLI_CELUL1` char(15) DEFAULT NULL,
  `CLI_CELUL2` char(15) DEFAULT NULL,
  `CLI_CIUDAD` char(100) DEFAULT NULL,
  `CLI_CLAVE` char(10) DEFAULT NULL,
  `CLI_CLRGRA` decimal(10,0) DEFAULT NULL,
  `CLI_CNDFIS` char(250) DEFAULT NULL,
  `CLI_CODCLA` char(6) DEFAULT NULL,
  `CLI_CODCOB` char(6) DEFAULT NULL,
  `CLI_CODIGO` char(10) NOT NULL,
  `CLI_CODMON` char(3) DEFAULT NULL,
  `CLI_CODPER` char(6) DEFAULT NULL,
  `CLI_CODRUT` char(6) DEFAULT NULL,
  `CLI_CODSUC` char(6) DEFAULT NULL,
  `CLI_CODVEN` char(6) DEFAULT NULL,
  `CLI_CONDIC` char(60) DEFAULT NULL,
  `CLI_CONESP` char(1) DEFAULT NULL,
  `CLI_CONTRI` char(1) DEFAULT NULL,
  `CLI_CUENTA` char(20) DEFAULT NULL,
  `CLI_DESCUE` decimal(6,2) DEFAULT NULL,
  `CLI_DESFIJ` char(3) DEFAULT NULL,
  `CLI_DIACAJ` char(10) DEFAULT NULL,
  `CLI_DIAFIN` decimal(2,0) DEFAULT NULL,
  `CLI_DIAINI` decimal(2,0) DEFAULT NULL,
  `CLI_DIAS` decimal(4,0) DEFAULT NULL,
  `CLI_DIAVEN` decimal(3,0) DEFAULT NULL,
  `CLI_DIR1` char(120) DEFAULT NULL,
  `CLI_DIR2` char(120) DEFAULT NULL,
  `CLI_DIR3` char(120) DEFAULT NULL,
  `CLI_DIR4` char(120) DEFAULT NULL,
  `CLI_EDOCIV` char(1) DEFAULT NULL,
  `CLI_EMAIL` char(200) DEFAULT NULL,
  `CLI_EMANAG` decimal(1,0) DEFAULT NULL,
  `CLI_EM_AFI` decimal(1,0) DEFAULT NULL,
  `CLI_ENOTRA` char(3) DEFAULT NULL,
  `CLI_ESTADO` char(20) DEFAULT NULL,
  `CLI_FCHCIE` date DEFAULT NULL,
  `CLI_FCHINI` date DEFAULT NULL,
  `CLI_FCHLIM` date DEFAULT NULL,
  `CLI_FCHUPD` date DEFAULT NULL,
  `CLI_FECHA` date DEFAULT NULL,
  `CLI_FILBMP` char(30) DEFAULT NULL,
  `CLI_FILMAI` decimal(7,0) DEFAULT NULL,
  `CLI_FREVTA` char(10) DEFAULT NULL,
  `CLI_GACETA` char(6) DEFAULT NULL,
  `CLI_GACFCH` date DEFAULT NULL,
  `CLI_HORACJ` char(8) DEFAULT NULL,
  `CLI_INVMON` char(3) DEFAULT NULL,
  `CLI_LIMITE` decimal(14,2) DEFAULT NULL,
  `CLI_LISTA` char(1) DEFAULT NULL,
  `CLI_LOCTI` char(1) DEFAULT NULL,
  `CLI_LOGIN` char(15) DEFAULT NULL,
  `CLI_LOPTI` char(1) DEFAULT NULL,
  `CLI_MARCA` char(80) DEFAULT NULL,
  `CLI_MESCIE` char(12) DEFAULT NULL,
  `CLI_MTOVEN` decimal(14,2) DEFAULT NULL,
  `CLI_MUNICI` char(20) DEFAULT NULL,
  `CLI_NIT` char(15) DEFAULT NULL,
  `CLI_NOMBRE` char(120) DEFAULT NULL,
  `CLI_NUMMEM` decimal(7,0) DEFAULT NULL,
  `CLI_OBS1` char(250) DEFAULT NULL,
  `CLI_OBS2` char(250) DEFAULT NULL,
  `CLI_PAGDOM` decimal(1,0) DEFAULT NULL,
  `CLI_PAGELE` char(1) DEFAULT NULL,
  `CLI_PAGJUE` decimal(1,0) DEFAULT NULL,
  `CLI_PAGLUN` decimal(1,0) DEFAULT NULL,
  `CLI_PAGMAR` decimal(1,0) DEFAULT NULL,
  `CLI_PAGMIE` decimal(1,0) DEFAULT NULL,
  `CLI_PAGSAB` decimal(1,0) DEFAULT NULL,
  `CLI_PAGVIE` decimal(1,0) DEFAULT NULL,
  `CLI_PAIS` char(20) DEFAULT NULL,
  `CLI_PARROQ` char(20) DEFAULT NULL,
  `CLI_PM_F` char(5) DEFAULT NULL,
  `CLI_PM_I` char(5) DEFAULT NULL,
  `CLI_PORPEN` decimal(5,0) DEFAULT NULL,
  `CLI_PRECIO` char(1) DEFAULT NULL,
  `CLI_REGMER` char(30) DEFAULT NULL,
  `CLI_RESIDE` char(3) DEFAULT NULL,
  `CLI_RETIVA` decimal(5,2) DEFAULT NULL,
  `CLI_RIF` char(15) DEFAULT NULL,
  `CLI_RIFVAL` decimal(1,0) DEFAULT NULL,
  `CLI_SEXO` char(1) DEFAULT NULL,
  `CLI_SITUAC` char(40) DEFAULT NULL,
  `CLI_TEL1` char(20) DEFAULT NULL,
  `CLI_TEL2` char(20) DEFAULT NULL,
  `CLI_TEL3` char(20) DEFAULT NULL,
  `CLI_TEL4` char(20) DEFAULT NULL,
  `CLI_TEL5` char(12) DEFAULT NULL,
  `CLI_TEL6` char(12) DEFAULT NULL,
  `CLI_TERCER` char(1) DEFAULT NULL,
  `CLI_TIPPER` char(10) DEFAULT NULL,
  `CLI_TRANSP` decimal(14,2) DEFAULT NULL,
  `CLI_USUARI` char(3) DEFAULT NULL,
  `CLI_VACFIN` date DEFAULT NULL,
  `CLI_VACINI` date DEFAULT NULL,
  `CLI_VALRIF` decimal(1,0) DEFAULT NULL,
  `CLI_WEB` char(50) DEFAULT NULL,
  `CLI_ZONANL` char(10) DEFAULT NULL,
  PRIMARY KEY (`CLI_CODIGO`),
  KEY `DPCLIENTES_10` (`CLI_CODVEN`),
  KEY `DPCLIENTES_2` (`CLI_ACTIVI`),
  KEY `DPCLIENTES_4` (`CLI_CODCLA`),
  KEY `DPCLIENTES_6` (`CLI_LISTA`),
  KEY `DPCLIENTES_8` (`CLI_CODRUT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclientes_cta`
--

DROP TABLE IF EXISTS `dpclientes_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclientes_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPCLIENTES_CTA_2` (`CIC_CODSUC`),
  KEY `DPCLIENTES_CTA_4` (`CIC_CODIGO`),
  KEY `DPCLIENTES_CTA_6` (`CIC_CTAMOD`,`CIC_CUENTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclientescero`
--

DROP TABLE IF EXISTS `dpclientescero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclientescero` (
  `CCG_ACTECO` char(200) DEFAULT NULL,
  `CCG_ACTIVI` char(6) DEFAULT NULL,
  `CCG_AM_F` char(5) DEFAULT NULL,
  `CCG_AM_I` char(5) DEFAULT NULL,
  `CCG_AREA` char(4) DEFAULT NULL,
  `CCG_CAPPAG` decimal(19,2) DEFAULT NULL,
  `CCG_CAPSUS` decimal(19,2) DEFAULT NULL,
  `CCG_CATEGO` char(1) DEFAULT NULL,
  `CCG_CDESC` char(30) DEFAULT NULL,
  `CCG_CELUL1` char(15) DEFAULT NULL,
  `CCG_CELUL2` char(15) DEFAULT NULL,
  `CCG_CLAVE` char(10) DEFAULT NULL,
  `CCG_CODCLA` char(6) DEFAULT NULL,
  `CCG_CODCOB` char(6) DEFAULT NULL,
  `CCG_CODIGO` char(10) DEFAULT NULL,
  `CCG_CODMON` char(3) DEFAULT NULL,
  `CCG_CODPER` char(6) DEFAULT NULL,
  `CCG_CODSUC` char(6) DEFAULT NULL,
  `CCG_CODVEN` char(6) DEFAULT NULL,
  `CCG_CONDIC` char(30) DEFAULT NULL,
  `CCG_CONESP` char(1) DEFAULT NULL,
  `CCG_CONTRI` char(1) DEFAULT NULL,
  `CCG_CORPRY` char(6) DEFAULT NULL,
  `CCG_CUENTA` char(20) DEFAULT NULL,
  `CCG_DESCUE` decimal(19,2) DEFAULT NULL,
  `CCG_DIACAJ` char(10) DEFAULT NULL,
  `CCG_DIAFIN` decimal(19,0) DEFAULT NULL,
  `CCG_DIAINI` decimal(19,0) DEFAULT NULL,
  `CCG_DIAS` decimal(19,0) DEFAULT NULL,
  `CCG_DIAVEN` decimal(10,0) DEFAULT NULL,
  `CCG_DIR1` char(50) DEFAULT NULL,
  `CCG_DIR2` char(50) DEFAULT NULL,
  `CCG_DIR3` char(50) DEFAULT NULL,
  `CCG_DIR4` char(50) DEFAULT NULL,
  `CCG_DIR5` char(50) DEFAULT NULL,
  `CCG_EMAIL` char(70) DEFAULT NULL,
  `CCG_ENOTRA` char(1) DEFAULT NULL,
  `CCG_ESTADO` char(20) DEFAULT NULL,
  `CCG_FCHCIE` date DEFAULT NULL,
  `CCG_FCHUPD` date DEFAULT NULL,
  `CCG_FECHA` date DEFAULT NULL,
  `CCG_FILBMP` char(30) DEFAULT NULL,
  `CCG_FILMAI` decimal(19,0) DEFAULT NULL,
  `CCG_GACETA` char(6) DEFAULT NULL,
  `CCG_GACFCH` date DEFAULT NULL,
  `CCG_HORACJ` char(8) DEFAULT NULL,
  `CCG_INVMON` char(3) DEFAULT NULL,
  `CCG_LIMITE` decimal(19,2) DEFAULT NULL,
  `CCG_LISTA` char(1) DEFAULT NULL,
  `CCG_LOGIN` char(15) DEFAULT NULL,
  `CCG_LOPTI` char(1) DEFAULT NULL,
  `CCG_MARCA` char(80) DEFAULT NULL,
  `CCG_MESCIE` char(12) DEFAULT NULL,
  `CCG_MTOVEN` decimal(19,2) DEFAULT NULL,
  `CCG_MUNICI` char(20) DEFAULT NULL,
  `CCG_NIT` char(15) DEFAULT NULL,
  `CCG_NOMBRE` char(60) DEFAULT NULL,
  `CCG_NUMDOC` char(10) DEFAULT NULL,
  `CCG_NUMMEM` decimal(19,0) DEFAULT NULL,
  `CCG_OBS1` char(25) DEFAULT NULL,
  `CCG_OBS2` char(25) DEFAULT NULL,
  `CCG_PAGDOM` decimal(1,0) DEFAULT NULL,
  `CCG_PAGELE` decimal(1,0) DEFAULT NULL,
  `CCG_PAGJUE` decimal(1,0) DEFAULT NULL,
  `CCG_PAGLUN` decimal(1,0) DEFAULT NULL,
  `CCG_PAGMAR` decimal(1,0) DEFAULT NULL,
  `CCG_PAGMIE` decimal(1,0) DEFAULT NULL,
  `CCG_PAGSAB` decimal(1,0) DEFAULT NULL,
  `CCG_PAGVIE` decimal(1,0) DEFAULT NULL,
  `CCG_PAIS` char(20) DEFAULT NULL,
  `CCG_PARROQ` char(20) DEFAULT NULL,
  `CCG_PM_F` char(5) DEFAULT NULL,
  `CCG_PM_I` char(5) DEFAULT NULL,
  `CCG_PRECIO` char(1) DEFAULT NULL,
  `CCG_REGMER` char(30) DEFAULT NULL,
  `CCG_RESIDE` char(1) DEFAULT NULL,
  `CCG_RETIVA` decimal(19,2) DEFAULT NULL,
  `CCG_RIF` char(15) DEFAULT NULL,
  `CCG_RIFVAL` decimal(1,0) DEFAULT NULL,
  `CCG_SITUAC` char(1) DEFAULT NULL,
  `CCG_TEL1` char(12) DEFAULT NULL,
  `CCG_TEL2` char(12) DEFAULT NULL,
  `CCG_TEL3` char(12) DEFAULT NULL,
  `CCG_TEL4` char(12) DEFAULT NULL,
  `CCG_TEL5` char(12) DEFAULT NULL,
  `CCG_TEL6` char(12) DEFAULT NULL,
  `CCG_TERCER` char(1) DEFAULT NULL,
  `CCG_TIPDOC` char(3) DEFAULT NULL,
  `CCG_TIPPER` char(1) DEFAULT NULL,
  `CCG_TIPTRA` char(1) DEFAULT NULL,
  `CCG_TRANSP` decimal(19,2) DEFAULT NULL,
  `CCG_USUARI` char(3) DEFAULT NULL,
  `CCG_VACFIN` date DEFAULT NULL,
  `CCG_VACINI` date DEFAULT NULL,
  `CCG_VALRIF` decimal(1,0) DEFAULT NULL,
  `CCG_WEB` char(50) DEFAULT NULL,
  `CCG_ZONANL` char(1) DEFAULT NULL,
  KEY `DPCLIENTESCERO_2` (`CCG_CODSUC`,`CCG_TIPDOC`,`CCG_NUMDOC`,`CCG_TIPTRA`),
  KEY `DPCLIENTESCERO_4` (`CCG_CODSUC`,`CCG_TIPDOC`,`CCG_NUMDOC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclientescla`
--

DROP TABLE IF EXISTS `dpclientescla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclientescla` (
  `CEC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CEC_CODCLA` char(20) DEFAULT NULL,
  `CEC_CODIGO` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclientesdely`
--

DROP TABLE IF EXISTS `dpclientesdely`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclientesdely` (
  `CDL_DIR1` char(40) DEFAULT NULL,
  `CDL_DIR2` char(40) DEFAULT NULL,
  `CDL_DIR3` char(40) DEFAULT NULL,
  `CDL_DIREN1` char(40) DEFAULT NULL,
  `CDL_DIREN2` char(40) DEFAULT NULL,
  `CDL_DIREN3` char(40) DEFAULT NULL,
  `CDL_NOMBRE` char(40) DEFAULT NULL,
  `CDL_PEDIDO` char(10) DEFAULT NULL,
  `CDL_RIF` char(15) NOT NULL,
  `CDL_TEL1` char(40) DEFAULT NULL,
  `CDL_TEL2` char(40) DEFAULT NULL,
  `CDL_ZONA` char(40) DEFAULT NULL,
  `CDL_ZONA2` char(40) DEFAULT NULL,
  PRIMARY KEY (`CDL_RIF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclientesdivxtip`
--

DROP TABLE IF EXISTS `dpclientesdivxtip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclientesdivxtip` (
  `DXC_CODCLI` char(10) DEFAULT NULL,
  `DXC_CODMON` char(3) DEFAULT NULL,
  `DXC_SELECT` decimal(1,0) DEFAULT NULL,
  `DXC_TIPDOC` char(3) DEFAULT NULL,
  KEY `DPCLIENTESDIVXTIP_2` (`DXC_CODCLI`),
  KEY `DPCLIENTESDIVXTIP_4` (`DXC_CODMON`),
  KEY `DPCLIENTESDIVXTIP_6` (`DXC_TIPDOC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclientesislr`
--

DROP TABLE IF EXISTS `dpclientesislr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclientesislr` (
  `RAI_ANO` decimal(4,0) DEFAULT NULL,
  `RAI_CODIGO` char(10) DEFAULT NULL,
  `RAI_CODSUC` char(8) DEFAULT NULL,
  `RAI_FILMAI` decimal(7,0) DEFAULT NULL,
  `RAI_MONTO` decimal(19,2) DEFAULT NULL,
  `RAI_NUMMEM` decimal(8,0) DEFAULT NULL,
  KEY `DPCLIENTESISLR_2` (`RAI_CODIGO`),
  KEY `DPCLIENTESISLR_4` (`RAI_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclientesper`
--

DROP TABLE IF EXISTS `dpclientesper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclientesper` (
  `PDC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `PDC_CARGO` char(35) DEFAULT NULL,
  `PDC_CELULA` char(12) DEFAULT NULL,
  `PDC_CI` char(11) DEFAULT NULL,
  `PDC_CLAVE` char(20) DEFAULT NULL,
  `PDC_CODIGO` char(10) DEFAULT NULL,
  `PDC_COMEN2` char(120) DEFAULT NULL,
  `PDC_COMENT` char(40) DEFAULT NULL,
  `PDC_EMAIL` char(70) DEFAULT NULL,
  `PDC_EXTENS` char(4) DEFAULT NULL,
  `PDC_FECHA` date DEFAULT NULL,
  `PDC_LOGIN` char(20) DEFAULT NULL,
  `PDC_MEMO` decimal(7,0) DEFAULT NULL,
  `PDC_PERSON` char(40) DEFAULT NULL,
  `PDC_PIN` char(8) DEFAULT NULL,
  `PDC_TELEFO` char(12) DEFAULT NULL,
  `PDC_TIPO` char(10) DEFAULT NULL,
  `PDC_USUARI` char(3) DEFAULT NULL,
  KEY `DPCLIENTESPER_2` (`PDC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclientesrec`
--

DROP TABLE IF EXISTS `dpclientesrec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclientesrec` (
  `CRC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CRC_ANO` char(4) DEFAULT NULL,
  `CRC_CENCOS` char(8) DEFAULT NULL,
  `CRC_CLIFAV` char(10) DEFAULT NULL,
  `CRC_CODCLI` char(10) DEFAULT NULL,
  `CRC_CODIGO` char(10) DEFAULT NULL,
  `CRC_CODINV` char(20) DEFAULT NULL,
  `CRC_CODMAR` char(10) DEFAULT NULL,
  `CRC_CODSAT` char(40) DEFAULT NULL,
  `CRC_CODSUC` char(8) DEFAULT NULL,
  `CRC_DESCUE` decimal(6,2) DEFAULT NULL,
  `CRC_DESDE` date DEFAULT NULL,
  `CRC_DIAFRQ` decimal(8,0) DEFAULT NULL,
  `CRC_DIR1` char(100) DEFAULT NULL,
  `CRC_DIR2` char(100) DEFAULT NULL,
  `CRC_DIR3` char(100) DEFAULT NULL,
  `CRC_EMAIL` char(120) DEFAULT NULL,
  `CRC_ESTADO` char(1) DEFAULT NULL,
  `CRC_FCHINI` date DEFAULT NULL,
  `CRC_FECHA` date DEFAULT NULL,
  `CRC_FILMAI` decimal(10,0) DEFAULT NULL,
  `CRC_ID` char(12) DEFAULT NULL,
  `CRC_ITEM` char(5) DEFAULT NULL,
  `CRC_MEMO` longtext,
  `CRC_NOMBRE` char(200) DEFAULT NULL,
  `CRC_NUMMEM` decimal(5,0) DEFAULT NULL,
  `CRC_OBS1` char(250) DEFAULT NULL,
  `CRC_OBS2` char(250) DEFAULT NULL,
  `CRC_OBS3` char(250) DEFAULT NULL,
  `CRC_PARENT` char(20) DEFAULT NULL,
  `CRC_PORFAV` decimal(5,0) DEFAULT NULL,
  `CRC_PROFES` char(120) DEFAULT NULL,
  `CRC_SEXO` char(10) DEFAULT NULL,
  `CRC_TEL1` char(12) DEFAULT NULL,
  `CRC_TEL2` char(15) DEFAULT NULL,
  `CRC_TIPO` char(40) DEFAULT NULL,
  `CRC_TIPO2` char(20) DEFAULT NULL,
  `CRC_USO` decimal(14,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclientessuc`
--

DROP TABLE IF EXISTS `dpclientessuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclientessuc` (
  `SDC_AREA` char(4) DEFAULT NULL,
  `SDC_CODCLI` char(10) DEFAULT NULL,
  `SDC_CODIGO` char(4) DEFAULT NULL,
  `SDC_CODVEN` char(6) DEFAULT NULL,
  `SDC_DIR1` char(40) DEFAULT NULL,
  `SDC_DIR2` char(40) DEFAULT NULL,
  `SDC_DIR3` char(40) DEFAULT NULL,
  `SDC_ESTADO` char(30) DEFAULT NULL,
  `SDC_MUNICI` char(30) DEFAULT NULL,
  `SDC_NOMBRE` char(50) DEFAULT NULL,
  `SDC_PARROQ` char(30) DEFAULT NULL,
  `SDC_REPRES` char(40) DEFAULT NULL,
  `SDC_TEL1` char(12) DEFAULT NULL,
  `SDC_TEL2` char(12) DEFAULT NULL,
  `SDC_VIATIC` decimal(10,2) DEFAULT NULL,
  KEY `DPCLIENTESSUC_2` (`SDC_CODCLI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclientesword`
--

DROP TABLE IF EXISTS `dpclientesword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclientesword` (
  `DOC_CODSUC` char(8) DEFAULT NULL,
  `DOC_CORRES` char(50) DEFAULT NULL,
  `DOC_DESCRI` char(40) NOT NULL,
  `DOC_FILE` char(100) DEFAULT NULL,
  `DOC_FILNUM` decimal(8,0) DEFAULT NULL,
  `DOC_LMAIL` decimal(1,0) DEFAULT NULL,
  `DOC_MEMO` longtext,
  PRIMARY KEY (`DOC_DESCRI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpclisld`
--

DROP TABLE IF EXISTS `dpclisld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpclisld` (
  `SLD_CODIGO` char(10) DEFAULT NULL,
  `SLD_CODSUC` char(6) DEFAULT NULL,
  `SLD_CXCDIV` decimal(19,2) DEFAULT NULL,
  `SLD_DOCCON` decimal(4,0) DEFAULT NULL,
  `SLD_FCHPAG` date DEFAULT NULL,
  `SLD_FCHREG` date DEFAULT NULL,
  `SLD_FCHVTA` date DEFAULT NULL,
  `SLD_SALDO` decimal(18,2) DEFAULT NULL,
  KEY `DPCLISLD_2` (`SLD_CODIGO`),
  KEY `DPCLISLD_4` (`SLD_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcodintegra`
--

DROP TABLE IF EXISTS `dpcodintegra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcodintegra` (
  `CIN_ABREVI` char(30) DEFAULT NULL,
  `CIN_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CIN_ASIABR` decimal(1,0) DEFAULT NULL,
  `CIN_CODCTA` char(20) DEFAULT NULL,
  `CIN_CODIGO` char(10) NOT NULL,
  `CIN_DESCRI` char(150) DEFAULT NULL,
  `CIN_TEXTO` longtext,
  PRIMARY KEY (`CIN_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcodintegra_cta`
--

DROP TABLE IF EXISTS `dpcodintegra_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcodintegra_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPCODINTEGRA_CTA_2` (`CIC_CODIGO`),
  KEY `DPCODINTEGRA_CTA_4` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPCODINTEGRA_CTA_6` (`CIC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcolores`
--

DROP TABLE IF EXISTS `dpcolores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcolores` (
  `COL_ACTIVO` decimal(1,0) DEFAULT NULL,
  `COL_CODIGO` char(40) NOT NULL,
  PRIMARY KEY (`COL_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcomponentecla`
--

DROP TABLE IF EXISTS `dpcomponentecla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcomponentecla` (
  `CDC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CDC_CODIGO` char(20) DEFAULT NULL,
  `CDC_DESCRI` char(40) DEFAULT NULL,
  `CDC_LACUM` decimal(1,0) DEFAULT NULL,
  `CDC_NUMMEM` decimal(8,0) DEFAULT NULL,
  KEY `DPCOMPONENTECLA_2` (`CDC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcomponentes`
--

DROP TABLE IF EXISTS `dpcomponentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcomponentes` (
  `CPT_ALTERN` decimal(1,0) DEFAULT NULL,
  `CPT_CANTID` decimal(13,5) DEFAULT NULL,
  `CPT_CODCLA` char(20) DEFAULT NULL,
  `CPT_CODEQU` char(20) DEFAULT NULL,
  `CPT_CODIGO` char(20) DEFAULT NULL,
  `CPT_CODVAR` char(4) DEFAULT NULL,
  `CPT_COMPON` char(20) DEFAULT NULL,
  `CPT_FIJO` decimal(1,0) DEFAULT NULL,
  `CPT_NUMMEM` decimal(8,0) DEFAULT NULL,
  `CPT_TARA` char(1) DEFAULT NULL,
  `CPT_UNDMED` char(8) DEFAULT NULL,
  KEY `DPCOMPONENTES1` (`CPT_COMPON`),
  KEY `DPCOMPONENTES3` (`CPT_CODCLA`),
  KEY `DPCOMPONENTES5` (`CPT_CODIGO`),
  KEY `DPCOMPONENTES7` (`CPT_UNDMED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcompproduccion`
--

DROP TABLE IF EXISTS `dpcompproduccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcompproduccion` (
  `COM_CANSUB` decimal(6,0) DEFAULT NULL,
  `COM_CANTID` decimal(13,6) DEFAULT NULL,
  `COM_CODALM` char(3) DEFAULT NULL,
  `COM_CODCOM` char(20) DEFAULT NULL,
  `COM_CODDEP` char(8) DEFAULT NULL,
  `COM_CODFOR` char(20) DEFAULT NULL,
  `COM_CODINV` char(20) DEFAULT NULL,
  `COM_CODMED` char(8) DEFAULT NULL,
  `COM_ITEM` char(5) DEFAULT NULL,
  `COM_TIPO` char(1) DEFAULT NULL,
  `COM_UNDMED` char(8) DEFAULT NULL,
  KEY `DPCOMPPRODUCCION_2` (`COM_CODDEP`),
  KEY `DPCOMPPRODUCCION_4` (`COM_CODINV`,`COM_CODFOR`),
  KEY `DPCOMPPRODUCCION_6` (`COM_CODMED`),
  KEY `DPCOMPPRODUCCION_8` (`COM_UNDMED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcompvaloragre`
--

DROP TABLE IF EXISTS `dpcompvaloragre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcompvaloragre` (
  `CVA_CODDEP` char(8) DEFAULT NULL,
  `CVA_CODFOR` char(20) DEFAULT NULL,
  `CVA_CODINV` char(20) DEFAULT NULL,
  `CVA_CODVAL` char(8) DEFAULT NULL,
  `CVA_MODO` char(1) DEFAULT NULL,
  `CVA_MONTO` decimal(14,2) DEFAULT NULL,
  `CVA_UNDMED` char(8) DEFAULT NULL,
  KEY `DPCOMPVALORAGRE_2` (`CVA_CODVAL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcondpago`
--

DROP TABLE IF EXISTS `dpcondpago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcondpago` (
  `CPG_ABREV` char(14) DEFAULT NULL,
  `CPG_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CPG_CLIENT` decimal(1,0) DEFAULT NULL,
  `CPG_CODIGO` char(60) NOT NULL,
  `CPG_COMERC` decimal(1,0) DEFAULT NULL,
  `CPG_CUOTAS` decimal(3,0) DEFAULT NULL,
  `CPG_DIAS` decimal(3,0) DEFAULT NULL,
  `CPG_EDICUO` decimal(1,0) DEFAULT NULL,
  `CPG_EDITA` decimal(1,0) DEFAULT NULL,
  `CPG_ENTREG` decimal(1,0) DEFAULT NULL,
  `CPG_FISCAL` decimal(1,0) DEFAULT NULL,
  `CPG_FPAGO` decimal(1,0) DEFAULT NULL,
  `CPG_GASADM` decimal(1,0) DEFAULT NULL,
  `CPG_INTERN` decimal(1,0) DEFAULT NULL,
  `CPG_MEMO` longtext,
  `CPG_NUMDOC` char(10) DEFAULT NULL,
  `CPG_OPERAT` decimal(1,0) DEFAULT NULL,
  `CPG_PROVEE` decimal(1,0) DEFAULT NULL,
  `CPG_TRAMA` char(2) DEFAULT NULL,
  PRIMARY KEY (`CPG_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcondpagodet`
--

DROP TABLE IF EXISTS `dpcondpagodet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcondpagodet` (
  `MOV_APLORG` char(1) DEFAULT NULL,
  `MOV_ASODOC` char(10) DEFAULT NULL,
  `MOV_ASOTIP` char(3) DEFAULT NULL,
  `MOV_BANDA` decimal(19,2) DEFAULT NULL,
  `MOV_CANTID` decimal(19,2) DEFAULT NULL,
  `MOV_CAPAC` decimal(19,0) DEFAULT NULL,
  `MOV_CAPAP` decimal(19,0) DEFAULT NULL,
  `MOV_CDESC` char(30) DEFAULT NULL,
  `MOV_CENCOS` char(8) DEFAULT NULL,
  `MOV_CODALM` char(3) DEFAULT NULL,
  `MOV_CODCOM` char(24) DEFAULT NULL,
  `MOV_CODCTA` char(10) DEFAULT NULL,
  `MOV_CODEDT` char(8) DEFAULT NULL,
  `MOV_CODIGO` char(20) DEFAULT NULL,
  `MOV_CODPER` char(6) DEFAULT NULL,
  `MOV_CODSUC` char(6) DEFAULT NULL,
  `MOV_CODTRA` char(4) DEFAULT NULL,
  `MOV_CODVEN` char(6) DEFAULT NULL,
  `MOV_CONTAB` decimal(19,0) DEFAULT NULL,
  `MOV_COSTO` decimal(19,2) DEFAULT NULL,
  `MOV_CXUND` decimal(19,2) DEFAULT NULL,
  `MOV_CXUNDE` decimal(19,3) DEFAULT NULL,
  `MOV_DESCUE` decimal(19,2) DEFAULT NULL,
  `MOV_DOCUME` char(20) DEFAULT NULL,
  `MOV_EXPEND` decimal(19,2) DEFAULT NULL,
  `MOV_EXPORT` decimal(19,3) DEFAULT NULL,
  `MOV_EXPRES` char(30) DEFAULT NULL,
  `MOV_FCHVEN` date DEFAULT NULL,
  `MOV_FECHA` date DEFAULT NULL,
  `MOV_FILMAI` decimal(19,0) DEFAULT NULL,
  `MOV_FISICO` decimal(19,0) DEFAULT NULL,
  `MOV_HORA` char(8) DEFAULT NULL,
  `MOV_IMPORT` decimal(19,3) DEFAULT NULL,
  `MOV_IMPOTR` decimal(19,2) DEFAULT NULL,
  `MOV_IMPPRO` decimal(19,2) DEFAULT NULL,
  `MOV_INVACT` decimal(19,0) DEFAULT NULL,
  `MOV_ITEM` char(5) DEFAULT NULL,
  `MOV_ITEM_A` char(5) DEFAULT NULL,
  `MOV_ITEM_C` char(5) DEFAULT NULL,
  `MOV_IVA` decimal(19,2) DEFAULT NULL,
  `MOV_LISTA` char(1) DEFAULT NULL,
  `MOV_LOGICO` decimal(19,0) DEFAULT NULL,
  `MOV_LOTE` char(24) DEFAULT NULL,
  `MOV_METCOS` char(1) DEFAULT NULL,
  `MOV_MTOCLA` decimal(19,2) DEFAULT NULL,
  `MOV_MTOCOM` decimal(19,2) DEFAULT NULL,
  `MOV_NUMCLA` decimal(19,0) DEFAULT NULL,
  `MOV_NUMMEM` decimal(19,0) DEFAULT NULL,
  `MOV_PRECIO` decimal(19,2) DEFAULT NULL,
  `MOV_TIPDOC` char(4) DEFAULT NULL,
  `MOV_TIPIVA` char(2) DEFAULT NULL,
  `MOV_TIPO` char(1) DEFAULT NULL,
  `MOV_TOTAL` decimal(19,2) DEFAULT NULL,
  `MOV_UNDMED` char(8) DEFAULT NULL,
  `MOV_USUARI` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpconductores`
--

DROP TABLE IF EXISTS `dpconductores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpconductores` (
  `CDT_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CDT_CELULA` char(12) DEFAULT NULL,
  `CDT_CI_RIF` char(15) DEFAULT NULL,
  `CDT_COMEN1` char(40) DEFAULT NULL,
  `CDT_DIR1` char(40) DEFAULT NULL,
  `CDT_DIR2` char(40) DEFAULT NULL,
  `CDT_GRLIC` char(5) DEFAULT NULL,
  `CDT_NOMBRE` char(50) DEFAULT NULL,
  `CDT_OBSERV` longtext,
  `CDT_TEL1` char(12) DEFAULT NULL,
  `CDT_V_LIC` date DEFAULT NULL,
  `CDT_V_MED` date DEFAULT NULL,
  KEY `DPCONDUCTORES_2` (`CDT_CI_RIF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcorreos`
--

DROP TABLE IF EXISTS `dpcorreos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcorreos` (
  `EML_ACTIVO` decimal(1,0) DEFAULT NULL,
  `EML_ASUNTO` char(60) DEFAULT NULL,
  `EML_CARGO` char(35) DEFAULT NULL,
  `EML_CODACT` char(140) DEFAULT NULL,
  `EML_CODCLA` char(6) DEFAULT NULL,
  `EML_CODSUC` char(6) DEFAULT NULL,
  `EML_EMAIL` char(140) NOT NULL,
  `EML_EMPRES` char(50) DEFAULT NULL,
  `EML_FCHCRE` date DEFAULT NULL,
  `EML_FECHA` date DEFAULT NULL,
  `EML_GRUPO` decimal(4,0) DEFAULT NULL,
  `EML_HORA` char(8) DEFAULT NULL,
  `EML_LOTE` char(30) DEFAULT NULL,
  `EML_MEMO` longtext,
  `EML_MOVIL` char(12) DEFAULT NULL,
  `EML_PERSON` char(40) DEFAULT NULL,
  `EML_RIF` char(15) DEFAULT NULL,
  `EML_TELEFO` char(12) DEFAULT NULL,
  `EML_USUARI` char(3) DEFAULT NULL,
  `EML_WEB` char(250) DEFAULT NULL,
  PRIMARY KEY (`EML_EMAIL`),
  KEY `DPCORREOS_2` (`EML_CARGO`),
  KEY `DPCORREOS_4` (`EML_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpcta`
--

DROP TABLE IF EXISTS `dpcta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpcta` (
  `CTA_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CTA_AJUFIS` decimal(1,0) DEFAULT NULL,
  `CTA_CLRTEX` decimal(7,0) DEFAULT NULL,
  `CTA_CLRTXT` decimal(8,0) DEFAULT NULL,
  `CTA_CODCLA` char(10) DEFAULT NULL,
  `CTA_CODCON` char(3) DEFAULT NULL,
  `CTA_CODIGO` char(20) DEFAULT NULL,
  `CTA_CODINT` char(10) DEFAULT NULL,
  `CTA_CODMOD` char(6) DEFAULT NULL,
  `CTA_CODMON` char(3) DEFAULT NULL,
  `CTA_COLPRE` char(30) DEFAULT NULL,
  `CTA_COMEN1` char(40) DEFAULT NULL,
  `CTA_COMEN2` char(40) DEFAULT NULL,
  `CTA_CTADET` decimal(1,0) DEFAULT NULL,
  `CTA_DESCRI` char(80) DEFAULT NULL,
  `CTA_DISDEP` decimal(1,0) DEFAULT NULL,
  `CTA_DPJ26` char(4) DEFAULT NULL,
  `CTA_EXPCEN` decimal(1,0) DEFAULT NULL,
  `CTA_FLUJOC` char(35) DEFAULT NULL,
  `CTA_GASDED` decimal(1,0) DEFAULT NULL,
  `CTA_INGRES` decimal(1,0) DEFAULT NULL,
  `CTA_LEN` decimal(3,0) DEFAULT NULL,
  `CTA_MONFIN` decimal(1,0) DEFAULT NULL,
  `CTA_MONFIS` char(1) DEFAULT NULL,
  `CTA_NIVEL` decimal(3,0) DEFAULT NULL,
  `CTA_NOMBRE` char(40) DEFAULT NULL,
  `CTA_NUMMEM` decimal(7,0) DEFAULT NULL,
  `CTA_ORIGEN` char(3) DEFAULT NULL,
  `CTA_PAGOS` decimal(1,0) DEFAULT NULL,
  `CTA_PRESEN` char(40) DEFAULT NULL,
  `CTA_PROPIE` char(30) DEFAULT NULL,
  `CTA_REQUI` decimal(1,0) DEFAULT NULL,
  `CTA_SIGN18` char(1) DEFAULT NULL,
  `CTA_SUBN18` char(30) DEFAULT NULL,
  `CTA_UTDED` decimal(4,0) DEFAULT NULL,
  `CTA_NUMFIL` decimal(10,0) DEFAULT NULL,
  `CTA_NICNIF` char(40) DEFAULT NULL,
  KEY `DPCTA1` (`CTA_CODMOD`,`CTA_DPJ26`),
  KEY `DPCTA2` (`CTA_CODMOD`,`CTA_PROPIE`,`CTA_CTADET`),
  KEY `DPCTA4` (`CTA_CODMOD`,`CTA_CODIGO`),
  KEY `DPCTA6` (`CTA_CODMOD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctabanco`
--

DROP TABLE IF EXISTS `dpctabanco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctabanco` (
  `BCO_ACTIVA` decimal(1,0) DEFAULT NULL,
  `BCO_BRWLBC` decimal(1,0) DEFAULT NULL,
  `BCO_BRWLBV` decimal(1,0) DEFAULT NULL,
  `BCO_CHEQUE` decimal(10,0) DEFAULT NULL,
  `BCO_CODIGO` char(6) DEFAULT NULL,
  `BCO_CODMAE` char(10) DEFAULT NULL,
  `BCO_CODMON` char(3) DEFAULT NULL,
  `BCO_CODSUC` char(6) DEFAULT NULL,
  `BCO_COMEN1` char(40) DEFAULT NULL,
  `BCO_COMEN2` char(40) DEFAULT NULL,
  `BCO_CONDIG` decimal(1,0) DEFAULT NULL,
  `BCO_CTABAN` char(20) DEFAULT NULL,
  `BCO_CUENTA` char(20) DEFAULT NULL,
  `BCO_DIASCO` decimal(3,0) DEFAULT NULL,
  `BCO_ENLETR` decimal(2,0) DEFAULT NULL,
  `BCO_FCHCON` date DEFAULT NULL,
  `BCO_FILMAI` decimal(7,0) DEFAULT NULL,
  `BCO_FILSUC` decimal(1,0) DEFAULT NULL,
  `BCO_IDB` decimal(1,0) DEFAULT NULL,
  `BCO_IMPDOC` decimal(1,0) DEFAULT NULL,
  `BCO_INCREM` decimal(1,0) DEFAULT NULL,
  `BCO_INGRES` decimal(1,0) DEFAULT NULL,
  `BCO_LINOTR` decimal(2,0) DEFAULT NULL,
  `BCO_LINPLA` decimal(2,0) DEFAULT NULL,
  `BCO_NOTADB` decimal(10,0) DEFAULT NULL,
  `BCO_NUMCBT` char(8) DEFAULT NULL,
  `BCO_NUMMEM` decimal(7,0) DEFAULT NULL,
  `BCO_OBSERV` longtext,
  `BCO_PAGAR` decimal(1,0) DEFAULT NULL,
  `BCO_RPTBCO` char(80) DEFAULT NULL,
  `BCO_RPTOTR` char(80) DEFAULT NULL,
  `BCO_TIPCTA` char(20) DEFAULT NULL,
  `BCO_TITULA` char(60) DEFAULT NULL,
  KEY `DPCTABANCO_10` (`BCO_CODSUC`),
  KEY `DPCTABANCO_2` (`BCO_CODIGO`,`BCO_CTABAN`),
  KEY `DPCTABANCO_4` (`BCO_CODIGO`),
  KEY `DPCTABANCO_6` (`BCO_CODIGO`,`BCO_CUENTA`),
  KEY `DPCTABANCO_8` (`BCO_CODSUC`,`BCO_CODIGO`,`BCO_CTABAN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctabanco_cta`
--

DROP TABLE IF EXISTS `dpctabanco_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctabanco_cta` (
  `CIC_COD2` char(20) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPCTABANCO_CTA_2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPCTABANCO_CTA_4` (`CIC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctabancoafilia`
--

DROP TABLE IF EXISTS `dpctabancoafilia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctabancoafilia` (
  `CBA_CODBCO` char(4) DEFAULT NULL,
  `CBA_CODCTA` char(20) DEFAULT NULL,
  `CBA_ESTADO` char(1) DEFAULT NULL,
  `CBA_FECHA` date DEFAULT NULL,
  `CBA_RIF` char(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctabancocon`
--

DROP TABLE IF EXISTS `dpctabancocon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctabancocon` (
  `MOB_ACT` decimal(2,0) DEFAULT NULL,
  `MOB_CENCOS` char(8) DEFAULT NULL,
  `MOB_CODBCO` char(6) DEFAULT NULL,
  `MOB_CODCAJ` char(6) DEFAULT NULL,
  `MOB_CODMON` char(3) DEFAULT NULL,
  `MOB_CODSUC` char(6) DEFAULT NULL,
  `MOB_COMENT` char(60) DEFAULT NULL,
  `MOB_COMPRO` char(10) DEFAULT NULL,
  `MOB_CTACON` char(20) DEFAULT NULL,
  `MOB_CTAEGR` char(20) DEFAULT NULL,
  `MOB_CUENTA` char(20) DEFAULT NULL,
  `MOB_DESCRI` char(40) DEFAULT NULL,
  `MOB_DOCASO` char(10) DEFAULT NULL,
  `MOB_DOCUME` char(14) DEFAULT NULL,
  `MOB_FCHCOM` date DEFAULT NULL,
  `MOB_FCHCON` date DEFAULT NULL,
  `MOB_FCHREG` date DEFAULT NULL,
  `MOB_FECHA` date DEFAULT NULL,
  `MOB_HORA` char(8) DEFAULT NULL,
  `MOB_IDB` decimal(6,2) DEFAULT NULL,
  `MOB_MONNAC` decimal(16,2) DEFAULT NULL,
  `MOB_MONTO` decimal(16,2) DEFAULT NULL,
  `MOB_MTOCOM` decimal(16,2) DEFAULT NULL,
  `MOB_MTOIDB` decimal(14,2) DEFAULT NULL,
  `MOB_MTOIMP` decimal(16,2) DEFAULT NULL,
  `MOB_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOB_NUMTRA` char(8) DEFAULT NULL,
  `MOB_ORIGEN` char(3) DEFAULT NULL,
  `MOB_TIPCTA` char(1) DEFAULT NULL,
  `MOB_TIPO` char(4) DEFAULT NULL,
  `MOB_TRAASO` char(8) DEFAULT NULL,
  `MOB_USUARI` char(3) DEFAULT NULL,
  `MOB_VALCAM` decimal(12,2) DEFAULT NULL,
  KEY `DPCTABANCOCON_2` (`MOB_TIPO`),
  KEY `DPCTABANCOCON_4` (`MOB_CODBCO`,`MOB_CUENTA`),
  KEY `DPCTABANCOCON_6` (`MOB_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctabancomov`
--

DROP TABLE IF EXISTS `dpctabancomov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctabancomov` (
  `MOB_ACT` decimal(2,0) DEFAULT NULL,
  `MOB_CENCOS` char(8) DEFAULT NULL,
  `MOB_CHKSUM` decimal(6,0) DEFAULT NULL,
  `MOB_CMNNAC` char(3) DEFAULT NULL,
  `MOB_CODBCO` char(6) DEFAULT NULL,
  `MOB_CODCAJ` char(6) DEFAULT NULL,
  `MOB_CODMOD` char(6) DEFAULT NULL,
  `MOB_CODMON` char(3) DEFAULT NULL,
  `MOB_CODSUC` char(6) DEFAULT NULL,
  `MOB_COMENT` char(60) DEFAULT NULL,
  `MOB_COMPRO` char(10) DEFAULT NULL,
  `MOB_CTACON` char(20) DEFAULT NULL,
  `MOB_CTAEGR` char(20) DEFAULT NULL,
  `MOB_CUENTA` char(20) DEFAULT NULL,
  `MOB_DESCRI` char(120) DEFAULT NULL,
  `MOB_DOCASO` char(10) DEFAULT NULL,
  `MOB_DOCUME` char(16) DEFAULT NULL,
  `MOB_ESTADO` char(1) DEFAULT NULL,
  `MOB_FCHCOM` date DEFAULT NULL,
  `MOB_FCHCON` date DEFAULT NULL,
  `MOB_FCHREG` date DEFAULT NULL,
  `MOB_FECHA` date DEFAULT NULL,
  `MOB_FILE` char(15) DEFAULT NULL,
  `MOB_FILMAI` decimal(7,0) DEFAULT NULL,
  `MOB_HORA` char(8) DEFAULT NULL,
  `MOB_IDB` decimal(6,2) DEFAULT NULL,
  `MOB_ITEMC` char(6) DEFAULT NULL,
  `MOB_MARFIN` char(25) DEFAULT NULL,
  `MOB_MONNAC` decimal(16,2) DEFAULT NULL,
  `MOB_MONTO` decimal(16,2) DEFAULT NULL,
  `MOB_MTOCOM` decimal(16,2) DEFAULT NULL,
  `MOB_MTODIV` decimal(19,2) DEFAULT NULL,
  `MOB_MTOIDB` decimal(14,2) DEFAULT NULL,
  `MOB_MTOIMP` decimal(16,2) DEFAULT NULL,
  `MOB_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOB_NUMPAG` char(8) DEFAULT NULL,
  `MOB_NUMTRA` char(8) DEFAULT NULL,
  `MOB_ORGPAG` char(3) DEFAULT NULL,
  `MOB_ORIGEN` char(3) DEFAULT NULL,
  `MOB_PUNTEO` decimal(20,0) DEFAULT NULL,
  `MOB_REGCON` char(6) DEFAULT NULL,
  `MOB_REGDEP` char(8) DEFAULT NULL,
  `MOB_RIF` char(14) DEFAULT NULL,
  `MOB_SLDBCO` decimal(19,2) DEFAULT NULL,
  `MOB_TIPCTA` char(1) DEFAULT NULL,
  `MOB_TIPO` char(4) DEFAULT NULL,
  `MOB_TRAASO` char(8) DEFAULT NULL,
  `MOB_USUARI` char(3) DEFAULT NULL,
  `MOB_VALCAM` decimal(19,4) DEFAULT NULL,
  KEY `CONCILIACION` (`MOB_CODSUC`,`MOB_CODBCO`,`MOB_CUENTA`,`MOB_FCHCON`,`MOB_FECHA`,`MOB_ACT`),
  KEY `DPCTABANCOMOV1` (`MOB_CODSUC`,`MOB_DOCASO`,`MOB_ORIGEN`),
  KEY `DPCTABANCOMOV10` (`MOB_CODBCO`,`MOB_CUENTA`),
  KEY `DPCTABANCOMOV2` (`MOB_CODSUC`,`MOB_CODBCO`,`MOB_CUENTA`,`MOB_TIPO`,`MOB_DOCUME`,`MOB_DOCASO`),
  KEY `DPCTABANCOMOV4` (`MOB_TIPO`),
  KEY `DPCTABANCOMOV6` (`MOB_CODSUC`),
  KEY `DPCTABANCOMOV8` (`MOB_CODBCO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctabancomov_his`
--

DROP TABLE IF EXISTS `dpctabancomov_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctabancomov_his` (
  `MOB_ACT` decimal(2,0) DEFAULT NULL,
  `MOB_CENCOS` char(8) DEFAULT NULL,
  `MOB_CHKSUM` decimal(6,0) DEFAULT NULL,
  `MOB_CMNNAC` char(3) DEFAULT NULL,
  `MOB_CODBCO` char(6) DEFAULT NULL,
  `MOB_CODCAJ` char(6) DEFAULT NULL,
  `MOB_CODMOD` char(6) DEFAULT NULL,
  `MOB_CODMON` char(3) DEFAULT NULL,
  `MOB_CODSUC` char(6) DEFAULT NULL,
  `MOB_COMENT` char(60) DEFAULT NULL,
  `MOB_COMPRO` char(10) DEFAULT NULL,
  `MOB_CTACON` char(20) DEFAULT NULL,
  `MOB_CTAEGR` char(20) DEFAULT NULL,
  `MOB_CUENTA` char(20) DEFAULT NULL,
  `MOB_DESCRI` char(120) DEFAULT NULL,
  `MOB_DOCASO` char(10) DEFAULT NULL,
  `MOB_DOCUME` char(16) DEFAULT NULL,
  `MOB_ESTADO` char(1) DEFAULT NULL,
  `MOB_FCHCOM` date DEFAULT NULL,
  `MOB_FCHCON` date DEFAULT NULL,
  `MOB_FCHREG` date DEFAULT NULL,
  `MOB_FECHA` date DEFAULT NULL,
  `MOB_FILE` char(15) DEFAULT NULL,
  `MOB_FILMAI` decimal(7,0) DEFAULT NULL,
  `MOB_HORA` char(8) DEFAULT NULL,
  `MOB_IDB` decimal(6,2) DEFAULT NULL,
  `MOB_ITEMC` char(6) DEFAULT NULL,
  `MOB_MARFIN` char(25) DEFAULT NULL,
  `MOB_MONNAC` decimal(16,2) DEFAULT NULL,
  `MOB_MONTO` decimal(16,2) DEFAULT NULL,
  `MOB_MTOCOM` decimal(16,2) DEFAULT NULL,
  `MOB_MTODIV` decimal(19,0) DEFAULT NULL,
  `MOB_MTOIDB` decimal(14,2) DEFAULT NULL,
  `MOB_MTOIMP` decimal(16,2) DEFAULT NULL,
  `MOB_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOB_NUMPAG` char(8) DEFAULT NULL,
  `MOB_NUMTRA` char(8) DEFAULT NULL,
  `MOB_ORGPAG` char(3) DEFAULT NULL,
  `MOB_ORIGEN` char(3) DEFAULT NULL,
  `MOB_PUNTEO` decimal(20,0) DEFAULT NULL,
  `MOB_REGCON` char(6) DEFAULT NULL,
  `MOB_REGDEP` char(8) DEFAULT NULL,
  `MOB_RIF` char(14) DEFAULT NULL,
  `MOB_SLDBCO` decimal(19,2) DEFAULT NULL,
  `MOB_TIPCTA` char(1) DEFAULT NULL,
  `MOB_TIPO` char(4) DEFAULT NULL,
  `MOB_TRAASO` char(8) DEFAULT NULL,
  `MOB_USUARI` char(3) DEFAULT NULL,
  `MOB_VALCAM` decimal(19,4) DEFAULT NULL,
  KEY `DPCTABANCOMOV_HIS_2` (`MOB_TIPO`),
  KEY `DPCTABANCOMOV_HIS_4` (`MOB_CODBCO`,`MOB_CUENTA`),
  KEY `DPCTABANCOMOV_HIS_6` (`MOB_CODSUC`,`MOB_CODBCO`,`MOB_CUENTA`),
  KEY `DPCTABANCOMOV_HIS_8` (`MOB_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctabcoedoe`
--

DROP TABLE IF EXISTS `dpctabcoedoe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctabcoedoe` (
  `ECE_CODBCO` char(6) DEFAULT NULL,
  `ECE_CTABCO` char(20) DEFAULT NULL,
  `ECE_DESCRI` char(40) DEFAULT NULL,
  `ECE_FECHA` date DEFAULT NULL,
  `ECE_ID` char(16) DEFAULT NULL,
  `ECE_MONTO` decimal(14,2) DEFAULT NULL,
  `ECE_NUMERO` char(16) DEFAULT NULL,
  `ECE_NUMFIL` decimal(7,0) DEFAULT NULL,
  `ECE_REFERE` char(20) DEFAULT NULL,
  `ECE_SALDO` decimal(14,2) DEFAULT NULL,
  `ECE_TIPDOC` char(4) DEFAULT NULL,
  KEY `DPCTABCOEDOE_2` (`ECE_CODBCO`,`ECE_CTABCO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctacajins`
--

DROP TABLE IF EXISTS `dpctacajins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctacajins` (
  `CIC_CODCAJ` char(6) DEFAULT NULL,
  `CIC_CODCTA` char(20) DEFAULT NULL,
  `CIC_CODINS` char(4) DEFAULT NULL,
  `CIC_EGRESO` decimal(1,0) DEFAULT NULL,
  `CIC_INGRES` decimal(1,0) DEFAULT NULL,
  KEY `DPCTACAJINS_2` (`CIC_CODCAJ`),
  KEY `DPCTACAJINS_4` (`CIC_CODINS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctaegreso`
--

DROP TABLE IF EXISTS `dpctaegreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctaegreso` (
  `CEG_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CEG_APLRET` decimal(1,0) DEFAULT NULL,
  `CEG_CODCLA` char(10) DEFAULT NULL,
  `CEG_CODIGO` char(20) NOT NULL,
  `CEG_CONRET` char(3) DEFAULT NULL,
  `CEG_CUENTA` char(20) DEFAULT NULL,
  `CEG_CXC` decimal(1,0) DEFAULT NULL,
  `CEG_CXP` decimal(1,0) DEFAULT NULL,
  `CEG_DESCRI` char(40) DEFAULT NULL,
  `CEG_EGRES` decimal(1,0) DEFAULT NULL,
  `CEG_INGRES` decimal(1,0) DEFAULT NULL,
  `CEG_MEMO` longtext,
  `CEG_PRRIVA` decimal(1,0) DEFAULT NULL,
  `CEG_TIPIVA` char(2) DEFAULT NULL,
  `CEG_TIPO` char(30) DEFAULT NULL,
  `MDC_CTAEGR` char(20) DEFAULT NULL,
  PRIMARY KEY (`CEG_CODIGO`),
  KEY `DPCTAEGRESO_2` (`CEG_CODCLA`),
  KEY `DPCTAEGRESO_4` (`CEG_TIPIVA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctaegreso_cta`
--

DROP TABLE IF EXISTS `dpctaegreso_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctaegreso_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(20) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(20) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPCTAEGRESO_CTA_2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPCTAEGRESO_CTA_4` (`CIC_CODSUC`),
  KEY `DPCTAEGRESO_CTA_6` (`CIC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctagru`
--

DROP TABLE IF EXISTS `dpctagru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctagru` (
  `GRC_CODIGO` char(10) NOT NULL,
  `GRC_DESCRI` char(40) DEFAULT NULL,
  `GRC_NUMMEM` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`GRC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctagructa`
--

DROP TABLE IF EXISTS `dpctagructa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctagructa` (
  `CGC_CODGRU` char(10) DEFAULT NULL,
  `CGC_CUENTA` char(20) DEFAULT NULL,
  `CGC_DESCRI` char(40) DEFAULT NULL,
  `CGC_PORCEN` decimal(5,2) DEFAULT NULL,
  KEY `DPCTAGRUCTA_2` (`CGC_CODGRU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctagructa_cta`
--

DROP TABLE IF EXISTS `dpctagructa_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctagructa_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctamodelo`
--

DROP TABLE IF EXISTS `dpctamodelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctamodelo` (
  `MPC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `MPC_CODIGO` char(6) NOT NULL,
  `MPC_DESCRI` char(40) DEFAULT NULL,
  PRIMARY KEY (`MPC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctaplacosto`
--

DROP TABLE IF EXISTS `dpctaplacosto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctaplacosto` (
  `PCC_CODCTA` char(20) DEFAULT NULL,
  `PCC_CODDIS` char(20) DEFAULT NULL,
  `PCC_PORCEN` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctapresup`
--

DROP TABLE IF EXISTS `dpctapresup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctapresup` (
  `CPP_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CPP_CLASIF` char(30) DEFAULT NULL,
  `CPP_CODCTA` char(20) DEFAULT NULL,
  `CPP_CODIGO` char(20) NOT NULL,
  `CPP_CODNIV` char(20) DEFAULT NULL,
  `CPP_CTADET` decimal(1,0) DEFAULT NULL,
  `CPP_CTAMOD` char(6) DEFAULT NULL,
  `CPP_DESCRI` char(40) DEFAULT NULL,
  `CPP_ITEM` char(5) DEFAULT NULL,
  `CPP_NIVEL` decimal(2,0) DEFAULT NULL,
  `CPP_NUMMEM` decimal(8,0) DEFAULT NULL,
  `CPP_PUBLI` char(1) DEFAULT NULL,
  `CPP_TIPO` char(1) DEFAULT NULL,
  PRIMARY KEY (`CPP_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctapresup_cta`
--

DROP TABLE IF EXISTS `dpctapresup_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctapresup_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(20) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPCTAPRESUP_CTA_2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPCTAPRESUP_CTA_4` (`CIC_CODSUC`),
  KEY `DPCTAPRESUP_CTA_6` (`CIC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctasld`
--

DROP TABLE IF EXISTS `dpctasld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctasld` (
  `SLD_ASIACT` decimal(10,2) DEFAULT NULL,
  `SLD_ASIPEN` decimal(10,2) DEFAULT NULL,
  `SLD_CODSUC` char(8) DEFAULT NULL,
  `SLD_CTAMOD` char(6) DEFAULT NULL,
  `SLD_CUENTA` char(20) DEFAULT NULL,
  `SLD_DEBE` decimal(19,2) DEFAULT NULL,
  `SLD_FCHFIN` date DEFAULT NULL,
  `SLD_FCHINI` date DEFAULT NULL,
  `SLD_HABER` decimal(19,2) DEFAULT NULL,
  `SLD_NUMEJE` char(4) DEFAULT NULL,
  `SLD_SALDO` decimal(19,2) DEFAULT NULL,
  `SLD_SLDINI` decimal(19,2) DEFAULT NULL,
  KEY `DPCTASLD_2` (`SLD_CTAMOD`,`SLD_CUENTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctauso`
--

DROP TABLE IF EXISTS `dpctauso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctauso` (
  `CUT_CODIGO` char(20) DEFAULT NULL,
  `CUT_CODUSO` char(2) NOT NULL,
  `CUT_CTAMOD` char(6) DEFAULT NULL,
  `CUT_TIPO` char(1) DEFAULT NULL,
  PRIMARY KEY (`CUT_CODUSO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpctrdoc`
--

DROP TABLE IF EXISTS `dpctrdoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpctrdoc` (
  `CTR_ESTADO` char(1) DEFAULT NULL,
  `CTR_FECHA` date DEFAULT NULL,
  `CTR_HORA` char(8) DEFAULT NULL,
  `CTR_HWND` decimal(19,0) DEFAULT NULL,
  `CTR_IP` char(20) DEFAULT NULL,
  `CTR_LINK` char(200) DEFAULT NULL,
  `CTR_NUMFRM` decimal(3,0) DEFAULT NULL,
  `CTR_PC` char(20) DEFAULT NULL,
  `CTR_SQL` char(200) DEFAULT NULL,
  `CTR_TABBOD` char(20) DEFAULT NULL,
  `CTR_TABLA` char(20) DEFAULT NULL,
  `CTR_US` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdataset`
--

DROP TABLE IF EXISTS `dpdataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdataset` (
  `DAT_FECHA` date DEFAULT NULL,
  `DAT_GROUP` char(40) DEFAULT NULL,
  `DAT_HORA` char(8) DEFAULT NULL,
  `DAT_LEN` decimal(3,0) DEFAULT NULL,
  `DAT_MODE` char(30) DEFAULT NULL,
  `DAT_NAME` char(40) DEFAULT NULL,
  `DAT_TYPE` char(1) DEFAULT NULL,
  `DAT_VALUE` char(123) DEFAULT NULL,
  KEY `DPDATASET1` (`DAT_GROUP`,`DAT_MODE`,`DAT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdefleedocdig`
--

DROP TABLE IF EXISTS `dpdefleedocdig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdefleedocdig` (
  `DLD_ACTIVO` decimal(1,0) DEFAULT NULL,
  `DLD_CODIGO` char(6) DEFAULT NULL,
  `DLD_DESCRI` char(3) DEFAULT NULL,
  `DLD_FECHA` date DEFAULT NULL,
  `DLD_TIPO` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdepreciaact`
--

DROP TABLE IF EXISTS `dpdepreciaact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdepreciaact` (
  `DEP_BASFIN` decimal(14,2) DEFAULT NULL,
  `DEP_BASFIS` decimal(14,2) DEFAULT NULL,
  `DEP_CODACT` char(15) DEFAULT NULL,
  `DEP_CODMON` char(3) DEFAULT NULL,
  `DEP_CODSUC` char(6) DEFAULT NULL,
  `DEP_COMPRO` char(8) DEFAULT NULL,
  `DEP_DEPFIN` decimal(14,2) DEFAULT NULL,
  `DEP_DEPFIS` decimal(14,2) DEFAULT NULL,
  `DEP_DESDE` date DEFAULT NULL,
  `DEP_ESTADO` char(1) DEFAULT NULL,
  `DEP_FCHCON` date DEFAULT NULL,
  `DEP_FCHFIS` date DEFAULT NULL,
  `DEP_FECHA` date DEFAULT NULL,
  `DEP_INPFAC` decimal(12,5) DEFAULT NULL,
  `DEP_INPFIN` decimal(8,5) DEFAULT NULL,
  `DEP_INPINI` decimal(8,5) DEFAULT NULL,
  `DEP_IPC` decimal(8,2) DEFAULT NULL,
  `DEP_IPCFAC` decimal(12,5) DEFAULT NULL,
  `DEP_IPCFIN` decimal(8,5) DEFAULT NULL,
  `DEP_IPCINI` decimal(8,5) DEFAULT NULL,
  `DEP_MONTO` decimal(16,2) DEFAULT NULL,
  `DEP_MTOFIN` decimal(14,2) DEFAULT NULL,
  `DEP_MTOFIS` decimal(14,2) DEFAULT NULL,
  `DEP_MTOFN` decimal(14,2) DEFAULT NULL,
  `DEP_MTOFS` decimal(14,2) DEFAULT NULL,
  `DEP_MTOORG` decimal(16,2) DEFAULT NULL,
  `DEP_NUMDES` char(8) DEFAULT NULL,
  `DEP_NUMEJE` char(4) DEFAULT NULL,
  `DEP_NUMERO` char(4) DEFAULT NULL,
  `DEP_NUMPAR` char(5) DEFAULT NULL,
  `DEP_PORCEN` decimal(6,2) DEFAULT NULL,
  `DEP_SIGNO` decimal(2,0) DEFAULT NULL,
  `DEP_TIPTRA` char(1) DEFAULT NULL,
  `DEP_UNIPRO` decimal(12,2) DEFAULT NULL,
  KEY `DPDEPRECIAACT_2` (`DEP_CODSUC`,`DEP_CODACT`),
  KEY `DPDEPRECIAACT_4` (`DEP_CODSUC`),
  KEY `DPDEPRECIAACT_6` (`DEP_CODSUC`,`DEP_NUMEJE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdepreciaact_his`
--

DROP TABLE IF EXISTS `dpdepreciaact_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdepreciaact_his` (
  `DEP_BASFIN` decimal(14,2) DEFAULT NULL,
  `DEP_BASFIS` decimal(14,2) DEFAULT NULL,
  `DEP_CODACT` char(15) DEFAULT NULL,
  `DEP_CODMON` char(3) DEFAULT NULL,
  `DEP_CODSUC` char(6) DEFAULT NULL,
  `DEP_COMPRO` char(8) DEFAULT NULL,
  `DEP_DEPFIN` decimal(14,2) DEFAULT NULL,
  `DEP_DEPFIS` decimal(14,2) DEFAULT NULL,
  `DEP_DESDE` date DEFAULT NULL,
  `DEP_ESTADO` char(1) DEFAULT NULL,
  `DEP_FCHCON` date DEFAULT NULL,
  `DEP_FCHFIS` date DEFAULT NULL,
  `DEP_FECHA` date DEFAULT NULL,
  `DEP_INPFAC` decimal(12,5) DEFAULT NULL,
  `DEP_INPFIN` decimal(8,5) DEFAULT NULL,
  `DEP_INPINI` decimal(8,5) DEFAULT NULL,
  `DEP_IPC` decimal(8,2) DEFAULT NULL,
  `DEP_IPCFAC` decimal(12,5) DEFAULT NULL,
  `DEP_IPCFIN` decimal(8,5) DEFAULT NULL,
  `DEP_IPCINI` decimal(8,5) DEFAULT NULL,
  `DEP_MONTO` decimal(16,2) DEFAULT NULL,
  `DEP_MTOFIN` decimal(14,2) DEFAULT NULL,
  `DEP_MTOFIS` decimal(14,2) DEFAULT NULL,
  `DEP_MTOFN` decimal(14,2) DEFAULT NULL,
  `DEP_MTOFS` decimal(14,2) DEFAULT NULL,
  `DEP_MTOORG` decimal(16,2) DEFAULT NULL,
  `DEP_NUMDES` char(8) DEFAULT NULL,
  `DEP_NUMEJE` char(4) DEFAULT NULL,
  `DEP_NUMERO` char(4) DEFAULT NULL,
  `DEP_NUMPAR` char(5) DEFAULT NULL,
  `DEP_PORCEN` decimal(6,2) DEFAULT NULL,
  `DEP_SIGNO` decimal(2,0) DEFAULT NULL,
  `DEP_TIPTRA` char(1) DEFAULT NULL,
  `DEP_UNIPRO` decimal(12,2) DEFAULT NULL,
  KEY `DPDEPRECIAACT_HIS_2` (`DEP_CODACT`),
  KEY `DPDEPRECIAACT_HIS_4` (`DEP_CODSUC`,`DEP_CODACT`),
  KEY `DPDEPRECIAACT_HIS_6` (`DEP_CODSUC`,`DEP_NUMEJE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdepxcomp`
--

DROP TABLE IF EXISTS `dpdepxcomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdepxcomp` (
  `DXP_CODDEP` char(6) DEFAULT NULL,
  `DXP_CODFOR` char(20) DEFAULT NULL,
  `DXP_CODINV` char(20) DEFAULT NULL,
  KEY `DPDEPXCOMP_2` (`DXP_CODDEP`),
  KEY `DPDEPXCOMP_4` (`DXP_CODINV`,`DXP_CODFOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdesincorpact`
--

DROP TABLE IF EXISTS `dpdesincorpact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdesincorpact` (
  `DAC_CODIGO` char(15) DEFAULT NULL,
  `DAC_CODSUC` char(6) DEFAULT NULL,
  `DAC_COMENT` char(40) DEFAULT NULL,
  `DAC_CONTAB` char(1) DEFAULT NULL,
  `DAC_FECHA` date DEFAULT NULL,
  `DAC_NUMCBT` char(8) DEFAULT NULL,
  `DAC_NUMERO` char(8) DEFAULT NULL,
  `DAC_TIPO` char(1) DEFAULT NULL,
  KEY `DPDESINCORPACT_2` (`DAC_CODIGO`),
  KEY `DPDESINCORPACT_4` (`DAC_CODSUC`,`DAC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdiario`
--

DROP TABLE IF EXISTS `dpdiario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdiario` (
  `DIA_ANO` char(4) DEFAULT NULL,
  `DIA_BIMEST` decimal(2,0) DEFAULT NULL,
  `DIA_CDIA` char(9) DEFAULT NULL,
  `DIA_CMES` char(10) DEFAULT NULL,
  `DIA_CUATRI` decimal(2,0) DEFAULT NULL,
  `DIA_DIALUN` decimal(2,0) DEFAULT NULL,
  `DIA_EJERC` decimal(4,0) DEFAULT NULL,
  `DIA_FECHA` date DEFAULT NULL,
  `DIA_LABORA` decimal(1,0) DEFAULT NULL,
  `DIA_LUNBAN` decimal(2,0) DEFAULT NULL,
  `DIA_MES` decimal(2,0) DEFAULT NULL,
  `DIA_QUINCE` decimal(2,0) DEFAULT NULL,
  `DIA_SEMANA` decimal(2,0) DEFAULT NULL,
  `DIA_SEMEST` decimal(2,0) DEFAULT NULL,
  `DIA_SEMMES` decimal(2,0) DEFAULT NULL,
  `DIA_TRIMES` decimal(2,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdiariodiv`
--

DROP TABLE IF EXISTS `dpdiariodiv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdiariodiv` (
  `VDD_FECHA` date DEFAULT NULL,
  `VDD_FECHAC` char(10) DEFAULT NULL,
  `VDD_TIPDIV` char(4) DEFAULT NULL,
  `VDD_VALOR` decimal(16,2) DEFAULT NULL,
  KEY `DPDIARIODIV_2` (`VDD_TIPDIV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdiascomxcob`
--

DROP TABLE IF EXISTS `dpdiascomxcob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdiascomxcob` (
  `DXC_HASTA` decimal(3,0) NOT NULL,
  `DXC_PORCEN` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`DXC_HASTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdoccli`
--

DROP TABLE IF EXISTS `dpdoccli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdoccli` (
  `DOC_ACT` decimal(2,0) NOT NULL,
  `DOC_ANUFIS` decimal(1,0) DEFAULT NULL,
  `DOC_ASODOC` char(19) DEFAULT NULL,
  `DOC_BASNET` decimal(19,2) DEFAULT NULL,
  `DOC_BASTER` decimal(19,0) DEFAULT NULL,
  `DOC_BRUTER` decimal(19,2) DEFAULT NULL,
  `DOC_CBTNUM` char(8) DEFAULT NULL,
  `DOC_CENCOS` char(8) DEFAULT NULL,
  `DOC_CHKSUM` decimal(19,0) DEFAULT NULL,
  `DOC_CODDEP` char(12) DEFAULT NULL,
  `DOC_CODIGO` char(10) DEFAULT NULL,
  `DOC_CODMON` char(3) DEFAULT NULL,
  `DOC_CODPER` char(6) DEFAULT NULL,
  `DOC_CODREC` char(10) DEFAULT NULL,
  `DOC_CODSUC` char(6) DEFAULT NULL,
  `DOC_CODTER` char(12) DEFAULT NULL,
  `DOC_CODTRA` char(6) DEFAULT NULL,
  `DOC_CODVEN` char(6) DEFAULT NULL,
  `DOC_CONDIC` char(60) DEFAULT NULL,
  `DOC_CREREC` decimal(1,0) DEFAULT NULL,
  `DOC_CXC` decimal(2,0) DEFAULT NULL,
  `DOC_CXCTIP` char(3) DEFAULT NULL,
  `DOC_DCTO` decimal(6,2) DEFAULT NULL,
  `DOC_DESCCO` char(30) DEFAULT NULL,
  `DOC_DESTIN` char(1) DEFAULT NULL,
  `DOC_DIVISA` decimal(1,0) DEFAULT NULL,
  `DOC_DOCORG` char(1) DEFAULT NULL,
  `DOC_ESTADO` char(2) DEFAULT NULL,
  `DOC_EXETER` decimal(19,0) DEFAULT NULL,
  `DOC_EXPEXP` char(10) DEFAULT NULL,
  `DOC_FACAFE` char(10) DEFAULT NULL,
  `DOC_FAVORI` decimal(1,0) DEFAULT NULL,
  `DOC_FCHDEC` date DEFAULT NULL,
  `DOC_FCHREC` date DEFAULT NULL,
  `DOC_FCHVEN` date DEFAULT NULL,
  `DOC_FECHA` date DEFAULT NULL,
  `DOC_FILMAI` decimal(7,0) DEFAULT NULL,
  `DOC_FORPAG` char(1) DEFAULT NULL,
  `DOC_GIRNUM` char(8) DEFAULT NULL,
  `DOC_HASOLD` char(64) DEFAULT NULL,
  `DOC_HORA` char(8) DEFAULT NULL,
  `DOC_IMPOTR` decimal(19,2) DEFAULT NULL,
  `DOC_IMPRES` decimal(1,0) DEFAULT NULL,
  `DOC_INVMON` decimal(1,0) DEFAULT NULL,
  `DOC_IVABAS` decimal(14,2) DEFAULT NULL,
  `DOC_IVAREB` decimal(2,0) DEFAULT NULL,
  `DOC_IVATER` decimal(19,2) DEFAULT NULL,
  `DOC_LBCPAR` char(6) DEFAULT NULL,
  `DOC_MODFIS` char(15) DEFAULT NULL,
  `DOC_MONNAC` char(3) DEFAULT NULL,
  `DOC_MTOCOM` decimal(19,2) DEFAULT NULL,
  `DOC_MTOCOS` decimal(19,2) DEFAULT NULL,
  `DOC_MTODCT` decimal(19,2) DEFAULT NULL,
  `DOC_MTODIV` decimal(19,2) DEFAULT NULL,
  `DOC_MTOEXE` decimal(19,2) DEFAULT NULL,
  `DOC_MTOIVA` decimal(19,2) DEFAULT NULL,
  `DOC_NETO` decimal(19,2) DEFAULT NULL,
  `DOC_NETTER` decimal(19,0) DEFAULT NULL,
  `DOC_NUMERO` char(10) DEFAULT NULL,
  `DOC_NUMFIS` char(10) DEFAULT NULL,
  `DOC_NUMGTR` char(8) DEFAULT NULL,
  `DOC_NUMIMP` decimal(2,0) DEFAULT NULL,
  `DOC_NUMMEM` decimal(8,0) DEFAULT NULL,
  `DOC_NUMPAG` decimal(2,0) DEFAULT NULL,
  `DOC_NUMPAR` char(5) DEFAULT NULL,
  `DOC_NUMPER` char(8) DEFAULT NULL,
  `DOC_OTROS` decimal(19,2) DEFAULT NULL,
  `DOC_PLAEXP` char(10) DEFAULT NULL,
  `DOC_PLAZO` decimal(4,0) DEFAULT NULL,
  `DOC_RECARG` decimal(6,2) DEFAULT NULL,
  `DOC_RECNUM` char(8) DEFAULT NULL,
  `DOC_REGAUD` decimal(8,0) DEFAULT NULL,
  `DOC_RIF` char(12) DEFAULT NULL,
  `DOC_SERFIS` char(2) DEFAULT NULL,
  `DOC_SUCCLI` char(4) DEFAULT NULL,
  `DOC_TIPAFE` char(3) DEFAULT NULL,
  `DOC_TIPDOC` char(3) DEFAULT NULL,
  `DOC_TIPORG` char(3) DEFAULT NULL,
  `DOC_TIPPAG` char(1) DEFAULT NULL,
  `DOC_TIPTRA` char(1) DEFAULT NULL,
  `DOC_USUARI` char(3) DEFAULT NULL,
  `DOC_VALCAM` decimal(19,6) DEFAULT NULL,
  `DOC_VTAANT` decimal(1,0) DEFAULT NULL,
  `DOC_ZONANL` char(1) DEFAULT NULL,
  KEY `DOCCLICXC` (`DOC_CODSUC`,`DOC_CODIGO`,`DOC_FECHA`),
  KEY `DOCCLICXCFCH` (`DOC_CODSUC`,`DOC_FECHA`,`DOC_CXC`,`DOC_ACT`,`DOC_NETO`),
  KEY `DOCCLIDEP` (`DOC_CODDEP`),
  KEY `DOCCLIGTR` (`DOC_CODSUC`,`DOC_NUMGTR`),
  KEY `DOCCLIPAGOPT` (`DOC_TIPTRA`,`DOC_TIPDOC`,`DOC_CXC`,`DOC_ACT`,`DOC_FACAFE`),
  KEY `DOCCLIREC` (`DOC_CODSUC`,`DOC_RECNUM`,`DOC_TIPTRA`),
  KEY `DOCCLISERFIS` (`DOC_CODSUC`,`DOC_SERFIS`,`DOC_TIPDOC`,`DOC_TIPTRA`,`DOC_ACT`),
  KEY `DOCCLISUCFCH` (`DOC_CODSUC`,`DOC_FECHA`),
  KEY `DOCCLIVERCON` (`DOC_CODSUC`,`DOC_TIPDOC`,`DOC_TIPTRA`,`DOC_FECHA`),
  KEY `DOCTIPAFE` (`DOC_TIPAFE`,`DOC_ASODOC`),
  KEY `DPDOCCLI_10` (`DOC_CODIGO`),
  KEY `DPDOCCLI_2` (`DOC_CODSUC`,`DOC_TIPDOC`,`DOC_NUMERO`),
  KEY `DPDOCCLI_4` (`DOC_CODSUC`,`DOC_TIPDOC`,`DOC_NUMERO`,`DOC_TIPTRA`),
  KEY `DPDOCCLI_6` (`DOC_CENCOS`),
  KEY `DPDOCCLI_8` (`DOC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER dpdoccli_after_insert AFTER INSERT ON DPDOCCLI
FOR EACH ROW BEGIN

  DECLARE cIdCalF30 VARCHAR(10);
  DECLARE cIdCalITF VARCHAR(10);
  DECLARE cIdCalONA VARCHAR(10);

  SET cIdCalF30:=SPACE(10);
  SET cIdCalITF:=SPACE(10);
  SET cIdCalONA:=SPACE(10);

  SET cIdCalF30:=(SELECT PLP_NUMREG FROM dpdocproprog WHERE PLP_TIPDOC="F30" AND PLP_FECHA>=NEW.DOC_FCHDEC ORDER BY PLP_FECHA LIMIT 1);
  SET cIdCalITF:=(SELECT PLP_NUMREG FROM dpdocproprog WHERE PLP_TIPDOC="ITF" AND PLP_FECHA>=NEW.DOC_FCHDEC ORDER BY PLP_FECHA LIMIT 1);

  UPDATE DPTIPDOCCLI SET TDC_TRIGGE=cIdCalITF WHERE TDC_TIPO="IGT";

  IF (NEW.DOC_TIPDOC="FAV" OR NEW.DOC_TIPDOC="DEB" OR NEW.DOC_TIPDOC="CRE") AND cIdCalF30<>"" AND NEW.DOC_ACT=1 AND NEW.DOC_TIPTRA="D" THEN

    UPDATE dpdocproprog SET PLP_MTOCAL = PLP_MTOCAL + (NEW.DOC_MTOIVA*NEW.DOC_CXC)    WHERE PLP_CODSUC=NEW.DOC_CODSUC AND PLP_NUMREG=cIdCalF30 AND PLP_TIPDOC="F30";

  END IF;

  IF (NEW.DOC_TIPDOC="IGT") AND cIdCalITF<>"" AND NEW.DOC_ACT=1 AND NEW.DOC_TIPTRA="D" THEN

    UPDATE dpdocproprog SET PLP_MTOCAL = PLP_MTOCAL + (NEW.DOC_NETO*NEW.DOC_CXC)    WHERE PLP_CODSUC=NEW.DOC_CODSUC AND PLP_NUMREG=cIdCalITF AND PLP_TIPDOC="ITF";

  END IF;



  IF (SELECT COUNT(*) FROM DPCLISLD WHERE SLD_CODIGO = NEW.DOC_CODIGO AND SLD_CODSUC=NEW.DOC_CODSUC)=0 THEN
    INSERT INTO DPCLISLD ( SLD_CODIGO,SLD_CODSUC,SLD_SALDO,SLD_CXCDIV) VALUES (NEW.DOC_CODIGO,NEW.DOC_CODSUC,0,0);
  END IF;

  IF NEW.DOC_CXC<>0 THEN


     UPDATE DPCLISLD SET SLD_SALDO  = SLD_SALDO  + (NEW.DOC_NETO*NEW.DOC_CXC*NEW.DOC_ACT),
                         SLD_CXCDIV = SLD_CXCDIV + (((NEW.DOC_NETO+IF(NEW.DOC_TIPTRA="P",NEW.DOC_MTOCOM,0))/IF(NEW.DOC_VALCAM<=1,0,NEW.DOC_VALCAM))*(NEW.DOC_CXC*NEW.DOC_ACT))
                         WHERE SLD_CODIGO = NEW.DOC_CODIGO AND SLD_CODSUC=NEW.DOC_CODSUC;
 
     UPDATE DPSLDGEN  SET SLD_MONTO  = SLD_MONTO  + (NEW.DOC_NETO*NEW.DOC_CXC*NEW.DOC_ACT),
                          SLD_MTODIV = SLD_MTODIV + (((NEW.DOC_NETO+IF(NEW.DOC_TIPTRA="P",NEW.DOC_MTOCOM,0))/IF(NEW.DOC_VALCAM<=1,0,NEW.DOC_VALCAM))*(NEW.DOC_CXC*NEW.DOC_ACT))
                          WHERE SLD_ID = "CXC";
  END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER dpdoccli_after_update AFTER UPDATE ON DPDOCCLI
FOR EACH ROW BEGIN

  DECLARE cIdCalF30 VARCHAR(10);
  DECLARE cIdCalA26 VARCHAR(10);

  SET cIdCalF30:=SPACE(10);
  SET cIdCalA26:=SPACE(10);

  IF NEW.DOC_USUARI<>"INC" THEN


    SET cIdCalF30:=(SELECT PLP_NUMREG FROM dpdocproprog WHERE PLP_TIPDOC="F30" AND PLP_FECHA>=NEW.DOC_FCHDEC ORDER BY PLP_FECHA LIMIT 1);
    SET cIdCalA26:=(SELECT PLP_NUMREG FROM dpdocproprog WHERE PLP_TIPDOC="A26" AND PLP_FECHA>=NEW.DOC_FCHDEC ORDER BY PLP_FECHA LIMIT 1);

    /* Actualiza movimiento de Productos */
    UPDATE dpmovinv SET MOV_CODSUC=NEW.DOC_CODSUC,MOV_TIPDOC=NEW.DOC_TIPDOC,MOV_DOCUME=NEW.DOC_NUMERO,MOV_CODCTA=NEW.DOC_CODIGO   WHERE MOV_CODSUC=OLD.DOC_CODSUC AND MOV_TIPDOC=OLD.DOC_TIPDOC AND MOV_DOCUME=OLD.DOC_NUMERO AND MOV_APLORG="V" AND OLD.DOC_TIPTRA="D";


    /* Actualiza documentos con cuentas contables */
    UPDATE dpdocclicta SET CCD_CODSUC=NEW.DOC_CODSUC,CCD_TIPDOC=NEW.DOC_TIPDOC,CCD_NUMERO=NEW.DOC_NUMERO,CCD_CODCLI=NEW.DOC_CODIGO   WHERE CCD_CODSUC=OLD.DOC_CODSUC AND CCD_TIPDOC=OLD.DOC_TIPDOC AND CCD_NUMERO=OLD.DOC_NUMERO AND OLD.DOC_TIPTRA="D";


    UPDATE dpasientos SET MOC_CODSUC=NEW.DOC_CODSUC,MOC_TIPO=NEW.DOC_TIPDOC,MOC_DOCUME=NEW.DOC_NUMERO,MOC_CODAUX=NEW.DOC_CODIGO   WHERE MOC_CODSUC=OLD.DOC_CODSUC AND MOC_TIPO=OLD.DOC_TIPDOC AND MOC_DOCUME=OLD.DOC_NUMERO AND OLD.DOC_TIPTRA="D";


    IF (NEW.DOC_USUARI<>"INC" AND NEW.DOC_TIPDOC="FAV" OR NEW.DOC_TIPDOC="DEB" OR NEW.DOC_TIPDOC="CRE" OR NEW.DOC_TIPDOC="FAM" OR NEW.DOC_TIPDOC="TIK" OR NEW.DOC_TIPDOC="DEV") AND (NEW.DOC_TIPTRA="D" AND NEW.DOC_NETO<>OLD.DOC_NETO OR NEW.DOC_MTOIVA<>OLD.DOC_MTOIVA) THEN


      UPDATE dpasientos SET MOC_CODSUC=NEW.DOC_CODSUC,MOC_TIPO=NEW.DOC_TIPDOC,MOC_DOCUME=NEW.DOC_NUMERO,MOC_CODAUX=NEW.DOC_CODIGO   WHERE MOC_CODSUC=OLD.DOC_CODSUC AND MOC_TIPO=OLD.DOC_TIPDOC AND MOC_DOCUME=OLD.DOC_NUMERO AND OLD.DOC_TIPTRA="D";


      DELETE FROM dpasientos WHERE MOC_CODSUC=OLD.DOC_CODSUC AND MOC_TIPO=OLD.DOC_TIPDOC AND MOC_DOCUME=OLD.DOC_NUMERO AND OLD.DOC_TIPTRA="D"; 

      INSERT INTO dpauditor_docfis 
             (AUD_TABLA,AUD_TIPO,AUD_FECHAS,AUD_CODSUC,AUD_TIPDOC,AUD_NUMDOC,AUD_TIPTRA,AUD_MEMO)
             VALUES
             ("DPDOCCLI","DEXT",LEFT(NOW(),10),NEW.DOC_CODSUC,NEW.DOC_TIPDOC,NEW.DOC_NUMERO,"D",
             CONCAT("NETO:",NEW.DOC_NETO,"->",OLD.DOC_NETO,"IVA:",NEW.DOC_MTOIVA,"->",OLD.DOC_MTOIVA)); 

   END IF;


   /* Actualiza planificación financiera según calendario fiscal */
   UPDATE DPTIPDOCCLI SET TDC_TRIGGE=cIdCalF30 WHERE TDC_TIPO="F30";
   UPDATE DPTIPDOCCLI SET TDC_TRIGGE=cIdCalA26 WHERE TDC_TIPO="F26";

   IF (NEW.DOC_TIPDOC="FAV" OR NEW.DOC_TIPDOC="DEB" OR NEW.DOC_TIPDOC="CRE" OR NEW.DOC_TIPDOC="FAM") AND OLD.DOC_MTOIVA<>NEW.DOC_MTOIVA AND NEW.DOC_TIPTRA="D" AND cIdCalF30<>"" THEN

     UPDATE dpdocproprog SET PLP_MTOCAL = PLP_MTOCAL - (OLD.DOC_MTOIVA*OLD.DOC_CXC)    WHERE PLP_CODSUC=NEW.DOC_CODSUC AND PLP_NUMREG=cIdCalF30 AND PLP_TIPDOC="F30";
     UPDATE dpdocproprog SET PLP_MTOCAL = PLP_MTOCAL - (OLD.DOC_MTOIVA*OLD.DOC_CXC*.1) WHERE PLP_CODSUC=NEW.DOC_CODSUC AND PLP_NUMREG=cIdCalA26 AND PLP_TIPDOC="A26";

     UPDATE dpdocproprog SET PLP_MTOCAL = PLP_MTOCAL + (NEW.DOC_MTOIVA*NEW.DOC_CXC)    WHERE PLP_CODSUC=NEW.DOC_CODSUC AND PLP_NUMREG=cIdCalF30 AND PLP_TIPDOC="F30";
     UPDATE dpdocproprog SET PLP_MTOCAL = PLP_MTOCAL + (NEW.DOC_MTOIVA*NEW.DOC_CXC*.1) WHERE PLP_CODSUC=NEW.DOC_CODSUC AND PLP_NUMREG=cIdCalA26 AND PLP_TIPDOC="A26";

   END IF;

   IF (SELECT COUNT(*) FROM DPCLISLD WHERE SLD_CODIGO = OLD.DOC_CODIGO AND SLD_CODSUC=OLD.DOC_CODSUC)=0 THEN
     INSERT INTO DPCLISLD ( SLD_CODIGO,SLD_CODSUC,SLD_SALDO,SLD_CXCDIV) VALUES (OLD.DOC_CODIGO,OLD.DOC_CODSUC,0,0);
   END IF;

   IF (OLD.DOC_CBTNUM="" AND OLD.DOC_CBTNUM<>NEW.DOC_CBTNUM) AND (SELECT TDC_CONTAB FROM DPTIPDOCCLI WHERE TDC_TIPO = NEW.DOC_TIPDOC)=1 THEN
     UPDATE DPCLISLD SET SLD_DOCCON = SLD_DOCCON-1 WHERE SLD_CODIGO = NEW.DOC_CODIGO AND SLD_CODSUC=NEW.DOC_CODSUC;
   END IF;

   IF NEW.DOC_TIPTRA="D" AND NEW.DOC_ACT=1 AND (SELECT TDC_LIBVTA FROM DPTIPDOCCLI WHERE TDC_TIPO = NEW.DOC_TIPDOC)=1 THEN
     UPDATE DPOBJFIN_DIARIO SET OBD_MTOEJE = OBD_MTOEJE + NEW.DOC_NETO  -NEW.DOC_MTOIVA WHERE OBD_FECHA=NEW.DOC_FECHA AND OBD_CODIGO LIKE "%Venta%";
     UPDATE DPOBJFIN_DIARIO SET OBD_MTOEJE = OBD_MTOEJE + NEW.DOC_MTOCOS                WHERE OBD_FECHA=NEW.DOC_FECHA AND OBD_CODIGO="Costo";
   END IF;

   IF OLD.DOC_CXC<>0 OR NEW.DOC_CXC<>0 THEN

     UPDATE DPCLISLD SET SLD_SALDO  = SLD_SALDO  - (OLD.DOC_NETO*OLD.DOC_CXC*OLD.DOC_ACT),
                         SLD_CXCDIV = SLD_CXCDIV - (((OLD.DOC_NETO+IF(OLD.DOC_TIPTRA="P",OLD.DOC_MTOCOM,0))/IF(OLD.DOC_VALCAM<=1,0,OLD.DOC_VALCAM))*(OLD.DOC_CXC*OLD.DOC_ACT))
                         WHERE SLD_CODIGO = OLD.DOC_CODIGO AND SLD_CODSUC=OLD.DOC_CODSUC;
 
     UPDATE DPCLISLD SET SLD_SALDO  = SLD_SALDO  + (NEW.DOC_NETO*NEW.DOC_CXC*NEW.DOC_ACT),
                         SLD_CXCDIV = SLD_CXCDIV + (((NEW.DOC_NETO+IF(NEW.DOC_TIPTRA="P",NEW.DOC_MTOCOM,0))/IF(NEW.DOC_VALCAM<=1,0,NEW.DOC_VALCAM))*(NEW.DOC_CXC*NEW.DOC_ACT))
                         WHERE SLD_CODIGO = NEW.DOC_CODIGO AND SLD_CODSUC=NEW.DOC_CODSUC;

     UPDATE DPSLDGEN  SET SLD_MONTO  = SLD_MONTO  + (NEW.DOC_NETO*NEW.DOC_CXC*NEW.DOC_ACT),
                          SLD_MTODIV = SLD_MTODIV + (((NEW.DOC_NETO+IF(NEW.DOC_TIPTRA="P",NEW.DOC_MTOCOM,0))/IF(NEW.DOC_VALCAM<=1,0,NEW.DOC_VALCAM))*(NEW.DOC_CXC*NEW.DOC_ACT))
                          WHERE SLD_ID = "CXC";
   END IF;

 END IF;


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER dpdoccli_before_delete BEFORE DELETE ON DPDOCCLI
FOR EACH ROW BEGIN

IF OLD.DOC_TIPTRA="D" AND OLD.DOC_ACT=1 AND (SELECT TDC_LIBVTA FROM DPTIPDOCCLI WHERE TDC_TIPO = OLD.DOC_TIPDOC)=1 THEN
   UPDATE DPOBJFIN_DIARIO SET OBD_MTOEJE = OBD_MTOEJE - (OLD.DOC_NETO-OLD.DOC_MTOIVA),OBD_MTOCOS = OBD_MTOCOS - OLD.DOC_MTOCOS  WHERE OBD_FECHA=OLD.DOC_FECHA;
 END IF;

 UPDATE DPCLISLD SET SLD_SALDO = SLD_SALDO - (OLD.DOC_NETO*OLD.DOC_CXC*OLD.DOC_ACT)
               WHERE SLD_CODSUC=OLD.DOC_CODSUC AND SLD_CODIGO = OLD.DOC_CODIGO;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `dpdoccli_crossd`
--

DROP TABLE IF EXISTS `dpdoccli_crossd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdoccli_crossd` (
  `DOC_ACT` decimal(2,0) DEFAULT NULL,
  `DOC_ANUFIS` decimal(1,0) DEFAULT NULL,
  `DOC_ASODOC` char(19) DEFAULT NULL,
  `DOC_BASNET` decimal(17,2) DEFAULT NULL,
  `DOC_BRUTER` decimal(17,2) DEFAULT NULL,
  `DOC_CBTNUM` char(8) DEFAULT NULL,
  `DOC_CENCOS` char(8) DEFAULT NULL,
  `DOC_CHKSUM` decimal(18,0) DEFAULT NULL,
  `DOC_CODDEP` char(12) DEFAULT NULL,
  `DOC_CODIGO` char(10) DEFAULT NULL,
  `DOC_CODMON` char(3) DEFAULT NULL,
  `DOC_CODPER` char(6) DEFAULT NULL,
  `DOC_CODREC` char(10) DEFAULT NULL,
  `DOC_CODSUC` char(6) DEFAULT NULL,
  `DOC_CODTER` char(12) DEFAULT NULL,
  `DOC_CODTRA` char(6) DEFAULT NULL,
  `DOC_CODVEN` char(6) DEFAULT NULL,
  `DOC_CONDIC` char(60) DEFAULT NULL,
  `DOC_CREREC` decimal(1,0) DEFAULT NULL,
  `DOC_CXC` decimal(2,0) DEFAULT NULL,
  `DOC_CXCTIP` char(3) DEFAULT NULL,
  `DOC_DCTO` decimal(6,2) DEFAULT NULL,
  `DOC_DESCCO` char(30) DEFAULT NULL,
  `DOC_DESTIN` char(1) DEFAULT NULL,
  `DOC_DIVISA` decimal(1,0) DEFAULT NULL,
  `DOC_DOCORG` char(1) DEFAULT NULL,
  `DOC_ESTADO` char(2) DEFAULT NULL,
  `DOC_EXPEXP` char(10) DEFAULT NULL,
  `DOC_FACAFE` char(10) DEFAULT NULL,
  `DOC_FAVORI` decimal(1,0) DEFAULT NULL,
  `DOC_FCHDEC` date DEFAULT NULL,
  `DOC_FCHREC` date DEFAULT NULL,
  `DOC_FCHVEN` date DEFAULT NULL,
  `DOC_FECHA` date DEFAULT NULL,
  `DOC_FILMAI` decimal(7,0) DEFAULT NULL,
  `DOC_FORPAG` char(1) DEFAULT NULL,
  `DOC_GIRNUM` char(8) DEFAULT NULL,
  `DOC_HORA` char(8) DEFAULT NULL,
  `DOC_IMPOTR` decimal(17,2) DEFAULT NULL,
  `DOC_IMPRES` decimal(1,0) DEFAULT NULL,
  `DOC_INVMON` decimal(1,0) DEFAULT NULL,
  `DOC_IVABAS` decimal(14,2) DEFAULT NULL,
  `DOC_IVAREB` decimal(2,0) DEFAULT NULL,
  `DOC_IVATER` decimal(17,2) DEFAULT NULL,
  `DOC_LBCPAR` char(6) DEFAULT NULL,
  `DOC_MODFIS` char(15) DEFAULT NULL,
  `DOC_MONNAC` char(3) DEFAULT NULL,
  `DOC_MTOCOM` decimal(17,2) DEFAULT NULL,
  `DOC_MTOCOS` decimal(17,2) DEFAULT NULL,
  `DOC_MTODCT` decimal(17,2) DEFAULT NULL,
  `DOC_MTODIV` decimal(17,2) DEFAULT NULL,
  `DOC_MTOEXE` decimal(17,2) DEFAULT NULL,
  `DOC_MTOIVA` decimal(17,2) DEFAULT NULL,
  `DOC_NETO` decimal(17,2) DEFAULT NULL,
  `DOC_NUMERO` char(10) DEFAULT NULL,
  `DOC_NUMFIS` char(10) DEFAULT NULL,
  `DOC_NUMGTR` char(8) DEFAULT NULL,
  `DOC_NUMIMP` decimal(2,0) DEFAULT NULL,
  `DOC_NUMMEM` decimal(8,0) DEFAULT NULL,
  `DOC_NUMPAG` decimal(2,0) DEFAULT NULL,
  `DOC_NUMPAR` char(5) DEFAULT NULL,
  `DOC_NUMPER` char(8) DEFAULT NULL,
  `DOC_OTROS` decimal(17,2) DEFAULT NULL,
  `DOC_PLAEXP` char(10) DEFAULT NULL,
  `DOC_PLAZO` decimal(4,0) DEFAULT NULL,
  `DOC_RECARG` decimal(6,2) DEFAULT NULL,
  `DOC_RECNUM` char(8) DEFAULT NULL,
  `DOC_REGAUD` decimal(8,0) DEFAULT NULL,
  `DOC_RIF` char(12) DEFAULT NULL,
  `DOC_SERFIS` char(2) DEFAULT NULL,
  `DOC_SUCCLI` char(4) DEFAULT NULL,
  `DOC_TIPAFE` char(3) DEFAULT NULL,
  `DOC_TIPDOC` char(3) DEFAULT NULL,
  `DOC_TIPORG` char(3) DEFAULT NULL,
  `DOC_TIPPAG` char(1) DEFAULT NULL,
  `DOC_TIPTRA` char(1) DEFAULT NULL,
  `DOC_USUARI` char(3) DEFAULT NULL,
  `DOC_VALCAM` decimal(15,4) DEFAULT NULL,
  `DOC_VTAANT` decimal(1,0) DEFAULT NULL,
  `DOC_ZONANL` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdoccli_his`
--

DROP TABLE IF EXISTS `dpdoccli_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdoccli_his` (
  `DOC_ACT` decimal(2,0) DEFAULT NULL,
  `DOC_ANUFIS` decimal(1,0) DEFAULT NULL,
  `DOC_ASODOC` char(19) DEFAULT NULL,
  `DOC_BASNET` decimal(19,2) DEFAULT NULL,
  `DOC_BRUTER` decimal(19,2) DEFAULT NULL,
  `DOC_CBTNUM` char(8) DEFAULT NULL,
  `DOC_CENCOS` char(8) DEFAULT NULL,
  `DOC_CHKSUM` decimal(19,0) DEFAULT NULL,
  `DOC_CODDEP` char(12) DEFAULT NULL,
  `DOC_CODIGO` char(10) DEFAULT NULL,
  `DOC_CODMON` char(3) DEFAULT NULL,
  `DOC_CODPER` char(6) DEFAULT NULL,
  `DOC_CODREC` char(10) DEFAULT NULL,
  `DOC_CODSUC` char(6) DEFAULT NULL,
  `DOC_CODTER` char(12) DEFAULT NULL,
  `DOC_CODTRA` char(6) DEFAULT NULL,
  `DOC_CODVEN` char(6) DEFAULT NULL,
  `DOC_CONDIC` char(60) DEFAULT NULL,
  `DOC_CREREC` decimal(1,0) DEFAULT NULL,
  `DOC_CXC` decimal(2,0) DEFAULT NULL,
  `DOC_CXCTIP` char(3) DEFAULT NULL,
  `DOC_DCTO` decimal(6,2) DEFAULT NULL,
  `DOC_DESCCO` char(30) DEFAULT NULL,
  `DOC_DESTIN` char(1) DEFAULT NULL,
  `DOC_DIVISA` decimal(1,0) DEFAULT NULL,
  `DOC_DOCORG` char(1) DEFAULT NULL,
  `DOC_ESTADO` char(2) DEFAULT NULL,
  `DOC_EXPEXP` char(10) DEFAULT NULL,
  `DOC_FACAFE` char(10) DEFAULT NULL,
  `DOC_FAVORI` decimal(1,0) DEFAULT NULL,
  `DOC_FCHDEC` date DEFAULT NULL,
  `DOC_FCHREC` date DEFAULT NULL,
  `DOC_FCHVEN` date DEFAULT NULL,
  `DOC_FECHA` date DEFAULT NULL,
  `DOC_FILMAI` decimal(7,0) DEFAULT NULL,
  `DOC_FORPAG` char(1) DEFAULT NULL,
  `DOC_GIRNUM` char(8) DEFAULT NULL,
  `DOC_HORA` char(8) DEFAULT NULL,
  `DOC_IMPOTR` decimal(19,2) DEFAULT NULL,
  `DOC_IMPRES` decimal(1,0) DEFAULT NULL,
  `DOC_INVMON` decimal(1,0) DEFAULT NULL,
  `DOC_IVABAS` decimal(14,2) DEFAULT NULL,
  `DOC_IVAREB` decimal(2,0) DEFAULT NULL,
  `DOC_IVATER` decimal(19,2) DEFAULT NULL,
  `DOC_LBCPAR` char(6) DEFAULT NULL,
  `DOC_MODFIS` char(15) DEFAULT NULL,
  `DOC_MONNAC` char(3) DEFAULT NULL,
  `DOC_MTOCOM` decimal(19,2) DEFAULT NULL,
  `DOC_MTOCOS` decimal(19,2) DEFAULT NULL,
  `DOC_MTODCT` decimal(19,2) DEFAULT NULL,
  `DOC_MTODIV` decimal(19,2) DEFAULT NULL,
  `DOC_MTOEXE` decimal(19,2) DEFAULT NULL,
  `DOC_MTOIVA` decimal(19,2) DEFAULT NULL,
  `DOC_NETO` decimal(19,2) DEFAULT NULL,
  `DOC_NUMERO` char(10) DEFAULT NULL,
  `DOC_NUMFIS` char(10) DEFAULT NULL,
  `DOC_NUMGTR` char(8) DEFAULT NULL,
  `DOC_NUMIMP` decimal(2,0) DEFAULT NULL,
  `DOC_NUMMEM` decimal(8,0) DEFAULT NULL,
  `DOC_NUMPAG` decimal(2,0) DEFAULT NULL,
  `DOC_NUMPAR` char(5) DEFAULT NULL,
  `DOC_NUMPER` char(8) DEFAULT NULL,
  `DOC_OTROS` decimal(19,2) DEFAULT NULL,
  `DOC_PLAEXP` char(10) DEFAULT NULL,
  `DOC_PLAZO` decimal(4,0) DEFAULT NULL,
  `DOC_RECARG` decimal(6,2) DEFAULT NULL,
  `DOC_RECNUM` char(8) DEFAULT NULL,
  `DOC_REGAUD` decimal(8,0) DEFAULT NULL,
  `DOC_RIF` char(12) DEFAULT NULL,
  `DOC_SERFIS` char(2) DEFAULT NULL,
  `DOC_SUCCLI` char(4) DEFAULT NULL,
  `DOC_TIPAFE` char(3) DEFAULT NULL,
  `DOC_TIPDOC` char(3) DEFAULT NULL,
  `DOC_TIPORG` char(3) DEFAULT NULL,
  `DOC_TIPPAG` char(1) DEFAULT NULL,
  `DOC_TIPTRA` char(1) DEFAULT NULL,
  `DOC_USUARI` char(3) DEFAULT NULL,
  `DOC_VALCAM` decimal(19,6) DEFAULT NULL,
  `DOC_VTAANT` decimal(1,0) DEFAULT NULL,
  `DOC_ZONANL` char(1) DEFAULT NULL,
  `DOC_BASTER` decimal(19,0) DEFAULT NULL,
  `DOC_EXETER` decimal(19,0) DEFAULT NULL,
  `DOC_HASOLD` char(64) DEFAULT NULL,
  `DOC_NETTER` decimal(19,0) DEFAULT NULL,
  KEY `DPDOCCLI_HIS_10` (`DOC_CODMON`),
  KEY `DPDOCCLI_HIS_2` (`DOC_CENCOS`),
  KEY `DPDOCCLI_HIS_4` (`DOC_CODIGO`),
  KEY `DPDOCCLI_HIS_6` (`DOC_CODSUC`),
  KEY `DPDOCCLI_HIS_8` (`DOC_CODSUC`,`DOC_TIPDOC`,`DOC_NUMERO`,`DOC_TIPTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocclicomision`
--

DROP TABLE IF EXISTS `dpdocclicomision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocclicomision` (
  `CXD_CODMOD` char(6) DEFAULT NULL,
  `CXD_CODSUC` char(8) DEFAULT NULL,
  `CXD_CODVEN` char(8) DEFAULT NULL,
  `CXD_MONTO` char(6) DEFAULT NULL,
  `CXD_NUMERO` char(10) DEFAULT NULL,
  `CXD_PERIOD` char(10) DEFAULT NULL,
  `CXD_TIPDOC` char(3) DEFAULT NULL,
  `CXD_TIPO` char(1) DEFAULT NULL,
  `CXD_TIPTRA` char(1) DEFAULT NULL,
  KEY `DPDOCCLICOMISION_2` (`CXD_CODSUC`,`CXD_TIPDOC`,`CXD_NUMERO`,`CXD_TIPTRA`),
  KEY `DPDOCCLICOMISION_4` (`CXD_PERIOD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocclicta`
--

DROP TABLE IF EXISTS `dpdocclicta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocclicta` (
  `CCD_ACT` decimal(1,0) DEFAULT NULL,
  `CCD_CENCOS` char(8) DEFAULT NULL,
  `CCD_CODCLI` char(10) DEFAULT NULL,
  `CCD_CODCTA` char(20) DEFAULT NULL,
  `CCD_CODIGO` char(10) DEFAULT NULL,
  `CCD_CODINT` char(10) DEFAULT NULL,
  `CCD_CODSUC` char(6) DEFAULT NULL,
  `CCD_CTAEGR` char(20) DEFAULT NULL,
  `CCD_CTAMOD` char(6) DEFAULT NULL,
  `CCD_DESCRI` char(130) DEFAULT NULL,
  `CCD_DOCREF` char(12) DEFAULT NULL,
  `CCD_FECHA` date DEFAULT NULL,
  `CCD_ITEM` char(5) DEFAULT NULL,
  `CCD_MONTO` decimal(16,2) DEFAULT NULL,
  `CCD_NUMERO` char(10) DEFAULT NULL,
  `CCD_PORIVA` decimal(6,2) DEFAULT NULL,
  `CCD_SERFIS` char(1) DEFAULT NULL,
  `CCD_TIPCTA` char(1) DEFAULT NULL,
  `CCD_TIPDOC` char(3) DEFAULT NULL,
  `CCD_TIPIVA` char(2) DEFAULT NULL,
  `CCD_TIPTRA` char(1) DEFAULT NULL,
  `CCD_TOTAL` decimal(14,2) DEFAULT NULL,
  `CCD_TOTDIV` decimal(19,2) DEFAULT NULL,
  `CDD_LBCPAR` char(6) DEFAULT NULL,
  KEY `DPDOCCLICTA_10` (`CCD_TIPIVA`),
  KEY `DPDOCCLICTA_2` (`CCD_CENCOS`),
  KEY `DPDOCCLICTA_4` (`CCD_CTAMOD`,`CCD_CODCTA`),
  KEY `DPDOCCLICTA_6` (`CCD_CTAEGR`),
  KEY `DPDOCCLICTA_8` (`CCD_CODSUC`,`CCD_TIPDOC`,`CCD_NUMERO`,`CCD_TIPTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocclicta_cta`
--

DROP TABLE IF EXISTS `dpdocclicta_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocclicta_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocclicta_his`
--

DROP TABLE IF EXISTS `dpdocclicta_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocclicta_his` (
  `CCD_ACT` decimal(1,0) DEFAULT NULL,
  `CCD_CENCOS` char(8) DEFAULT NULL,
  `CCD_CODCLI` char(10) DEFAULT NULL,
  `CCD_CODCTA` char(20) DEFAULT NULL,
  `CCD_CODIGO` char(10) DEFAULT NULL,
  `CCD_CODINT` char(10) DEFAULT NULL,
  `CCD_CODSUC` char(6) DEFAULT NULL,
  `CCD_CTAEGR` char(20) DEFAULT NULL,
  `CCD_CTAMOD` char(6) DEFAULT NULL,
  `CCD_DESCRI` char(130) DEFAULT NULL,
  `CCD_DOCREF` char(12) DEFAULT NULL,
  `CCD_FECHA` date DEFAULT NULL,
  `CCD_ITEM` char(5) DEFAULT NULL,
  `CCD_MONTO` decimal(16,2) DEFAULT NULL,
  `CCD_NUMERO` char(10) DEFAULT NULL,
  `CCD_PORIVA` decimal(6,2) DEFAULT NULL,
  `CCD_SERFIS` char(1) DEFAULT NULL,
  `CCD_TIPCTA` char(1) DEFAULT NULL,
  `CCD_TIPDOC` char(3) DEFAULT NULL,
  `CCD_TIPIVA` char(2) DEFAULT NULL,
  `CCD_TIPTRA` char(1) DEFAULT NULL,
  `CCD_TOTAL` decimal(14,2) DEFAULT NULL,
  `CCD_TOTDIV` decimal(19,0) DEFAULT NULL,
  `CDD_LBCPAR` char(6) DEFAULT NULL,
  KEY `DPDOCCLICTA_HIS_2` (`CCD_CENCOS`),
  KEY `DPDOCCLICTA_HIS_4` (`CCD_CTAEGR`),
  KEY `DPDOCCLICTA_HIS_6` (`CCD_CODSUC`,`CCD_TIPDOC`,`CCD_NUMERO`,`CCD_TIPTRA`),
  KEY `DPDOCCLICTA_HIS_8` (`CCD_TIPIVA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocclicta_his_cta`
--

DROP TABLE IF EXISTS `dpdocclicta_his_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocclicta_his_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPDOCCLICTA_HIS_CTA_` (`CIC_CTAMOD`,`CIC_CUENTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocclicuotas`
--

DROP TABLE IF EXISTS `dpdocclicuotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocclicuotas` (
  `DCC_CODSUC` char(6) DEFAULT NULL,
  `DCC_NUMERO` char(10) DEFAULT NULL,
  `DCC_TIPDOC` char(3) DEFAULT NULL,
  `DCC_TIPTRA` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocclidir`
--

DROP TABLE IF EXISTS `dpdocclidir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocclidir` (
  `CLI_CIUDAD` char(100) DEFAULT NULL,
  `CLI_ESTADO` char(100) DEFAULT NULL,
  `CLI_MUNICI` char(100) DEFAULT NULL,
  `DIR_CARGO` char(35) DEFAULT NULL,
  `DIR_CODIGO` char(10) DEFAULT NULL,
  `DIR_CODSUC` char(6) DEFAULT NULL,
  `DIR_CODTRA` char(6) DEFAULT NULL,
  `DIR_COMEN1` char(40) DEFAULT NULL,
  `DIR_COMEN2` char(40) DEFAULT NULL,
  `DIR_DIR1` char(50) DEFAULT NULL,
  `DIR_DIR2` char(50) DEFAULT NULL,
  `DIR_DIR3` char(50) DEFAULT NULL,
  `DIR_DIRIGI` char(40) DEFAULT NULL,
  `DIR_FCHENT` date DEFAULT NULL,
  `DIR_FCHORD` date DEFAULT NULL,
  `DIR_FLEDIV` decimal(19,0) DEFAULT NULL,
  `DIR_FORENT` char(50) DEFAULT NULL,
  `DIR_GUIA` char(20) DEFAULT NULL,
  `DIR_HORENT` char(8) DEFAULT NULL,
  `DIR_NUMDOC` char(10) DEFAULT NULL,
  `DIR_ORDCOM` char(10) DEFAULT NULL,
  `DIR_PAIS` char(20) DEFAULT NULL,
  `DIR_PARROQ` char(20) DEFAULT NULL,
  `DIR_PERSON` char(30) DEFAULT NULL,
  `DIR_SUCCLI` char(4) DEFAULT NULL,
  `DIR_SUCTRA` char(6) DEFAULT NULL,
  `DIR_TELEFO` char(12) DEFAULT NULL,
  `DIR_TIPDOC` char(3) DEFAULT NULL,
  `DIR_TIPTRA` char(1) DEFAULT NULL,
  `DIR_TRADES` char(6) DEFAULT NULL,
  KEY `DPDOCCLIDIR_2` (`DIR_CODSUC`,`DIR_TIPDOC`,`DIR_NUMDOC`,`DIR_TIPTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdoccliflow`
--

DROP TABLE IF EXISTS `dpdoccliflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdoccliflow` (
  `DOF_CODSUC` char(8) DEFAULT NULL,
  `DOF_NUMERO` char(10) DEFAULT NULL,
  `DOF_TIPDES` char(3) DEFAULT NULL,
  `DOF_TIPDOC` char(3) DEFAULT NULL,
  `DOF_TIPTRA` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdoccliforfis`
--

DROP TABLE IF EXISTS `dpdoccliforfis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdoccliforfis` (
  `FXD_CODSUC` char(4) DEFAULT NULL,
  `FXD_PC` char(20) DEFAULT NULL,
  `FXD_SERIE` char(1) DEFAULT NULL,
  `FXD_TIPDOC` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdoccliislr`
--

DROP TABLE IF EXISTS `dpdoccliislr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdoccliislr` (
  `RXC_CODCON` char(3) DEFAULT NULL,
  `RXC_CODEQI` char(3) DEFAULT NULL,
  `RXC_CODMON` char(3) DEFAULT NULL,
  `RXC_CODSUC` char(6) DEFAULT NULL,
  `RXC_DESCRI` char(80) DEFAULT NULL,
  `RXC_DOCNUM` char(10) DEFAULT NULL,
  `RXC_DOCTIP` char(3) DEFAULT NULL,
  `RXC_FECHA` date DEFAULT NULL,
  `RXC_INTEGR` char(1) DEFAULT NULL,
  `RXC_MTOBAS` decimal(16,2) DEFAULT NULL,
  `RXC_MTODED` decimal(14,2) DEFAULT NULL,
  `RXC_MTORET` decimal(14,2) DEFAULT NULL,
  `RXC_MTOSUJ` decimal(16,2) DEFAULT NULL,
  `RXC_NUMDOC` char(10) DEFAULT NULL,
  `RXC_PORCEN` decimal(5,2) DEFAULT NULL,
  `RXC_TIPDOC` char(3) DEFAULT NULL,
  `RXC_TIPTRA` char(1) DEFAULT NULL,
  KEY `DPDOCCLIISLR_2` (`RXC_CODSUC`,`RXC_DOCTIP`,`RXC_DOCNUM`,`RXC_TIPTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdoccliislr_his`
--

DROP TABLE IF EXISTS `dpdoccliislr_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdoccliislr_his` (
  `RXC_CODCON` char(3) DEFAULT NULL,
  `RXC_CODEQI` char(3) DEFAULT NULL,
  `RXC_CODMON` char(3) DEFAULT NULL,
  `RXC_CODSUC` char(6) DEFAULT NULL,
  `RXC_DESCRI` char(80) DEFAULT NULL,
  `RXC_DOCNUM` char(10) DEFAULT NULL,
  `RXC_DOCTIP` char(3) DEFAULT NULL,
  `RXC_FECHA` date DEFAULT NULL,
  `RXC_INTEGR` char(1) DEFAULT NULL,
  `RXC_MTOBAS` decimal(16,2) DEFAULT NULL,
  `RXC_MTODED` decimal(14,2) DEFAULT NULL,
  `RXC_MTORET` decimal(14,2) DEFAULT NULL,
  `RXC_MTOSUJ` decimal(16,2) DEFAULT NULL,
  `RXC_NUMDOC` char(10) DEFAULT NULL,
  `RXC_PORCEN` decimal(5,2) DEFAULT NULL,
  `RXC_TIPDOC` char(3) DEFAULT NULL,
  `RXC_TIPTRA` char(1) DEFAULT NULL,
  KEY `DPDOCCLIISLR_HIS_2` (`RXC_CODSUC`,`RXC_DOCTIP`,`RXC_DOCNUM`,`RXC_TIPTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdoccliiva`
--

DROP TABLE IF EXISTS `dpdoccliiva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdoccliiva` (
  `IXD_CODIGO` char(10) DEFAULT NULL,
  `IXD_CODSUC` char(6) DEFAULT NULL,
  `IXD_IVA` decimal(6,2) DEFAULT NULL,
  `IXD_MTOBAS` decimal(16,2) DEFAULT NULL,
  `IXD_MTOIVA` decimal(14,2) DEFAULT NULL,
  `IXD_NUMERO` char(10) DEFAULT NULL,
  `IXD_TIPDOC` char(3) DEFAULT NULL,
  `IXD_TIPIVA` char(2) DEFAULT NULL,
  `IXD_TIPTRA` char(1) DEFAULT NULL,
  KEY `DPDOCCLIIVA_2` (`IXD_CODSUC`,`IXD_TIPDOC`,`IXD_NUMERO`,`IXD_TIPTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdoccliiva_his`
--

DROP TABLE IF EXISTS `dpdoccliiva_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdoccliiva_his` (
  `IXD_CODIGO` char(10) DEFAULT NULL,
  `IXD_CODSUC` char(6) DEFAULT NULL,
  `IXD_IVA` decimal(6,2) DEFAULT NULL,
  `IXD_MTOBAS` decimal(16,2) DEFAULT NULL,
  `IXD_MTOIVA` decimal(14,2) DEFAULT NULL,
  `IXD_NUMERO` char(10) DEFAULT NULL,
  `IXD_TIPDOC` char(3) DEFAULT NULL,
  `IXD_TIPIVA` char(2) DEFAULT NULL,
  `IXD_TIPTRA` char(1) DEFAULT NULL,
  KEY `DPDOCCLIIVA_HIS_2` (`IXD_CODSUC`,`IXD_TIPDOC`,`IXD_NUMERO`,`IXD_TIPTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocclinum`
--

DROP TABLE IF EXISTS `dpdocclinum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocclinum` (
  `DCN_CHKSUM` decimal(19,0) DEFAULT NULL,
  `DCN_CODSUC` char(6) DEFAULT NULL,
  `DCN_ESTADO` char(1) DEFAULT NULL,
  `DCN_FCHREG` date DEFAULT NULL,
  `DCN_NUMDOC` char(10) DEFAULT NULL,
  `DCN_NUMERO` char(10) DEFAULT NULL,
  `DCN_NUMTAL` char(4) DEFAULT NULL,
  `DCN_SERFIS` char(2) DEFAULT NULL,
  `DCN_TIPDOC` char(3) DEFAULT NULL,
  KEY `DPDOCCLINUM_2` (`DCN_SERFIS`),
  KEY `DPDOCCLINUM_4` (`DCN_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdoccliprog`
--

DROP TABLE IF EXISTS `dpdoccliprog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdoccliprog` (
  `PLC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `PLC_ANO` decimal(4,0) DEFAULT NULL,
  `PLC_CODIGO` char(20) DEFAULT NULL,
  `PLC_CODSUC` char(8) DEFAULT NULL,
  `PLC_CUOTA` char(4) DEFAULT NULL,
  `PLC_FECHA` date DEFAULT NULL,
  `PLC_MES` char(10) DEFAULT NULL,
  `PLC_MONTO` decimal(14,2) DEFAULT NULL,
  `PLC_NUMDOC` char(10) DEFAULT NULL,
  `PLC_NUMERO` char(8) DEFAULT NULL,
  `PLC_NUMORG` char(10) DEFAULT NULL,
  `PLC_TIPDES` char(3) DEFAULT NULL,
  `PLC_TIPDOC` char(3) DEFAULT NULL,
  `PLC_TIPTRA` char(1) DEFAULT NULL,
  KEY `DPDOCCLIPROG_2` (`PLC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocclirti`
--

DROP TABLE IF EXISTS `dpdocclirti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocclirti` (
  `RTI_CODSUC` char(6) DEFAULT NULL,
  `RTI_CONTAB` char(1) DEFAULT NULL,
  `RTI_DOCNUM` char(10) DEFAULT NULL,
  `RTI_DOCTIP` char(3) DEFAULT NULL,
  `RTI_FCHDEC` date DEFAULT NULL,
  `RTI_FECHA` date DEFAULT NULL,
  `RTI_NUMCLI` char(14) DEFAULT NULL,
  `RTI_NUMERO` char(10) DEFAULT NULL,
  `RTI_NUMTRA` char(8) DEFAULT NULL,
  `RTI_PORCEN` decimal(6,2) DEFAULT NULL,
  `RTI_TIPDOC` char(3) DEFAULT NULL,
  `RTI_TIPTRA` char(1) DEFAULT NULL,
  KEY `DPDOCCLIRTI_2` (`RTI_CODSUC`,`RTI_DOCTIP`,`RTI_DOCNUM`,`RTI_TIPTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocclirxe`
--

DROP TABLE IF EXISTS `dpdocclirxe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocclirxe` (
  `RTI_CODSUC` char(6) DEFAULT NULL,
  `RTI_CONTAB` char(1) DEFAULT NULL,
  `RTI_DOCNUM` char(10) DEFAULT NULL,
  `RTI_DOCTIP` char(3) DEFAULT NULL,
  `RTI_FCHDEC` date DEFAULT NULL,
  `RTI_FECHA` date DEFAULT NULL,
  `RTI_NUMCLI` char(14) DEFAULT NULL,
  `RTI_NUMERO` char(10) DEFAULT NULL,
  `RTI_NUMTRA` char(8) DEFAULT NULL,
  `RTI_PORCEN` decimal(19,2) DEFAULT NULL,
  `RTI_TIPDOC` char(3) DEFAULT NULL,
  `RTI_TIPTRA` char(1) DEFAULT NULL,
  KEY `DPDOCCLIRXE_2` (`RTI_CODSUC`,`RTI_DOCTIP`,`RTI_DOCNUM`,`RTI_TIPTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocconteo`
--

DROP TABLE IF EXISTS `dpdocconteo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocconteo` (
  `DCI_AFECON` decimal(1,0) DEFAULT NULL,
  `DCI_AFEFIS` decimal(1,0) DEFAULT NULL,
  `DCI_AFELOG` decimal(1,0) DEFAULT NULL,
  `DCI_CAMPOA` char(10) DEFAULT NULL,
  `DCI_CODALM` char(3) DEFAULT NULL,
  `DCI_CODIGO` char(20) DEFAULT NULL,
  `DCI_CODSUC` char(6) DEFAULT NULL,
  `DCI_DESCRI` char(60) DEFAULT NULL,
  `DCI_ESTADO` char(1) DEFAULT NULL,
  `DCI_FCHEJE` date DEFAULT NULL,
  `DCI_FECHA` date DEFAULT NULL,
  `DCI_FILSIZ` char(80) DEFAULT NULL,
  `DCI_FILXLS` char(250) DEFAULT NULL,
  `DCI_HORAEJ` char(8) DEFAULT NULL,
  `DCI_NUMCBT` char(8) DEFAULT NULL,
  `DCI_NUMERO` char(10) DEFAULT NULL,
  `DCI_NUMMEM` decimal(8,0) DEFAULT NULL,
  `DCI_NUNMEM` longtext,
  `DCI_TABLA` char(20) DEFAULT NULL,
  `DCI_TIPEXI` char(1) DEFAULT NULL,
  KEY `DPDOCCONTEO_2` (`DCI_CODSUC`,`DCI_CODALM`),
  KEY `DPDOCCONTEO_4` (`DCI_CODSUC`),
  KEY `DPDOCCONTEO_6` (`DCI_CODSUC`,`DCI_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocensbl`
--

DROP TABLE IF EXISTS `dpdocensbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocensbl` (
  `DOC_CANT` decimal(8,0) DEFAULT NULL,
  `DOC_CANTID` char(19) DEFAULT NULL,
  `DOC_CENCOS` char(8) DEFAULT NULL,
  `DOC_CODALM` char(3) DEFAULT NULL,
  `DOC_CODINV` char(20) DEFAULT NULL,
  `DOC_CODPER` char(6) DEFAULT NULL,
  `DOC_CODSUC` char(6) DEFAULT NULL,
  `DOC_CODUND` char(8) DEFAULT NULL,
  `DOC_COMEN1` char(35) DEFAULT NULL,
  `DOC_COMEN2` char(35) DEFAULT NULL,
  `DOC_CONTAB` char(1) DEFAULT NULL,
  `DOC_COSTO` decimal(22,2) DEFAULT NULL,
  `DOC_DOSIFICA` char(20) DEFAULT NULL,
  `DOC_ESTADO` char(1) DEFAULT NULL,
  `DOC_FECHA` date DEFAULT NULL,
  `DOC_HORA` char(8) DEFAULT NULL,
  `DOC_MERMA` decimal(6,2) DEFAULT NULL,
  `DOC_NDOSIFI` char(20) DEFAULT NULL,
  `DOC_NUMCBT` char(8) DEFAULT NULL,
  `DOC_NUMERO` char(10) DEFAULT NULL,
  `DOC_NUMMEM` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocetq`
--

DROP TABLE IF EXISTS `dpdocetq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocetq` (
  `DOC_CODPER` char(6) DEFAULT NULL,
  `DOC_CODSUC` char(6) DEFAULT NULL,
  `DOC_COMEN1` char(35) DEFAULT NULL,
  `DOC_COMEN2` char(35) DEFAULT NULL,
  `DOC_FECHA` date DEFAULT NULL,
  `DOC_HORA` char(8) DEFAULT NULL,
  `DOC_NUMERO` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocintersuc`
--

DROP TABLE IF EXISTS `dpdocintersuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocintersuc` (
  `DXS_DESCOD` char(10) DEFAULT NULL,
  `DXS_DESNUM` char(10) DEFAULT NULL,
  `DXS_DESSUC` char(8) DEFAULT NULL,
  `DXS_DESTIP` char(3) DEFAULT NULL,
  `DXS_ORGCOD` char(10) DEFAULT NULL,
  `DXS_ORGNUM` char(10) DEFAULT NULL,
  `DXS_ORGSUC` char(8) DEFAULT NULL,
  `DXS_ORGTIP` char(3) DEFAULT NULL,
  `DXS_VTANUM` char(10) DEFAULT NULL,
  `DXS_VTASUC` char(8) DEFAULT NULL,
  `DXS_VTATIP` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocmov`
--

DROP TABLE IF EXISTS `dpdocmov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocmov` (
  `DOC_CENCOS` char(8) DEFAULT NULL,
  `DOC_CODCOM` char(15) DEFAULT NULL,
  `DOC_CODINV` char(15) DEFAULT NULL,
  `DOC_CODPER` char(6) DEFAULT NULL,
  `DOC_CODSUC` char(6) DEFAULT NULL,
  `DOC_COMEN1` char(35) DEFAULT NULL,
  `DOC_COMEN2` char(35) DEFAULT NULL,
  `DOC_CONTAB` char(1) DEFAULT NULL,
  `DOC_EMPRES` char(20) DEFAULT NULL,
  `DOC_ESTADO` char(1) DEFAULT NULL,
  `DOC_FECHA` date DEFAULT NULL,
  `DOC_HORA` char(8) DEFAULT NULL,
  `DOC_NUMCBT` char(8) DEFAULT NULL,
  `DOC_NUMDOC` char(8) DEFAULT NULL,
  `DOC_NUMERO` char(10) DEFAULT NULL,
  `DOC_NUMMEM` decimal(6,0) DEFAULT NULL,
  `DOC_NUMPAR` char(5) DEFAULT NULL,
  `DOC_VALCAM` decimal(19,0) DEFAULT NULL,
  `DOC_HASOLD` char(64) DEFAULT NULL,
  KEY `DPDOCMOV_2` (`DOC_CENCOS`),
  KEY `DPDOCMOV_4` (`DOC_CODPER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocmov_ordpro`
--

DROP TABLE IF EXISTS `dpdocmov_ordpro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocmov_ordpro` (
  `DOC_CENCOS` char(8) DEFAULT NULL,
  `DOC_CODCOM` char(15) DEFAULT NULL,
  `DOC_CODINV` char(15) DEFAULT NULL,
  `DOC_CODPER` char(6) DEFAULT NULL,
  `DOC_CODSUC` char(6) DEFAULT NULL,
  `DOC_COMEN1` char(35) DEFAULT NULL,
  `DOC_COMEN2` char(35) DEFAULT NULL,
  `DOC_CONTAB` char(1) DEFAULT NULL,
  `DOC_EMPRES` char(20) DEFAULT NULL,
  `DOC_ESTADO` char(1) DEFAULT NULL,
  `DOC_FECHA` date DEFAULT NULL,
  `DOC_HORA` char(8) DEFAULT NULL,
  `DOC_NUMCBT` char(8) DEFAULT NULL,
  `DOC_NUMDOC` char(8) DEFAULT NULL,
  `DOC_NUMERO` char(10) DEFAULT NULL,
  `DOC_NUMMEM` decimal(6,0) DEFAULT NULL,
  `DOC_NUMPAR` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocplantilla`
--

DROP TABLE IF EXISTS `dpdocplantilla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocplantilla` (
  `DOC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `DOC_CODGRU` char(6) DEFAULT NULL,
  `DOC_CODIGO` char(20) NOT NULL,
  `DOC_CODINV` char(20) DEFAULT NULL,
  `DOC_CODSUC` char(6) DEFAULT NULL,
  `DOC_DESCRI` char(80) DEFAULT NULL,
  `DOC_EDT` decimal(1,0) DEFAULT NULL,
  `DOC_FECHA` date DEFAULT NULL,
  `DOC_HORA` char(8) DEFAULT NULL,
  `DOC_VALOR` decimal(1,0) DEFAULT NULL,
  PRIMARY KEY (`DOC_CODIGO`),
  KEY `DPDOCPLANTILLA_2` (`DOC_CODGRU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocplantillagru`
--

DROP TABLE IF EXISTS `dpdocplantillagru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocplantillagru` (
  `GDP_ACTIVO` decimal(1,0) DEFAULT NULL,
  `GDP_CODIGO` char(6) NOT NULL,
  `GDP_DESCRI` char(80) DEFAULT NULL,
  PRIMARY KEY (`GDP_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocplantillavar`
--

DROP TABLE IF EXISTS `dpdocplantillavar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocplantillavar` (
  `VAR_CODIGO` char(20) DEFAULT NULL,
  `VAR_CODSUC` char(6) DEFAULT NULL,
  `VAR_DESCRI` char(80) DEFAULT NULL,
  `VAR_ITEM` char(5) DEFAULT NULL,
  `VAR_MONTO` decimal(18,2) DEFAULT NULL,
  `VAR_NOMBRE` char(10) DEFAULT NULL,
  `VAR_SEL` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocpro`
--

DROP TABLE IF EXISTS `dpdocpro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocpro` (
  `DOC_ACT` decimal(2,0) NOT NULL,
  `DOC_ANUFIS` decimal(1,0) DEFAULT NULL,
  `DOC_ASODOC` char(20) DEFAULT NULL,
  `DOC_BASNET` decimal(19,2) DEFAULT NULL,
  `DOC_CANIMP` decimal(2,0) DEFAULT NULL,
  `DOC_CBTNUM` char(8) DEFAULT NULL,
  `DOC_CBTPRE` char(10) DEFAULT NULL,
  `DOC_CENCOS` char(8) DEFAULT NULL,
  `DOC_CODDEP` char(12) DEFAULT NULL,
  `DOC_CODIGO` char(10) DEFAULT NULL,
  `DOC_CODMON` char(3) DEFAULT NULL,
  `DOC_CODRMU` char(8) DEFAULT NULL,
  `DOC_CODSUC` char(6) DEFAULT NULL,
  `DOC_CODTRA` char(6) DEFAULT NULL,
  `DOC_CONDIC` char(35) DEFAULT NULL,
  `DOC_CREFIS` decimal(1,0) DEFAULT NULL,
  `DOC_CREPAG` decimal(1,0) DEFAULT NULL,
  `DOC_CXP` decimal(19,0) DEFAULT NULL,
  `DOC_CXPCOD` char(10) DEFAULT NULL,
  `DOC_CXPDOC` char(20) DEFAULT NULL,
  `DOC_CXPTIP` char(3) DEFAULT NULL,
  `DOC_DCTO` decimal(6,2) DEFAULT NULL,
  `DOC_DESCCO` char(30) DEFAULT NULL,
  `DOC_DOCORG` char(1) DEFAULT NULL,
  `DOC_ESTADO` char(2) DEFAULT NULL,
  `DOC_ESTORG` char(20) DEFAULT NULL,
  `DOC_EXPIMP` char(10) DEFAULT NULL,
  `DOC_FACAFE` char(20) DEFAULT NULL,
  `DOC_FAVORI` decimal(1,0) DEFAULT NULL,
  `DOC_FCHDEC` date DEFAULT NULL,
  `DOC_FCHVEN` date DEFAULT NULL,
  `DOC_FECHA` date DEFAULT NULL,
  `DOC_FILMAI` decimal(7,0) DEFAULT NULL,
  `DOC_HORA` char(8) DEFAULT NULL,
  `DOC_IMPOTR` decimal(19,2) DEFAULT NULL,
  `DOC_IVABAS` decimal(14,2) DEFAULT NULL,
  `DOC_IVAREB` decimal(2,0) DEFAULT NULL,
  `DOC_LBCPAR` char(6) DEFAULT NULL,
  `DOC_LIBCOM` char(4) DEFAULT NULL,
  `DOC_MONNAC` char(3) DEFAULT NULL,
  `DOC_MTOCOM` decimal(19,2) DEFAULT NULL,
  `DOC_MTOCOS` decimal(19,2) DEFAULT NULL,
  `DOC_MTODIV` decimal(19,2) DEFAULT NULL,
  `DOC_MTOEXE` decimal(17,2) DEFAULT NULL,
  `DOC_MTOIVA` decimal(19,2) DEFAULT NULL,
  `DOC_NETO` decimal(19,2) DEFAULT NULL,
  `DOC_NODEDU` decimal(1,0) DEFAULT NULL,
  `DOC_NUMERO` char(20) DEFAULT NULL,
  `DOC_NUMFIS` char(20) DEFAULT NULL,
  `DOC_NUMIMG` decimal(8,0) DEFAULT NULL,
  `DOC_NUMMEM` decimal(8,0) DEFAULT NULL,
  `DOC_NUMPAR` char(5) DEFAULT NULL,
  `DOC_ORIGEN` char(1) DEFAULT NULL,
  `DOC_OTROS` decimal(19,2) DEFAULT NULL,
  `DOC_PAGNUM` char(8) DEFAULT NULL,
  `DOC_PLAIMP` char(10) DEFAULT NULL,
  `DOC_PLAZO` decimal(19,0) DEFAULT NULL,
  `DOC_PPLREG` char(10) DEFAULT NULL,
  `DOC_RECARG` decimal(6,2) DEFAULT NULL,
  `DOC_REGAUD` decimal(8,0) DEFAULT NULL,
  `DOC_RIF` char(12) DEFAULT NULL,
  `DOC_TIPAFE` char(3) DEFAULT NULL,
  `DOC_TIPDOC` char(3) DEFAULT NULL,
  `DOC_TIPORG` char(3) DEFAULT NULL,
  `DOC_TIPPAG` char(1) DEFAULT NULL,
  `DOC_TIPTRA` char(1) DEFAULT NULL,
  `DOC_USUARI` char(3) DEFAULT NULL,
  `DOC_VALCAM` decimal(19,6) DEFAULT NULL,
  `DOC_BASTER` decimal(19,0) DEFAULT NULL,
  `DOC_IVATER` decimal(19,0) DEFAULT NULL,
  `DOC_EXETER` decimal(19,0) DEFAULT NULL,
  `DOC_NETTER` decimal(19,0) DEFAULT NULL,
  `DOC_HASOLD` char(64) DEFAULT NULL,
  `DOC_FCHPAG` date DEFAULT NULL,
  KEY `DPDOCPRO_11` (`DOC_CODSUC`,`DOC_CODIGO`,`DOC_NUMERO`),
  KEY `DPDOCPRO_2` (`DOC_CODSUC`,`DOC_TIPDOC`,`DOC_CODIGO`,`DOC_NUMERO`,`DOC_TIPTRA`),
  KEY `DPDOCPRO_3` (`DOC_CODSUC`,`DOC_LIBCOM`),
  KEY `DPDOCPRO_4` (`DOC_CODSUC`,`DOC_CENCOS`,`DOC_FECHA`,`DOC_TIPTRA`),
  KEY `DPDOCPRO_5` (`DOC_CODSUC`,`DOC_FECHA`,`DOC_TIPTRA`,`DOC_ACT`),
  KEY `DPDOCPRO_6` (`DOC_CODSUC`,`DOC_PAGNUM`,`DOC_TIPTRA`),
  KEY `DPDOCPRO_7` (`DOC_CODDEP`),
  KEY `DPDOCPRO_8` (`DOC_TIPTRA`,`DOC_ACT`),
  KEY `DPDOCPRO_9` (`DOC_CODSUC`,`DOC_TIPDOC`,`DOC_CODIGO`,`DOC_PAGNUM`,`DOC_TIPTRA`),
  KEY `REINTEGROS` (`DOC_CXPTIP`,`DOC_CODSUC`,`DOC_CXPCOD`,`DOC_CXPDOC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER dpdocpro_after_insert AFTER INSERT ON DPDOCPRO
FOR EACH ROW BEGIN

  DECLARE cIdCalF30 VARCHAR(10);
  DECLARE cIdCalXML VARCHAR(10);
  DECLARE cIdCalPRT VARCHAR(10);

  SET cIdCalF30:=SPACE(10);
  SET cIdCalXML:=SPACE(10);
  SET cIdCalPRT:=SPACE(10);  

  SET cIdCalF30:=(SELECT PLP_NUMREG FROM dpdocproprog WHERE PLP_TIPDOC="F30" AND PLP_FECHA>=NEW.DOC_FCHDEC ORDER BY PLP_FECHA LIMIT 1);
  SET cIdCalXML:=(SELECT PLP_NUMREG FROM dpdocproprog WHERE PLP_TIPDOC="XML" AND PLP_FECHA>=NEW.DOC_FECHA  ORDER BY PLP_FECHA LIMIT 1);
  SET cIdCalPRT:=(SELECT PLP_NUMREG FROM dpdocproprog WHERE PLP_TIPDOC="PRT" AND PLP_FECHA>=NEW.DOC_FCHDEC ORDER BY PLP_FECHA LIMIT 1);

  UPDATE DPTIPDOCPRO SET TDC_TRIGGE=cIdCalF30 WHERE TDC_TIPO="F30";
  UPDATE DPTIPDOCPRO SET TDC_TRIGGE=cIdCalXML WHERE TDC_TIPO="XML";
  UPDATE DPTIPDOCPRO SET TDC_TRIGGE=cIdCalPRT WHERE TDC_TIPO="PRT";

  IF (NEW.DOC_TIPDOC="FAC" OR NEW.DOC_TIPDOC="DEB" OR NEW.DOC_TIPDOC="CRE") AND cIdCalF30<>"" AND NEW.DOC_ACT=1 AND NEW.DOC_TIPTRA="D" THEN

    UPDATE dpdocproprog SET PLP_MTOCAL = PLP_MTOCAL - (NEW.DOC_MTOIVA*NEW.DOC_CXP)    WHERE PLP_CODSUC=NEW.DOC_CODSUC AND PLP_NUMREG=cIdCalF30 AND PLP_TIPDOC="F30";

  END IF;

  IF (NEW.DOC_TIPDOC="RTI" OR NEW.DOC_TIPDOC="RVI") AND cIdCalPRT<>"" AND NEW.DOC_ACT=1 AND NEW.DOC_TIPTRA="D" THEN

    UPDATE dpdocproprog SET PLP_MTOCAL = PLP_MTOCAL - (NEW.DOC_NETO*NEW.DOC_CXP)    WHERE PLP_CODSUC=NEW.DOC_CODSUC AND PLP_NUMREG=cIdCalPRT AND PLP_TIPDOC="PRT";

  END IF;

  IF (NEW.DOC_TIPDOC="RET") AND cIdCalXML<>"" AND NEW.DOC_ACT=1 AND NEW.DOC_TIPTRA="D" THEN

    UPDATE dpdocproprog SET PLP_MTOCAL = PLP_MTOCAL - (NEW.DOC_NETO*NEW.DOC_CXP)    WHERE PLP_CODSUC=NEW.DOC_CODSUC AND PLP_NUMREG=cIdCalXML AND PLP_TIPDOC="XML";

  END IF;


  IF (SELECT COUNT(*) FROM DPPROSLD WHERE SLD_CODIGO = NEW.DOC_CODIGO AND SLD_CODSUC=NEW.DOC_CODSUC)=0 THEN
    INSERT INTO DPPROSLD ( SLD_CODIGO,SLD_CODSUC,SLD_SALDO,SLD_CXPDIV) VALUES (NEW.DOC_CODIGO,NEW.DOC_CODSUC,0,0);
  END IF;

  IF NEW.DOC_CXP<>0 THEN


     UPDATE DPPROSLD SET SLD_SALDO  = SLD_SALDO  + (NEW.DOC_NETO*NEW.DOC_CXP*NEW.DOC_ACT),
                         SLD_CXPDIV = SLD_CXPDIV + (((NEW.DOC_NETO+IF(NEW.DOC_TIPTRA="P",NEW.DOC_MTOCOM,0))/IF(NEW.DOC_VALCAM<=1,0,NEW.DOC_VALCAM))*(NEW.DOC_CXP*NEW.DOC_ACT))
                         WHERE SLD_CODIGO = NEW.DOC_CODIGO AND SLD_CODSUC=NEW.DOC_CODSUC;
 
     UPDATE DPSLDGEN  SET SLD_MONTO  = SLD_MONTO  + (NEW.DOC_NETO*NEW.DOC_CXP*NEW.DOC_ACT),
                          SLD_MTODIV = SLD_MTODIV + (((NEW.DOC_NETO+IF(NEW.DOC_TIPTRA="P",NEW.DOC_MTOCOM,0))/IF(NEW.DOC_VALCAM<=1,0,NEW.DOC_VALCAM))*(NEW.DOC_CXP*NEW.DOC_ACT))
                          WHERE SLD_ID = "CXP";
  END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER dpdocpro_before_update BEFORE UPDATE ON DPDOCPRO
FOR EACH ROW BEGIN

 DECLARE cIdCalF30 VARCHAR(10);
 DECLARE cIdCalXML VARCHAR(10);
 DECLARE cIdCalPRT VARCHAR(10);

 SET cIdCalF30:=SPACE(10);
 SET cIdCalXML:=SPACE(10);
 SET cIdCalPRT:=SPACE(10);  

 SET cIdCalF30:=(SELECT PLP_NUMREG FROM dpdocproprog WHERE PLP_TIPDOC="F30" AND PLP_FECHA>=NEW.DOC_FECHA ORDER BY PLP_FECHA LIMIT 1);

 IF (OLD.DOC_TIPDOC="FAC" OR OLD.DOC_TIPDOC="DEB" OR OLD.DOC_TIPDOC="CRE") AND OLD.DOC_MTOIVA<>NEW.DOC_MTOIVA AND OLD.DOC_TIPTRA="D" THEN

    UPDATE dpdocproprog SET PLP_MTOCAL = PLP_MTOCAL - (OLD.DOC_MTOIVA*OLD.DOC_CXP)    WHERE PLP_CODSUC=NEW.DOC_CODSUC AND PLP_NUMREG=cIdCalF30 AND PLP_TIPDOC="F30";

 END IF;


 IF (SELECT COUNT(*) FROM DPPROSLD WHERE SLD_CODIGO = OLD.DOC_CODIGO AND SLD_CODSUC=OLD.DOC_CODSUC)=0 THEN
    INSERT INTO DPPROSLD ( SLD_CODIGO,SLD_CODSUC,SLD_SALDO,SLD_CXPDIV) VALUES (OLD.DOC_CODIGO,OLD.DOC_CODSUC,0,0);
 END IF;

 IF (SELECT COUNT(*) FROM DPPROSLD WHERE SLD_CODIGO = OLD.DOC_CODIGO AND SLD_CODSUC=OLD.DOC_CODSUC)=0 THEN
    INSERT INTO DPPROSLD ( SLD_CODIGO,SLD_CODSUC,SLD_SALDO,SLD_CXPDIV) VALUES (OLD.DOC_CODIGO,OLD.DOC_CODSUC,0,0);
 END IF;
/*
 IF OLD.DOC_TIPTRA="D" AND OLD.DOC_ACT=1 AND (SELECT TDC_LIBVTA FROM DPTIPDOCSLD WHERE TDC_TIPO = NEW.DOC_TIPDOC)=1 THEN
    UPDATE DPOBJFIN_DIARIO SET OBD_MTOEJE = OBD_MTOEJE - (OLD.DOC_NETO-OLD.DOC_MTOIVA),OBD_MTOCOS = OBD_MTOCOS - NEW.DOC_MTOCOS  WHERE OBD_FECHA=NEW.DOC_FECHA;
 END IF;
*/

/*
 IF OLD.DOC_CXP<>0 OR NEW.DOC_CXP<>0 THEN

    UPDATE DPPROSLD SET SLD_SALDO  = SLD_SALDO - (OLD.DOC_NETO*OLD.DOC_CXP*OLD.DOC_ACT) WHERE SLD_CODIGO = OLD.DOC_CODIGO AND SLD_CODSUC=OLD.DOC_CODSUC;


    UPDATE DPSLDGEN SET SLD_MONTO  = SLD_MONTO  - (OLD.DOC_NETO*OLD.DOC_CXP*OLD.DOC_ACT),
                        SLD_MTODIV = SLD_MTODIV - (((OLD.DOC_NETO+IF(OLD.DOC_TIPTRA="P",OLD.DOC_MTOCOM,0))/IF(OLD.DOC_VALCAM=1,0,OLD.DOC_VALCAM))*OLD.DOC_CXP*OLD.DOC_ACT)
                  WHERE SLD_ID     = "CXP";

 END IF;
*/
 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER dpdocpro_after_update AFTER UPDATE ON DPDOCPRO
FOR EACH ROW BEGIN

  DECLARE cIdCalF30 VARCHAR(10);
  DECLARE cIdCalXML VARCHAR(10);
  DECLARE cIdCalPRT VARCHAR(10);

  SET cIdCalF30:=SPACE(10);
  SET cIdCalXML:=SPACE(10);
  SET cIdCalPRT:=SPACE(10);  

  SET cIdCalF30:=(SELECT PLP_NUMREG FROM dpdocproprog WHERE PLP_TIPDOC="F30" AND PLP_FECHA>=NEW.DOC_FCHDEC ORDER BY PLP_FECHA LIMIT 1);
  SET cIdCalXML:=(SELECT PLP_NUMREG FROM dpdocproprog WHERE PLP_TIPDOC="XML" AND PLP_FECHA>=NEW.DOC_FECHA  ORDER BY PLP_FECHA LIMIT 1);
  SET cIdCalPRT:=(SELECT PLP_NUMREG FROM dpdocproprog WHERE PLP_TIPDOC="PRT" AND PLP_FECHA>=NEW.DOC_FCHDEC ORDER BY PLP_FECHA LIMIT 1);

  UPDATE DPTIPDOCPRO SET TDC_TRIGGE=cIdCalF30 WHERE TDC_TIPO="F30";
  UPDATE DPTIPDOCPRO SET TDC_TRIGGE=cIdCalXML WHERE TDC_TIPO="XML";
  UPDATE DPTIPDOCPRO SET TDC_TRIGGE=cIdCalPRT WHERE TDC_TIPO="PRT";


  IF (NEW.DOC_TIPDOC="FAC" OR NEW.DOC_TIPDOC="DEB" OR NEW.DOC_TIPDOC="CRE") AND OLD.DOC_MTOIVA<>NEW.DOC_MTOIVA AND cIdCalF30<>"" AND NEW.DOC_ACT=1 AND NEW.DOC_TIPTRA="D" THEN

    UPDATE dpdocproprog SET PLP_MTOCAL = PLP_MTOCAL - (NEW.DOC_MTOIVA*NEW.DOC_CXP)    WHERE PLP_CODSUC=NEW.DOC_CODSUC AND PLP_NUMREG=cIdCalF30 AND PLP_TIPDOC="F30";

  END IF;

  IF (NEW.DOC_TIPDOC="RTI" OR NEW.DOC_TIPDOC="RVI") AND cIdCalPRT<>"" AND NEW.DOC_ACT=1 AND NEW.DOC_TIPTRA="D" THEN

    UPDATE dpdocproprog SET PLP_MTOCAL = PLP_MTOCAL - (NEW.DOC_NETO*NEW.DOC_CXP)    WHERE PLP_CODSUC=NEW.DOC_CODSUC AND PLP_NUMREG=cIdCalPRT AND PLP_TIPDOC="PRT";

  END IF;

  IF (NEW.DOC_TIPDOC="RET") AND cIdCalXML<>"" AND NEW.DOC_ACT=1 AND NEW.DOC_TIPTRA="D" THEN

    UPDATE dpdocproprog SET PLP_MTOCAL = PLP_MTOCAL - (NEW.DOC_NETO*NEW.DOC_CXP)    WHERE PLP_CODSUC=NEW.DOC_CODSUC AND PLP_NUMREG=cIdCalXML AND PLP_TIPDOC="XML";

  END IF;




  IF (SELECT COUNT(*) FROM DPPROSLD WHERE SLD_CODIGO = OLD.DOC_CODIGO AND SLD_CODSUC=OLD.DOC_CODSUC)=0 THEN
    INSERT INTO DPPROSLD ( SLD_CODIGO,SLD_CODSUC,SLD_SALDO,SLD_CXPDIV) VALUES (OLD.DOC_CODIGO,OLD.DOC_CODSUC,0,0);
  END IF;

  IF (OLD.DOC_CBTNUM="" AND OLD.DOC_CBTNUM<>NEW.DOC_CBTNUM) AND (SELECT TDC_CONTAB FROM DPTIPDOCPRO WHERE TDC_TIPO = NEW.DOC_TIPDOC)=1 THEN
    UPDATE DPPROSLD SET SLD_DOCCON = SLD_DOCCON-1 WHERE SLD_CODIGO = NEW.DOC_CODIGO AND SLD_CODSUC=NEW.DOC_CODSUC;
  END IF;

/*
  IF NEW.DOC_TIPTRA="D" AND NEW.DOC_ACT=1 AND (SELECT TDC_LIBCOM FROM DPTIPDOCPRO WHERE TDC_TIPO = NEW.DOC_TIPDOC)=1 THEN
    UPDATE DPOBJFIN_DIARIO SET OBD_MTOEJE = OBD_MTOEJE + NEW.DOC_NETO  -NEW.DOC_MTOIVA WHERE OBD_FECHA=NEW.DOC_FECHA AND OBD_CODIGO LIKE "%Venta%";
    UPDATE DPOBJFIN_DIARIO SET OBD_MTOEJE = OBD_MTOEJE + NEW.DOC_MTOCOS                WHERE OBD_FECHA=NEW.DOC_FECHA AND OBD_CODIGO="Costo";
  END IF;
*/

  IF OLD.DOC_CXP<>0 OR NEW.DOC_CXP<>0 THEN

     UPDATE DPPROSLD SET SLD_SALDO  = SLD_SALDO  - (OLD.DOC_NETO*OLD.DOC_CXP*OLD.DOC_ACT),
                         SLD_CXPDIV = SLD_CXPDIV - (((OLD.DOC_NETO+IF(OLD.DOC_TIPTRA="P",OLD.DOC_MTOCOM,0))/IF(OLD.DOC_VALCAM<=1,0,OLD.DOC_VALCAM))*(OLD.DOC_CXP*OLD.DOC_ACT))
                         WHERE SLD_CODIGO = OLD.DOC_CODIGO AND SLD_CODSUC=OLD.DOC_CODSUC;
 
     UPDATE DPPROSLD SET SLD_SALDO  = SLD_SALDO  + (NEW.DOC_NETO*NEW.DOC_CXP*NEW.DOC_ACT),
                         SLD_CXPDIV = SLD_CXPDIV + (((NEW.DOC_NETO+IF(NEW.DOC_TIPTRA="P",NEW.DOC_MTOCOM,0))/IF(NEW.DOC_VALCAM<=1,0,NEW.DOC_VALCAM))*(NEW.DOC_CXP*NEW.DOC_ACT))
                         WHERE SLD_CODIGO = NEW.DOC_CODIGO AND SLD_CODSUC=NEW.DOC_CODSUC;
 
     UPDATE DPSLDGEN  SET SLD_MONTO  = SLD_MONTO  + (NEW.DOC_NETO*NEW.DOC_CXP*NEW.DOC_ACT),
                          SLD_MTODIV = SLD_MTODIV + (((NEW.DOC_NETO+IF(NEW.DOC_TIPTRA="P",NEW.DOC_MTOCOM,0))/IF(NEW.DOC_VALCAM<=1,0,NEW.DOC_VALCAM))*(NEW.DOC_CXP*NEW.DOC_ACT))
                          WHERE SLD_ID = "CXP";
  END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `dpdocpro_his`
--

DROP TABLE IF EXISTS `dpdocpro_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocpro_his` (
  `DOC_ACT` decimal(2,0) DEFAULT NULL,
  `DOC_ANUFIS` decimal(1,0) DEFAULT NULL,
  `DOC_ASODOC` char(20) DEFAULT NULL,
  `DOC_BASNET` decimal(17,2) DEFAULT NULL,
  `DOC_CANIMP` decimal(2,0) DEFAULT NULL,
  `DOC_CBTNUM` char(8) DEFAULT NULL,
  `DOC_CBTPRE` char(10) DEFAULT NULL,
  `DOC_CENCOS` char(8) DEFAULT NULL,
  `DOC_CODDEP` char(12) DEFAULT NULL,
  `DOC_CODIGO` char(10) DEFAULT NULL,
  `DOC_CODMON` char(3) DEFAULT NULL,
  `DOC_CODRMU` char(8) DEFAULT NULL,
  `DOC_CODSUC` char(6) DEFAULT NULL,
  `DOC_CODTRA` char(6) DEFAULT NULL,
  `DOC_CONDIC` char(35) DEFAULT NULL,
  `DOC_CREFIS` decimal(1,0) DEFAULT NULL,
  `DOC_CREPAG` decimal(1,0) DEFAULT NULL,
  `DOC_CXP` decimal(18,0) DEFAULT NULL,
  `DOC_CXPCOD` char(10) DEFAULT NULL,
  `DOC_CXPDOC` char(20) DEFAULT NULL,
  `DOC_CXPTIP` char(3) DEFAULT NULL,
  `DOC_DCTO` decimal(6,2) DEFAULT NULL,
  `DOC_DESCCO` char(30) DEFAULT NULL,
  `DOC_DOCORG` char(1) DEFAULT NULL,
  `DOC_ESTADO` char(2) DEFAULT NULL,
  `DOC_ESTORG` char(20) DEFAULT NULL,
  `DOC_EXPIMP` char(10) DEFAULT NULL,
  `DOC_FACAFE` char(20) DEFAULT NULL,
  `DOC_FAVORI` decimal(1,0) DEFAULT NULL,
  `DOC_FCHDEC` date DEFAULT NULL,
  `DOC_FCHVEN` date DEFAULT NULL,
  `DOC_FECHA` date DEFAULT NULL,
  `DOC_FILMAI` decimal(7,0) DEFAULT NULL,
  `DOC_HORA` char(8) DEFAULT NULL,
  `DOC_IMPOTR` decimal(17,2) DEFAULT NULL,
  `DOC_IVABAS` decimal(14,2) DEFAULT NULL,
  `DOC_IVAREB` decimal(2,0) DEFAULT NULL,
  `DOC_LBCPAR` char(6) DEFAULT NULL,
  `DOC_LIBCOM` char(4) DEFAULT NULL,
  `DOC_MONNAC` char(3) DEFAULT NULL,
  `DOC_MTOCOM` decimal(17,2) DEFAULT NULL,
  `DOC_MTOCOS` decimal(17,2) DEFAULT NULL,
  `DOC_MTODIV` decimal(17,2) DEFAULT NULL,
  `DOC_MTOEXE` decimal(17,2) DEFAULT NULL,
  `DOC_MTOIVA` decimal(17,2) DEFAULT NULL,
  `DOC_NETO` decimal(17,2) DEFAULT NULL,
  `DOC_NODEDU` decimal(1,0) DEFAULT NULL,
  `DOC_NUMERO` char(20) DEFAULT NULL,
  `DOC_NUMFIS` char(20) DEFAULT NULL,
  `DOC_NUMIMG` decimal(8,0) DEFAULT NULL,
  `DOC_NUMMEM` decimal(8,0) DEFAULT NULL,
  `DOC_NUMPAR` char(5) DEFAULT NULL,
  `DOC_ORIGEN` char(1) DEFAULT NULL,
  `DOC_OTROS` decimal(17,2) DEFAULT NULL,
  `DOC_PAGNUM` char(8) DEFAULT NULL,
  `DOC_PLAIMP` char(10) DEFAULT NULL,
  `DOC_PLAZO` decimal(18,0) DEFAULT NULL,
  `DOC_PPLREG` char(10) DEFAULT NULL,
  `DOC_RECARG` decimal(6,2) DEFAULT NULL,
  `DOC_REGAUD` decimal(8,0) DEFAULT NULL,
  `DOC_RIF` char(12) DEFAULT NULL,
  `DOC_TIPAFE` char(3) DEFAULT NULL,
  `DOC_TIPDOC` char(3) DEFAULT NULL,
  `DOC_TIPORG` char(3) DEFAULT NULL,
  `DOC_TIPPAG` char(1) DEFAULT NULL,
  `DOC_TIPTRA` char(1) DEFAULT NULL,
  `DOC_USUARI` char(3) DEFAULT NULL,
  `DOC_VALCAM` decimal(15,4) DEFAULT NULL,
  `DOC_BASTER` decimal(18,0) DEFAULT NULL,
  `DOC_EXETER` decimal(18,0) DEFAULT NULL,
  `DOC_FCHPAG` date DEFAULT NULL,
  `DOC_HASOLD` char(64) DEFAULT NULL,
  `DOC_IVATER` decimal(18,0) DEFAULT NULL,
  `DOC_NETTER` decimal(18,0) DEFAULT NULL,
  KEY `DPDOCPRO_HIS_6` (`DOC_CODIGO`),
  KEY `DPDOCPRO_HIS_2` (`DOC_CODSUC`),
  KEY `DPDOCPRO_HIS_4` (`DOC_CODSUC`,`DOC_TIPDOC`,`DOC_CODIGO`,`DOC_NUMERO`,`DOC_TIPTRA`),
  KEY `DPDOCPRO_HIS_8` (`DOC_TIPDOC`),
  KEY `DPDOCPRO_HIS1` (`DOC_CODSUC`,`DOC_TIPDOC`,`DOC_CODIGO`,`DOC_NUMERO`,`DOC_TIPTRA`),
  KEY `DPDOCPRO_HIS2` (`DOC_CODIGO`),
  KEY `DPDOCPRO_HIS3` (`DOC_CODSUC`),
  KEY `DPDOCPRO_HIS4` (`DOC_TIPDOC`),
  KEY `DPMEMO` (`DOC_NUMMEM`),
  CONSTRAINT `DPPROVEEDOR_DPDOCPRO_HIS` FOREIGN KEY (`DOC_CODIGO`) REFERENCES `dpproveedor` (`PRO_CODIGO`) ON UPDATE CASCADE,
  CONSTRAINT `DPSUCURSAL_DPDOCPRO_HIS` FOREIGN KEY (`DOC_CODSUC`) REFERENCES `dpsucursal` (`SUC_CODIGO`) ON UPDATE CASCADE,
  CONSTRAINT `DPTIPDOCPRO_DPDOCPRO_HIS` FOREIGN KEY (`DOC_TIPDOC`) REFERENCES `dptipdocpro` (`TDC_TIPO`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocproaut`
--

DROP TABLE IF EXISTS `dpdocproaut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocproaut` (
  `AUP_ACTIVO` decimal(1,0) DEFAULT NULL,
  `AUP_APLICA` decimal(1,0) DEFAULT NULL,
  `AUP_CODPRO` char(10) DEFAULT NULL,
  `AUP_CODSUC` char(8) DEFAULT NULL,
  `AUP_FECHA` date DEFAULT NULL,
  `AUP_ITEM` char(5) DEFAULT NULL,
  `AUP_MONTO` decimal(14,2) DEFAULT NULL,
  `AUP_NUMERO` char(10) DEFAULT NULL,
  `AUP_TIPDOC` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocprocta`
--

DROP TABLE IF EXISTS `dpdocprocta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocprocta` (
  `CCD_ACT` decimal(1,0) DEFAULT NULL,
  `CCD_APLRTI` decimal(1,0) DEFAULT NULL,
  `CCD_ASODOC` char(20) DEFAULT NULL,
  `CCD_ASOTIP` char(3) DEFAULT NULL,
  `CCD_CANTID` decimal(14,2) DEFAULT NULL,
  `CCD_CENCOS` char(8) DEFAULT NULL,
  `CCD_CODCAJ` char(8) DEFAULT NULL,
  `CCD_CODCON` char(4) DEFAULT NULL,
  `CCD_CODCTA` char(20) DEFAULT NULL,
  `CCD_CODIGO` char(10) DEFAULT NULL,
  `CCD_CODINT` char(10) DEFAULT NULL,
  `CCD_CODPRO` char(10) DEFAULT NULL,
  `CCD_CODPRY` char(8) DEFAULT NULL,
  `CCD_CODSUC` char(6) DEFAULT NULL,
  `CCD_CONRET` char(3) DEFAULT NULL,
  `CCD_CTAEGR` char(20) DEFAULT NULL,
  `CCD_CTAMOD` char(6) DEFAULT NULL,
  `CCD_DESCRI` char(130) DEFAULT NULL,
  `CCD_DOCREF` char(12) DEFAULT NULL,
  `CCD_DOCTIP` char(3) DEFAULT NULL,
  `CCD_EXPORT` decimal(14,2) DEFAULT NULL,
  `CCD_FACTUR` char(20) DEFAULT NULL,
  `CCD_FCHCOM` date DEFAULT NULL,
  `CCD_FCHDEC` date DEFAULT NULL,
  `CCD_FCHNUM` char(5) DEFAULT NULL,
  `CCD_FCHREQ` date DEFAULT NULL,
  `CCD_FECHA` date DEFAULT NULL,
  `CCD_GRUATV` char(8) DEFAULT NULL,
  `CCD_IMPORT` decimal(14,2) DEFAULT NULL,
  `CCD_INSCAJ` char(4) DEFAULT NULL,
  `CCD_ITEM` char(5) DEFAULT NULL,
  `CCD_ITEM_A` char(4) DEFAULT NULL,
  `CCD_IVAREB` decimal(14,2) DEFAULT NULL,
  `CCD_LBCPAR` char(6) DEFAULT NULL,
  `CCD_LIBCOM` decimal(1,0) DEFAULT NULL,
  `CCD_MONTO` decimal(19,2) DEFAULT NULL,
  `CCD_NUMERO` char(20) DEFAULT NULL,
  `CCD_NUMFIS` char(20) DEFAULT NULL,
  `CCD_NUMMEM` decimal(7,0) DEFAULT NULL,
  `CCD_PORIVA` decimal(19,2) DEFAULT NULL,
  `CCD_PORRTI` decimal(3,0) DEFAULT NULL,
  `CCD_RECNUM` char(7) DEFAULT NULL,
  `CCD_REFERE` char(20) DEFAULT NULL,
  `CCD_RESIDE` char(1) DEFAULT NULL,
  `CCD_RIF` char(15) DEFAULT NULL,
  `CCD_TIPCTA` char(1) DEFAULT NULL,
  `CCD_TIPDOC` char(3) DEFAULT NULL,
  `CCD_TIPIVA` char(2) DEFAULT NULL,
  `CCD_TIPPER` char(1) DEFAULT NULL,
  `CCD_TIPTRA` char(1) DEFAULT NULL,
  `CCD_TOTAL` decimal(14,2) DEFAULT NULL,
  `CCD_TOTDIV` decimal(19,2) DEFAULT NULL,
  `CCD_UNDMED` char(8) DEFAULT NULL,
  KEY `DPDOCPROCTA_2` (`CCD_CENCOS`),
  KEY `REINTEGROS` (`CCD_CODSUC`,`CCD_DOCTIP`,`CCD_CODPRO`,`CCD_FACTUR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocprocta_cta`
--

DROP TABLE IF EXISTS `dpdocprocta_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocprocta_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocprocta_his`
--

DROP TABLE IF EXISTS `dpdocprocta_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocprocta_his` (
  `CCD_ACT` decimal(1,0) DEFAULT NULL,
  `CCD_APLRTI` decimal(1,0) DEFAULT NULL,
  `CCD_ASODOC` char(20) DEFAULT NULL,
  `CCD_ASOTIP` char(3) DEFAULT NULL,
  `CCD_CANTID` decimal(14,0) DEFAULT NULL,
  `CCD_CENCOS` char(8) DEFAULT NULL,
  `CCD_CODCAJ` char(8) DEFAULT NULL,
  `CCD_CODCON` char(4) DEFAULT NULL,
  `CCD_CODCTA` char(20) DEFAULT NULL,
  `CCD_CODIGO` char(10) DEFAULT NULL,
  `CCD_CODINT` char(10) DEFAULT NULL,
  `CCD_CODPRO` char(10) DEFAULT NULL,
  `CCD_CODPRY` char(8) DEFAULT NULL,
  `CCD_CODSUC` char(6) DEFAULT NULL,
  `CCD_CONRET` char(3) DEFAULT NULL,
  `CCD_CTAEGR` char(20) DEFAULT NULL,
  `CCD_CTAMOD` char(6) DEFAULT NULL,
  `CCD_DESCRI` char(130) DEFAULT NULL,
  `CCD_DOCREF` char(12) DEFAULT NULL,
  `CCD_DOCTIP` char(3) DEFAULT NULL,
  `CCD_EXPORT` decimal(14,0) DEFAULT NULL,
  `CCD_FACTUR` char(20) DEFAULT NULL,
  `CCD_FCHCOM` date DEFAULT NULL,
  `CCD_FCHDEC` date DEFAULT NULL,
  `CCD_FCHNUM` char(5) DEFAULT NULL,
  `CCD_FCHREQ` date DEFAULT NULL,
  `CCD_FECHA` date DEFAULT NULL,
  `CCD_GRUATV` char(8) DEFAULT NULL,
  `CCD_IMPORT` decimal(14,0) DEFAULT NULL,
  `CCD_INSCAJ` char(4) DEFAULT NULL,
  `CCD_ITEM` char(5) DEFAULT NULL,
  `CCD_ITEM_A` char(4) DEFAULT NULL,
  `CCD_IVAREB` decimal(14,2) DEFAULT NULL,
  `CCD_LBCPAR` char(6) DEFAULT NULL,
  `CCD_LIBCOM` decimal(1,0) DEFAULT NULL,
  `CCD_MONTO` decimal(19,2) DEFAULT NULL,
  `CCD_NUMERO` char(20) DEFAULT NULL,
  `CCD_NUMFIS` char(20) DEFAULT NULL,
  `CCD_NUMMEM` decimal(7,0) DEFAULT NULL,
  `CCD_PORIVA` decimal(19,2) DEFAULT NULL,
  `CCD_PORRTI` decimal(3,0) DEFAULT NULL,
  `CCD_RECNUM` char(7) DEFAULT NULL,
  `CCD_REFERE` char(20) DEFAULT NULL,
  `CCD_RESIDE` char(1) DEFAULT NULL,
  `CCD_RIF` char(15) DEFAULT NULL,
  `CCD_TIPCTA` char(1) DEFAULT NULL,
  `CCD_TIPDOC` char(3) DEFAULT NULL,
  `CCD_TIPIVA` char(2) DEFAULT NULL,
  `CCD_TIPPER` char(1) DEFAULT NULL,
  `CCD_TIPTRA` char(1) DEFAULT NULL,
  `CCD_TOTAL` decimal(14,2) DEFAULT NULL,
  `CCD_TOTDIV` decimal(19,0) DEFAULT NULL,
  `CCD_UNDMED` char(8) DEFAULT NULL,
  KEY `DPDOCPROCTA_HIS_2` (`CCD_CENCOS`),
  KEY `DPDOCPROCTA_HIS_4` (`CCD_CTAEGR`),
  KEY `DPDOCPROCTA_HIS_6` (`CCD_CODSUC`,`CCD_TIPDOC`,`CCD_CODIGO`,`CCD_NUMERO`,`CCD_TIPTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocprocta_his_cta`
--

DROP TABLE IF EXISTS `dpdocprocta_his_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocprocta_his_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPDOCPROCTA_HIS_CTA_` (`CIC_CTAMOD`,`CIC_CUENTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocprodir`
--

DROP TABLE IF EXISTS `dpdocprodir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocprodir` (
  `DIR_CODIGO` char(10) DEFAULT NULL,
  `DIR_CODSUC` char(6) DEFAULT NULL,
  `DIR_COMEN1` char(40) DEFAULT NULL,
  `DIR_COMEN2` char(40) DEFAULT NULL,
  `DIR_DIR1` char(50) DEFAULT NULL,
  `DIR_DIR2` char(50) DEFAULT NULL,
  `DIR_DIR3` char(50) DEFAULT NULL,
  `DIR_DIRIGI` char(40) DEFAULT NULL,
  `DIR_FCHORD` date DEFAULT NULL,
  `DIR_NUMDOC` char(20) DEFAULT NULL,
  `DIR_ORDCOM` char(20) DEFAULT NULL,
  `DIR_PERSON` char(30) DEFAULT NULL,
  `DIR_TELEFO` char(12) DEFAULT NULL,
  `DIR_TIPDOC` char(3) DEFAULT NULL,
  `DIR_TIPTRA` char(1) DEFAULT NULL,
  KEY `DPDOCPRODIR_2` (`DIR_CODSUC`,`DIR_TIPDOC`,`DIR_CODIGO`,`DIR_NUMDOC`,`DIR_TIPTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocprogasto`
--

DROP TABLE IF EXISTS `dpdocprogasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocprogasto` (
  `DCG_CODALM` char(3) DEFAULT NULL,
  `DCG_CODGAS` char(25) DEFAULT NULL,
  `DCG_CODIGO` char(10) DEFAULT NULL,
  `DCG_CODMON` char(3) DEFAULT NULL,
  `DCG_CODSUC` char(6) DEFAULT NULL,
  `DCG_COMENT` char(30) DEFAULT NULL,
  `DCG_FECHA` date DEFAULT NULL,
  `DCG_HORA` char(8) DEFAULT NULL,
  `DCG_METODO` char(1) DEFAULT NULL,
  `DCG_MONTO` decimal(16,2) DEFAULT NULL,
  `DCG_MTODIV` decimal(12,0) DEFAULT NULL,
  `DCG_NUMERO` char(20) DEFAULT NULL,
  `DCG_TIPDOC` char(3) DEFAULT NULL,
  `DCG_TIPTRA` char(1) DEFAULT NULL,
  `DCG_VALDIV` decimal(12,3) DEFAULT NULL,
  KEY `DPDOCPROGASTO_2` (`DCG_CODSUC`,`DCG_TIPDOC`,`DCG_CODIGO`,`DCG_NUMERO`,`DCG_TIPTRA`),
  KEY `DPDOCPROGASTO_4` (`DCG_CODGAS`),
  KEY `DPDOCPROGASTO_6` (`DCG_CODMON`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocprogasxinv`
--

DROP TABLE IF EXISTS `dpdocprogasxinv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocprogasxinv` (
  `DXI_CODALM` char(3) DEFAULT NULL,
  `DXI_CODGAS` char(25) DEFAULT NULL,
  `DXI_CODIGO` char(10) DEFAULT NULL,
  `DXI_CODSUC` char(6) DEFAULT NULL,
  `DXI_ITEM` char(5) DEFAULT NULL,
  `DXI_METODO` char(1) DEFAULT NULL,
  `DXI_MONTO` decimal(14,2) DEFAULT NULL,
  `DXI_NUMERO` char(10) DEFAULT NULL,
  `DXI_PORCEN` decimal(6,2) DEFAULT NULL,
  `DXI_TIPDOC` char(3) DEFAULT NULL,
  `DXI_TIPTRA` char(1) DEFAULT NULL,
  `MOV_CODMON` char(3) DEFAULT NULL,
  KEY `DPDOCPROGASXINV_2` (`DXI_CODSUC`,`DXI_TIPDOC`,`DXI_CODIGO`,`DXI_NUMERO`,`DXI_TIPTRA`),
  KEY `DPDOCPROGASXINV_4` (`DXI_CODSUC`,`DXI_CODALM`,`DXI_TIPDOC`,`DXI_CODIGO`,`DXI_NUMERO`,`DXI_ITEM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocproislr`
--

DROP TABLE IF EXISTS `dpdocproislr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocproislr` (
  `RXP_APLORG` char(6) DEFAULT NULL,
  `RXP_CODCON` char(3) DEFAULT NULL,
  `RXP_CODEQI` char(3) DEFAULT NULL,
  `RXP_CODIGO` char(10) DEFAULT NULL,
  `RXP_CODMON` char(3) DEFAULT NULL,
  `RXP_CODSUC` char(6) DEFAULT NULL,
  `RXP_DESCRI` char(200) DEFAULT NULL,
  `RXP_DOCNUM` char(20) DEFAULT NULL,
  `RXP_DOCTIP` char(3) DEFAULT NULL,
  `RXP_FCHDEC` date DEFAULT NULL,
  `RXP_FECHA` date DEFAULT NULL,
  `RXP_INTEGR` char(1) DEFAULT NULL,
  `RXP_MTOBAS` decimal(19,2) DEFAULT NULL,
  `RXP_MTODED` decimal(19,2) DEFAULT NULL,
  `RXP_MTORET` decimal(19,2) DEFAULT NULL,
  `RXP_MTOSUJ` decimal(19,2) DEFAULT NULL,
  `RXP_NUMDOC` char(20) DEFAULT NULL,
  `RXP_PORCEN` decimal(6,2) DEFAULT NULL,
  `RXP_TIPDOC` char(3) DEFAULT NULL,
  `RXP_TIPTRA` char(1) DEFAULT NULL,
  KEY `DPDOCPROISLR_2` (`RXP_CODSUC`,`RXP_DOCTIP`,`RXP_CODIGO`,`RXP_DOCNUM`,`RXP_TIPTRA`),
  KEY `DPDOCPROISLR_4` (`RXP_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocproislr_his`
--

DROP TABLE IF EXISTS `dpdocproislr_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocproislr_his` (
  `RXP_APLORG` char(6) DEFAULT NULL,
  `RXP_CODCON` char(3) DEFAULT NULL,
  `RXP_CODEQI` char(3) DEFAULT NULL,
  `RXP_CODIGO` char(10) DEFAULT NULL,
  `RXP_CODMON` char(3) DEFAULT NULL,
  `RXP_CODSUC` char(6) DEFAULT NULL,
  `RXP_DESCRI` char(200) DEFAULT NULL,
  `RXP_DOCNUM` char(20) DEFAULT NULL,
  `RXP_DOCTIP` char(3) DEFAULT NULL,
  `RXP_FCHDEC` date DEFAULT NULL,
  `RXP_FECHA` date DEFAULT NULL,
  `RXP_INTEGR` char(1) DEFAULT NULL,
  `RXP_MTOBAS` decimal(19,2) DEFAULT NULL,
  `RXP_MTODED` decimal(19,2) DEFAULT NULL,
  `RXP_MTORET` decimal(19,2) DEFAULT NULL,
  `RXP_MTOSUJ` decimal(19,2) DEFAULT NULL,
  `RXP_NUMDOC` char(20) DEFAULT NULL,
  `RXP_PORCEN` decimal(6,2) DEFAULT NULL,
  `RXP_TIPDOC` char(3) DEFAULT NULL,
  `RXP_TIPTRA` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocproiva`
--

DROP TABLE IF EXISTS `dpdocproiva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocproiva` (
  `IXD_CODIGO` char(10) DEFAULT NULL,
  `IXD_CODSUC` char(6) DEFAULT NULL,
  `IXD_IVA` decimal(19,2) DEFAULT NULL,
  `IXD_MTOBAS` decimal(19,2) DEFAULT NULL,
  `IXD_MTOIVA` decimal(19,2) DEFAULT NULL,
  `IXD_NUMERO` char(20) DEFAULT NULL,
  `IXD_TIPDOC` char(3) DEFAULT NULL,
  `IXD_TIPIVA` char(2) DEFAULT NULL,
  `IXD_TIPTRA` char(1) DEFAULT NULL,
  KEY `DPDOCPROIVA_2` (`IXD_CODSUC`,`IXD_TIPDOC`,`IXD_CODIGO`,`IXD_NUMERO`,`IXD_TIPTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocproprog`
--

DROP TABLE IF EXISTS `dpdocproprog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocproprog` (
  `PLP_ACTIVO` decimal(1,0) DEFAULT NULL,
  `PLP_ANO` char(4) DEFAULT NULL,
  `PLP_CODIGO` char(10) DEFAULT NULL,
  `PLP_CODMON` char(3) DEFAULT NULL,
  `PLP_CODSUC` char(6) DEFAULT NULL,
  `PLP_CODUSU` char(3) DEFAULT NULL,
  `PLP_DESCRI` char(120) DEFAULT NULL,
  `PLP_DESDE` date DEFAULT NULL,
  `PLP_EDITAD` decimal(1,0) DEFAULT NULL,
  `PLP_ESTADO` char(1) DEFAULT NULL,
  `PLP_FCHDEC` date DEFAULT NULL,
  `PLP_FCHPAG` date DEFAULT NULL,
  `PLP_FECHA` date DEFAULT NULL,
  `PLP_HASTA` date DEFAULT NULL,
  `PLP_MONTO` decimal(19,2) DEFAULT NULL,
  `PLP_MTOCAL` decimal(19,2) DEFAULT NULL,
  `PLP_MTODIV` decimal(19,2) DEFAULT NULL,
  `PLP_MTOIVA` decimal(19,2) DEFAULT NULL,
  `PLP_NUMDOC` char(20) DEFAULT NULL,
  `PLP_NUMERO` char(8) DEFAULT NULL,
  `PLP_NUMMEM` decimal(7,0) DEFAULT NULL,
  `PLP_NUMREG` char(10) DEFAULT NULL,
  `PLP_REFERE` char(40) DEFAULT NULL,
  `PLP_TIPDOC` char(3) DEFAULT NULL,
  `PLP_TIPTRA` char(1) DEFAULT NULL,
  `PLP_TOTDIV` decimal(19,2) DEFAULT NULL,
  `PLP_VALCAM` decimal(19,6) DEFAULT NULL,
  KEY `DPDOCPROPROG1` (`PLP_TIPDOC`,`PLP_CODSUC`,`PLP_FECHA`),
  KEY `DPDOCPROPROG2` (`PLP_FECHA`),
  KEY `DPDOCPROPROG4` (`PLP_CODSUC`,`PLP_CODIGO`,`PLP_TIPDOC`,`PLP_NUMERO`,`PLP_REFERE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocprorti`
--

DROP TABLE IF EXISTS `dpdocprorti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocprorti` (
  `RTI_AAMM` char(4) DEFAULT NULL,
  `RTI_APLORG` char(6) DEFAULT NULL,
  `RTI_CODIGO` char(10) DEFAULT NULL,
  `RTI_CODMON` char(3) DEFAULT NULL,
  `RTI_CODSUC` char(6) DEFAULT NULL,
  `RTI_CONTAB` char(1) DEFAULT NULL,
  `RTI_COPY` char(10) DEFAULT NULL,
  `RTI_DOCNUM` char(20) DEFAULT NULL,
  `RTI_DOCTIP` char(3) DEFAULT NULL,
  `RTI_FCHDEC` date DEFAULT NULL,
  `RTI_FECHA` date DEFAULT NULL,
  `RTI_IMPRES` decimal(1,0) DEFAULT NULL,
  `RTI_LIBCOM` char(5) DEFAULT NULL,
  `RTI_NUMCRR` char(8) DEFAULT NULL,
  `RTI_NUMERO` char(20) DEFAULT NULL,
  `RTI_NUMMRT` char(8) DEFAULT NULL,
  `RTI_NUMRET` char(8) DEFAULT NULL,
  `RTI_NUMTRA` char(8) DEFAULT NULL,
  `RTI_PORCEN` decimal(19,2) DEFAULT NULL,
  `RTI_PORIVA` decimal(6,2) DEFAULT NULL,
  `RTI_TIPDOC` char(3) DEFAULT NULL,
  `RTI_TIPTRA` char(1) DEFAULT NULL,
  KEY `DPDOCPRORTI1` (`RTI_CODSUC`,`RTI_LIBCOM`),
  KEY `DPDOCPRORTI3` (`RTI_CODSUC`,`RTI_DOCTIP`,`RTI_CODIGO`,`RTI_DOCNUM`,`RTI_TIPTRA`),
  KEY `DPDOCPRORTI5` (`RTI_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocprorti_his`
--

DROP TABLE IF EXISTS `dpdocprorti_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocprorti_his` (
  `RTI_AAMM` char(4) DEFAULT NULL,
  `RTI_APLORG` char(6) DEFAULT NULL,
  `RTI_CODIGO` char(10) DEFAULT NULL,
  `RTI_CODMON` char(3) DEFAULT NULL,
  `RTI_CODSUC` char(6) DEFAULT NULL,
  `RTI_CONTAB` char(1) DEFAULT NULL,
  `RTI_COPY` char(10) DEFAULT NULL,
  `RTI_DOCNUM` char(20) DEFAULT NULL,
  `RTI_DOCTIP` char(3) DEFAULT NULL,
  `RTI_FCHDEC` date DEFAULT NULL,
  `RTI_FECHA` date DEFAULT NULL,
  `RTI_IMPRES` decimal(1,0) DEFAULT NULL,
  `RTI_LIBCOM` char(5) DEFAULT NULL,
  `RTI_NUMCRR` char(8) DEFAULT NULL,
  `RTI_NUMERO` char(20) DEFAULT NULL,
  `RTI_NUMMRT` char(8) DEFAULT NULL,
  `RTI_NUMRET` char(8) DEFAULT NULL,
  `RTI_NUMTRA` char(8) DEFAULT NULL,
  `RTI_PORCEN` decimal(19,2) DEFAULT NULL,
  `RTI_PORIVA` decimal(6,2) DEFAULT NULL,
  `RTI_TIPDOC` char(3) DEFAULT NULL,
  `RTI_TIPTRA` char(1) DEFAULT NULL,
  KEY `DPDOCPRORTI_HIS_2` (`RTI_CODSUC`,`RTI_DOCTIP`,`RTI_CODIGO`,`RTI_DOCNUM`,`RTI_TIPTRA`),
  KEY `DPDOCPRORTI_HIS_4` (`RTI_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocreq`
--

DROP TABLE IF EXISTS `dpdocreq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocreq` (
  `DOR_ACT` decimal(2,0) DEFAULT NULL,
  `DOR_CENCOS` char(8) DEFAULT NULL,
  `DOR_CODCIE` char(3) DEFAULT NULL,
  `DOR_CODCOM` char(15) DEFAULT NULL,
  `DOR_CODDIV` char(6) DEFAULT NULL,
  `DOR_CODGER` char(6) DEFAULT NULL,
  `DOR_CODINV` char(15) DEFAULT NULL,
  `DOR_CODPER` char(6) DEFAULT NULL,
  `DOR_CODSUC` char(6) DEFAULT NULL,
  `DOR_CODUCE` char(2) DEFAULT NULL,
  `DOR_CODUN1` char(3) DEFAULT NULL,
  `DOR_CODUN2` char(3) DEFAULT NULL,
  `DOR_CODUN4` char(3) DEFAULT NULL,
  `DOR_COMEN1` char(35) DEFAULT NULL,
  `DOR_COMEN2` char(35) DEFAULT NULL,
  `DOR_CONTAB` char(1) DEFAULT NULL,
  `DOR_CONTAC` char(30) DEFAULT NULL,
  `DOR_EMPRES` char(20) DEFAULT NULL,
  `DOR_ESTADO` char(2) DEFAULT NULL,
  `DOR_FCHAN1` date DEFAULT NULL,
  `DOR_FCHAN2` date DEFAULT NULL,
  `DOR_FCHAN4` date DEFAULT NULL,
  `DOR_FCHCER` date DEFAULT NULL,
  `DOR_FCHCIE` date DEFAULT NULL,
  `DOR_FCHREQ` date DEFAULT NULL,
  `DOR_FCHVIS` date DEFAULT NULL,
  `DOR_FECHA` date DEFAULT NULL,
  `DOR_FILMAI` decimal(6,0) DEFAULT NULL,
  `DOR_HORA` char(8) DEFAULT NULL,
  `DOR_MEMO` longtext,
  `DOR_NUMCBT` char(8) DEFAULT NULL,
  `DOR_NUMDOC` char(8) DEFAULT NULL,
  `DOR_NUMERO` char(10) DEFAULT NULL,
  `DOR_NUMMEM` decimal(6,0) DEFAULT NULL,
  `DOR_SWCHIT` decimal(1,0) DEFAULT NULL,
  `DOR_TIPDES` char(250) DEFAULT NULL,
  `DOR_TIPDOC` char(3) DEFAULT NULL,
  `DOR_TIPREQ` char(1) DEFAULT NULL,
  `DOR_USUARI` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocreqcta`
--

DROP TABLE IF EXISTS `dpdocreqcta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocreqcta` (
  `CRQ_ACT` decimal(19,0) DEFAULT NULL,
  `CRQ_ASODOC` char(10) DEFAULT NULL,
  `CRQ_ASOTIP` char(3) DEFAULT NULL,
  `CRQ_AUX` char(8) DEFAULT NULL,
  `CRQ_CANTID` decimal(12,2) DEFAULT NULL,
  `CRQ_CENCOS` char(8) DEFAULT NULL,
  `CRQ_CODAUX` char(10) DEFAULT NULL,
  `CRQ_CODCAJ` char(8) DEFAULT NULL,
  `CRQ_CODCTA` char(20) DEFAULT NULL,
  `CRQ_CODIGO` char(10) DEFAULT NULL,
  `CRQ_CODSUC` char(6) DEFAULT NULL,
  `CRQ_CTAEGR` char(20) DEFAULT NULL,
  `CRQ_DESCRI` char(250) DEFAULT NULL,
  `CRQ_DOCREF` char(12) DEFAULT NULL,
  `CRQ_DOCTIP` char(3) DEFAULT NULL,
  `CRQ_EXPDOC` decimal(19,2) DEFAULT NULL,
  `CRQ_EXPORT` decimal(12,3) DEFAULT NULL,
  `CRQ_FACTUR` char(10) DEFAULT NULL,
  `CRQ_FCHDEC` date DEFAULT NULL,
  `CRQ_FECHA` date DEFAULT NULL,
  `CRQ_FRECIB` date DEFAULT NULL,
  `CRQ_IMPORT` decimal(12,3) DEFAULT NULL,
  `CRQ_INSCAJ` char(4) DEFAULT NULL,
  `CRQ_ITEM` char(4) DEFAULT NULL,
  `CRQ_ITEM_A` char(4) DEFAULT NULL,
  `CRQ_LIBCOM` decimal(1,0) DEFAULT NULL,
  `CRQ_MONTO` decimal(19,2) DEFAULT NULL,
  `CRQ_NUMERO` char(10) DEFAULT NULL,
  `CRQ_NUMFIS` char(10) DEFAULT NULL,
  `CRQ_NUMMEM` decimal(7,0) DEFAULT NULL,
  `CRQ_PORIVA` decimal(19,2) DEFAULT NULL,
  `CRQ_PRECIB` char(30) DEFAULT NULL,
  `CRQ_PROYEC` char(8) DEFAULT NULL,
  `CRQ_REFERE` char(20) DEFAULT NULL,
  `CRQ_RIF` char(15) DEFAULT NULL,
  `CRQ_TIPCTA` char(1) DEFAULT NULL,
  `CRQ_TIPDOC` char(3) DEFAULT NULL,
  `CRQ_TIPIVA` char(2) DEFAULT NULL,
  `CRQ_TIPTRA` char(1) DEFAULT NULL,
  `CRQ_UNDMED` char(8) DEFAULT NULL,
  `CRQ_USUARI` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdocreqinv`
--

DROP TABLE IF EXISTS `dpdocreqinv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdocreqinv` (
  `REQ_CENCOS` char(8) DEFAULT NULL,
  `REQ_CODCOM` char(15) DEFAULT NULL,
  `REQ_CODDES` char(20) DEFAULT NULL,
  `REQ_CODINV` char(15) DEFAULT NULL,
  `REQ_CODORG` char(20) DEFAULT NULL,
  `REQ_CODPER` char(6) DEFAULT NULL,
  `REQ_CODSUC` char(6) DEFAULT NULL,
  `REQ_COMEN1` char(35) DEFAULT NULL,
  `REQ_COMEN2` char(35) DEFAULT NULL,
  `REQ_CONTAB` char(1) DEFAULT NULL,
  `REQ_EMPRES` char(20) DEFAULT NULL,
  `REQ_ESTADO` char(1) DEFAULT NULL,
  `REQ_FCHENT` date DEFAULT NULL,
  `REQ_FECHA` date DEFAULT NULL,
  `REQ_HORA` char(8) DEFAULT NULL,
  `REQ_IDFROM` char(20) DEFAULT NULL,
  `REQ_IDTO` char(20) DEFAULT NULL,
  `REQ_NUMCBT` char(8) DEFAULT NULL,
  `REQ_NUMDOC` char(8) DEFAULT NULL,
  `REQ_NUMERO` char(10) DEFAULT NULL,
  `REQ_NUMMEM` decimal(19,0) DEFAULT NULL,
  `REQ_NUMORG` char(10) DEFAULT NULL,
  `REQ_ORIGEN` char(1) DEFAULT NULL,
  `REQ_TIPFRO` char(3) DEFAULT NULL,
  `REQ_TIPORG` char(3) DEFAULT NULL,
  `REQ_TIPTO` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdpto`
--

DROP TABLE IF EXISTS `dpdpto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdpto` (
  `DEP_ACTIVO` decimal(1,0) DEFAULT NULL,
  `DEP_CLRGRA` decimal(10,0) DEFAULT NULL,
  `DEP_CODIGO` char(10) NOT NULL,
  `DEP_DESCRI` char(40) DEFAULT NULL,
  `DEP_ENCARG` char(35) DEFAULT NULL,
  `DEP_FILMAI` decimal(8,0) DEFAULT NULL,
  `DEP_NUMMEM` decimal(8,0) DEFAULT NULL,
  `DEP_POROPE` decimal(5,2) DEFAULT NULL,
  `DEP_PORPRO` decimal(5,2) DEFAULT NULL,
  `DEP_PORSER` decimal(5,2) DEFAULT NULL,
  `DEP_PORVTA` decimal(5,2) DEFAULT NULL,
  `DEP_REGACT` decimal(1,0) DEFAULT NULL,
  `DEP_REGINV` decimal(1,0) DEFAULT NULL,
  `DEP_REGPRO` decimal(1,0) DEFAULT NULL,
  `DEP_REGTRA` decimal(1,0) DEFAULT NULL,
  `DEP_RIF` char(12) DEFAULT NULL,
  PRIMARY KEY (`DEP_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdpto_inv_cta`
--

DROP TABLE IF EXISTS `dpdpto_inv_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdpto_inv_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(6) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPDPTO_INV_CTA_2` (`CIC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdptodiscostos`
--

DROP TABLE IF EXISTS `dpdptodiscostos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdptodiscostos` (
  `DCD_ANO` decimal(4,0) DEFAULT NULL,
  `DCD_CODDEP` char(10) DEFAULT NULL,
  `DCD_CODSUC` char(6) DEFAULT NULL,
  `DCD_GASCTV` decimal(5,2) DEFAULT NULL,
  `DCD_GASPRD` decimal(5,2) DEFAULT NULL,
  `DCD_MES` decimal(2,0) DEFAULT NULL,
  `DCD_MODCTV` decimal(5,2) DEFAULT NULL,
  `DCD_MODPRD` decimal(5,2) DEFAULT NULL,
  `DCD_MOICTV` decimal(5,2) DEFAULT NULL,
  `DCD_MOIPRD` decimal(5,2) DEFAULT NULL,
  KEY `DPDPTODISCOSTOS_2` (`DCD_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdptoproducc`
--

DROP TABLE IF EXISTS `dpdptoproducc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdptoproducc` (
  `DEP_CODIGO` char(6) NOT NULL,
  `DEP_CTACON` char(20) DEFAULT NULL,
  `DEP_DESCRI` char(30) DEFAULT NULL,
  `DEP_TEXTO` longtext,
  PRIMARY KEY (`DEP_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpdptoproducc_cta`
--

DROP TABLE IF EXISTS `dpdptoproducc_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpdptoproducc_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(6) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPDPTOPRODUCC_CTA_2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPDPTOPRODUCC_CTA_4` (`CIC_CODSUC`),
  KEY `DPDPTOPRODUCC_CTA_6` (`CIC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpejecucionprod`
--

DROP TABLE IF EXISTS `dpejecucionprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpejecucionprod` (
  `EOP_ACT` decimal(2,0) DEFAULT NULL,
  `EOP_CANTID` decimal(10,2) DEFAULT NULL,
  `EOP_CBTNUM` char(8) DEFAULT NULL,
  `EOP_CODDEP` char(6) DEFAULT NULL,
  `EOP_CODMON` char(3) DEFAULT NULL,
  `EOP_CODSUC` char(8) DEFAULT NULL,
  `EOP_COMENT` char(60) DEFAULT NULL,
  `EOP_CONTAB` decimal(1,0) DEFAULT NULL,
  `EOP_COSTO` decimal(16,2) DEFAULT NULL,
  `EOP_DEPORG` char(6) DEFAULT NULL,
  `EOP_ESTADO` char(1) DEFAULT NULL,
  `EOP_FECHA` date DEFAULT NULL,
  `EOP_FINAL` decimal(1,0) DEFAULT NULL,
  `EOP_HORA` char(5) DEFAULT NULL,
  `EOP_NUMERO` char(8) DEFAULT NULL,
  `EOP_NUMMEM` decimal(8,0) DEFAULT NULL,
  `EOP_ORDPRO` char(8) DEFAULT NULL,
  `EOP_TIPO` char(1) DEFAULT NULL,
  `EOP_TIPTRA` char(1) DEFAULT NULL,
  `EOP_VALAGR` decimal(15,2) DEFAULT NULL,
  KEY `DPEJECUCIONPROD_2` (`EOP_CODSUC`,`EOP_TIPO`,`EOP_NUMERO`),
  KEY `DPEJECUCIONPROD_4` (`EOP_CODSUC`,`EOP_ORDPRO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpejecucionvalagre`
--

DROP TABLE IF EXISTS `dpejecucionvalagre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpejecucionvalagre` (
  `EVA_CANTID` decimal(14,2) DEFAULT NULL,
  `EVA_CODDEP` char(6) DEFAULT NULL,
  `EVA_CODSUC` char(6) DEFAULT NULL,
  `EVA_CODVAL` char(10) DEFAULT NULL,
  `EVA_COMENT` char(50) DEFAULT NULL,
  `EVA_MONTO` decimal(14,2) DEFAULT NULL,
  `EVA_NUMERO` char(8) DEFAULT NULL,
  `EVA_TIPO` char(1) DEFAULT NULL,
  `EVA_TOTAL` decimal(14,2) DEFAULT NULL,
  KEY `DPEJECUCIONVALAGRE_2` (`EVA_CODSUC`,`EVA_TIPO`,`EVA_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpejercicios`
--

DROP TABLE IF EXISTS `dpejercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpejercicios` (
  `EJE_AXIINI` decimal(1,0) DEFAULT NULL,
  `EJE_BALTRA` char(8) DEFAULT NULL,
  `EJE_CBTINI` char(8) DEFAULT NULL,
  `EJE_CBTMIG` char(8) DEFAULT NULL,
  `EJE_CBTTRA` char(8) DEFAULT NULL,
  `EJE_CERRAD` decimal(1,0) DEFAULT NULL,
  `EJE_CIERRE` decimal(1,0) DEFAULT NULL,
  `EJE_CODSUC` char(6) DEFAULT NULL,
  `EJE_CTAMOD` char(6) DEFAULT NULL,
  `EJE_DESDE` date DEFAULT NULL,
  `EJE_FECHA` date DEFAULT NULL,
  `EJE_HASTA` date DEFAULT NULL,
  `EJE_NUMCBT` char(8) DEFAULT NULL,
  `EJE_NUMERO` char(4) DEFAULT NULL,
  `EJE_UT` decimal(12,0) DEFAULT NULL,
  KEY `DPEJERCICIOS_2` (`EJE_CODSUC`),
  KEY `DPEJERCICIOS_4` (`EJE_CTAMOD`),
  KEY `DPEJERCICIOS_6` (`EJE_CODSUC`,`EJE_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpequipospos`
--

DROP TABLE IF EXISTS `dpequipospos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpequipospos` (
  `EPV_CODSUC` char(6) DEFAULT NULL,
  `EPV_IMPFIS` char(30) DEFAULT NULL,
  `EPV_IP` char(15) DEFAULT NULL,
  `EPV_MODIMP` char(20) DEFAULT NULL,
  `EPV_NUMERO` char(9) DEFAULT NULL,
  `EPV_PC` char(30) DEFAULT NULL,
  `EPV_SERIEF` char(2) NOT NULL,
  `EPV_TIPDOC` char(3) DEFAULT NULL,
  PRIMARY KEY (`EPV_SERIEF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpequiv`
--

DROP TABLE IF EXISTS `dpequiv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpequiv` (
  `EQUI_BARRA` char(20) DEFAULT NULL,
  `EQUI_CODIG` char(20) DEFAULT NULL,
  `EQUI_DESCR` char(40) DEFAULT NULL,
  `EQUI_LPT` char(4) DEFAULT NULL,
  `EQUI_MED` char(8) DEFAULT NULL,
  KEY `DPEQUIV_2` (`EQUI_CODIG`),
  KEY `DPEQUIV_4` (`EQUI_MED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpestados`
--

DROP TABLE IF EXISTS `dpestados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpestados` (
  `CLRGRA` decimal(10,0) DEFAULT NULL,
  `CODAREA` char(4) DEFAULT NULL,
  `ESTADO` char(20) DEFAULT NULL,
  `NUMMEM` decimal(10,0) DEFAULT NULL,
  `PAIS` char(35) DEFAULT NULL,
  `PROMPT` longtext,
  KEY `DPESTADOS_2` (`PAIS`,`ESTADO`),
  KEY `DPESTADOS_4` (`PAIS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpestructorg`
--

DROP TABLE IF EXISTS `dpestructorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpestructorg` (
  `EOR_ACTIVO` decimal(1,0) DEFAULT NULL,
  `EOR_CENCOS` char(8) DEFAULT NULL,
  `EOR_CODALM` char(3) DEFAULT NULL,
  `EOR_CODDEP` char(10) DEFAULT NULL,
  `EOR_CODIGO` char(20) NOT NULL,
  `EOR_CODSUC` char(8) DEFAULT NULL,
  `EOR_DESCRI` char(80) DEFAULT NULL,
  `EOR_FECHA` date DEFAULT NULL,
  `EOR_FILMAI` decimal(7,0) DEFAULT NULL,
  `EOR_JERARQ` char(15) DEFAULT NULL,
  `EOR_NUMMEM` decimal(7,0) DEFAULT NULL,
  `EOR_PRESUP` decimal(1,0) DEFAULT NULL,
  `EOR_TIPO` char(3) DEFAULT NULL,
  PRIMARY KEY (`EOR_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpestructorgdocinv`
--

DROP TABLE IF EXISTS `dpestructorgdocinv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpestructorgdocinv` (
  `DOC_ACT` decimal(2,0) DEFAULT NULL,
  `DOC_CODEST` char(20) DEFAULT NULL,
  `DOC_CODIGO` char(10) DEFAULT NULL,
  `DOC_CODSUC` char(6) DEFAULT NULL,
  `DOC_COMEN1` char(35) DEFAULT NULL,
  `DOC_COMEN2` char(35) DEFAULT NULL,
  `DOC_ESTADO` char(1) DEFAULT NULL,
  `DOC_FCHENT` date DEFAULT NULL,
  `DOC_FECHA` date DEFAULT NULL,
  `DOC_HORA` char(8) DEFAULT NULL,
  `DOC_MONTO` decimal(19,2) DEFAULT NULL,
  `DOC_NUMCBT` char(8) DEFAULT NULL,
  `DOC_NUMERO` char(10) DEFAULT NULL,
  `DOC_NUMMEM` decimal(19,0) DEFAULT NULL,
  `DOC_NUMPAR` char(5) DEFAULT NULL,
  `DOC_RIF` char(12) DEFAULT NULL,
  `DOC_TIPDOC` char(4) DEFAULT NULL,
  `DOC_TIPTRA` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpestructorgdocreqm`
--

DROP TABLE IF EXISTS `dpestructorgdocreqm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpestructorgdocreqm` (
  `DOC_ACT` decimal(2,0) DEFAULT NULL,
  `DOC_CODEST` char(20) DEFAULT NULL,
  `DOC_CODSUC` char(6) DEFAULT NULL,
  `DOC_COMEN1` char(35) DEFAULT NULL,
  `DOC_COMEN2` char(35) DEFAULT NULL,
  `DOC_CONTAB` char(1) DEFAULT NULL,
  `DOC_ESTADO` char(2) DEFAULT NULL,
  `DOC_FCHENT` date DEFAULT NULL,
  `DOC_FECHA` date DEFAULT NULL,
  `DOC_HORA` char(8) DEFAULT NULL,
  `DOC_HORENT` char(10) DEFAULT NULL,
  `DOC_NUMCBT` char(8) DEFAULT NULL,
  `DOC_NUMERO` char(10) DEFAULT NULL,
  `DOC_NUMMEM` decimal(19,0) DEFAULT NULL,
  `DOC_NUMPAR` char(5) DEFAULT NULL,
  `DOC_RIF` char(10) DEFAULT NULL,
  `DOC_TIPTRA` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpestructorgprocli`
--

DROP TABLE IF EXISTS `dpestructorgprocli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpestructorgprocli` (
  `EPC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `EPC_CODCLI` char(20) DEFAULT NULL,
  `EPC_CODPRO` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpestructorgpryins`
--

DROP TABLE IF EXISTS `dpestructorgpryins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpestructorgpryins` (
  `INS_CODIGO` char(20) DEFAULT NULL,
  `INS_CODSUC` char(8) DEFAULT NULL,
  `INS_FILMAI` decimal(7,0) DEFAULT NULL,
  `INS_ITEM` char(5) DEFAULT NULL,
  `INS_NUMDOC` char(10) DEFAULT NULL,
  `INS_NUMMEM` decimal(10,0) DEFAULT NULL,
  `INS_RIF` char(20) DEFAULT NULL,
  `INS_TIPDOC` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpestructorgreqinv`
--

DROP TABLE IF EXISTS `dpestructorgreqinv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpestructorgreqinv` (
  `DOC_ACT` decimal(2,0) DEFAULT NULL,
  `DOC_CODEST` char(20) DEFAULT NULL,
  `DOC_CODIGO` char(10) DEFAULT NULL,
  `DOC_CODSUC` char(6) DEFAULT NULL,
  `DOC_COMEN1` char(250) DEFAULT NULL,
  `DOC_COMEN2` char(35) DEFAULT NULL,
  `DOC_ESTADO` char(1) DEFAULT NULL,
  `DOC_FCHENT` date DEFAULT NULL,
  `DOC_FECHA` date DEFAULT NULL,
  `DOC_HORA` char(8) DEFAULT NULL,
  `DOC_MONTO` decimal(19,2) DEFAULT NULL,
  `DOC_NUMCBT` char(8) DEFAULT NULL,
  `DOC_NUMERO` char(10) DEFAULT NULL,
  `DOC_NUMMEM` decimal(19,0) DEFAULT NULL,
  `DOC_NUMPAR` char(5) DEFAULT NULL,
  `DOC_ORIGEN` char(3) DEFAULT NULL,
  `DOC_RIF` char(15) DEFAULT NULL,
  `DOC_TIPDOC` char(4) DEFAULT NULL,
  `DOC_TIPTRA` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpevaluenos`
--

DROP TABLE IF EXISTS `dpevaluenos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpevaluenos` (
  `EVL_CODINV` char(20) DEFAULT NULL,
  `EVL_CORREO` char(80) DEFAULT NULL,
  `EVL_EVALIC` decimal(2,0) DEFAULT NULL,
  `EVL_EVASER` decimal(2,0) DEFAULT NULL,
  `EVL_FECHA` date DEFAULT NULL,
  `EVL_HORA` char(8) DEFAULT NULL,
  `EVL_ID` int(4) NOT NULL AUTO_INCREMENT,
  `EVL_ID_USU` char(3) DEFAULT NULL,
  `EVL_MEMO` longtext,
  `EVL_PCNAME` char(80) DEFAULT NULL,
  `EVL_SERIAL` char(30) DEFAULT NULL,
  `EVL_USUARI` char(80) DEFAULT NULL,
  PRIMARY KEY (`EVL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpexpactividad`
--

DROP TABLE IF EXISTS `dpexpactividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpexpactividad` (
  `ACT_CODIGO` char(30) DEFAULT NULL,
  `ACT_TEMA` char(40) DEFAULT NULL,
  KEY `DPEXPACTIVIDAD_2` (`ACT_TEMA`,`ACT_CODIGO`),
  KEY `DPEXPACTIVIDAD_4` (`ACT_TEMA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpexpediente`
--

DROP TABLE IF EXISTS `dpexpediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpexpediente` (
  `EXP_ACT` decimal(2,0) DEFAULT NULL,
  `EXP_CARGO` char(30) DEFAULT NULL,
  `EXP_CODACT` char(30) DEFAULT NULL,
  `EXP_CODAUT` char(5) DEFAULT NULL,
  `EXP_CODMAE` char(10) DEFAULT NULL,
  `EXP_CODSUC` char(6) DEFAULT NULL,
  `EXP_CODTAR` char(60) DEFAULT NULL,
  `EXP_CODTRA` char(6) DEFAULT NULL,
  `EXP_CODUSU` char(3) DEFAULT NULL,
  `EXP_COMEN1` char(40) DEFAULT NULL,
  `EXP_COMEN2` char(40) DEFAULT NULL,
  `EXP_DESCRI` char(80) DEFAULT NULL,
  `EXP_EMAIL` char(80) DEFAULT NULL,
  `EXP_ENVIO` decimal(1,0) DEFAULT NULL,
  `EXP_ESPERA` decimal(1,0) DEFAULT NULL,
  `EXP_ESTATU` char(1) DEFAULT NULL,
  `EXP_EXPASO` char(9) DEFAULT NULL,
  `EXP_FECHA` date DEFAULT NULL,
  `EXP_FECHAC` date DEFAULT NULL,
  `EXP_FECHAE` date DEFAULT NULL,
  `EXP_FECHAF` date DEFAULT NULL,
  `EXP_FILMAI` decimal(7,0) DEFAULT NULL,
  `EXP_HORA` char(8) DEFAULT NULL,
  `EXP_HORAE` char(8) DEFAULT NULL,
  `EXP_HORAF` char(8) DEFAULT NULL,
  `EXP_LTODOS` decimal(1,0) DEFAULT NULL,
  `EXP_MONTO` decimal(14,2) DEFAULT NULL,
  `EXP_NUMDOC` char(20) DEFAULT NULL,
  `EXP_NUMERO` char(9) DEFAULT NULL,
  `EXP_NUMFIL` decimal(8,0) DEFAULT NULL,
  `EXP_PERSON` char(40) DEFAULT NULL,
  `EXP_PRIORI` char(2) DEFAULT NULL,
  `EXP_REGMEM` decimal(8,0) DEFAULT NULL,
  `EXP_REQDIG` decimal(1,0) DEFAULT NULL,
  `EXP_TABLA` char(15) DEFAULT NULL,
  `EXP_TARDEF` char(30) DEFAULT NULL,
  `EXP_TEMAS` char(30) DEFAULT NULL,
  `EXP_TEXTO` longtext,
  `EXP_TICKET` char(8) DEFAULT NULL,
  `EXP_TIPDOC` char(4) DEFAULT NULL,
  `EXP_TIPO` char(1) DEFAULT NULL,
  `EXP_ZIP` decimal(1,0) DEFAULT NULL,
  KEY `DPEXPEDIENTE_1` (`EXP_TABLA`,`EXP_CODMAE`),
  KEY `DPEXPEDIENTE_2` (`EXP_CODSUC`,`EXP_REGMEM`),
  KEY `EXPTABLA` (`EXP_TABLA`,`EXP_ACT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpexpedientem`
--

DROP TABLE IF EXISTS `dpexpedientem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpexpedientem` (
  `MEX_CODSUC` char(6) DEFAULT NULL,
  `MEX_MEMO` longtext,
  `MEX_NUMERO` decimal(8,0) DEFAULT NULL,
  KEY `DPEXPEDIENTEM_2` (`MEX_CODSUC`,`MEX_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpexptareas`
--

DROP TABLE IF EXISTS `dpexptareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpexptareas` (
  `TAR_ACTCOD` char(40) DEFAULT NULL,
  `TAR_CANTID` decimal(1,0) DEFAULT NULL,
  `TAR_DESCRI` char(60) DEFAULT NULL,
  `TAR_NOTCLI` decimal(1,0) DEFAULT NULL,
  `TAR_NOTPER` decimal(1,0) DEFAULT NULL,
  `TAR_NOTUSU` decimal(1,0) DEFAULT NULL,
  `TAR_NUMMEM` decimal(10,0) DEFAULT NULL,
  `TAR_TEMCOD` char(30) DEFAULT NULL,
  `TAR_VALOR` decimal(5,0) DEFAULT NULL,
  KEY `DPEXPTAREAS_2` (`TAR_TEMCOD`,`TAR_ACTCOD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpexptareasdef`
--

DROP TABLE IF EXISTS `dpexptareasdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpexptareasdef` (
  `TDF_ACTIVI` char(30) DEFAULT NULL,
  `TDF_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TDF_APLICA` char(15) DEFAULT NULL,
  `TDF_CODIGO` char(20) DEFAULT NULL,
  `TDF_NUMMEM` decimal(8,0) DEFAULT NULL,
  `TDF_REQDIG` decimal(1,0) DEFAULT NULL,
  `TDF_SELECC` decimal(1,0) DEFAULT NULL,
  `TDF_TAREA` char(30) DEFAULT NULL,
  `TDF_TEMA` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpexptemas`
--

DROP TABLE IF EXISTS `dpexptemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpexptemas` (
  `TEM_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TEM_CODIGO` char(30) NOT NULL,
  `TEM_NOTCLI` decimal(1,0) DEFAULT NULL,
  `TEM_NOTTRA` decimal(1,0) DEFAULT NULL,
  PRIMARY KEY (`TEM_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpfaseproducc`
--

DROP TABLE IF EXISTS `dpfaseproducc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpfaseproducc` (
  `FAP_CODDEP` char(6) DEFAULT NULL,
  `FAP_CODIGO` char(20) DEFAULT NULL,
  `FAP_CODINV` char(20) DEFAULT NULL,
  `FAP_COMEN1` char(40) DEFAULT NULL,
  `FAP_COMEN2` char(40) DEFAULT NULL,
  `FAP_DESCRI` char(40) DEFAULT NULL,
  `FAP_NUMMEM` decimal(8,0) DEFAULT NULL,
  `FAP_UNDMED` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpfechasxusu`
--

DROP TABLE IF EXISTS `dpfechasxusu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpfechasxusu` (
  `FCH_ANO` char(4) DEFAULT NULL,
  `FCH_CODUSU` char(3) DEFAULT NULL,
  `FCH_MES` char(2) DEFAULT NULL,
  `FCH_NEGADO` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpferiados`
--

DROP TABLE IF EXISTS `dpferiados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpferiados` (
  `FER_CMES` char(12) DEFAULT NULL,
  `FER_DESCRI` char(50) NOT NULL,
  `FER_DIA` decimal(2,0) DEFAULT NULL,
  `FER_MES` decimal(2,0) DEFAULT NULL,
  `FER_TIPO` char(1) DEFAULT NULL,
  PRIMARY KEY (`FER_DESCRI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpfileemp`
--

DROP TABLE IF EXISTS `dpfileemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpfileemp` (
  `FIL_ALTER` decimal(1,0) DEFAULT NULL,
  `FIL_APLICA` char(2) DEFAULT NULL,
  `FIL_BLOB` longblob,
  `FIL_CODSUC` char(8) DEFAULT NULL,
  `FIL_DESCRI` char(50) DEFAULT NULL,
  `FIL_FECHA` date DEFAULT NULL,
  `FIL_FILE` char(200) DEFAULT NULL,
  `FIL_LTEXT` decimal(1,0) DEFAULT NULL,
  `FIL_MAIN` char(200) DEFAULT NULL,
  `FIL_NUMERO` decimal(8,0) DEFAULT NULL,
  `FIL_NUMMAI` decimal(8,0) DEFAULT NULL,
  `FIL_PAGE` decimal(19,0) DEFAULT NULL,
  `FIL_REFRES` decimal(1,0) DEFAULT NULL,
  `FIL_REV` char(30) DEFAULT NULL,
  `FIL_TABLE` char(20) DEFAULT NULL,
  `FIL_TEXTO` longtext,
  `FIL_ZIP` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpfileempmain`
--

DROP TABLE IF EXISTS `dpfileempmain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpfileempmain` (
  `FIM_CAMPOS` char(40) DEFAULT NULL,
  `FIM_CLAVE` char(40) DEFAULT NULL,
  `FIM_ID` char(10) DEFAULT NULL,
  `FIM_IP` char(20) DEFAULT NULL,
  `FIM_NUMERO` decimal(8,0) DEFAULT NULL,
  `FIM_REFRES` decimal(1,0) DEFAULT NULL,
  `FIM_TABLA` char(20) DEFAULT NULL,
  `LNK_LNKADD` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpfileimg`
--

DROP TABLE IF EXISTS `dpfileimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpfileimg` (
  `IMG_BLOB` longblob,
  `IMG_CODSUC` char(6) DEFAULT NULL,
  `IMG_FILE` char(80) DEFAULT NULL,
  `IMG_ISTEXT` decimal(1,0) DEFAULT NULL,
  `IMG_MEMO` longtext,
  `IMG_NUMERO` decimal(8,0) DEFAULT NULL,
  `IMG_NUMFIL` char(3) DEFAULT NULL,
  `IMG_REFREG` char(40) DEFAULT NULL,
  `IMG_TABLA` char(30) DEFAULT NULL,
  `IMG_VIEW` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpformatogru`
--

DROP TABLE IF EXISTS `dpformatogru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpformatogru` (
  `GDF_CODIGO` char(20) NOT NULL,
  `GDF_DESCRI` char(40) DEFAULT NULL,
  PRIMARY KEY (`GDF_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpformatosarea`
--

DROP TABLE IF EXISTS `dpformatosarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpformatosarea` (
  `ADF_AREA` char(1) DEFAULT NULL,
  `ADF_CODFOR` char(20) DEFAULT NULL,
  `ADF_DESCRI` char(40) DEFAULT NULL,
  `ADF_FUENTE` longtext,
  `ADF_SQL` longtext,
  `ADF_TABLA` char(20) DEFAULT NULL,
  KEY `DPFORMATOSAREA_2` (`ADF_CODFOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpformatosprn`
--

DROP TABLE IF EXISTS `dpformatosprn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpformatosprn` (
  `FOR_ALTER` decimal(1,0) DEFAULT NULL,
  `FOR_AUTO` decimal(1,0) DEFAULT NULL,
  `FOR_CIERRE` decimal(1,0) DEFAULT NULL,
  `FOR_CODIGO` char(20) NOT NULL,
  `FOR_COPIAS` decimal(2,0) DEFAULT NULL,
  `FOR_DESCRI` char(40) DEFAULT NULL,
  `FOR_FECHA` date DEFAULT NULL,
  `FOR_FUENTE` longtext,
  `FOR_GRUPO` char(20) DEFAULT NULL,
  `FOR_HORA` char(8) DEFAULT NULL,
  `FOR_PUERTO` char(11) DEFAULT NULL,
  `FOR_RUNFIN` char(80) DEFAULT NULL,
  `FOR_RUNINI` char(80) DEFAULT NULL,
  PRIMARY KEY (`FOR_CODIGO`),
  KEY `DPFORMATOSPRN_2` (`FOR_GRUPO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpformulasprod`
--

DROP TABLE IF EXISTS `dpformulasprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpformulasprod` (
  `FOR_CANTID` decimal(10,3) DEFAULT NULL,
  `FOR_CODIGO` char(20) DEFAULT NULL,
  `FOR_CODINV` char(20) DEFAULT NULL,
  `FOR_NUMMEM` decimal(8,3) DEFAULT NULL,
  `FOR_UNDMED` char(8) DEFAULT NULL,
  KEY `DPFORMULASPROD_2` (`FOR_CODINV`),
  KEY `DPFORMULASPROD_4` (`FOR_CODINV`,`FOR_CODIGO`),
  KEY `DPFORMULASPROD_6` (`FOR_CODIGO`,`FOR_CODINV`),
  KEY `DPFORMULASPROD_8` (`FOR_UNDMED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpgastoscompra`
--

DROP TABLE IF EXISTS `dpgastoscompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpgastoscompra` (
  `GAS_ACTIVO` decimal(1,0) DEFAULT NULL,
  `GAS_CODIGO` char(25) NOT NULL,
  `GAS_MEMO` longtext,
  `GAS_MODO` char(1) DEFAULT NULL,
  PRIMARY KEY (`GAS_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpgcargadoc`
--

DROP TABLE IF EXISTS `dpgcargadoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpgcargadoc` (
  `GCD_CODSUC` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpgerencia`
--

DROP TABLE IF EXISTS `dpgerencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpgerencia` (
  `GER_CODIGO` char(6) DEFAULT NULL,
  `GER_DESCRI` char(60) DEFAULT NULL,
  `GER_SIGLAS` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpgiroscli`
--

DROP TABLE IF EXISTS `dpgiroscli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpgiroscli` (
  `GIR_ACT` decimal(2,0) DEFAULT NULL,
  `GIR_AMORTI` decimal(1,0) DEFAULT NULL,
  `GIR_CANTID` decimal(3,0) DEFAULT NULL,
  `GIR_CENCOS` char(8) DEFAULT NULL,
  `GIR_CODCLI` char(10) DEFAULT NULL,
  `GIR_CODMON` char(3) DEFAULT NULL,
  `GIR_CODSUC` char(6) DEFAULT NULL,
  `GIR_COMEN1` char(50) DEFAULT NULL,
  `GIR_COMEN2` char(50) DEFAULT NULL,
  `GIR_DIAS` decimal(3,0) DEFAULT NULL,
  `GIR_FCHINI` date DEFAULT NULL,
  `GIR_FECHA` date DEFAULT NULL,
  `GIR_GASTO` decimal(16,2) DEFAULT NULL,
  `GIR_HORA` char(8) DEFAULT NULL,
  `GIR_MTOINT` decimal(16,2) DEFAULT NULL,
  `GIR_NUMDOC` char(10) DEFAULT NULL,
  `GIR_NUMERO` char(8) DEFAULT NULL,
  `GIR_PORINT` decimal(6,2) DEFAULT NULL,
  `GIR_TIPDOC` char(3) DEFAULT NULL,
  KEY `DPGIROSCLI_2` (`GIR_CODCLI`),
  KEY `DPGIROSCLI_4` (`GIR_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpgrafcolor`
--

DROP TABLE IF EXISTS `dpgrafcolor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpgrafcolor` (
  `CLR_CODBRW` char(20) DEFAULT NULL,
  `CLR_CODIGO` char(20) NOT NULL,
  `CLR_COLOR` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`CLR_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpgru`
--

DROP TABLE IF EXISTS `dpgru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpgru` (
  `GRU_ACTIVO` decimal(1,0) DEFAULT NULL,
  `GRU_CLRGRA` decimal(12,0) DEFAULT NULL,
  `GRU_CODCLA` char(10) DEFAULT NULL,
  `GRU_CODIGO` char(10) NOT NULL,
  `GRU_COMCOB` decimal(6,2) DEFAULT NULL,
  `GRU_COMVTA` decimal(6,2) DEFAULT NULL,
  `GRU_COSINV` decimal(1,0) DEFAULT NULL,
  `GRU_CTAPRE` char(20) DEFAULT NULL,
  `GRU_DESCRI` char(80) DEFAULT NULL,
  `GRU_DIAS_A` decimal(15,0) DEFAULT NULL,
  `GRU_EMANAG` decimal(1,0) DEFAULT NULL,
  `GRU_FILBMP` char(70) DEFAULT NULL,
  `GRU_MEMO` longtext,
  `GRU_META` char(10) DEFAULT NULL,
  `GRU_PERIODO` char(15) DEFAULT NULL,
  `GRU_PREFIJ` char(10) DEFAULT NULL,
  `GRU_TIPCAL` char(15) DEFAULT NULL,
  `GRU_TIPEXI` char(15) DEFAULT NULL,
  `GRU_TIPREP` char(15) DEFAULT NULL,
  `GRU_UTILIZ` char(30) DEFAULT NULL,
  PRIMARY KEY (`GRU_CODIGO`),
  KEY `DPGRU_2` (`GRU_CTAPRE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpgru_cta`
--

DROP TABLE IF EXISTS `dpgru_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpgru_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(6) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPGRU_CTA` (`CIC_CODIGO`,`CIC_COD2`,`CIC_CODINT`),
  KEY `DPGRU_CTA_2` (`CIC_CODSUC`),
  KEY `DPGRU_CTA_4` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPGRU_CTA_6` (`CIC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpgru_ctaref`
--

DROP TABLE IF EXISTS `dpgru_ctaref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpgru_ctaref` (
  `CIR_CODINT` char(6) DEFAULT NULL,
  `CIR_DESCRI` char(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpgruactivos`
--

DROP TABLE IF EXISTS `dpgruactivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpgruactivos` (
  `GAC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `GAC_CODIGO` char(8) NOT NULL,
  `GAC_CTAFIJ` decimal(1,0) DEFAULT NULL,
  `GAC_CTAINT` decimal(1,0) DEFAULT NULL,
  `GAC_DEPREC` decimal(1,0) DEFAULT NULL,
  `GAC_DESCRI` char(35) DEFAULT NULL,
  `GAC_MEMO` longtext,
  `GAC_PORVLS` decimal(3,2) DEFAULT NULL,
  `GAC_VUTILA` decimal(2,0) DEFAULT NULL,
  `GAC_VUTILM` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`GAC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpgruactivos_cta`
--

DROP TABLE IF EXISTS `dpgruactivos_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpgruactivos_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(6) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPGRUACTIVOS_CTA_2` (`CIC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpgrucaract`
--

DROP TABLE IF EXISTS `dpgrucaract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpgrucaract` (
  `GCR_ACTIVO` decimal(1,0) DEFAULT NULL,
  `GCR_CODIGO` char(8) NOT NULL,
  `GCR_CODMON` char(3) DEFAULT NULL,
  `GCR_DESCRI` char(20) DEFAULT NULL,
  `GCR_MONTO` decimal(19,2) DEFAULT NULL,
  `GCR_TIPO` char(20) DEFAULT NULL,
  PRIMARY KEY (`GCR_CODIGO`),
  KEY `DPGRUCARACT_2` (`GCR_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpgrucaractdet`
--

DROP TABLE IF EXISTS `dpgrucaractdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpgrucaractdet` (
  `GCD_CODGRU` char(8) DEFAULT NULL,
  `GCD_CODMON` char(3) DEFAULT NULL,
  `GCD_DESCRI` char(20) DEFAULT NULL,
  `GCD_TIPO` char(20) DEFAULT NULL,
  `GCD_VALOR` decimal(19,2) DEFAULT NULL,
  KEY `DPGRUCARACTDET_2` (`GCD_CODMON`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpgrucencos`
--

DROP TABLE IF EXISTS `dpgrucencos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpgrucencos` (
  `GCC_CODIGO` char(10) NOT NULL,
  `GCC_DESCRI` char(40) DEFAULT NULL,
  `GCC_NUMMEM` char(7) DEFAULT NULL,
  PRIMARY KEY (`GCC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpgruurl`
--

DROP TABLE IF EXISTS `dpgruurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpgruurl` (
  `GDU_ACTIVO` decimal(1,0) DEFAULT NULL,
  `GDU_CODIGO` char(20) DEFAULT NULL,
  `GDU_DESCRI` char(250) DEFAULT NULL,
  `GDU_HEIGHT` decimal(4,0) DEFAULT NULL,
  `GDU_IMAGE` decimal(1,0) DEFAULT NULL,
  `GDU_WIDTH` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpguiacarga`
--

DROP TABLE IF EXISTS `dpguiacarga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpguiacarga` (
  `GTR_CI_RIF` char(15) DEFAULT NULL,
  `GTR_CODMON` char(3) DEFAULT NULL,
  `GTR_CODSUC` char(6) DEFAULT NULL,
  `GTR_CODTRA` char(6) DEFAULT NULL,
  `GTR_ESTADO` char(1) DEFAULT NULL,
  `GTR_FECHA` date DEFAULT NULL,
  `GTR_MTOFON` decimal(14,2) DEFAULT NULL,
  `GTR_NUMERO` char(8) NOT NULL,
  `GTR_PLACA` char(7) DEFAULT NULL,
  PRIMARY KEY (`GTR_NUMERO`),
  KEY `DPGUIACARGA_2` (`GTR_CI_RIF`),
  KEY `DPGUIACARGA_4` (`GTR_CODSUC`),
  KEY `DPGUIACARGA_6` (`GTR_CODTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpguiatransp`
--

DROP TABLE IF EXISTS `dpguiatransp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpguiatransp` (
  `GTR_CODCLI` char(10) DEFAULT NULL,
  `GTR_CODCON` char(4) DEFAULT NULL,
  `GTR_CODMON` char(3) DEFAULT NULL,
  `GTR_CODTRA` char(6) DEFAULT NULL,
  `GTR_DESTIN` char(20) DEFAULT NULL,
  `GTR_FECHA` date DEFAULT NULL,
  `GTR_NUMERO` char(8) DEFAULT NULL,
  `GTR_ORIGEN` char(20) DEFAULT NULL,
  `GTR_VALOR` decimal(19,2) DEFAULT NULL,
  `GTR_VIATIC` decimal(19,2) DEFAULT NULL,
  KEY `DPGUIATRANSP_2` (`GTR_CODTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dphismon`
--

DROP TABLE IF EXISTS `dphismon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dphismon` (
  `HMN_CODIGO` char(3) DEFAULT NULL,
  `HMN_FECHA` date DEFAULT NULL,
  `HMN_HORA` char(8) DEFAULT NULL,
  `HMN_VALOR` decimal(19,8) DEFAULT NULL,
  KEY `DPHISMON1` (`HMN_CODIGO`,`HMN_FECHA`),
  KEY `DPHISMON3` (`HMN_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpimppat`
--

DROP TABLE IF EXISTS `dpimppat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpimppat` (
  `IMP_CODIGO` char(3) NOT NULL,
  `IMP_DESCRI` char(40) DEFAULT NULL,
  `IMP_PATENT` char(15) DEFAULT NULL,
  `IMP_TASA` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`IMP_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpindinf_cta`
--

DROP TABLE IF EXISTS `dpindinf_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpindinf_cta` (
  `CIC_COD2` char(20) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(20) DEFAULT NULL,
  `CIC_CODSUC` char(6) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPINDINF_CTA_2` (`CIC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinv`
--

DROP TABLE IF EXISTS `dpinv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinv` (
  `INV_APLICA` char(1) DEFAULT NULL,
  `INV_APLORG` char(3) DEFAULT NULL,
  `INV_ARANCE` char(16) DEFAULT NULL,
  `INV_CAPACI` decimal(10,2) DEFAULT NULL,
  `INV_CATABC` char(1) DEFAULT NULL,
  `INV_CATMER` char(20) DEFAULT NULL,
  `INV_CODCAR` char(8) DEFAULT NULL,
  `INV_CODDEP` char(10) DEFAULT NULL,
  `INV_CODIGO` char(22) NOT NULL,
  `INV_CODMAR` char(10) DEFAULT NULL,
  `INV_CODRET` char(3) DEFAULT NULL,
  `INV_CODSAT` char(100) DEFAULT NULL,
  `INV_COLOR` char(40) DEFAULT NULL,
  `INV_COMVTA` decimal(10,2) DEFAULT NULL,
  `INV_CONCRI` decimal(6,0) DEFAULT NULL,
  `INV_COSADQ` decimal(14,2) DEFAULT NULL,
  `INV_COSFOB` decimal(14,2) DEFAULT NULL,
  `INV_COSMER` decimal(14,2) DEFAULT NULL,
  `INV_COSPRO` decimal(19,0) DEFAULT NULL,
  `INV_CROSSD` char(1) DEFAULT NULL,
  `INV_DESCRI` char(250) DEFAULT NULL,
  `INV_EDITAR` char(1) DEFAULT NULL,
  `INV_ESCOMN` char(1) DEFAULT NULL,
  `INV_ESTADO` char(1) DEFAULT NULL,
  `INV_EXIMAX` decimal(11,2) DEFAULT NULL,
  `INV_EXIMIN` decimal(11,2) DEFAULT NULL,
  `INV_EXISTE` decimal(19,2) DEFAULT NULL,
  `INV_FCHACT` date DEFAULT NULL,
  `INV_FCHCOS` date DEFAULT NULL,
  `INV_FCHCRE` date DEFAULT NULL,
  `INV_FILBMP` char(60) DEFAULT NULL,
  `INV_FILMAI` decimal(7,0) DEFAULT NULL,
  `INV_GRADOS` decimal(10,2) DEFAULT NULL,
  `INV_GRUPO` char(10) DEFAULT NULL,
  `INV_IMPPAT` char(3) DEFAULT NULL,
  `INV_IMPPVP` decimal(6,2) DEFAULT NULL,
  `INV_ITEMCO` char(1) DEFAULT NULL,
  `INV_IVA` char(2) DEFAULT NULL,
  `INV_LPT` char(4) DEFAULT NULL,
  `INV_MEDMUL` char(1) DEFAULT NULL,
  `INV_MESGAR` decimal(2,0) DEFAULT NULL,
  `INV_METCOS` char(1) DEFAULT NULL,
  `INV_NUMFIL` decimal(8,0) DEFAULT NULL,
  `INV_NUMMEM` decimal(6,0) DEFAULT NULL,
  `INV_OBS1` char(120) DEFAULT NULL,
  `INV_OBS2` char(120) DEFAULT NULL,
  `INV_OBS3` char(120) DEFAULT NULL,
  `INV_OBS4` char(120) DEFAULT NULL,
  `INV_PAIS` char(20) DEFAULT NULL,
  `INV_PESO` decimal(14,2) DEFAULT NULL,
  `INV_PORARA` decimal(6,2) DEFAULT NULL,
  `INV_PORFAC` decimal(6,2) DEFAULT NULL,
  `INV_PREREG` char(1) DEFAULT NULL,
  `INV_PROCED` char(1) DEFAULT NULL,
  `INV_PROMO` char(1) DEFAULT NULL,
  `INV_PVPORG` decimal(14,2) DEFAULT NULL,
  `INV_RECALC` decimal(1,0) DEFAULT NULL,
  `INV_REQMED` char(1) DEFAULT NULL,
  `INV_REQMEM` char(1) DEFAULT NULL,
  `INV_REQPES` char(1) DEFAULT NULL,
  `INV_SERTER` char(1) DEFAULT NULL,
  `INV_TALLAS` char(6) DEFAULT NULL,
  `INV_TIPCOM` char(1) DEFAULT NULL,
  `INV_UBICAC` char(8) DEFAULT NULL,
  `INV_USO` char(120) DEFAULT NULL,
  `INV_UTILIZ` char(30) DEFAULT NULL,
  `INV_VOLUME` decimal(14,2) DEFAULT NULL,
  `INV_WEB` char(1) DEFAULT NULL,
  `INV_WEBMEM` decimal(6,0) DEFAULT NULL,
  PRIMARY KEY (`INV_CODIGO`),
  KEY `DPINV1` (`INV_ESTADO`,`INV_UTILIZ`),
  KEY `DPINV3` (`INV_CODIGO`),
  KEY `DPINV4` (`INV_UTILIZ`),
  KEY `DPINV6` (`INV_GRUPO`),
  KEY `DPINV8` (`INV_CODCAR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinv_cta`
--

DROP TABLE IF EXISTS `dpinv_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinv_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(6) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPINV_CTA_2` (`CIC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinv_tin`
--

DROP TABLE IF EXISTS `dpinv_tin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinv_tin` (
  `INV_ACTIVO` char(1) DEFAULT NULL,
  `INV_APLICA` char(1) DEFAULT NULL,
  `INV_ARANCE` char(16) DEFAULT NULL,
  `INV_CAPACI` decimal(10,2) DEFAULT NULL,
  `INV_CATMER` char(20) DEFAULT NULL,
  `INV_CODCAR` char(8) DEFAULT NULL,
  `INV_CODDEP` char(10) DEFAULT NULL,
  `INV_CODEOR` char(20) DEFAULT NULL,
  `INV_CODIGO` char(22) DEFAULT NULL,
  `INV_CODMAR` char(10) DEFAULT NULL,
  `INV_CODRET` char(3) DEFAULT NULL,
  `INV_CODSAT` char(100) DEFAULT NULL,
  `INV_COLOR` char(40) DEFAULT NULL,
  `INV_COMVTA` decimal(10,2) DEFAULT NULL,
  `INV_CONCRI` decimal(6,0) DEFAULT NULL,
  `INV_COSADQ` decimal(14,2) DEFAULT NULL,
  `INV_COSFOB` decimal(14,2) DEFAULT NULL,
  `INV_COSMER` decimal(14,2) DEFAULT NULL,
  `INV_COSPRO` decimal(18,0) DEFAULT NULL,
  `INV_CRITIC` decimal(1,0) DEFAULT NULL,
  `INV_CROSSD` char(1) DEFAULT NULL,
  `INV_DESCRI` char(250) DEFAULT NULL,
  `INV_EDITAR` char(1) DEFAULT NULL,
  `INV_ESCOMN` char(1) DEFAULT NULL,
  `INV_ESTADO` char(1) DEFAULT NULL,
  `INV_EXIMAX` decimal(11,2) DEFAULT NULL,
  `INV_EXIMIN` decimal(11,2) DEFAULT NULL,
  `INV_EXISTE` decimal(18,0) DEFAULT NULL,
  `INV_FCHACT` date DEFAULT NULL,
  `INV_FCHCOS` date DEFAULT NULL,
  `INV_FCHCRE` date DEFAULT NULL,
  `INV_FILBMP` char(60) DEFAULT NULL,
  `INV_FILMAI` decimal(7,0) DEFAULT NULL,
  `INV_GRADOS` decimal(10,2) DEFAULT NULL,
  `INV_GRUPO` char(10) DEFAULT NULL,
  `INV_HORAS` decimal(10,2) DEFAULT NULL,
  `INV_IMPPAT` char(3) DEFAULT NULL,
  `INV_IMPPVP` decimal(6,2) DEFAULT NULL,
  `INV_ITEMCO` char(1) DEFAULT NULL,
  `INV_IVA` char(2) DEFAULT NULL,
  `INV_LPT` char(4) DEFAULT NULL,
  `INV_MEDMUL` char(1) DEFAULT NULL,
  `INV_MESGAR` decimal(2,0) DEFAULT NULL,
  `INV_METCOS` char(1) DEFAULT NULL,
  `INV_NUMMEM` decimal(6,0) DEFAULT NULL,
  `INV_OBS1` char(120) DEFAULT NULL,
  `INV_OBS2` char(120) DEFAULT NULL,
  `INV_OBS3` char(120) DEFAULT NULL,
  `INV_OBS4` char(60) DEFAULT NULL,
  `INV_OBS5` char(60) DEFAULT NULL,
  `INV_PAIS` char(20) DEFAULT NULL,
  `INV_PESO` decimal(14,0) DEFAULT NULL,
  `INV_PORARA` decimal(6,2) DEFAULT NULL,
  `INV_PORFAC` decimal(6,2) DEFAULT NULL,
  `INV_PREREG` char(1) DEFAULT NULL,
  `INV_PROCED` char(1) DEFAULT NULL,
  `INV_PROMO` char(1) DEFAULT NULL,
  `INV_PVPORG` decimal(14,2) DEFAULT NULL,
  `INV_RECALC` decimal(1,0) DEFAULT NULL,
  `INV_REQMED` char(1) DEFAULT NULL,
  `INV_REQMEM` char(1) DEFAULT NULL,
  `INV_REQPES` char(1) DEFAULT NULL,
  `INV_SERTER` char(1) DEFAULT NULL,
  `INV_TALLAS` char(6) DEFAULT NULL,
  `INV_TIPCOM` char(1) DEFAULT NULL,
  `INV_TIPO` char(1) DEFAULT NULL,
  `INV_UBICAC` char(8) DEFAULT NULL,
  `INV_USO` char(120) DEFAULT NULL,
  `INV_UTILIZ` char(30) DEFAULT NULL,
  `INV_VOLUME` decimal(14,0) DEFAULT NULL,
  `INV_WEB` char(1) DEFAULT NULL,
  `INV_WEBMEM` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvalquiler`
--

DROP TABLE IF EXISTS `dpinvalquiler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvalquiler` (
  `ALQ_CODCLI` char(10) DEFAULT NULL,
  `ALQ_CODIGO` char(20) DEFAULT NULL,
  `ALQ_CODSUC` char(8) DEFAULT NULL,
  `ALQ_COMENT` char(40) DEFAULT NULL,
  `ALQ_DEPOSI` decimal(18,2) DEFAULT NULL,
  `ALQ_DESDE` date DEFAULT NULL,
  `ALQ_FECHA` date DEFAULT NULL,
  `ALQ_HASTA` date DEFAULT NULL,
  `ALQ_NUMERO` char(8) DEFAULT NULL,
  KEY `DPINVALQUILER_2` (`ALQ_CODCLI`),
  KEY `DPINVALQUILER_4` (`ALQ_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvcapaprecios`
--

DROP TABLE IF EXISTS `dpinvcapaprecios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvcapaprecios` (
  `CAP_CAPA` decimal(5,0) DEFAULT NULL,
  `CAP_CODBAR` char(10) DEFAULT NULL,
  `CAP_CODIGO` char(20) DEFAULT NULL,
  `CAP_CODSUC` char(6) DEFAULT NULL,
  `CAP_FCHVEN` date DEFAULT NULL,
  `CAP_FECHA` date DEFAULT NULL,
  `CAP_HORA` char(8) DEFAULT NULL,
  `CAP_LOTE` char(20) DEFAULT NULL,
  `CAP_PRECIO` decimal(14,2) DEFAULT NULL,
  `CAP_UNDMED` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvcaracteristicas`
--

DROP TABLE IF EXISTS `dpinvcaracteristicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvcaracteristicas` (
  `INC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `INC_CODIGO` char(20) DEFAULT NULL,
  `INC_CODMON` char(3) DEFAULT NULL,
  `INC_CODPRO` char(20) DEFAULT NULL,
  `INC_DESCRI` char(120) DEFAULT NULL,
  `INC_DESPRO` char(120) DEFAULT NULL,
  `INC_INVPRO` char(20) DEFAULT NULL,
  `INC_TIPO` char(20) DEFAULT NULL,
  `INC_VALOR` decimal(19,2) DEFAULT NULL,
  KEY `DPINVCARACTERISTICAS` (`INC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvcaractk`
--

DROP TABLE IF EXISTS `dpinvcaractk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvcaractk` (
  `INC_CODIGO` char(20) DEFAULT NULL,
  `INC_DESCRI` char(120) DEFAULT NULL,
  `INC_TIPO` char(20) DEFAULT NULL,
  `INC_VALOR` decimal(19,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvclasifica`
--

DROP TABLE IF EXISTS `dpinvclasifica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvclasifica` (
  `TIP_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TIP_ALTER` decimal(1,0) DEFAULT NULL,
  `TIP_CODIGO` char(20) DEFAULT NULL,
  `TIP_CODTIP` char(40) DEFAULT NULL,
  `TIP_CODUSU` char(3) DEFAULT NULL,
  `TIP_FECHA` date DEFAULT NULL,
  `TIP_FORMA` char(1) DEFAULT NULL,
  `TIP_GRUPO` char(80) DEFAULT NULL,
  `TIP_HORA` char(8) DEFAULT NULL,
  `TIP_INCIDE` decimal(10,2) DEFAULT NULL,
  `TIP_REQCAN` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvedt`
--

DROP TABLE IF EXISTS `dpinvedt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvedt` (
  `EDT_ACTIVO` decimal(1,0) DEFAULT NULL,
  `EDT_CODIGO` char(20) DEFAULT NULL,
  `EDT_CODINV` char(20) DEFAULT NULL,
  `EDT_COMPET` char(20) DEFAULT NULL,
  `EDT_DESCRI` char(60) DEFAULT NULL,
  `EDT_FILMAI` decimal(7,0) DEFAULT NULL,
  `EDT_NUMMEM` decimal(10,0) DEFAULT NULL,
  `EDT_RECURS` char(20) DEFAULT NULL,
  `EDT_ROL` char(20) DEFAULT NULL,
  KEY `DPINVEDT_2` (`EDT_CODINV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvevaluacion`
--

DROP TABLE IF EXISTS `dpinvevaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvevaluacion` (
  `EXP_CODCLI` char(10) DEFAULT NULL,
  `EXP_CODINV` char(20) DEFAULT NULL,
  `EXP_NUMENT` char(8) DEFAULT NULL,
  `EXP_NUMMEM` decimal(7,0) DEFAULT NULL,
  `EXP_TIPEXP` char(1) DEFAULT NULL,
  `EXP_VALOR` char(10) DEFAULT NULL,
  KEY `DPINVEVALUACION_2` (`EXP_NUMENT`,`EXP_TIPEXP`),
  KEY `DPINVEVALUACION_4` (`EXP_CODCLI`),
  KEY `DPINVEVALUACION_6` (`EXP_CODINV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvmed`
--

DROP TABLE IF EXISTS `dpinvmed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvmed` (
  `IME_CANTID` decimal(10,3) DEFAULT NULL,
  `IME_CODIGO` char(20) DEFAULT NULL,
  `IME_COMPRA` char(1) DEFAULT NULL,
  `IME_MEDPRE` decimal(1,0) DEFAULT NULL,
  `IME_PESO` decimal(8,3) DEFAULT NULL,
  `IME_PRESEN` char(20) DEFAULT NULL,
  `IME_SIGNO` char(1) DEFAULT NULL,
  `IME_UNDMED` char(20) DEFAULT NULL,
  `IME_VENTA` char(1) DEFAULT NULL,
  `IME_VOLUME` decimal(10,3) DEFAULT NULL,
  KEY `DPINVMED_2` (`IME_CODIGO`),
  KEY `DPINVMED_4` (`IME_CODIGO`,`IME_UNDMED`),
  KEY `DPINVMED_6` (`IME_UNDMED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvplaabast`
--

DROP TABLE IF EXISTS `dpinvplaabast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvplaabast` (
  `IPA_CANTID` decimal(14,2) DEFAULT NULL,
  `IPA_CODIGO` char(20) DEFAULT NULL,
  `IPA_CODPRO` char(10) DEFAULT NULL,
  `IPA_CODSUC` char(8) DEFAULT NULL,
  `IPA_COMENT` char(80) DEFAULT NULL,
  `IPA_COSTO` decimal(14,2) DEFAULT NULL,
  `IPA_DIAMES` decimal(2,0) DEFAULT NULL,
  `IPA_EXIMAX` decimal(10,2) DEFAULT NULL,
  `IPA_EXIMIN` decimal(10,2) DEFAULT NULL,
  `IPA_FECHA` date DEFAULT NULL,
  `IPA_HORA` char(8) DEFAULT NULL,
  `IPA_MODEXI` char(1) DEFAULT NULL,
  `IPA_NUMERO` char(6) DEFAULT NULL,
  `IPA_NUMMEM` decimal(8,0) DEFAULT NULL,
  `IPA_NUMREG` char(10) DEFAULT NULL,
  `IPA_PERIOD` char(15) DEFAULT NULL,
  `IPA_SELECC` decimal(1,0) DEFAULT NULL,
  `IPA_TIPCAL` char(10) DEFAULT NULL,
  `IPA_TIPDOC` char(4) DEFAULT NULL,
  `IPA_TIPEXI` char(1) DEFAULT NULL,
  `IPA_TIPREP` char(1) DEFAULT NULL,
  `IPA_UNDMED` char(8) DEFAULT NULL,
  `IPA_USUARI` char(3) DEFAULT NULL,
  KEY `DPINVPLAABAST_2` (`IPA_CODIGO`),
  KEY `DPINVPLAABAST_4` (`IPA_CODIGO`,`IPA_UNDMED`),
  KEY `DPINVPLAABAST_6` (`IPA_CODPRO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvpromocion`
--

DROP TABLE IF EXISTS `dpinvpromocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvpromocion` (
  `PRO_CANPRO` decimal(10,2) DEFAULT NULL,
  `PRO_CANREQ` decimal(10,2) DEFAULT NULL,
  `PRO_CODIGO` char(20) DEFAULT NULL,
  `PRO_FCHFIN` date DEFAULT NULL,
  `PRO_FCHINI` date DEFAULT NULL,
  `PRO_PORPRO` decimal(6,2) DEFAULT NULL,
  `PRO_PRECIO` decimal(14,2) DEFAULT NULL,
  `PRO_UNDMED` char(6) DEFAULT NULL,
  `PRO_UNDPRO` char(6) DEFAULT NULL,
  KEY `DPINVPROMOCION_2` (`PRO_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvsld`
--

DROP TABLE IF EXISTS `dpinvsld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvsld` (
  `SLD_CODALM` char(4) DEFAULT NULL,
  `SLD_CODIGO` char(22) DEFAULT NULL,
  `SLD_CODSUC` char(6) DEFAULT NULL,
  `SLD_CONTAB` decimal(14,2) DEFAULT NULL,
  `SLD_COSPRO` decimal(19,2) DEFAULT NULL,
  `SLD_FCHCOM` date DEFAULT NULL,
  `SLD_FCHVTA` date DEFAULT NULL,
  `SLD_FISICO` decimal(14,2) DEFAULT NULL,
  `SLD_LOGICO` decimal(14,2) DEFAULT NULL,
  KEY `DPINVSLD_2` (`SLD_CODSUC`),
  KEY `DPINVSLD_4` (`SLD_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvtipdoccli`
--

DROP TABLE IF EXISTS `dpinvtipdoccli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvtipdoccli` (
  `PXD_CODIGO` char(20) DEFAULT NULL,
  `PXD_NUMMEM` decimal(10,0) DEFAULT NULL,
  `PXD_SELECT` decimal(1,0) DEFAULT NULL,
  `PXD_TIPDOC` char(3) DEFAULT NULL,
  KEY `DPINVTIPDOCCLI_2` (`PXD_CODIGO`),
  KEY `DPINVTIPDOCCLI_4` (`PXD_TIPDOC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvtran`
--

DROP TABLE IF EXISTS `dpinvtran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvtran` (
  `TAB_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TAB_CODIGO` char(4) NOT NULL,
  `TAB_CTAEGR` char(6) DEFAULT NULL,
  `TAB_CUENTA` char(20) DEFAULT NULL,
  `TAB_DESCRI` char(35) DEFAULT NULL,
  `TAB_UPDATE` decimal(1,0) DEFAULT NULL,
  `TAB_VALEXI` decimal(1,0) DEFAULT NULL,
  PRIMARY KEY (`TAB_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvtran_cta`
--

DROP TABLE IF EXISTS `dpinvtran_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvtran_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(6) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPINVTRAN_CTA_2` (`CIC_CODSUC`),
  KEY `DPINVTRAN_CTA_4` (`CIC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvtran_cta_cta`
--

DROP TABLE IF EXISTS `dpinvtran_cta_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvtran_cta_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(6) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvtransf`
--

DROP TABLE IF EXISTS `dpinvtransf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvtransf` (
  `TNI_ALMDES` char(3) DEFAULT NULL,
  `TNI_ALMORG` char(3) DEFAULT NULL,
  `TNI_CENCOS` char(8) DEFAULT NULL,
  `TNI_CODPER` char(6) DEFAULT NULL,
  `TNI_CODPRO` char(10) DEFAULT NULL,
  `TNI_CODTRA` char(8) DEFAULT NULL,
  `TNI_COMEN1` char(40) DEFAULT NULL,
  `TNI_COMEN2` char(40) DEFAULT NULL,
  `TNI_FECHA` date DEFAULT NULL,
  `TNI_NUMDOC` char(20) DEFAULT NULL,
  `TNI_NUMERO` char(10) DEFAULT NULL,
  `TNI_NUMMEM` decimal(7,0) DEFAULT NULL,
  `TNI_ORIGEN` char(1) DEFAULT NULL,
  `TNI_SUCDES` char(6) DEFAULT NULL,
  `TNI_SUCORG` char(6) DEFAULT NULL,
  `TNI_TIPDOC` char(3) DEFAULT NULL,
  `TNI_TIPTRA` char(1) DEFAULT NULL,
  KEY `DPINVTRANSF_2` (`TNI_CENCOS`),
  KEY `DPINVTRANSF_4` (`TNI_SUCORG`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvubifisica`
--

DROP TABLE IF EXISTS `dpinvubifisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvubifisica` (
  `UXP_ACTIVO` decimal(1,0) DEFAULT NULL,
  `UXP_ANAQUE` char(10) DEFAULT NULL,
  `UXP_CODALM` char(6) DEFAULT NULL,
  `UXP_CODIGO` char(20) DEFAULT NULL,
  `UXP_CODSUC` char(6) DEFAULT NULL,
  `UXP_CODUBI` char(6) DEFAULT NULL,
  `UXP_COMENT` char(40) DEFAULT NULL,
  `UXP_FECHA` date DEFAULT NULL,
  `UXP_PASILL` char(10) DEFAULT NULL,
  KEY `DPINVUBIFISICA_2` (`UXP_CODIGO`),
  KEY `DPINVUBIFISICA_4` (`UXP_CODSUC`,`UXP_CODALM`,`UXP_PASILL`,`UXP_ANAQUE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvurl`
--

DROP TABLE IF EXISTS `dpinvurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvurl` (
  `URL_CODINV` char(20) DEFAULT NULL,
  `URL_IMAGEN` longtext,
  `URL_TEXTO` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvutiliz`
--

DROP TABLE IF EXISTS `dpinvutiliz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvutiliz` (
  `UTL_ABASTE` decimal(1,0) DEFAULT NULL,
  `UTL_ACTIVO` decimal(1,0) DEFAULT NULL,
  `UTL_CODIGO` char(80) NOT NULL,
  `UTL_LIBINV` decimal(1,0) DEFAULT NULL,
  `UTL_TIPO` char(1) DEFAULT NULL,
  `UTL_UBIFIS` decimal(1,0) DEFAULT NULL,
  PRIMARY KEY (`UTL_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpinvxsuc`
--

DROP TABLE IF EXISTS `dpinvxsuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpinvxsuc` (
  `IXS_CODIGO` char(20) DEFAULT NULL,
  `IXS_CODSUC` char(6) DEFAULT NULL,
  `IXS_FECHA` date DEFAULT NULL,
  `IXS_SELECT` decimal(1,0) DEFAULT NULL,
  KEY `DPINVXSUC_2` (`IXS_CODSUC`),
  KEY `DPINVXSUC_4` (`IXS_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpivatab`
--

DROP TABLE IF EXISTS `dpivatab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpivatab` (
  `IVM_FECHA` date NOT NULL,
  `IVM_TASAA1` decimal(6,2) DEFAULT NULL,
  `IVM_TASAA2` decimal(6,2) DEFAULT NULL,
  `IVM_TASARD` decimal(6,2) DEFAULT NULL,
  `IVM_TASART` decimal(6,2) DEFAULT NULL,
  `IVM_TASAVG` decimal(6,2) DEFAULT NULL,
  `IVM_TASAZL` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`IVM_FECHA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpivatabc`
--

DROP TABLE IF EXISTS `dpivatabc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpivatabc` (
  `CTI_COMPRA` decimal(6,2) DEFAULT NULL,
  `CTI_FECHA` date DEFAULT NULL,
  `CTI_OTROS` decimal(6,2) DEFAULT NULL,
  `CTI_SUNTUA` decimal(6,2) DEFAULT NULL,
  `CTI_TIPO` char(2) DEFAULT NULL,
  `CTI_VENTA` decimal(6,2) DEFAULT NULL,
  `CTI_ZONALI` decimal(6,2) DEFAULT NULL,
  KEY `DPIVATABC_2` (`CTI_FECHA`),
  KEY `DPIVATABC_4` (`CTI_TIPO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpivatip`
--

DROP TABLE IF EXISTS `dpivatip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpivatip` (
  `TIP_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TIP_CODIGO` char(2) NOT NULL,
  `TIP_COMPRA` decimal(1,0) DEFAULT NULL,
  `TIP_CTACRE` char(20) DEFAULT NULL,
  `TIP_CTADEB` char(20) DEFAULT NULL,
  `TIP_CTAPRE` char(20) DEFAULT NULL,
  `TIP_DESCRI` char(30) DEFAULT NULL,
  `TIP_MEMO` longtext,
  `TIP_SINCRE` char(20) DEFAULT NULL,
  `TIP_VENTA` decimal(1,0) DEFAULT NULL,
  `TIP_URL` char(250) DEFAULT NULL,
  PRIMARY KEY (`TIP_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpivatip_cta`
--

DROP TABLE IF EXISTS `dpivatip_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpivatip_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(2) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(6) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPIVATIP_CTA_2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPIVATIP_CTA_4` (`CIC_CODSUC`),
  KEY `DPIVATIP_CTA_6` (`CIC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpivsso_concil`
--

DROP TABLE IF EXISTS `dpivsso_concil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpivsso_concil` (
  `IVS_CEDULA` char(14) DEFAULT NULL,
  `IVS_ESTATU` char(120) DEFAULT NULL,
  `IVS_FECHA` date DEFAULT NULL,
  `IVS_NOMBRE` char(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpj26`
--

DROP TABLE IF EXISTS `dpj26`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpj26` (
  `DPJ_72E_764` decimal(16,2) DEFAULT NULL,
  `DPJ_ANO` char(4) DEFAULT NULL,
  `DPJ_CODSUC` char(6) DEFAULT NULL,
  `DPJ_CTAMOD` char(6) DEFAULT NULL,
  `DPJ_C_137` decimal(16,2) DEFAULT NULL,
  `DPJ_C_144` decimal(16,2) DEFAULT NULL,
  `DPJ_C_170` decimal(16,2) DEFAULT NULL,
  `DPJ_C_173` decimal(16,2) DEFAULT NULL,
  `DPJ_C_174` decimal(16,2) DEFAULT NULL,
  `DPJ_C_178` decimal(16,2) DEFAULT NULL,
  `DPJ_C_185` decimal(16,2) DEFAULT NULL,
  `DPJ_C_189` decimal(16,2) DEFAULT NULL,
  `DPJ_C_191` decimal(16,2) DEFAULT NULL,
  `DPJ_C_192` decimal(16,2) DEFAULT NULL,
  `DPJ_C_211` decimal(16,2) DEFAULT NULL,
  `DPJ_C_220` decimal(16,2) DEFAULT NULL,
  `DPJ_C_221` decimal(16,2) DEFAULT NULL,
  `DPJ_C_230` decimal(16,2) DEFAULT NULL,
  `DPJ_C_231` decimal(16,2) DEFAULT NULL,
  `DPJ_C_233` decimal(16,2) DEFAULT NULL,
  `DPJ_C_234` decimal(16,2) DEFAULT NULL,
  `DPJ_C_241` decimal(16,2) DEFAULT NULL,
  `DPJ_C_242` decimal(16,2) DEFAULT NULL,
  `DPJ_C_243` decimal(16,2) DEFAULT NULL,
  `DPJ_C_244` decimal(16,2) DEFAULT NULL,
  `DPJ_C_245` decimal(16,2) DEFAULT NULL,
  `DPJ_C_249` decimal(16,2) DEFAULT NULL,
  `DPJ_C_290` decimal(16,2) DEFAULT NULL,
  `DPJ_C_291` decimal(16,2) DEFAULT NULL,
  `DPJ_C_295` decimal(16,2) DEFAULT NULL,
  `DPJ_C_297` decimal(16,2) DEFAULT NULL,
  `DPJ_C_311` decimal(16,2) DEFAULT NULL,
  `DPJ_C_312` decimal(16,2) DEFAULT NULL,
  `DPJ_C_313` decimal(16,2) DEFAULT NULL,
  `DPJ_C_314` decimal(16,2) DEFAULT NULL,
  `DPJ_C_315` decimal(16,2) DEFAULT NULL,
  `DPJ_C_316` decimal(16,2) DEFAULT NULL,
  `DPJ_C_317` decimal(16,2) DEFAULT NULL,
  `DPJ_C_318` decimal(16,2) DEFAULT NULL,
  `DPJ_C_319` decimal(16,2) DEFAULT NULL,
  `DPJ_C_321` decimal(16,2) DEFAULT NULL,
  `DPJ_C_322` decimal(16,2) DEFAULT NULL,
  `DPJ_C_323` decimal(16,2) DEFAULT NULL,
  `DPJ_C_324` decimal(16,2) DEFAULT NULL,
  `DPJ_C_325` decimal(16,2) DEFAULT NULL,
  `DPJ_C_326` decimal(16,2) DEFAULT NULL,
  `DPJ_C_327` decimal(16,2) DEFAULT NULL,
  `DPJ_C_328` decimal(16,2) DEFAULT NULL,
  `DPJ_C_329` decimal(16,2) DEFAULT NULL,
  `DPJ_C_330` decimal(16,2) DEFAULT NULL,
  `DPJ_C_331` decimal(16,2) DEFAULT NULL,
  `DPJ_C_332` decimal(16,2) DEFAULT NULL,
  `DPJ_C_333` decimal(16,2) DEFAULT NULL,
  `DPJ_C_334` decimal(16,2) DEFAULT NULL,
  `DPJ_C_335` decimal(16,2) DEFAULT NULL,
  `DPJ_C_336` decimal(16,2) DEFAULT NULL,
  `DPJ_C_337` decimal(16,2) DEFAULT NULL,
  `DPJ_C_338` decimal(16,2) DEFAULT NULL,
  `DPJ_C_339` decimal(16,2) DEFAULT NULL,
  `DPJ_C_340` decimal(16,2) DEFAULT NULL,
  `DPJ_C_341` decimal(16,2) DEFAULT NULL,
  `DPJ_C_342` decimal(16,2) DEFAULT NULL,
  `DPJ_C_343` decimal(16,2) DEFAULT NULL,
  `DPJ_C_344` decimal(16,2) DEFAULT NULL,
  `DPJ_C_345` decimal(16,2) DEFAULT NULL,
  `DPJ_C_346` decimal(16,2) DEFAULT NULL,
  `DPJ_C_347` decimal(16,2) DEFAULT NULL,
  `DPJ_C_348` decimal(16,2) DEFAULT NULL,
  `DPJ_C_349` decimal(16,2) DEFAULT NULL,
  `DPJ_C_350` decimal(16,2) DEFAULT NULL,
  `DPJ_C_355` decimal(16,2) DEFAULT NULL,
  `DPJ_C_356` decimal(16,2) DEFAULT NULL,
  `DPJ_C_357` decimal(16,2) DEFAULT NULL,
  `DPJ_C_358` decimal(16,2) DEFAULT NULL,
  `DPJ_C_401` decimal(16,2) DEFAULT NULL,
  `DPJ_C_406` decimal(16,2) DEFAULT NULL,
  `DPJ_C_407` decimal(16,2) DEFAULT NULL,
  `DPJ_C_408` decimal(16,2) DEFAULT NULL,
  `DPJ_C_431` decimal(16,2) DEFAULT NULL,
  `DPJ_C_441` decimal(16,2) DEFAULT NULL,
  `DPJ_C_442` decimal(16,2) DEFAULT NULL,
  `DPJ_C_445` decimal(16,2) DEFAULT NULL,
  `DPJ_C_446` decimal(16,2) DEFAULT NULL,
  `DPJ_C_448` decimal(16,2) DEFAULT NULL,
  `DPJ_C_449` decimal(16,2) DEFAULT NULL,
  `DPJ_C_450` decimal(16,2) DEFAULT NULL,
  `DPJ_C_451` decimal(16,2) DEFAULT NULL,
  `DPJ_C_452` decimal(16,2) DEFAULT NULL,
  `DPJ_C_453` decimal(16,2) DEFAULT NULL,
  `DPJ_C_454` decimal(16,2) DEFAULT NULL,
  `DPJ_C_455` decimal(16,2) DEFAULT NULL,
  `DPJ_C_456` decimal(16,2) DEFAULT NULL,
  `DPJ_C_457` decimal(16,2) DEFAULT NULL,
  `DPJ_C_458` decimal(16,2) DEFAULT NULL,
  `DPJ_C_459` decimal(16,2) DEFAULT NULL,
  `DPJ_C_460` decimal(16,2) DEFAULT NULL,
  `DPJ_C_461` decimal(16,2) DEFAULT NULL,
  `DPJ_C_462` decimal(16,2) DEFAULT NULL,
  `DPJ_C_463` decimal(16,2) DEFAULT NULL,
  `DPJ_C_464` decimal(16,2) DEFAULT NULL,
  `DPJ_C_465` decimal(16,2) DEFAULT NULL,
  `DPJ_C_466` decimal(16,2) DEFAULT NULL,
  `DPJ_C_467` decimal(16,2) DEFAULT NULL,
  `DPJ_C_468` decimal(16,2) DEFAULT NULL,
  `DPJ_C_469` decimal(16,2) DEFAULT NULL,
  `DPJ_C_470` decimal(16,2) DEFAULT NULL,
  `DPJ_C_471` decimal(16,2) DEFAULT NULL,
  `DPJ_C_472` decimal(16,2) DEFAULT NULL,
  `DPJ_C_473` decimal(16,2) DEFAULT NULL,
  `DPJ_C_474` decimal(16,2) DEFAULT NULL,
  `DPJ_C_475` decimal(16,2) DEFAULT NULL,
  `DPJ_C_476` decimal(16,2) DEFAULT NULL,
  `DPJ_C_477` decimal(16,2) DEFAULT NULL,
  `DPJ_C_478` decimal(16,2) DEFAULT NULL,
  `DPJ_C_479` decimal(16,2) DEFAULT NULL,
  `DPJ_C_480` decimal(16,2) DEFAULT NULL,
  `DPJ_C_481` decimal(16,2) DEFAULT NULL,
  `DPJ_C_482` decimal(16,2) DEFAULT NULL,
  `DPJ_C_483` decimal(16,2) DEFAULT NULL,
  `DPJ_C_484` decimal(16,2) DEFAULT NULL,
  `DPJ_C_485` decimal(16,2) DEFAULT NULL,
  `DPJ_C_488` decimal(16,2) DEFAULT NULL,
  `DPJ_C_489` decimal(16,2) DEFAULT NULL,
  `DPJ_C_490` decimal(16,2) DEFAULT NULL,
  `DPJ_C_491` decimal(16,2) DEFAULT NULL,
  `DPJ_C_492` decimal(16,2) DEFAULT NULL,
  `DPJ_C_494` decimal(16,2) DEFAULT NULL,
  `DPJ_C_866` decimal(16,2) DEFAULT NULL,
  `DPJ_C_87` decimal(16,2) DEFAULT NULL,
  `DPJ_C_90` decimal(16,2) DEFAULT NULL,
  `DPJ_DESDE` date DEFAULT NULL,
  `DPJ_D_901` decimal(16,2) DEFAULT NULL,
  `DPJ_D_902` decimal(16,2) DEFAULT NULL,
  `DPJ_D_903` decimal(16,2) DEFAULT NULL,
  `DPJ_D_904` decimal(16,2) DEFAULT NULL,
  `DPJ_D_912` decimal(16,2) DEFAULT NULL,
  `DPJ_D_913` decimal(16,2) DEFAULT NULL,
  `DPJ_D_914` decimal(16,2) DEFAULT NULL,
  `DPJ_D_915` decimal(16,2) DEFAULT NULL,
  `DPJ_D_916` decimal(16,2) DEFAULT NULL,
  `DPJ_D_921` decimal(16,2) DEFAULT NULL,
  `DPJ_D_922` decimal(16,2) DEFAULT NULL,
  `DPJ_D_923` decimal(16,2) DEFAULT NULL,
  `DPJ_D_924` decimal(16,2) DEFAULT NULL,
  `DPJ_D_932` decimal(16,2) DEFAULT NULL,
  `DPJ_D_933` decimal(16,2) DEFAULT NULL,
  `DPJ_D_934` decimal(16,2) DEFAULT NULL,
  `DPJ_D_935` decimal(16,2) DEFAULT NULL,
  `DPJ_D_936` decimal(16,2) DEFAULT NULL,
  `DPJ_D_943` decimal(16,2) DEFAULT NULL,
  `DPJ_D_944` decimal(16,2) DEFAULT NULL,
  `DPJ_D_945` decimal(16,2) DEFAULT NULL,
  `DPJ_D_954` decimal(16,2) DEFAULT NULL,
  `DPJ_D_955` decimal(16,2) DEFAULT NULL,
  `DPJ_D_956` decimal(16,2) DEFAULT NULL,
  `DPJ_D_957` decimal(16,2) DEFAULT NULL,
  `DPJ_D_968` decimal(16,2) DEFAULT NULL,
  `DPJ_E_602` decimal(16,2) DEFAULT NULL,
  `DPJ_E_697` decimal(16,2) DEFAULT NULL,
  `DPJ_E_698` decimal(16,2) DEFAULT NULL,
  `DPJ_E_700` decimal(19,2) DEFAULT NULL,
  `DPJ_E_701` decimal(16,2) DEFAULT NULL,
  `DPJ_E_702` decimal(16,2) DEFAULT NULL,
  `DPJ_E_703` decimal(16,2) DEFAULT NULL,
  `DPJ_E_704` decimal(16,2) DEFAULT NULL,
  `DPJ_E_705` decimal(16,2) DEFAULT NULL,
  `DPJ_E_706` decimal(16,2) DEFAULT NULL,
  `DPJ_E_707` decimal(16,2) DEFAULT NULL,
  `DPJ_E_708` decimal(16,2) DEFAULT NULL,
  `DPJ_E_709` decimal(16,2) DEFAULT NULL,
  `DPJ_E_710` decimal(16,2) DEFAULT NULL,
  `DPJ_E_711` decimal(16,2) DEFAULT NULL,
  `DPJ_E_712` decimal(16,2) DEFAULT NULL,
  `DPJ_E_713` decimal(16,2) DEFAULT NULL,
  `DPJ_E_714` decimal(16,2) DEFAULT NULL,
  `DPJ_E_715` decimal(16,2) DEFAULT NULL,
  `DPJ_E_716` decimal(16,2) DEFAULT NULL,
  `DPJ_E_717` decimal(16,2) DEFAULT NULL,
  `DPJ_E_718` decimal(16,2) DEFAULT NULL,
  `DPJ_E_719` decimal(16,2) DEFAULT NULL,
  `DPJ_E_720` decimal(16,2) DEFAULT NULL,
  `DPJ_E_721` decimal(16,2) DEFAULT NULL,
  `DPJ_E_722` decimal(16,2) DEFAULT NULL,
  `DPJ_E_723` decimal(16,2) DEFAULT NULL,
  `DPJ_E_724` decimal(16,2) DEFAULT NULL,
  `DPJ_E_725` decimal(16,2) DEFAULT NULL,
  `DPJ_E_726` decimal(16,2) DEFAULT NULL,
  `DPJ_E_727` decimal(16,2) DEFAULT NULL,
  `DPJ_E_728` decimal(16,2) DEFAULT NULL,
  `DPJ_E_729` decimal(16,2) DEFAULT NULL,
  `DPJ_E_730` decimal(16,2) DEFAULT NULL,
  `DPJ_E_731` decimal(16,2) DEFAULT NULL,
  `DPJ_E_732` decimal(16,2) DEFAULT NULL,
  `DPJ_E_733` decimal(16,2) DEFAULT NULL,
  `DPJ_E_734` decimal(16,2) DEFAULT NULL,
  `DPJ_E_735` decimal(16,2) DEFAULT NULL,
  `DPJ_E_736` decimal(16,2) DEFAULT NULL,
  `DPJ_E_737` decimal(16,2) DEFAULT NULL,
  `DPJ_E_738` decimal(16,2) DEFAULT NULL,
  `DPJ_E_739` decimal(16,2) DEFAULT NULL,
  `DPJ_E_740` decimal(16,2) DEFAULT NULL,
  `DPJ_E_741` decimal(16,2) DEFAULT NULL,
  `DPJ_E_742` decimal(16,2) DEFAULT NULL,
  `DPJ_E_743` decimal(16,2) DEFAULT NULL,
  `DPJ_E_744` decimal(16,2) DEFAULT NULL,
  `DPJ_E_745` decimal(16,2) DEFAULT NULL,
  `DPJ_E_746` decimal(16,2) DEFAULT NULL,
  `DPJ_E_747` decimal(16,2) DEFAULT NULL,
  `DPJ_E_748` decimal(16,2) DEFAULT NULL,
  `DPJ_E_749` decimal(16,2) DEFAULT NULL,
  `DPJ_E_750` decimal(16,2) DEFAULT NULL,
  `DPJ_E_751` decimal(16,2) DEFAULT NULL,
  `DPJ_E_752` decimal(16,2) DEFAULT NULL,
  `DPJ_E_753` decimal(16,2) DEFAULT NULL,
  `DPJ_E_754` decimal(16,2) DEFAULT NULL,
  `DPJ_E_756` decimal(16,2) DEFAULT NULL,
  `DPJ_E_757` decimal(16,2) DEFAULT NULL,
  `DPJ_E_758` decimal(16,2) DEFAULT NULL,
  `DPJ_E_759` decimal(16,2) DEFAULT NULL,
  `DPJ_E_760` decimal(16,2) DEFAULT NULL,
  `DPJ_E_761` decimal(16,2) DEFAULT NULL,
  `DPJ_E_762` decimal(16,2) DEFAULT NULL,
  `DPJ_E_763` decimal(16,2) DEFAULT NULL,
  `DPJ_E_764` decimal(16,2) DEFAULT NULL,
  `DPJ_E_776` decimal(16,2) DEFAULT NULL,
  `DPJ_E_797` decimal(16,2) DEFAULT NULL,
  `DPJ_E_799` decimal(16,2) DEFAULT NULL,
  `DPJ_E_970` decimal(16,2) DEFAULT NULL,
  `DPJ_E_971` decimal(16,2) DEFAULT NULL,
  `DPJ_E_972` decimal(16,2) DEFAULT NULL,
  `DPJ_E_973` decimal(16,2) DEFAULT NULL,
  `DPJ_E_974` decimal(16,2) DEFAULT NULL,
  `DPJ_F_780` decimal(16,2) DEFAULT NULL,
  `DPJ_F_781` decimal(16,2) DEFAULT NULL,
  `DPJ_F_782` decimal(16,2) DEFAULT NULL,
  `DPJ_F_785` decimal(16,2) DEFAULT NULL,
  `DPJ_F_786` decimal(16,2) DEFAULT NULL,
  `DPJ_F_787` decimal(16,2) DEFAULT NULL,
  `DPJ_F_788` decimal(16,2) DEFAULT NULL,
  `DPJ_G_155` decimal(16,2) DEFAULT NULL,
  `DPJ_G_156` decimal(16,2) DEFAULT NULL,
  `DPJ_G_157` decimal(16,2) DEFAULT NULL,
  `DPJ_G_158` decimal(16,2) DEFAULT NULL,
  `DPJ_G_160` decimal(16,2) DEFAULT NULL,
  `DPJ_G_161` decimal(16,2) DEFAULT NULL,
  `DPJ_G_162` decimal(16,2) DEFAULT NULL,
  `DPJ_G_166` decimal(16,2) DEFAULT NULL,
  `DPJ_G_168` decimal(16,2) DEFAULT NULL,
  `DPJ_G_169` decimal(16,2) DEFAULT NULL,
  `DPJ_G_171` decimal(16,2) DEFAULT NULL,
  `DPJ_G_172` decimal(16,2) DEFAULT NULL,
  `DPJ_G_177` decimal(16,2) DEFAULT NULL,
  `DPJ_G_179` decimal(16,2) DEFAULT NULL,
  `DPJ_G_180` decimal(16,2) DEFAULT NULL,
  `DPJ_G_190` decimal(16,2) DEFAULT NULL,
  `DPJ_G_191` decimal(16,2) DEFAULT NULL,
  `DPJ_G_192` decimal(16,2) DEFAULT NULL,
  `DPJ_G_193` decimal(16,2) DEFAULT NULL,
  `DPJ_G_194` decimal(16,2) DEFAULT NULL,
  `DPJ_G_196` decimal(16,2) DEFAULT NULL,
  `DPJ_G_197` decimal(16,2) DEFAULT NULL,
  `DPJ_HASTA` date DEFAULT NULL,
  `DPJ_H_861` decimal(16,2) DEFAULT NULL,
  `DPJ_H_862` decimal(16,2) DEFAULT NULL,
  `DPJ_H_863` decimal(16,2) DEFAULT NULL,
  `DPJ_H_864` decimal(16,2) DEFAULT NULL,
  `DPJ_H_870` decimal(16,2) DEFAULT NULL,
  `DPJ_I_165` decimal(16,2) DEFAULT NULL,
  `DPJ_I_166` decimal(16,2) DEFAULT NULL,
  `DPJ_I_167` decimal(16,2) DEFAULT NULL,
  `DPJ_I_212` decimal(16,2) DEFAULT NULL,
  `DPJ_I_213` decimal(16,2) DEFAULT NULL,
  `DPJ_I_214` decimal(16,2) DEFAULT NULL,
  `DPJ_I_242` decimal(16,2) DEFAULT NULL,
  `DPJ_J_241` decimal(16,2) DEFAULT NULL,
  `DPJ_J_246` decimal(16,2) DEFAULT NULL,
  `DPJ_J_247` decimal(16,2) DEFAULT NULL,
  `DPJ_J_248` decimal(16,2) DEFAULT NULL,
  `DPJ_J_250` decimal(16,2) DEFAULT NULL,
  `DPJ_J_252` decimal(16,2) DEFAULT NULL,
  `DPJ_K_790` decimal(16,2) DEFAULT NULL,
  `DPJ_K_791` decimal(16,2) DEFAULT NULL,
  `DPJ_K_792` decimal(19,0) DEFAULT NULL,
  `DPJ_K_793` decimal(19,0) DEFAULT NULL,
  `DPJ_K_794` decimal(19,0) DEFAULT NULL,
  `DPJ_K_795` decimal(19,0) DEFAULT NULL,
  `DPJ_K_939` decimal(19,0) DEFAULT NULL,
  `DPJ_K_940` decimal(19,0) DEFAULT NULL,
  `DPJ_NUMEJE` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dplibcompras`
--

DROP TABLE IF EXISTS `dplibcompras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dplibcompras` (
  `LIB_CODIGO` char(5) DEFAULT NULL,
  `LIB_CODSUC` char(6) DEFAULT NULL,
  `LIB_FCHEJE` date DEFAULT NULL,
  `LIB_FECHA` date DEFAULT NULL,
  `LIB_OPEN` decimal(1,0) DEFAULT NULL,
  `LIB_OPENR` decimal(1,0) DEFAULT NULL,
  KEY `DPLIBCOMPRAS_2` (`LIB_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dplibcomprasdet`
--

DROP TABLE IF EXISTS `dplibcomprasdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dplibcomprasdet` (
  `LBC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `LBC_ANTEXT` decimal(19,2) DEFAULT NULL,
  `LBC_ANTNAC` decimal(19,2) DEFAULT NULL,
  `LBC_BASEX` decimal(19,2) DEFAULT NULL,
  `LBC_BASGN` decimal(19,2) DEFAULT NULL,
  `LBC_BASIMP` decimal(19,2) DEFAULT NULL,
  `LBC_BASRD` decimal(19,2) DEFAULT NULL,
  `LBC_BASRED` decimal(19,2) DEFAULT NULL,
  `LBC_BASS1` decimal(19,2) DEFAULT NULL,
  `LBC_BASS2` decimal(19,2) DEFAULT NULL,
  `LBC_CBTNUM` char(10) DEFAULT NULL,
  `LBC_CENCOS` char(8) DEFAULT NULL,
  `LBC_CODBCO` char(20) DEFAULT NULL,
  `LBC_CODCAJ` char(6) DEFAULT NULL,
  `LBC_CODCLI` char(10) DEFAULT NULL,
  `LBC_CODCTA` char(20) DEFAULT NULL,
  `LBC_CODIGO` char(10) DEFAULT NULL,
  `LBC_CODMOD` char(6) DEFAULT NULL,
  `LBC_CODMON` char(3) DEFAULT NULL,
  `LBC_CODRMU` char(6) DEFAULT NULL,
  `LBC_CODSUC` char(6) DEFAULT NULL,
  `LBC_COMORG` char(12) DEFAULT NULL,
  `LBC_CONISR` char(3) DEFAULT NULL,
  `LBC_CREFIS` decimal(1,0) DEFAULT NULL,
  `LBC_CTABCO` char(20) DEFAULT NULL,
  `LBC_CTACON` char(20) DEFAULT NULL,
  `LBC_CTAEGR` char(20) DEFAULT NULL,
  `LBC_CXP` decimal(1,0) DEFAULT NULL,
  `LBC_DESCRI` char(140) DEFAULT NULL,
  `LBC_FACAFE` char(20) DEFAULT NULL,
  `LBC_FCHDEC` date DEFAULT NULL,
  `LBC_FCHREG` date DEFAULT NULL,
  `LBC_FCHRET` date DEFAULT NULL,
  `LBC_FCHRTI` date DEFAULT NULL,
  `LBC_FECHA` date DEFAULT NULL,
  `LBC_ID` char(40) DEFAULT NULL,
  `LBC_INSTRU` char(4) DEFAULT NULL,
  `LBC_ITEM` char(5) DEFAULT NULL,
  `LBC_IVA_GN` decimal(19,0) DEFAULT NULL,
  `LBC_IVA_RD` decimal(19,0) DEFAULT NULL,
  `LBC_IVA_S1` decimal(19,0) DEFAULT NULL,
  `LBC_MTOANT` decimal(19,2) DEFAULT NULL,
  `LBC_MTOBAS` decimal(19,2) DEFAULT NULL,
  `LBC_MTOEXE` decimal(19,2) DEFAULT NULL,
  `LBC_MTOEXO` decimal(19,0) DEFAULT NULL,
  `LBC_MTOIGT` decimal(19,2) DEFAULT NULL,
  `LBC_MTOISR` decimal(19,2) DEFAULT NULL,
  `LBC_MTOIVA` decimal(19,2) DEFAULT NULL,
  `LBC_MTONCF` decimal(19,0) DEFAULT NULL,
  `LBC_MTONET` decimal(19,2) DEFAULT NULL,
  `LBC_MTONSJ` decimal(19,0) DEFAULT NULL,
  `LBC_MTOPAG` decimal(19,2) DEFAULT NULL,
  `LBC_MTORMU` decimal(19,2) DEFAULT NULL,
  `LBC_MTORTI` decimal(19,2) DEFAULT NULL,
  `LBC_NODEDU` decimal(1,0) DEFAULT NULL,
  `LBC_NOTCRE` char(10) DEFAULT NULL,
  `LBC_NOTDEB` char(10) DEFAULT NULL,
  `LBC_NUMCBT` char(8) DEFAULT NULL,
  `LBC_NUMFAC` char(20) DEFAULT NULL,
  `LBC_NUMFIL` decimal(8,0) DEFAULT NULL,
  `LBC_NUMFIS` char(20) DEFAULT NULL,
  `LBC_NUMISR` char(10) DEFAULT NULL,
  `LBC_NUMPAR` char(6) DEFAULT NULL,
  `LBC_NUMRMU` char(6) DEFAULT NULL,
  `LBC_NUMRTI` char(10) DEFAULT NULL,
  `LBC_ORDER` char(6) DEFAULT NULL,
  `LBC_ORIGEN` char(3) DEFAULT NULL,
  `LBC_PAGEXT` decimal(19,2) DEFAULT NULL,
  `LBC_PAGNAC` decimal(19,2) DEFAULT NULL,
  `LBC_PARCBT` char(5) DEFAULT NULL,
  `LBC_PLAIMP` char(10) DEFAULT NULL,
  `LBC_PORISR` decimal(2,0) DEFAULT NULL,
  `LBC_PORIVA` decimal(5,2) DEFAULT NULL,
  `LBC_PORRMU` decimal(5,2) DEFAULT NULL,
  `LBC_PORRTI` decimal(6,2) DEFAULT NULL,
  `LBC_REGPLA` char(8) DEFAULT NULL,
  `LBC_RIF` char(15) DEFAULT NULL,
  `LBC_TIPDOC` char(3) DEFAULT NULL,
  `LBC_TIPIVA` char(2) DEFAULT NULL,
  `LBC_TIPTRA` char(6) DEFAULT NULL,
  `LBC_USOCON` char(20) DEFAULT NULL,
  `LBC_USUARI` char(3) DEFAULT NULL,
  `LBC_VALCAM` decimal(19,6) DEFAULT NULL,
  KEY `DPLIBCOMPRASDET_2` (`LBC_CODMOD`,`LBC_CODCTA`),
  KEY `DPLIBCOMPRASDET_4` (`LBC_CTAEGR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dplibinv`
--

DROP TABLE IF EXISTS `dplibinv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dplibinv` (
  `LIV_AXIFIN` decimal(1,0) DEFAULT NULL,
  `LIV_AXIFIS` decimal(1,0) DEFAULT NULL,
  `LIV_CODSUC` char(6) DEFAULT NULL,
  `LIV_CONTAB` decimal(1,0) DEFAULT NULL,
  `LIV_FECHA` date DEFAULT NULL,
  `LIV_FECHAS` date DEFAULT NULL,
  `LIV_INPC_F` decimal(10,3) DEFAULT NULL,
  `LIV_INPC_I` decimal(10,2) DEFAULT NULL,
  `LIV_INPC_V` decimal(15,5) DEFAULT NULL,
  `LIV_IP` char(10) DEFAULT NULL,
  `LIV_NUMCBT` char(8) DEFAULT NULL,
  `LIV_NUMEJE` decimal(4,0) DEFAULT NULL,
  `LIV_NUMERO` char(6) DEFAULT NULL,
  `LIV_USUARI` char(3) DEFAULT NULL,
  KEY `DPLIBINV_2` (`LIV_CODSUC`,`LIV_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dplibinvdet`
--

DROP TABLE IF EXISTS `dplibinvdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dplibinvdet` (
  `DLI_ACTFIN` decimal(19,2) DEFAULT NULL,
  `DLI_CANANT` decimal(16,2) DEFAULT NULL,
  `DLI_CANCOM` decimal(16,2) DEFAULT NULL,
  `DLI_CANENT` decimal(16,2) DEFAULT NULL,
  `DLI_CANSAL` decimal(16,2) DEFAULT NULL,
  `DLI_CANVTA` decimal(16,2) DEFAULT NULL,
  `DLI_CODIGO` char(20) DEFAULT NULL,
  `DLI_CODSUC` char(6) DEFAULT NULL,
  `DLI_COSANT` decimal(16,2) DEFAULT NULL,
  `DLI_COSCOM` decimal(16,2) DEFAULT NULL,
  `DLI_COSENT` decimal(16,2) DEFAULT NULL,
  `DLI_COSINV` decimal(19,2) DEFAULT NULL,
  `DLI_COSPRO` decimal(19,2) DEFAULT NULL,
  `DLI_COSSAL` decimal(16,2) DEFAULT NULL,
  `DLI_COSVTA` decimal(16,2) DEFAULT NULL,
  `DLI_FECHA` date DEFAULT NULL,
  `DLI_INDROT` decimal(8,2) DEFAULT NULL,
  `DLI_INPC` decimal(10,3) DEFAULT NULL,
  `DLI_IPC` decimal(10,3) DEFAULT NULL,
  `DLI_NUMERO` char(6) DEFAULT NULL,
  `DLI_SALDO` decimal(19,2) DEFAULT NULL,
  KEY `DPLIBINVDET1` (`DLI_FECHA`),
  KEY `DPLIBINVDET2` (`DLI_CODSUC`,`DLI_CODIGO`,`DLI_FECHA`),
  KEY `DPLIBINVDET4` (`DLI_CODIGO`),
  KEY `DPLIBINVDET6` (`DLI_CODSUC`,`DLI_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dplibinvdetcapas`
--

DROP TABLE IF EXISTS `dplibinvdetcapas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dplibinvdetcapas` (
  `CAP_ACT` decimal(2,0) DEFAULT NULL,
  `CAP_ACTINPC` decimal(19,2) DEFAULT NULL,
  `CAP_ACTIPC` decimal(19,2) DEFAULT NULL,
  `CAP_CANTID` decimal(16,2) DEFAULT NULL,
  `CAP_CODIGO` char(20) DEFAULT NULL,
  `CAP_CODSUC` char(6) DEFAULT NULL,
  `CAP_FECHA` date DEFAULT NULL,
  `CAP_INPC` decimal(14,5) DEFAULT NULL,
  `CAP_IPC` decimal(14,5) DEFAULT NULL,
  KEY `DPLIBINVDETCAPAS_2` (`CAP_CODSUC`,`CAP_CODIGO`,`CAP_FECHA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dplibventasdet`
--

DROP TABLE IF EXISTS `dplibventasdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dplibventasdet` (
  `LBC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `LBC_ANTEXT` decimal(19,2) DEFAULT NULL,
  `LBC_ANTNAC` decimal(19,2) DEFAULT NULL,
  `LBC_BASEX` decimal(19,2) DEFAULT NULL,
  `LBC_BASGN` decimal(19,2) DEFAULT NULL,
  `LBC_BASIMP` decimal(19,2) DEFAULT NULL,
  `LBC_BASRD` decimal(19,2) DEFAULT NULL,
  `LBC_BASRED` decimal(19,2) DEFAULT NULL,
  `LBC_BASS1` decimal(19,2) DEFAULT NULL,
  `LBC_BASS2` decimal(19,2) DEFAULT NULL,
  `LBC_CBTNUM` char(10) DEFAULT NULL,
  `LBC_CENCOS` char(8) DEFAULT NULL,
  `LBC_CODBCO` char(20) DEFAULT NULL,
  `LBC_CODCAJ` char(6) DEFAULT NULL,
  `LBC_CODCLI` char(10) DEFAULT NULL,
  `LBC_CODCTA` char(20) DEFAULT NULL,
  `LBC_CODIGO` char(10) DEFAULT NULL,
  `LBC_CODMOD` char(6) DEFAULT NULL,
  `LBC_CODMON` char(3) DEFAULT NULL,
  `LBC_CODRMU` char(6) DEFAULT NULL,
  `LBC_CODSUC` char(6) DEFAULT NULL,
  `LBC_COMORG` char(12) DEFAULT NULL,
  `LBC_CONISR` char(3) DEFAULT NULL,
  `LBC_CREFIS` decimal(1,0) DEFAULT NULL,
  `LBC_CTABCO` char(20) DEFAULT NULL,
  `LBC_CTACON` char(20) DEFAULT NULL,
  `LBC_CTAEGR` char(20) DEFAULT NULL,
  `LBC_CXC` decimal(1,0) DEFAULT NULL,
  `LBC_DESCRI` char(140) DEFAULT NULL,
  `LBC_FACAFE` char(20) DEFAULT NULL,
  `LBC_FCHDEC` date DEFAULT NULL,
  `LBC_FCHREG` date DEFAULT NULL,
  `LBC_FCHRET` date DEFAULT NULL,
  `LBC_FCHRTI` date DEFAULT NULL,
  `LBC_FECHA` date DEFAULT NULL,
  `LBC_ID` char(40) DEFAULT NULL,
  `LBC_INSTRU` char(4) DEFAULT NULL,
  `LBC_ITEM` char(5) DEFAULT NULL,
  `LBC_IVA_GN` decimal(19,0) DEFAULT NULL,
  `LBC_IVA_RD` decimal(19,0) DEFAULT NULL,
  `LBC_IVA_S1` decimal(19,0) DEFAULT NULL,
  `LBC_MTOANT` decimal(19,2) DEFAULT NULL,
  `LBC_MTOBAS` decimal(19,2) DEFAULT NULL,
  `LBC_MTOEXE` decimal(19,2) DEFAULT NULL,
  `LBC_MTOEXO` decimal(19,0) DEFAULT NULL,
  `LBC_MTOIGT` decimal(19,2) DEFAULT NULL,
  `LBC_MTOISR` decimal(19,2) DEFAULT NULL,
  `LBC_MTOIVA` decimal(19,2) DEFAULT NULL,
  `LBC_MTONCF` decimal(19,0) DEFAULT NULL,
  `LBC_MTONET` decimal(19,2) DEFAULT NULL,
  `LBC_MTONSJ` decimal(19,0) DEFAULT NULL,
  `LBC_MTOPAG` decimal(19,2) DEFAULT NULL,
  `LBC_MTORMU` decimal(19,2) DEFAULT NULL,
  `LBC_MTORTI` decimal(19,2) DEFAULT NULL,
  `LBC_NODEDU` decimal(1,0) DEFAULT NULL,
  `LBC_NOTCRE` char(10) DEFAULT NULL,
  `LBC_NOTDEB` char(10) DEFAULT NULL,
  `LBC_NUMCBT` char(8) DEFAULT NULL,
  `LBC_NUMFAC` char(20) DEFAULT NULL,
  `LBC_NUMFIL` decimal(8,0) DEFAULT NULL,
  `LBC_NUMFIS` char(20) DEFAULT NULL,
  `LBC_NUMISR` char(10) DEFAULT NULL,
  `LBC_NUMPAR` char(6) DEFAULT NULL,
  `LBC_NUMRMU` char(6) DEFAULT NULL,
  `LBC_NUMRTI` char(10) DEFAULT NULL,
  `LBC_ORDER` char(6) DEFAULT NULL,
  `LBC_ORIGEN` char(3) DEFAULT NULL,
  `LBC_PAGEXT` decimal(19,2) DEFAULT NULL,
  `LBC_PAGNAC` decimal(19,2) DEFAULT NULL,
  `LBC_PARCBT` char(5) DEFAULT NULL,
  `LBC_PLAIMP` char(10) DEFAULT NULL,
  `LBC_PORISR` decimal(2,0) DEFAULT NULL,
  `LBC_PORIVA` decimal(5,2) DEFAULT NULL,
  `LBC_PORRMU` decimal(5,2) DEFAULT NULL,
  `LBC_PORRTI` decimal(6,2) DEFAULT NULL,
  `LBC_REGPLA` char(8) DEFAULT NULL,
  `LBC_RIF` char(15) DEFAULT NULL,
  `LBC_SERFIS` char(2) DEFAULT NULL,
  `LBC_TIPDOC` char(3) DEFAULT NULL,
  `LBC_TIPIVA` char(2) DEFAULT NULL,
  `LBC_TIPTRA` char(6) DEFAULT NULL,
  `LBC_USOCON` char(20) DEFAULT NULL,
  `LBC_USUARI` char(3) DEFAULT NULL,
  `LBC_VALCAM` decimal(19,6) DEFAULT NULL,
  KEY `DPLIBVENTASDET_2` (`LBC_CODIGO`),
  KEY `DPLIBVENTASDET_4` (`LBC_CODMOD`,`LBC_CODCTA`),
  KEY `DPLIBVENTASDET_6` (`LBC_CTAEGR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpliqforma28`
--

DROP TABLE IF EXISTS `dpliqforma28`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpliqforma28` (
  `F28_173` decimal(17,2) DEFAULT NULL,
  `F28_174` decimal(17,2) DEFAULT NULL,
  `F28_181` decimal(17,2) DEFAULT NULL,
  `F28_182` decimal(17,2) DEFAULT NULL,
  `F28_183` decimal(17,2) DEFAULT NULL,
  `F28_184` decimal(17,2) DEFAULT NULL,
  `F28_185` decimal(17,2) DEFAULT NULL,
  `F28_186` decimal(17,2) DEFAULT NULL,
  `F28_187` decimal(17,2) DEFAULT NULL,
  `F28_188` decimal(17,2) DEFAULT NULL,
  `F28_189` decimal(17,2) DEFAULT NULL,
  `F28_196` decimal(17,2) DEFAULT NULL,
  `F28_197` decimal(17,2) DEFAULT NULL,
  `F28_198` decimal(17,2) DEFAULT NULL,
  `F28_199` decimal(17,2) DEFAULT NULL,
  `F28_221` decimal(17,2) DEFAULT NULL,
  `F28_233` decimal(17,2) DEFAULT NULL,
  `F28_241` decimal(17,2) DEFAULT NULL,
  `F28_242` decimal(17,2) DEFAULT NULL,
  `F28_243` decimal(17,2) DEFAULT NULL,
  `F28_244` decimal(17,2) DEFAULT NULL,
  `F28_245` decimal(17,2) DEFAULT NULL,
  `F28_249` decimal(17,2) DEFAULT NULL,
  `F28_280` decimal(17,2) DEFAULT NULL,
  `F28_290` decimal(17,2) DEFAULT NULL,
  `F28_291` decimal(17,2) DEFAULT NULL,
  `F28_297` decimal(17,2) DEFAULT NULL,
  `F28_311` decimal(17,2) DEFAULT NULL,
  `F28_312` decimal(17,2) DEFAULT NULL,
  `F28_313` decimal(17,2) DEFAULT NULL,
  `F28_314` decimal(17,2) DEFAULT NULL,
  `F28_315` decimal(17,2) DEFAULT NULL,
  `F28_316` decimal(17,2) DEFAULT NULL,
  `F28_317` decimal(17,2) DEFAULT NULL,
  `F28_318` decimal(17,2) DEFAULT NULL,
  `F28_319` decimal(17,2) DEFAULT NULL,
  `F28_321` decimal(17,2) DEFAULT NULL,
  `F28_322` decimal(17,2) DEFAULT NULL,
  `F28_323` decimal(17,2) DEFAULT NULL,
  `F28_324` decimal(17,2) DEFAULT NULL,
  `F28_325` decimal(17,2) DEFAULT NULL,
  `F28_326` decimal(17,2) DEFAULT NULL,
  `F28_327` decimal(17,2) DEFAULT NULL,
  `F28_328` decimal(17,2) DEFAULT NULL,
  `F28_329` decimal(17,2) DEFAULT NULL,
  `F28_330` decimal(17,2) DEFAULT NULL,
  `F28_331` decimal(17,2) DEFAULT NULL,
  `F28_332` decimal(17,2) DEFAULT NULL,
  `F28_333` decimal(17,2) DEFAULT NULL,
  `F28_334` decimal(17,2) DEFAULT NULL,
  `F28_335` decimal(17,2) DEFAULT NULL,
  `F28_336` decimal(17,2) DEFAULT NULL,
  `F28_337` decimal(17,2) DEFAULT NULL,
  `F28_338` decimal(17,2) DEFAULT NULL,
  `F28_339` decimal(17,2) DEFAULT NULL,
  `F28_340` decimal(17,2) DEFAULT NULL,
  `F28_341` decimal(17,2) DEFAULT NULL,
  `F28_342` decimal(17,2) DEFAULT NULL,
  `F28_343` decimal(17,2) DEFAULT NULL,
  `F28_344` decimal(17,2) DEFAULT NULL,
  `F28_345` decimal(17,2) DEFAULT NULL,
  `F28_355` decimal(17,2) DEFAULT NULL,
  `F28_356` decimal(17,2) DEFAULT NULL,
  `F28_401` decimal(17,2) DEFAULT NULL,
  `F28_406` decimal(17,2) DEFAULT NULL,
  `F28_431` decimal(17,2) DEFAULT NULL,
  `F28_87` decimal(17,2) DEFAULT NULL,
  `F28_90` decimal(17,2) DEFAULT NULL,
  `F28_ANO` char(4) DEFAULT NULL,
  `F28_CBTPAG` char(8) DEFAULT NULL,
  `F28_CODSUC` char(8) DEFAULT NULL,
  KEY `DPLIQFORMA28_2` (`F28_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpliqforma30`
--

DROP TABLE IF EXISTS `dpliqforma30`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpliqforma30` (
  `F30_20` decimal(17,2) DEFAULT NULL,
  `F30_21` decimal(17,2) DEFAULT NULL,
  `F30_22` decimal(17,2) DEFAULT NULL,
  `F30_24` decimal(17,2) DEFAULT NULL,
  `F30_30` decimal(17,2) DEFAULT NULL,
  `F30_31` decimal(17,2) DEFAULT NULL,
  `F30_312` decimal(17,2) DEFAULT NULL,
  `F30_313` decimal(17,2) DEFAULT NULL,
  `F30_32` decimal(17,2) DEFAULT NULL,
  `F30_322` decimal(17,2) DEFAULT NULL,
  `F30_323` decimal(17,2) DEFAULT NULL,
  `F30_33` decimal(17,2) DEFAULT NULL,
  `F30_332` decimal(17,2) DEFAULT NULL,
  `F30_333` decimal(17,2) DEFAULT NULL,
  `F30_34` decimal(17,2) DEFAULT NULL,
  `F30_342` decimal(17,2) DEFAULT NULL,
  `F30_343` decimal(17,2) DEFAULT NULL,
  `F30_35` decimal(17,2) DEFAULT NULL,
  `F30_36` decimal(17,2) DEFAULT NULL,
  `F30_37` decimal(17,2) DEFAULT NULL,
  `F30_38` decimal(17,2) DEFAULT NULL,
  `F30_39` decimal(17,2) DEFAULT NULL,
  `F30_40` decimal(17,2) DEFAULT NULL,
  `F30_41` decimal(17,2) DEFAULT NULL,
  `F30_42` decimal(17,2) DEFAULT NULL,
  `F30_43` decimal(17,2) DEFAULT NULL,
  `F30_442` decimal(17,2) DEFAULT NULL,
  `F30_443` decimal(17,2) DEFAULT NULL,
  `F30_452` decimal(17,2) DEFAULT NULL,
  `F30_453` decimal(17,2) DEFAULT NULL,
  `F30_46` decimal(17,2) DEFAULT NULL,
  `F30_47` decimal(17,2) DEFAULT NULL,
  `F30_48` decimal(17,2) DEFAULT NULL,
  `F30_49` decimal(17,2) DEFAULT NULL,
  `F30_50` decimal(17,2) DEFAULT NULL,
  `F30_51` decimal(17,2) DEFAULT NULL,
  `F30_52` decimal(17,2) DEFAULT NULL,
  `F30_53` decimal(17,2) DEFAULT NULL,
  `F30_54` decimal(17,2) DEFAULT NULL,
  `F30_55` decimal(17,2) DEFAULT NULL,
  `F30_56` decimal(17,2) DEFAULT NULL,
  `F30_57` decimal(17,2) DEFAULT NULL,
  `F30_58` decimal(17,2) DEFAULT NULL,
  `F30_60` decimal(17,2) DEFAULT NULL,
  `F30_61` decimal(17,2) DEFAULT NULL,
  `F30_62` decimal(17,2) DEFAULT NULL,
  `F30_65` decimal(17,2) DEFAULT NULL,
  `F30_66` decimal(17,2) DEFAULT NULL,
  `F30_67` decimal(17,2) DEFAULT NULL,
  `F30_68` decimal(17,2) DEFAULT NULL,
  `F30_69` decimal(17,2) DEFAULT NULL,
  `F30_70` decimal(17,2) DEFAULT NULL,
  `F30_71` decimal(17,2) DEFAULT NULL,
  `F30_72` decimal(17,2) DEFAULT NULL,
  `F30_73` decimal(17,2) DEFAULT NULL,
  `F30_74` decimal(17,2) DEFAULT NULL,
  `F30_75` decimal(17,2) DEFAULT NULL,
  `F30_76` decimal(17,2) DEFAULT NULL,
  `F30_77` decimal(17,2) DEFAULT NULL,
  `F30_78` decimal(17,2) DEFAULT NULL,
  `F30_80` decimal(17,2) DEFAULT NULL,
  `F30_81` decimal(17,2) DEFAULT NULL,
  `F30_82` decimal(17,2) DEFAULT NULL,
  `F30_90` decimal(17,2) DEFAULT NULL,
  `F30_911` decimal(17,2) DEFAULT NULL,
  `F30_912` decimal(17,2) DEFAULT NULL,
  `F30_ANO` char(4) DEFAULT NULL,
  `F30_CBTPAG` char(8) DEFAULT NULL,
  `F30_CODSUC` char(6) DEFAULT NULL,
  `F30_DESDE` date DEFAULT NULL,
  `F30_FECHA` date DEFAULT NULL,
  `F30_HASTA` date DEFAULT NULL,
  `F30_MES` char(2) DEFAULT NULL,
  `F30_NUMREG` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmarcas`
--

DROP TABLE IF EXISTS `dpmarcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmarcas` (
  `MAR_ACTIVO` decimal(1,0) DEFAULT NULL,
  `MAR_CLRGRA` decimal(10,0) DEFAULT NULL,
  `MAR_CODIGO` char(10) NOT NULL,
  `MAR_COMCOB` decimal(6,2) DEFAULT NULL,
  `MAR_COMVTA` decimal(6,2) DEFAULT NULL,
  `MAR_DESCRI` char(30) DEFAULT NULL,
  `MAR_DIRWEB` char(30) DEFAULT NULL,
  `MAR_FILBMP` char(250) DEFAULT NULL,
  `MAR_MEMO` longtext,
  PRIMARY KEY (`MAR_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmarcasfinanc`
--

DROP TABLE IF EXISTS `dpmarcasfinanc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmarcasfinanc` (
  `MFN_ACTIVO` decimal(1,0) DEFAULT NULL,
  `MFN_NOMBRE` char(25) NOT NULL,
  PRIMARY KEY (`MFN_NOMBRE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmemo`
--

DROP TABLE IF EXISTS `dpmemo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmemo` (
  `MEM_DESCRI` char(40) DEFAULT NULL,
  `MEM_ID` char(10) DEFAULT NULL,
  `MEM_MEMO` longtext,
  `MEM_MIME` longtext,
  `MEM_NUMERO` decimal(8,0) DEFAULT NULL,
  `MEM_REGID` char(40) DEFAULT NULL,
  `MEM_RTF` longtext,
  `MEM_TABLE` char(30) DEFAULT NULL,
  `MEM_TYPE` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmemo_his`
--

DROP TABLE IF EXISTS `dpmemo_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmemo_his` (
  `MEM_DESCRI` char(40) DEFAULT NULL,
  `MEM_ID` char(10) DEFAULT NULL,
  `MEM_MEMO` longtext,
  `MEM_MIME` longtext,
  `MEM_NUMERO` decimal(8,0) DEFAULT NULL,
  `MEM_REGID` char(40) DEFAULT NULL,
  `MEM_RTF` longtext,
  `MEM_TABLE` char(30) DEFAULT NULL,
  `MEM_TYPE` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmemor`
--

DROP TABLE IF EXISTS `dpmemor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmemor` (
  `MEM_DESCRI` char(40) DEFAULT NULL,
  `MEM_ID` char(6) DEFAULT NULL,
  `MEM_MEMO` longtext,
  `MEM_NUMERO` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmesas`
--

DROP TABLE IF EXISTS `dpmesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmesas` (
  `MES_ACTIVO` decimal(1,0) DEFAULT NULL,
  `MES_CODIGO` char(3) NOT NULL,
  `MES_DESCRI` char(40) DEFAULT NULL,
  PRIMARY KEY (`MES_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmodcomision`
--

DROP TABLE IF EXISTS `dpmodcomision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmodcomision` (
  `MDC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `MDC_CODDET` char(4) DEFAULT NULL,
  `MDC_CODENC` char(10) DEFAULT NULL,
  `MDC_CODIGO` char(6) DEFAULT NULL,
  `MDC_COLUMA` char(1) DEFAULT NULL,
  `MDC_DESCRI` char(20) DEFAULT NULL,
  `MDC_PERIOD` char(15) DEFAULT NULL,
  KEY `DPMODCOMISION_2` (`MDC_CODENC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmodprocdoccli`
--

DROP TABLE IF EXISTS `dpmodprocdoccli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmodprocdoccli` (
  `MPN_ACTIVO` decimal(1,0) DEFAULT NULL,
  `MPN_CODIGO` char(4) NOT NULL,
  `MPN_DESCRI` char(80) DEFAULT NULL,
  `MPN_FECHA` date DEFAULT NULL,
  `MPN_HORA` char(8) DEFAULT NULL,
  `MPN_MEMO` longtext,
  `MPN_PICCAN` char(20) DEFAULT NULL,
  `MPN_PICMTO` char(20) DEFAULT NULL,
  `MPN_TIPDOC` char(3) DEFAULT NULL,
  PRIMARY KEY (`MPN_CODIGO`),
  KEY `DPMODPROCDOCCLI_2` (`MPN_TIPDOC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmodsoldatos`
--

DROP TABLE IF EXISTS `dpmodsoldatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmodsoldatos` (
  `MSD_ACTIVO` decimal(1,0) DEFAULT NULL,
  `MSD_CODEMP` char(6) DEFAULT NULL,
  `MSD_CODIGO` char(6) DEFAULT NULL,
  `MSD_CODSRV` char(6) DEFAULT NULL,
  `MSD_CODSUC` char(6) DEFAULT NULL,
  `MSD_DESCRI` char(60) DEFAULT NULL,
  `MSD_FCHRUN` date DEFAULT NULL,
  `MSD_FECHA` date DEFAULT NULL,
  `MSD_FREQUE` decimal(19,0) DEFAULT NULL,
  `MSD_HORA` char(8) DEFAULT NULL,
  `MSD_HORRUN` char(8) DEFAULT NULL,
  `MSD_LSUCUR` decimal(1,0) DEFAULT NULL,
  `MSD_MODO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovconteo`
--

DROP TABLE IF EXISTS `dpmovconteo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovconteo` (
  `MDC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `MDC_AJUSTE` decimal(14,2) DEFAULT NULL,
  `MDC_CODIGO` char(20) DEFAULT NULL,
  `MDC_CODSUC` char(6) DEFAULT NULL,
  `MDC_CONTEO` decimal(14,2) DEFAULT NULL,
  `MDC_COSTO` decimal(14,2) DEFAULT NULL,
  `MDC_EXISTE` decimal(14,2) DEFAULT NULL,
  `MDC_NUMERO` char(10) DEFAULT NULL,
  `MDC_UNDMED` char(4) DEFAULT NULL,
  KEY `DPMOVCONTEO_2` (`MDC_CODIGO`),
  KEY `DPMOVCONTEO_4` (`MDC_CODSUC`,`MDC_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovinv`
--

DROP TABLE IF EXISTS `dpmovinv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovinv` (
  `MOV_ALMORG` char(3) DEFAULT NULL,
  `MOV_APLORG` char(3) DEFAULT NULL,
  `MOV_ASODOC` char(10) DEFAULT NULL,
  `MOV_ASOTIP` char(3) DEFAULT NULL,
  `MOV_BANDA` decimal(14,2) DEFAULT NULL,
  `MOV_CANEXP` decimal(19,2) DEFAULT NULL,
  `MOV_CANTID` decimal(12,2) DEFAULT NULL,
  `MOV_CAPAC` decimal(15,0) DEFAULT NULL,
  `MOV_CAPAP` decimal(5,0) DEFAULT NULL,
  `MOV_CDESC` char(30) DEFAULT NULL,
  `MOV_CENCOS` char(8) DEFAULT NULL,
  `MOV_CHKSUM` decimal(19,0) DEFAULT NULL,
  `MOV_CODALM` char(3) DEFAULT NULL,
  `MOV_CODCOM` char(40) DEFAULT NULL,
  `MOV_CODCTA` char(10) DEFAULT NULL,
  `MOV_CODEDT` char(8) DEFAULT NULL,
  `MOV_CODIGO` char(20) DEFAULT NULL,
  `MOV_CODMON` char(3) DEFAULT NULL,
  `MOV_CODPER` char(6) DEFAULT NULL,
  `MOV_CODSUC` char(6) DEFAULT NULL,
  `MOV_CODTRA` char(4) DEFAULT NULL,
  `MOV_CODVEN` char(6) DEFAULT NULL,
  `MOV_CONTAB` decimal(2,0) DEFAULT NULL,
  `MOV_COSTO` decimal(14,2) DEFAULT NULL,
  `MOV_CXUEXP` decimal(19,2) DEFAULT NULL,
  `MOV_CXUND` decimal(13,2) DEFAULT NULL,
  `MOV_CXUNDE` decimal(15,3) DEFAULT NULL,
  `MOV_DESCUE` decimal(6,2) DEFAULT NULL,
  `MOV_DOCASO` char(10) DEFAULT NULL,
  `MOV_DOCUME` char(20) DEFAULT NULL,
  `MOV_EXPEND` decimal(14,2) DEFAULT NULL,
  `MOV_EXPORT` decimal(12,3) DEFAULT NULL,
  `MOV_EXPRES` char(30) DEFAULT NULL,
  `MOV_FCHHOR` char(18) DEFAULT NULL,
  `MOV_FCHINI` date DEFAULT NULL,
  `MOV_FCHVEN` date DEFAULT NULL,
  `MOV_FECHA` date DEFAULT NULL,
  `MOV_FILMAI` decimal(7,0) DEFAULT NULL,
  `MOV_FISICO` decimal(2,0) DEFAULT NULL,
  `MOV_HORA` char(8) DEFAULT NULL,
  `MOV_IMPORT` decimal(12,3) DEFAULT NULL,
  `MOV_IMPOTR` decimal(12,2) DEFAULT NULL,
  `MOV_IMPPRO` decimal(14,2) DEFAULT NULL,
  `MOV_INVACT` decimal(2,0) DEFAULT NULL,
  `MOV_ITEM` char(5) DEFAULT NULL,
  `MOV_ITEM_A` char(5) DEFAULT NULL,
  `MOV_ITEM_C` char(5) DEFAULT NULL,
  `MOV_ITEM_D` char(5) DEFAULT NULL,
  `MOV_IVA` decimal(6,2) DEFAULT NULL,
  `MOV_LISTA` char(1) DEFAULT NULL,
  `MOV_LOGICO` decimal(2,0) DEFAULT NULL,
  `MOV_LOTE` char(40) DEFAULT NULL,
  `MOV_METCOS` char(1) DEFAULT NULL,
  `MOV_MTOCLA` decimal(14,2) DEFAULT NULL,
  `MOV_MTOCOM` decimal(14,2) DEFAULT NULL,
  `MOV_MTODIV` decimal(19,2) DEFAULT NULL,
  `MOV_NOMCAR` char(20) DEFAULT NULL,
  `MOV_NUMCLA` decimal(10,0) DEFAULT NULL,
  `MOV_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOV_NUMPAR` char(5) DEFAULT NULL,
  `MOV_NUMPAT` char(5) DEFAULT NULL,
  `MOV_PESAJE` decimal(1,0) DEFAULT NULL,
  `MOV_PESEXP` decimal(19,2) DEFAULT NULL,
  `MOV_PESO` decimal(19,2) DEFAULT NULL,
  `MOV_PRECIO` decimal(14,2) DEFAULT NULL,
  `MOV_PREDIV` decimal(19,2) DEFAULT NULL,
  `MOV_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOV_RIF` char(15) DEFAULT NULL,
  `MOV_SUCORG` char(6) DEFAULT NULL,
  `MOV_TIPASO` char(3) DEFAULT NULL,
  `MOV_TIPCAR` char(20) DEFAULT NULL,
  `MOV_TIPDOC` char(4) DEFAULT NULL,
  `MOV_TIPIVA` char(2) DEFAULT NULL,
  `MOV_TIPO` char(1) DEFAULT NULL,
  `MOV_TOTAL` decimal(18,2) DEFAULT NULL,
  `MOV_TOTDIV` decimal(19,0) DEFAULT NULL,
  `MOV_UNDMED` char(20) DEFAULT NULL,
  `MOV_USUARI` char(3) DEFAULT NULL,
  `MOV_VOLUME` decimal(19,2) DEFAULT NULL,
  `MOV_W` decimal(19,2) DEFAULT NULL,
  `MOV_X` decimal(19,0) DEFAULT NULL,
  `MOV_Y` decimal(19,0) DEFAULT NULL,
  `MOV_Z` decimal(19,0) DEFAULT NULL,
  KEY `DPDOCMOC` (`MOV_CODSUC`,`MOV_DOCUME`,`MOV_TIPDOC`,`MOV_APLORG`,`MOV_INVACT`),
  KEY `DPEXISTSUCALM` (`MOV_CODIGO`,`MOV_CODSUC`,`MOV_CODALM`,`MOV_FECHA`,`MOV_INVACT`),
  KEY `DPEXPORTITEMS` (`MOV_CODSUC`,`MOV_ASOTIP`,`MOV_ASODOC`,`MOV_CODIGO`),
  KEY `DPFACTURAV` (`MOV_CODSUC`,`MOV_TIPDOC`,`MOV_DOCUME`,`MOV_APLORG`,`MOV_INVACT`,`MOV_TIPO`),
  KEY `DPFECHA` (`MOV_CODSUC`,`MOV_APLORG`,`MOV_FECHA`,`MOV_TIPDOC`,`MOV_INVACT`),
  KEY `DPIMPORTITEMS` (`MOV_CODSUC`,`MOV_ASOTIP`,`MOV_ASODOC`),
  KEY `DPLIBVTA` (`MOV_CODSUC`,`MOV_TIPDOC`,`MOV_CODCTA`,`MOV_DOCUME`,`MOV_INVACT`),
  KEY `DPMOVINVCODTIPSUC` (`MOV_CODIGO`,`MOV_TIPDOC`,`MOV_CODSUC`),
  KEY `DPMOVINV_2` (`MOV_CODIGO`),
  KEY `DP_EPEDIDOS` (`MOV_LOGICO`,`MOV_INVACT`,`MOV_CODIGO`),
  KEY `EXICONTABLE` (`MOV_CONTAB`,`MOV_INVACT`,`MOV_CODIGO`),
  KEY `FECHA_SUC_ALM` (`MOV_FECHA`,`MOV_CODSUC`,`MOV_CODALM`),
  KEY `GETCOSPRO` (`MOV_CODSUC`,`MOV_CODIGO`,`MOV_FECHA`,`MOV_HORA`,`MOV_INVACT`,`MOV_CONTAB`,`MOV_UNDMED`),
  KEY `LIBINV` (`MOV_CODSUC`,`MOV_CODIGO`,`MOV_INVACT`,`MOV_CONTAB`),
  KEY `ORDENPRODUCCION` (`MOV_APLORG`,`MOV_ASODOC`,`MOV_CDESC`),
  KEY `VISTA_ULTCOMPRA` (`MOV_APLORG`,`MOV_INVACT`,`MOV_CONTAB`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER dpmovinv_after_insert AFTER INSERT ON DPMOVINV
FOR EACH ROW BEGIN

  IF (SELECT COUNT(*) FROM DPINVSLD WHERE SLD_CODIGO = NEW.MOV_CODIGO AND SLD_CODSUC=NEW.MOV_CODSUC AND SLD_CODALM=NEW.MOV_CODALM)=0 THEN
    INSERT INTO DPINVSLD ( SLD_CODIGO,SLD_CODSUC,SLD_CODALM,SLD_FISICO,SLD_LOGICO,SLD_CONTAB) VALUES (NEW.MOV_CODIGO,NEW.MOV_CODSUC,NEW.MOV_CODALM,0,0,0);
  END IF;
 
  IF NEW.MOV_TIPDOC= 'FAV' THEN
    UPDATE DPINVSLD SET SLD_FCHVTA = NEW.MOV_FECHA  WHERE SLD_CODIGO = NEW.MOV_CODIGO AND SLD_CODSUC=NEW.MOV_CODSUC AND SLD_CODALM=NEW.MOV_CODALM ;
  END IF;

  IF NEW.MOV_TIPDOC= 'FAC' THEN
    UPDATE DPINVSLD SET SLD_FCHCOM = NEW.MOV_FECHA  WHERE SLD_CODIGO = NEW.MOV_CODIGO AND SLD_CODSUC=NEW.MOV_CODSUC AND SLD_CODALM=NEW.MOV_CODALM ;
  END IF;

  UPDATE DPINVSLD SET SLD_FISICO = SLD_FISICO + (NEW.MOV_CANTID*NEW.MOV_CXUND*NEW.MOV_FISICO),
                      SLD_LOGICO = SLD_LOGICO + (NEW.MOV_CANTID*NEW.MOV_CXUND*NEW.MOV_LOGICO),
                      SLD_CONTAB = SLD_CONTAB + (NEW.MOV_CANTID*NEW.MOV_CXUND*NEW.MOV_CONTAB) 
                      WHERE SLD_CODIGO = NEW.MOV_CODIGO AND SLD_CODSUC=NEW.MOV_CODSUC AND SLD_CODALM=NEW.MOV_CODALM ;

  UPDATE DPINV    SET INV_EXISTE = INV_EXISTE + (NEW.MOV_CANTID*NEW.MOV_CXUND*NEW.MOV_FISICO)
                      WHERE INV_CODIGO = NEW.MOV_CODIGO;


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER dpmovinv_after_update AFTER UPDATE ON DPMOVINV
FOR EACH ROW BEGIN

  IF (SELECT COUNT(*) FROM DPINVSLD WHERE SLD_CODIGO = OLD.MOV_CODIGO AND SLD_CODSUC=OLD.MOV_CODSUC AND SLD_CODALM=OLD.MOV_CODALM)=0 THEN
    INSERT INTO DPINVSLD ( SLD_CODIGO,SLD_CODSUC,SLD_CODALM,SLD_FISICO,SLD_LOGICO,SLD_CONTAB) VALUES (OLD.MOV_CODIGO,OLD.MOV_CODSUC,OLD.MOV_CODALM,0,0,0);
  END IF;
 

  UPDATE DPINVSLD SET SLD_FISICO = SLD_FISICO + (OLD.MOV_CANTID*OLD.MOV_CXUND*OLD.MOV_FISICO*OLD.MOV_INVACT),
                      SLD_LOGICO = SLD_LOGICO + (OLD.MOV_CANTID*OLD.MOV_CXUND*OLD.MOV_LOGICO*OLD.MOV_INVACT),
                      SLD_CONTAB = SLD_CONTAB + (OLD.MOV_CANTID*OLD.MOV_CXUND*OLD.MOV_CONTAB*OLD.MOV_INVACT) 
 	             WHERE SLD_CODIGO = OLD.MOV_CODIGO AND SLD_CODSUC=OLD.MOV_CODSUC AND SLD_CODALM=OLD.MOV_CODALM ;

  UPDATE DPINV   SET INV_EXISTE = INV_EXISTE + (OLD.MOV_CANTID*OLD.MOV_CXUND*OLD.MOV_FISICO*OLD.MOV_INVACT)
	             WHERE INV_CODIGO = OLD.MOV_CODIGO;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER dpmovinv_after_delete AFTER DELETE ON DPMOVINV
FOR EACH ROW BEGIN

 UPDATE DPINVSLD SET SLD_FISICO = SLD_FISICO - (OLD.MOV_CANTID*OLD.MOV_CXUND*OLD.MOV_FISICO*OLD.MOV_INVACT),
                     SLD_LOGICO = SLD_LOGICO - (OLD.MOV_CANTID*OLD.MOV_CXUND*OLD.MOV_LOGICO*OLD.MOV_INVACT),
                     SLD_CONTAB = SLD_CONTAB - (OLD.MOV_CANTID*OLD.MOV_CXUND*OLD.MOV_CONTAB*OLD.MOV_INVACT) 
	             WHERE SLD_CODIGO = OLD.MOV_CODIGO AND SLD_CODSUC=OLD.MOV_CODSUC AND SLD_CODALM=OLD.MOV_CODALM ;

 UPDATE DPINV    SET INV_EXISTE = INV_EXISTE - (OLD.MOV_CANTID*OLD.MOV_CXUND*OLD.MOV_FISICO*OLD.MOV_INVACT)
	             WHERE INV_CODIGO = OLD.MOV_CODIGO;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `dpmovinv_crossd`
--

DROP TABLE IF EXISTS `dpmovinv_crossd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovinv_crossd` (
  `MOV_ALMORG` char(3) DEFAULT NULL,
  `MOV_APLORG` char(3) DEFAULT NULL,
  `MOV_ASODOC` char(10) DEFAULT NULL,
  `MOV_ASOTIP` char(3) DEFAULT NULL,
  `MOV_BANDA` decimal(14,2) DEFAULT NULL,
  `MOV_CANEXP` decimal(19,2) DEFAULT NULL,
  `MOV_CANTID` decimal(12,2) DEFAULT NULL,
  `MOV_CAPAC` decimal(15,0) DEFAULT NULL,
  `MOV_CAPAP` decimal(5,0) DEFAULT NULL,
  `MOV_CDESC` char(30) DEFAULT NULL,
  `MOV_CENCOS` char(8) DEFAULT NULL,
  `MOV_CHKSUM` decimal(18,0) DEFAULT NULL,
  `MOV_CODALM` char(3) DEFAULT NULL,
  `MOV_CODCOM` char(40) DEFAULT NULL,
  `MOV_CODCTA` char(10) DEFAULT NULL,
  `MOV_CODEDT` char(8) DEFAULT NULL,
  `MOV_CODIGO` char(20) DEFAULT NULL,
  `MOV_CODMON` char(3) DEFAULT NULL,
  `MOV_CODPER` char(6) DEFAULT NULL,
  `MOV_CODSUC` char(6) DEFAULT NULL,
  `MOV_CODTRA` char(4) DEFAULT NULL,
  `MOV_CODVEN` char(6) DEFAULT NULL,
  `MOV_CONTAB` decimal(2,0) DEFAULT NULL,
  `MOV_COSTO` decimal(14,2) DEFAULT NULL,
  `MOV_CXUEXP` decimal(17,2) DEFAULT NULL,
  `MOV_CXUND` decimal(13,2) DEFAULT NULL,
  `MOV_CXUNDE` decimal(14,3) DEFAULT NULL,
  `MOV_DESCUE` decimal(6,2) DEFAULT NULL,
  `MOV_DOCASO` char(10) DEFAULT NULL,
  `MOV_DOCUME` char(20) DEFAULT NULL,
  `MOV_EXPEND` decimal(14,2) DEFAULT NULL,
  `MOV_EXPORT` decimal(11,3) DEFAULT NULL,
  `MOV_EXPRES` char(30) DEFAULT NULL,
  `MOV_FCHHOR` char(18) DEFAULT NULL,
  `MOV_FCHINI` date DEFAULT NULL,
  `MOV_FCHVEN` date DEFAULT NULL,
  `MOV_FECHA` date DEFAULT NULL,
  `MOV_FILMAI` decimal(7,0) DEFAULT NULL,
  `MOV_FISICO` decimal(2,0) DEFAULT NULL,
  `MOV_HORA` char(8) DEFAULT NULL,
  `MOV_IMPORT` decimal(11,3) DEFAULT NULL,
  `MOV_IMPOTR` decimal(12,2) DEFAULT NULL,
  `MOV_IMPPRO` decimal(14,2) DEFAULT NULL,
  `MOV_INVACT` decimal(2,0) DEFAULT NULL,
  `MOV_ITEM` char(5) DEFAULT NULL,
  `MOV_ITEM_A` char(5) DEFAULT NULL,
  `MOV_ITEM_C` char(5) DEFAULT NULL,
  `MOV_ITEM_D` char(5) DEFAULT NULL,
  `MOV_IVA` decimal(6,2) DEFAULT NULL,
  `MOV_LISTA` char(1) DEFAULT NULL,
  `MOV_LOGICO` decimal(2,0) DEFAULT NULL,
  `MOV_LOTE` char(40) DEFAULT NULL,
  `MOV_METCOS` char(1) DEFAULT NULL,
  `MOV_MTOCLA` decimal(14,2) DEFAULT NULL,
  `MOV_MTOCOM` decimal(14,2) DEFAULT NULL,
  `MOV_MTODIV` decimal(19,2) DEFAULT NULL,
  `MOV_NOMCAR` char(20) DEFAULT NULL,
  `MOV_NUMCLA` decimal(10,0) DEFAULT NULL,
  `MOV_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOV_NUMPAR` char(5) DEFAULT NULL,
  `MOV_NUMPAT` char(5) DEFAULT NULL,
  `MOV_PESAJE` decimal(1,0) DEFAULT NULL,
  `MOV_PESEXP` decimal(19,2) DEFAULT NULL,
  `MOV_PESO` decimal(17,2) DEFAULT NULL,
  `MOV_PRECIO` decimal(14,2) DEFAULT NULL,
  `MOV_PREDIV` decimal(19,2) DEFAULT NULL,
  `MOV_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOV_RIF` char(15) DEFAULT NULL,
  `MOV_SUCORG` char(6) DEFAULT NULL,
  `MOV_TIPASO` char(3) DEFAULT NULL,
  `MOV_TIPCAR` char(20) DEFAULT NULL,
  `MOV_TIPDOC` char(4) DEFAULT NULL,
  `MOV_TIPIVA` char(2) DEFAULT NULL,
  `MOV_TIPO` char(1) DEFAULT NULL,
  `MOV_TOTAL` decimal(17,2) DEFAULT NULL,
  `MOV_TOTDIV` decimal(18,0) DEFAULT NULL,
  `MOV_UNDMED` char(20) DEFAULT NULL,
  `MOV_USUARI` char(3) DEFAULT NULL,
  `MOV_VOLUME` decimal(17,2) DEFAULT NULL,
  `MOV_W` decimal(17,2) DEFAULT NULL,
  `MOV_X` decimal(18,0) DEFAULT NULL,
  `MOV_Y` decimal(18,0) DEFAULT NULL,
  `MOV_Z` decimal(18,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovinv_del`
--

DROP TABLE IF EXISTS `dpmovinv_del`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovinv_del` (
  `MOV_ALMORG` char(3) DEFAULT NULL,
  `MOV_APLORG` char(3) DEFAULT NULL,
  `MOV_ASODOC` char(10) DEFAULT NULL,
  `MOV_ASOTIP` char(3) DEFAULT NULL,
  `MOV_BANDA` decimal(14,2) DEFAULT NULL,
  `MOV_CANEXP` decimal(19,2) DEFAULT NULL,
  `MOV_CANTID` decimal(12,2) DEFAULT NULL,
  `MOV_CAPAC` decimal(15,0) DEFAULT NULL,
  `MOV_CAPAP` decimal(5,0) DEFAULT NULL,
  `MOV_CDESC` char(30) DEFAULT NULL,
  `MOV_CENCOS` char(8) DEFAULT NULL,
  `MOV_CHKSUM` decimal(18,0) DEFAULT NULL,
  `MOV_CODALM` char(3) DEFAULT NULL,
  `MOV_CODCOM` char(40) DEFAULT NULL,
  `MOV_CODCTA` char(10) DEFAULT NULL,
  `MOV_CODEDT` char(8) DEFAULT NULL,
  `MOV_CODIGO` char(20) DEFAULT NULL,
  `MOV_CODMON` char(3) DEFAULT NULL,
  `MOV_CODPER` char(6) DEFAULT NULL,
  `MOV_CODSUC` char(6) DEFAULT NULL,
  `MOV_CODTRA` char(4) DEFAULT NULL,
  `MOV_CODVEN` char(6) DEFAULT NULL,
  `MOV_CONTAB` decimal(2,0) DEFAULT NULL,
  `MOV_COSTO` decimal(14,2) DEFAULT NULL,
  `MOV_CXUEXP` decimal(17,2) DEFAULT NULL,
  `MOV_CXUND` decimal(13,2) DEFAULT NULL,
  `MOV_CXUNDE` decimal(14,3) DEFAULT NULL,
  `MOV_DESCUE` decimal(6,2) DEFAULT NULL,
  `MOV_DOCASO` char(10) DEFAULT NULL,
  `MOV_DOCUME` char(20) DEFAULT NULL,
  `MOV_EXPEND` decimal(14,2) DEFAULT NULL,
  `MOV_EXPORT` decimal(11,3) DEFAULT NULL,
  `MOV_EXPRES` char(30) DEFAULT NULL,
  `MOV_FCHHOR` char(18) DEFAULT NULL,
  `MOV_FCHINI` date DEFAULT NULL,
  `MOV_FCHVEN` date DEFAULT NULL,
  `MOV_FECHA` date DEFAULT NULL,
  `MOV_FILMAI` decimal(7,0) DEFAULT NULL,
  `MOV_FISICO` decimal(2,0) DEFAULT NULL,
  `MOV_HORA` char(8) DEFAULT NULL,
  `MOV_IMPORT` decimal(11,3) DEFAULT NULL,
  `MOV_IMPOTR` decimal(12,2) DEFAULT NULL,
  `MOV_IMPPRO` decimal(14,2) DEFAULT NULL,
  `MOV_INVACT` decimal(2,0) DEFAULT NULL,
  `MOV_ITEM` char(5) DEFAULT NULL,
  `MOV_ITEM_A` char(5) DEFAULT NULL,
  `MOV_ITEM_C` char(5) DEFAULT NULL,
  `MOV_ITEM_D` char(5) DEFAULT NULL,
  `MOV_IVA` decimal(6,2) DEFAULT NULL,
  `MOV_LISTA` char(1) DEFAULT NULL,
  `MOV_LOGICO` decimal(2,0) DEFAULT NULL,
  `MOV_LOTE` char(40) DEFAULT NULL,
  `MOV_METCOS` char(1) DEFAULT NULL,
  `MOV_MTOCLA` decimal(14,2) DEFAULT NULL,
  `MOV_MTOCOM` decimal(14,2) DEFAULT NULL,
  `MOV_MTODIV` decimal(17,2) DEFAULT NULL,
  `MOV_NOMCAR` char(20) DEFAULT NULL,
  `MOV_NUMCLA` decimal(10,0) DEFAULT NULL,
  `MOV_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOV_NUMPAR` char(5) DEFAULT NULL,
  `MOV_NUMPAT` char(5) DEFAULT NULL,
  `MOV_PESAJE` decimal(1,0) DEFAULT NULL,
  `MOV_PESEXP` decimal(19,2) DEFAULT NULL,
  `MOV_PESO` decimal(19,2) DEFAULT NULL,
  `MOV_PRECIO` decimal(14,2) DEFAULT NULL,
  `MOV_PREDIV` decimal(17,2) DEFAULT NULL,
  `MOV_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOV_RIF` char(15) DEFAULT NULL,
  `MOV_SUCORG` char(6) DEFAULT NULL,
  `MOV_TIPASO` char(3) DEFAULT NULL,
  `MOV_TIPCAR` char(20) DEFAULT NULL,
  `MOV_TIPDOC` char(4) DEFAULT NULL,
  `MOV_TIPIVA` char(2) DEFAULT NULL,
  `MOV_TIPO` char(1) DEFAULT NULL,
  `MOV_TOTAL` decimal(17,2) DEFAULT NULL,
  `MOV_TOTDIV` decimal(18,0) DEFAULT NULL,
  `MOV_UNDMED` char(20) DEFAULT NULL,
  `MOV_USUARI` char(3) DEFAULT NULL,
  `MOV_VOLUME` decimal(19,2) DEFAULT NULL,
  `MOV_W` decimal(19,2) DEFAULT NULL,
  `MOV_X` decimal(18,0) DEFAULT NULL,
  `MOV_Y` decimal(18,0) DEFAULT NULL,
  `MOV_Z` decimal(18,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovinv_his`
--

DROP TABLE IF EXISTS `dpmovinv_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovinv_his` (
  `MOV_ALMORG` char(3) DEFAULT NULL,
  `MOV_APLORG` char(3) DEFAULT NULL,
  `MOV_ASODOC` char(10) DEFAULT NULL,
  `MOV_ASOTIP` char(3) DEFAULT NULL,
  `MOV_BANDA` decimal(14,2) DEFAULT NULL,
  `MOV_CANEXP` decimal(19,2) DEFAULT NULL,
  `MOV_CANTID` decimal(12,2) DEFAULT NULL,
  `MOV_CAPAC` decimal(15,0) DEFAULT NULL,
  `MOV_CAPAP` decimal(5,0) DEFAULT NULL,
  `MOV_CDESC` char(30) DEFAULT NULL,
  `MOV_CENCOS` char(8) DEFAULT NULL,
  `MOV_CHKSUM` decimal(19,0) DEFAULT NULL,
  `MOV_CODALM` char(3) DEFAULT NULL,
  `MOV_CODCOM` char(40) DEFAULT NULL,
  `MOV_CODCTA` char(10) DEFAULT NULL,
  `MOV_CODEDT` char(8) DEFAULT NULL,
  `MOV_CODIGO` char(20) DEFAULT NULL,
  `MOV_CODMON` char(3) DEFAULT NULL,
  `MOV_CODPER` char(6) DEFAULT NULL,
  `MOV_CODSUC` char(6) DEFAULT NULL,
  `MOV_CODTRA` char(4) DEFAULT NULL,
  `MOV_CODVEN` char(6) DEFAULT NULL,
  `MOV_CONTAB` decimal(2,0) DEFAULT NULL,
  `MOV_COSTO` decimal(14,2) DEFAULT NULL,
  `MOV_CXUEXP` decimal(18,0) DEFAULT NULL,
  `MOV_CXUND` decimal(13,2) DEFAULT NULL,
  `MOV_CXUNDE` decimal(14,3) DEFAULT NULL,
  `MOV_DESCUE` decimal(6,2) DEFAULT NULL,
  `MOV_DOCASO` char(10) DEFAULT NULL,
  `MOV_DOCUME` char(20) DEFAULT NULL,
  `MOV_EXPEND` decimal(14,2) DEFAULT NULL,
  `MOV_EXPORT` decimal(11,3) DEFAULT NULL,
  `MOV_EXPRES` char(30) DEFAULT NULL,
  `MOV_FCHHOR` char(18) DEFAULT NULL,
  `MOV_FCHINI` date DEFAULT NULL,
  `MOV_FCHVEN` date DEFAULT NULL,
  `MOV_FECHA` date DEFAULT NULL,
  `MOV_FILMAI` decimal(7,0) DEFAULT NULL,
  `MOV_FISICO` decimal(2,0) DEFAULT NULL,
  `MOV_HORA` char(8) DEFAULT NULL,
  `MOV_IMPORT` decimal(11,3) DEFAULT NULL,
  `MOV_IMPOTR` decimal(12,2) DEFAULT NULL,
  `MOV_IMPPRO` decimal(14,2) DEFAULT NULL,
  `MOV_INVACT` decimal(2,0) DEFAULT NULL,
  `MOV_ITEM` char(5) DEFAULT NULL,
  `MOV_ITEM_A` char(5) DEFAULT NULL,
  `MOV_ITEM_C` char(5) DEFAULT NULL,
  `MOV_ITEM_D` char(5) DEFAULT NULL,
  `MOV_IVA` decimal(6,2) DEFAULT NULL,
  `MOV_LISTA` char(1) DEFAULT NULL,
  `MOV_LOGICO` decimal(2,0) DEFAULT NULL,
  `MOV_LOTE` char(40) DEFAULT NULL,
  `MOV_METCOS` char(1) DEFAULT NULL,
  `MOV_MTOCLA` decimal(14,2) DEFAULT NULL,
  `MOV_MTOCOM` decimal(14,2) DEFAULT NULL,
  `MOV_MTODIV` decimal(19,2) DEFAULT NULL,
  `MOV_NOMCAR` char(20) DEFAULT NULL,
  `MOV_NUMCLA` decimal(10,0) DEFAULT NULL,
  `MOV_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOV_NUMPAR` char(5) DEFAULT NULL,
  `MOV_NUMPAT` char(5) DEFAULT NULL,
  `MOV_PESAJE` decimal(1,0) DEFAULT NULL,
  `MOV_PESEXP` decimal(19,2) DEFAULT NULL,
  `MOV_PESO` decimal(19,2) DEFAULT NULL,
  `MOV_PRECIO` decimal(14,2) DEFAULT NULL,
  `MOV_PREDIV` decimal(19,2) DEFAULT NULL,
  `MOV_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOV_RIF` char(15) DEFAULT NULL,
  `MOV_SUCORG` char(6) DEFAULT NULL,
  `MOV_TIPASO` char(3) DEFAULT NULL,
  `MOV_TIPCAR` char(20) DEFAULT NULL,
  `MOV_TIPDOC` char(4) DEFAULT NULL,
  `MOV_TIPIVA` char(2) DEFAULT NULL,
  `MOV_TIPO` char(1) DEFAULT NULL,
  `MOV_TOTAL` decimal(17,2) DEFAULT NULL,
  `MOV_TOTDIV` decimal(18,0) DEFAULT NULL,
  `MOV_UNDMED` char(20) DEFAULT NULL,
  `MOV_USUARI` char(3) DEFAULT NULL,
  `MOV_VOLUME` decimal(19,2) DEFAULT NULL,
  `MOV_W` decimal(19,2) DEFAULT NULL,
  `MOV_X` decimal(18,0) DEFAULT NULL,
  `MOV_Y` decimal(18,0) DEFAULT NULL,
  `MOV_Z` decimal(18,0) DEFAULT NULL,
  KEY `DPMOVINV_HIS_2` (`MOV_CODIGO`),
  KEY `DPMOVINV_HIS_4` (`MOV_CODTRA`),
  KEY `DPMOVINV_HIS_6` (`MOV_UNDMED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovinv_ordpro`
--

DROP TABLE IF EXISTS `dpmovinv_ordpro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovinv_ordpro` (
  `MOV_APLORG` char(3) DEFAULT NULL,
  `MOV_ASODOC` char(10) DEFAULT NULL,
  `MOV_ASOTIP` char(3) DEFAULT NULL,
  `MOV_BANDA` decimal(14,2) DEFAULT NULL,
  `MOV_CANTID` decimal(12,2) DEFAULT NULL,
  `MOV_CAPAC` decimal(15,0) DEFAULT NULL,
  `MOV_CAPAP` decimal(5,0) DEFAULT NULL,
  `MOV_CDESC` char(30) DEFAULT NULL,
  `MOV_CENCOS` char(8) DEFAULT NULL,
  `MOV_CODALM` char(3) DEFAULT NULL,
  `MOV_CODCOM` char(24) DEFAULT NULL,
  `MOV_CODCTA` char(10) DEFAULT NULL,
  `MOV_CODEDT` char(8) DEFAULT NULL,
  `MOV_CODIGO` char(20) DEFAULT NULL,
  `MOV_CODMON` char(3) DEFAULT NULL,
  `MOV_CODPER` char(6) DEFAULT NULL,
  `MOV_CODSUC` char(6) DEFAULT NULL,
  `MOV_CODTRA` char(4) DEFAULT NULL,
  `MOV_CODVEN` char(6) DEFAULT NULL,
  `MOV_CONTAB` decimal(2,0) DEFAULT NULL,
  `MOV_COSTO` decimal(14,2) DEFAULT NULL,
  `MOV_CXUND` decimal(13,2) DEFAULT NULL,
  `MOV_CXUNDE` decimal(15,0) DEFAULT NULL,
  `MOV_DESCUE` decimal(6,2) DEFAULT NULL,
  `MOV_DOCASO` char(10) DEFAULT NULL,
  `MOV_DOCUME` char(20) DEFAULT NULL,
  `MOV_EXPEND` decimal(14,2) DEFAULT NULL,
  `MOV_EXPORT` decimal(11,3) DEFAULT NULL,
  `MOV_EXPRES` char(30) DEFAULT NULL,
  `MOV_FCHHOR` char(18) DEFAULT NULL,
  `MOV_FCHVEN` date DEFAULT NULL,
  `MOV_FECHA` date DEFAULT NULL,
  `MOV_FILMAI` decimal(7,0) DEFAULT NULL,
  `MOV_FISICO` decimal(2,0) DEFAULT NULL,
  `MOV_HORA` char(8) DEFAULT NULL,
  `MOV_IMPORT` decimal(11,3) DEFAULT NULL,
  `MOV_IMPOTR` decimal(12,2) DEFAULT NULL,
  `MOV_IMPPRO` decimal(14,2) DEFAULT NULL,
  `MOV_INVACT` decimal(2,0) DEFAULT NULL,
  `MOV_ITEM` char(5) DEFAULT NULL,
  `MOV_ITEM_A` char(5) DEFAULT NULL,
  `MOV_ITEM_C` char(5) DEFAULT NULL,
  `MOV_IVA` decimal(6,2) DEFAULT NULL,
  `MOV_LISTA` char(1) DEFAULT NULL,
  `MOV_LOGICO` decimal(2,0) DEFAULT NULL,
  `MOV_LOTE` char(24) DEFAULT NULL,
  `MOV_METCOS` char(1) DEFAULT NULL,
  `MOV_MTOCLA` decimal(14,2) DEFAULT NULL,
  `MOV_MTOCOM` decimal(14,2) DEFAULT NULL,
  `MOV_MTODIV` decimal(17,2) DEFAULT NULL,
  `MOV_NUMCLA` decimal(10,0) DEFAULT NULL,
  `MOV_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOV_NUMPAR` char(5) DEFAULT NULL,
  `MOV_NUMPAT` char(5) DEFAULT NULL,
  `MOV_PESAJE` decimal(1,0) DEFAULT NULL,
  `MOV_PESO` decimal(12,2) DEFAULT NULL,
  `MOV_PRECIO` decimal(13,2) DEFAULT NULL,
  `MOV_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOV_RIF` char(15) DEFAULT NULL,
  `MOV_TIPASO` char(3) DEFAULT NULL,
  `MOV_TIPDOC` char(4) DEFAULT NULL,
  `MOV_TIPIVA` char(2) DEFAULT NULL,
  `MOV_TIPO` char(1) DEFAULT NULL,
  `MOV_TOTAL` decimal(17,2) DEFAULT NULL,
  `MOV_UNDMED` char(8) DEFAULT NULL,
  `MOV_USUARI` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovinv_plancom`
--

DROP TABLE IF EXISTS `dpmovinv_plancom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovinv_plancom` (
  `MOV_APLORG` char(3) DEFAULT NULL,
  `MOV_ASODOC` char(10) DEFAULT NULL,
  `MOV_ASOTIP` char(3) DEFAULT NULL,
  `MOV_BANDA` decimal(14,2) DEFAULT NULL,
  `MOV_CANTID` decimal(12,2) DEFAULT NULL,
  `MOV_CAPAC` decimal(15,0) DEFAULT NULL,
  `MOV_CAPAP` decimal(5,0) DEFAULT NULL,
  `MOV_CDESC` char(30) DEFAULT NULL,
  `MOV_CENCOS` char(8) DEFAULT NULL,
  `MOV_CODALM` char(3) DEFAULT NULL,
  `MOV_CODCOM` char(20) DEFAULT NULL,
  `MOV_CODCTA` char(10) DEFAULT NULL,
  `MOV_CODEDT` char(8) DEFAULT NULL,
  `MOV_CODIGO` char(20) DEFAULT NULL,
  `MOV_CODMON` char(3) DEFAULT NULL,
  `MOV_CODPER` char(6) DEFAULT NULL,
  `MOV_CODSUC` char(6) DEFAULT NULL,
  `MOV_CODTRA` char(4) DEFAULT NULL,
  `MOV_CODVEN` char(6) DEFAULT NULL,
  `MOV_CONTAB` decimal(2,0) DEFAULT NULL,
  `MOV_COSTO` decimal(14,2) DEFAULT NULL,
  `MOV_CXUND` decimal(11,4) DEFAULT NULL,
  `MOV_CXUNDE` decimal(15,0) DEFAULT NULL,
  `MOV_DESCUE` decimal(6,2) DEFAULT NULL,
  `MOV_DOCASO` char(10) DEFAULT NULL,
  `MOV_DOCUME` char(10) DEFAULT NULL,
  `MOV_EXPEND` decimal(14,2) DEFAULT NULL,
  `MOV_EXPORT` decimal(11,3) DEFAULT NULL,
  `MOV_EXPRES` char(30) DEFAULT NULL,
  `MOV_FCHHOR` char(18) DEFAULT NULL,
  `MOV_FCHVEN` date DEFAULT NULL,
  `MOV_FECHA` date DEFAULT NULL,
  `MOV_FILMAI` decimal(7,0) DEFAULT NULL,
  `MOV_FISICO` decimal(2,0) DEFAULT NULL,
  `MOV_HORA` char(8) DEFAULT NULL,
  `MOV_IMPORT` decimal(11,3) DEFAULT NULL,
  `MOV_IMPOTR` decimal(12,2) DEFAULT NULL,
  `MOV_IMPPRO` decimal(14,2) DEFAULT NULL,
  `MOV_INVACT` decimal(2,0) DEFAULT NULL,
  `MOV_ITEM` char(5) DEFAULT NULL,
  `MOV_ITEM_A` char(5) DEFAULT NULL,
  `MOV_ITEM_C` char(5) DEFAULT NULL,
  `MOV_ITEM_D` char(5) DEFAULT NULL,
  `MOV_IVA` decimal(6,2) DEFAULT NULL,
  `MOV_LISTA` char(1) DEFAULT NULL,
  `MOV_LOGICO` decimal(2,0) DEFAULT NULL,
  `MOV_LOTE` char(15) DEFAULT NULL,
  `MOV_METCOS` char(1) DEFAULT NULL,
  `MOV_MTOCLA` decimal(14,2) DEFAULT NULL,
  `MOV_MTOCOM` decimal(14,2) DEFAULT NULL,
  `MOV_MTODIV` decimal(17,2) DEFAULT NULL,
  `MOV_NUMCLA` decimal(10,0) DEFAULT NULL,
  `MOV_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOV_NUMPAR` char(5) DEFAULT NULL,
  `MOV_NUMPAT` char(5) DEFAULT NULL,
  `MOV_PESAJE` decimal(1,0) DEFAULT NULL,
  `MOV_PESEXP` decimal(18,0) DEFAULT NULL,
  `MOV_PESO` decimal(17,2) DEFAULT NULL,
  `MOV_PRECIO` decimal(14,2) DEFAULT NULL,
  `MOV_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOV_RIF` char(15) DEFAULT NULL,
  `MOV_TIPASO` char(3) DEFAULT NULL,
  `MOV_TIPDOC` char(4) DEFAULT NULL,
  `MOV_TIPIVA` char(2) DEFAULT NULL,
  `MOV_TIPO` char(1) DEFAULT NULL,
  `MOV_TOTAL` decimal(17,2) DEFAULT NULL,
  `MOV_TOTDIV` decimal(18,0) DEFAULT NULL,
  `MOV_UNDMED` char(8) DEFAULT NULL,
  `MOV_USUARI` char(3) DEFAULT NULL,
  `MOV_X` decimal(18,0) DEFAULT NULL,
  `MOV_Y` decimal(18,0) DEFAULT NULL,
  `MOV_Z` decimal(18,0) DEFAULT NULL,
  KEY `DPREGABASTEC` (`MOV_CODSUC`,`MOV_DOCUME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovinv_regp`
--

DROP TABLE IF EXISTS `dpmovinv_regp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovinv_regp` (
  `MOV_ALMORG` char(3) DEFAULT NULL,
  `MOV_APLORG` char(3) DEFAULT NULL,
  `MOV_ASODOC` char(10) DEFAULT NULL,
  `MOV_ASOTIP` char(4) DEFAULT NULL,
  `MOV_BANDA` decimal(14,2) DEFAULT NULL,
  `MOV_CANEXP` decimal(19,2) DEFAULT NULL,
  `MOV_CANTID` decimal(12,2) DEFAULT NULL,
  `MOV_CAPAC` decimal(15,0) DEFAULT NULL,
  `MOV_CAPAP` decimal(5,0) DEFAULT NULL,
  `MOV_CDESC` char(30) DEFAULT NULL,
  `MOV_CENCOS` char(8) DEFAULT NULL,
  `MOV_CHKSUM` decimal(19,0) DEFAULT NULL,
  `MOV_CODALM` char(3) DEFAULT NULL,
  `MOV_CODCOM` char(20) DEFAULT NULL,
  `MOV_CODCTA` char(10) DEFAULT NULL,
  `MOV_CODEDT` char(8) DEFAULT NULL,
  `MOV_CODIGO` char(20) DEFAULT NULL,
  `MOV_CODMON` char(3) DEFAULT NULL,
  `MOV_CODPER` char(6) DEFAULT NULL,
  `MOV_CODSUC` char(6) DEFAULT NULL,
  `MOV_CODTRA` char(4) DEFAULT NULL,
  `MOV_CODVEN` char(6) DEFAULT NULL,
  `MOV_CONTAB` decimal(2,0) DEFAULT NULL,
  `MOV_COSTO` decimal(14,2) DEFAULT NULL,
  `MOV_CXUND` decimal(11,4) DEFAULT NULL,
  `MOV_CXUNDE` decimal(15,3) DEFAULT NULL,
  `MOV_DESCUE` decimal(6,2) DEFAULT NULL,
  `MOV_DOCASO` char(10) DEFAULT NULL,
  `MOV_DOCUME` char(10) DEFAULT NULL,
  `MOV_EXPEND` decimal(14,2) DEFAULT NULL,
  `MOV_EXPORT` decimal(11,3) DEFAULT NULL,
  `MOV_EXPRES` char(30) DEFAULT NULL,
  `MOV_FCHHOR` char(18) DEFAULT NULL,
  `MOV_FCHINI` date DEFAULT NULL,
  `MOV_FCHVEN` date DEFAULT NULL,
  `MOV_FECHA` date DEFAULT NULL,
  `MOV_FILMAI` decimal(7,0) DEFAULT NULL,
  `MOV_FISICO` decimal(2,0) DEFAULT NULL,
  `MOV_HORA` char(8) DEFAULT NULL,
  `MOV_IMPORT` decimal(11,3) DEFAULT NULL,
  `MOV_IMPOTR` decimal(12,2) DEFAULT NULL,
  `MOV_IMPPRO` decimal(14,2) DEFAULT NULL,
  `MOV_INVACT` decimal(2,0) DEFAULT NULL,
  `MOV_ITEM` char(5) DEFAULT NULL,
  `MOV_ITEM_A` char(5) DEFAULT NULL,
  `MOV_ITEM_C` char(5) DEFAULT NULL,
  `MOV_ITEM_D` char(5) DEFAULT NULL,
  `MOV_IVA` decimal(6,2) DEFAULT NULL,
  `MOV_LISTA` char(1) DEFAULT NULL,
  `MOV_LOGICO` decimal(2,0) DEFAULT NULL,
  `MOV_LOTE` char(15) DEFAULT NULL,
  `MOV_METCOS` char(1) DEFAULT NULL,
  `MOV_MTOCLA` decimal(14,2) DEFAULT NULL,
  `MOV_MTOCOM` decimal(14,2) DEFAULT NULL,
  `MOV_MTODIV` decimal(19,2) DEFAULT NULL,
  `MOV_NOMCAR` char(20) DEFAULT NULL,
  `MOV_NUMCLA` decimal(10,0) DEFAULT NULL,
  `MOV_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOV_NUMPAR` char(5) DEFAULT NULL,
  `MOV_NUMPAT` char(5) DEFAULT NULL,
  `MOV_PESAJE` decimal(1,0) DEFAULT NULL,
  `MOV_PESEXP` decimal(19,2) DEFAULT NULL,
  `MOV_PESO` decimal(19,2) DEFAULT NULL,
  `MOV_PRECIO` decimal(14,2) DEFAULT NULL,
  `MOV_PREDIV` decimal(19,2) DEFAULT NULL,
  `MOV_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOV_RIF` char(15) DEFAULT NULL,
  `MOV_SUCORG` char(6) DEFAULT NULL,
  `MOV_TIPASO` char(3) DEFAULT NULL,
  `MOV_TIPCAR` char(20) DEFAULT NULL,
  `MOV_TIPDOC` char(4) DEFAULT NULL,
  `MOV_TIPIVA` char(2) DEFAULT NULL,
  `MOV_TIPO` char(1) DEFAULT NULL,
  `MOV_TOTAL` decimal(17,2) DEFAULT NULL,
  `MOV_TOTDIV` decimal(18,0) DEFAULT NULL,
  `MOV_UNDMED` char(8) DEFAULT NULL,
  `MOV_USUARI` char(3) DEFAULT NULL,
  `MOV_VOLUME` decimal(19,2) DEFAULT NULL,
  `MOV_W` decimal(19,2) DEFAULT NULL,
  `MOV_X` decimal(18,0) DEFAULT NULL,
  `MOV_Y` decimal(18,0) DEFAULT NULL,
  `MOV_Z` decimal(18,0) DEFAULT NULL,
  KEY `DPMOVFECHA` (`MOV_FECHA`,`MOV_CODIGO`),
  KEY `DPMOVSUCLOTE` (`MOV_CODSUC`,`MOV_LOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovinv_reqm`
--

DROP TABLE IF EXISTS `dpmovinv_reqm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovinv_reqm` (
  `MOV_ALMORG` char(3) DEFAULT NULL,
  `MOV_APLORG` char(6) DEFAULT NULL,
  `MOV_ASODOC` char(10) DEFAULT NULL,
  `MOV_ASOTIP` char(3) DEFAULT NULL,
  `MOV_BANDA` decimal(14,2) DEFAULT NULL,
  `MOV_CANEXP` decimal(19,2) DEFAULT NULL,
  `MOV_CANTID` decimal(12,2) DEFAULT NULL,
  `MOV_CAPAC` decimal(15,0) DEFAULT NULL,
  `MOV_CAPAP` decimal(5,0) DEFAULT NULL,
  `MOV_CDESC` char(30) DEFAULT NULL,
  `MOV_CENCOS` char(8) DEFAULT NULL,
  `MOV_CHKSUM` decimal(19,0) DEFAULT NULL,
  `MOV_CODALM` char(3) DEFAULT NULL,
  `MOV_CODCOM` char(40) DEFAULT NULL,
  `MOV_CODCTA` char(15) DEFAULT NULL,
  `MOV_CODEDT` char(8) DEFAULT NULL,
  `MOV_CODIGO` char(20) DEFAULT NULL,
  `MOV_CODMON` char(3) DEFAULT NULL,
  `MOV_CODPER` char(6) DEFAULT NULL,
  `MOV_CODSUC` char(6) DEFAULT NULL,
  `MOV_CODTRA` char(4) DEFAULT NULL,
  `MOV_CODVEN` char(6) DEFAULT NULL,
  `MOV_CONTAB` decimal(2,0) DEFAULT NULL,
  `MOV_COSTO` decimal(14,2) DEFAULT NULL,
  `MOV_CXUND` decimal(13,2) DEFAULT NULL,
  `MOV_CXUNDE` decimal(14,3) DEFAULT NULL,
  `MOV_DESCUE` decimal(6,2) DEFAULT NULL,
  `MOV_DIAS` decimal(3,0) DEFAULT NULL,
  `MOV_DOCASO` char(10) DEFAULT NULL,
  `MOV_DOCUME` char(20) DEFAULT NULL,
  `MOV_EXPEND` decimal(14,2) DEFAULT NULL,
  `MOV_EXPORT` decimal(11,3) DEFAULT NULL,
  `MOV_EXPRES` char(30) DEFAULT NULL,
  `MOV_FCHHOR` char(18) DEFAULT NULL,
  `MOV_FCHINI` date DEFAULT NULL,
  `MOV_FCHVEN` date DEFAULT NULL,
  `MOV_FECHA` date DEFAULT NULL,
  `MOV_FILMAI` decimal(7,0) DEFAULT NULL,
  `MOV_FISICO` decimal(2,0) DEFAULT NULL,
  `MOV_HORA` char(8) DEFAULT NULL,
  `MOV_IMPORT` decimal(11,3) DEFAULT NULL,
  `MOV_IMPOTR` decimal(12,2) DEFAULT NULL,
  `MOV_IMPPRO` decimal(14,2) DEFAULT NULL,
  `MOV_INVACT` decimal(2,0) DEFAULT NULL,
  `MOV_ITEM` char(5) DEFAULT NULL,
  `MOV_ITEM_A` char(5) DEFAULT NULL,
  `MOV_ITEM_C` char(5) DEFAULT NULL,
  `MOV_ITEM_D` char(5) DEFAULT NULL,
  `MOV_IVA` decimal(6,2) DEFAULT NULL,
  `MOV_LISTA` char(1) DEFAULT NULL,
  `MOV_LOGICO` decimal(2,0) DEFAULT NULL,
  `MOV_LOTE` char(40) DEFAULT NULL,
  `MOV_METCOS` char(1) DEFAULT NULL,
  `MOV_MTOCLA` decimal(14,2) DEFAULT NULL,
  `MOV_MTOCOM` decimal(14,2) DEFAULT NULL,
  `MOV_MTODIV` decimal(19,2) DEFAULT NULL,
  `MOV_NOMCAR` char(20) DEFAULT NULL,
  `MOV_NUMCLA` decimal(10,0) DEFAULT NULL,
  `MOV_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOV_NUMPAR` char(5) DEFAULT NULL,
  `MOV_NUMPAT` char(5) DEFAULT NULL,
  `MOV_PESAJE` decimal(1,0) DEFAULT NULL,
  `MOV_PESEXP` decimal(19,2) DEFAULT NULL,
  `MOV_PESO` decimal(19,2) DEFAULT NULL,
  `MOV_PRECIO` decimal(14,2) DEFAULT NULL,
  `MOV_PREDIV` decimal(19,2) DEFAULT NULL,
  `MOV_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOV_RIF` char(20) DEFAULT NULL,
  `MOV_SUCORG` char(6) DEFAULT NULL,
  `MOV_TIPASO` char(3) DEFAULT NULL,
  `MOV_TIPCAR` char(20) DEFAULT NULL,
  `MOV_TIPDOC` char(4) DEFAULT NULL,
  `MOV_TIPIVA` char(2) DEFAULT NULL,
  `MOV_TIPO` char(1) DEFAULT NULL,
  `MOV_TOTAL` decimal(17,2) DEFAULT NULL,
  `MOV_TOTDIV` decimal(18,0) DEFAULT NULL,
  `MOV_UNDMED` char(20) DEFAULT NULL,
  `MOV_USUARI` char(3) DEFAULT NULL,
  `MOV_VOLUME` decimal(19,2) DEFAULT NULL,
  `MOV_W` decimal(19,2) DEFAULT NULL,
  `MOV_X` decimal(18,0) DEFAULT NULL,
  `MOV_Y` decimal(18,0) DEFAULT NULL,
  `MOV_Z` decimal(18,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovinv_taras`
--

DROP TABLE IF EXISTS `dpmovinv_taras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovinv_taras` (
  `MOV_APLORG` char(3) DEFAULT NULL,
  `MOV_ASODOC` char(10) DEFAULT NULL,
  `MOV_ASOTIP` char(3) DEFAULT NULL,
  `MOV_BANDA` decimal(14,2) DEFAULT NULL,
  `MOV_CANTID` decimal(12,2) DEFAULT NULL,
  `MOV_CAPAC` decimal(15,0) DEFAULT NULL,
  `MOV_CAPAP` decimal(5,0) DEFAULT NULL,
  `MOV_CDESC` char(30) DEFAULT NULL,
  `MOV_CENCOS` char(8) DEFAULT NULL,
  `MOV_CODALM` char(3) DEFAULT NULL,
  `MOV_CODCOM` char(24) DEFAULT NULL,
  `MOV_CODCTA` char(10) DEFAULT NULL,
  `MOV_CODEDT` char(8) DEFAULT NULL,
  `MOV_CODIGO` char(20) DEFAULT NULL,
  `MOV_CODMON` char(3) DEFAULT NULL,
  `MOV_CODPER` char(6) DEFAULT NULL,
  `MOV_CODSUC` char(6) DEFAULT NULL,
  `MOV_CODTRA` char(4) DEFAULT NULL,
  `MOV_CODVEN` char(6) DEFAULT NULL,
  `MOV_CONTAB` decimal(2,0) DEFAULT NULL,
  `MOV_COSTO` decimal(14,2) DEFAULT NULL,
  `MOV_CXUND` decimal(13,2) DEFAULT NULL,
  `MOV_CXUNDE` decimal(14,3) DEFAULT NULL,
  `MOV_DESCUE` decimal(6,2) DEFAULT NULL,
  `MOV_DOCASO` char(10) DEFAULT NULL,
  `MOV_DOCUME` char(20) DEFAULT NULL,
  `MOV_EXPEND` decimal(14,2) DEFAULT NULL,
  `MOV_EXPORT` decimal(11,3) DEFAULT NULL,
  `MOV_EXPRES` char(30) DEFAULT NULL,
  `MOV_FCHHOR` char(18) DEFAULT NULL,
  `MOV_FCHVEN` date DEFAULT NULL,
  `MOV_FECHA` date DEFAULT NULL,
  `MOV_FILMAI` decimal(7,0) DEFAULT NULL,
  `MOV_FISICO` decimal(2,0) DEFAULT NULL,
  `MOV_HORA` char(8) DEFAULT NULL,
  `MOV_IMPORT` decimal(11,3) DEFAULT NULL,
  `MOV_IMPOTR` decimal(12,2) DEFAULT NULL,
  `MOV_IMPPRO` decimal(14,2) DEFAULT NULL,
  `MOV_INVACT` decimal(2,0) DEFAULT NULL,
  `MOV_ITEM` char(5) DEFAULT NULL,
  `MOV_ITEM_A` char(5) DEFAULT NULL,
  `MOV_ITEM_C` char(5) DEFAULT NULL,
  `MOV_ITEM_D` char(5) DEFAULT NULL,
  `MOV_IVA` decimal(6,2) DEFAULT NULL,
  `MOV_LISTA` char(1) DEFAULT NULL,
  `MOV_LOGICO` decimal(2,0) DEFAULT NULL,
  `MOV_LOTE` char(24) DEFAULT NULL,
  `MOV_METCOS` char(1) DEFAULT NULL,
  `MOV_MTOCLA` decimal(14,2) DEFAULT NULL,
  `MOV_MTOCOM` decimal(14,2) DEFAULT NULL,
  `MOV_MTODIV` decimal(17,2) DEFAULT NULL,
  `MOV_NUMCLA` decimal(10,0) DEFAULT NULL,
  `MOV_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOV_NUMPAR` char(5) DEFAULT NULL,
  `MOV_NUMPAT` char(5) DEFAULT NULL,
  `MOV_PESAJE` decimal(1,0) DEFAULT NULL,
  `MOV_PESEXP` decimal(18,0) DEFAULT NULL,
  `MOV_PESO` decimal(12,0) DEFAULT NULL,
  `MOV_PRECIO` decimal(14,2) DEFAULT NULL,
  `MOV_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOV_RIF` char(15) DEFAULT NULL,
  `MOV_TIPASO` char(3) DEFAULT NULL,
  `MOV_TIPDOC` char(4) DEFAULT NULL,
  `MOV_TIPIVA` char(2) DEFAULT NULL,
  `MOV_TIPO` char(1) DEFAULT NULL,
  `MOV_TOTAL` decimal(17,2) DEFAULT NULL,
  `MOV_TOTDIV` decimal(18,0) DEFAULT NULL,
  `MOV_UNDMED` char(20) DEFAULT NULL,
  `MOV_USUARI` char(3) DEFAULT NULL,
  `MOV_X` decimal(18,0) DEFAULT NULL,
  `MOV_Y` decimal(18,0) DEFAULT NULL,
  `MOV_Z` decimal(18,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovinv_tin`
--

DROP TABLE IF EXISTS `dpmovinv_tin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovinv_tin` (
  `MOV_ALMORG` char(3) DEFAULT NULL,
  `MOV_APLORG` char(3) DEFAULT NULL,
  `MOV_ASODOC` char(10) DEFAULT NULL,
  `MOV_ASOTIP` char(3) DEFAULT NULL,
  `MOV_BANDA` decimal(14,2) DEFAULT NULL,
  `MOV_CANTID` decimal(12,2) DEFAULT NULL,
  `MOV_CAPAC` decimal(15,0) DEFAULT NULL,
  `MOV_CAPAP` decimal(5,0) DEFAULT NULL,
  `MOV_CDESC` char(30) DEFAULT NULL,
  `MOV_CENCOS` char(8) DEFAULT NULL,
  `MOV_CODALM` char(3) DEFAULT NULL,
  `MOV_CODCOM` char(40) DEFAULT NULL,
  `MOV_CODCTA` char(20) DEFAULT NULL,
  `MOV_CODEDT` char(8) DEFAULT NULL,
  `MOV_CODIGO` char(20) DEFAULT NULL,
  `MOV_CODMON` char(3) DEFAULT NULL,
  `MOV_CODPER` char(6) DEFAULT NULL,
  `MOV_CODSUC` char(6) DEFAULT NULL,
  `MOV_CODTRA` char(4) DEFAULT NULL,
  `MOV_CODVEN` char(6) DEFAULT NULL,
  `MOV_CONTAB` decimal(2,0) DEFAULT NULL,
  `MOV_COSTO` decimal(14,2) DEFAULT NULL,
  `MOV_CXUND` decimal(13,2) DEFAULT NULL,
  `MOV_CXUNDE` decimal(14,3) DEFAULT NULL,
  `MOV_DESCUE` decimal(6,2) DEFAULT NULL,
  `MOV_DOCASO` char(10) DEFAULT NULL,
  `MOV_DOCUME` char(20) DEFAULT NULL,
  `MOV_EXPEND` decimal(14,2) DEFAULT NULL,
  `MOV_EXPORT` decimal(11,3) DEFAULT NULL,
  `MOV_EXPRES` char(30) DEFAULT NULL,
  `MOV_FCHHOR` char(18) DEFAULT NULL,
  `MOV_FCHINI` date DEFAULT NULL,
  `MOV_FCHVEN` date DEFAULT NULL,
  `MOV_FECHA` date DEFAULT NULL,
  `MOV_FILMAI` decimal(7,0) DEFAULT NULL,
  `MOV_FISICO` decimal(2,0) DEFAULT NULL,
  `MOV_HORA` char(8) DEFAULT NULL,
  `MOV_IMPORT` decimal(11,3) DEFAULT NULL,
  `MOV_IMPOTR` decimal(12,2) DEFAULT NULL,
  `MOV_IMPPRO` decimal(14,2) DEFAULT NULL,
  `MOV_INVACT` decimal(2,0) DEFAULT NULL,
  `MOV_ITEM` char(5) DEFAULT NULL,
  `MOV_ITEM_A` char(5) DEFAULT NULL,
  `MOV_ITEM_C` char(5) DEFAULT NULL,
  `MOV_ITEM_D` char(5) DEFAULT NULL,
  `MOV_IVA` decimal(6,2) DEFAULT NULL,
  `MOV_LISTA` char(1) DEFAULT NULL,
  `MOV_LOGICO` decimal(2,0) DEFAULT NULL,
  `MOV_LOTE` char(40) DEFAULT NULL,
  `MOV_METCOS` char(1) DEFAULT NULL,
  `MOV_MTOCLA` decimal(14,2) DEFAULT NULL,
  `MOV_MTOCOM` decimal(14,2) DEFAULT NULL,
  `MOV_MTODIV` decimal(17,2) DEFAULT NULL,
  `MOV_NOMCAR` char(20) DEFAULT NULL,
  `MOV_NUMCLA` decimal(10,0) DEFAULT NULL,
  `MOV_NUMMEM` decimal(10,0) DEFAULT NULL,
  `MOV_NUMPAR` char(5) DEFAULT NULL,
  `MOV_NUMPAT` char(5) DEFAULT NULL,
  `MOV_PESAJE` decimal(1,0) DEFAULT NULL,
  `MOV_PESEXP` decimal(18,0) DEFAULT NULL,
  `MOV_PESO` decimal(17,2) DEFAULT NULL,
  `MOV_PRECIO` decimal(14,2) DEFAULT NULL,
  `MOV_PREDIV` decimal(18,0) DEFAULT NULL,
  `MOV_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOV_RIF` char(15) DEFAULT NULL,
  `MOV_SUCORG` char(6) DEFAULT NULL,
  `MOV_TIPASO` char(3) DEFAULT NULL,
  `MOV_TIPCAR` char(20) DEFAULT NULL,
  `MOV_TIPDOC` char(4) DEFAULT NULL,
  `MOV_TIPIVA` char(2) DEFAULT NULL,
  `MOV_TIPO` char(1) DEFAULT NULL,
  `MOV_TOTAL` decimal(17,2) DEFAULT NULL,
  `MOV_TOTDIV` decimal(18,0) DEFAULT NULL,
  `MOV_UNDMED` char(20) DEFAULT NULL,
  `MOV_USUARI` char(3) DEFAULT NULL,
  `MOV_VOLUME` decimal(18,0) DEFAULT NULL,
  `MOV_W` decimal(18,0) DEFAULT NULL,
  `MOV_X` decimal(18,0) DEFAULT NULL,
  `MOV_Y` decimal(18,0) DEFAULT NULL,
  `MOV_Z` decimal(18,0) DEFAULT NULL,
  KEY `DPDIARIO` (`MOV_FECHA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovinvclasif`
--

DROP TABLE IF EXISTS `dpmovinvclasif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovinvclasif` (
  `MCI_CANTID` decimal(6,2) DEFAULT NULL,
  `MCI_CODSUC` char(8) DEFAULT NULL,
  `MCI_FORMA` char(40) DEFAULT NULL,
  `MCI_GRUPO` char(40) DEFAULT NULL,
  `MCI_INCIDE` decimal(10,2) DEFAULT NULL,
  `MCI_NUMERO` decimal(8,0) DEFAULT NULL,
  `MCI_TIPCLA` char(40) DEFAULT NULL,
  `MCI_TOTAL` decimal(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovinvhora`
--

DROP TABLE IF EXISTS `dpmovinvhora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovinvhora` (
  `MIH_AMPMF` char(1) DEFAULT NULL,
  `MIH_AMPMI` char(1) DEFAULT NULL,
  `MIH_AM_F` char(5) DEFAULT NULL,
  `MIH_AM_I` char(5) DEFAULT NULL,
  `MIH_CLASIF` char(30) DEFAULT NULL,
  `MIH_CODSUC` char(6) DEFAULT NULL,
  `MIH_CONFIR` decimal(1,0) DEFAULT NULL,
  `MIH_ESTADO` char(1) DEFAULT NULL,
  `MIH_FAVORI` char(30) DEFAULT NULL,
  `MIH_FECHA` date DEFAULT NULL,
  `MIH_FORMA` char(20) DEFAULT NULL,
  `MIH_HORAF` char(5) DEFAULT NULL,
  `MIH_HORAI` char(5) DEFAULT NULL,
  `MIH_HORAS` decimal(19,2) DEFAULT NULL,
  `MIH_ITEM` char(5) DEFAULT NULL,
  `MIH_LUGAR` char(20) DEFAULT NULL,
  `MIH_MAILP` decimal(1,0) DEFAULT NULL,
  `MIH_NUMERO` char(10) DEFAULT NULL,
  `MIH_NUMMEM` decimal(19,0) DEFAULT NULL,
  `MIH_PM_F` char(5) DEFAULT NULL,
  `MIH_PM_I` char(5) DEFAULT NULL,
  `MIH_TIPDOC` char(4) DEFAULT NULL,
  `MIH_TIPO` char(1) DEFAULT NULL,
  KEY `DPMOVINVHORA_2` (`MIH_CODSUC`,`MIH_TIPDOC`,`MIH_NUMERO`,`MIH_ITEM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovinvhora_tin`
--

DROP TABLE IF EXISTS `dpmovinvhora_tin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovinvhora_tin` (
  `MIH_AMPMF` char(1) DEFAULT NULL,
  `MIH_AMPMI` char(1) DEFAULT NULL,
  `MIH_AM_F` char(5) DEFAULT NULL,
  `MIH_AM_I` char(5) DEFAULT NULL,
  `MIH_CLASIF` char(30) DEFAULT NULL,
  `MIH_CODSUC` char(6) DEFAULT NULL,
  `MIH_CONFIR` decimal(1,0) DEFAULT NULL,
  `MIH_ESTADO` char(1) DEFAULT NULL,
  `MIH_FAVORI` char(30) DEFAULT NULL,
  `MIH_FECHA` date DEFAULT NULL,
  `MIH_FORMA` char(20) DEFAULT NULL,
  `MIH_HORAF` char(5) DEFAULT NULL,
  `MIH_HORAI` char(5) DEFAULT NULL,
  `MIH_HORAS` decimal(17,2) DEFAULT NULL,
  `MIH_ITEM` char(5) DEFAULT NULL,
  `MIH_LUGAR` char(20) DEFAULT NULL,
  `MIH_MAILP` decimal(1,0) DEFAULT NULL,
  `MIH_NUMERO` char(10) DEFAULT NULL,
  `MIH_NUMMEM` decimal(18,0) DEFAULT NULL,
  `MIH_PM_F` char(5) DEFAULT NULL,
  `MIH_PM_I` char(5) DEFAULT NULL,
  `MIH_TIPDOC` char(4) DEFAULT NULL,
  `MIH_TIPO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovinvtinhis_tin`
--

DROP TABLE IF EXISTS `dpmovinvtinhis_tin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovinvtinhis_tin` (
  `MOV_APLORG` char(3) DEFAULT NULL,
  `MOV_ASODOC` char(10) DEFAULT NULL,
  `MOV_ASOTIP` char(3) DEFAULT NULL,
  `MOV_BANDA` decimal(14,2) DEFAULT NULL,
  `MOV_CANTID` decimal(12,2) DEFAULT NULL,
  `MOV_CAPAC` decimal(15,0) DEFAULT NULL,
  `MOV_CAPAP` decimal(5,0) DEFAULT NULL,
  `MOV_CDESC` char(30) DEFAULT NULL,
  `MOV_CENCOS` char(8) DEFAULT NULL,
  `MOV_CODALM` char(3) DEFAULT NULL,
  `MOV_CODCOM` char(24) DEFAULT NULL,
  `MOV_CODCTA` char(10) DEFAULT NULL,
  `MOV_CODEDT` char(8) DEFAULT NULL,
  `MOV_CODIGO` char(20) DEFAULT NULL,
  `MOV_CODMON` char(3) DEFAULT NULL,
  `MOV_CODPER` char(6) DEFAULT NULL,
  `MOV_CODSUC` char(6) DEFAULT NULL,
  `MOV_CODTRA` char(4) DEFAULT NULL,
  `MOV_CODVEN` char(6) DEFAULT NULL,
  `MOV_CONTAB` decimal(2,0) DEFAULT NULL,
  `MOV_COSTO` decimal(14,2) DEFAULT NULL,
  `MOV_CXUND` decimal(13,2) DEFAULT NULL,
  `MOV_CXUNDE` decimal(14,3) DEFAULT NULL,
  `MOV_DESCUE` decimal(6,2) DEFAULT NULL,
  `MOV_DOCASO` char(10) DEFAULT NULL,
  `MOV_DOCUME` char(20) DEFAULT NULL,
  `MOV_EXPEND` decimal(14,2) DEFAULT NULL,
  `MOV_EXPORT` decimal(11,3) DEFAULT NULL,
  `MOV_EXPRES` char(30) DEFAULT NULL,
  `MOV_FCHHOR` char(18) DEFAULT NULL,
  `MOV_FCHVEN` date DEFAULT NULL,
  `MOV_FECHA` date DEFAULT NULL,
  `MOV_FILMAI` decimal(7,0) DEFAULT NULL,
  `MOV_FISICO` decimal(2,0) DEFAULT NULL,
  `MOV_HORA` char(8) DEFAULT NULL,
  `MOV_IMPORT` decimal(11,3) DEFAULT NULL,
  `MOV_IMPOTR` decimal(12,2) DEFAULT NULL,
  `MOV_IMPPRO` decimal(14,2) DEFAULT NULL,
  `MOV_INVACT` decimal(2,0) DEFAULT NULL,
  `MOV_ITEM` char(5) DEFAULT NULL,
  `MOV_ITEM_A` char(5) DEFAULT NULL,
  `MOV_ITEM_C` char(5) DEFAULT NULL,
  `MOV_ITEM_D` char(5) DEFAULT NULL,
  `MOV_IVA` decimal(6,2) DEFAULT NULL,
  `MOV_LISTA` char(1) DEFAULT NULL,
  `MOV_LOGICO` decimal(2,0) DEFAULT NULL,
  `MOV_LOTE` char(24) DEFAULT NULL,
  `MOV_METCOS` char(1) DEFAULT NULL,
  `MOV_MTOCLA` decimal(14,2) DEFAULT NULL,
  `MOV_MTOCOM` decimal(14,2) DEFAULT NULL,
  `MOV_MTODIV` decimal(17,2) DEFAULT NULL,
  `MOV_NUMCLA` decimal(10,0) DEFAULT NULL,
  `MOV_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOV_NUMPAR` char(5) DEFAULT NULL,
  `MOV_NUMPAT` char(5) DEFAULT NULL,
  `MOV_PESAJE` decimal(1,0) DEFAULT NULL,
  `MOV_PESEXP` decimal(18,0) DEFAULT NULL,
  `MOV_PESO` decimal(12,0) DEFAULT NULL,
  `MOV_PRECIO` decimal(14,2) DEFAULT NULL,
  `MOV_REGAUD` decimal(8,0) DEFAULT NULL,
  `MOV_RIF` char(15) DEFAULT NULL,
  `MOV_TIPASO` char(3) DEFAULT NULL,
  `MOV_TIPDOC` char(4) DEFAULT NULL,
  `MOV_TIPIVA` char(2) DEFAULT NULL,
  `MOV_TIPO` char(1) DEFAULT NULL,
  `MOV_TOTAL` decimal(17,2) DEFAULT NULL,
  `MOV_TOTDIV` decimal(18,0) DEFAULT NULL,
  `MOV_UNDMED` char(20) DEFAULT NULL,
  `MOV_USUARI` char(3) DEFAULT NULL,
  `MOV_X` decimal(18,0) DEFAULT NULL,
  `MOV_Y` decimal(18,0) DEFAULT NULL,
  `MOV_Z` decimal(18,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovmemctz`
--

DROP TABLE IF EXISTS `dpmovmemctz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovmemctz` (
  `MCT_DESCRI` char(40) DEFAULT NULL,
  `MCT_ITEM` char(5) DEFAULT NULL,
  `MCT_MEMO` longtext,
  `MCT_NUMCOT` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovreq`
--

DROP TABLE IF EXISTS `dpmovreq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovreq` (
  `MOR_APLORG` char(1) DEFAULT NULL,
  `MOR_ASODOC` char(10) DEFAULT NULL,
  `MOR_ASOTIP` char(3) DEFAULT NULL,
  `MOR_BANDA` decimal(14,2) DEFAULT NULL,
  `MOR_CANTID` decimal(12,3) DEFAULT NULL,
  `MOR_CDESC` char(30) DEFAULT NULL,
  `MOR_CENCOS` char(8) DEFAULT NULL,
  `MOR_CODALM` char(3) DEFAULT NULL,
  `MOR_CODAUX` char(10) DEFAULT NULL,
  `MOR_CODCOM` char(20) DEFAULT NULL,
  `MOR_CODCTA` char(10) DEFAULT NULL,
  `MOR_CODIGO` char(20) DEFAULT NULL,
  `MOR_CODSUC` char(6) DEFAULT NULL,
  `MOR_CODTRA` char(4) DEFAULT NULL,
  `MOR_CODVEN` char(6) DEFAULT NULL,
  `MOR_CONTAB` decimal(2,0) DEFAULT NULL,
  `MOR_COSTO` decimal(14,2) DEFAULT NULL,
  `MOR_CRECIB` decimal(8,2) DEFAULT NULL,
  `MOR_CXUND` decimal(13,5) DEFAULT NULL,
  `MOR_DESCUE` decimal(6,2) DEFAULT NULL,
  `MOR_DOCUME` char(10) DEFAULT NULL,
  `MOR_ESTADO` char(20) DEFAULT NULL,
  `MOR_EXPEND` decimal(14,2) DEFAULT NULL,
  `MOR_EXPORT` decimal(12,3) DEFAULT NULL,
  `MOR_FCHVEN` date DEFAULT NULL,
  `MOR_FECHA` date DEFAULT NULL,
  `MOR_FISICO` decimal(2,0) DEFAULT NULL,
  `MOR_FRECIB` date DEFAULT NULL,
  `MOR_HORA` char(8) DEFAULT NULL,
  `MOR_IMPORT` decimal(12,3) DEFAULT NULL,
  `MOR_IMPOTR` decimal(12,2) DEFAULT NULL,
  `MOR_IMPPRO` decimal(14,2) DEFAULT NULL,
  `MOR_INVACT` decimal(2,0) DEFAULT NULL,
  `MOR_ITEM` char(5) DEFAULT NULL,
  `MOR_ITEM_A` char(5) DEFAULT NULL,
  `MOR_ITEM_C` char(5) DEFAULT NULL,
  `MOR_IVA` decimal(6,2) DEFAULT NULL,
  `MOR_LISTA` char(1) DEFAULT NULL,
  `MOR_LOGICO` decimal(2,0) DEFAULT NULL,
  `MOR_LOTE` char(15) DEFAULT NULL,
  `MOR_MEMO` longtext,
  `MOR_MTOCOM` decimal(14,2) DEFAULT NULL,
  `MOR_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MOR_PRECIB` char(30) DEFAULT NULL,
  `MOR_PRECIO` decimal(14,3) DEFAULT NULL,
  `MOR_PREDOL` decimal(14,2) DEFAULT NULL,
  `MOR_PROYEC` char(8) DEFAULT NULL,
  `MOR_TALL01` decimal(4,0) DEFAULT NULL,
  `MOR_TALL02` decimal(4,0) DEFAULT NULL,
  `MOR_TALL03` decimal(4,0) DEFAULT NULL,
  `MOR_TALL04` decimal(4,0) DEFAULT NULL,
  `MOR_TALL05` decimal(4,0) DEFAULT NULL,
  `MOR_TALL06` decimal(4,0) DEFAULT NULL,
  `MOR_TALL07` decimal(4,0) DEFAULT NULL,
  `MOR_TALL08` decimal(4,0) DEFAULT NULL,
  `MOR_TALL09` decimal(4,0) DEFAULT NULL,
  `MOR_TALL10` decimal(4,0) DEFAULT NULL,
  `MOR_TIPDOC` char(4) DEFAULT NULL,
  `MOR_TIPIVA` char(2) DEFAULT NULL,
  `MOR_TIPO` char(1) DEFAULT NULL,
  `MOR_TOTAL` decimal(18,2) DEFAULT NULL,
  `MOR_TOTDOL` decimal(18,2) DEFAULT NULL,
  `MOR_UNDMED` char(8) DEFAULT NULL,
  `MOR_USUARI` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovserial`
--

DROP TABLE IF EXISTS `dpmovserial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovserial` (
  `MSR_ACTIVO` decimal(1,0) DEFAULT NULL,
  `MSR_CANEMP` decimal(10,0) DEFAULT NULL,
  `MSR_CANTID` decimal(10,2) DEFAULT NULL,
  `MSR_CODALM` char(3) DEFAULT NULL,
  `MSR_CODCTA` char(10) DEFAULT NULL,
  `MSR_CODIGO` char(20) DEFAULT NULL,
  `MSR_CODMON` char(3) DEFAULT NULL,
  `MSR_CODSUC` char(6) DEFAULT NULL,
  `MSR_CODTAR` char(20) DEFAULT NULL,
  `MSR_CODUBI` char(6) DEFAULT NULL,
  `MSR_FCHVEN` date DEFAULT NULL,
  `MSR_FECHA` date DEFAULT NULL,
  `MSR_HORA` char(8) DEFAULT NULL,
  `MSR_ITEM` char(5) DEFAULT NULL,
  `MSR_LOTE` char(20) DEFAULT NULL,
  `MSR_NUMDOC` char(10) DEFAULT NULL,
  `MSR_OBSERV` char(40) DEFAULT NULL,
  `MSR_ORDPRO` char(8) DEFAULT NULL,
  `MSR_PESBAL` decimal(1,0) DEFAULT NULL,
  `MSR_PESBRU` decimal(14,2) DEFAULT NULL,
  `MSR_PESO` decimal(14,2) DEFAULT NULL,
  `MSR_PESTAR` decimal(14,2) DEFAULT NULL,
  `MSR_PRECIO` decimal(14,2) DEFAULT NULL,
  `MSR_SERIAL` char(40) DEFAULT NULL,
  `MSR_TIPDOC` char(4) DEFAULT NULL,
  `MSR_TIPO` char(1) DEFAULT NULL,
  KEY `DPMOVINVSERIAL` (`MSR_CODSUC`,`MSR_CODALM`,`MSR_TIPDOC`,`MSR_CODCTA`,`MSR_NUMDOC`,`MSR_ITEM`,`MSR_SERIAL`),
  KEY `DPMOVSERIALCODSER` (`MSR_CODSUC`,`MSR_CODIGO`,`MSR_SERIAL`),
  KEY `DPMOVSERIAL_2` (`MSR_CODIGO`),
  KEY `DPMOVSERUBILOTE` (`MSR_CODUBI`,`MSR_LOTE`),
  KEY `DPORDPROD` (`MSR_CODSUC`,`MSR_ORDPRO`),
  KEY `SUCCODLOT` (`MSR_CODSUC`,`MSR_CODIGO`,`MSR_LOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovserial_del`
--

DROP TABLE IF EXISTS `dpmovserial_del`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovserial_del` (
  `MSR_ACTIVO` decimal(1,0) DEFAULT NULL,
  `MSR_CANEMP` decimal(10,0) DEFAULT NULL,
  `MSR_CANTID` decimal(10,2) DEFAULT NULL,
  `MSR_CODALM` char(3) DEFAULT NULL,
  `MSR_CODCTA` char(10) DEFAULT NULL,
  `MSR_CODIGO` char(20) DEFAULT NULL,
  `MSR_CODMON` char(3) DEFAULT NULL,
  `MSR_CODSUC` char(6) DEFAULT NULL,
  `MSR_CODTAR` char(20) DEFAULT NULL,
  `MSR_CODUBI` char(6) DEFAULT NULL,
  `MSR_FCHVEN` date DEFAULT NULL,
  `MSR_FECHA` date DEFAULT NULL,
  `MSR_HORA` char(8) DEFAULT NULL,
  `MSR_ITEM` char(5) DEFAULT NULL,
  `MSR_LOTE` char(20) DEFAULT NULL,
  `MSR_NUMDOC` char(10) DEFAULT NULL,
  `MSR_OBSERV` char(40) DEFAULT NULL,
  `MSR_ORDPRO` char(8) DEFAULT NULL,
  `MSR_PESBAL` decimal(1,0) DEFAULT NULL,
  `MSR_PESBRU` decimal(14,2) DEFAULT NULL,
  `MSR_PESO` decimal(14,2) DEFAULT NULL,
  `MSR_PESTAR` decimal(14,2) DEFAULT NULL,
  `MSR_PRECIO` decimal(14,2) DEFAULT NULL,
  `MSR_SERIAL` char(40) DEFAULT NULL,
  `MSR_TIPDOC` char(4) DEFAULT NULL,
  `MSR_TIPO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovserialdpmovinv_his`
--

DROP TABLE IF EXISTS `dpmovserialdpmovinv_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovserialdpmovinv_his` (
  `MSR_ACTIVO` decimal(1,0) DEFAULT NULL,
  `MSR_CANEMP` decimal(10,0) DEFAULT NULL,
  `MSR_CANTID` decimal(10,2) DEFAULT NULL,
  `MSR_CODALM` char(3) DEFAULT NULL,
  `MSR_CODCTA` char(10) DEFAULT NULL,
  `MSR_CODIGO` char(20) DEFAULT NULL,
  `MSR_CODMON` char(3) DEFAULT NULL,
  `MSR_CODSUC` char(6) DEFAULT NULL,
  `MSR_CODTAR` char(20) DEFAULT NULL,
  `MSR_CODUBI` char(6) DEFAULT NULL,
  `MSR_FCHVEN` date DEFAULT NULL,
  `MSR_FECHA` date DEFAULT NULL,
  `MSR_HORA` char(8) DEFAULT NULL,
  `MSR_ITEM` char(5) DEFAULT NULL,
  `MSR_LOTE` char(20) DEFAULT NULL,
  `MSR_NUMDOC` char(10) DEFAULT NULL,
  `MSR_OBSERV` char(40) DEFAULT NULL,
  `MSR_ORDPRO` char(8) DEFAULT NULL,
  `MSR_PESBAL` decimal(1,0) DEFAULT NULL,
  `MSR_PESBRU` decimal(14,2) DEFAULT NULL,
  `MSR_PESO` decimal(14,2) DEFAULT NULL,
  `MSR_PESTAR` decimal(14,2) DEFAULT NULL,
  `MSR_PRECIO` decimal(14,2) DEFAULT NULL,
  `MSR_SERIAL` char(40) DEFAULT NULL,
  `MSR_TIPDOC` char(4) DEFAULT NULL,
  `MSR_TIPO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovserialdpmovinv_regp`
--

DROP TABLE IF EXISTS `dpmovserialdpmovinv_regp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovserialdpmovinv_regp` (
  `MSR_ACTIVO` decimal(1,0) DEFAULT NULL,
  `MSR_CANEMP` decimal(10,0) DEFAULT NULL,
  `MSR_CANTID` decimal(10,2) DEFAULT NULL,
  `MSR_CODALM` char(3) DEFAULT NULL,
  `MSR_CODCTA` char(10) DEFAULT NULL,
  `MSR_CODIGO` char(20) DEFAULT NULL,
  `MSR_CODMON` char(3) DEFAULT NULL,
  `MSR_CODSUC` char(6) DEFAULT NULL,
  `MSR_CODTAR` char(20) DEFAULT NULL,
  `MSR_CODUBI` char(6) DEFAULT NULL,
  `MSR_FCHVEN` date DEFAULT NULL,
  `MSR_FECHA` date DEFAULT NULL,
  `MSR_HORA` char(8) DEFAULT NULL,
  `MSR_ITEM` char(5) DEFAULT NULL,
  `MSR_LOTE` char(20) DEFAULT NULL,
  `MSR_NUMDOC` char(10) DEFAULT NULL,
  `MSR_OBSERV` char(40) DEFAULT NULL,
  `MSR_ORDPRO` char(8) DEFAULT NULL,
  `MSR_PESBAL` decimal(1,0) DEFAULT NULL,
  `MSR_PESBRU` decimal(14,2) DEFAULT NULL,
  `MSR_PESO` decimal(14,2) DEFAULT NULL,
  `MSR_PESTAR` decimal(14,2) DEFAULT NULL,
  `MSR_PRECIO` decimal(14,2) DEFAULT NULL,
  `MSR_SERIAL` char(40) DEFAULT NULL,
  `MSR_TIPDOC` char(4) DEFAULT NULL,
  `MSR_TIPO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmovserialdpmovinv_reqm`
--

DROP TABLE IF EXISTS `dpmovserialdpmovinv_reqm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmovserialdpmovinv_reqm` (
  `MSR_ACTIVO` decimal(1,0) DEFAULT NULL,
  `MSR_CANEMP` decimal(10,0) DEFAULT NULL,
  `MSR_CANTID` decimal(10,2) DEFAULT NULL,
  `MSR_CODALM` char(3) DEFAULT NULL,
  `MSR_CODCTA` char(10) DEFAULT NULL,
  `MSR_CODIGO` char(20) DEFAULT NULL,
  `MSR_CODMON` char(3) DEFAULT NULL,
  `MSR_CODSUC` char(6) DEFAULT NULL,
  `MSR_CODTAR` char(20) DEFAULT NULL,
  `MSR_CODUBI` char(6) DEFAULT NULL,
  `MSR_FCHVEN` date DEFAULT NULL,
  `MSR_FECHA` date DEFAULT NULL,
  `MSR_HORA` char(8) DEFAULT NULL,
  `MSR_ITEM` char(5) DEFAULT NULL,
  `MSR_LOTE` char(20) DEFAULT NULL,
  `MSR_NUMDOC` char(10) DEFAULT NULL,
  `MSR_OBSERV` char(40) DEFAULT NULL,
  `MSR_ORDPRO` char(8) DEFAULT NULL,
  `MSR_PESBAL` decimal(1,0) DEFAULT NULL,
  `MSR_PESBRU` decimal(14,2) DEFAULT NULL,
  `MSR_PESO` decimal(14,2) DEFAULT NULL,
  `MSR_PESTAR` decimal(14,2) DEFAULT NULL,
  `MSR_PRECIO` decimal(14,2) DEFAULT NULL,
  `MSR_SERIAL` char(40) DEFAULT NULL,
  `MSR_TIPDOC` char(4) DEFAULT NULL,
  `MSR_TIPO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpmunicipios`
--

DROP TABLE IF EXISTS `dpmunicipios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpmunicipios` (
  `CODAREA` char(3) DEFAULT NULL,
  `ESTADO` char(20) DEFAULT NULL,
  `MUNICIPIO` char(120) DEFAULT NULL,
  `PAIS` char(35) DEFAULT NULL,
  KEY `DPMUNICIPIOS_2` (`PAIS`,`ESTADO`),
  KEY `DPMUNICIPIOS_4` (`PAIS`,`ESTADO`,`MUNICIPIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpnominaint`
--

DROP TABLE IF EXISTS `dpnominaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpnominaint` (
  `ITN_ACTIVO` decimal(1,0) DEFAULT NULL,
  `ITN_CODIGO` char(3) DEFAULT NULL,
  `ITN_CODREP` char(20) DEFAULT NULL,
  `ITN_CONPAT` char(4) DEFAULT NULL,
  `ITN_CONRET` char(4) DEFAULT NULL,
  `ITN_RIF` char(12) DEFAULT NULL,
  `ITN_TIPDOC` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpnumcbte`
--

DROP TABLE IF EXISTS `dpnumcbte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpnumcbte` (
  `DNC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `DNC_ACTUAL` decimal(1,0) DEFAULT NULL,
  `DNC_CLAVE` char(20) DEFAULT NULL,
  `DNC_CODIGO` char(20) DEFAULT NULL,
  `DNC_DESCRI` char(100) DEFAULT NULL,
  `DNC_FCHINI` date DEFAULT NULL,
  `DNC_ID` char(3) NOT NULL,
  `DNC_REFERE` char(80) DEFAULT NULL,
  `DNC_REPLAC` decimal(1,0) DEFAULT NULL,
  `DNC_SINTAX` char(80) DEFAULT NULL,
  `DNC_TABLA` char(40) DEFAULT NULL,
  PRIMARY KEY (`DNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpobjfin`
--

DROP TABLE IF EXISTS `dpobjfin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpobjfin` (
  `OBF_CANTID` decimal(20,2) DEFAULT NULL,
  `OBF_CARNAV` decimal(1,0) DEFAULT NULL,
  `OBF_CODIGO` char(20) DEFAULT NULL,
  `OBF_CODINV` char(20) DEFAULT NULL,
  `OBF_CODMON` char(3) DEFAULT NULL,
  `OBF_CODSUC` char(6) DEFAULT NULL,
  `OBF_DESCRI` char(250) DEFAULT NULL,
  `OBF_DESDE` date DEFAULT NULL,
  `OBF_DIAS` decimal(3,0) DEFAULT NULL,
  `OBF_DOCORG` char(20) DEFAULT NULL,
  `OBF_DOMMED` decimal(1,0) DEFAULT NULL,
  `OBF_FCHREG` date DEFAULT NULL,
  `OBF_FECHA` date DEFAULT NULL,
  `OBF_FERIAD` decimal(1,0) DEFAULT NULL,
  `OBF_HASTA` date DEFAULT NULL,
  `OBF_ID` char(12) DEFAULT NULL,
  `OBF_ID_ORG` char(20) DEFAULT NULL,
  `OBF_ITEM` char(5) DEFAULT NULL,
  `OBF_JUEMED` decimal(1,0) DEFAULT NULL,
  `OBF_LUNMED` decimal(1,0) DEFAULT NULL,
  `OBF_MARMED` decimal(1,0) DEFAULT NULL,
  `OBF_MIEMED` decimal(1,0) DEFAULT NULL,
  `OBF_MONMED` char(4) DEFAULT NULL,
  `OBF_MTOINI` decimal(19,2) DEFAULT NULL,
  `OBF_MTOLOG` decimal(19,2) DEFAULT NULL,
  `OBF_MTOOBJ` decimal(19,2) DEFAULT NULL,
  `OBF_PERIOD` char(10) DEFAULT NULL,
  `OBF_PERIODO` char(20) DEFAULT NULL,
  `OBF_PORCEN` decimal(5,2) DEFAULT NULL,
  `OBF_PORPRO` decimal(5,2) DEFAULT NULL,
  `OBF_PRGBRW` char(30) DEFAULT NULL,
  `OBF_SABMED` decimal(1,0) DEFAULT NULL,
  `OBF_SEMSAN` decimal(1,0) DEFAULT NULL,
  `OBF_TABORG` char(30) DEFAULT NULL,
  `OBF_UNDMED` char(10) DEFAULT NULL,
  `OBF_VIEMED` decimal(1,0) DEFAULT NULL,
  `OBJ_CODSUC` char(6) DEFAULT NULL,
  KEY `DPOBJFIN_2` (`OBF_CODMON`),
  KEY `DPOBJFIN_CODSUC` (`OBF_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpobjfin_diario`
--

DROP TABLE IF EXISTS `dpobjfin_diario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpobjfin_diario` (
  `OBD_ACTIVO` decimal(1,0) DEFAULT NULL,
  `OBD_CODIGO` char(20) DEFAULT NULL,
  `OBD_COMPAR` decimal(1,0) DEFAULT NULL,
  `OBD_FECHA` date DEFAULT NULL,
  `OBD_HABIL` decimal(1,0) DEFAULT NULL,
  `OBD_ID` char(20) DEFAULT NULL,
  `OBD_IDSUBC` char(10) DEFAULT NULL,
  `OBD_ID_FCH` decimal(3,0) DEFAULT NULL,
  `OBD_ID_SUB` char(10) DEFAULT NULL,
  `OBD_ITEM` char(6) DEFAULT NULL,
  `OBD_MONTO` decimal(19,2) DEFAULT NULL,
  `OBD_MTOCOS` decimal(19,2) DEFAULT NULL,
  `OBD_MTOEJE` decimal(19,2) DEFAULT NULL,
  `OBD_PORCEN` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpobjfincta`
--

DROP TABLE IF EXISTS `dpobjfincta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpobjfincta` (
  `PCC_CODMOD` char(6) DEFAULT NULL,
  `PCC_CODOBJ` char(20) DEFAULT NULL,
  `PCC_CODSUC` char(6) DEFAULT NULL,
  `PCC_CUENTA` char(20) DEFAULT NULL,
  `PCC_MONTO` decimal(19,2) DEFAULT NULL,
  `PCC_MTODIV` decimal(19,2) DEFAULT NULL,
  `PCC_PORCEN` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpobjfindocreq`
--

DROP TABLE IF EXISTS `dpobjfindocreq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpobjfindocreq` (
  `DOC_ACT` decimal(1,0) DEFAULT NULL,
  `DOC_CODSUC` char(6) DEFAULT NULL,
  `DOC_ESTADO` char(8) DEFAULT NULL,
  `DOC_FCHREQ` date DEFAULT NULL,
  `DOC_FECHA` date DEFAULT NULL,
  `DOC_ID` char(12) DEFAULT NULL,
  `DOC_NUMERO` char(10) DEFAULT NULL,
  KEY `DPOBJFINDOCREQ_2` (`DOC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpobjfinmovinvreq`
--

DROP TABLE IF EXISTS `dpobjfinmovinvreq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpobjfinmovinvreq` (
  `MOV_CANTID` decimal(14,2) DEFAULT NULL,
  `MOV_CODIGO` char(20) DEFAULT NULL,
  `MOV_CODSUC` char(8) DEFAULT NULL,
  `MOV_COSTO` decimal(19,2) DEFAULT NULL,
  `MOV_CXUND` decimal(14,2) DEFAULT NULL,
  `MOV_DOCUME` char(10) DEFAULT NULL,
  `MOV_ID` char(12) DEFAULT NULL,
  `MOV_NUMMEM` decimal(10,0) DEFAULT NULL,
  `MOV_TOTAL` decimal(19,2) DEFAULT NULL,
  `MOV_UNDMED` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpordenproducc`
--

DROP TABLE IF EXISTS `dpordenproducc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpordenproducc` (
  `ORD_PEDNUM` char(10) DEFAULT NULL,
  `ORP_ACT` decimal(1,0) DEFAULT NULL,
  `ORP_CANTID` decimal(16,0) DEFAULT NULL,
  `ORP_CODALM` char(3) DEFAULT NULL,
  `ORP_CODCLI` char(10) DEFAULT NULL,
  `ORP_CODCOM` char(15) DEFAULT NULL,
  `ORP_CODFOR` char(20) DEFAULT NULL,
  `ORP_CODINV` char(20) DEFAULT NULL,
  `ORP_CODMAQ` char(6) DEFAULT NULL,
  `ORP_CODMON` char(3) DEFAULT NULL,
  `ORP_CODSUC` char(6) DEFAULT NULL,
  `ORP_CODTRA` char(6) DEFAULT NULL,
  `ORP_COMEN1` char(40) DEFAULT NULL,
  `ORP_COMEN2` char(40) DEFAULT NULL,
  `ORP_COSMAT` decimal(15,2) DEFAULT NULL,
  `ORP_COSVAA` decimal(15,2) DEFAULT NULL,
  `ORP_DESCR1` char(60) DEFAULT NULL,
  `ORP_DPTFIN` char(6) DEFAULT NULL,
  `ORP_ESTADO` char(1) DEFAULT NULL,
  `ORP_FCHENT` date DEFAULT NULL,
  `ORP_FCHINI` date DEFAULT NULL,
  `ORP_FECHA` date DEFAULT NULL,
  `ORP_HORAE` char(8) DEFAULT NULL,
  `ORP_LINEA` char(6) DEFAULT NULL,
  `ORP_NBATCH` char(6) DEFAULT NULL,
  `ORP_NUMDOC` char(10) DEFAULT NULL,
  `ORP_NUMERO` char(8) DEFAULT NULL,
  `ORP_NUMMEM` decimal(8,0) DEFAULT NULL,
  `ORP_ORDCON` char(8) DEFAULT NULL,
  `ORP_PROGRA` decimal(1,0) DEFAULT NULL,
  `ORP_PRONRO` char(8) DEFAULT NULL,
  `ORP_PROPRI` decimal(2,0) DEFAULT NULL,
  `ORP_RUNDPR` decimal(15,2) DEFAULT NULL,
  `ORP_TBATCH` decimal(10,0) DEFAULT NULL,
  `ORP_TIPDOC` char(4) DEFAULT NULL,
  `ORP_TIPO` char(1) DEFAULT NULL,
  `ORP_UNDEJE` decimal(15,2) DEFAULT NULL,
  `ORP_UNDMED` char(20) DEFAULT NULL,
  `ORP_UNDPRO` decimal(15,2) DEFAULT NULL,
  `ORP_UNDREA` decimal(14,2) DEFAULT NULL,
  KEY `DPORDENPRODUCC_2` (`ORP_CODSUC`),
  KEY `DPORDENPRODUCC_4` (`ORP_DPTFIN`),
  KEY `DPORDENPRODUCC_6` (`ORP_CODFOR`,`ORP_CODINV`),
  KEY `DPORDENPRODUCC_8` (`ORP_CODSUC`,`ORP_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dppaises`
--

DROP TABLE IF EXISTS `dppaises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dppaises` (
  `CLRGRA` decimal(10,2) DEFAULT NULL,
  `CODAREA` char(3) DEFAULT NULL,
  `PAIS` char(35) NOT NULL,
  `PNUMMEMO` decimal(7,0) DEFAULT NULL,
  PRIMARY KEY (`PAIS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpparroquias`
--

DROP TABLE IF EXISTS `dpparroquias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpparroquias` (
  `CODAREA` char(3) DEFAULT NULL,
  `ESTADO` char(20) DEFAULT NULL,
  `MUNICIPIO` char(120) DEFAULT NULL,
  `PAIS` char(35) DEFAULT NULL,
  `PARROQUIA` char(120) DEFAULT NULL,
  `TARIFA` decimal(18,2) DEFAULT NULL,
  KEY `DPPARROQUIAS_2` (`PAIS`,`ESTADO`,`MUNICIPIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpperiodocomisi`
--

DROP TABLE IF EXISTS `dpperiodocomisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpperiodocomisi` (
  `PDC_DESDE` date DEFAULT NULL,
  `PDC_HASTA` date DEFAULT NULL,
  `PDC_NUMERO` char(10) NOT NULL,
  PRIMARY KEY (`PDC_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dppersonal`
--

DROP TABLE IF EXISTS `dppersonal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dppersonal` (
  `PER_ACTIVO` decimal(1,0) DEFAULT NULL,
  `PER_AGENTE` decimal(1,0) DEFAULT NULL,
  `PER_AM_F` char(5) DEFAULT NULL,
  `PER_AM_I` char(5) DEFAULT NULL,
  `PER_CARGO` char(40) DEFAULT NULL,
  `PER_CEDULA` decimal(8,0) DEFAULT NULL,
  `PER_CELULA` char(12) DEFAULT NULL,
  `PER_CODDEP` char(10) DEFAULT NULL,
  `PER_CODGER` char(3) DEFAULT NULL,
  `PER_CODGRU` char(6) DEFAULT NULL,
  `PER_CODIGO` char(6) NOT NULL,
  `PER_COMEN1` char(40) DEFAULT NULL,
  `PER_COMEN2` char(40) DEFAULT NULL,
  `PER_COMENT` char(250) DEFAULT NULL,
  `PER_CUOTA` decimal(12,2) DEFAULT NULL,
  `PER_DESDE` date DEFAULT NULL,
  `PER_DIADOM` decimal(1,0) DEFAULT NULL,
  `PER_DIAFER` decimal(1,0) DEFAULT NULL,
  `PER_DIAJUE` decimal(1,0) DEFAULT NULL,
  `PER_DIALUN` decimal(1,0) DEFAULT NULL,
  `PER_DIAMAR` decimal(1,0) DEFAULT NULL,
  `PER_DIAMIE` decimal(1,0) DEFAULT NULL,
  `PER_DIASAB` decimal(1,0) DEFAULT NULL,
  `PER_DIAVIE` decimal(1,0) DEFAULT NULL,
  `PER_DIR1` char(30) DEFAULT NULL,
  `PER_DIR2` char(30) DEFAULT NULL,
  `PER_DIR3` char(30) DEFAULT NULL,
  `PER_DIR4` char(30) DEFAULT NULL,
  `PER_DOMAFI` char(5) DEFAULT NULL,
  `PER_DOMAIN` char(5) DEFAULT NULL,
  `PER_DOMPFI` char(5) DEFAULT NULL,
  `PER_DOMPIN` char(5) DEFAULT NULL,
  `PER_EMAIL` char(70) DEFAULT NULL,
  `PER_EXT` char(4) DEFAULT NULL,
  `PER_FILMAI` decimal(7,0) DEFAULT NULL,
  `PER_HASTA` date DEFAULT NULL,
  `PER_ISGRUP` decimal(1,0) DEFAULT NULL,
  `PER_JUEAFI` char(5) DEFAULT NULL,
  `PER_JUEAIN` char(5) DEFAULT NULL,
  `PER_JUEPFI` char(5) DEFAULT NULL,
  `PER_JUEPIN` char(5) DEFAULT NULL,
  `PER_LUNAFI` char(5) DEFAULT NULL,
  `PER_LUNAIN` char(5) DEFAULT NULL,
  `PER_LUNPFI` char(5) DEFAULT NULL,
  `PER_LUNPIN` char(5) DEFAULT NULL,
  `PER_MARAFI` char(5) DEFAULT NULL,
  `PER_MARAIN` char(5) DEFAULT NULL,
  `PER_MARPFI` char(5) DEFAULT NULL,
  `PER_MARPIN` char(5) DEFAULT NULL,
  `PER_MIEAFI` char(5) DEFAULT NULL,
  `PER_MIEAIN` char(5) DEFAULT NULL,
  `PER_MIEPFI` char(5) DEFAULT NULL,
  `PER_MIEPIN` char(5) DEFAULT NULL,
  `PER_MTOCOB` decimal(12,2) DEFAULT NULL,
  `PER_NOMBRE` char(45) DEFAULT NULL,
  `PER_NUMMEM` decimal(7,0) DEFAULT NULL,
  `PER_OPERAR` decimal(1,0) DEFAULT NULL,
  `PER_PM_F` char(5) DEFAULT NULL,
  `PER_PM_I` char(5) DEFAULT NULL,
  `PER_RIF` char(12) DEFAULT NULL,
  `PER_SABAFI` char(5) DEFAULT NULL,
  `PER_SABAIN` char(5) DEFAULT NULL,
  `PER_SABPFI` char(5) DEFAULT NULL,
  `PER_SABPIN` char(5) DEFAULT NULL,
  `PER_SEMANA` decimal(1,0) DEFAULT NULL,
  `PER_TARINT` decimal(1,0) DEFAULT NULL,
  `PER_TELEFO` char(12) DEFAULT NULL,
  `PER_TIPCED` char(1) DEFAULT NULL,
  `PER_VIEAFI` char(5) DEFAULT NULL,
  `PER_VIEAIN` char(5) DEFAULT NULL,
  `PER_VIEPFI` char(5) DEFAULT NULL,
  `PER_VIEPIN` char(5) DEFAULT NULL,
  PRIMARY KEY (`PER_CODIGO`),
  KEY `DPPERSONAL1` (`PER_CEDULA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dppersonalinv`
--

DROP TABLE IF EXISTS `dppersonalinv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dppersonalinv` (
  `PXI_ACTIVO` decimal(1,0) DEFAULT NULL,
  `PXI_CODINV` char(20) DEFAULT NULL,
  `PXI_CODPER` char(6) DEFAULT NULL,
  `PXI_NUMMEM` decimal(7,0) DEFAULT NULL,
  KEY `DPPERSONALINV_2` (`PXI_CODPER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpplacos`
--

DROP TABLE IF EXISTS `dpplacos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpplacos` (
  `PLA_CODCOS` char(8) DEFAULT NULL,
  `PLA_CODCTA` char(20) DEFAULT NULL,
  `PLA_CODMOD` char(6) DEFAULT NULL,
  `PLA_ORIGEN` char(3) DEFAULT NULL,
  `PLA_PORCEN` decimal(6,2) DEFAULT NULL,
  KEY `DPPLACOS_2` (`PLA_CODCOS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpplacos_cta`
--

DROP TABLE IF EXISTS `dpplacos_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpplacos_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPPLACOS_CTA_2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPPLACOS_CTA_4` (`CIC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dppladpto`
--

DROP TABLE IF EXISTS `dppladpto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dppladpto` (
  `PLA_CODCTA` char(20) DEFAULT NULL,
  `PLA_CODDEP` char(10) DEFAULT NULL,
  `PLA_CODMOD` char(6) DEFAULT NULL,
  `PLA_CTADIS` char(20) DEFAULT NULL,
  `PLA_ORIGEN` char(3) DEFAULT NULL,
  `PLA_PORCEN` decimal(19,2) DEFAULT NULL,
  KEY `DPPLADPTO_2` (`PLA_CODMOD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpposbancario`
--

DROP TABLE IF EXISTS `dpposbancario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpposbancario` (
  `PVB_ACTIVO` decimal(1,0) DEFAULT NULL,
  `PVB_CODBCO` char(6) DEFAULT NULL,
  `PVB_CODIGO` char(3) NOT NULL,
  `PVB_CTABCO` char(20) DEFAULT NULL,
  `PVB_DESCRI` char(30) DEFAULT NULL,
  `PVB_SERIAL` char(20) DEFAULT NULL,
  `PVB_TURNO1` char(6) DEFAULT NULL,
  `PVB_TURNO2` char(6) DEFAULT NULL,
  `PVB_TURNO3` char(6) DEFAULT NULL,
  `PVB_TURNO4` char(6) DEFAULT NULL,
  PRIMARY KEY (`PVB_CODIGO`),
  KEY `DPPOSBANCARIO_2` (`PVB_CODBCO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpposbancariocta`
--

DROP TABLE IF EXISTS `dpposbancariocta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpposbancariocta` (
  `PXC_CODBCO` char(6) DEFAULT NULL,
  `PXC_CODPOS` char(3) DEFAULT NULL,
  `PXC_CUENTA` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpposcomanda`
--

DROP TABLE IF EXISTS `dpposcomanda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpposcomanda` (
  `COM_CANTID` decimal(8,2) DEFAULT NULL,
  `COM_CODEQU` char(20) DEFAULT NULL,
  `COM_CODIGO` char(20) DEFAULT NULL,
  `COM_COMENT` char(40) DEFAULT NULL,
  `COM_DESCRI` char(40) DEFAULT NULL,
  `COM_HORA` char(8) DEFAULT NULL,
  `COM_IMPRES` decimal(1,0) DEFAULT NULL,
  `COM_ITEM` char(5) DEFAULT NULL,
  `COM_ITEM_A` char(5) DEFAULT NULL,
  `COM_IVA` decimal(5,2) DEFAULT NULL,
  `COM_LLEVAR` decimal(1,0) DEFAULT NULL,
  `COM_LPT` char(4) DEFAULT NULL,
  `COM_MESA` char(3) DEFAULT NULL,
  `COM_MESERO` char(6) DEFAULT NULL,
  `COM_MTOIVA` decimal(14,2) DEFAULT NULL,
  `COM_PEDIDO` char(10) DEFAULT NULL,
  `COM_PRECIO` decimal(16,2) DEFAULT NULL,
  `COM_RIF` char(10) DEFAULT NULL,
  `COM_TIPO` char(1) DEFAULT NULL,
  `COM_UNDMED` char(8) DEFAULT NULL,
  `COM_USUARI` char(3) DEFAULT NULL,
  KEY `DPPOSCOMANDA_2` (`COM_RIF`),
  KEY `DPPOSCOMANDA_4` (`COM_CODIGO`),
  KEY `DPPOSCOMANDA_6` (`COM_MESERO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpposusuario`
--

DROP TABLE IF EXISTS `dpposusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpposusuario` (
  `RDP_CODMON` char(3) DEFAULT NULL,
  `RDP_FECHA` date DEFAULT NULL,
  `RDP_FINFIN` char(10) DEFAULT NULL,
  `RDP_FISINI` char(10) DEFAULT NULL,
  `RDP_HORA` char(8) DEFAULT NULL,
  `RDP_IP` char(15) DEFAULT NULL,
  `RDP_MONTO` decimal(14,2) DEFAULT NULL,
  `RDP_MTODIV` decimal(19,0) DEFAULT NULL,
  `RDP_NUMERO` char(8) DEFAULT NULL,
  `RDP_TIPTRA` char(1) DEFAULT NULL,
  `RDP_US` char(3) DEFAULT NULL,
  `RDP_USUAUT` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpprecios`
--

DROP TABLE IF EXISTS `dpprecios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpprecios` (
  `PRE_BASE` decimal(19,2) DEFAULT NULL,
  `PRE_CODCOM` char(20) DEFAULT NULL,
  `PRE_CODIGO` char(20) DEFAULT NULL,
  `PRE_CODMON` char(3) DEFAULT NULL,
  `PRE_CODPRO` char(10) DEFAULT NULL,
  `PRE_DESCUE` decimal(6,2) DEFAULT NULL,
  `PRE_DESMAX` decimal(6,2) DEFAULT NULL,
  `PRE_FCHSIS` date DEFAULT NULL,
  `PRE_FECHA` date DEFAULT NULL,
  `PRE_FECHAV` date DEFAULT NULL,
  `PRE_HORA` char(8) DEFAULT NULL,
  `PRE_IP` char(14) DEFAULT NULL,
  `PRE_LISTA` char(1) DEFAULT NULL,
  `PRE_NOTIFI` decimal(1,0) DEFAULT NULL,
  `PRE_ORIGEN` char(4) DEFAULT NULL,
  `PRE_PRECIO` decimal(18,2) DEFAULT NULL,
  `PRE_REQUIE` decimal(10,2) DEFAULT NULL,
  `PRE_UNDMED` char(20) DEFAULT NULL,
  `PRE_USUARI` char(3) DEFAULT NULL,
  `PRE_UTILID` decimal(6,2) DEFAULT NULL,
  KEY `DPPRECIOS1` (`PRE_CODIGO`,`PRE_UNDMED`,`PRE_CODMON`,`PRE_LISTA`),
  KEY `DPPRECIOS11` (`PRE_UNDMED`),
  KEY `DPPRECIOS2` (`PRE_CODIGO`,`PRE_LISTA`,`PRE_CODMON`,`PRE_CODCOM`),
  KEY `DPPRECIOS3` (`PRE_FECHA`),
  KEY `DPPRECIOS5` (`PRE_CODIGO`),
  KEY `DPPRECIOS7` (`PRE_LISTA`),
  KEY `DPPRECIOS9` (`PRE_CODMON`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpprecioshis`
--

DROP TABLE IF EXISTS `dpprecioshis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpprecioshis` (
  `PRE_BASE` decimal(19,2) DEFAULT NULL,
  `PRE_CODIGO` char(20) DEFAULT NULL,
  `PRE_CODMON` char(3) DEFAULT NULL,
  `PRE_CODPRO` char(10) DEFAULT NULL,
  `PRE_DESCUE` decimal(19,2) DEFAULT NULL,
  `PRE_DESMAX` decimal(19,2) DEFAULT NULL,
  `PRE_FCHSIS` date DEFAULT NULL,
  `PRE_FECHA` date DEFAULT NULL,
  `PRE_FECHAV` date DEFAULT NULL,
  `PRE_HORA` char(8) DEFAULT NULL,
  `PRE_IP` char(14) DEFAULT NULL,
  `PRE_LISTA` char(1) DEFAULT NULL,
  `PRE_NOTIFI` decimal(1,0) DEFAULT NULL,
  `PRE_ORIGEN` char(4) DEFAULT NULL,
  `PRE_PRECIO` decimal(19,2) DEFAULT NULL,
  `PRE_REQUIE` decimal(19,2) DEFAULT NULL,
  `PRE_UNDMED` char(20) DEFAULT NULL,
  `PRE_USUARI` char(3) DEFAULT NULL,
  `PRE_UTILID` decimal(19,2) DEFAULT NULL,
  KEY `DPPRECIOSHIS_2` (`PRE_CODIGO`),
  KEY `DPPRECIOSHIS_4` (`PRE_LISTA`),
  KEY `DPPRECIOSHIS_6` (`PRE_CODMON`),
  KEY `DPPRECIOSHIS_8` (`PRE_UNDMED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dppreciotip`
--

DROP TABLE IF EXISTS `dppreciotip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dppreciotip` (
  `TPP_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TPP_CANTID` decimal(6,2) DEFAULT NULL,
  `TPP_CODIGO` char(1) NOT NULL,
  `TPP_CODMON` char(3) DEFAULT NULL,
  `TPP_DESCRI` char(20) DEFAULT NULL,
  `TPP_DINAMI` decimal(1,0) DEFAULT NULL,
  `TPP_FECHA` date DEFAULT NULL,
  `TPP_FORMUL` char(80) DEFAULT NULL,
  `TPP_HORA` char(8) DEFAULT NULL,
  `TPP_INCIVA` decimal(1,0) DEFAULT NULL,
  `TPP_MEMO` longtext,
  `TPP_MONEDA` char(3) DEFAULT NULL,
  `TPP_NUEVO` char(20) DEFAULT NULL,
  `TPP_PORUTI` decimal(6,2) DEFAULT NULL,
  `TPP_PRGCND` longtext,
  PRIMARY KEY (`TPP_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dppremer`
--

DROP TABLE IF EXISTS `dppremer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dppremer` (
  `MER_CODIGO` char(20) DEFAULT NULL,
  `MER_PRECIO` decimal(16,2) DEFAULT NULL,
  `MER_UNDMED` char(8) DEFAULT NULL,
  KEY `DPPREMER_2` (`MER_CODIGO`),
  KEY `DPPREMER_4` (`MER_UNDMED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpproasoc`
--

DROP TABLE IF EXISTS `dpproasoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpproasoc` (
  `CPA_CODIGO` char(10) DEFAULT NULL,
  `CPA_CODPRO` char(10) DEFAULT NULL,
  `CPA_COMENT` char(40) DEFAULT NULL,
  KEY `DPPROASOC_2` (`CPA_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpprocla`
--

DROP TABLE IF EXISTS `dpprocla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpprocla` (
  `CLP_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CLP_CLRGRA` decimal(10,0) DEFAULT NULL,
  `CLP_CODIGO` char(6) NOT NULL,
  `CLP_DESCRI` char(40) DEFAULT NULL,
  `CLP_MEMO` longtext,
  `CLP_TIPO` char(60) DEFAULT NULL,
  PRIMARY KEY (`CLP_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpprosld`
--

DROP TABLE IF EXISTS `dpprosld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpprosld` (
  `SLD_CODIGO` char(10) DEFAULT NULL,
  `SLD_CODSUC` char(6) DEFAULT NULL,
  `SLD_CXPDIV` decimal(19,2) DEFAULT NULL,
  `SLD_DOCCON` decimal(4,0) DEFAULT NULL,
  `SLD_FCHCOM` date DEFAULT NULL,
  `SLD_FCHPAG` date DEFAULT NULL,
  `SLD_FCHREG` date DEFAULT NULL,
  `SLD_SALDO` decimal(19,2) DEFAULT NULL,
  KEY `DPPROSLD_2` (`SLD_CODSUC`),
  KEY `DPPROSLD_4` (`SLD_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpprovcatprecio`
--

DROP TABLE IF EXISTS `dpprovcatprecio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpprovcatprecio` (
  `CPP_CODIGO` char(10) DEFAULT NULL,
  `CPP_CODINV` char(20) DEFAULT NULL,
  `CPP_FECHA` date DEFAULT NULL,
  `CPP_HORA` char(10) DEFAULT NULL,
  `CPP_PRECIO` decimal(19,0) DEFAULT NULL,
  `CPP_USUARI` char(3) DEFAULT NULL,
  KEY `DPPROVCATPRECIO_2` (`CPP_CODINV`),
  KEY `DPPROVCATPRECIO_4` (`CPP_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpproveedor`
--

DROP TABLE IF EXISTS `dpproveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpproveedor` (
  `PRO_ACTECO` char(40) DEFAULT NULL,
  `PRO_ACTIVI` char(6) DEFAULT NULL,
  `PRO_AREA` char(4) DEFAULT NULL,
  `PRO_CATEGO` char(1) DEFAULT NULL,
  `PRO_CELUL1` char(15) DEFAULT NULL,
  `PRO_CELUL2` char(15) DEFAULT NULL,
  `PRO_CIUDAD` char(100) DEFAULT NULL,
  `PRO_CLAVE` char(10) DEFAULT NULL,
  `PRO_CNDFIS` char(250) DEFAULT NULL,
  `PRO_CODCLA` char(6) DEFAULT NULL,
  `PRO_CODIGO` char(10) NOT NULL,
  `PRO_CODMON` char(3) DEFAULT NULL,
  `PRO_CODRET` char(3) DEFAULT NULL,
  `PRO_CODRMU` char(8) DEFAULT NULL,
  `PRO_CONDIC` char(30) DEFAULT NULL,
  `PRO_CONESP` char(1) DEFAULT NULL,
  `PRO_CONFIS` char(40) DEFAULT NULL,
  `PRO_CONTRI` char(1) DEFAULT NULL,
  `PRO_CREFIS` char(1) DEFAULT NULL,
  `PRO_CROSSD` char(1) DEFAULT NULL,
  `PRO_CTACON` char(20) DEFAULT NULL,
  `PRO_CUENTA` char(20) DEFAULT NULL,
  `PRO_DESCUE` decimal(6,2) DEFAULT NULL,
  `PRO_DIAS` decimal(3,0) DEFAULT NULL,
  `PRO_DIASEN` decimal(3,0) DEFAULT NULL,
  `PRO_DIAVEN` decimal(4,0) DEFAULT NULL,
  `PRO_DIR1` char(50) DEFAULT NULL,
  `PRO_DIR2` char(50) DEFAULT NULL,
  `PRO_DIR3` char(50) DEFAULT NULL,
  `PRO_DIR4` char(50) DEFAULT NULL,
  `PRO_EFECTO` char(20) DEFAULT NULL,
  `PRO_EMAIL` char(70) DEFAULT NULL,
  `PRO_ENOTRA` char(1) DEFAULT NULL,
  `PRO_ESTADO` char(20) DEFAULT NULL,
  `PRO_FCHRIF` date DEFAULT NULL,
  `PRO_FCHUPD` date DEFAULT NULL,
  `PRO_FECHA` date DEFAULT NULL,
  `PRO_FILBMP` char(30) DEFAULT NULL,
  `PRO_FILMAI` decimal(7,0) DEFAULT NULL,
  `PRO_ITF` char(1) DEFAULT NULL,
  `PRO_LIMITE` decimal(14,2) DEFAULT NULL,
  `PRO_LOGIN` char(15) DEFAULT NULL,
  `PRO_MTOVEN` decimal(19,2) DEFAULT NULL,
  `PRO_MUNICI` char(20) DEFAULT NULL,
  `PRO_NIT` char(15) DEFAULT NULL,
  `PRO_NOMBRE` char(100) DEFAULT NULL,
  `PRO_NUMMEM` decimal(19,0) DEFAULT NULL,
  `PRO_OBS1` char(25) DEFAULT NULL,
  `PRO_OBS2` char(25) DEFAULT NULL,
  `PRO_ORDOTR` char(1) DEFAULT NULL,
  `PRO_PAIS` char(20) DEFAULT NULL,
  `PRO_PARROQ` char(20) DEFAULT NULL,
  `PRO_PEDOTR` char(1) DEFAULT NULL,
  `PRO_PORRET` decimal(5,2) DEFAULT NULL,
  `PRO_REGFCM` char(20) DEFAULT NULL,
  `PRO_RESIDE` char(1) DEFAULT NULL,
  `PRO_RETIVA` decimal(6,2) DEFAULT NULL,
  `PRO_RIF` char(15) DEFAULT NULL,
  `PRO_RIFVAL` decimal(1,0) DEFAULT NULL,
  `PRO_RNC` char(40) DEFAULT NULL,
  `PRO_RNCFEC` char(10) DEFAULT NULL,
  `PRO_RNCPER` char(20) DEFAULT NULL,
  `PRO_RNCREG` decimal(8,0) DEFAULT NULL,
  `PRO_RNCTEL` char(12) DEFAULT NULL,
  `PRO_SCTOTR` char(1) DEFAULT NULL,
  `PRO_SITUAC` char(1) DEFAULT NULL,
  `PRO_TEL1` char(20) DEFAULT NULL,
  `PRO_TEL2` char(20) DEFAULT NULL,
  `PRO_TEL3` char(20) DEFAULT NULL,
  `PRO_TEL4` char(20) DEFAULT NULL,
  `PRO_TEL5` char(20) DEFAULT NULL,
  `PRO_TEL6` char(20) DEFAULT NULL,
  `PRO_TIPO` char(80) DEFAULT NULL,
  `PRO_TIPPER` char(1) DEFAULT NULL,
  `PRO_USUARI` char(3) DEFAULT NULL,
  `PRO_WEB` char(50) DEFAULT NULL,
  `PRO_ZONANL` char(1) DEFAULT NULL,
  PRIMARY KEY (`PRO_CODIGO`),
  KEY `DPPROVEEDOR1` (`PRO_RIF`),
  KEY `DPPROVEEDOR3` (`PRO_ACTIVI`),
  KEY `DPPROVEEDOR5` (`PRO_CODCLA`),
  KEY `DPPROVEEDOR7` (`PRO_CODRMU`),
  KEY `DPPROVEEDOR9` (`PRO_TIPO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpproveedor_cta`
--

DROP TABLE IF EXISTS `dpproveedor_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpproveedor_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPPROVEEDOR_CTA_2` (`CIC_CODSUC`),
  KEY `DPPROVEEDOR_CTA_4` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPPROVEEDOR_CTA_6` (`CIC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpproveedorbco`
--

DROP TABLE IF EXISTS `dpproveedorbco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpproveedorbco` (
  `CBP_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CBP_BANCO` char(20) DEFAULT NULL,
  `CBP_CODIGO` char(10) DEFAULT NULL,
  `CBP_CODPRO` char(10) DEFAULT NULL,
  `CBP_CUENTA` char(20) DEFAULT NULL,
  `CBP_FORPAG` decimal(10,0) DEFAULT NULL,
  `CBP_ITEM` char(4) DEFAULT NULL,
  `CBP_NUMMEM` decimal(10,0) DEFAULT NULL,
  `CBP_TIPCTA` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpproveedorcero`
--

DROP TABLE IF EXISTS `dpproveedorcero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpproveedorcero` (
  `CCG_AREA` char(4) DEFAULT NULL,
  `CCG_CELUL1` char(15) DEFAULT NULL,
  `CCG_CODIGO` char(10) DEFAULT NULL,
  `CCG_CODSUC` char(6) DEFAULT NULL,
  `CCG_DIR1` char(50) DEFAULT NULL,
  `CCG_DIR2` char(50) DEFAULT NULL,
  `CCG_DIR3` char(50) DEFAULT NULL,
  `CCG_DIR4` char(50) DEFAULT NULL,
  `CCG_EMAIL` char(40) DEFAULT NULL,
  `CCG_NIT` char(10) DEFAULT NULL,
  `CCG_NOMBRE` char(60) DEFAULT NULL,
  `CCG_NUMDOC` char(20) DEFAULT NULL,
  `CCG_RETIVA` decimal(5,2) DEFAULT NULL,
  `CCG_RIF` char(15) DEFAULT NULL,
  `CCG_RIFVAL` decimal(1,0) DEFAULT NULL,
  `CCG_TEL1` char(12) DEFAULT NULL,
  `CCG_TEL2` char(12) DEFAULT NULL,
  `CCG_TEL3` char(12) DEFAULT NULL,
  `CCG_TIPDOC` char(3) DEFAULT NULL,
  `CCG_TIPTRA` char(1) DEFAULT NULL,
  KEY `DPPROVEEDORCERO1` (`CCG_RIF`),
  KEY `DPPROVEEDORCERO3` (`CCG_CODSUC`,`CCG_TIPDOC`,`CCG_CODIGO`,`CCG_NUMDOC`,`CCG_TIPTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpproveedorcta`
--

DROP TABLE IF EXISTS `dpproveedorcta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpproveedorcta` (
  `CXP_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CXP_CODIGO` char(10) DEFAULT NULL,
  `CXP_CODMOD` char(6) DEFAULT NULL,
  `CXP_CTACRE` char(20) DEFAULT NULL,
  `CXP_CTADEB` char(20) DEFAULT NULL,
  `CXP_TIPDOC` char(3) DEFAULT NULL,
  KEY `DPPROVEEDORCTA_2` (`CXP_CODIGO`),
  KEY `DPPROVEEDORCTA_4` (`CXP_TIPDOC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpproveedorper`
--

DROP TABLE IF EXISTS `dpproveedorper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpproveedorper` (
  `PDP_CARGO` char(35) DEFAULT NULL,
  `PDP_CELULA` char(12) DEFAULT NULL,
  `PDP_CLAVE` char(20) DEFAULT NULL,
  `PDP_CODIGO` char(10) DEFAULT NULL,
  `PDP_EMAIL` char(30) DEFAULT NULL,
  `PDP_EXTENS` char(4) DEFAULT NULL,
  `PDP_MEMO` decimal(7,0) DEFAULT NULL,
  `PDP_PERSON` char(40) DEFAULT NULL,
  `PDP_PIN` char(8) DEFAULT NULL,
  `PDP_TELEFO` char(12) DEFAULT NULL,
  KEY `DPPROVEEDORPER_2` (`PDP_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpproveedorprog`
--

DROP TABLE IF EXISTS `dpproveedorprog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpproveedorprog` (
  `PGC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `PGC_CANREG` decimal(5,0) DEFAULT NULL,
  `PGC_CENCOS` char(8) DEFAULT NULL,
  `PGC_CODBEN` char(10) DEFAULT NULL,
  `PGC_CODCTA` char(20) DEFAULT NULL,
  `PGC_CODIGO` char(10) DEFAULT NULL,
  `PGC_CODMON` char(3) DEFAULT NULL,
  `PGC_CODRET` char(3) DEFAULT NULL,
  `PGC_CODSUC` char(6) DEFAULT NULL,
  `PGC_CTAEGR` char(20) DEFAULT NULL,
  `PGC_CTAMOD` char(6) DEFAULT NULL,
  `PGC_DESCRI` char(30) DEFAULT NULL,
  `PGC_DESDE` date DEFAULT NULL,
  `PGC_DIAS` decimal(3,0) DEFAULT NULL,
  `PGC_DOCORG` char(20) DEFAULT NULL,
  `PGC_FCHINI` date DEFAULT NULL,
  `PGC_FECHA` date DEFAULT NULL,
  `PGC_HASTA` date DEFAULT NULL,
  `PGC_ITEM` char(8) DEFAULT NULL,
  `PGC_IVA` char(2) DEFAULT NULL,
  `PGC_MONTO` decimal(16,2) DEFAULT NULL,
  `PGC_MTOBAS` decimal(16,2) DEFAULT NULL,
  `PGC_MTODIV` decimal(19,2) DEFAULT NULL,
  `PGC_MTOIVA` decimal(19,2) DEFAULT NULL,
  `PGC_NUMDOC` char(20) DEFAULT NULL,
  `PGC_NUMERO` char(8) DEFAULT NULL,
  `PGC_NUMMEM` decimal(6,0) DEFAULT NULL,
  `PGC_PAGDES` decimal(2,0) DEFAULT NULL,
  `PGC_PAGHAS` decimal(2,0) DEFAULT NULL,
  `PGC_PERIOD` char(30) DEFAULT NULL,
  `PGC_REFERE` char(40) DEFAULT NULL,
  `PGC_REGDES` decimal(2,0) DEFAULT NULL,
  `PGC_REGHAS` decimal(2,0) DEFAULT NULL,
  `PGC_REQDIG` decimal(1,0) DEFAULT NULL,
  `PGC_TIPDES` char(3) DEFAULT NULL,
  `PGC_TIPDOC` char(3) DEFAULT NULL,
  `PGC_TIPO` char(20) DEFAULT NULL,
  `PGC_TIPORG` char(3) DEFAULT NULL,
  `PGC_TOTDIV` decimal(19,2) DEFAULT NULL,
  `PGC_VALCAM` decimal(19,6) DEFAULT NULL,
  KEY `DPPROVEEDORPROG_10` (`PGC_CODIGO`),
  KEY `DPPROVEEDORPROG_2` (`PGC_CODSUC`),
  KEY `DPPROVEEDORPROG_4` (`PGC_CODIGO`,`PGC_REFERE`),
  KEY `DPPROVEEDORPROG_6` (`PGC_CTAEGR`),
  KEY `DPPROVEEDORPROG_8` (`PGC_IVA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpproveedorprog_cta`
--

DROP TABLE IF EXISTS `dpproveedorprog_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpproveedorprog_cta` (
  `CIC_COD2` char(40) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(20) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPPROVEEDORPROG_CTA_` (`CIC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpproveedorprogcta`
--

DROP TABLE IF EXISTS `dpproveedorprogcta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpproveedorprogcta` (
  `PPC_CODCTA` char(20) DEFAULT NULL,
  `PPC_CODIGO` char(10) DEFAULT NULL,
  `PPC_CODSUC` char(6) DEFAULT NULL,
  `PPC_CTAEGR` char(20) DEFAULT NULL,
  `PPC_CTAMOD` char(6) DEFAULT NULL,
  `PPC_MONTO` decimal(19,2) DEFAULT NULL,
  `PPC_MTODIV` decimal(19,2) DEFAULT NULL,
  `PPC_NUMERO` char(10) DEFAULT NULL,
  `PPC_REFERE` char(40) DEFAULT NULL,
  `PPC_TIPDOC` char(3) DEFAULT NULL,
  `PPC_TIPIVA` char(2) DEFAULT NULL,
  `PPC_VALCAM` decimal(19,6) DEFAULT NULL,
  KEY `DPPROVEEDORPROGCTA_2` (`PPC_CTAEGR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpproveedorsuc`
--

DROP TABLE IF EXISTS `dpproveedorsuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpproveedorsuc` (
  `SDP_AREA` char(4) DEFAULT NULL,
  `SDP_CODIGO` char(4) DEFAULT NULL,
  `SDP_CODPRO` char(10) DEFAULT NULL,
  `SDP_DIR1` char(40) DEFAULT NULL,
  `SDP_DIR2` char(40) DEFAULT NULL,
  `SDP_DIR3` char(40) DEFAULT NULL,
  `SDP_ESTADO` char(30) DEFAULT NULL,
  `SDP_MUNICI` char(30) DEFAULT NULL,
  `SDP_NOMBRE` char(50) DEFAULT NULL,
  `SDP_PARROQ` char(30) DEFAULT NULL,
  `SDP_REPRES` char(40) DEFAULT NULL,
  `SDP_TEL1` char(14) DEFAULT NULL,
  `SDP_TEL2` char(14) DEFAULT NULL,
  `SDP_VIATIC` decimal(19,2) DEFAULT NULL,
  KEY `DPPROVEEDORSUC_2` (`SDP_CODPRO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpproyectos`
--

DROP TABLE IF EXISTS `dpproyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpproyectos` (
  `PRY_ACTIVO` decimal(1,0) DEFAULT NULL,
  `PRY_CLASIF` char(250) DEFAULT NULL,
  `PRY_CODIGO` char(8) DEFAULT NULL,
  `PRY_COMEN1` char(250) DEFAULT NULL,
  `PRY_DESCRI` char(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpreciboscli`
--

DROP TABLE IF EXISTS `dpreciboscli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpreciboscli` (
  `REC_ACT` decimal(2,0) DEFAULT NULL,
  `REC_CBTNUM` char(8) DEFAULT NULL,
  `REC_CENCOS` char(8) DEFAULT NULL,
  `REC_CODCAJ` char(6) DEFAULT NULL,
  `REC_CODCOB` char(6) DEFAULT NULL,
  `REC_CODIGO` char(10) DEFAULT NULL,
  `REC_CODMON` char(3) DEFAULT NULL,
  `REC_CODSUC` char(6) DEFAULT NULL,
  `REC_COMEN1` char(60) DEFAULT NULL,
  `REC_COMEN2` char(60) DEFAULT NULL,
  `REC_DIFCAM` decimal(1,0) DEFAULT NULL,
  `REC_ESTADO` char(10) DEFAULT NULL,
  `REC_FCHREG` date DEFAULT NULL,
  `REC_FECHA` date DEFAULT NULL,
  `REC_FILMAI` decimal(7,0) DEFAULT NULL,
  `REC_HORA` char(8) DEFAULT NULL,
  `REC_LETRA` char(2) DEFAULT NULL,
  `REC_MONTO` decimal(16,2) DEFAULT NULL,
  `REC_MTODIF` decimal(20,2) DEFAULT NULL,
  `REC_MTOITF` decimal(19,0) DEFAULT NULL,
  `REC_MTOIVA` decimal(16,2) DEFAULT NULL,
  `REC_NUMDOC` char(10) DEFAULT NULL,
  `REC_NUMERO` char(8) DEFAULT NULL,
  `REC_NUMMEM` decimal(6,0) DEFAULT NULL,
  `REC_NUMORG` char(8) DEFAULT NULL,
  `REC_REGAUD` decimal(8,0) DEFAULT NULL,
  `REC_TIPDOC` char(4) DEFAULT NULL,
  `REC_TIPORG` char(3) DEFAULT NULL,
  `REC_TIPPAG` char(1) DEFAULT NULL,
  `REC_VALCAM` decimal(19,4) DEFAULT NULL,
  KEY `DPDOCCLI` (`REC_CODSUC`,`REC_NUMERO`),
  KEY `DPRECIBOSCLI1` (`REC_CODSUC`,`REC_TIPORG`,`REC_NUMORG`),
  KEY `DPRECIBOSCLICOMXCOB` (`REC_CODSUC`,`REC_FECHA`,`REC_CODCOB`),
  KEY `DPRECIBOSCLI_2` (`REC_CENCOS`),
  KEY `DPRECIBOSCLI_4` (`REC_CODIGO`),
  KEY `DPRECIBOSCLI_6` (`REC_CODSUC`),
  KEY `DPRECIBOSCLI_8` (`REC_CODCOB`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpreciboscli_his`
--

DROP TABLE IF EXISTS `dpreciboscli_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpreciboscli_his` (
  `REC_ACT` decimal(2,0) DEFAULT NULL,
  `REC_CBTNUM` char(8) DEFAULT NULL,
  `REC_CENCOS` char(8) DEFAULT NULL,
  `REC_CODCAJ` char(6) DEFAULT NULL,
  `REC_CODCOB` char(6) DEFAULT NULL,
  `REC_CODIGO` char(10) DEFAULT NULL,
  `REC_CODMON` char(3) DEFAULT NULL,
  `REC_CODSUC` char(6) DEFAULT NULL,
  `REC_COMEN1` char(60) DEFAULT NULL,
  `REC_COMEN2` char(60) DEFAULT NULL,
  `REC_DIFCAM` decimal(20,0) DEFAULT NULL,
  `REC_ESTADO` char(10) DEFAULT NULL,
  `REC_FCHREG` date DEFAULT NULL,
  `REC_FECHA` date DEFAULT NULL,
  `REC_FILMAI` decimal(7,0) DEFAULT NULL,
  `REC_HORA` char(8) DEFAULT NULL,
  `REC_LETRA` char(2) DEFAULT NULL,
  `REC_MONTO` decimal(16,2) DEFAULT NULL,
  `REC_MTODIF` decimal(20,0) DEFAULT NULL,
  `REC_MTOITF` decimal(19,0) DEFAULT NULL,
  `REC_MTOIVA` decimal(16,2) DEFAULT NULL,
  `REC_NUMDOC` char(10) DEFAULT NULL,
  `REC_NUMERO` char(8) DEFAULT NULL,
  `REC_NUMMEM` decimal(6,0) DEFAULT NULL,
  `REC_NUMORG` char(10) DEFAULT NULL,
  `REC_REGAUD` decimal(8,0) DEFAULT NULL,
  `REC_TIPDOC` char(4) DEFAULT NULL,
  `REC_TIPORG` char(3) DEFAULT NULL,
  `REC_TIPPAG` char(1) DEFAULT NULL,
  `REC_VALCAM` decimal(19,4) DEFAULT NULL,
  KEY `DPRECIBOSCLI_HIS_2` (`REC_CENCOS`),
  KEY `DPRECIBOSCLI_HIS_4` (`REC_CODIGO`),
  KEY `DPRECIBOSCLI_HIS_6` (`REC_CODSUC`),
  KEY `DPRECIBOSCLI_HIS_8` (`REC_CODCOB`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpredsocial`
--

DROP TABLE IF EXISTS `dpredsocial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpredsocial` (
  `RED_CLRGRA` decimal(10,0) DEFAULT NULL,
  `RED_ID` char(2) NOT NULL,
  `RED_NOMBRE` char(120) DEFAULT NULL,
  `RED_URL` char(250) DEFAULT NULL,
  PRIMARY KEY (`RED_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpredsocialhas`
--

DROP TABLE IF EXISTS `dpredsocialhas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpredsocialhas` (
  `HAS_ID` char(2) DEFAULT NULL,
  `HAS_NUMPUB` decimal(19,0) DEFAULT NULL,
  `HAS_REF` char(40) DEFAULT NULL,
  `HAS_RIF` char(40) DEFAULT NULL,
  `HAS_TAG` char(40) DEFAULT NULL,
  `HAS_TAGREF` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpredsocialrif`
--

DROP TABLE IF EXISTS `dpredsocialrif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpredsocialrif` (
  `ARS_CANSEG` decimal(7,0) DEFAULT NULL,
  `ARS_FCHACT` date DEFAULT NULL,
  `ARS_FECHA` date DEFAULT NULL,
  `ARS_ID` char(2) DEFAULT NULL,
  `ARS_MEMO` longtext,
  `ARS_NIC` char(250) DEFAULT NULL,
  `ARS_RIF` char(15) DEFAULT NULL,
  KEY `DPREDSOCIALRIF_2` (`ARS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpregabastdoc`
--

DROP TABLE IF EXISTS `dpregabastdoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpregabastdoc` (
  `DRA_CODPRO` char(10) DEFAULT NULL,
  `DRA_CODSUC` char(8) DEFAULT NULL,
  `DRA_NUMDOC` char(10) DEFAULT NULL,
  `DRA_NUMERO` char(8) DEFAULT NULL,
  `DRA_TIPDOC` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpregabastec`
--

DROP TABLE IF EXISTS `dpregabastec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpregabastec` (
  `RAB_CANPRO` decimal(19,0) DEFAULT NULL,
  `RAB_CANTID` decimal(14,0) DEFAULT NULL,
  `RAB_CANUND` decimal(19,0) DEFAULT NULL,
  `RAB_CODIGO` char(20) DEFAULT NULL,
  `RAB_CODMON` char(3) DEFAULT NULL,
  `RAB_CODOFN` char(5) DEFAULT NULL,
  `RAB_CODSUC` char(6) DEFAULT NULL,
  `RAB_DESCRI` char(80) DEFAULT NULL,
  `RAB_DESDE` date DEFAULT NULL,
  `RAB_ESTADO` char(1) DEFAULT NULL,
  `RAB_FECHA` date DEFAULT NULL,
  `RAB_HASTA` date DEFAULT NULL,
  `RAB_MONTO` decimal(14,2) DEFAULT NULL,
  `RAB_MTODIV` decimal(19,0) DEFAULT NULL,
  `RAB_NUMERO` char(8) DEFAULT NULL,
  `RAB_NUMMEM` decimal(7,0) DEFAULT NULL,
  `RAB_PERIOD` char(20) DEFAULT NULL,
  `RAB_TABLA` char(30) DEFAULT NULL,
  `RAB_USUARI` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpregleeedocta`
--

DROP TABLE IF EXISTS `dpregleeedocta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpregleeedocta` (
  `RLE_CODBCO` char(6) DEFAULT NULL,
  `RLE_CODSUC` char(6) DEFAULT NULL,
  `RLE_CUENTA` char(20) DEFAULT NULL,
  `RLE_DESCRI` char(80) DEFAULT NULL,
  `RLE_FECHA` date DEFAULT NULL,
  `RLE_FILE` char(250) DEFAULT NULL,
  `RLE_FILFCH` date DEFAULT NULL,
  `RLE_FILHOR` char(8) DEFAULT NULL,
  `RLE_FILMAI` decimal(7,0) DEFAULT NULL,
  `RLE_FILSIZ` decimal(10,0) DEFAULT NULL,
  `RLE_NUMERO` char(6) DEFAULT NULL,
  KEY `DPREGLEEEDOCTA_2` (`RLE_CODBCO`,`RLE_CUENTA`,`RLE_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpreqmatprima`
--

DROP TABLE IF EXISTS `dpreqmatprima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpreqmatprima` (
  `RMP_CODSUC` char(6) DEFAULT NULL,
  `RMP_ESTADO` char(1) DEFAULT NULL,
  `RMP_FECHA` date DEFAULT NULL,
  `RMP_HORA` char(5) DEFAULT NULL,
  `RMP_NUMERO` char(10) DEFAULT NULL,
  `RMP_NUMMEM` decimal(8,0) DEFAULT NULL,
  `RMP_ORDPRO` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpretmuntarifa`
--

DROP TABLE IF EXISTS `dpretmuntarifa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpretmuntarifa` (
  `TRM_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TRM_BRWLBC` decimal(1,0) DEFAULT NULL,
  `TRM_BRWLBV` decimal(1,0) DEFAULT NULL,
  `TRM_CODIGO` char(8) DEFAULT NULL,
  `TRM_CODSUC` char(6) DEFAULT NULL,
  `TRM_DESCRI` char(60) DEFAULT NULL,
  `TRM_PORCEN` decimal(5,2) DEFAULT NULL,
  KEY `DPRETMUNTARIFA_2` (`TRM_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dprif`
--

DROP TABLE IF EXISTS `dprif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dprif` (
  `RIF_ACTIVO` decimal(1,0) DEFAULT NULL,
  `RIF_AREA` char(8) DEFAULT NULL,
  `RIF_BANCO` decimal(1,0) DEFAULT NULL,
  `RIF_CIUDAD` char(250) DEFAULT NULL,
  `RIF_CLIENTE` decimal(1,0) DEFAULT NULL,
  `RIF_CONESP` decimal(1,0) DEFAULT NULL,
  `RIF_DIR1` char(80) DEFAULT NULL,
  `RIF_DIR2` char(80) DEFAULT NULL,
  `RIF_DIR3` char(80) DEFAULT NULL,
  `RIF_DIR4` char(80) DEFAULT NULL,
  `RIF_EMAIL` char(250) DEFAULT NULL,
  `RIF_ESTADO` char(250) DEFAULT NULL,
  `RIF_ESTORG` decimal(1,0) DEFAULT NULL,
  `RIF_ID` char(15) NOT NULL,
  `RIF_INTERN` decimal(1,0) DEFAULT NULL,
  `RIF_MUNICI` char(250) DEFAULT NULL,
  `RIF_NOMBRE` char(80) DEFAULT NULL,
  `RIF_PAIS` char(250) DEFAULT NULL,
  `RIF_PARROQ` char(250) DEFAULT NULL,
  `RIF_PORRTI` decimal(6,0) DEFAULT NULL,
  `RIF_PROVEE` decimal(1,0) DEFAULT NULL,
  `RIF_RESIDE` decimal(1,0) DEFAULT NULL,
  `RIF_TEL1` char(22) DEFAULT NULL,
  `RIF_TEL2` char(22) DEFAULT NULL,
  `RIF_TEL3` char(22) DEFAULT NULL,
  `RIF_TEL4` char(22) DEFAULT NULL,
  `RIF_TIPPER` char(1) DEFAULT NULL,
  `RIF_TRABAJ` decimal(1,0) DEFAULT NULL,
  `RIF_VEND` decimal(1,0) DEFAULT NULL,
  PRIMARY KEY (`RIF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dprutadia`
--

DROP TABLE IF EXISTS `dprutadia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dprutadia` (
  `DRT_CODRUT` char(6) DEFAULT NULL,
  `DRT_DIADES` decimal(2,0) DEFAULT NULL,
  `DRT_DIAPED` decimal(2,0) DEFAULT NULL,
  `DRT_DIASEM` decimal(2,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dprutas`
--

DROP TABLE IF EXISTS `dprutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dprutas` (
  `REN_ACTIVO` decimal(1,0) DEFAULT NULL,
  `REN_CODIGO` char(6) NOT NULL,
  `REN_DESCRI` char(40) DEFAULT NULL,
  `REN_DOM` decimal(1,0) DEFAULT NULL,
  `REN_DOMPED` decimal(1,0) DEFAULT NULL,
  `REN_FILMAI` decimal(7,0) DEFAULT NULL,
  `REN_JUE` decimal(1,0) DEFAULT NULL,
  `REN_JUEPED` decimal(1,0) DEFAULT NULL,
  `REN_LUN` decimal(1,0) DEFAULT NULL,
  `REN_LUNPED` decimal(1,0) DEFAULT NULL,
  `REN_MAR` decimal(1,0) DEFAULT NULL,
  `REN_MARPED` decimal(1,0) DEFAULT NULL,
  `REN_MIE` decimal(1,0) DEFAULT NULL,
  `REN_MIEPED` decimal(1,0) DEFAULT NULL,
  `REN_NUMMEM` decimal(7,0) DEFAULT NULL,
  `REN_SAB` decimal(1,0) DEFAULT NULL,
  `REN_SABPED` decimal(1,0) DEFAULT NULL,
  `REN_VIE` decimal(1,0) DEFAULT NULL,
  `REN_VIEPED` decimal(1,0) DEFAULT NULL,
  PRIMARY KEY (`REN_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpseriefiscal`
--

DROP TABLE IF EXISTS `dpseriefiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpseriefiscal` (
  `SFI_ACTIVO` decimal(1,0) DEFAULT NULL,
  `SFI_ANCHO` decimal(2,0) DEFAULT NULL,
  `SFI_ASICON` decimal(1,0) DEFAULT NULL,
  `SFI_AUTDET` decimal(1,0) DEFAULT NULL,
  `SFI_AUTOMA` decimal(1,0) DEFAULT NULL,
  `SFI_CANDEC` decimal(1,0) DEFAULT NULL,
  `SFI_CANENT` decimal(2,0) DEFAULT NULL,
  `SFI_CODSUC` char(6) DEFAULT NULL,
  `SFI_COMEN1` char(250) DEFAULT NULL,
  `SFI_COMEN2` char(250) DEFAULT NULL,
  `SFI_COMEN3` char(250) DEFAULT NULL,
  `SFI_DECPRE` decimal(1,0) DEFAULT NULL,
  `SFI_EDITAB` decimal(1,0) DEFAULT NULL,
  `SFI_ENTPRE` decimal(2,0) DEFAULT NULL,
  `SFI_FCHMAN` date DEFAULT NULL,
  `SFI_IMPFIS` char(20) DEFAULT NULL,
  `SFI_IP_PC` char(10) DEFAULT NULL,
  `SFI_ITEMXP` decimal(3,0) DEFAULT NULL,
  `SFI_JSONDV` longtext,
  `SFI_JSONEV` longtext,
  `SFI_JSONFV` longtext,
  `SFI_LETRA` char(2) DEFAULT NULL,
  `SFI_MAXZET` decimal(4,0) DEFAULT NULL,
  `SFI_MEMO` longtext,
  `SFI_MESSER` decimal(2,0) DEFAULT NULL,
  `SFI_MODELO` char(20) NOT NULL,
  `SFI_MODFIS` char(20) DEFAULT NULL,
  `SFI_MODVAL` decimal(1,0) DEFAULT NULL,
  `SFI_NUMERO` char(10) DEFAULT NULL,
  `SFI_NZETA` decimal(4,0) DEFAULT NULL,
  `SFI_PAGADO` decimal(1,0) DEFAULT NULL,
  `SFI_PCNAME` char(20) DEFAULT NULL,
  `SFI_PICTUR` char(12) DEFAULT NULL,
  `SFI_PREDEC` decimal(1,0) DEFAULT NULL,
  `SFI_PREENT` decimal(2,0) DEFAULT NULL,
  `SFI_PRGRUN` longtext,
  `SFI_PUERTO` char(5) DEFAULT NULL,
  `SFI_REGAUD` decimal(1,0) DEFAULT NULL,
  `SFI_SELECT` decimal(1,0) DEFAULT NULL,
  `SFI_SERIMP` char(20) DEFAULT NULL,
  `SFI_TEXTO` decimal(1,0) DEFAULT NULL,
  `SFI_TICKET` decimal(1,0) DEFAULT NULL,
  `SFI_TIPDOC` char(3) DEFAULT NULL,
  `SFI_TOKEN` longtext,
  `SFI_URL` char(250) DEFAULT NULL,
  `SFI_CHKRPT` decimal(10,0) DEFAULT NULL,
  `SFI_HASRPT` char(64) DEFAULT NULL,
  PRIMARY KEY (`SFI_MODELO`),
  KEY `DPSERIEFISCAL_2` (`SFI_LETRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpseriefiscal_cta`
--

DROP TABLE IF EXISTS `dpseriefiscal_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpseriefiscal_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPSERIEFISCAL_CTA_2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPSERIEFISCAL_CTA_4` (`CIC_CODSUC`),
  KEY `DPSERIEFISCAL_CTA_6` (`CIC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpseriefiscal_num`
--

DROP TABLE IF EXISTS `dpseriefiscal_num`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpseriefiscal_num` (
  `SFT_ACTIVO` decimal(1,0) DEFAULT NULL,
  `SFT_CANTID` decimal(5,0) DEFAULT NULL,
  `SFT_CODSUC` char(6) DEFAULT NULL,
  `SFT_FECHA` date DEFAULT NULL,
  `SFT_NUMERO` char(4) DEFAULT NULL,
  `SFT_NUMFIN` char(10) DEFAULT NULL,
  `SFT_NUMINI` char(10) DEFAULT NULL,
  `SFT_SERFIS` char(2) DEFAULT NULL,
  `SFT_TIPDOC` char(3) DEFAULT NULL,
  `SFT_ESTADO` char(1) DEFAULT NULL,
  `SFT_CODPRO` char(10) DEFAULT NULL,
  KEY `DPSERIEFISCAL_NUM_2` (`SFT_SERFIS`),
  KEY `DPSERIEFISCAL_NUM_4` (`SFT_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpsldgen`
--

DROP TABLE IF EXISTS `dpsldgen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpsldgen` (
  `SLD_DESCRI` char(120) DEFAULT NULL,
  `SLD_FCHACT` date DEFAULT NULL,
  `SLD_ID` char(20) DEFAULT NULL,
  `SLD_MONTO` decimal(19,2) DEFAULT NULL,
  `SLD_MTODIV` decimal(19,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpsldposconv`
--

DROP TABLE IF EXISTS `dpsldposconv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpsldposconv` (
  `SCV_COD2` char(20) DEFAULT NULL,
  `SCV_COD3` char(20) DEFAULT NULL,
  `SCV_COD4` char(20) DEFAULT NULL,
  `SCV_CODIGO` char(20) DEFAULT NULL,
  `SCV_CODSUC` char(6) DEFAULT NULL,
  `SCV_FCHMAX` date DEFAULT NULL,
  `SCV_SALDO` decimal(19,2) DEFAULT NULL,
  `SCV_SLD2` decimal(19,2) DEFAULT NULL,
  `SCV_SLD3` decimal(19,2) DEFAULT NULL,
  `SCV_TABLA` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpsldpreconv`
--

DROP TABLE IF EXISTS `dpsldpreconv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpsldpreconv` (
  `SPC_COD2` char(20) DEFAULT NULL,
  `SPC_COD3` char(20) DEFAULT NULL,
  `SPC_COD4` char(20) DEFAULT NULL,
  `SPC_CODIGO` char(20) DEFAULT NULL,
  `SPC_CODSUC` char(6) DEFAULT NULL,
  `SPC_FCHMAX` date DEFAULT NULL,
  `SPC_SALDO` decimal(19,2) DEFAULT NULL,
  `SPC_SLD2` decimal(19,2) DEFAULT NULL,
  `SPC_SLD3` decimal(19,2) DEFAULT NULL,
  `SPC_TABLA` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpsucursal`
--

DROP TABLE IF EXISTS `dpsucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpsucursal` (
  `SUC_ACTECO` char(250) DEFAULT NULL,
  `SUC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `SUC_CIIU` char(6) DEFAULT NULL,
  `SUC_CODARE` char(4) DEFAULT NULL,
  `SUC_CODIGO` char(6) NOT NULL,
  `SUC_CODMOD` char(6) DEFAULT NULL,
  `SUC_CONTRI` char(20) DEFAULT NULL,
  `SUC_DESCRI` char(40) DEFAULT NULL,
  `SUC_DIR1` char(120) DEFAULT NULL,
  `SUC_DIR2` char(30) DEFAULT NULL,
  `SUC_DIR3` char(30) DEFAULT NULL,
  `SUC_DIR4` char(40) DEFAULT NULL,
  `SUC_EMPRES` decimal(1,0) DEFAULT NULL,
  `SUC_ENCARG` char(40) DEFAULT NULL,
  `SUC_ESTADO` char(20) DEFAULT NULL,
  `SUC_FCHFIN` date DEFAULT NULL,
  `SUC_FCHINI` date DEFAULT NULL,
  `SUC_INVCSL` decimal(1,0) DEFAULT NULL,
  `SUC_ISLRAU` decimal(1,0) DEFAULT NULL,
  `SUC_MAIL` char(40) DEFAULT NULL,
  `SUC_MUNICI` char(20) DEFAULT NULL,
  `SUC_NIT` char(12) DEFAULT NULL,
  `SUC_PAIS` char(20) DEFAULT NULL,
  `SUC_PARROQ` char(25) DEFAULT NULL,
  `SUC_REGFIN` date DEFAULT NULL,
  `SUC_REGINI` date DEFAULT NULL,
  `SUC_RESBCO` decimal(1,0) DEFAULT NULL,
  `SUC_RESCAJ` decimal(1,0) DEFAULT NULL,
  `SUC_RESCLI` decimal(1,0) DEFAULT NULL,
  `SUC_RESINV` decimal(1,0) DEFAULT NULL,
  `SUC_RESPRO` decimal(1,0) DEFAULT NULL,
  `SUC_RESTRA` decimal(1,0) DEFAULT NULL,
  `SUC_RIF` char(12) DEFAULT NULL,
  `SUC_RTIAUT` decimal(1,0) DEFAULT NULL,
  `SUC_TEL1` char(20) DEFAULT NULL,
  `SUC_TEL2` char(12) DEFAULT NULL,
  `SUC_TEL3` char(12) DEFAULT NULL,
  `SUC_TEL4` char(12) DEFAULT NULL,
  `SUC_TIPPER` char(1) DEFAULT NULL,
  `SUC_TITCOL` char(80) DEFAULT NULL,
  `SUC_VERUSU` decimal(1,0) DEFAULT NULL,
  `SUC_WEB` char(40) DEFAULT NULL,
  `SUC_GPS` decimal(15,0) DEFAULT NULL,
  `SUC_TIPSUC` char(20) DEFAULT NULL,
  PRIMARY KEY (`SUC_CODIGO`),
  KEY `DPSUCURSAL_2` (`SUC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpsustitutos`
--

DROP TABLE IF EXISTS `dpsustitutos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpsustitutos` (
  `SUS_CANTID` decimal(10,3) DEFAULT NULL,
  `SUS_CODIGO` char(20) DEFAULT NULL,
  `SUS_SUSTIT` char(20) DEFAULT NULL,
  `SUS_UNDMED` char(8) DEFAULT NULL,
  KEY `DPSUSTITUTOS1` (`SUS_SUSTIT`),
  KEY `DPSUSTITUTOS3` (`SUS_CODIGO`),
  KEY `DPSUSTITUTOS5` (`SUS_UNDMED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptabcomdet`
--

DROP TABLE IF EXISTS `dptabcomdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptabcomdet` (
  `TCD_CODTAB` char(10) DEFAULT NULL,
  `TCD_COL_A` decimal(19,2) DEFAULT NULL,
  `TCD_COL_B` decimal(19,2) DEFAULT NULL,
  `TCD_COL_C` decimal(19,2) DEFAULT NULL,
  `TCD_COL_D` decimal(19,2) DEFAULT NULL,
  `TCD_DESDE` decimal(19,2) DEFAULT NULL,
  `TCD_HASTA` decimal(19,2) DEFAULT NULL,
  `TCD_ITEM` char(4) DEFAULT NULL,
  KEY `DPTABCOMDET_2` (`TCD_CODTAB`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptabcomenc`
--

DROP TABLE IF EXISTS `dptabcomenc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptabcomenc` (
  `ITEM3` char(5) DEFAULT NULL,
  `LOG` decimal(1,0) DEFAULT NULL,
  `LOGICO` decimal(1,0) DEFAULT NULL,
  `TCE_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TCE_CAMFCH` char(20) DEFAULT NULL,
  `TCE_CODIGO` char(10) DEFAULT NULL,
  `TCE_CODVEN` char(20) DEFAULT NULL,
  `TCE_DESCRI` char(40) DEFAULT NULL,
  `TCE_FILMAI` decimal(7,0) DEFAULT NULL,
  `TCE_MONTO` char(20) DEFAULT NULL,
  `TCE_NOMBRE` char(20) DEFAULT NULL,
  `TCE_SQL` longtext,
  `TCE_SUMRES` char(20) DEFAULT NULL,
  KEY `DPTABCOMENC_2` (`TCE_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptabmon`
--

DROP TABLE IF EXISTS `dptabmon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptabmon` (
  `MON_ACTIVO` decimal(1,0) DEFAULT NULL,
  `MON_APLICA` char(1) DEFAULT NULL,
  `MON_CBTPAG` decimal(1,0) DEFAULT NULL,
  `MON_CODEQI` char(3) DEFAULT NULL,
  `MON_CODIGO` char(3) NOT NULL,
  `MON_CODPRC` char(20) DEFAULT NULL,
  `MON_CODPRO` char(20) DEFAULT NULL,
  `MON_DESCRI` char(40) DEFAULT NULL,
  `MON_DESEFE` char(250) DEFAULT NULL,
  `MON_DESGLO` char(250) DEFAULT NULL,
  `MON_FILURL` char(250) DEFAULT NULL,
  `MON_MSGURL` char(250) DEFAULT NULL,
  `MON_PORITF` decimal(4,0) DEFAULT NULL,
  `MON_RECING` decimal(1,0) DEFAULT NULL,
  `MON_URL` char(250) DEFAULT NULL,
  `MON_VUELTO` decimal(1,0) DEFAULT NULL,
  `MON_WEB` char(250) DEFAULT NULL,
  PRIMARY KEY (`MON_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptabxsuc`
--

DROP TABLE IF EXISTS `dptabxsuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptabxsuc` (
  `RXS_CLAVE` char(30) DEFAULT NULL,
  `RXS_CODSUC` char(6) DEFAULT NULL,
  `RXS_FECHA` date DEFAULT NULL,
  `RXS_SELECT` decimal(1,0) DEFAULT NULL,
  `RXS_TABLA` char(20) DEFAULT NULL,
  `TXU_TIPDOC` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptabxusu`
--

DROP TABLE IF EXISTS `dptabxusu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptabxusu` (
  `TXU_CODIGO` char(20) DEFAULT NULL,
  `TXU_CODSUC` char(6) DEFAULT NULL,
  `TXU_CODUSU` char(3) DEFAULT NULL,
  `TXU_KEY` char(20) DEFAULT NULL,
  `TXU_PC` char(40) DEFAULT NULL,
  `TXU_PERMIS` decimal(1,0) DEFAULT NULL,
  `TXU_REFERE` char(80) DEFAULT NULL,
  `TXU_TABLA` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptallas`
--

DROP TABLE IF EXISTS `dptallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptallas` (
  `TAL_01` char(3) DEFAULT NULL,
  `TAL_02` char(3) DEFAULT NULL,
  `TAL_03` char(3) DEFAULT NULL,
  `TAL_04` char(3) DEFAULT NULL,
  `TAL_05` char(3) DEFAULT NULL,
  `TAL_06` char(3) DEFAULT NULL,
  `TAL_07` char(3) DEFAULT NULL,
  `TAL_08` char(3) DEFAULT NULL,
  `TAL_09` char(3) DEFAULT NULL,
  `TAL_10` char(3) DEFAULT NULL,
  `TAL_11` char(3) DEFAULT NULL,
  `TAL_12` char(3) DEFAULT NULL,
  `TAL_CODIGO` char(6) NOT NULL,
  `TAL_DESCRI` char(40) DEFAULT NULL,
  PRIMARY KEY (`TAL_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptareasautm`
--

DROP TABLE IF EXISTS `dptareasautm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptareasautm` (
  `TAU_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TAU_CODACT` char(30) DEFAULT NULL,
  `TAU_CODIGO` char(5) NOT NULL,
  `TAU_CODTAR` char(29) DEFAULT NULL,
  `TAU_CODTEM` char(30) DEFAULT NULL,
  `TAU_CODVIN` char(20) DEFAULT NULL,
  `TAU_DESCRI` char(40) DEFAULT NULL,
  `TAU_DIAS` decimal(2,0) DEFAULT NULL,
  `TAU_PREGUN` char(40) DEFAULT NULL,
  `TAU_SUCACC` char(2) DEFAULT NULL,
  `TAU_SUSTAB` char(20) DEFAULT NULL,
  `TAU_TARDEF` char(30) DEFAULT NULL,
  `TAU_TAREA` char(20) DEFAULT NULL,
  `TAU_TIPDOC` char(3) DEFAULT NULL,
  `TAU_VINCUL` char(40) DEFAULT NULL,
  PRIMARY KEY (`TAU_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptareasautmr`
--

DROP TABLE IF EXISTS `dptareasautmr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptareasautmr` (
  `TUR_ACCION` char(1) DEFAULT NULL,
  `TUR_CODTAR` char(5) DEFAULT NULL,
  `TUR_CODUSU` char(3) DEFAULT NULL,
  `TUR_DIAS` decimal(3,0) DEFAULT NULL,
  `TUR_ITEM` char(4) DEFAULT NULL,
  `TUR_RESPUE` char(20) DEFAULT NULL,
  `TUR_TARAUT` char(5) DEFAULT NULL,
  `TUR_USUARI` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptareasxejec`
--

DROP TABLE IF EXISTS `dptareasxejec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptareasxejec` (
  `TXE_CAMPO` char(255) DEFAULT NULL,
  `TXE_CLAVE` char(255) DEFAULT NULL,
  `TXE_CODSUC` char(6) DEFAULT NULL,
  `TXE_CODTAR` char(5) DEFAULT NULL,
  `TXE_EJECUT` decimal(1,0) DEFAULT NULL,
  `TXE_FCHEJE` date DEFAULT NULL,
  `TXE_FECHA` date DEFAULT NULL,
  `TXE_NUMERO` char(8) NOT NULL,
  `TXE_TABLA` char(20) DEFAULT NULL,
  `TXE_TABWER` char(255) DEFAULT NULL,
  `TXE_USUEJE` char(3) DEFAULT NULL,
  `TXE_USUREG` char(3) DEFAULT NULL,
  `TXE_WHERE` char(255) DEFAULT NULL,
  PRIMARY KEY (`TXE_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpterceros`
--

DROP TABLE IF EXISTS `dpterceros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpterceros` (
  `TDC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TDC_CODIGO` char(12) NOT NULL,
  `TDC_CORREO` char(20) DEFAULT NULL,
  `TDC_DIR1` char(60) DEFAULT NULL,
  `TDC_DIR2` char(60) DEFAULT NULL,
  `TDC_DIR3` char(60) DEFAULT NULL,
  `TDC_IDPZA` char(20) DEFAULT NULL,
  `TDC_IDPZA2` char(40) DEFAULT NULL,
  `TDC_NOMBRE` char(40) DEFAULT NULL,
  `TDC_NUMMEM` decimal(8,0) DEFAULT NULL,
  `TDC_POLIZA` char(20) DEFAULT NULL,
  `TDC_RIF` char(12) DEFAULT NULL,
  `TDC_TEL1` char(12) DEFAULT NULL,
  PRIMARY KEY (`TDC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpticket`
--

DROP TABLE IF EXISTS `dpticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpticket` (
  `DOC_ACT` decimal(1,0) DEFAULT NULL,
  `DOC_ANUFIS` decimal(1,0) DEFAULT NULL,
  `DOC_BASNET` decimal(14,2) DEFAULT NULL,
  `DOC_CODIGO` char(12) DEFAULT NULL,
  `DOC_CODSUC` char(6) DEFAULT NULL,
  `DOC_CODVEN` char(6) DEFAULT NULL,
  `DOC_CXC` decimal(2,0) DEFAULT NULL,
  `DOC_DCTO` decimal(5,2) DEFAULT NULL,
  `DOC_ESTADO` char(1) DEFAULT NULL,
  `DOC_FECHA` date DEFAULT NULL,
  `DOC_HORA` char(8) DEFAULT NULL,
  `DOC_IMPOTR` decimal(19,2) DEFAULT NULL,
  `DOC_IMPRES` decimal(1,0) DEFAULT NULL,
  `DOC_MODFIS` char(15) DEFAULT NULL,
  `DOC_MTOIVA` decimal(14,2) DEFAULT NULL,
  `DOC_NETO` decimal(14,2) DEFAULT NULL,
  `DOC_NUMERO` char(10) DEFAULT NULL,
  `DOC_NUMFIS` char(10) DEFAULT NULL,
  `DOC_NUMMEM` decimal(7,0) DEFAULT NULL,
  `DOC_OTROS` decimal(14,2) DEFAULT NULL,
  `DOC_PAGEFE` decimal(14,2) DEFAULT NULL,
  `DOC_RECARG` decimal(5,2) DEFAULT NULL,
  `DOC_SERFIS` char(1) DEFAULT NULL,
  `DOC_TIPO` char(1) DEFAULT NULL,
  `DOC_USUARI` char(3) DEFAULT NULL,
  KEY `DPTICKET_2` (`DOC_SERFIS`),
  KEY `DPTICKET_4` (`DOC_TIPO`,`DOC_SERFIS`,`DOC_NUMERO`),
  KEY `DPTICKET_6` (`DOC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpticketclientes`
--

DROP TABLE IF EXISTS `dpticketclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpticketclientes` (
  `CCG_AREA` char(4) DEFAULT NULL,
  `CCG_CELUL1` char(15) DEFAULT NULL,
  `CCG_DIR1` char(50) DEFAULT NULL,
  `CCG_DIR2` char(50) DEFAULT NULL,
  `CCG_DIR3` char(50) DEFAULT NULL,
  `CCG_DIR4` char(50) DEFAULT NULL,
  `CCG_DIR5` char(50) DEFAULT NULL,
  `CCG_EMAIL` char(40) DEFAULT NULL,
  `CCG_NIT` char(15) DEFAULT NULL,
  `CCG_NOMBRE` char(60) DEFAULT NULL,
  `CCG_RIF` char(12) DEFAULT NULL,
  `CCG_TEL1` char(12) DEFAULT NULL,
  `CCG_TEL2` char(12) DEFAULT NULL,
  `CCG_TEL3` char(12) DEFAULT NULL,
  KEY `DPTICKETCLIENTES_2` (`CCG_RIF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpticketmov`
--

DROP TABLE IF EXISTS `dpticketmov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpticketmov` (
  `MOV_BANDA` decimal(19,2) DEFAULT NULL,
  `MOV_CANTID` decimal(19,2) DEFAULT NULL,
  `MOV_CODALM` char(3) DEFAULT NULL,
  `MOV_CODCOM` char(20) DEFAULT NULL,
  `MOV_CODCTA` char(10) DEFAULT NULL,
  `MOV_CODIGO` char(20) DEFAULT NULL,
  `MOV_CODSUC` char(6) DEFAULT NULL,
  `MOV_CODVEN` char(6) DEFAULT NULL,
  `MOV_CXUND` decimal(19,4) DEFAULT NULL,
  `MOV_DESCUE` decimal(5,2) DEFAULT NULL,
  `MOV_DOCUME` char(10) DEFAULT NULL,
  `MOV_EXPEND` decimal(19,2) DEFAULT NULL,
  `MOV_IMPORT` decimal(19,3) DEFAULT NULL,
  `MOV_IMPOTR` decimal(19,2) DEFAULT NULL,
  `MOV_INVACT` decimal(19,0) DEFAULT NULL,
  `MOV_ITEM` char(5) DEFAULT NULL,
  `MOV_IVA` decimal(19,2) DEFAULT NULL,
  `MOV_LISTA` char(1) DEFAULT NULL,
  `MOV_LOTE` char(15) DEFAULT NULL,
  `MOV_NUMMEM` decimal(19,0) DEFAULT NULL,
  `MOV_PRECIO` decimal(19,2) DEFAULT NULL,
  `MOV_SERFIS` char(1) DEFAULT NULL,
  `MOV_TIPIVA` char(2) DEFAULT NULL,
  `MOV_TIPO` char(1) DEFAULT NULL,
  `MOV_TOTAL` decimal(19,2) DEFAULT NULL,
  `MOV_UNDMED` char(8) DEFAULT NULL,
  `MOV_USUARI` char(3) DEFAULT NULL,
  KEY `DPTICKETMOV_2` (`MOV_TIPO`,`MOV_SERFIS`,`MOV_DOCUME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipcxpprog`
--

DROP TABLE IF EXISTS `dptipcxpprog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipcxpprog` (
  `TPP_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TPP_CODIGO` char(10) DEFAULT NULL,
  `TPP_DESCRI` char(40) DEFAULT NULL,
  `TPP_DESDE` date DEFAULT NULL,
  `TPP_HASTA` date DEFAULT NULL,
  `TPP_PERIOD` char(15) DEFAULT NULL,
  `TPP_TIPDOC` char(3) DEFAULT NULL,
  KEY `DPTIPCXPPROG_2` (`TPP_TIPDOC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdoccli`
--

DROP TABLE IF EXISTS `dptipdoccli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdoccli` (
  `TDC_ABREVI` char(200) DEFAULT NULL,
  `TDC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TDC_ALMACE` decimal(1,0) DEFAULT NULL,
  `TDC_ALTER` decimal(1,0) DEFAULT NULL,
  `TDC_AUTIMP` decimal(1,0) DEFAULT NULL,
  `TDC_CARGAP` decimal(1,0) DEFAULT NULL,
  `TDC_CENCOS` decimal(1,0) DEFAULT NULL,
  `TDC_CLRGRA` decimal(10,0) DEFAULT NULL,
  `TDC_CNTRES` decimal(1,0) DEFAULT NULL,
  `TDC_CODALM` decimal(1,0) DEFAULT NULL,
  `TDC_CODCTA` char(20) DEFAULT NULL,
  `TDC_COMISI` decimal(1,0) DEFAULT NULL,
  `TDC_CONAUT` decimal(1,0) DEFAULT NULL,
  `TDC_CONTAB` decimal(1,0) DEFAULT NULL,
  `TDC_CROSSD` decimal(1,0) DEFAULT NULL,
  `TDC_CXC` char(1) DEFAULT NULL,
  `TDC_DELETE` decimal(1,0) DEFAULT NULL,
  `TDC_DEPURA` decimal(1,0) DEFAULT NULL,
  `TDC_DESCRI` char(120) DEFAULT NULL,
  `TDC_DESDE` date DEFAULT NULL,
  `TDC_DIFCAM` decimal(1,0) DEFAULT NULL,
  `TDC_DIFPAG` decimal(1,0) DEFAULT NULL,
  `TDC_DOCDES` char(3) DEFAULT NULL,
  `TDC_DOCEDI` decimal(1,0) DEFAULT NULL,
  `TDC_DOCORG` decimal(1,0) DEFAULT NULL,
  `TDC_DOCPRG` decimal(1,0) DEFAULT NULL,
  `TDC_EDICOL` decimal(1,0) DEFAULT NULL,
  `TDC_ESTCOM` decimal(1,0) DEFAULT NULL,
  `TDC_ESTVTA` decimal(1,0) DEFAULT NULL,
  `TDC_EXIVAL` char(1) DEFAULT NULL,
  `TDC_FECHA` date DEFAULT NULL,
  `TDC_FILBMP` char(250) DEFAULT NULL,
  `TDC_FILRPT` char(60) DEFAULT NULL,
  `TDC_FORTXT` decimal(1,0) DEFAULT NULL,
  `TDC_GENPRO` decimal(1,0) DEFAULT NULL,
  `TDC_GUIATR` decimal(1,0) DEFAULT NULL,
  `TDC_HORA` char(5) DEFAULT NULL,
  `TDC_IMPPAG` decimal(1,0) DEFAULT NULL,
  `TDC_IMPTOT` decimal(1,0) DEFAULT NULL,
  `TDC_INVACT` decimal(2,0) DEFAULT NULL,
  `TDC_INVCON` decimal(1,0) DEFAULT NULL,
  `TDC_INVFIS` decimal(1,0) DEFAULT NULL,
  `TDC_INVLBX` char(100) DEFAULT NULL,
  `TDC_INVLOG` decimal(1,0) DEFAULT NULL,
  `TDC_INVMON` decimal(1,0) DEFAULT NULL,
  `TDC_IVA` decimal(1,0) DEFAULT NULL,
  `TDC_LBXEXI` decimal(1,0) DEFAULT NULL,
  `TDC_LIBINV` decimal(1,0) DEFAULT NULL,
  `TDC_LIBTRA` char(15) DEFAULT NULL,
  `TDC_LIBVTA` decimal(1,0) DEFAULT NULL,
  `TDC_LISTA` decimal(1,0) DEFAULT NULL,
  `TDC_LITEM` decimal(1,0) DEFAULT NULL,
  `TDC_MNUOTR` decimal(1,0) DEFAULT NULL,
  `TDC_MONEDA` decimal(1,0) DEFAULT NULL,
  `TDC_MONETA` decimal(1,0) DEFAULT NULL,
  `TDC_MOVED` decimal(1,0) DEFAULT NULL,
  `TDC_MOVEF` decimal(1,0) DEFAULT NULL,
  `TDC_NITEMS` decimal(3,0) DEFAULT NULL,
  `TDC_NUMEDT` decimal(1,0) DEFAULT NULL,
  `TDC_NUMMEM` decimal(6,0) DEFAULT NULL,
  `TDC_ORGPLA` decimal(1,0) DEFAULT NULL,
  `TDC_PAGOS` decimal(1,0) DEFAULT NULL,
  `TDC_PESO` decimal(1,0) DEFAULT NULL,
  `TDC_PESPRI` decimal(1,0) DEFAULT NULL,
  `TDC_PICFIS` char(20) DEFAULT NULL,
  `TDC_PICTUR` char(20) DEFAULT NULL,
  `TDC_POSCOM` decimal(3,0) DEFAULT NULL,
  `TDC_PRECIO` decimal(1,0) DEFAULT NULL,
  `TDC_PREDES` decimal(1,0) DEFAULT NULL,
  `TDC_PRODUC` decimal(1,0) DEFAULT NULL,
  `TDC_REGTAR` decimal(1,0) DEFAULT NULL,
  `TDC_REQAPR` decimal(1,0) DEFAULT NULL,
  `TDC_REQDIG` decimal(1,0) DEFAULT NULL,
  `TDC_REQREC` decimal(1,0) DEFAULT NULL,
  `TDC_REQSCA` decimal(1,0) DEFAULT NULL,
  `TDC_RETISR` decimal(1,0) DEFAULT NULL,
  `TDC_RETIVA` decimal(1,0) DEFAULT NULL,
  `TDC_RETMUN` decimal(1,0) DEFAULT NULL,
  `TDC_REVALO` decimal(1,0) DEFAULT NULL,
  `TDC_SERIEF` char(15) DEFAULT NULL,
  `TDC_TARA` decimal(1,0) DEFAULT NULL,
  `TDC_TEMANU` char(50) DEFAULT NULL,
  `TDC_TEMMOD` char(50) DEFAULT NULL,
  `TDC_TIPO` char(3) NOT NULL,
  `TDC_TIPORG` decimal(1,0) DEFAULT NULL,
  `TDC_TIPPRO` char(3) DEFAULT NULL,
  `TDC_TRIBUT` decimal(1,0) DEFAULT NULL,
  `TDC_TRIGGE` char(250) DEFAULT NULL,
  `TDC_VALFCH` decimal(1,0) DEFAULT NULL,
  `TDC_XY` decimal(1,0) DEFAULT NULL,
  `TDC_XYZ` decimal(1,0) DEFAULT NULL,
  `TDC_HASRPT` char(64) DEFAULT NULL,
  `TDC_CHKRPT` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`TDC_TIPO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdoccli_cta`
--

DROP TABLE IF EXISTS `dptipdoccli_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdoccli_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(6) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPTIPDOCCLI_CTA_2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPTIPDOCCLI_CTA_4` (`CIC_CODSUC`),
  KEY `DPTIPDOCCLI_CTA_6` (`CIC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocclicol`
--

DROP TABLE IF EXISTS `dptipdocclicol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocclicol` (
  `CTD_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CTD_AFTER` char(20) DEFAULT NULL,
  `CTD_FIELD` char(20) DEFAULT NULL,
  `CTD_MEMOEJ` longtext,
  `CTD_NUMPOS` decimal(2,0) DEFAULT NULL,
  `CTD_PICTUR` char(24) DEFAULT NULL,
  `CTD_SIZE` decimal(3,0) DEFAULT NULL,
  `CTD_TIPDOC` char(3) DEFAULT NULL,
  `CTD_TITLE` char(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocclictaegr`
--

DROP TABLE IF EXISTS `dptipdocclictaegr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocclictaegr` (
  `ATD_ACTIVO` decimal(1,0) DEFAULT NULL,
  `ATD_CODCTA` char(20) DEFAULT NULL,
  `ATD_CODEGR` char(20) DEFAULT NULL,
  `ATD_CODIGO` char(3) DEFAULT NULL,
  `ATD_CODMOD` char(6) DEFAULT NULL,
  `ATD_DESCRI` char(250) DEFAULT NULL,
  `ATD_TIPDOC` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdoccliexp`
--

DROP TABLE IF EXISTS `dptipdoccliexp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdoccliexp` (
  `TEX_CODMOD` char(4) DEFAULT NULL,
  `TEX_DESDE` date DEFAULT NULL,
  `TEX_EDIT` decimal(1,0) DEFAULT NULL,
  `TEX_MEMOC` longtext,
  `TEX_POS` decimal(3,0) DEFAULT NULL,
  `TEX_PROGRA` char(30) DEFAULT NULL,
  `TEX_SELECT` decimal(1,0) DEFAULT NULL,
  `TEX_TIPDOC` char(3) DEFAULT NULL,
  `TEX_TIPEXP` char(3) DEFAULT NULL,
  `TEX_TIPINI` char(3) DEFAULT NULL,
  `TEX_USUARI` char(3) DEFAULT NULL,
  KEY `DPTIPDOCCLIEXP_2` (`TEX_CODMOD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdoccligru`
--

DROP TABLE IF EXISTS `dptipdoccligru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdoccligru` (
  `TDG_CODCTA` char(20) DEFAULT NULL,
  `TDG_GRUPO` char(10) DEFAULT NULL,
  `TDG_TIPDOC` char(3) DEFAULT NULL,
  KEY `DPTIPDOCCLIGRU_2` (`TDG_GRUPO`),
  KEY `DPTIPDOCCLIGRU_4` (`TDG_TIPDOC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdoccligru_cta`
--

DROP TABLE IF EXISTS `dptipdoccligru_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdoccligru_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPTIPDOCCLIGRU_CTA_2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPTIPDOCCLIGRU_CTA_4` (`CIC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdoccliimp`
--

DROP TABLE IF EXISTS `dptipdoccliimp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdoccliimp` (
  `TIM_SELECT` decimal(1,0) DEFAULT NULL,
  `TIM_TIPDOC` char(3) DEFAULT NULL,
  `TIM_TIPIMP` char(3) DEFAULT NULL,
  `TIM_USUARI` char(3) DEFAULT NULL,
  KEY `DPTIPDOCCLIIMP_2` (`TIM_TIPDOC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocclimot`
--

DROP TABLE IF EXISTS `dptipdocclimot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocclimot` (
  `MDC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `MDC_CODIGO` char(3) NOT NULL,
  `MDC_CODTRA` char(4) DEFAULT NULL,
  `MDC_CTAEGR` char(20) DEFAULT NULL,
  `MDC_DESCRI` char(120) DEFAULT NULL,
  `MDC_EXPTOT` decimal(1,0) DEFAULT NULL,
  `MDC_FILRPT` char(250) DEFAULT NULL,
  `MDC_NUMMEM` decimal(6,0) DEFAULT NULL,
  `MDC_PERDID` decimal(1,0) DEFAULT NULL,
  `MDC_REQINV` decimal(1,0) DEFAULT NULL,
  `MDC_TIPDOC` char(3) DEFAULT NULL,
  `MDC_TIPIVA` char(3) DEFAULT NULL,
  PRIMARY KEY (`MDC_CODIGO`),
  KEY `DPTIPDOCCLIMOT_2` (`MDC_CTAEGR`),
  KEY `DPTIPDOCCLIMOT_4` (`MDC_TIPDOC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocclimot_cta`
--

DROP TABLE IF EXISTS `dptipdocclimot_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocclimot_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(6) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPTIPDOCCLIMOT_CTA_2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPTIPDOCCLIMOT_CTA_4` (`CIC_CODSUC`),
  KEY `DPTIPDOCCLIMOT_CTA_6` (`CIC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocclinum`
--

DROP TABLE IF EXISTS `dptipdocclinum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocclinum` (
  `TDN_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TDN_CODSUC` char(6) DEFAULT NULL,
  `TDN_EDITAR` decimal(1,0) DEFAULT NULL,
  `TDN_LEN` decimal(10,0) DEFAULT NULL,
  `TDN_LLAVE` char(250) DEFAULT NULL,
  `TDN_NUMERO` char(10) DEFAULT NULL,
  `TDN_NUMULT` char(10) DEFAULT NULL,
  `TDN_PICTUR` char(15) DEFAULT NULL,
  `TDN_SERFIS` char(2) DEFAULT NULL,
  `TDN_TIPDOC` char(3) DEFAULT NULL,
  `TDN_ZERO` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocclisld`
--

DROP TABLE IF EXISTS `dptipdocclisld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocclisld` (
  `SLD_CANEXP` decimal(19,3) DEFAULT NULL,
  `SLD_CANREQ` decimal(19,3) DEFAULT NULL,
  `SLD_CODSUC` char(6) DEFAULT NULL,
  `SLD_DOCDES` char(6) DEFAULT NULL,
  `SLD_TIPDOC` char(6) DEFAULT NULL,
  `SLD_XCUEXP` decimal(19,3) DEFAULT NULL,
  `SLD_XCUREQ` decimal(19,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocclitot`
--

DROP TABLE IF EXISTS `dptipdocclitot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocclitot` (
  `TDT_BASIMP` decimal(19,2) DEFAULT NULL,
  `TDT_CANMOV` decimal(10,0) DEFAULT NULL,
  `TDT_CANTID` decimal(10,0) DEFAULT NULL,
  `TDT_CODSUC` char(6) DEFAULT NULL,
  `TDT_ENCRIP` char(250) DEFAULT NULL,
  `TDT_FECHA` date DEFAULT NULL,
  `TDT_MTOEXE` decimal(19,2) DEFAULT NULL,
  `TDT_MTOIVA` decimal(19,2) DEFAULT NULL,
  `TDT_MTONET` decimal(19,2) DEFAULT NULL,
  `TDT_SERFIS` char(2) DEFAULT NULL,
  `TDT_TIPDOC` char(3) DEFAULT NULL,
  KEY `DPTIPDOCCLITOT_2` (`TDT_SERFIS`),
  KEY `DPTIPDOCCLITOT_4` (`TDT_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdoccliutiliz`
--

DROP TABLE IF EXISTS `dptipdoccliutiliz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdoccliutiliz` (
  `TDU_SELECT` decimal(1,0) DEFAULT NULL,
  `TDU_TIPDOC` char(3) DEFAULT NULL,
  `TDU_UTILIZ` char(30) DEFAULT NULL,
  KEY `DPTIPDOCCLIUTILIZ_2` (`TDU_UTILIZ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocdifcam`
--

DROP TABLE IF EXISTS `dptipdocdifcam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocdifcam` (
  `DDC_CODCTA` char(20) DEFAULT NULL,
  `DDC_CTAMOD` char(6) DEFAULT NULL,
  `DDC_DESCRI` char(180) DEFAULT NULL,
  `DDC_EDITAR` decimal(1,0) DEFAULT NULL,
  `DDC_SELECT` decimal(1,0) DEFAULT NULL,
  `DDC_TIPDOC` char(3) DEFAULT NULL,
  `DDC_TIPIVA` char(2) DEFAULT NULL,
  `DDC_TIPO` char(10) DEFAULT NULL,
  KEY `DPTIPDOCDIFCAM_2` (`DDC_CTAMOD`,`DDC_CODCTA`),
  KEY `DPTIPDOCDIFCAM_4` (`DDC_TIPIVA`),
  KEY `DPTIPDOCDIFCAM_6` (`DDC_TIPDOC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocpro`
--

DROP TABLE IF EXISTS `dptipdocpro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocpro` (
  `TDC_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TDC_ALMACE` decimal(1,0) DEFAULT NULL,
  `TDC_ALTER` decimal(1,0) DEFAULT NULL,
  `TDC_APLITF` decimal(1,0) DEFAULT NULL,
  `TDC_AUTONU` decimal(1,0) DEFAULT NULL,
  `TDC_CENCOS` decimal(1,0) DEFAULT NULL,
  `TDC_CLRGRA` decimal(10,0) DEFAULT NULL,
  `TDC_CODCTA` char(20) DEFAULT NULL,
  `TDC_CONAUT` decimal(1,0) DEFAULT NULL,
  `TDC_CONTAB` decimal(1,0) DEFAULT NULL,
  `TDC_CXP` char(1) DEFAULT NULL,
  `TDC_DELETE` decimal(1,0) DEFAULT NULL,
  `TDC_DEPURA` decimal(1,0) DEFAULT NULL,
  `TDC_DESCRI` char(120) DEFAULT NULL,
  `TDC_DOCDES` char(3) DEFAULT NULL,
  `TDC_DOCEDI` decimal(1,0) DEFAULT NULL,
  `TDC_EDICOL` decimal(1,0) DEFAULT NULL,
  `TDC_ESTCOM` decimal(1,0) DEFAULT NULL,
  `TDC_FECHA` date DEFAULT NULL,
  `TDC_FILBMP` char(250) DEFAULT NULL,
  `TDC_FILRPT` char(60) DEFAULT NULL,
  `TDC_GASCND` decimal(1,0) DEFAULT NULL,
  `TDC_GASCOM` decimal(1,0) DEFAULT NULL,
  `TDC_HORA` char(5) DEFAULT NULL,
  `TDC_INVACT` decimal(19,0) DEFAULT NULL,
  `TDC_INVCON` decimal(1,0) DEFAULT NULL,
  `TDC_INVFIS` decimal(1,0) DEFAULT NULL,
  `TDC_INVLOG` decimal(1,0) DEFAULT NULL,
  `TDC_IVA` decimal(1,0) DEFAULT NULL,
  `TDC_LBCCDC` decimal(1,0) DEFAULT NULL,
  `TDC_LEN` decimal(2,0) DEFAULT NULL,
  `TDC_LIBCOM` decimal(1,0) DEFAULT NULL,
  `TDC_LIBINV` decimal(1,0) DEFAULT NULL,
  `TDC_LIBTRA` char(15) DEFAULT NULL,
  `TDC_LITEM` decimal(1,0) DEFAULT NULL,
  `TDC_MNUOTR` decimal(1,0) DEFAULT NULL,
  `TDC_MONEDA` decimal(1,0) DEFAULT NULL,
  `TDC_MOVED` decimal(1,0) DEFAULT NULL,
  `TDC_MOVEF` decimal(1,0) DEFAULT NULL,
  `TDC_NUMEDT` decimal(1,0) DEFAULT NULL,
  `TDC_NUMMEM` decimal(6,0) DEFAULT NULL,
  `TDC_ORGREQ` decimal(1,0) DEFAULT NULL,
  `TDC_ORGRES` decimal(1,0) DEFAULT NULL,
  `TDC_PAGOS` decimal(1,0) DEFAULT NULL,
  `TDC_PESPRI` decimal(1,0) DEFAULT NULL,
  `TDC_PICTUR` char(20) DEFAULT NULL,
  `TDC_PLAFIN` decimal(1,0) DEFAULT NULL,
  `TDC_POSCOM` decimal(3,0) DEFAULT NULL,
  `TDC_PRECIOD` decimal(1,0) DEFAULT NULL,
  `TDC_PRESUP` decimal(1,0) DEFAULT NULL,
  `TDC_PRODUC` decimal(1,0) DEFAULT NULL,
  `TDC_REQAPR` decimal(1,0) DEFAULT NULL,
  `TDC_REQDIG` decimal(1,0) DEFAULT NULL,
  `TDC_REQFIS` decimal(1,0) DEFAULT NULL,
  `TDC_REQSCA` decimal(1,0) DEFAULT NULL,
  `TDC_RETISR` decimal(1,0) DEFAULT NULL,
  `TDC_RETIVA` decimal(1,0) DEFAULT NULL,
  `TDC_RETMUN` decimal(1,0) DEFAULT NULL,
  `TDC_REVALO` decimal(1,0) DEFAULT NULL,
  `TDC_SERIEF` char(15) DEFAULT NULL,
  `TDC_TARA` decimal(1,0) DEFAULT NULL,
  `TDC_TIPCLI` char(3) DEFAULT NULL,
  `TDC_TIPO` char(3) NOT NULL,
  `TDC_TIPPRE` char(2) DEFAULT NULL,
  `TDC_TRIBUT` decimal(1,0) DEFAULT NULL,
  `TDC_TRIGGE` char(250) DEFAULT NULL,
  `TDC_VALFCH` decimal(1,0) DEFAULT NULL,
  `TDC_ZERO` decimal(1,0) DEFAULT NULL,
  `TDC_HASRPT` char(64) DEFAULT NULL,
  `TDC_CHKRPT` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`TDC_TIPO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocpro_cta`
--

DROP TABLE IF EXISTS `dptipdocpro_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocpro_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(6) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPTIPDOCPRO_CTA_2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPTIPDOCPRO_CTA_4` (`CIC_CODSUC`),
  KEY `DPTIPDOCPRO_CTA_6` (`CIC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocprocol`
--

DROP TABLE IF EXISTS `dptipdocprocol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocprocol` (
  `CTD_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CTD_AFTER` char(20) DEFAULT NULL,
  `CTD_FIELD` char(20) DEFAULT NULL,
  `CTD_MEMOEJ` longtext,
  `CTD_NUMPOS` decimal(2,0) DEFAULT NULL,
  `CTD_PICTUR` char(24) DEFAULT NULL,
  `CTD_SIZE` decimal(3,0) DEFAULT NULL,
  `CTD_TIPDOC` char(3) DEFAULT NULL,
  `CTD_TITLE` char(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocprogru`
--

DROP TABLE IF EXISTS `dptipdocprogru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocprogru` (
  `TDG_CODCTA` char(20) DEFAULT NULL,
  `TDG_GRUPO` char(10) DEFAULT NULL,
  `TDG_TIPDOC` char(3) DEFAULT NULL,
  KEY `DPTIPDOCPROGRU_2` (`TDG_GRUPO`),
  KEY `DPTIPDOCPROGRU_4` (`TDG_TIPDOC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocprogru_cta`
--

DROP TABLE IF EXISTS `dptipdocprogru_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocprogru_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(10) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPTIPDOCPROGRU_CTA_2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPTIPDOCPROGRU_CTA_4` (`CIC_CODSUC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocproimp`
--

DROP TABLE IF EXISTS `dptipdocproimp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocproimp` (
  `TIM_SELECT` decimal(1,0) DEFAULT NULL,
  `TIM_TIPDOC` char(3) DEFAULT NULL,
  `TIM_TIPIMP` char(3) DEFAULT NULL,
  `TIM_USUARI` char(3) DEFAULT NULL,
  KEY `DPTIPDOCPROIMP_2` (`TIM_TIPDOC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocproscanner`
--

DROP TABLE IF EXISTS `dptipdocproscanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocproscanner` (
  `TDS_TIPDOC` char(3) DEFAULT NULL,
  `TDS_USUARI` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocproxtip`
--

DROP TABLE IF EXISTS `dptipdocproxtip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocproxtip` (
  `TXT_TIPDOC` char(3) DEFAULT NULL,
  `TXT_TIPPRO` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipdocxplant`
--

DROP TABLE IF EXISTS `dptipdocxplant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipdocxplant` (
  `TDP_CODPLA` char(20) DEFAULT NULL,
  `TDP_SEL` decimal(1,0) DEFAULT NULL,
  `TDP_TIPDOC` char(3) DEFAULT NULL,
  KEY `DPTIPDOCXPLANT_2` (`TDP_CODPLA`),
  KEY `DPTIPDOCXPLANT_4` (`TDP_TIPDOC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptipproveedor`
--

DROP TABLE IF EXISTS `dptipproveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptipproveedor` (
  `TIP_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TIP_CODIGO` char(80) NOT NULL,
  `TIP_NUMMEM` decimal(7,0) DEFAULT NULL,
  `TIP_PLANIF` decimal(1,0) DEFAULT NULL,
  PRIMARY KEY (`TIP_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dptransp`
--

DROP TABLE IF EXISTS `dptransp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dptransp` (
  `TRA_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TRA_CIUDAD` char(35) DEFAULT NULL,
  `TRA_CODIGO` char(6) NOT NULL,
  `TRA_CODPRO` char(10) DEFAULT NULL,
  `TRA_COMEN` longtext,
  `TRA_DESCRI` char(40) DEFAULT NULL,
  `TRA_ESTADO` char(35) DEFAULT NULL,
  `TRA_GPS` char(250) DEFAULT NULL,
  `TRA_GRUPO` char(35) DEFAULT NULL,
  `TRA_PAIS` char(35) DEFAULT NULL,
  `TRA_SERENC` decimal(1,0) DEFAULT NULL,
  `TRA_TELEFO` char(250) DEFAULT NULL,
  `TRA_TIPO` char(25) DEFAULT NULL,
  PRIMARY KEY (`TRA_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpubiactivos`
--

DROP TABLE IF EXISTS `dpubiactivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpubiactivos` (
  `UAC_CODIGO` char(8) NOT NULL,
  `UAC_DESCRI` char(45) DEFAULT NULL,
  `UAC_MEMO` longtext,
  PRIMARY KEY (`UAC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpubicacfis`
--

DROP TABLE IF EXISTS `dpubicacfis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpubicacfis` (
  `UBI_ACTIVO` decimal(1,0) DEFAULT NULL,
  `UBI_ANAQUE` char(10) DEFAULT NULL,
  `UBI_CODALM` char(3) DEFAULT NULL,
  `UBI_CODDEP` char(10) DEFAULT NULL,
  `UBI_CODIGO` char(6) DEFAULT NULL,
  `UBI_CODSUC` char(6) DEFAULT NULL,
  `UBI_CODTRA` char(6) DEFAULT NULL,
  `UBI_COMEN1` char(80) DEFAULT NULL,
  `UBI_COMEN2` char(80) DEFAULT NULL,
  `UBI_DESCRI` char(50) DEFAULT NULL,
  `UBI_DIAS` decimal(3,0) DEFAULT NULL,
  `UBI_ESTANT` char(20) DEFAULT NULL,
  `UBI_FCHINI` date DEFAULT NULL,
  `UBI_MTRCUB` decimal(8,3) DEFAULT NULL,
  `UBI_NIVEL` char(20) DEFAULT NULL,
  `UBI_NUMMEM` decimal(8,0) DEFAULT NULL,
  `UBI_PASILL` char(10) DEFAULT NULL,
  `UBI_PRODUC` decimal(1,0) DEFAULT NULL,
  `UBI_SUBNIV` char(20) DEFAULT NULL,
  `UBI_TIPO` char(1) DEFAULT NULL,
  KEY `DPUBICACFIS_2` (`UBI_CODSUC`,`UBI_CODALM`),
  KEY `DPUBICACFIS_4` (`UBI_CODSUC`,`UBI_CODALM`,`UBI_PASILL`,`UBI_ANAQUE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpundmed`
--

DROP TABLE IF EXISTS `dpundmed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpundmed` (
  `UND_ACTIVO` decimal(1,0) DEFAULT NULL,
  `UND_APLINV` decimal(1,0) DEFAULT NULL,
  `UND_APLSER` decimal(1,0) DEFAULT NULL,
  `UND_CANUND` decimal(12,4) DEFAULT NULL,
  `UND_CODIGO` char(20) NOT NULL,
  `UND_DESCRI` char(30) DEFAULT NULL,
  `UND_DIAS` decimal(4,0) DEFAULT NULL,
  `UND_FORMA` char(15) DEFAULT NULL,
  `UND_FORMUL` char(200) DEFAULT NULL,
  `UND_MARGEN` decimal(5,2) DEFAULT NULL,
  `UND_MEDPES` char(10) DEFAULT NULL,
  `UND_MEMO` longtext,
  `UND_MULCXU` decimal(1,0) DEFAULT NULL,
  `UND_PERIOD` char(10) DEFAULT NULL,
  `UND_PESO` decimal(8,3) DEFAULT NULL,
  `UND_PESTAR` decimal(20,2) DEFAULT NULL,
  `UND_PRESEN` char(30) DEFAULT NULL,
  `UND_PRG` longtext,
  `UND_SIGNO` char(1) DEFAULT NULL,
  `UND_TIPO` char(1) DEFAULT NULL,
  `UND_VALPES` decimal(1,0) DEFAULT NULL,
  `UND_VARIA` decimal(1,0) DEFAULT NULL,
  `UND_VOLUME` decimal(8,3) DEFAULT NULL,
  `UND_W` char(20) DEFAULT NULL,
  `UND_X` char(20) DEFAULT NULL,
  `UND_Y` char(20) DEFAULT NULL,
  `UND_Z` char(20) DEFAULT NULL,
  PRIMARY KEY (`UND_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpurl`
--

DROP TABLE IF EXISTS `dpurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpurl` (
  `URL_ACTIVO` decimal(1,0) DEFAULT NULL,
  `URL_CODGRU` char(20) DEFAULT NULL,
  `URL_CODIGO` char(20) NOT NULL,
  `URL_DESCRI` char(250) DEFAULT NULL,
  `URL_IMAGE` longtext,
  `URL_MEMO` longtext,
  `URL_URL` longtext,
  PRIMARY KEY (`URL_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpusureq`
--

DROP TABLE IF EXISTS `dpusureq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpusureq` (
  `URQ_CODPER` char(6) DEFAULT NULL,
  `URQ_CODUSU` char(3) DEFAULT NULL,
  `URQ_EDITAR` decimal(1,0) DEFAULT NULL,
  `URQ_GESCOM` decimal(1,0) DEFAULT NULL,
  `URQ_NIVEL1` decimal(1,0) DEFAULT NULL,
  `URQ_NIVEL2` decimal(1,0) DEFAULT NULL,
  `URQ_NIVEL4` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpvalagregado`
--

DROP TABLE IF EXISTS `dpvalagregado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpvalagregado` (
  `VAA_CODCLA` char(10) DEFAULT NULL,
  `VAA_CODCTA` char(20) DEFAULT NULL,
  `VAA_CODIGO` char(8) NOT NULL,
  `VAA_DESCRI` char(40) DEFAULT NULL,
  `VAA_EXPRES` char(8) DEFAULT NULL,
  `VAA_MONTO` decimal(16,2) DEFAULT NULL,
  `VAA_TEXTO` longtext,
  PRIMARY KEY (`VAA_CODIGO`),
  KEY `DPVALAGREGADO_2` (`VAA_CODCLA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpvalagregado_cta`
--

DROP TABLE IF EXISTS `dpvalagregado_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpvalagregado_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(8) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL,
  KEY `DPVALAGREGADO_CTA_2` (`CIC_CTAMOD`,`CIC_CUENTA`),
  KEY `DPVALAGREGADO_CTA_4` (`CIC_CODSUC`),
  KEY `DPVALAGREGADO_CTA_6` (`CIC_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpvarservicios`
--

DROP TABLE IF EXISTS `dpvarservicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpvarservicios` (
  `VAR_ACTIVO` decimal(1,0) DEFAULT NULL,
  `VAR_CODIGO` char(4) NOT NULL,
  `VAR_DECIMA` decimal(2,0) DEFAULT NULL,
  `VAR_DESCRI` char(80) DEFAULT NULL,
  `VAR_LONGIT` decimal(3,0) DEFAULT NULL,
  `VAR_PERIOD` char(12) DEFAULT NULL,
  `VAR_PICTUR` char(30) DEFAULT NULL,
  `VAR_TIPO` char(20) DEFAULT NULL,
  `VAR_TIPVAR` char(1) DEFAULT NULL,
  `VAR_VALINI` char(250) DEFAULT NULL,
  `VAR_VARINI` longtext,
  `VAR_VARVAL` longtext,
  PRIMARY KEY (`VAR_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpvehiculos`
--

DROP TABLE IF EXISTS `dpvehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpvehiculos` (
  `VEH_ACTIVO` decimal(1,0) DEFAULT NULL,
  `VEH_CARGA` decimal(1,0) DEFAULT NULL,
  `VEH_CODINV` char(20) DEFAULT NULL,
  `VEH_CODTRA` char(6) DEFAULT NULL,
  `VEH_COMENT` longtext,
  `VEH_COMPRA` decimal(1,0) DEFAULT NULL,
  `VEH_CONTAR` decimal(10,0) DEFAULT NULL,
  `VEH_INDEF` decimal(1,0) DEFAULT NULL,
  `VEH_INGRES` decimal(1,0) DEFAULT NULL,
  `VEH_PESFCH` date DEFAULT NULL,
  `VEH_PESHOR` char(10) DEFAULT NULL,
  `VEH_PESO` decimal(12,2) DEFAULT NULL,
  `VEH_PESTAR` decimal(10,0) DEFAULT NULL,
  `VEH_PLACA` char(7) DEFAULT NULL,
  `VEH_TIPO` char(15) DEFAULT NULL,
  `VEH_VOLUME` decimal(10,2) DEFAULT NULL,
  `VEH_V_PER` date DEFAULT NULL,
  `VEH_V_SEG` date DEFAULT NULL,
  KEY `DPVEHICULOS_2` (`VEH_CODTRA`),
  KEY `DPVEHICULOS_4` (`VEH_PLACA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpvehiculospesaje`
--

DROP TABLE IF EXISTS `dpvehiculospesaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpvehiculospesaje` (
  `VHP_CARGA` decimal(1,0) DEFAULT NULL,
  `VHP_CODBAL` char(4) DEFAULT NULL,
  `VHP_CODINV` char(20) DEFAULT NULL,
  `VHP_COMPRA` decimal(1,0) DEFAULT NULL,
  `VHP_FECHA` date DEFAULT NULL,
  `VHP_HORA` char(8) DEFAULT NULL,
  `VHP_IP` char(10) DEFAULT NULL,
  `VHP_MODO` char(1) DEFAULT NULL,
  `VHP_NUMASO` char(10) DEFAULT NULL,
  `VHP_NUMDIA` char(5) DEFAULT NULL,
  `VHP_NUMERO` char(10) DEFAULT NULL,
  `VHP_PC` char(20) DEFAULT NULL,
  `VHP_PESO` decimal(19,2) DEFAULT NULL,
  `VHP_PLACA` char(7) DEFAULT NULL,
  `VHP_TIPO` char(1) DEFAULT NULL,
  KEY `DPVEHICULOSPESAJE_2` (`VHP_PLACA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dpvendedor`
--

DROP TABLE IF EXISTS `dpvendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpvendedor` (
  `VEN_CEDULA` char(12) DEFAULT NULL,
  `VEN_CELULA` char(15) DEFAULT NULL,
  `VEN_CLAVE` char(20) DEFAULT NULL,
  `VEN_CLRGRA` decimal(10,0) DEFAULT NULL,
  `VEN_CODIGO` char(6) NOT NULL,
  `VEN_CODUSU` char(3) DEFAULT NULL,
  `VEN_COMPAG` decimal(6,2) DEFAULT NULL,
  `VEN_CONTAC` char(40) DEFAULT NULL,
  `VEN_CONTEL` char(12) DEFAULT NULL,
  `VEN_CUOTA` decimal(16,2) DEFAULT NULL,
  `VEN_DIREC1` char(40) DEFAULT NULL,
  `VEN_DIREC2` char(40) DEFAULT NULL,
  `VEN_DIREC3` char(40) DEFAULT NULL,
  `VEN_EMAIL` char(70) DEFAULT NULL,
  `VEN_EMANAG` decimal(1,0) DEFAULT NULL,
  `VEN_EM_AFI` decimal(1,0) DEFAULT NULL,
  `VEN_FCHACT` date DEFAULT NULL,
  `VEN_LOGIN` char(20) DEFAULT NULL,
  `VEN_MTOCOB` decimal(16,2) DEFAULT NULL,
  `VEN_NOMBRE` char(40) DEFAULT NULL,
  `VEN_PORCOB` decimal(6,2) DEFAULT NULL,
  `VEN_PORVEN` decimal(6,2) DEFAULT NULL,
  `VEN_RIF` char(12) DEFAULT NULL,
  `VEN_SITUAC` char(1) DEFAULT NULL,
  `VEN_TELEFO` char(30) DEFAULT NULL,
  `VEN_URL` char(250) DEFAULT NULL,
  PRIMARY KEY (`VEN_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empedido`
--

DROP TABLE IF EXISTS `empedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empedido` (
  `PED_CODCLI` char(10) DEFAULT NULL,
  `PED_CODVEN` char(6) DEFAULT NULL,
  `PED_ESTADO` char(1) DEFAULT NULL,
  `PED_FECHA` date DEFAULT NULL,
  `PED_ID` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`PED_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empedido_sinc`
--

DROP TABLE IF EXISTS `empedido_sinc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empedido_sinc` (
  `PED_CODCLI` char(10) DEFAULT NULL,
  `PED_CODVEN` char(6) DEFAULT NULL,
  `PED_ESTADO` char(1) DEFAULT NULL,
  `PED_FECHA` date DEFAULT NULL,
  `PED_ID` decimal(5,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empedidomov`
--

DROP TABLE IF EXISTS `empedidomov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empedidomov` (
  `MPE_CANTID` decimal(10,2) DEFAULT NULL,
  `MPE_CODCLI` char(10) DEFAULT NULL,
  `MPE_CODIGO` char(20) DEFAULT NULL,
  `MPE_CODVEN` char(6) DEFAULT NULL,
  `MPE_DESCRI` char(40) DEFAULT NULL,
  `MPE_ID` int(10) DEFAULT NULL,
  `MPE_PORIVA` decimal(5,2) DEFAULT NULL,
  `MPE_PRECIO` decimal(18,2) DEFAULT NULL,
  `MPE_TIPIVA` char(2) DEFAULT NULL,
  `MPE_TOTAL` decimal(18,2) DEFAULT NULL,
  `MPE_UNDMED` char(10) DEFAULT NULL,
  KEY `EMPEDIDOMOV_2` (`MPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empedidomov_sinc`
--

DROP TABLE IF EXISTS `empedidomov_sinc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empedidomov_sinc` (
  `MPE_CANTID` decimal(19,2) DEFAULT NULL,
  `MPE_CODCLI` char(10) DEFAULT NULL,
  `MPE_CODIGO` char(20) DEFAULT NULL,
  `MPE_CODVEN` char(6) DEFAULT NULL,
  `MPE_DESCRI` char(40) DEFAULT NULL,
  `MPE_ID` decimal(5,0) DEFAULT NULL,
  `MPE_PORIVA` decimal(19,2) DEFAULT NULL,
  `MPE_PRECIO` decimal(19,2) DEFAULT NULL,
  `MPE_TIPIVA` char(2) DEFAULT NULL,
  `MPE_TOTAL` decimal(19,2) DEFAULT NULL,
  `MPE_UNDMED` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frank`
--

DROP TABLE IF EXISTS `frank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frank` (
  `CODIGO` char(10) NOT NULL,
  `DESCRIPCION` char(150) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `LOGICO` decimal(1,0) DEFAULT NULL,
  `MEMO` longtext,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmclacon`
--

DROP TABLE IF EXISTS `nmclacon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmclacon` (
  `CLA_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CLA_CODIGO` char(25) NOT NULL,
  `CLA_DESCRI` char(45) DEFAULT NULL,
  `CLA_ITEM` char(4) DEFAULT NULL,
  PRIMARY KEY (`CLA_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmconceptos`
--

DROP TABLE IF EXISTS `nmconceptos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmconceptos` (
  `CON_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CON_ACUM01` decimal(1,0) DEFAULT NULL,
  `CON_ACUM02` decimal(1,0) DEFAULT NULL,
  `CON_ACUM03` decimal(1,0) DEFAULT NULL,
  `CON_ACUM04` decimal(1,0) DEFAULT NULL,
  `CON_ACUMUL` decimal(1,0) DEFAULT NULL,
  `CON_ALTER` decimal(1,0) DEFAULT NULL,
  `CON_CATORC` decimal(1,0) DEFAULT NULL,
  `CON_CODIGO` char(4) NOT NULL,
  `CON_COLUMN` char(20) DEFAULT NULL,
  `CON_COLVAR` char(20) DEFAULT NULL,
  `CON_COMENT` longtext,
  `CON_CTACON` char(20) DEFAULT NULL,
  `CON_CUENTA` char(20) DEFAULT NULL,
  `CON_DEPURA` decimal(1,0) DEFAULT NULL,
  `CON_DESCRI` char(250) DEFAULT NULL,
  `CON_FECHA` date DEFAULT NULL,
  `CON_FORMUL` longtext,
  `CON_HORA` char(8) DEFAULT NULL,
  `CON_HTTP` decimal(1,0) DEFAULT NULL,
  `CON_ISLR` decimal(1,0) DEFAULT NULL,
  `CON_MARCA` decimal(1,0) DEFAULT NULL,
  `CON_MENSAJ` char(35) DEFAULT NULL,
  `CON_MENSUA` decimal(1,0) DEFAULT NULL,
  `CON_NORMAL` decimal(1,0) DEFAULT NULL,
  `CON_OTRA` decimal(1,0) DEFAULT NULL,
  `CON_PICTUR` char(40) DEFAULT NULL,
  `CON_PICTURE` char(40) DEFAULT NULL,
  `CON_PRESTA` decimal(1,0) DEFAULT NULL,
  `CON_QUINCE` decimal(1,0) DEFAULT NULL,
  `CON_RECACU` decimal(1,0) DEFAULT NULL,
  `CON_REDOND` decimal(1,0) DEFAULT NULL,
  `CON_REPRES` char(6) DEFAULT NULL,
  `CON_SEMANA` decimal(1,0) DEFAULT NULL,
  `CON_TIPNOM` char(5) DEFAULT NULL,
  `CON_VARVER` decimal(1,0) DEFAULT NULL,
  PRIMARY KEY (`CON_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmconceptos_cta`
--

DROP TABLE IF EXISTS `nmconceptos_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmconceptos_cta` (
  `CIC_COD2` char(10) DEFAULT NULL,
  `CIC_CODIGO` char(10) DEFAULT NULL,
  `CIC_CODINT` char(6) DEFAULT NULL,
  `CIC_CODSUC` char(6) DEFAULT NULL,
  `CIC_CTAMOD` char(6) DEFAULT NULL,
  `CIC_CUENTA` char(20) DEFAULT NULL,
  `CIC_FECHA` date DEFAULT NULL,
  `CIC_HORA` char(8) DEFAULT NULL,
  `CIC_USUARI` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmconstantes`
--

DROP TABLE IF EXISTS `nmconstantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmconstantes` (
  `CNS_ALTERA` decimal(1,0) DEFAULT NULL,
  `CNS_CODIGO` char(3) NOT NULL,
  `CNS_DESCRI` char(40) DEFAULT NULL,
  `CNS_FECHA` date DEFAULT NULL,
  `CNS_HORA` char(8) DEFAULT NULL,
  `CNS_TIPO` char(1) DEFAULT NULL,
  `CNS_VALOR` char(25) DEFAULT NULL,
  PRIMARY KEY (`CNS_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmcurriculum`
--

DROP TABLE IF EXISTS `nmcurriculum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmcurriculum` (
  `CUR_APELLI` char(20) DEFAULT NULL,
  `CUR_CEDULA` decimal(8,0) DEFAULT NULL,
  `CUR_CELULA` char(12) DEFAULT NULL,
  `CUR_CODCAR` char(8) DEFAULT NULL,
  `CUR_CODPRO` char(8) DEFAULT NULL,
  `CUR_DIR1` char(40) DEFAULT NULL,
  `CUR_DIR2` char(40) DEFAULT NULL,
  `CUR_DIR3` char(40) DEFAULT NULL,
  `CUR_EMAIL` char(30) DEFAULT NULL,
  `CUR_EXPER` decimal(2,0) DEFAULT NULL,
  `CUR_FCHDIS` date DEFAULT NULL,
  `CUR_FECHA` date DEFAULT NULL,
  `CUR_FILMAI` decimal(8,0) DEFAULT NULL,
  `CUR_LINKED` char(250) DEFAULT NULL,
  `CUR_NOMBRE` char(20) DEFAULT NULL,
  `CUR_NUMMEM` decimal(7,0) DEFAULT NULL,
  `CUR_ORGCAP` char(250) DEFAULT NULL,
  `CUR_RIF` char(12) DEFAULT NULL,
  `CUR_SUELDO` decimal(12,2) DEFAULT NULL,
  `CUR_TEL1` char(12) DEFAULT NULL,
  `CUR_TELHAB` char(12) DEFAULT NULL,
  `CUR_TIPCED` char(1) DEFAULT NULL,
  `CUR_JSON` longtext,
  `CUR_MEMO` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmdataset`
--

DROP TABLE IF EXISTS `nmdataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmdataset` (
  `DAT_FECHA` date DEFAULT NULL,
  `DAT_GROUP` char(40) DEFAULT NULL,
  `DAT_HORA` char(10) DEFAULT NULL,
  `DAT_LEN` decimal(3,0) DEFAULT NULL,
  `DAT_MODE` char(18) DEFAULT NULL,
  `DAT_NAME` char(40) DEFAULT NULL,
  `DAT_TYPE` char(1) DEFAULT NULL,
  `DAT_VALUE` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmfechas`
--

DROP TABLE IF EXISTS `nmfechas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmfechas` (
  `FCH_CODMON` char(3) DEFAULT NULL,
  `FCH_CODSUC` char(6) DEFAULT NULL,
  `FCH_CONTAB` char(1) DEFAULT NULL,
  `FCH_DESDE` date DEFAULT NULL,
  `FCH_ESTADO` char(1) DEFAULT NULL,
  `FCH_HASTA` date DEFAULT NULL,
  `FCH_HORA` char(8) DEFAULT NULL,
  `FCH_INTEGR` char(1) DEFAULT NULL,
  `FCH_MARCAR` decimal(1,0) DEFAULT NULL,
  `FCH_MTOPRE` decimal(19,2) DEFAULT NULL,
  `FCH_NUMCBT` char(8) DEFAULT NULL,
  `FCH_NUMDOC` char(20) DEFAULT NULL,
  `FCH_NUMERO` char(5) DEFAULT NULL,
  `FCH_OTRNOM` char(2) DEFAULT NULL,
  `FCH_REGPLA` char(10) DEFAULT NULL,
  `FCH_SISTEM` date DEFAULT NULL,
  `FCH_TIPNOM` char(1) DEFAULT NULL,
  `FCH_USUARI` char(3) DEFAULT NULL,
  `FCH_VALCAM` decimal(19,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmgrupo`
--

DROP TABLE IF EXISTS `nmgrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmgrupo` (
  `GTR_ACTIVO` decimal(1,0) DEFAULT NULL,
  `GTR_CODIGO` char(8) NOT NULL,
  `GTR_DESCRI` char(40) DEFAULT NULL,
  `GTR_ESTADO` char(30) DEFAULT NULL,
  `GTR_TIPO` char(1) DEFAULT NULL,
  PRIMARY KEY (`GTR_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmhistorico`
--

DROP TABLE IF EXISTS `nmhistorico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmhistorico` (
  `HIS_CODCON` char(4) DEFAULT NULL,
  `HIS_CODSUC` char(6) DEFAULT NULL,
  `HIS_MONTO` decimal(12,2) DEFAULT NULL,
  `HIS_NUMMEM` decimal(6,0) DEFAULT NULL,
  `HIS_NUMOBS` decimal(6,0) DEFAULT NULL,
  `HIS_NUMREC` char(7) DEFAULT NULL,
  `HIS_VARIAC` decimal(12,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmotrasnm`
--

DROP TABLE IF EXISTS `nmotrasnm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmotrasnm` (
  `OTR_ACTIVO` decimal(1,0) DEFAULT NULL,
  `OTR_CALASI` decimal(1,0) DEFAULT NULL,
  `OTR_CODCTA` char(20) DEFAULT NULL,
  `OTR_CODFOR` char(30) DEFAULT NULL,
  `OTR_CODIGO` char(2) DEFAULT NULL,
  `OTR_CODMON` char(3) DEFAULT NULL,
  `OTR_CODNOM` char(3) DEFAULT NULL,
  `OTR_CODREP` char(10) DEFAULT NULL,
  `OTR_CTAPRE` char(20) DEFAULT NULL,
  `OTR_DESCRI` char(40) DEFAULT NULL,
  `OTR_DIVPLF` decimal(19,0) DEFAULT NULL,
  `OTR_FCHPLF` char(5) DEFAULT NULL,
  `OTR_FIN` date DEFAULT NULL,
  `OTR_FINPLF` date DEFAULT NULL,
  `OTR_INICIO` date DEFAULT NULL,
  `OTR_MTOPLF` decimal(19,0) DEFAULT NULL,
  `OTR_OTRANM` decimal(1,0) DEFAULT NULL,
  `OTR_PERIOD` char(14) DEFAULT NULL,
  `OTR_PLAFIN` decimal(1,0) DEFAULT NULL,
  `OTR_PRGPRE` longtext,
  `OTR_REPPRE` char(10) DEFAULT NULL,
  `OTR_TIPDOC` char(3) DEFAULT NULL,
  `OTR_TIPO` char(1) DEFAULT NULL,
  `OTR_TIPTRA` char(20) DEFAULT NULL,
  `OTR_USUARI` char(50) DEFAULT NULL,
  `OTR_VARIAC` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmrecibos`
--

DROP TABLE IF EXISTS `nmrecibos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmrecibos` (
  `REC_BLKCHN` char(250) DEFAULT NULL,
  `REC_CODBCO` char(12) DEFAULT NULL,
  `REC_CODDEP` char(6) DEFAULT NULL,
  `REC_CODGRU` char(8) DEFAULT NULL,
  `REC_CODMON` char(3) DEFAULT NULL,
  `REC_CODSUC` char(6) DEFAULT NULL,
  `REC_CODTRA` char(12) DEFAULT NULL,
  `REC_CODUND` char(8) DEFAULT NULL,
  `REC_CONPAT` char(1) DEFAULT NULL,
  `REC_CONTAB` char(1) DEFAULT NULL,
  `REC_CTABCO` char(20) DEFAULT NULL,
  `REC_FCHCHQ` date DEFAULT NULL,
  `REC_FECHAS` date DEFAULT NULL,
  `REC_FORMAP` char(1) DEFAULT NULL,
  `REC_INTEGR` char(1) DEFAULT NULL,
  `REC_NUMCHQ` char(10) DEFAULT NULL,
  `REC_NUMERO` char(7) DEFAULT NULL,
  `REC_NUMFCH` char(5) DEFAULT NULL,
  `REC_TIPDOC` char(4) DEFAULT NULL,
  `REC_USUARI` char(3) DEFAULT NULL,
  `REC_VALCAM` decimal(19,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmtabxusu`
--

DROP TABLE IF EXISTS `nmtabxusu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmtabxusu` (
  `TXU_CODIGO` char(20) DEFAULT NULL,
  `TXU_CODUSU` char(3) DEFAULT NULL,
  `TXU_PERMIS` decimal(1,0) DEFAULT NULL,
  `TXU_TABLA` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmtipnom`
--

DROP TABLE IF EXISTS `nmtipnom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmtipnom` (
  `TIP_CODIGO` char(1) DEFAULT NULL,
  `TIP_DESCRI` char(40) DEFAULT NULL,
  `TIP_CODPRT` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmtipnomxconcepto`
--

DROP TABLE IF EXISTS `nmtipnomxconcepto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmtipnomxconcepto` (
  `CXO_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CXO_CODCON` char(4) DEFAULT NULL,
  `CXO_CODNOM` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmtrabajador`
--

DROP TABLE IF EXISTS `nmtrabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmtrabajador` (
  `ACUMPRES` decimal(19,2) DEFAULT NULL,
  `APELLIDO` char(25) DEFAULT NULL,
  `APELLIDO1` char(60) DEFAULT NULL,
  `APELLIDO2` char(60) DEFAULT NULL,
  `BANCO` char(20) DEFAULT NULL,
  `BANCO_CTA` char(25) DEFAULT NULL,
  `CAJA_AHORR` decimal(14,2) DEFAULT NULL,
  `CAJ_APORTE` decimal(14,2) DEFAULT NULL,
  `CARGAS_FAM` decimal(2,0) DEFAULT NULL,
  `CATEGORIA` char(1) DEFAULT NULL,
  `CAUSA_EGR` char(35) DEFAULT NULL,
  `CEDULA` decimal(8,0) DEFAULT NULL,
  `CELULAR` char(12) DEFAULT NULL,
  `CLAVE` char(10) DEFAULT NULL,
  `CODIGO` char(12) NOT NULL,
  `COD_CARGO` char(8) DEFAULT NULL,
  `COD_DPTO` char(10) DEFAULT NULL,
  `COD_PROF` char(8) DEFAULT NULL,
  `COD_TURNO` char(3) DEFAULT NULL,
  `COD_UND` char(8) DEFAULT NULL,
  `CONDICION` char(1) DEFAULT NULL,
  `COND_IVSS` char(2) DEFAULT NULL,
  `CTABANAHOR` char(22) DEFAULT NULL,
  `CUENTA_PRE` char(12) DEFAULT NULL,
  `DESCONTAR` char(1) DEFAULT NULL,
  `DESC_LPH` char(1) DEFAULT NULL,
  `DESTINO_PR` char(1) DEFAULT NULL,
  `DIR_HAB1` char(35) DEFAULT NULL,
  `DIR_HAB2` char(35) DEFAULT NULL,
  `DIR_HAB3` char(35) DEFAULT NULL,
  `EDO_CIVIL` char(1) DEFAULT NULL,
  `EMAIL` char(45) DEFAULT NULL,
  `ENTIDAD` char(30) DEFAULT NULL,
  `ESTATURA` decimal(4,2) DEFAULT NULL,
  `FCHULTDEP` date DEFAULT NULL,
  `FECHA_CON` date DEFAULT NULL,
  `FECHA_EGR` date DEFAULT NULL,
  `FECHA_EJER` date DEFAULT NULL,
  `FECHA_FIN` date DEFAULT NULL,
  `FECHA_ING` date DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `FECHA_REG` date DEFAULT NULL,
  `FECHA_VAC` date DEFAULT NULL,
  `FILEBMP` char(40) DEFAULT NULL,
  `FORMA_PAG` char(1) DEFAULT NULL,
  `GRADO_LIC` decimal(2,0) DEFAULT NULL,
  `GRUPO` char(8) DEFAULT NULL,
  `IDCAPTAHUE` char(10) DEFAULT NULL,
  `ISR1` decimal(5,2) DEFAULT NULL,
  `ISR2` decimal(5,2) DEFAULT NULL,
  `ISR3` decimal(5,2) DEFAULT NULL,
  `ISR4` decimal(5,2) DEFAULT NULL,
  `LIBRETA_MI` char(8) DEFAULT NULL,
  `LICENCIA_C` char(8) DEFAULT NULL,
  `LOGIN` char(20) DEFAULT NULL,
  `LUGAR_NAC` char(40) DEFAULT NULL,
  `MANO` char(1) DEFAULT NULL,
  `NACIONALID` char(35) DEFAULT NULL,
  `NIVEL_EDUC` char(1) DEFAULT NULL,
  `NIVEL_INS` decimal(2,0) DEFAULT NULL,
  `NMACUNUTIL` decimal(19,2) DEFAULT NULL,
  `NOMBRE` char(25) DEFAULT NULL,
  `NOMBRE1` char(60) DEFAULT NULL,
  `NOMBRE2` char(60) DEFAULT NULL,
  `NOM_MADRE` char(40) DEFAULT NULL,
  `NOM_PADRE` char(40) DEFAULT NULL,
  `NUMMEMO` decimal(6,0) DEFAULT NULL,
  `NUM_ASCEND` decimal(2,0) DEFAULT NULL,
  `NUM_DESCEN` decimal(2,0) DEFAULT NULL,
  `NUM_SSO` char(10) DEFAULT NULL,
  `OBS14100` char(80) DEFAULT NULL,
  `PASAPORTE` char(8) DEFAULT NULL,
  `PENSION_AL` decimal(14,2) DEFAULT NULL,
  `PENSION_UT` decimal(6,2) DEFAULT NULL,
  `PESO` decimal(3,0) DEFAULT NULL,
  `PIN` char(8) DEFAULT NULL,
  `PNMPROTRI` decimal(19,2) DEFAULT NULL,
  `PORATIPICO` decimal(6,2) DEFAULT NULL,
  `PORCENPRES` decimal(5,2) DEFAULT NULL,
  `PORC_COMI` decimal(10,2) DEFAULT NULL,
  `POR_REPOSO` decimal(6,2) DEFAULT NULL,
  `RESERVADO1` decimal(14,2) DEFAULT NULL,
  `RESERVADO2` decimal(14,2) DEFAULT NULL,
  `RET_HCM` decimal(9,2) DEFAULT NULL,
  `RIF` char(12) DEFAULT NULL,
  `SALARIO` decimal(11,2) DEFAULT NULL,
  `SALARIOD` decimal(10,0) DEFAULT NULL,
  `SEXO` char(1) DEFAULT NULL,
  `SINDICATO` decimal(9,2) DEFAULT NULL,
  `TELEFONO1` char(14) DEFAULT NULL,
  `TELEFONO2` char(10) DEFAULT NULL,
  `TIPCTABCO` char(1) DEFAULT NULL,
  `TIPO_CED` char(1) DEFAULT NULL,
  `TIPO_NOM` char(1) DEFAULT NULL,
  `TIPO_VAC` char(1) DEFAULT NULL,
  `TRA_ACTIVO` decimal(1,0) DEFAULT NULL,
  `TRA_ARICAL` char(1) DEFAULT NULL,
  `TRA_CNDFIS` char(250) DEFAULT NULL,
  `TRA_EMAFIL` char(120) DEFAULT NULL,
  `TRA_FILMAI` decimal(8,0) DEFAULT NULL,
  `TRA_NOMAPL` char(120) DEFAULT NULL,
  `TRA_NUMFIL` decimal(8,0) DEFAULT NULL,
  `TURNO` char(4) DEFAULT NULL,
  `VARPATRONO` decimal(1,0) DEFAULT NULL,
  `VEHICULO` decimal(11,2) DEFAULT NULL,
  `VEHICULOD` char(250) DEFAULT NULL,
  PRIMARY KEY (`CODIGO`),
  KEY `NMTRABAJADOR1` (`GRUPO`),
  KEY `NMTRABAJADOR2` (`COD_DPTO`),
  KEY `NMTRABAJADOR3` (`CODIGO`),
  KEY `NMTRABAJADOR5` (`TURNO`),
  KEY `NMTRABAJADOR7` (`COD_UND`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmturnos`
--

DROP TABLE IF EXISTS `nmturnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmturnos` (
  `TUR_CODIGO` char(3) NOT NULL,
  `TUR_DESCRI` char(120) DEFAULT NULL,
  `TUR_DOMACT` decimal(1,0) DEFAULT NULL,
  `TUR_DOME1` char(7) DEFAULT NULL,
  `TUR_DOME2` char(7) DEFAULT NULL,
  `TUR_DOME3` char(7) DEFAULT NULL,
  `TUR_DOME4` char(7) DEFAULT NULL,
  `TUR_DOMH1` decimal(7,2) DEFAULT NULL,
  `TUR_DOMH2` decimal(7,2) DEFAULT NULL,
  `TUR_DOMH3` decimal(7,2) DEFAULT NULL,
  `TUR_DOMH4` decimal(7,2) DEFAULT NULL,
  `TUR_DOMHOR` decimal(10,2) DEFAULT NULL,
  `TUR_DOMS1` char(7) DEFAULT NULL,
  `TUR_DOMS2` char(7) DEFAULT NULL,
  `TUR_DOMS3` char(7) DEFAULT NULL,
  `TUR_DOMS4` char(7) DEFAULT NULL,
  `TUR_HORAS` decimal(10,0) DEFAULT NULL,
  `TUR_JUEACT` decimal(1,0) DEFAULT NULL,
  `TUR_JUEE1` char(7) DEFAULT NULL,
  `TUR_JUEE2` char(7) DEFAULT NULL,
  `TUR_JUEE3` char(7) DEFAULT NULL,
  `TUR_JUEE4` char(7) DEFAULT NULL,
  `TUR_JUEH1` decimal(7,2) DEFAULT NULL,
  `TUR_JUEH2` decimal(7,2) DEFAULT NULL,
  `TUR_JUEH3` decimal(7,2) DEFAULT NULL,
  `TUR_JUEH4` decimal(7,2) DEFAULT NULL,
  `TUR_JUEHOR` decimal(10,2) DEFAULT NULL,
  `TUR_JUES1` char(7) DEFAULT NULL,
  `TUR_JUES2` char(7) DEFAULT NULL,
  `TUR_JUES3` char(7) DEFAULT NULL,
  `TUR_JUES4` char(7) DEFAULT NULL,
  `TUR_LUNACT` decimal(1,0) DEFAULT NULL,
  `TUR_LUNE1` char(7) DEFAULT NULL,
  `TUR_LUNE2` char(7) DEFAULT NULL,
  `TUR_LUNE3` char(7) DEFAULT NULL,
  `TUR_LUNE4` char(7) DEFAULT NULL,
  `TUR_LUNH1` decimal(7,2) DEFAULT NULL,
  `TUR_LUNH2` decimal(7,2) DEFAULT NULL,
  `TUR_LUNH3` decimal(7,2) DEFAULT NULL,
  `TUR_LUNH4` decimal(7,2) DEFAULT NULL,
  `TUR_LUNHOR` decimal(10,2) DEFAULT NULL,
  `TUR_LUNS1` char(7) DEFAULT NULL,
  `TUR_LUNS2` char(7) DEFAULT NULL,
  `TUR_LUNS3` char(7) DEFAULT NULL,
  `TUR_LUNS4` char(7) DEFAULT NULL,
  `TUR_MARACT` decimal(1,0) DEFAULT NULL,
  `TUR_MARE1` char(7) DEFAULT NULL,
  `TUR_MARE2` char(7) DEFAULT NULL,
  `TUR_MARE3` char(7) DEFAULT NULL,
  `TUR_MARE4` char(7) DEFAULT NULL,
  `TUR_MARH1` decimal(7,2) DEFAULT NULL,
  `TUR_MARH2` decimal(7,2) DEFAULT NULL,
  `TUR_MARH3` decimal(7,2) DEFAULT NULL,
  `TUR_MARH4` decimal(7,2) DEFAULT NULL,
  `TUR_MARHOR` decimal(10,2) DEFAULT NULL,
  `TUR_MARS1` char(7) DEFAULT NULL,
  `TUR_MARS2` char(7) DEFAULT NULL,
  `TUR_MARS3` char(7) DEFAULT NULL,
  `TUR_MARS4` char(7) DEFAULT NULL,
  `TUR_MIEACT` decimal(1,0) DEFAULT NULL,
  `TUR_MIEE1` char(7) DEFAULT NULL,
  `TUR_MIEE2` char(7) DEFAULT NULL,
  `TUR_MIEE3` char(7) DEFAULT NULL,
  `TUR_MIEE4` char(7) DEFAULT NULL,
  `TUR_MIEH1` decimal(7,2) DEFAULT NULL,
  `TUR_MIEH2` decimal(7,2) DEFAULT NULL,
  `TUR_MIEH3` decimal(7,2) DEFAULT NULL,
  `TUR_MIEH4` decimal(7,2) DEFAULT NULL,
  `TUR_MIEHOR` decimal(10,2) DEFAULT NULL,
  `TUR_MIES1` char(7) DEFAULT NULL,
  `TUR_MIES2` char(7) DEFAULT NULL,
  `TUR_MIES3` char(7) DEFAULT NULL,
  `TUR_MIES4` char(7) DEFAULT NULL,
  `TUR_SABACT` decimal(1,0) DEFAULT NULL,
  `TUR_SABE1` char(7) DEFAULT NULL,
  `TUR_SABE2` char(7) DEFAULT NULL,
  `TUR_SABE3` char(7) DEFAULT NULL,
  `TUR_SABE4` char(7) DEFAULT NULL,
  `TUR_SABH1` decimal(7,2) DEFAULT NULL,
  `TUR_SABH2` decimal(7,2) DEFAULT NULL,
  `TUR_SABH3` decimal(7,2) DEFAULT NULL,
  `TUR_SABH4` decimal(7,2) DEFAULT NULL,
  `TUR_SABHOR` decimal(10,2) DEFAULT NULL,
  `TUR_SABS1` char(7) DEFAULT NULL,
  `TUR_SABS2` char(7) DEFAULT NULL,
  `TUR_SABS3` char(7) DEFAULT NULL,
  `TUR_SABS4` char(7) DEFAULT NULL,
  `TUR_VIEACT` decimal(1,0) DEFAULT NULL,
  `TUR_VIEE1` char(7) DEFAULT NULL,
  `TUR_VIEE2` char(7) DEFAULT NULL,
  `TUR_VIEE3` char(7) DEFAULT NULL,
  `TUR_VIEE4` char(7) DEFAULT NULL,
  `TUR_VIEH1` decimal(7,2) DEFAULT NULL,
  `TUR_VIEH2` decimal(7,2) DEFAULT NULL,
  `TUR_VIEH3` decimal(7,2) DEFAULT NULL,
  `TUR_VIEH4` decimal(7,2) DEFAULT NULL,
  `TUR_VIEHOR` decimal(10,2) DEFAULT NULL,
  `TUR_VIES1` char(7) DEFAULT NULL,
  `TUR_VIES2` char(7) DEFAULT NULL,
  `TUR_VIES3` char(7) DEFAULT NULL,
  `TUR_VIES4` char(7) DEFAULT NULL,
  PRIMARY KEY (`TUR_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nmundfunc`
--

DROP TABLE IF EXISTS `nmundfunc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nmundfunc` (
  `CEN_ACTIVO` decimal(1,0) DEFAULT NULL,
  `CEN_CODIGO` char(8) NOT NULL,
  `CEN_DESCRI` char(40) DEFAULT NULL,
  PRIMARY KEY (`CEN_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `view_`
--

DROP TABLE IF EXISTS `view_`;
/*!50001 DROP VIEW IF EXISTS `view_`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_` (
  `FCH_ANO` tinyint NOT NULL,
  `FCH_MES` tinyint NOT NULL,
  `FCH_FCHANT` tinyint NOT NULL,
  `FCH_DESDE` tinyint NOT NULL,
  `FCH_HASTA` tinyint NOT NULL,
  `FCH_CMES` tinyint NOT NULL,
  `FCH_MAXDIV` tinyint NOT NULL,
  `FCH_CODMON` tinyint NOT NULL,
  `FCH_IPC` tinyint NOT NULL,
  `FCH_INPC` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_dpinvsld`
--

DROP TABLE IF EXISTS `view_dpinvsld`;
/*!50001 DROP VIEW IF EXISTS `view_dpinvsld`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_dpinvsld` (
  `SLD_CODIGO` tinyint NOT NULL,
  `SLD_FISICO` tinyint NOT NULL,
  `SLD_LOGICO` tinyint NOT NULL,
  `SLD_CONTAB` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_dpprecio_`
--

DROP TABLE IF EXISTS `view_dpprecio_`;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_dpprecio_` (
  `CODIGO_` tinyint NOT NULL,
  `PRECIO_` tinyint NOT NULL,
  `MEDIDA_` tinyint NOT NULL,
  `MONEDA_` tinyint NOT NULL,
  `FECHA_` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_dpprecio_0`
--

DROP TABLE IF EXISTS `view_dpprecio_0`;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_0`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_dpprecio_0` (
  `CODIGO_0` tinyint NOT NULL,
  `PRECIO_0` tinyint NOT NULL,
  `MEDIDA_0` tinyint NOT NULL,
  `MONEDA_0` tinyint NOT NULL,
  `FECHA_0` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_dpprecio_1`
--

DROP TABLE IF EXISTS `view_dpprecio_1`;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_dpprecio_1` (
  `CODIGO_1` tinyint NOT NULL,
  `PRECIO_1` tinyint NOT NULL,
  `MEDIDA_1` tinyint NOT NULL,
  `MONEDA_1` tinyint NOT NULL,
  `FECHA_1` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_dpprecio_4`
--

DROP TABLE IF EXISTS `view_dpprecio_4`;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_4`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_dpprecio_4` (
  `CODIGO_4` tinyint NOT NULL,
  `PRECIO_4` tinyint NOT NULL,
  `MEDIDA_4` tinyint NOT NULL,
  `MONEDA_4` tinyint NOT NULL,
  `FECHA_4` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_dpprecio_a`
--

DROP TABLE IF EXISTS `view_dpprecio_a`;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_a`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_dpprecio_a` (
  `CODIGO_A` tinyint NOT NULL,
  `PRECIO_A` tinyint NOT NULL,
  `MEDIDA_A` tinyint NOT NULL,
  `MONEDA_A` tinyint NOT NULL,
  `FECHA_A` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_dpprecio_b`
--

DROP TABLE IF EXISTS `view_dpprecio_b`;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_b`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_dpprecio_b` (
  `CODIGO_B` tinyint NOT NULL,
  `PRECIO_B` tinyint NOT NULL,
  `MEDIDA_B` tinyint NOT NULL,
  `MONEDA_B` tinyint NOT NULL,
  `FECHA_B` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_dpprecio_c`
--

DROP TABLE IF EXISTS `view_dpprecio_c`;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_c`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_dpprecio_c` (
  `CODIGO_C` tinyint NOT NULL,
  `PRECIO_C` tinyint NOT NULL,
  `MEDIDA_C` tinyint NOT NULL,
  `MONEDA_C` tinyint NOT NULL,
  `FECHA_C` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_dpprecio_d`
--

DROP TABLE IF EXISTS `view_dpprecio_d`;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_d`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_dpprecio_d` (
  `CODIGO_D` tinyint NOT NULL,
  `PRECIO_D` tinyint NOT NULL,
  `MEDIDA_D` tinyint NOT NULL,
  `MONEDA_D` tinyint NOT NULL,
  `FECHA_D` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_dpprecio_x`
--

DROP TABLE IF EXISTS `view_dpprecio_x`;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_x`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_dpprecio_x` (
  `CODIGO_X` tinyint NOT NULL,
  `PRECIO_X` tinyint NOT NULL,
  `MEDIDA_X` tinyint NOT NULL,
  `MONEDA_X` tinyint NOT NULL,
  `FECHA_X` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_dppreciosxundmed`
--

DROP TABLE IF EXISTS `view_dppreciosxundmed`;
/*!50001 DROP VIEW IF EXISTS `view_dppreciosxundmed`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_dppreciosxundmed` (
  `PXU_UNDMED` tinyint NOT NULL,
  `PXU_CANTID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `dpsgev60`
--

USE `dpsgev60`;

--
-- Final view structure for view `view_`
--

/*!50001 DROP TABLE IF EXISTS `view_`*/;
/*!50001 DROP VIEW IF EXISTS `view_`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_` AS select `dpsgev60`.`dpdiario`.`DIA_ANO` AS `FCH_ANO`,`dpsgev60`.`dpdiario`.`DIA_MES` AS `FCH_MES`,min((`dpsgev60`.`dpdiario`.`DIA_FECHA` + interval -(1) day)) AS `FCH_FCHANT`,min(`dpsgev60`.`dpdiario`.`DIA_FECHA`) AS `FCH_DESDE`,max(`dpsgev60`.`dpdiario`.`DIA_FECHA`) AS `FCH_HASTA`,`dpsgev60`.`dpdiario`.`DIA_CMES` AS `FCH_CMES`,max(`dpsgev60`.`dphismon`.`HMN_FECHA`) AS `FCH_MAXDIV`,`dpsgev60`.`dphismon`.`HMN_CODIGO` AS `FCH_CODMON`,`admconfig60`.`dpipc`.`IPC_TASA` AS `FCH_IPC`,`admconfig60`.`dpipc`.`IPC_INPC` AS `FCH_INPC` from ((`dpsgev60`.`dpdiario` left join `dpsgev60`.`dphismon` on(((year(`dpsgev60`.`dphismon`.`HMN_FECHA`) = year(`dpsgev60`.`dpdiario`.`DIA_FECHA`)) and (month(`dpsgev60`.`dphismon`.`HMN_FECHA`) = month(`dpsgev60`.`dpdiario`.`DIA_FECHA`)) and (`dpsgev60`.`dphismon`.`HMN_CODIGO` = 'DBC')))) left join `admconfig60`.`dpipc` on(((year(`dpsgev60`.`dpdiario`.`DIA_FECHA`) = `admconfig60`.`dpipc`.`IPC_ANO`) and (month(`dpsgev60`.`dpdiario`.`DIA_FECHA`) = `admconfig60`.`dpipc`.`IPC_MES`)))) group by `dpsgev60`.`dpdiario`.`DIA_ANO`,`dpsgev60`.`dpdiario`.`DIA_MES` order by `dpsgev60`.`dpdiario`.`DIA_ANO`,`dpsgev60`.`dpdiario`.`DIA_MES` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_dpinvsld`
--

/*!50001 DROP TABLE IF EXISTS `view_dpinvsld`*/;
/*!50001 DROP VIEW IF EXISTS `view_dpinvsld`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_dpinvsld` AS select `dpinvsld`.`SLD_CODIGO` AS `SLD_CODIGO`,sum(if(isnull(`dpinvsld`.`SLD_FISICO`),0,`dpinvsld`.`SLD_FISICO`)) AS `SLD_FISICO`,sum(if(isnull(`dpinvsld`.`SLD_LOGICO`),0,`dpinvsld`.`SLD_LOGICO`)) AS `SLD_LOGICO`,sum(if(isnull(`dpinvsld`.`SLD_CONTAB`),0,`dpinvsld`.`SLD_CONTAB`)) AS `SLD_CONTAB` from `dpinvsld` group by `dpinvsld`.`SLD_CODIGO` order by `dpinvsld`.`SLD_CODIGO` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_dpprecio_`
--

/*!50001 DROP TABLE IF EXISTS `view_dpprecio_`*/;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_dpprecio_` AS select `dpprecios`.`PRE_CODIGO` AS `CODIGO_`,`dpprecios`.`PRE_PRECIO` AS `PRECIO_`,`dpprecios`.`PRE_UNDMED` AS `MEDIDA_`,`dpprecios`.`PRE_CODMON` AS `MONEDA_`,`dpprecios`.`PRE_FECHA` AS `FECHA_` from `dpprecios` where (`dpprecios`.`PRE_LISTA` = '') group by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` order by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_dpprecio_0`
--

/*!50001 DROP TABLE IF EXISTS `view_dpprecio_0`*/;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_0`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_dpprecio_0` AS select `dpprecios`.`PRE_CODIGO` AS `CODIGO_0`,`dpprecios`.`PRE_PRECIO` AS `PRECIO_0`,`dpprecios`.`PRE_UNDMED` AS `MEDIDA_0`,`dpprecios`.`PRE_CODMON` AS `MONEDA_0`,`dpprecios`.`PRE_FECHA` AS `FECHA_0` from `dpprecios` where (`dpprecios`.`PRE_LISTA` = '0') group by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` order by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_dpprecio_1`
--

/*!50001 DROP TABLE IF EXISTS `view_dpprecio_1`*/;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_dpprecio_1` AS select `dpprecios`.`PRE_CODIGO` AS `CODIGO_1`,`dpprecios`.`PRE_PRECIO` AS `PRECIO_1`,`dpprecios`.`PRE_UNDMED` AS `MEDIDA_1`,`dpprecios`.`PRE_CODMON` AS `MONEDA_1`,`dpprecios`.`PRE_FECHA` AS `FECHA_1` from `dpprecios` where (`dpprecios`.`PRE_LISTA` = '1') group by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` order by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_dpprecio_4`
--

/*!50001 DROP TABLE IF EXISTS `view_dpprecio_4`*/;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_dpprecio_4` AS select `dpprecios`.`PRE_CODIGO` AS `CODIGO_4`,`dpprecios`.`PRE_PRECIO` AS `PRECIO_4`,`dpprecios`.`PRE_UNDMED` AS `MEDIDA_4`,`dpprecios`.`PRE_CODMON` AS `MONEDA_4`,`dpprecios`.`PRE_FECHA` AS `FECHA_4` from `dpprecios` where (`dpprecios`.`PRE_LISTA` = '4') group by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` order by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_dpprecio_a`
--

/*!50001 DROP TABLE IF EXISTS `view_dpprecio_a`*/;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_a`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_dpprecio_a` AS select `dpprecios`.`PRE_CODIGO` AS `CODIGO_A`,`dpprecios`.`PRE_PRECIO` AS `PRECIO_A`,`dpprecios`.`PRE_UNDMED` AS `MEDIDA_A`,`dpprecios`.`PRE_CODMON` AS `MONEDA_A`,`dpprecios`.`PRE_FECHA` AS `FECHA_A` from `dpprecios` where (`dpprecios`.`PRE_LISTA` = 'A') group by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` order by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_dpprecio_b`
--

/*!50001 DROP TABLE IF EXISTS `view_dpprecio_b`*/;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_b`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_dpprecio_b` AS select `dpprecios`.`PRE_CODIGO` AS `CODIGO_B`,`dpprecios`.`PRE_PRECIO` AS `PRECIO_B`,`dpprecios`.`PRE_UNDMED` AS `MEDIDA_B`,`dpprecios`.`PRE_CODMON` AS `MONEDA_B`,`dpprecios`.`PRE_FECHA` AS `FECHA_B` from `dpprecios` where (`dpprecios`.`PRE_LISTA` = 'B') group by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` order by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_dpprecio_c`
--

/*!50001 DROP TABLE IF EXISTS `view_dpprecio_c`*/;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_c`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_dpprecio_c` AS select `dpprecios`.`PRE_CODIGO` AS `CODIGO_C`,`dpprecios`.`PRE_PRECIO` AS `PRECIO_C`,`dpprecios`.`PRE_UNDMED` AS `MEDIDA_C`,`dpprecios`.`PRE_CODMON` AS `MONEDA_C`,`dpprecios`.`PRE_FECHA` AS `FECHA_C` from `dpprecios` where (`dpprecios`.`PRE_LISTA` = 'C') group by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` order by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_dpprecio_d`
--

/*!50001 DROP TABLE IF EXISTS `view_dpprecio_d`*/;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_d`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_dpprecio_d` AS select `dpprecios`.`PRE_CODIGO` AS `CODIGO_D`,`dpprecios`.`PRE_PRECIO` AS `PRECIO_D`,`dpprecios`.`PRE_UNDMED` AS `MEDIDA_D`,`dpprecios`.`PRE_CODMON` AS `MONEDA_D`,`dpprecios`.`PRE_FECHA` AS `FECHA_D` from `dpprecios` where (`dpprecios`.`PRE_LISTA` = 'D') group by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` order by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_dpprecio_x`
--

/*!50001 DROP TABLE IF EXISTS `view_dpprecio_x`*/;
/*!50001 DROP VIEW IF EXISTS `view_dpprecio_x`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_dpprecio_x` AS select `dpprecios`.`PRE_CODIGO` AS `CODIGO_X`,`dpprecios`.`PRE_PRECIO` AS `PRECIO_X`,`dpprecios`.`PRE_UNDMED` AS `MEDIDA_X`,`dpprecios`.`PRE_CODMON` AS `MONEDA_X`,`dpprecios`.`PRE_FECHA` AS `FECHA_X` from `dpprecios` where (`dpprecios`.`PRE_LISTA` = 'X') group by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` order by `dpprecios`.`PRE_CODIGO`,`dpprecios`.`PRE_CODMON` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_dppreciosxundmed`
--

/*!50001 DROP TABLE IF EXISTS `view_dppreciosxundmed`*/;
/*!50001 DROP VIEW IF EXISTS `view_dppreciosxundmed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_dppreciosxundmed` AS select `dpprecios`.`PRE_UNDMED` AS `PXU_UNDMED`,count(0) AS `PXU_CANTID` from `dpprecios` group by `dpprecios`.`PRE_UNDMED` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-05  3:29:21
