# 날짜 : 2023/06/16
# 이름 : 이규석
# 내용 : 1.SQL기초 실습

#실습 1-1 데이터 베이스 생성
CREATE DATABASE `UserDB`; 
#Drop datbase `UserDB`; - 데이터베이스 제거

#실습 1-2 테이블 생성 및 제거
CREATE TABLE `User1`(
	`uid`		VARCHAR(10),
	`name`	VARCHAR(10),
	`hp`		CHAR(13),
	`age`		INT
);

#Drop table `User`1; 테이블 삭제

#실습 1-3 데이터 추가
INSERT INTO `user1` VALUES ('A101','김유신','010-1234-1111',25);
INSERT INTO `user1` VALUES ('A102','김춘추','010-1234-2222',23);
INSERT INTO `user1` VALUES ('A103','장보고','010-1234-3333',32);
INSERT INTO `user1` (`uid`,`name`,`age`) VALUES ('A104','강감찬',45);
INSERT INTO `user1` SET	`uid`='A105', `name`='이순신',`hp`='010-1234-5555';

#실습 1-4	데이터 조회
SELECT * FROM `user1`;
SELECT * FROM `user1` WHERE `uid`='A101';
SELECT * FROM `user1` WHERE `name` = '김춘추';
SELECT * FROM `user1` WHERE `age` < 30;
SELECT * FROM `user1` WHERE `age` >= 30;
SELECT `uid`,`name`,`age` FROM `user1`;

#실습 1-5 테이블 데이터 수정
UPDATE `user1` SET `hp` = '010-1234-4444' WHERE `uid`='A104';
UPDATE `user1` SET `age` = 51 WHERE `uid` = 'A105';
UPDATE `user1` SET `hp`  = '010-1234-1001', `age` = 27 WHERE `uid` = 'A101';

#실습 1-6 테이블에 데이터 삭제
#delete from 테이블명 where 조건;

DELETE FROM `user1` WHERE `uid` = 'A101';
DELETE FROM `user1` WHERE `uid` = 'A102' AND `age` = 25;
DELETE FROM `user1` WHERE `age` >= 30;


#실습 1-7 연습문제
CREATE TABLE `Tbluser`(
		`userId`		VARCHAR(10),
		`userName`	VARCHAR(10),
		`userHp`		CHAR(13),
		`userAge`	TINYINT,
		`userAddr`	VARCHAR(20)
);

CREATE TABLE `TblProduct`(
		`prdCode`		INT,
		`prdName`		VARCHAR(10),
		`prdPrice`		INT,
		`prdAmount`		INT,
		`prdCompany`	VARCHAR(10),
		`prdMakeData`	DATE
);

#실습1-8 데이터 입력
INSERT INTO `TblUser` VALUES ('p101','김유신','010-1234-1001',25,'서울시 중구');
INSERT INTO `TblUser` VALUES ('p102','김춘추','010-1234-1002',23,'부산시 금정구');
INSERT INTO `TblUser` (`userId`,`userName`,`userAge`,`userAddr`)VALUES ('p103','장보고',31,'경기도 광주군');
INSERT INTO `TblUser`(`userId`,`userName`,`userAddr`) VALUES ('p104','강감찬','경남 창원시');
INSERT INTO `TblUser`(`userId`,`userName`,`userHp`,`userAge`) VALUES ('p105','이순신','010-1234-1005',50);

INSERT INTO `TblProduct`VALUES ('1','냉장고',800,10,'LG',20230616);
INSERT INTO `TblProduct`VALUES ('2','노트북',1200,20,'삼성',20230616);
INSERT INTO `TblProduct`VALUES ('3','TV',1400,6,'LG',20230616);
INSERT INTO `TblProduct`VALUES ('4','세탁기',1000,8,'LG',20230616);
INSERT INTO `TblProduct` (`prdCode`,`prdName`,`prdPrice`,`prdAmount`) VALUES (5,'컴퓨터',1100,0);
INSERT INTO `TblProduct`VALUES ('6','휴대폰',900,102,'삼성',20230616);

#실습 1-9 SQL실행
SELECT * FROM `TblUser`;
SELECT `userName` FROM `Tbluser`;
SELECT `userName`,`userHp` FROM `TblUser`;
SELECT * FROM `tblUser` WHERE `userId`='P102';
SELECT * FROM `tbluser` WHERE `userId`='p104' OR `userid` = 'p105';
SELECT * FROM `tbluser` WHERE `userAddr` = '부산시 금정구';
SELECT * FROM `tbluser` WHERE `userage` > 30;
SELECT * FROM `Tbluser` WHERE `userHp` IS NULL;
UPDATE `Tbluser` SET `userAge` = 42 WHERE `userid` = 'p104';
UPDATE `tbluser` SET `userAddr` = '경남 김해시' WHERE `userId` = 'p105';
DELETE FROM `tblUser` WHERE `userId` = 'p103';

SELECT * FROM `TblProduct`;
SELECT `prdName` FROM `TblProduct`;
SELECT `prdName`, `prdPrice` from `TblProduct`;
SELECT * FROM `TblProduct` WHERE `prdCompany` = 'LG';
SELECT * FROM `TblProduct` WHERE `prdCompany` = '삼성';
UPDATE `TblProduct` SET
						`prdCompany`='삼성',
						`PrdMakeData`= 20230101
						WHERE
						`prdcode`=5;