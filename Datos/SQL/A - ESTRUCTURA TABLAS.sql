#https://dbdiagram.io/d/67b470ee263d6cf9a090139f
CREATE TABLE `conference` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `name` ENUM ('east', 'west') NOT NULL,
  `division_name` VARCHAR(255)
);

CREATE TABLE `team` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `conference_id` INT,
  FOREIGN KEY (`conference_id`) REFERENCES `conference` (`id`)
);

CREATE TABLE `player` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `team_id` INT,
  `name` VARCHAR(255) NOT NULL,
  FOREIGN KEY (`team_id`) REFERENCES `team` (`id`)
);

CREATE TABLE `stadium` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `city` VARCHAR(255) NOT NULL
);

CREATE TABLE `fault` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `name` ENUM ('technical', 'personal', 'unsportsmanlike') NOT NULL
);

CREATE TABLE `season` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `year` INT NOT NULL,
  `name` VARCHAR(255) NOT NULL
);

CREATE TABLE `game` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `stadium_id` INT,
  `season_id` INT,
  FOREIGN KEY (`stadium_id`) REFERENCES `stadium` (`id`),
  FOREIGN KEY (`season_id`) REFERENCES `season` (`id`)
);

CREATE TABLE `game_team` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `game_id` INT,
  `team_id` INT,
  `winner` BOOLEAN,
  `points` INT,
  FOREIGN KEY (`game_id`) REFERENCES `game` (`id`),
  FOREIGN KEY (`team_id`) REFERENCES `team` (`id`)
);

CREATE TABLE `player_fault` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `player_id` INT,
  `game_id` INT,
  `fault_id` INT,
  FOREIGN KEY (`player_id`) REFERENCES `player` (`id`),
  FOREIGN KEY (`game_id`) REFERENCES `game` (`id`),
  FOREIGN KEY (`fault_id`) REFERENCES `fault` (`id`)
);

CREATE TABLE `team_position` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `team_id` INT,
  `position` VARCHAR(50) NOT NULL,
  `season_id` INT,
  FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  FOREIGN KEY (`season_id`) REFERENCES `season` (`id`)
);

CREATE TABLE `player_point` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `player_id` INT,
  `game_id` INT,
  `three_point` FLOAT,
  `two_point` FLOAT,
  `free_point` FLOAT,
  `season_id` INT,
  FOREIGN KEY (`player_id`) REFERENCES `player` (`id`),
  FOREIGN KEY (`game_id`) REFERENCES `game` (`id`),
  FOREIGN KEY (`season_id`) REFERENCES `season` (`id`)
);