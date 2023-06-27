#날짜 : 2023/06/23
#이름 : 이규석
#내용 : SQL연습문제4



CREATE DATABASE `BookStore`;
CREATE USER 'admin4'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `BookStore`.* TO 'admin4'@'%';
FLUSH PRIVILEGES;


#실습4-2

CREATE TABLE `Customer` (
	`custId`		INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name`		VARCHAR(10) NOT NULL,
	`address`	VARCHAR(20) DEFAULT NULL,
	`phone`		VARCHAR(13) DEFAULT NULL
);

CREATE TABLE `Book` (
	`bookId`		INT NOT NULL PRIMARY KEY,
	`bookName`	VARCHAR(20) NOT NULL,
	`publisher`	VARCHAR(20) NOT NULL,
	`price`		INT DEFAULT NULL
);

CREATE TABLE `Order` (
	`orderId`	INT NOT NULL PRIMARY KEY,
	`custId`		INT NOT NULL,
	`bookId`		INT NOT NULL,
	`salePrice`	INT NOT NULL,
	`orderDate`	DATE
);

#실습4-3

INSERT INTO `Customer` VALUES (1, '박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO `Customer` VALUES (2, '김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO `Customer` VALUES (3, '장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO `Customer` VALUES (4, '추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO `Customer` VALUES (5, '박세리', '대한미국 대전', NULL);

INSERT INTO `Book` VALUES (1,'축구의 역사','굿스포츠',7000);
INSERT INTO `Book` VALUES (2,'축구아는 여자','나무수',13000);
INSERT INTO `Book` VALUES (3,'축구의 이해','대한미디어',22000);
INSERT INTO `Book` VALUES (4,'골프 바이블','대한미디어',35000);
INSERT INTO `Book` VALUES (5,'피겨 교본','굿스포츠',8000);
INSERT INTO `Book` VALUES (6,'역도 단계별기술','굿스포츠',6000);
INSERT INTO `Book` VALUES (7,'야구의 추억','이상미디어',20000);
INSERT INTO `Book` VALUES (8,'야구를 부탁해','이상미디어',13000);
INSERT INTO `Book` VALUES (9,'올림픽 이야기','삼성당',7500);
INSERT INTO `Book` VALUES (10,'Olympic Champions','Pearson',13000);

INSERT INTO `order` VALUES (1, 1, 1, 6000, '2014-07-01');
INSERT INTO `order` VALUES (2, 1, 3, 21000, '2014-07-03');
INSERT INTO `order` VALUES (3, 2, 5, 8000, '2014-07-03');
INSERT INTO `order` VALUES (4, 3, 6, 6000, '2014-07-04');
INSERT INTO `order` VALUES (5, 4, 7, 20000, '2014-07-05');
INSERT INTO `order` VALUES (6, 1, 2, 12000, '2014-07-07');
INSERT INTO `order` VALUES (7, 4, 8, 13000, '2014-07-07');
INSERT INTO `order` VALUES (8, 3, 10, 12000, '2014-07-08');
INSERT INTO `order` VALUES (9, 2, 10, 7000, '2014-07-09');
INSERT INTO `order` VALUES (10, 3, 8, 13000, '2014-07-10');



#실습4-4

SELECT `custid`, `name`, `address` FROM `customer`;
#실습4-5

SELECT `bookname`, `price` FROM `book`;

#실습4-6

SELECT `price`, `bookname` FROM `book`;

#실습4-7

SELECT `bookid`, `bookname`, `publisher`, `price` FROM `book`;

#실습4-8

SELECT `publisher` FROM `book`;

#실습4-9

SELECT DISTINCT `publisher` FROM `book`;
#select `pulisher` from `book` group by `publisher`;

#실습4-10

SELECT * FROM `book` WHERE `price` >=20000;

#실습4-11

SELECT * FROM `book` WHERE `price` < 20000;

#실습4-12

SELECT * FROM `book` WHERE `price` >= 10000 AND `price` <= 20000;
SELECT * FROM `book` WHERE `price` BETWEEN 10000 AND 20000;

#실습4-13

SELECT `bookid`, `bookname`, `price`
	FROM `book`
WHERE `price` >= 15000 AND `price` <=30000;

#between 15000 and 30000

#실습4-14

SELECT * FROM `book` 
	WHERE `bookid` = 2 OR 
	`bookid` = 3 OR `bookid` = 5;
# SELECT * FROM `book` 
# WHERE `bookid` IN(2,3,5)


#실습4-15

SELECT *
	FROM `book`
WHERE `bookid` % 2 = 0;

# mod ( x, y) 나머지 구하기

#실습4-16

SELECT * FROM `customer` WHERE `name` like '박%';

#실습4-17

SELECT * FROM `customer` WHERE `address` LIKE '대한민국%' ;

#실습4-18

SELECT * FROM `customer` WHERE `phone` IS NOT NULL;

#실습4-19

SELECT * FROM `book` WHERE `publisher` = '굿스포츠' OR `publisher` = '대한미디어';
SELECT * FROM `book` WHERE `publisher` IN ('굿스포츠', '대한미디어');
#실습4-20

SELECT `publisher` FROM `book` WHERE `bookname` = '축구의 역사';


#실습4-21

SELECT `publisher` FROM `book` WHERE `bookname` LIKE '%축구%';

#실습4-22

SELECT * FROM `book` WHERE `bookname` LIKE '_구%';

#실습4-23

SELECT * FROM `book` WHERE `bookname` LIKE '축구%' AND `price` >= 20000;

#실습4-24

SELECT * FROM `book`  order by `bookname`;

#실습4-25 ?

SELECT * FROM `book` order BY `price`, `bookname`; 


#실습4-26

SELECT *
FROM `book`
order BY `price` DESC, `publisher` ASC;


#실습4-27

SELECT * FROM `book` order BY `price` DESC
LIMIT 3;

#실습4-28

SELECT * FROM `book` order BY `price` ASC
LIMIT 3;

#실습4-29

SELECT SUM(salePrice) AS '총판매액' FROM `order`;	 

#실습4-30

SELECT SUM(salePrice) AS '총판매액',
		 AVG(saleprice) AS '평균값',
		 MIN(saleprice) AS '최저가',
		 MAX(saleprice) AS '최고가'
FROM `order`;	

#실습4-31

SELECT COUNT(orderid) AS '판매건수'
FROM `order`;

#실습4-32 ???

#UPDATE `book`
#SET `bookname` = '농구'
#WHERE `bookname` = '야구';

SELECT
	`bookid`,
	REPLACE(`bookname`,'야구','농구') AS `bookname`,
	`publisher`,
	`price`
FROM `book`;

#실습4-33 ????

SELECT
	`custid`,
	COUNT(orderid) AS '수량'
FROM `Order` 
WHERE `saleprice` >= 8000 
GROUP BY `custid`
HAVING `수량` >=2;



#실습4-34

SELECT *
FROM `customer` AS a
JOIN `order` AS b
ON a.custId=b.custId;
# on 대신 using(`custid`); 도 사용가능.

#where 사용 가능
SELECT *
FROM `customer` a, `order` b
WHERE a.custId=b.custId;

#실습4-35

SELECT *
FROM `customer` AS a
JOIN `order` AS b
ON a.custId=b.custId
order BY b.custId ASC;

#실습4-36

SELECT `name`,
		 `saleprice`
FROM `customer` AS a
JOIN `order` AS b
ON a.custId = b.custId
JOIN `book` AS c
ON b.bookId = c.bookId;

#실습4-37

SELECT DISTINCT
		`name`,
		SUM(salePrice)
FROM `customer` AS a
JOIN `order` AS b
ON a.custId = b.custId
JOIN `book` AS c
ON b.bookId = c.bookId
GROUP BY `name`
order BY `name` ASC;



#실습4-38

SELECT `name`,
		 `bookname`
FROM `customer` AS a
JOIN `order` AS b
ON a.custId = b.custId
JOIN `book` AS c
ON b.bookId = c.bookId;

#실습4-39

SELECT a.`name`,
		 c.`bookname`
FROM `customer` AS a
JOIN `order` AS b
ON a.custId = b.custId
JOIN `book` AS c
ON b.bookId = c.bookId
WHERE c.price = 20000;

#실습4-40

SELECT `name`,
		 `saleprice`
FROM `customer` AS a
left JOIN `order` AS b
ON a.custId = b.custId;

#실습4-41

SELECT
		SUM(b.salePrice) AS 총매출
FROM `customer` AS a
JOIN `order` AS b
ON a.custId = b.custId
JOIN `book` AS c
ON b.bookId = c.bookId
WHERE `name` = '김연아'
GROUP BY `name`;

# select 안에 select
SELECT
	SUM(saleprice) AS 총매출
FROM `order`
WHERE `custid` = (SELECT `custid` FROM `customer` WHERE `name` = '김연아');

#실습4-42

SELECT `bookname` FROM `book` order BY `price` DESC LIMIT 1;

# select 안에 select
SELECT `bookname`
FROM `book`
WHERE `price` = (SELECT MAX(price) FROM `book`);

#실습4-43

SELECT
	`name`
FROM `customer` AS a
left JOIN `order` AS b
on a.custId = b.custId
WHERE `orderid` IS NULL;


SELECT `name` FROM `customer`
WHERE `custid` NOT IN(SELECT DISTINCT `custid` FROM `order`);

#실습4-44

INSERT INTO `book` VALUES(11,'스포츠 의학','한솔의학서적',NULL);

INSERT INTO `book` SET
				`bookid` = 11,
				`bookname` = '스포츠의학',
				`publisher` = '한솔의학서적';
				


#실습4-45

UPDATE `customer` SET `address` = '대한민국 부산' WHERE `custid` = 5;
SELECT * FROM `customer`;

#실습4-46

DELETE FROM `customer` WHERE `custid` = 5;
SELECT * FROM `customer`;
