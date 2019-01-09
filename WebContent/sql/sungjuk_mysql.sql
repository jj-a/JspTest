-- sungjuk_mysql.sql
-- 내컴퓨터 D:\java_1113\mysql\bin
--          -> mysqld.exe 서버 실행
--          -> 작업관리자에서 확인

-- 주의사항!! 
-- Execute Current Text (Alt+s) 로 실행 시 한 쿼리문이 여러줄로 나뉘어 있을 때 한줄만 실행될 수도 있으니 
-- 가급적 Execute Selected Text (Alt+x) 사용할 것
-- 특히 DELETE 할때 꼭 블럭 잡고 alt+x 하기

-- 성적테이블 삭제
drop table sungjuk;

-- 성적테이블 생성
create table sungjuk (
  sno   int not null auto_increment primary key,
  uname varchar(20) not null,
  kor   tinyint     not null,
  eng   tinyint     not null,
  mat   tinyint     not null,
  tot   int         null default 0,
  aver  int         null default 0,
  regdt datetime    not null
)ENGINE=MyISAM DEFAULT CHARSET="utf8"; 


-- 테스트
insert into sungjuk(uname,kor,eng,mat,regdt)
values('홍길동',70,80,95,now());

-- sno칼럼은 최대값을 구한후 +1 해서 입력하시오
insert into sungjuk(sno, uname, kor, eng, mat,regdt)
values((select ifnull(max(sno),0)+1 from sungjuk as TB),
         '손흥민', 90, 80, 70, now()
      );

-- 목록      
select * from sungjuk order by sno desc;

