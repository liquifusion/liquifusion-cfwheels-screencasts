
CREATE TABLE `users` (
 `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `firstname` VARCHAR(255) NOT NULL,
 `lastname` VARCHAR(255) NOT NULL,
 `roleid` INT DEFAULT NULL,
 `createdat` DATETIME,
 `updatedat` DATETIME,
 `deletedat` DATETIME,
 CONSTRAINT `FK_users_roles` FOREIGN KEY (`roleid`) REFERENCES roles(`id`)
);
