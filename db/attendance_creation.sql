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
  `id` VARCHAR(45) NOT NULL COMMENT '',
  `class_id` INT NOT NULL COMMENT '',
  `stu_id` INT NOT NULL COMMENT '',
  `status_id` INT NOT NULL COMMENT '',
  `date` VARCHAR(45) NOT NULL COMMENT '',
  INDEX `fk_Class_has_Student_Student1_idx` (`stu_id` ASC)  COMMENT '',
  INDEX `fk_Class_has_Student_Class1_idx` (`class_id` ASC)  COMMENT '',
  INDEX `fk_Class_has_Student_statuses1_idx` (`status_id` ASC)  COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
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

-- -----------------------------------------------------
-- Data for table `attendance`.`teacher`
-- -----------------------------------------------------
START TRANSACTION;
USE `attendance`;
INSERT INTO `attendance`.`teacher` (`id`, `name`, `pw`) VALUES (0, 'Sanaz Ghoreshy', 'ScienceSux');
INSERT INTO `attendance`.`teacher` (`id`, `name`, `pw`) VALUES (1, 'Gerry Doerksen', 'notsofastmuchachos');
INSERT INTO `attendance`.`teacher` (`id`, `name`, `pw`) VALUES (2, 'Rickesh Kotecha', '123456');

COMMIT;


-- -----------------------------------------------------
-- Data for table `attendance`.`class`
-- -----------------------------------------------------
START TRANSACTION;
USE `attendance`;
INSERT INTO `attendance`.`class` (`id`, `teacher_id`, `code`, `day`, `period`) VALUES (0, 0, 'SCH3U-1', '1', '1');
INSERT INTO `attendance`.`class` (`id`, `teacher_id`, `code`, `day`, `period`) VALUES (1, 2, 'BBI3M-1', '3', '4');
INSERT INTO `attendance`.`class` (`id`, `teacher_id`, `code`, `day`, `period`) VALUES (2, 1, 'MCV4U', '2', '2');
INSERT INTO `attendance`.`class` (`id`, `teacher_id`, `code`, `day`, `period`) VALUES (3, 0, 'SCH4UAP', '4', '3');
INSERT INTO `attendance`.`class` (`id`, `teacher_id`, `code`, `day`, `period`) VALUES (4, 2, 'BBI3M-2', '1', '2');
INSERT INTO `attendance`.`class` (`id`, `teacher_id`, `code`, `day`, `period`) VALUES (5, 2, 'BBI2M', '2', '1');
INSERT INTO `attendance`.`class` (`id`, `teacher_id`, `code`, `day`, `period`) VALUES (6, 1, 'MHF4U', '4', '4');

COMMIT;


-- -----------------------------------------------------
-- Data for table `attendance`.`student`
-- -----------------------------------------------------
START TRANSACTION;
USE `attendance`;
INSERT INTO `attendance`.`student` (`id`, `name`) VALUES (0, 'Jon Ser');
INSERT INTO `attendance`.`student` (`id`, `name`) VALUES (1, 'Chris Molloy');
INSERT INTO `attendance`.`student` (`id`, `name`) VALUES (2, 'Michael Wrana');
INSERT INTO `attendance`.`student` (`id`, `name`) VALUES (3, 'John Dunphy');
INSERT INTO `attendance`.`student` (`id`, `name`) VALUES (4, 'Scott Bowlby');
INSERT INTO `attendance`.`student` (`id`, `name`) VALUES (5, 'Jamie Linsdell');
INSERT INTO `attendance`.`student` (`id`, `name`) VALUES (6, 'Ross Hill');
INSERT INTO `attendance`.`student` (`id`, `name`) VALUES (7, 'Christien Kelly');
INSERT INTO `attendance`.`student` (`id`, `name`) VALUES (8, 'Graeme Edwards');
INSERT INTO `attendance`.`student` (`id`, `name`) VALUES (9, 'Jet Bent-Lee');
INSERT INTO `attendance`.`student` (`id`, `name`) VALUES (10, 'Sean Fielding');

COMMIT;


-- -----------------------------------------------------
-- Data for table `attendance`.`statuses`
-- -----------------------------------------------------
START TRANSACTION;
USE `attendance`;
INSERT INTO `attendance`.`statuses` (`id`, `status name`) VALUES (0, 'present');
INSERT INTO `attendance`.`statuses` (`id`, `status name`) VALUES (1, 'absent');
INSERT INTO `attendance`.`statuses` (`id`, `status name`) VALUES (2, 'excused');

COMMIT;


-- -----------------------------------------------------
-- Data for table `attendance`.`Class_has_Student`
-- -----------------------------------------------------
START TRANSACTION;
USE `attendance`;
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('0', 0, 1, 0, '21/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('1', 0, 4, 0, '21/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('2', 0, 3, 1, '21/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('3', 0, 5, 0, '21/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('4', 0, 7, 2, '21/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('5', 0, 8, 0, '21/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('6', 4, 1, 0, '22/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('7', 4, 3, 0, '22/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('8', 4, 5, 0, '22/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('9', 4, 4, 0, '22/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('10', 4, 2, 0, '22/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('11', 4, 6, 0, '22/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('12', 4, 0, 0, '22/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('13', 4, 7, 1, '22/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('14', 4, 8, 2, '22/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('15', 2, 1, 0, '22/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('16', 2, 2, 0, '22/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('17', 2, 3, 0, '22/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('18', 2, 4, 0, '22/10/2015');
INSERT INTO `attendance`.`Class_has_Student` (`id`, `class_id`, `stu_id`, `status_id`, `date`) VALUES ('19', 2, 5, 0, '22/10/2015');

COMMIT;

