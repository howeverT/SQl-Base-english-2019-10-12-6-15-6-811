CREATE DATABASE `student_examination_sys`;

USE `student_examination_sys`

CREATE TABLE `student`(
	`id` VARCHAR(20) NOT NULL PRIMARY KEY,
	`name` VARCHAR(30) DEFAULT NULL,
	`age` INT  NOT NULL DEFAULT 0,
	`sex` VARCHAR(10) NOT NULL DEFAULT "male"
)ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT INTO `student`(`id`,`name`,`age`,`sex`) VALUES ('001','zhangsan','18','male');
INSERT INTO `student`(`id`,`name`,`age`,`sex`) VALUES ('002','lisi','20','female');

CREATE TABLE `subject`(
	`id` VARCHAR(20) NOT NULL PRIMARY KEY,
	`subject` VARCHAR(20) DEFAULT NULL,
	`teacher` VARCHAR(30) DEFAULT NULL,
	`description` VARCHAR(50) DEFAULT NULL
)ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT INTO `subject`(`id`,`subject`,`teacher`,`description`) VALUES ('1001','Chinese','Mr. Wang','the exam is easy');
INSERT INTO `subject`(`id`,`subject`,`teacher`,`description`) VALUES ('1002','math','Miss Liu','the exam is difficult');

CREATE TABLE `score`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`student_id` VARCHAR(20) NOT NULL,
	`subject_id` VARCHAR(20) NOT NULL,
	`score` FLOAT DEFAULT 0,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
	CONSTRAINT `subject_id` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8;


INSERT INTO `score`(`student_id`,`subject_id`,`score`) VALUES ('001','1001',80);
INSERT INTO `score`(`student_id`,`subject_id`,`score`) VALUES ('002','1002',60);
INSERT INTO `score`(`student_id`,`subject_id`,`score`) VALUES ('001','1001',70);
INSERT INTO `score`(`student_id`,`subject_id`,`score`) VALUES ('002','1002',60.5);