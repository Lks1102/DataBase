# 날짜 : 2023/06/16
# 이름 : 이규석
# 내용 : 4.SQL고급 실습하기

#실습 4-1

CREATE TABLE `member` (
	`uid`		VARCHAR(10) NOT NULL PRIMARY KEY,
	`name`	VARCHAR(10) NOT NULL,
	`hp`		CHAR(13) NOT NULL,
	`pos` 	VARCHAR(10) NOT NULL,
	`dep` 	INT,
	`rdate`	DATETIME NOT NULL
);

CREATE TABLE `Department` (
	`depNo`		INT NOT NULL PRIMARY KEY,
	`NAME`		VARCHAR(10) NOT NULL,
	`tel`			CHAR(10) NOT NULL
);

CREATE TABLE `Sales` (
	`seq`		INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`uid`		VARCHAR(10) NOT NULL,
	`year`	YEAR NOT NULL,
	`MONTH`	INT NOT NULL,
	`sale`	INT NOT NULL
);

#실습 4-2
INSERT INTO Member VALUES ('a101','박혁거세','010-1234-1001','부장',101,'2023-06-16 16:39:48');
INSERT INTO Member VALUES ('a102','김유신','010-1234-1002','차장',101,'2023-06-16 16:39:48');
INSERT INTO Member VALUES ('a103','김춘추','010-1234-1003','사원',101,'2023-06-16 16:39:48');
INSERT INTO Member VALUES ('a104','장보고','010-1234-1004','대리',102,'2023-06-16 16:39:48');
INSERT INTO Member VALUES ('a105','강감찬','010-1234-1005','과장',102,'2023-06-16 16:39:48');
INSERT INTO Member VALUES ('a106','이성계','010-1234-1006','차장',103,'2023-06-16 16:39:48');
INSERT INTO Member VALUES ('a107','정철','010-1234-1007','차장',103,'2023-06-16 16:39:48');
INSERT INTO Member VALUES ('a108','이순신','010-1234-1008','부장',104,'2023-06-16 16:39:48');
INSERT INTO Member VALUES ('a109','허균','010-1234-1009','부장',104,'2023-06-16 16:39:48');
INSERT INTO Member VALUES ('a110','정약용','010-1234-1010','사원',105,'2023-06-16 16:39:48');
INSERT INTO Member VALUES ('a111','박지원','010-1234-1011','사원',105,'2023-06-16 16:39:48');

INSERT INTO Sales VALUES (1, 'a101', 2018, 1, 98100);
INSERT INTO Sales VALUES (2, 'a102', 2018, 1, 136000);
INSERT INTO Sales VALUES (3, 'a103', 2018, 1, 80100);
INSERT INTO Sales VALUES (4, 'a104', 2018, 1, 78000);
INSERT INTO Sales VALUES (5, 'a105', 2018, 1, 93000);

INSERT INTO Sales VALUES (6, 'a101', 2018, 2, 23500);
INSERT INTO Sales VALUES (7, 'a102', 2018, 2, 126000);
INSERT INTO Sales VALUES (8, 'a103', 2018, 2, 18500);
INSERT INTO Sales VALUES (9, 'a105', 2018, 2, 19000);
INSERT INTO Sales VALUES (10, 'a106', 2018, 2, 53000);

INSERT INTO Sales VALUES (11, 'a101', 2019, 1, 24000);
INSERT INTO Sales VALUES (12, 'a102', 2019, 1, 109000);
INSERT INTO Sales VALUES (13, 'a103', 2019, 1, 101000);
INSERT INTO Sales VALUES (14, 'a104', 2019, 1, 53500);
INSERT INTO Sales VALUES (15, 'a107', 2019, 1, 24000);

INSERT INTO Sales VALUES (16, 'a102', 2019, 2, 160000);
INSERT INTO Sales VALUES (17, 'a103', 2019, 2, 101000);
INSERT INTO Sales VALUES (18, 'a104', 2019, 2, 43000);
INSERT INTO Sales VALUES (19, 'a105', 2019, 2, 24000);
INSERT INTO Sales VALUES (20, 'a106', 2019, 2, 109000);

INSERT INTO Sales VALUES (21, 'a102', 2020, 1, 201000);
INSERT INTO Sales VALUES (22, 'a104', 2020, 1, 63000);
INSERT INTO Sales VALUES (23, 'a105', 2020, 1, 74000);
INSERT INTO Sales VALUES (24, 'a106', 2020, 1, 122000);
INSERT INTO Sales VALUES (25, 'a107', 2020, 1, 111000);

INSERT INTO Sales VALUES (26, 'a102', 2020, 2, 120000);
INSERT INTO Sales VALUES (27, 'a103', 2020, 2, 93000);
INSERT INTO Sales VALUES (28, 'a104', 2020, 2, 84000);
INSERT INTO Sales VALUES (29, 'a105', 2020, 2, 180000);
INSERT INTO Sales VALUES (30, 'a106', 2020, 2, 76000);
INSERT INTO Department VALUES (101,'영업1부','051-512-1001');
INSERT INTO Department VALUES (102,'영업2부','051-512-1002');
INSERT INTO Department VALUES (103,'영업3부','051-512-1003');
INSERT INTO Department VALUES (104,'영업4부','051-512-1004');
INSERT INTO Department VALUES (105,'영업5부','051-512-1005');
INSERT INTO Department VALUES (106,'영업지원부','051-512-1006');
INSERT INTO Department VALUES (107,'인사부','051-512-1007');

#실습 4-3

SELECT * FROM `Member` WHERE `name`='김유신';
SELECT * FROM `Member` WHERE `pos`='차장' AND dep=101;
SELECT * FROM `Member` WHERE `pos`='차장' OR dep=101;
SELECT * FROM `Member` WHERE `name` != '김춘추';
SELECT * FROM `Member` WHERE `name` <> '김춘추';
SELECT * FROM `Member` WHERE `pos`='사원' OR `pos`='대리';
SELECT * FROM `Member` WHERE `pos` IN('사원', '대리');
SELECT * FROM `Member` WHERE `dep` IN(101, 102, 103);
SELECT * FROM `Member` WHERE `name` LIKE '%신';
SELECT * FROM `Member` WHERE `name` LIKE '김%';
SELECT * FROM `Member` WHERE `name` LIKE '김_ _';
SELECT * FROM `Member` WHERE `name` LIKE '_성_';
SELECT * FROM `Member` WHERE `name` LIKE '정_';
SELECT * FROM `Sales` WHERE `sale` > 50000;
SELECT * FROM `Sales` WHERE `sale` >= 50000 AND `sale` < 100000 AND `month`=1;
SELECT * FROM `Sales` WHERE `sale` BETWEEN 50000 AND 100000;
SELECT * FROM `Sales` WHERE `sale` NOT BETWEEN 50000 AND 100000;
SELECT * FROM `Sales` WHERE `year` IN(2020);
SELECT * FROM `Sales` WHERE `month` IN(1, 2);

#실습 4-4

#실습 4-5
#select * from `sales` limit 3; / or limit x, y

#실습 4-6 (내장함수 사용)


SELECT SUM(sale) AS `합계` FROM `Sales`;
SELECT AVG(sale) AS `평균` FROM `Sales`;
SELECT MAX(sale) AS `최대값` FROM `Sales`;
SELECT MIN(sale) AS `최소값` FROM `Sales`;
SELECT COUNT(sale) AS `갯수` FROM `Sales`;
SELECT COUNT(*) AS `갯수` FROM `Sales`;
INSERT INTO `Member` VALUES ('b101', '을지문덕', '010-5555-1234', '사장', 107, NOW());


#실습4-7
SELECT 
	SUM(`sale`) AS `총합`
FROM 
	`sales`
WHERE
	`year` = 2018 AND `month` = 1;

#실습4-8
SELECT 
	SUM(`sale`) AS `총합`,
	AVG(`sale`) AS `평균`
FROM `sales`
WHERE 
	`year` = 2019 
AND 
	`month` = 2 
AND 
	`sale` >= 50000;
	
#실습 4-9 2020년 전체 매출 가운데 최저,최고 매출을 구하시오.

#실습 4-10
SELECT `uid` FROM `sales` GROUP BY `uid`;
SELECT `year` FROM `sales` GROUP BY `year`;
SELECT `uid`,`year` FROM `sales` GROUP BY `uid`, `year`;


SELECT
	`uid`, 
	`year`, 
SUM(`sale`) AS `합계`
FROM 
	`sales`
GROUP BY 
	`uid`,`year`;



SELECT 
	`uid`,
	`year`,
	SUM(`sale`) AS `합계`
FROM
	`sales`
WHERE
	`sale` >= 50000
GROUP BY
	`uid`, `year`
ORDER BY
	`합계` DESC;

#실습 4-11 (Having group결과에 대한 조건)
SELECT 
	`uid`,
	`year`,
	SUM(`sale`) AS `합계`
FROM
	`sales`
WHERE
	`sale` >= 50000
GROUP BY
	`uid`, `year`
HAVING
	`합계` >= 200000
ORDER BY
	`합계` DESC;
	
#실습 4-12
CREATE TABLE `sales2` LIKE `sales`;
INSERT INTO `sales2` SELECT * FROM `sales`;
UPDATE `sales2` SET `year` = `year` + 3;

SELECT
	`uid`,
	`year`,
	`sale`
FROM `sales2`
UNION 
SELECT
	`uid`,
	`year`,
	`sale`
FROM `sales`;

SELECT * FROM `sales` 
UNION 
SELECT * FROM `sales2`;

SELECT * FROM `sales` 
UNION 
SELECT * FROM `sales2`;


SELECT `uid`, `year`, SUM(sale) AS `합계`
 FROM `Sales`
 GROUP BY `uid`, `year`
 UNION
 SELECT `uid`, `year`, SUM(sale) AS `합계`
 FROM `Sales2`
 GROUP BY `uid`, `year`
 ORDER BY `year` ASC, `합계` DESC;
	
	

#실습 4-13
SELECT * FROM `sales`
INNER JOIN `member`
ON `sales`.uid = `member`.uid;

SELECT * FROM `Member` 
INNER JOIN `Department` 
ON `Member`.dep = `Department`.depNo;

SELECT * FROM `sales` 
AS a JOIN `member` AS b 
ON a.uid = b.uid;

SELECT * FROM `Member` AS a, `Department` AS b 
WHERE a.dep = b.depNo;

SELECT * FROM `sales` AS a, `member` AS b WHERE a.uid = b.uid;

SELECT * FROM `member` AS a, `department` AS b WHERE a.dep = b.depNo;

SELECT * FROM `sales` AS a
JOIN `member` AS b
ON a.uid = b.uid;

SELECT 
	a.`seq`, 
	a.`uid`, 
	a.`sale`, 
	b.`name`,
	b.`pos`
FROM `sales` AS a
JOIN `member` AS b 
USING(`uid`);

SELECT 
	a.`seq`,
	a.`uid`,
	`sale`, 
	`name`, 
	`pos` 
FROM `Sales` AS a
JOIN `Member` AS b ON a.`uid` = b.`uid`
WHERE `sale` >= 100000;


SELECT * FROM `Sales` AS a
JOIN `Member` AS b ON a.uid = b.uid
JOIN `Department` AS c ON b.dep = c.depNo;

SELECT a.`seq`, a.`uid`, a.`sale`, b.`name`, b.`pos`, c.`name` FROM `Sales` AS a
JOIN `Member` AS b ON a.uid = b.uid
JOIN `Department` AS c ON b.dep = c.depNo;


 
#실습 4-14

INSERT INTO `sales` (`uid`,`year`,`month`,`sale`)
	VALUES ('p101',2018,1,35000);

SELECT * FROM `sales` AS a LEFT JOIN `member` AS b ON a.uid = b.uid;

SELECT * FROM `Sales` AS a RIGHT JOIN `Member` AS b ON a.uid = b.uid;

SELECT a.seq, a.uid, `sale`, `name`, `pos` FROM Sales AS a
 LEFT JOIN Member AS b USING(uid);

#실습 4-15 모든직원의 아이디, 이름, 직급, 부서명 조회

SELECT 
	a.`uid`,
	a.`name`,
	a.`pos`,
	b.`name` 
FROM `member` AS a
JOIN `department` AS b
ON a.dep = b.depNo;


#실습 4-16 '김유신' 직원의 2019년도 매출의 합 조회

SELECT
	SUM(`sale`) AS `매출합`
FROM `sales` AS a
JOIN `member` AS b
ON a.uid = b.uid
WHERE `name` = '김유신' AND `year` = 2019
GROUP BY `year`;


#실습 4-17 2019년 50,000이상 매출에 대해 직원별 매출의 합이 100,000원 이상인 직원의
#이름, 부서명, 직급,년도,매출의 합을 조회 단, 매출 합이 큰 순서대로 정렬

SELECT
	b.`name` AS `이름`,
	c.`NAME` AS `부서명`,
	`pos` AS `직급`,
	`year` AS `년도`,
	SUM(sale) AS `매출 총액`
FROM `sales` AS a
JOIN `member` AS b on a.uid = b.uid
JOIN `department` AS c on b.dep = c.depNo
WHERE `year` = 2019 AND `sale` >= 50000
GROUP BY a.uid
HAVING	`매출 총액` >= 100000
ORDER BY `매출 총액` DESC;

