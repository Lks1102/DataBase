
# Uesers
insert INTO `users` VALUES ('user1', '김유신', '1976-01-21', 'M', '010-1101-1976', 'kimys@naver.com', 0, 1, '서울', '2022-01-10 10:50:12');
insert INTO `users` VALUES ('user2', '계백', '1975-06-11', 'M', '010-1102-1975', NULL, 1000, 1, '서울', '2022-01-10 10:50:12');
insert INTO `users` VALUES ('user3', '김춘추', '1989-05-30', 'M', '010-1103-1989', NULL, 1200, 2, '서울', '2022-01-10 10:50:12');
insert INTO `users` VALUES ('user4', '이사부', '1979-04-13', 'M', '010-2101-1979', 'leesabu@gmail.com', 2600, 1, '서울', '2022-01-10 10:50:12');
insert INTO `users` VALUES ('user5', '장보고', '1966-09-12', 'M', '010-2104-1966', 'jangbg@naver.com', 9400, 4, '대전', '2022-01-10 10:50:12');
insert INTO `users` VALUES ('user6', '선덕여왕', '1979-07-28', 'M', '010-3101-1979', 'gueen@naver.com', 1600, 2, '대전', '2022-01-10 10:50:12');
insert INTO `users` VALUES ('user7', '강감찬', '1984-06-15', 'F', '010-4101-1984', 'kang@daum.net', 800, 0, '대구', '2022-01-10 10:50:12');
insert INTO `users` VALUES ('user8', '신사임당', '1965-10-21', 'M', '010-5101-1965', 'sinsa@gmail.com', 1500, 1, '대구', '2022-01-10 10:50:12');
insert INTO `users` VALUES ('user9', '이이', '1972-11-28', 'F', '010-6101-1972', 'leelee@nate.com', 3400, 3, '부산', '2022-01-10 10:50:12');
insert INTO `users` VALUES ('user10', '허난설헌', '1992-09-07', 'F', '010-7103-1992', NULL, 4100, 3, '광주', '2022-01-10 10:50:12');



# Points insert INTO `Points` VALUES ('

insert INTO `Points` VALUES (1, 'user1', 1000, '회원가입 1000 적립', '2022-01-10 10:50:12');
insert INTO `Points` VALUES (2, 'user1', 6000, '상품구매 5% 적립', '2022-01-10 10:50:12');
insert INTO `Points` VALUES (3, 'user3', 2835, '상품구매 5% 적립', '2022-01-10 10:50:12');
insert INTO `Points` VALUES (4, 'user7', 3610, '상품구매 5% 적립', '2022-01-10 10:50:12');
insert INTO `Points` VALUES (5, 'user5', 3000, '이벤트 응모 3000 적립', '2022-01-10 10:50:12');
insert INTO `Points` VALUES (6, 'user2', 1000, '회원가입 1000 적립', '2022-01-10 10:50:12');
insert INTO `Points` VALUES (7, 'user2', 2000, '이벤트 응모 2000 적립', '2022-01-10 10:50:12');
insert INTO `Points` VALUES (8, 'user2', 2615, '상품구매 5% 적립', '2022-01-10 10:50:12');
insert INTO `Points` VALUES (9, 'user3', 1500, '이벤트 응모 1500 적립', '2022-01-10 10:50:12');
insert INTO `Points` VALUES (10, 'user6', 15840, '상품구매 2% 적립', '2022-01-10 10:50:12');


#Sellers  insert INTO `Sellers` VALUES ('

insert INTO `Sellers` VALUES (10001, '(주)다팔아', '02-201-1976', '정우성', '서울');
insert INTO `Sellers` VALUES (10002, '판매의민족', '02-102-1975', '이정재', '서울');
insert INTO `Sellers` VALUES (10003, '멋남', '031-103-1989', '원빈', '경기');
insert INTO `Sellers` VALUES (10004, '스타일살아', '032-201-1979', '이나영', '경기');
insert INTO `Sellers` VALUES (10005, '(주)삼성전자', '02-214-1966', '장동건', '서울');
insert INTO `Sellers` VALUES (10006, '복실이옷짱', '051-301-1979', '고소영', '부산');
insert INTO `Sellers` VALUES (10007, '컴퓨존(주)', '055-401-1984', '유재석', '대구');
insert INTO `Sellers` VALUES (10008, '(주)LG전자', '02-511-1965', '강호동', '서울');
insert INTO `Sellers` VALUES (10009, '굿바디스포츠', '070-6101-1972', '조인성', '부산');
insert INTO `Sellers` VALUES (10010, '누리푸드', '051-710-1992', '강동원', '부산');



# Categories  insert INTO `Categories` VALUES (

insert INTO `Categories` VALUES (10, '여성의류패션');
insert INTO `Categories` VALUES (11, '남성의류패션');
insert INTO `Categories` VALUES (12, '식품·생필품');
insert INTO `Categories` VALUES (13, '취미·반려견');
insert INTO `Categories` VALUES (14, '홈·문구');
insert INTO `Categories` VALUES (15, '자동차·공구');
insert INTO `Categories` VALUES (16, '스포츠·건강');
insert INTO `Categories` VALUES (17, '컴퓨터·가전·디지털');
insert INTO `Categories` VALUES (18, '여행');
insert INTO `Categories` VALUES (19, '도서');



# Products  insert INTO `Products` VALUES (

insert INTO `Products` VALUES (100101, 11, 10003, '반팔티 L~2XL', 869, 25000, 132, 20);
insert INTO `Products` VALUES (100110, 10, 10004, '트레이닝 통바지', 1602, 38000, 398, 15);
insert INTO `Products` VALUES (110101, 10, 10003, '신상 여성운동화', 160, 76000, 40, 5);
insert INTO `Products` VALUES (120101, 12, 10010, '암소 1등급 구이셋트 1.2kg', NULL, 150000, 87, 15);
insert INTO `Products` VALUES (120103, 12, 10010, '바로구이 부채살 250g', NULL, 21000, 61, 10);
insert INTO `Products` VALUES (130101, 13, 10006, '[ANF] 식스프리 강아지 사료', 58, 56000, 142, 0);
insert INTO `Products` VALUES (130112, 13, 10006, '중대형 사계절 강아지옷', 120, 15000, 80, 0);
insert INTO `Products` VALUES (141001, 14, 10001, '라떼 2인 소파/방수 패브릭', null, 320000, 42, 0);
insert INTO `Products` VALUES (170115, 17, 10007, '지포스 3080 그래픽카드', 28, 900000, 12, 12);
insert INTO `Products` VALUES (160103, 16, 10009, '치닝디핑 33BR 철봉', 32, 120000, 28, 0);


# Orders insert INTO `Orders` VALUES (

insert INTO `Orders` VALUES ('22010210001', 'user2', 52300, '서울시 마포구 121', 1, '2022-01-10 10:50:12');
insert INTO `Orders` VALUES ('22010210002', 'user3', 56700, '서울시 강남구 21-1', 1, '2022-01-10 10:50:12');
insert INTO `Orders` VALUES ('22010210010', 'user4', 72200, '서울시 강서구 큰대로 38', 2, '2022-01-10 10:50:12');
insert INTO `Orders` VALUES ('22010310001', 'user5', 127000, '경기도 광주시 초월로 21', 1, '2022-01-10 10:50:12');
insert INTO `Orders` VALUES ('22010310100', 'user1', 120000, '경기도 수원시 120번지', 0, '2022-01-10 10:50:12');
insert INTO `Orders` VALUES ('22010410101', 'user6', 792000, '부산시 남구 21-1', 2, '2022-01-10 10:50:12');
insert INTO `Orders` VALUES ('22010510021', 'user7', 92200, '부산시 부산진구 56 10층', 4, '2022-01-10 10:50:12');
insert INTO `Orders` VALUES ('22010510027', 'user8', 112000, '대구시 팔달로 19', 3, '2022-01-10 10:50:12');
insert INTO `Orders` VALUES ('22010510031', 'user10', 792000, '대전시 한밭로 24-1', 2, '2022-01-10 10:50:12');
insert INTO `Orders` VALUES ('22010710110', 'user9', 94500, '광주시 충열로 11', 1, '2022-01-10 10:50:12');



# OrderItems  insert INTO `OrderItems` VALUES (

insert INTO `OrderItems` VALUES (1, '22010210001', 100110, 38000, 15, 1);
insert INTO `OrderItems` VALUES (2, '22010210001', 100101, 25000, 20, 1);
insert INTO `OrderItems` VALUES (3, '22010210002', 120103, 21000, 10, 3);
insert INTO `OrderItems` VALUES (4, '22010310001', 130112, 15000, 0, 1);
insert INTO `OrderItems` VALUES (5, '22010310001', 130101, 56000, 0, 2);
insert INTO `OrderItems` VALUES (6, '22010210010', 110101, 76000, 5, 1);
insert INTO `OrderItems` VALUES (7, '22010310100', 160103, 120000, 0, 1);
insert INTO `OrderItems` VALUES (8, '22010410101', 170115, 900000, 12, 1);
insert INTO `OrderItems` VALUES (9, '22010510021', 110101, 76000, 5, 1);
insert INTO `OrderItems` VALUES (10, '22010510027', 130101, 56000, 0, 2);
insert INTO `OrderItems` VALUES (11, '22010510021', 100101, 25000, 20, 1);
insert INTO `OrderItems` VALUES (12, '22010510031', 170115, 900000, 12, 1);
insert INTO `OrderItems` VALUES (13, '22010710110', 120103, 21000, 10, 5);


# Carts insert INTO `Carts` VALUES (


insert INTO `Carts` VALUES (1, 'user1', 100101, 1, '2022-01-10 10:50:12');
insert INTO `Carts` VALUES (2, 'user1', 100110, 2, '2022-01-10 10:50:12');
insert INTO `Carts` VALUES (3, 'user3', 120103, 1, '2022-01-10 10:50:12');
insert INTO `Carts` VALUES (4, 'user4', 130112, 1, '2022-01-10 10:50:12');
insert INTO `Carts` VALUES (5, 'user5', 130101, 1, '2022-01-10 10:50:12');
insert INTO `Carts` VALUES (6, 'user2', 110101, 3, '2022-01-10 10:50:12');
insert INTO `Carts` VALUES (7, 'user2', 160103, 1, '2022-01-10 10:50:12');
insert INTO `Carts` VALUES (8, 'user2', 170115, 1, '2022-01-10 10:50:12');
insert INTO `Carts` VALUES (9, 'user3', 110101, 1, '2022-01-10 10:50:12');
insert INTO `Carts` VALUES (10, 'user6', 130101, 1, '2022-01-10 10:50:12');


# 문제 1

SELECT b.`userName` AS 고객이름,
		 c.`prodName` AS 제품명,
		 a.`cartprodcount` AS 상품수량 
FROM carts 		AS a
JOIN users 		AS b ON a.userId = b.userId
JOIN products 	AS c ON a.prodNo = c.prodNo
WHERE a.cartProdCount >= 2;


# 문제 2

SELECT 
	a.`prodNo`			AS 상품번호,
	c.`cateName` 		AS 카테고리명,
	a.`prodName` 		AS 상품명,
	a.`prodprice` 		AS 상품가격,
	b.`sellerManager` AS 판매자이름,
	b.`sellerPhone` 	AS  판매자연락처
FROM products		AS a
JOIN sellers 		AS b ON a.sellerNo = b.sellerNo
JOIN categories	AS c ON a.cateNo = c.cateNo;

# 문제 3 모든 고객의 ID, 이름, 휴대폰, 현재포인트, 적립포인트 총합을 조회하시오. 단 적립포인트 내역이 없으면 0으로 출력


SELECT
    a.`userId` 	AS 유저ID,
    a.`userName` 	AS 이름,
    a.`userHp` 	AS 휴대폰,
    a.`userPoint` AS 현재포인트,
    COALESCE(SUM(b.`point`), 0) AS 적립포인트총합
FROM users AS a
LEFT JOIN points AS b ON a.userId = b.userId
GROUP BY a.userId;

SELECT 
		a.userId		AS 유저ID,
		a.userName	AS 이름,
		a.userHp		AS 휴대폰,
		a.userPoint	AS 현재포인트,
		IF(SUM(`point`) IS NULL, 0, SUM(`point`)) AS 적립포인트
	# IF (       조건,			참,   거짓)
FROM users 	AS a
LEFT JOIN points AS b ON a.userId = b.userId
GROUP BY a.userId;




# 문제 4

SELECT 
		a.`orderNo`  AS 주문번호,
		b.`userid`	  AS 주문자ID,
		b.`userName` AS 고객명,
		a.`orderTotalPrice` AS 총주문금액,
		a.`orderDate`	AS 주문일자 
FROM orders AS a
JOIN users	AS b ON a.userId = b.userId
WHERE a.`orderTotalPrice` >= 100000
ORDER by a.orderTotalPrice  DESC;


# 문제 5 모든 주문의 주문번호,주문자ID,고객명,상품명,주문일자 조회
#주문번호는 중복없이 상품명은 구분자 ,로 나눌것

SELECT
		a.`orderNo` AS 주문번호,
		b.`userId` AS 주문자ID,
		b.`userName` AS 고객명,
		GROUP_CONCAT(d.`prodName` SEPARATOR ',') AS 상품명,
		a.`orderdate` AS 주문일자
FROM orders AS a
JOIN users	AS b on a.userId = b.userId
JOIN orderitems AS c ON a.orderNo=c.orderNo
JOIN products AS d ON c.prodNo = d.prodNo
GROUP BY a.`orderNo`, b.`userId`, b.`userName`, a.`orderdate`;


# 문제 6 모든 상품의 상품번호,상품명,상품가격,할인율, 할인된 가격 조회

SELECT
		a.`prodNo` AS 상품번호,
		a.`prodName` AS 상품명,
		a.`prodPrice` AS 상품가격,
		a.`prodDiscount` AS 할인율,
		FLOOR(a.`prodPrice` * (1 - a.`prodDiscount` / 100)) AS 할인가
FROM products 	 AS a;

SELECT DISTINCT
		a.`prodNo` AS 상품번호,
		a.`prodName` AS 상품명,
		a.`prodPrice` AS 상품가격,
		a.`prodDiscount` AS 할인율,
		FLOOR(a.`prodPrice` * (1 - a.`prodDiscount` / 100)) AS 할인가
FROM products 	 AS a
JOIN orderitems AS b ON a.prodNo = b.prodNo
JOIN sellers 	 AS c ON a.sellerNo = c.sellerNo;


#문제 7 고소영이 판매하는 모든 상품의 상품번호,상품명,가격,재고수량,판매자이름조회

SELECT
		b.prodNo AS 상품번호,
		b.prodName AS 상품명,
		b.prodPrice AS 상품가격,
		b.prodStock AS 재고수량,
		a.sellerManager AS 판매자이름
FROM sellers  AS a
JOIN products AS b ON a.sellerNo = b.sellerNo
WHERE a.`sellerManager` = '고소영';


#문제 8 아직 상품을 판매하지 않은 판매자의 
#판매자번호, 판매자상호, 판매자 이름,판매자 연락처조회

SELECT
		a.`sellerNo` AS 판매자번호,
		`sellerBizName` AS 판매자상호,
		`sellerManager` AS 판매자이름,
		`sellerPhone` AS 판매자연락처
FROM sellers	AS a
LEFT JOIN products 	AS b ON a.sellerNo = b.sellerNo
WHERE `prodNo` IS NULL;


# 문제 9  모든 주문 상세내역 중 개별 상품 가격과 개수 그리고 할인율이 적용된 최종 총합을 구하고
#	주문 별 총합을 구해서 주문별 총합이 10만원 이상 그리고 큰 금액 순으로 주문번호 최종총합을 조회하시오

SELECT
    a.`orderNo` AS 주문번호,
    SUM(c.`prodPrice` * c.prodStock * (1 - c.prodDiscount)) AS 최종총합
FROM orders 	 AS a
JOIN orderitems AS b ON a.orderNo = b.orderNo
JOIN products 	 AS c ON b.prodNo = c.prodNo
GROUP BY a.`orderNo`
HAVING
    SUM(c.`prodPrice` * c.prodStock * (1 - c.prodDiscount)) >= 100000
ORDER BY 최종총합 DESC;


SELECT
	`orderNo`,
	SUM(`할인가`) AS 최종총합
FROM
(SELECT
		*,
		FLOOR(`itemPrice` * (1 - `itemDiscount` / 100) * `itemcount`) AS 할인가
FROM orderitems
)AS a
GROUP BY `orderNo`
HAVING `최종총합` >= 100000
ORDER BY `최종총합` DESC;


SELECT
	`orderNo` AS 주문번호,
	SUM(FLOOR(`itemPrice` * (1 - `itemDiscount` / 100) * `itemcount`)) AS 최종총합
FROM orderitems
GROUP BY `orderNo`
HAVING `최종총합` >= 100000
ORDER BY `최종총합` DESC;



#문제 10 장보고 고객이 주문했던 모든 상품명을 고객명, 상품명으로 조회 단 상품명은 중복안됨, 상품명은 구분자,로 나열



SELECT
		a.userName AS 고객명,
		GROUP_CONCAT(d.`prodName` SEPARATOR ', ') AS 상품명
FROM users  	 AS a
JOIN orders 	 AS b ON a.userId = b.userId 
JOIN orderitems AS c ON b.orderNo = c.orderNo
JOIN products 	 AS d ON c.prodNo = d.prodNo
where username = '장보고';



