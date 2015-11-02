-- TO USE THIS FILE IN Cloud9
-- Run this command inside the MySQL command line client:
--
-- source ~/workspace/attendance/db/attendance_creation.sql
--
-- Be careful! This file will DROP the existing library database.

-- Drop the existing library database.
DROP DATABASE `attendance`;

-- Create a new, empty library database.
CREATE DATABASE `attendance`;

-- MySQL Workbench Forward Engineering
-- MySQL Workbench Forward Engineering



SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema attendance
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema attendance
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `attendance` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `attendance` ;

-- -----------------------------------------------------
-- Table `attendance`.`teacher`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `attendance`.`teacher` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `name` VARCHAR(45) NOT NULL COMMENT '',
  `pw` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `attendance`.`class`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `attendance`.`class` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `teacher_id` INT NOT NULL COMMENT '',
  `code` VARCHAR(45) NOT NULL COMMENT '',
  `day` VARCHAR(45) NOT NULL COMMENT '',
  `period` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `fk_Class_Teacher_idx` (`teacher_id` ASC)  COMMENT '',
  CONSTRAINT `fk_Class_Teacher`
    FOREIGN KEY (`teacher_id`)
    REFERENCES `attendance`.`teacher` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `attendance`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `attendance`.`student` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `name` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `attendance`.`statuses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `attendance`.`statuses` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `status name` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `attendance`.`Class_has_Student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `attendance`.`Class_has_Student` (
  `class_id` INT NOT NULL COMMENT '',
  `stu_id` INT NOT NULL COMMENT '',
  `status_id` INT NOT NULL COMMENT '',
  `date` VARCHAR(45) NOT NULL COMMENT '',
  INDEX `fk_Class_has_Student_Student1_idx` (`stu_id` ASC)  COMMENT '',
  INDEX `fk_Class_has_Student_Class1_idx` (`class_id` ASC)  COMMENT '',
  PRIMARY KEY (`class_id`, `stu_id`)  COMMENT '',
  INDEX `fk_Class_has_Student_statuses1_idx` (`status_id` ASC)  COMMENT '',
  CONSTRAINT `fk_Class_has_Student_Class1`
    FOREIGN KEY (`class_id`)
    REFERENCES `attendance`.`class` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Class_has_Student_Student1`
    FOREIGN KEY (`stu_id`)
    REFERENCES `attendance`.`student` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Class_has_Student_statuses1`
    FOREIGN KEY (`status_id`)
    REFERENCES `attendance`.`statuses` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
