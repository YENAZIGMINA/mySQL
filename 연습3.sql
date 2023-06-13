use member;

CREATE TABLE people(
person_id INT,
person_name varchar(10),
age INT,
bithday DATE
);

desc people;

-- 테이블삭제
-- DROP TABLE people;

-- 데이터 삽입
INSERT INTO people VALUES(1, '김미미', 18, '2023-06-13');
INSERT INTO people (person_name,age) VALUES('김일동',13);
INSERT INTO people VALUES (3,'김이동',22,'1998-02-08'),
						  (4,'김삼동',19,'2000-10-24'),
                          (5,'김오동',30,'1989-08-14');

SELECT * from people;

# 테이블에 생성시 제약조건 넣기
CREATE TABLE people_1(
person_id INT AUTO_INCREMENT PRIMARY KEY,
person_name varchar(10) NOT NULL,
nickname VARCHAR(10) UNIQUE NOT NULL,
age INT UNSIGNED,
bithday DATE
);

INSERT INTO people_1 (person_name,nickname,age) VALUES ('샐리','토마토',2);

SELECT * FROM people_1;

-- AUTO_INCREMENT : 새로운 행 생성마다 자동으로 1씩 증가하는 값이 들어감
-- PRIMARY KEY : 중복 입력 불가, null(빈값)불가, *테이블마다 하나만 가능
-- UNIQUE : 중복 입력 불가
-- NOT NULL : 빈값 입력 불가
-- INT : 정수
-- UNSIGNED : 숫자 입력시 양수만 가능