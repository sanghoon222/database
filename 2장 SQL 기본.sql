#실습 2-1, 테이블 생성, 제거
use StudyDB;

CREATE TABLE `User1` (
	`uid`	VARCHAR(10),
    `name`	VARCHAR(10),
    `hp`	CHAR(13),
    `age`	INT
);

DROP TABLE `USER1`;

#실습 2-2, 데이터 입력
INSERT INTO `User1` VALUE ('A101','김유신','010-1234-1111',25);
INSERT INTO `User1` VALUE ('A102','김춘추','010-1234-2222',23);
INSERT INTO `User1` VALUE ('A103','장보고','010-1234-3333',32);
INSERT INTO `User1` (`uid`, `name`, `age`) VALUE ('A104','강감찬',45);
INSERT INTO `User1` SET 
						`uid` ='A105',
						`name` = '김유신',
                        `hp` = '010-1234-5555',
                        `age` = 5;
                        
                        
#실습 2-3, 데이터 조회
SELECT * FROM `User1`;                    
SELECT * FROM `User1` WHERE `uid`='A101';
SELECT * FROM `User1` WHERE `name`='김춘추';
SELECT * FROM `User1` WHERE `age` < 30;
SELECT * FROM `User1` WHERE `age` >= 30;
SELECT `uid`, `name` `age` FROM `User1`;

#실습 2-4, 데이터 수정
SET SQL_SAFE_UPDATES = 0;

UPDATE `User1` SET `hp`='010-1234-4444' WHERE `uid`='A104';
UPDATE `User1` SET `age`=51 WHERE `uid`='A105';
UPDATE `User1` SET `hp`='010-1234-1001', `age`=27 WHERE `uid`='A101';
#실습 2-5, 데이터 삭제
DELETE FROM `User1` WHERE `uid`='A101';
DELETE FROM `User1` WHERE `uid`='A102' AND `age`=25;
DELETE FROM `User1` WHERE `age` >= 30;           
             
#실습 2-6, 테이블 컬럼 수정
DESC `User1`;      
ALTER TABLE `User1` ADD `gender` TINYINT;
ALTER TABLE `User1` ADD `birth` CHAR(10) AFTER `name`;
ALTER TABLE `User1` MODIFY `gender` CHAR(1);
ALTER TABLE `User1` MODIFY `age` TINYINT;
ALTER TABLE `User1` DROP `gender`;                        
#실습 2-7, 테이블 복사
show tables;
desc `User1Copy`;
select * from user1copy;

CREATE TABLE `User1Copy` LIKE `User1`;
INSERT INTO `User1Copy` SELECT * FROM `User1`;                        
#실습 2-8, 아래와 같이 테이블을 생성 후 테이터를 입력하세요                        
CREATE TABLE `Tb1User` (
	`user_id` VARCHAR(10),
    `user_name` VARCHAR(10),
    `user_hp` CHAR(13),
    `user_age` TINYINT,
    `user_addr` VARCHAR(20)
);
DESC `Tb1User`;

INSERT INTO `Tb1User` VALUES('p101', '김유신', '010-1234-1001', 25, '경남 김해시');
INSERT INTO `Tb1User` VALUES('p102', '김춘추', '010-1234-1002', 23, '경남 경주시');
INSERT INTO `Tb1User` VALUES('p103', '장보고', NULL , 31, '전남 완도군');
INSERT INTO `Tb1User` VALUES('p104', '강감찬', NULL , NULL, '서울시 중구');
INSERT INTO `Tb1User` VALUES('p105', '이순신', '010-1234-1005', 50, NULL);

SELECT * FROM `Tb1User`;
#실습 2-9, 아래 SQL을 실행하시오                      
SELECT * FROM `Tb1User`;
SELECT `user_name` FROM `Tb1User`;
SELECT `user_name`, `user_hp` FROM `Tb1User`;
SELECT * FROM `Tb1User` WHERE `user_id`='p102';
SELECT * FROM `Tb1User` WHERE `user_id`='p104' OR `user_id`='p105';
SELECT * FROM `Tb1User` WHERE `user_addr`='부산시 금정구';
SELECT * FROM `Tb1User` WHERE `user_age` > 30;
SELECT * FROM `Tb1User` WHERE `user_hp` IS NULL;
UPDATE `Tb1User` SET `user_age`=42 WHERE `user_id`='p104';
UPDATE `Tb1User` SET `user_addr`='부산시 진구' WHERE `user_id`='p105';
DELETE FROM `Tb1User` WHERE `user_id`='p103';

SELECT * FROM `Tb1Product`;
SELECT `prod_name` FROM `Tb1Product`;
SELECT `prod_name`, `prod_company`, `prod_price` FROM `Tb1Product`;
SELECT * FROM `Tb1Product` WHERE `prod_company`='LG전자';
SELECT * FROM `Tb1Product` WHERE `prod_company`='삼성전자';
UPDATE `Tb1Product` SET 
					`prod_company`='삼성전자',
                    `prod_date`='2024-01-01'
                    WHERE
                    `prod_no`=1006;