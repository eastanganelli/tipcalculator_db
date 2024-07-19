CREATE TABLE `restaurant_by_country` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID Restaurant Tip',
  `country` INT UNSIGNED DEFAULT NULL COMMENT 'ID Country',
  `rate` VARCHAR(10) DEFAULT NULL COMMENT 'Tip Rate',
  `createdAt` DATETIME NOT NULL COMMENT 'Created Registry',
  `updatedAt` DATETIME NOT NULL COMMENT 'Updated Registry',
  PRIMARY KEY (id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci,
COMMENT = 'TIP Rates by Country';

ALTER TABLE `restaurant_by_country` 
  ADD UNIQUE INDEX country(country);

ALTER TABLE `restaurant_by_country` 
  ADD CONSTRAINT `FK_restaurant_by_country_country_id` FOREIGN KEY (country)
    REFERENCES country(id) ON DELETE SET NULL;