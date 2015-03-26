insert into NEWSMANAGER.NEWS (NEWS_ID, TITLE, SHORT_TEXT, FULL_TEXT, CREATION_DATE, MODIFICATION_DATE) 
select 
NEWSMANAGER.NEWS_SEQUENCE.nextval, 
'TITLE' || to_char(rownum), 
'SHORT_TEXT' || to_char(rownum), 
'FULL_TEXT' || to_char(rownum), 
CURRENT_TIMESTAMP,
CURRENT_DATE
from dual 
connect by level <= 20;

insert into NEWSMANAGER.AUTHOR (AUTHOR_ID, AUTHOR_NAME, EXPIRED) 
select 
NEWSMANAGER.AUTHOR_SEQUENCE.nextval, 
'AUTHOR' || to_char(rownum),  
TO_TIMESTAMP('2015-12-31 23:59:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF')
from dual 
connect by level <= 20;

insert into NEWSMANAGER.NEWS_AUTHOR (NEWS_ID, AUTHOR_ID)
select 
  round(dbms_random.value(1, 20)),
  round(dbms_random.value(1, 20))
from dual
connect by level <= 20;

insert into NEWSMANAGER.TAG (TAG_ID, TAG_NAME) 
select 
NEWSMANAGER.TAG_SEQUENCE.nextval, 
'TAG' || to_char(rownum)
from dual 
connect by level <= 20;

insert into NEWSMANAGER.NEWS_TAG (NEWS_ID, TAG_ID)
select 
  round(dbms_random.value(1, 20)),
  round(dbms_random.value(1, 20))
from dual
connect by level <= 20;

insert into NEWSMANAGER.COMMENTS (COMMENT_ID, NEWS_ID, COMMENT_TEXT, CREATION_DATE) 
select 
NEWSMANAGER.COMMENTS_SEQUENCE.nextval,
round(dbms_random.value(1, 20)),
'COMMENT' || to_char(rownum),  
CURRENT_TIMESTAMP
from dual 
connect by level <= 20;
  

