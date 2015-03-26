CREATE USER NEWSMANAGER IDENTIFIED BY strongpassword ;
GRANT CREATE TRIGGER TO NEWSMANAGER ;
GRANT CREATE SEQUENCE TO NEWSMANAGER ;
GRANT CREATE TABLE TO NEWSMANAGER ;
GRANT CREATE RULE TO NEWSMANAGER ;
GRANT CREATE PROCEDURE TO NEWSMANAGER ;
GRANT CREATE DIMENSION TO NEWSMANAGER ;
GRANT CREATE SYNONYM TO NEWSMANAGER ;
GRANT ALTER DATABASE TO NEWSMANAGER ;
GRANT CREATE VIEW TO NEWSMANAGER ;
GRANT CREATE TYPE TO NEWSMANAGER ;
GRANT CREATE ROLE TO NEWSMANAGER ;
GRANT CREATE SESSION TO NEWSMANAGER ;
GRANT UNLIMITED TABLESPACE TO NEWSMANAGER ;
GRANT CREATE MATERIALIZED VIEW TO NEWSMANAGER ;
GRANT CREATE DATABASE LINK TO NEWSMANAGER ;
GRANT ALTER SESSION TO NEWSMANAGER ;

CREATE TABLE NEWSMANAGER.NEWS 
(
  NEWS_ID NUMBER(20) NOT NULL 
, TITLE NVARCHAR2(30) NOT NULL 
, SHORT_TEXT NVARCHAR2(100) NOT NULL 
, FULL_TEXT NVARCHAR2(2000) NOT NULL 
, CREATION_DATE TIMESTAMP NOT NULL 
, MODIFICATION_DATE DATE NOT NULL 
, CONSTRAINT NEWS_PK PRIMARY KEY 
  (
    NEWS_ID 
  )
  ENABLE 
);

CREATE SEQUENCE NEWSMANAGER.NEWS_SEQUENCE 
INCREMENT BY 1 START WITH 1 MINVALUE 1;

CREATE TABLE NEWSMANAGER.AUTHOR 
(
  AUTHOR_ID NUMBER(20) NOT NULL 
, AUTHOR_NAME NVARCHAR2(30) NOT NULL 
, EXPIRED TIMESTAMP NOT NULL 
, CONSTRAINT AUTHOR_PK PRIMARY KEY 
  (
    AUTHOR_ID 
  )
  ENABLE 
);

CREATE SEQUENCE NEWSMANAGER.AUTHOR_SEQUENCE 
INCREMENT BY 1 START WITH 1 MINVALUE 1;

CREATE TABLE NEWSMANAGER.NEWS_AUTHOR 
(
  NEWS_ID NUMBER(20) NOT NULL 
, AUTHOR_ID NUMBER(20) NOT NULL 
);

alter table "NEWSMANAGER"."NEWS_AUTHOR" 
add constraint NEWS_ID_NA_FK 
foreign key("NEWS_ID") 
references "NEWSMANAGER"."NEWS"("NEWS_ID")

alter table "NEWSMANAGER"."NEWS_AUTHOR" 
add constraint AUTHOR_ID_NA_FK 
foreign key("AUTHOR_ID") 
references "NEWSMANAGER"."AUTHOR"("AUTHOR_ID")

CREATE TABLE NEWSMANAGER.TAG 
(
  TAG_ID NUMBER(20) NOT NULL 
, TAG_NAME NVARCHAR2(30) NOT NULL 
, CONSTRAINT TAG_PK PRIMARY KEY 
  (
    TAG_ID 
  )
  ENABLE 
);

CREATE SEQUENCE NEWSMANAGER.TAG_SEQUENCE 
INCREMENT BY 1 START WITH 1 MINVALUE 1;

CREATE TABLE NEWSMANAGER.NEWS_TAG 
(
  NEWS_ID NUMBER(20) NOT NULL 
, TAG_ID NUMBER(20) NOT NULL 
);

alter table "NEWSMANAGER"."NEWS_TAG" 
add constraint NEWS_ID_NT_FK 
foreign key("NEWS_ID") 
references "NEWSMANAGER"."NEWS"("NEWS_ID")

alter table "NEWSMANAGER"."NEWS_TAG" 
add constraint TAG_ID_NT_FK 
foreign key("TAG_ID") 
references "NEWSMANAGER"."TAG"("TAG_ID")

CREATE TABLE NEWSMANAGER.COMMENTS 
(
  COMMENT_ID NUMBER(20) NOT NULL 
, NEWS_ID NUMBER(20) NOT NULL 
, COMMENT_TEXT NVARCHAR2(100) NOT NULL 
, CREATION_DATE TIMESTAMP NOT NULL 
, CONSTRAINT COMMENTS_PK PRIMARY KEY 
  (
    COMMENT_ID 
  )
  ENABLE 
);

alter table "NEWSMANAGER"."COMMENTS" 
add constraint NEWS_ID_COMMENTS_FK 
foreign key("NEWS_ID") 
references "NEWSMANAGER"."NEWS"("NEWS_ID")

CREATE SEQUENCE NEWSMANAGER.COMMENTS_SEQUENCE 
INCREMENT BY 1 START WITH 1 MINVALUE 1;
