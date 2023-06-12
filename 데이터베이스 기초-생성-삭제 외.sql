-- 데이타베이스 생성
create database member;

-- 데이타베이스 선택하기
use member;

-- 테이블 만들기
create table member (
toy_id INT AUTO_INCREMENT PRIMARY KEY,
toy_name CHAR(4),
age INT );
-- 소문자는 변수
-- INT AUTO_INCREMENT PRIMARY KEY :  해당 열이 자동으로 증가하는 값을 가짐 / 레코드가 테이블에 삽입될 때마다 자동으로 이 값이 1씩 증가함
-- primary key(기본 키) : 테이블에서 기본적인 인덱스 역할 (테이블의 레코드를 고유하게 식별하는 역할) / 빠른 데이터 검색과 관계형 데이터베이스의 정규화를 지원하는 중요한 개념
-- CHAR:몇자까지 쓰겠다 / not null:빈칸은 안되!
-- BARCHAR: 2자만 쓰면 ()안 숫자가 줄어서 4에서 2로 변경됨
-- INT는 정수값


SELECT * FROM MEMBER;

-- ***데이터 입력하기 (외워야 함)
-- INSERT INTO 테이블이름 VALUES(값1,값2...)
INSERT INTO member VALUES(NULL,"토마스",20);
INSERT INTO member VALUES(NULL,"제임스",23);
INSERT INTO member VALUES(NULL,"바비인형",17);
INSERT INTO member VALUES(NULL,"뽀로로",5);
INSERT INTO member VALUES(NULL,"하츄핑",3);
INSERT INTO member VALUES(NULL,"피카츄",7);
INSERT INTO member VALUES(NULL,"마시마로",30);
INSERT INTO member VALUES(NULL,"네티",14);
INSERT INTO member VALUES(NULL,"케로로",9);

-- 데이타 지우기
-- DELETE FROM 테이블이름 WHERE 조건;
DELETE FROM member WHERE toy_id = 2;
DELETE FROM member WHERE toy_id = 9;
DELETE FROM member WHERE toy_id = 7;