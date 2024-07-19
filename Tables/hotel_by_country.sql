CREATE TABLE `hotel_by_country` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID Tip Rate',
  `country` INT UNSIGNED DEFAULT NULL COMMENT 'ID Country',
  `rate` VARCHAR(10) DEFAULT NULL COMMENT 'Rate Values',
  `createdAt` DATETIME NOT NULL,
  `updatedAt` DATETIME NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci,
COMMENT = 'Tip Rate Hotel by Country';

ALTER TABLE `hotel_by_country` 
  ADD UNIQUE INDEX country(country);

ALTER TABLE `hotel_by_country` 
  ADD CONSTRAINT `FK_hotel_by_country_country_id` FOREIGN KEY (country)
    REFERENCES country(id) ON DELETE SET NULL;