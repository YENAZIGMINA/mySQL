# mySQL


![image](https://github.com/YENAZIGMINA/mySQL/assets/129706758/3577bde2-3e26-4f4f-bc82-657f88a5552a)


![image](https://github.com/YENAZIGMINA/mySQL/assets/129706758/620222f8-f049-4214-84ff-b2dc335284d6)

![image](https://github.com/YENAZIGMINA/mySQL/assets/129706758/d81068e3-eb49-496c-8bd5-ef3284b2b629)

* 데이타베이스 생성
create database member;

* 데이타베이스 선택하기
use member;

* 테이블 만들기
create table member (
toy_id INT AUTO_INCREMENT PRIMARY KEY,
toy_name CHAR(4),
age INT );


SELECT * FROM MEMBER;

*데이터 입력하기 (외워야 함)
-- INSERT INTO 테이블이름 VALUES(값1,값2...)
INSERT INTO member VALUES(NULL,"토마스",20);

* 데이타 지우기
-- DELETE FROM 테이블이름 WHERE 조건;
DELETE FROM member WHERE toy_id = 2;
