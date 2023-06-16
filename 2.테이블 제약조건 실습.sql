# 날짜 : 2023/06/16
# 이름 : 이규석
# 내용 : 2.테이블 제약조건 실습

#실습 2-1,2-2 Primary key(기본키)
CREATE TABLE `User2` (
	`uid` 	VARCHAR(10) PRIMARY KEY,
	`name` 	VARCHAR(10),
	`hp` 		CHAR(13),
	`age` 	INT
);
INSERT INTO `User2` VALUES ('p111','이순신',01012340001,25);

#실습 2-3,2-4 Unique(고유키)
CREATE TABLE `User3` (
	`uid` 	VARCHAR(10) PRIMARY KEY,
	`name` 	VARCHAR(10),
	`hp` 		CHAR(13) UNIQUE,
	`age`	 	INT
);
INSERT INTO `user3` VALUES ('T111','강감찬',01043210001,30);

#실습 2-5 Foreign Key(외래키)
CREATE TABLE `parent` (
		`pid`		VARCHAR(10) PRIMARY KEY,
		`name`	VARCHAR(10),
		`hp`		CHAR(13) UNIQUE
);

INSERT INTO `parent` VALUES ('p101','홍길동',01012341001);
INSERT INTO `parent` VALUES ('p102','임꺽정',01012341002);
INSERT INTO `parent` VALUES ('p103','이성계',01012341003);


CREATE TABLE `child` (
		`cid`		VARCHAR(10) PRIMARY KEY,
		`name`	VARCHAR(10),
		`hp`		CHAR(13) UNIQUE,
		`pid`		VARCHAR(10),
		FOREIGN KEY (`pid`) REFERENCES `Parent` (`pid`)
);

INSERT INTO `child` VALUES ('c101','홍길남',01012342001,'p101');
INSERT INTO `child` VALUES ('c102','임철수',01012342002,'p102');
INSERT INTO `child` VALUES ('c103','이방원',01012342003,'p103');
INSERT INTO `child` VALUES ('c104','홍길여',01012342004,'p101');

#실습 2-7
CREATE TABLE `User4`(
	`seq` 	INT AUTO_INCREMENT PRIMARY KEY,
	`name` 	VARCHAR(10),
	`gender`	TINYINT,
	`age` 	INT,
	`addr` 	VARCHAR(255)
);
#실습 2-8 Efalult, Null Default = 자동입력값 / Null = 아직 아무것도 없음
INSERT INTO `User4` (`name`,`gender`,`age`,`addr`)VALUES ('김유신',1,25,'김해시'); 
INSERT INTO `User4` (`name`,`gender`,`age`,`addr`)VALUES ('김춘추',1,23,'경주시'); 
INSERT INTO `User4` (`name`,`gender`,`age`,`addr`)VALUES ('장보고',1,35,'완도시'); 
INSERT INTO `User4` (`name`,`gender`,`age`,`addr`)VALUES ('강감찬',1,42,'서울시'); 
INSERT INTO `User4` (`name`,`gender`,`age`,`addr`)VALUES ('신사임당',2,47,'강릉시'); 
INSERT INTO `User4` (`gender`,`addr`)VALUES (1,'부산시');

#실습 2-9,10 Not Null = 무조건 입력.
CREATE TABLE `User5`(
	`name` 	VARCHAR(10) NOT NULL,
	`gender`	TINYINT,
	`age` 	INT DEFAULT 1,
	`addr` 	VARCHAR(10)
);
