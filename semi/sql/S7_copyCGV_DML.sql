INSERT INTO MEMBER (MCODE, MEMAIL, MPWD, MNAME, MNICK, MAUTHCODE) VALUES(0001,'ej@a.com','EJKIM','EJKIM','ㅇㅈㅇ',1);
INSERT INTO MEMBER (MCODE, MEMAIL, MPWD, MNAME, MNICK, MAUTHCODE) VALUES(0002,'user1@a.com','user1','user1','유져1',1);

commit;
select count(*) from likes where mcode='user1' and moviecd ='111'
;
