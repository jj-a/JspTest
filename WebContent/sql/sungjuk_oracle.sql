-- sungjuk_oracle.sql
-- 시작 -> Oracle
--      -> Run SQL Command Line
--      -> connect 오라클 서버 확인(java1113/1234)

-- 주의사항!! 
-- Execute Current Text (Alt+s) 로 실행 시 한 쿼리문이 여러줄로 나뉘어 있을 때 한줄만 실행될 수도 있으니 
-- 가급적 Execute Selected Text (Alt+x) 사용할 것
-- 특히 DELETE 할때 꼭 블럭 잡고 alt+x 하기

-- 성적 테이블 삭제
drop table sungjuk;

-- 성적 시퀀스 삭제
drop sequence sungjuk_seq;

-- 성적 시퀀스 생성
create sequence sungjuk_seq;

-- 성적 테이블 생성
create table sungjuk(
    sno      int primary key,   -- 일련번호
    uname    varchar(20),    -- 이름
    kor      int not null,   -- 국어
    eng      int not null,   -- 영어
    mat      int not null,   -- 수학
    aver     int,            -- 평균
    addr     varchar(50),    -- 주소
    wdate    date            -- 작성일
);

-- 행추가 (일련번호 sno칼럼 입력할때)
-- 1) 시퀀스
insert into sungjuk(sno,uname,kor,eng,mat,addr,wdate)
values(sungjuk_seq.nextval,'무궁화',40,50,20,'Seoul',sysdate);

-- 2) 최대값 max()+1
insert into sungjuk(sno,uname,kor,eng,mat,addr,wdate)
values((select nvl(max(sno),0)+1 from sungjuk)
       ,'박지성',44,55,66,'Suwon',sysdate);

-- 목록
select * from sungjuk order by sno desc;

-- 상세보기
select * from sungjuk where sno=4;

-- 수정
update sungjuk
set uname=?, kor=?, eng=?, mat=?, aver=?, addr=?
where sno=4;

-- 삭제
delete from sungjuk
where sno=4;


