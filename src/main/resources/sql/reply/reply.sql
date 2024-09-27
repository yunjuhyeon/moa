CREATE SEQUENCE SEQ_REPLY;

CREATE TABLE TBL_REPLY(
    ID NUMBER CONSTRAINT PK_REPLY PRIMARY KEY,
    POST_ID NUMBER NOT NULL,
    MEMBER_ID NUMBER NOT NULL,
    REPLY_CONTENT VARCHAR2(255) NOT NULL,
    CREATED_DATE DATE DEFAULT SYSDATE,
    UPDATED_DATE DATE DEFAULT SYSDATE,
    GROUP_ID NUMBER NOT NULL,
    REPLY_DEPTH NUMBER NOT NULL,
    CONSTRAINT FK_REPLY_POST FOREIGN KEY(POST_ID)
    REFERENCES TBL_POST(ID),
    CONSTRAINT FK_REPLY_MEMBER FOREIGN KEY(MEMBER_ID)
    REFERENCES TBL_MEMBER(ID)
);

DROP TABLE TBL_REPLY;

SELECT *FROM TBL_REPLY;
