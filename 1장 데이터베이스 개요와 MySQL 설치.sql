#실습 1-1, MYSQL 접속, 데이터베이스 생성 및 삭제
CREATE DATABASE `StudyDB`;
SHOW databases;

drop database `StudyDB`;

#실습 1-2, 일반 관리자 생성 및 권한 부여
CREATE USER 'akdntm0120'@'%' IDENTIFIED BY '1234';

GRANT ALL PRIVILEGES ON StudyDB.* TO 'akdntm0120'@'%';

FLUSH PRIVILEGES;

#실습 1-3, 사용자 비밀번호 수정 및 삭제
ALTER USER 'akdntm0120'@'%' IDENTIFIED BY 'abc1234';

DROP USER 'akdntm0120'@'%';

FLUSH PRIVILEGES;

