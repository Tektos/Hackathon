-- MySQL Script generated by MySQL Workbench
-- 09/14/14 15:31:06
-- Model: New Model    Version: 1.0
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema tourismdata
-- -----------------------------------------------------
-- Base de données regroupant l'ensemble des données disponibles sur la Côte d'Opale, créée lors du Tourism'Hackathon
CREATE SCHEMA IF NOT EXISTS `tourismdata` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `tourismdata` ;

-- -----------------------------------------------------
-- Table `tourismdata`.`SUBTHEMES_FR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tourismdata`.`SUBTHEMES_FR` (
  `SUBT_Id` INT NOT NULL,
  `SUBT_SubThemeTitle` VARCHAR(45) NULL,
  `SUBT_Themetitile` VARCHAR(45) NULL,
  PRIMARY KEY (`SUBT_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tourismdata`.`COMMENTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tourismdata`.`COMMENTS` (
  `COM_Id` INT NOT NULL,
  `COM_REC_Id` INT NULL,
  `COM_Description` VARCHAR(45) NULL,
  `COM_Rate` VARCHAR(45) NULL,
  PRIMARY KEY (`COM_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tourismdata`.`ACCOUNTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tourismdata`.`ACCOUNTS` (
  `ACC_Id` INT NOT NULL,
  `ACC_Login` VARCHAR(45) NULL,
  `ACC_Password` VARCHAR(45) NULL,
  `ACC_Mail` VARCHAR(45) NULL,
  PRIMARY KEY (`ACC_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tourismdata`.`TICKETS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tourismdata`.`TICKETS` (
  `TIC_Id` INT NOT NULL,
  `TIC_StartCity` VARCHAR(45) NULL,
  `TIC_Destination` VARCHAR(45) NULL,
  `TIC_BeginDate` DATE NULL,
  `TIC_EndDate` DATE NULL,
  `TIC_Duration` VARCHAR(45) NULL,
  `TIC_Activities` INT NULL,
  `TIC_Art` INT NULL,
  `TIC_Shopping` INT NULL,
  `TIC_Hobbies` INT NULL,
  `TIC_ACC_Id` INT NULL,
  PRIMARY KEY (`TIC_Id`),
  CONSTRAINT `FK_TIC_ACC`
    FOREIGN KEY (`TIC_Id`)
    REFERENCES `tourismdata`.`ACCOUNTS` (`ACC_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tourismdata`.`EVENTS_FR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tourismdata`.`EVENTS_FR` (
  `EVENTS_Id` INT NOT NULL AUTO_INCREMENT,
  `EVENTS_Title` VARCHAR(45) NULL,
  `EVENTS_Type` VARCHAR(45) NULL,
  `EVENTS_BeginDate` DATE NULL,
  `EVENTS_EndDate` DATE NULL,
  `EVENTS_Description` VARCHAR(45) NULL,
  `EVENTS_DescriptionComp` VARCHAR(45) NULL,
  `EVENTS_Languages` VARCHAR(45) NULL,
  `EVENTS_Location` VARCHAR(45) NULL,
  `EVENTS_PostalCode` VARCHAR(45) NULL,
  `EVENTS_City` VARCHAR(45) NULL,
  `EVENTS_Website` VARCHAR(45) NULL,
  `EVENTS_Geolocalization` VARCHAR(45) NULL,
  `EVENTS_Duration` VARCHAR(45) NULL,
  `EVENTS_Validation` DATE NULL,
  PRIMARY KEY (`EVENTS_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tourismdata`.`COM_EVE_FR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tourismdata`.`COM_EVE_FR` (
  `EVE_Id` INT NOT NULL,
  `COM_Id` INT NOT NULL,
  PRIMARY KEY (`EVE_Id`, `COM_Id`),
  INDEX `FK_COM_FR_idx` (`COM_Id` ASC),
  CONSTRAINT `FK_COM`
    FOREIGN KEY (`COM_Id`)
    REFERENCES `tourismdata`.`COMMENTS` (`COM_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_EVE`
    FOREIGN KEY (`EVE_Id`)
    REFERENCES `tourismdata`.`EVENTS_FR` (`EVENTS_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tourismdata`.`EVE_SUBT_FR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tourismdata`.`EVE_SUBT_FR` (
  `EVE__Id` INT NOT NULL,
  `SUBT_Id` INT NOT NULL,
  PRIMARY KEY (`EVE__Id`, `SUBT_Id`),
  INDEX `FK_SUBT_REC_FR_idx` (`SUBT_Id` ASC),
  CONSTRAINT `FK_SUBT`
    FOREIGN KEY (`SUBT_Id`)
    REFERENCES `tourismdata`.`SUBTHEMES_FR` (`SUBT_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_REC`
    FOREIGN KEY (`EVE__Id`)
    REFERENCES `tourismdata`.`EVENTS_FR` (`EVENTS_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tourismdata`.`subthemes_en`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tourismdata`.`subthemes_en` (
  `SUBT_Id` INT NOT NULL,
  `SUBT_Subtitle` VARCHAR(45) NULL,
  `SUB_Themetitile` VARCHAR(45) NULL,
  PRIMARY KEY (`SUBT_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tourismdata`.`RECORDS_EN`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tourismdata`.`RECORDS_EN` (
  `REC_Id` INT NOT NULL,
  `REC_Title` VARCHAR(45) NULL,
  `REC_BeginDate` DATE NULL,
  `REC_EndDate` DATE NULL,
  `REC_Description` VARCHAR(45) NULL,
  `REC_Languages` VARCHAR(45) NULL,
  `REC_Location` VARCHAR(45) NULL,
  `REC_Website` VARCHAR(45) NULL,
  `REC_Territories` VARCHAR(45) NULL,
  `REC_Geolocalization` VARCHAR(45) NULL,
  `REC_Duration` VARCHAR(45) NULL,
  `REC_Validation` DATE NULL,
  PRIMARY KEY (`REC_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tourismdata`.`WAYPOINT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tourismdata`.`WAYPOINT` (
  `WAY_Id` INT NOT NULL,
  `WAY_Date` DATE NULL,
  `WAY_TIC_Id` INT NULL,
  `WAY_Duration` VARCHAR(45) NULL,
  PRIMARY KEY (`WAY_Id`),
  CONSTRAINT `FK_TIC_Id`
    FOREIGN KEY (`WAY_Id`)
    REFERENCES `tourismdata`.`TICKETS` (`TIC_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tourismdata`.`WAY_EVE_FR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tourismdata`.`WAY_EVE_FR` (
  `WAY_Id` INT NOT NULL,
  `EVE_Id` INT NOT NULL,
  PRIMARY KEY (`WAY_Id`, `EVE_Id`),
  INDEX `FK_REC_FR_Id_idx` (`EVE_Id` ASC),
  CONSTRAINT `FK_EVE_Id`
    FOREIGN KEY (`EVE_Id`)
    REFERENCES `tourismdata`.`EVENTS_FR` (`EVENTS_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_WAY_Id`
    FOREIGN KEY (`WAY_Id`)
    REFERENCES `tourismdata`.`WAYPOINT` (`WAY_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tourismdata`.`RECORDS_FR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tourismdata`.`RECORDS_FR` (
  `id` INT NOT NULL,
  `titre` VARCHAR(45) NULL,
  `date_debut` VARCHAR(45) NULL,
  `date_fin` DATE NULL,
  `description_presentation` DATE NULL,
  `description_complementaire` VARCHAR(45) NULL,
  `langues` VARCHAR(45) NULL,
  `territoires` VARCHAR(45) NULL,
  `themes` VARCHAR(45) NULL,
  `site_web` VARCHAR(45) NULL,
  `geo_point_2d` VARCHAR(45) NULL,
  `moyenspaiement` VARCHAR(45) NULL,
  `prestations` VARCHAR(45) NULL,
  `multimedia_url_photo` VARCHAR(45) NULL,
  `classement_categories` DATE NULL,
  `adr_etab` VARCHAR(45) NULL,
  `code_postal_etab` VARCHAR(45) NULL,
  `commune_etab` VARCHAR(45) NULL,
  `personne_civilite_etab` VARCHAR(45) NULL,
  `personne_prenom_etab` VARCHAR(45) NULL,
  `personne_nom_etab` VARCHAR(45) NULL,
  `personne_tel1_etab` VARCHAR(45) NULL,
  `personne_tel2_etab` VARCHAR(45) NULL,
  `personne_mel1_etab` VARCHAR(45) NULL,
  `personne_mel2_etab` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- 
CREATE TABLE IF NOT EXISTS `fluxrss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `RSS` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `fluxrss`
--

INSERT INTO `fluxrss` (`id`, `RSS`) VALUES
(1, 'http://www.opalenews.com/agenda/rss/');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;