select * from notice;

select * from (select * from notice order by no desc) where rownum<=5;

insert into notice values (nseq.nextval, '더미 제목1', '더미 내용1', sysdate, 0);
insert into notice values (nseq.nextval, '더미 제목2', '더미 내용2', sysdate, default);

select * from member;

insert into member values ('admin','1234','관리자','admin@gasan.org','010-1234-5678');
insert into member values ('jdj','ac89','정도준','jdjac@naver.com','010-7979-1004');

select * from traffic;

alter table traffic add uri varchar2(150);

commit;

update qna set title='질문2', content='질문2의 내용' where no=3;
select * from qna;

-- plevel -> 1:질문, 2:답변
-- parno -> 질문(부모)글번호, 질문:자기자신번호, 답변:질문에 대한 글번호

-- 최근 질문 및 답변 목록 출력
select * from (select * from qna order by parno desc, plevel asc) where rownum<=5;

-- 질문 및 답변의 목록 출력 : 질문(부모)글번호인 parno의 내림차순으로 하고, 
-- 같은 경우은 질문부터 출력될 수 있도록 plevel의 오름차순으로 정렬하도록 한다.
select * from qna order by parno desc, plevel asc;

-- 질문 등록
insert into qna values(qseq.nextval,1,null,'질문5','질문5의 내용임',default,0,'kkt');
update qna set parno=qseq.currval 
where no = (select * from (select no from qna order by no desc) where rownum<=1);

-- 답변 등록
insert into qna values(qseq.nextval,2,5,'질문4의 답변1','질문4의 답변 내용',default,0,'admin');

-- 질문 및 답변 수정
update qna set title='', content='' where no=1;

-- 질문 및 답변 삭제
delete from qna where no=1;

commit;

select * from traffic;

desc traffic;

alter table traffic modify route varchar2(1000);

-- 교통편 등록
insert into traffic values (tseq.nextval, '버스or철도', '버스번호', '노선', 'url링크');

-- 교통편 검색
select * from traffic order by ttype desc, no asc;

-- 교통편 수정
update traffic set route='', coment='' where tno=1;

-- 교통편 삭제
delete from traffic where tno=1;

commit;

select * from guide;

-- 장소 검색
select * from guide where pcode=1;

-- 장소 등록
insert into guide values (gseq.nextval, '','','','','','');
insert into guide values (gseq.nextval, 'BYC하이시티','01','서울특별시 금천구 가산동 가산디지털1로 131','1544-7871','37.4769693,126.8824741','디지털로의 대로변에 위치한 빌딩입니다.');

-- 장소 수정
update guide set pname='', paddr='', ptel='', pgps='', pcoment='' where pcode=1;

-- 장소 삭제
delete from guide where pcode=1;
