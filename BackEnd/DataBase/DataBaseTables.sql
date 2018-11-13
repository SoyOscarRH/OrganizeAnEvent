-- MySQL Script generated by MySQL Workbench
-- Mon Nov 12 20:15:40 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema OAE
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema OAE
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `OAE` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `OAE` ;

-- -----------------------------------------------------
-- Table `OAE`.`Event`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OAE`.`Event` (
  `EventID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(100) NOT NULL,
  `Place` VARCHAR(600) NULL,
  `Lat` DOUBLE NULL,
  `Long` DOUBLE NULL,
  `Time` DATETIME NULL,
  `Des` VARCHAR(1000) NULL,
  PRIMARY KEY (`EventID`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `OAE`.`Institution`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OAE`.`Institution` (
  `InstitutionID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL,
  `EventID` INT NULL,
  PRIMARY KEY (`InstitutionID`),
  INDEX `institute_event_idx` (`EventID` ASC),
  CONSTRAINT `institute_event`
    FOREIGN KEY (`EventID`)
    REFERENCES `OAE`.`Event` (`EventID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `OAE`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OAE`.`User` (
  `Username` INT NOT NULL,
  `Password` VARCHAR(256) NOT NULL,
  `Type` VARCHAR(60) NOT NULL,
  `InstitutionID` INT NOT NULL,
  PRIMARY KEY (`Username`),
  INDEX `user_institute_idx` (`InstitutionID` ASC),
  CONSTRAINT `user_institute`
    FOREIGN KEY (`InstitutionID`)
    REFERENCES `OAE`.`Institution` (`InstitutionID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `OAE`.`Institute`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OAE`.`Institute` (
  `InstituteID` VARCHAR(6) NOT NULL,
  `Name` VARCHAR(100) NOT NULL,
  `Level` VARCHAR(20) NOT NULL,
  `InstitutionID` INT NOT NULL,
  INDEX `institute_school_idx` (`InstitutionID` ASC),
  PRIMARY KEY (`InstituteID`),
  CONSTRAINT `institute_school`
    FOREIGN KEY (`InstitutionID`)
    REFERENCES `OAE`.`Institution` (`InstitutionID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `OAE`.`Guest`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OAE`.`Guest` (
  `RFC` VARCHAR(10) NOT NULL,
  `Number` INT NOT NULL,
  `FirstName` VARCHAR(45) NOT NULL,
  `MiddleName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NOT NULL,
  `Seat` INT NULL,
  `Email` VARCHAR(45) NULL,
  `Assistance` TINYINT NULL,
  `Representative` VARCHAR(100) NULL,
  `InstituteID` VARCHAR(6) NOT NULL,
  PRIMARY KEY (`RFC`),
  INDEX `guest_school_idx` (`InstituteID` ASC),
  CONSTRAINT `guest_school`
    FOREIGN KEY (`InstituteID`)
    REFERENCES `OAE`.`Institute` (`InstituteID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `OAE`.`Prize`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OAE`.`Prize` (
  `PrizeID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(100) NOT NULL,
  `Block` INT NOT NULL,
  `Speech` VARCHAR(1000) NOT NULL,
  `Amount` INT NOT NULL,
  `EventID` INT NOT NULL,
  PRIMARY KEY (`PrizeID`),
  INDEX `event_prize_idx` (`EventID` ASC),
  CONSTRAINT `event_prize`
    FOREIGN KEY (`EventID`)
    REFERENCES `OAE`.`Event` (`EventID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `OAE`.`Guest_Prize`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OAE`.`Guest_Prize` (
  `RFC` VARCHAR(10) NOT NULL,
  `PrizeID` INT NOT NULL,
  PRIMARY KEY (`RFC`, `PrizeID`),
  INDEX `gp_prize_idx` (`PrizeID` ASC),
  CONSTRAINT `gp_guest`
    FOREIGN KEY (`RFC`)
    REFERENCES `OAE`.`Guest` (`RFC`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `gp_prize`
    FOREIGN KEY (`PrizeID`)
    REFERENCES `OAE`.`Prize` (`PrizeID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `OAE`.`Comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OAE`.`Comment` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Comment` VARCHAR(1000) NULL,
  `RFC` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `comment_guest_idx` (`RFC` ASC),
  CONSTRAINT `comment_guest`
    FOREIGN KEY (`RFC`)
    REFERENCES `OAE`.`Guest` (`RFC`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `OAE`.`News`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OAE`.`News` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `News` VARCHAR(1000) NULL,
  `EventID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `news_event_idx` (`EventID` ASC),
  CONSTRAINT `news_event`
    FOREIGN KEY (`EventID`)
    REFERENCES `OAE`.`Event` (`EventID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
