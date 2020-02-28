-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema library
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema library
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `library`;
CREATE SCHEMA IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8 ;
USE `library` ;

-- -----------------------------------------------------
-- Table `library`.`authorities`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`authorities` (
  `authorities_id` INT(11) NOT NULL AUTO_INCREMENT,
  `role` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`authorities_id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `library`.`book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`book` (
  `book_id` INT(11) NOT NULL AUTO_INCREMENT,
  `author` VARCHAR(255) NOT NULL,
  `description` VARCHAR(250) NULL DEFAULT NULL,
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`book_id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `library`.`membership_card`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`membership_card` (
  `membership_card_id` INT(11) NOT NULL AUTO_INCREMENT,
  `date_enlistment` VARCHAR(20) NOT NULL,
  `last_payment` VARCHAR(20) NULL DEFAULT NULL,
  `type_of_membership_fee` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`membership_card_id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `library`.`rented_books`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`rented_books` (
  `user_id` INT(11) NOT NULL,
  `book_id` INT(11) NOT NULL,
  `rented_book_id` INT(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rented_book_id`),
  INDEX `FKdpokwjmy2t2rg5lmm3f65xun9` (`book_id` ASC),
  INDEX `FKj8oe1maei62jiesepqrwhwrs0` (`user_id` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `library`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`user` (
  `user_id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(70) NOT NULL,
  `name` VARCHAR(70) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(45) NOT NULL,
  `status` INT(11) NULL DEFAULT NULL,
  `username` VARCHAR(45) NOT NULL,
  `authorities_id` INT(11) NULL DEFAULT NULL,
  `membership_card_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username` ASC),
  INDEX `FKr0hkp8ktihogg6y1di85gwoio` (`authorities_id` ASC),
  INDEX `FK5gq02v0j0w0t8njf0oee1hbv8` (`membership_card_id` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
