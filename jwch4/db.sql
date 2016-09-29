create database if not exists `db_jwdb`;

USE `db_jwdb`;

CREATE TABLE `tb_student`(
  `no` int NOT NULL auto_increment,
  `name` varchar(40) NOT null,
  `OS` int NOT null,
  `PC` int NOT null,
  `DS` int NOT null,
   PRIMARY KEY   (`no`)
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 
 
 
 
 
 
 
 
 
 CREATE TABLE `tb_message`(
  `id` int NOT NULL auto_increment,
  `name` varchar(40) NOT null,
  `title` varchar(100) NOT null,
  `messages` varchar(800) NOT null,
   PRIMARY KEY   (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;