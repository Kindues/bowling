-- ****************************************************
-- Create the database
-- ****************************************************

-- Delete the database if it exists
-- NOTE: Delete this line when using your *webhost*

-- DROP DATABASE IF EXISTS bowling;

-- NOTE: Delete this line when using your *webhost*
-- Create a new bowling database

-- CREATE DATABASE bowling;

-- -- NOTE: Delete this line when using your *webhost* and make
-- sure you have selected the correct database before running the code

-- Select the bowling database
 
-- USE bowling;

-- ****************************************************
-- Create tables
-- ****************************************************

CREATE TABLE teams
(
    team_id     TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    team_name   VARCHAR(20) NOT NULL,
    captain_id  TINYINT UNSIGNED NOT NULL
);

CREATE TABLE bowlers
( 
    bowler_id   INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name  VARCHAR(25) NOT NULL,
    last_name   VARCHAR(25) NOT NULL,
    email       VARCHAR(100) NOT NULL UNIQUE,
    pass        VARCHAR(255) NOT NULL,
    team_fk     TINYINT
);

-- Ignoring referential integrity - time to code some PHP! 

-- ****************************************************
-- populate tables
-- ****************************************************
INSERT INTO teams 
    (team_id, team_name, captain_id)
VALUES 
    (1,'Turkeys',2),
    (2,'Spares',5),
    (3,'Splitz',12)
    ;

INSERT INTO bowlers
    (bowler_id, first_name, last_name, email, pass, team_fk)
VALUES
    (NULL,'Barbara','Fournier','bfournier@tenpin.com',sha2('hello', 256), 1),
    (NULL,'David','Fournier','dfournier@tenpin.com',sha2('bello', 256), 1),
    (NULL,'John','Kennedy','jkennedy@tenpin.com',sha2('howdy', 256), 1),
    (NULL,'Sara','Shesky','sshesky@tenpin.com', sha2('whatsup', 256), 1),
    (NULL,'Ann','Patterson','apatterson@tenpin.com', sha2('sootired', 256), 1),
    (NULL,'Neil','Patterson','npatterson@tenpin.com', sha2('attorney', 256), 2),
    (NULL,'David','Viescas','dviescas@tenpin.com', sha2('barney', 256), 2),
    (NULL,'Stephanie','Viescas','sviescas@tenpin.com,', sha2('petey', 256), 2),
    (NULL,'Alastair','Black','ablack@tenpin.com', sha2('salad', 256), 2),
    (NULL,'David','Cunningham','dcunningham@tenpin.com', sha2('pinwheel', 256), 2),
    (NULL,'Angel','Kennedy','akennedy@tenpin.com', sha2('lottie', 256), 2),
    (NULL,'Carol','Viescas','cviescas@tenpin.com', sha2('liddie', 256), 3),
    (NULL,'Elizabeth','Hallmark','ehallmark@tenpin.com', sha2('backpack', 256), 3),
    (NULL,'Gary','Hallmark','ghallmark@tenpin.com', sha2('throwrug', 256), 3),
    (NULL,'Kathryn','Patterson','kpatterson@tenpin.com', sha2('blahblas', 256), 3),
    (NULL,'Richard','Shesky','rshesky@tenpin.com', sha2('shadow', 256), 3)
    ;

