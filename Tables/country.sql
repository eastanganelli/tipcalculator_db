CREATE TABLE `country` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID Country',
  `country` VARCHAR(40) NOT NULL COMMENT 'Country Name',
  `currency` VARCHAR(10) NOT NULL COMMENT 'Currency of the Country',
  `continent` VARCHAR(33) NOT NULL COMMENT 'Continent the Country is',
  `code` VARCHAR(5) NOT NULL COMMENT 'Code of the Country',
  `createdAt` DATETIME NOT NULL COMMENT 'Creation of registry',
  PRIMARY KEY (id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci,
COMMENT = 'Countries';