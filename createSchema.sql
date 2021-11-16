CREATE SCHEMA IF NOT EXISTS `spring-example`;
USE `spring-example`;

DROP TABLE IF EXISTS USERS;
CREATE TABLE USERS
(
    ID int PRIMARY KEY AUTO_INCREMENT,
    USERNAME varchar(255),
    PASSWORD varchar(255),
    ADDRESS varchar(255)
);
DROP TABLE IF EXISTS ORDERS;
CREATE TABLE ORDERS
(
    ID int PRIMARY KEY AUTO_INCREMENT,
    TYPE varchar(255),
    USER_ID int,
    INSERTION_TIME date
);

INSERT INTO `USERS` (`USERNAME`, `PASSWORD`, `ADDRESS`) VALUES ('Davide', 'XXX', 'Via Verdi 4D');
INSERT INTO `USERS` (`USERNAME`, `PASSWORD`, `ADDRESS`) VALUES ('Stefania', 'StrongPassword', 'Via Biffi 5A');
INSERT INTO `USERS` (`USERNAME`, `PASSWORD`, `ADDRESS`) VALUES ('Sergio', 'YYY', 'Via San Bernardino 1');
INSERT INTO `ORDERS` (`TYPE`, `USER_ID`) VALUES ('Tech', '1');
INSERT INTO `ORDERS` (`TYPE`, `USER_ID`) VALUES ('Home', '1');
INSERT INTO `ORDERS` (`TYPE`, `USER_ID`) VALUES ('Tech', '2');