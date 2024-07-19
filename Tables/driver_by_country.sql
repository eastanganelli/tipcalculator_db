CREATE TABLE `driver_by_country` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID TIP Driver',
  `country` INT UNSIGNED DEFAULT NULL COMMENT 'ID Country',
  `rate` VARCHAR(8) NOT NULL COMMENT 'Rate TIP',
  `createdAt` DATETIME NOT NULL COMMENT 'Created Registry',
  `updatedAt` DATETIME NOT NULL COMMENT 'Updated Registry',
  PRIMARY KEY (id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci,
COMMENT = 'Driver TIP by Country';

ALTER TABLE `driver_by_country` 
  ADD UNIQUE INDEX country(country);

ALTER TABLE `driver_by_country` 
  ADD CONSTRAINT `FK_driver_by_country_country_id` FOREIGN KEY (country)
    REFERENCES country(id) ON DELETE SET NULL;