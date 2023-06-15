use member;

drop table member;

drop database member;

create database member;

use member;

CREATE TABLE member_table (
seq INT NOT NULL AUTO_INCREMENT,
mb_id VARCHAR(20) not null unique,
mb_pw VARCHAR(50) not null,
mb_name VARCHAR(10) not null,
address VARCHAR(100),
phone1 VARCHAR(3),
phone2 VARCHAR(10),
height int,
salary int,
month int,
PRIMARY KEY(seq)
);

insert into member.member_table
values(null,"220729_1","12345","박일자","부산시 진구 부전동 221-1","051","11111111",163,3200000,7),
  (null,"220729_2","22145","김하자","경상북도 영주시 부석면 영부로120번길 59","054","22222222",175,4500000,2),
  (null,"220729_3","78521","강꾸준","강원도 인제군 남면 신남로58번길 28","033","33333333",180,4000000,9),
  (null,"220729_4","98745","정열심","경상북도 청송군 파천면 중평병부길 128","054","44444444",164,3000000,6),
  (null,"220729_5","45216","이합격","전라북도 정읍시 수성1로 32(수성동) ","063","55555555",183,2750000,13),
  (null,"220729_6","78522","배밀자","전라남도 고흥군 도화면 구암로 3","061","66666666",165,3200000,5),
  (null,"220729_7","78954","도민규","경상남도 진주시 수곡면 원창길 82",null,null,177,3000000,3),
  (null,"220729_8","22145","민윤기","경상남도 진주시 집현면 불너머길 74","055","88888888",185,4000000,8),
  (null,"220729_9","78541","박지민","경상북도 포항시 북구 죽장면 죽장로 1577-30","054","99999999",182,2700000,16),
  (null,"220729_10","41253","김태형","강원도 강릉시 왕산면 방터길 53-70 ","033","12345678",175,3200000,9),
  (null,"220729_11","45871","김석진","충청남도 서천군 화양면 화한로61번길 21","041","11223344",165,4000000,10),
  (null,"220729_12","78541","박이자","충청북도 옥천군 청산면 청산관기로 549-2","043","99887766",165,3100000,3);


desc member_table;

SELECT * FROM member_table;

-- 월급이 400만원 이하의 사람만 검색 // WHERE(조건)
SELECT * FROM member_table WHERE salary<4000000;

-- 월급이 200만원 이상이고 300만원 이하의 사람만 검색
SELECT * FROM member_table WHERE salary>=2000000 AND salary<=3000000;

-- 월급이 200만원 이상의 사람만 검색
SELECT * FROM member_table WHERE salary>=2000000;

-- 월급이 500만원 이하의 사람만 검색
SELECT * FROM member_table WHERE salary<=5000000;

-- 사람이름을 기준으로 정렬하기
SELECT * FROM member_table ORDER BY mb_name DESC; # DESC : 내림차순
SELECT * FROM member_table ORDER BY mb_name ASC;  # ASC : 오름차순

-- 월급이 가장 많은 사람순 정렬
SELECT * FROM member_table ORDER BY salary DESC;

-- 키가 165이상인 사람 > 키순대로 정렬 > 이름 ㄱㄴㄷ 순으로
SELECT * FROM member_table WHERE height>=165 ORDER BY height DESC, mb_name ASC;

-- 쿼리문의 순서 (구해오리)
-- SELECT 열이름 / (*은 전체)
-- FROM 테이블이름
-- WHERE 조건문
-- GROUP BY 열이름
-- HAVING 조건문
-- ORDER BY 열이름
-- LIMIT 숫자

-- LIMIT 출력하는 개수를 제한
SELECT * FROM member_table LIMIT 3;

-- LIMIT 2,3 : 2이후부터 3개 출력
SELECT * FROM member_table LIMIT 2,3;

SELECT * FROM member_table WHERE mb_name LIKE '박%';  # %는 뒤에 어떤 글자가 와도 된다

SELECT * FROM member_table WHERE mb_name LIKE '박%자'; # LIKE : 패턴매칭

-- IN ('') 안에 작성한 결과값만 도출
SELECT * FROM member_table WHERE mb_name IN('강꾸준','박일자') ORDER BY mb_name ASC;

-- 지역이 경상북도 또는 충청북도인 행을 선택하세요
SELECT * FROM member_table WHERE address LIKE '경상북도%' OR  address LIKE '충청북도%';

-- 수정하기 UPDATE
-- 이름이 이합격인 사람의 주소를 '경상남도 경성대학교'로 바꿔라
UPDATE member_table SET address='경상남도 경성대학교' WHERE mb_name="이합격";