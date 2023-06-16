# 날짜 : 2023/06/16
# 이름 : 이규석
# 내용 : 3.데이터 베이스 관리

#실습 3-1 관리자 추가
CREATE DATABASE `TestDB`;
CREATE USER 'tester'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON TestDB.* TO 'tester'@'%';
FLUSH PRIVILEGES;

#실습 3=-2 관리자 정보수정 및 삭제
#password 변경
#set password for '아이디'@'%'=password('newPassWord');
#계정 삭제
#Drop user 'ID'@'%';
#FLUSH privileges < 즉시반영

