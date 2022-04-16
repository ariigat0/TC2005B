-- MySQL Workbench Forward Engineering

DROP SCHEMA IF EXISTS bam_banimals_adventure_db;
CREATE SCHEMA bam_banimals_adventure_db;
USE bam_banimals_adventure_db;

-- -----------------------------------------------------
-- Table `BamBanimalsAdventureDB`.`LEVELS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bam_banimals_adventure_db`.`LEVELS` (
  `id_LEVELS` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `level_score` INT NOT NULL,
  `time_spended` TIMESTAMP NOT NULL, 
  `times_played` INT NOT NULL,
  PRIMARY KEY (`id_LEVELS`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `BamBanimalsAdventureDB`.`SCORE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bam_banimals_adventure_db`.`SCORE` (
  `id_SCORE` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `good` VARCHAR(45) NOT NULL,
  `missed` VARCHAR(45) NOT NULL,
  `perfect` VARCHAR(45) NOT NULL,
  `bad` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_SCORE`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `BamBanimalsAdventureDB`.`USER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bam_banimals_adventure_db`.`USER` (
  `id_USER` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nickname` VARCHAR(45) NOT NULL,
  `id_LEVELS` INT UNSIGNED NOT NULL DEFAULT NULL,
  `id_SCORE` INT UNSIGNED NOT NULL DEFAULT NULL,
  PRIMARY KEY (`id_USER`),
  CONSTRAINT `id_LEVELS`
    FOREIGN KEY (`id_LEVELS`)
    REFERENCES `bam_banimals_adventure_db`.`LEVELS` (`id_LEVELS`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `id_SCORE`
    FOREIGN KEY (`id_SCORE`)
    REFERENCES `bam_banimals_adventure_db`.`SCORE` (`id_SCORE`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO LEVELS VALUES (1, 20,'2006-02-15 04:34:33',4);
INSERT INTO SCORE VALUES (1, '2','4','3','6');
INSERT INTO USER VALUES (1, 'ariigato', 1, 1);


