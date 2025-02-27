#실습  3-1
CREATE TABLE `User2` (
	`uid`	VARCHAR(10) PRIMARY KEY,
    `name`	VARCHAR(10),
    `birth` CHAR(10),
    `addr`	VARCHAR(50)
);

DROP TABLE `User2`;



#실습 3-2
INSERT INTO `User2` VALUES ('A101', '김유신', '1968-05-09', '경남 김해시');
INSERT INTO `User2` VALUES ('A102', '김춘추', '1972-11-23', '경남 경주시');
INSERT INTO `User2` VALUES ('A103', '장보고', '1978-03-01', '전남 완도군');
INSERT INTO `User2` VALUES ('A104', '강감찬', '1979-08-16', '서울시 관악구');
INSERT INTO `User2` VALUES ('A105', '이순신', '1981-05-23', '부산 진구');

#실습 3-3
CREATE TABLE `User3` (
	`uid`	VARCHAR(10) PRIMARY KEY,
    `name`	VARCHAR(10),
    `birth`	CHAR(10),
    `hp`	CHAR(13) UNIQUE,
    `addr`	VARCHAR(50)
);

#실습 3-4
INSERT INTO `User3` VALUES ('A101', '김유신','1968-05-09', '010-1234-1001', '경남 김해시');
INSERT INTO `User3` VALUES ('A102', '김춘추', '1972-11-23', '010-1234-1002', '경남 경주시');
INSERT INTO `User3` VALUES ('A103', '장보고', '1978-03-01', '010-1234-1003', '전남 완도군');
INSERT INTO `User3` VALUES ('A104', '강감찬', '1979-08-16', '010-1234-1004', '서울시 관악구');
INSERT INTO `User3` VALUES ('A105', '이순신', '1981-05-23', '010-1234-1005', '부산시 진구');
INSERT INTO `User3` VALUES ('A106', '정약용', '1981-05-23', null, '부산시 진구');

#실습 3-5
CREATE TABLE `Parent` (
	`pid`	VARCHAR(10) PRIMARY KEY,
    `name`	VARCHAR(10),
    `birth`	CHAR(10),
    `addr`	VARCHAR(100)
);

CREATE TABLE `Child` (
	`cid`	VARCHAR(10)	PRIMARY KEY,
    `name`	VARCHAR(10),
    `hp`	CHAR(13) UNIQUE,
    `parent`	VARCHAR(10),
    FOREIGN KEY (`parent`) REFERENCES `Parent` (`pid`)
);
DESC `Child`;
#실습 3-6
INSERT INTO `Parent` VALUES('P101', '김유신', '1968-05-09', '경남 김해시');
INSERT INTO `Parent` VALUES('P102', '김춘추', '1992-11-23', '경남 경주시');
INSERT INTO `Parent` VALUES('P103', '장보고', '1968-03-01', '전남 완도시');
INSERT INTO `Parent` VALUES('P104', '강감찬', '1968-08-16', '서울시 관악구');
INSERT INTO `Parent` VALUES('P105', '이순신', '1968-05-23', '부산시 진구');

INSERT INTO `Child` VALUES('C101', '김철수', '010-1234-1001', 'P101');
INSERT INTO `Child` VALUES('C102', '김영희', '010-1234-1002', 'P101');
INSERT INTO `Child` VALUES('C103', '강철수', '010-1234-1003', 'P103');
INSERT INTO `Child` VALUES('C104', '이철수', '010-1234-1004', 'P105');
INSERT INTO `Child` VALUES('C105', '최철수', '010-1234-1005', 'P107');

#실습 3-7

CREATE TABLE `User4` (
	`uid`	VARCHAR(10) PRIMARY KEY,
    `name`	VARCHAR(10)	NOT NULL,
    `gender`	CHAR(1),
    `age`	INT DEFAULT 1,
    `hp`	CHAR(13) UNIQUE,
    `addr`	VARCHAR(20)
);
DESC `User4`;
SELECT * FROM `User4`;
#실습 3-8

INSERT INTO `User4` VALUES('A101', '김유신', 'M', 25, '010-1234-1111', '경남 김해시');
INSERT INTO `User4` VALUES('A102', '김춘추', 'M', 23, '010-1234-2222', '경남 경주시');
INSERT INTO `User4` VALUES('A103', '장보고', 'M', 35, '010-1234-3333', '전남 완도시');
INSERT INTO `User4` VALUES('A104', '강감찬', 'M', 42, '010-1234-4444', '서울시 관악구');
INSERT INTO `User4` VALUES('A105', '이순신', 'M', NULL, '010-1234-5555', '부산시 진구');
INSERT INTO `User4` VALUES('A106', '신사임당', 'F', 32, NULL, '강릉시');
INSERT INTO `User4` VALUES('A107', '허난설현', 'F', 27, NULL, '경기도 광주시');

#실습 3-9

CREATE TABLE `User5` (
	`seq`	INT PRIMARY KEY AUTO_INCREMENT,
    `name`	VARCHAR(10) NOT NULL,
    `gender`	CHAR(1) CHECK (`gender` IN ('M', 'F')),
    `age`	INT DEFAULT 1 CHECK (`age` > 0 AND `age` < 100),
    `addr`	VARCHAR(20)
);
DROP TABLE `User5`;
DESC `User5`;


#실습 3-10

INSERT INTO `User5` VALUES (NULL, '김유신', 'M', 25, '경남 김해시');
INSERT INTO `User5` VALUES (NULL,'김춘추', 'M', 23, '경남 경주시');
INSERT INTO `User5` VALUES (NULL,'장보고', 'M', 35, '전남 완도시');
INSERT INTO `User5` VALUES (NULL,'강감찬', 'M', 42, '서울시 관악구');
INSERT INTO `User5` VALUES (NULL,'이순신', 'A', 51, '부산시');
INSERT INTO `User5` VALUES (NULL,'신사임당', 'F', -1, '강릉시');
