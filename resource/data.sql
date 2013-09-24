SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `samples` DEFAULT CHARACTER SET utf8 ;
USE `samples` ;

-- -----------------------------------------------------
-- Table `samples`.`category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `samples`.`category` ;

CREATE  TABLE IF NOT EXISTS `samples`.`category` (
  `id` INT(11) NOT NULL ,
  `name` VARCHAR(45) NULL DEFAULT NULL ,
  `parent_category_id` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `parent_type_id` (`id` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `samples`.`producer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `samples`.`producer` ;

CREATE  TABLE IF NOT EXISTS `samples`.`producer` (
  `id` INT(11) NOT NULL ,
  `name` VARCHAR(45) NULL DEFAULT NULL ,
  `address` VARCHAR(45) NULL DEFAULT NULL ,
  `web_url` VARCHAR(45) NULL DEFAULT NULL ,
  `desciption` VARCHAR(45) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `samples`.`product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `samples`.`product` ;

CREATE  TABLE IF NOT EXISTS `samples`.`product` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL DEFAULT NULL ,
  `short_desc` VARCHAR(200) NULL DEFAULT NULL ,
  `detail_desc` VARCHAR(500) NULL DEFAULT NULL ,
  `unitPrice` VARCHAR(500) NULL DEFAULT NULL ,
  `category_id` INT(11) NOT NULL ,
  `producer_id` INT(11) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `category_id` (`category_id` ASC) ,
  INDEX `producer_id` (`producer_id` ASC) ,
  CONSTRAINT `category_id`
    FOREIGN KEY (`category_id` )
    REFERENCES `samples`.`category` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `producer_id`
    FOREIGN KEY (`producer_id` )
    REFERENCES `samples`.`producer` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Contain data of a product';



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
