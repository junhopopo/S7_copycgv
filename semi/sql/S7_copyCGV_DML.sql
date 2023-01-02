INSERT INTO MEMBER (MCODE, MEMAIL, MPWD, MNAME, MNICK, MAUTHCODE) VALUES(0001,'ej@a.com','EJKIM','EJKIM','ㅇㅈㅇ',1);
INSERT INTO MEMBER (MCODE, MEMAIL, MPWD, MNAME, MNICK, MAUTHCODE) VALUES(0002,'user1@a.com','user1','user1','유져1',1);

commit;
select count(*) from likes where mcode='user1' and moviecd ='111'
;


select DirectorCD, DirectorNM, DirectorNMEN 
    from director join (select * from  mvdirector where moviecd = '20228313') tmv using (directorcd)
;
select DirectorCD, DirectorNM, DirectorNMEN 
    from director
    where DirectorCD in (select DirectorCD from  mvdirector where moviecd = '20228313')
;

select ActorCD, ActorNM, ActorNMEN from actor join (select actorcd from  mvActor where moviecd = '20228313') tmv using (Actorcd)
;

select ActorCD, ActorNM, ActorNMEN
    from actor
    where actorcd in (select actorcd from mvactor where moviecd = '20228313')
;

select * from movie;
--
--directorcd=3,
--actorcd=14
select * from movie join (select moviecd from  mvActor where actorcd = '14') tmv using (moviecd)
; 

select * from movie where moviecd in (select moviecd from mvactor where actorcd='109')
;
select actorcd, count(actorcd) cnt, actornm from mvactor join actor using(actorcd) group by actorcd, actornm order by cnt desc
;

select directorcd, count(directorcd) cnt, directornm from mvdirector join director using(directorcd) group by directorcd, directornm order by cnt desc
;
select * from movie where moviecd in (select moviecd from mvdirector where directorcd='1')
;

select * from movie where moviecd in 
(
select moviecd from mvactor where actorcd in (select actorcd from actor where actornm = '제임스 카메론' or actornmen='제임스 카메론')
union 
select moviecd from mvdirector where directorcd in (select directorcd from director where directornm = '제임스 카메론' or directornmen='제임스 카메론')
)
;

select * from movie join (select moviecd from  likes where mcode = '2') tmv using (moviecd)
; 
-- 스칼라쿼리
select (select count(*) from  likes where moviecd = tmv.moviecd) likecnt, tmv.* from movie tmv
;
select * from  likes;
select count(*) from  likes group by moviecd
;
select count(*) from  likes where moviecd = '20228640'
;
select count(*) from  likes where moviecd = '20228641'
;


