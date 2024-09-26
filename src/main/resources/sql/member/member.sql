CREATE SEQUENCE SEQ_MEMBER;

CREATE TABLE TBL_MEMBER(
    ID NUMBER CONSTRAINT PK_MEMBER PRIMARY KEY,
    MEMBER_NICKNAME VARCHAR2(255) NOT NULL,
    MEMBER_EMAIL VARCHAR2(255) NOT NULL,
    MEMBER_PASSWORD VARCHAR2(255) NOT NULL,
    MEMBER_TYPE NUMBER NOT NULL,      -- 0 : 일반, 1 : 대학생, 2 : 교수
    MEMBER_NAME VARCHAR2(255),
    MEMBER_GENDER NUMBER,             -- 0 : 남성, 1 : 여성
    MEMBER_BIRTHDAY VARCHAR2(255),
    MEMBER_AREA VARCHAR2(255),
    MEMBER_DETAILED_AREA VARCHAR2(255),
    MEMBER_ADDRESS VARCHAR2(255),
    MEMBER_INTRODUCTION VARCHAR2(255),
    MEMBER_HOMEPAGE_ADDRESS VARCHAR2(255),
    MEMBER_CELL_PHONE VARCHAR2(255),
    MEMBER_PHONE VARCHAR2(255),
    MEMBER_FAX VARCHAR2(255),
    MEMBER_MAJOR VARCHAR2(255),      -- MEMBER_TYPE이 일반일 경우 학과 정보가 없기 때문에 NOT NULL 제외
    CREATED_DATE DATE DEFAULT SYSDATE,
    UPDATED_DATE DATE DEFAULT SYSDATE
);

SELECT * FROM TBL_MEMBER;
