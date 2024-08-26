부서ID 별로 평균연봉이 7000이상인 사원들의 부서ID와 평균연봉의 소수점 둘째 자리까지를 내림차순하여 구하라
select department_id, round(avg(salary),2) as "평균급여"
from employees
group by department_id
having round(avg(salary),2) >= 7000
order by 평균급여 desc;

create table student(
	num number(30),
	name varchar2(30),
	gender varchar2(30) constraint gn_notnull not null,
	phone varchar2(30) constraint phone_uni unique,
	city varchar2(30),
	primary key(num, name)
);

drop table student;

insert into student values(21501, '짧쭗찖', 'non-binary', '010-1415-1377', '도쿄');
insert into student values(21502, '쭑짥찡', 'male', '010-4134-4145', '서울');
insert into student values(21503, '런쭐랑', 'female', '010-4141-4141', '상하이');
insert into student values(21504, '김다이슨', 'male', '080-300-4253', '하버프론트');
insert into student values(21505, '괴물쥐', 'female', '010-1234-4923', '성남');
insert into student values(21506, '랄로', 'male', '010-4154-3211', '두만강');
insert into student values(21507, '쭐랑짺', 'male', '010-3211-5842', '의정부');
insert into student values(21508, '김형섭', 'female', '010-4132-5788', '우이동');
insert into student values(21509, '요플래', 'male', '010-4145-1399', '페이커타워');
insert into student values(21510, '김주현', 'female', '010-5419-3481', '길바닥');

select *
from student;

delete from student where phone not like '010%';

delete from student where city not like '___';

delete from student where num >= 21502 and num <= 21505;

delete from student where gender in 'female';

update student set phone = '010-1111-1111' where name = '랄로';

update student set name = '토마토' where name = '쭑짥찡';

create sequence ted
start with 2;


select mem_no 회원번호, name 회원명, to_char(join_date, 'yyyy') 가입연도, jumin 주민번호,
'010-'||substr(phone,1,4)||'-'||substr(phone,5,8) as 전화번호
from test_member;

select *
from test_member;

select title 책제목, borrowed_by 대여자, name 회원명,
case when substr(jumin,8,1)='1' then'남자' when substr(jumin,8,1)='3' then'남자'
when substr(jumin,8,1)='2' then'여자' when substr(jumin,8,1)='4' then'여자' end as 성별
from test_book tb, test_member tm
where tb.borrowed_by = tm.mem_no(+);

select title||'은 '||pub_year||'년도에 출판 되었으며 저자는 '||author||' 입니다'
from test_book;

select count(*)
from test_book
where pub_year in 2024;

select case pub_year when 2013 then 3 when 2016 then 6 when 2024 then 24 end as 출판연도
from test_book;

select title, genre
from test_book
where borrowed_by is null;

1.대여가 되었으며 출판 연도가 2024년도인 책의 이름과 작가의 이름을 조회
select title, author
from test_book
where borrowed_by is not null and pub_year in 2024;

2.2013년을 제외한 pub_year 별로 책의 개수를 pub_year를 기준으로 내림차순하여 조회하라
select pub_year, count(*)
from test_book
where pub_year not in 2013
group by pub_year
order by pub_year desc;

3.회원번호와 이름을 연결하여 조회하라 출력형식: (회원번호: 이름)
select mem_no||': '||name 공백 필수
from test_member;

4.title은 책제목, author는 작가로 별칭을 지정해준 후 책의 장르가 에세이가 아닌 경우 조회하라
select title 책제목, author 작가
from test_book
where genre not in '에세이';

insert into test_book values(301, '리틀 라이프', '한야 야나기하라', 2016, '소설', 101);

insert into test_book values(101, '김성일', '2022-05-05', '850301-1111111', 11112222);

select *
from test_book
where borrowed_by is null

select count(*) 전체회원수
from test_member;

select name, to_char(join_date, 'yyyy/mm/dd')
from test_member
where to_char(join_date, 'yyyy') < 2024;

select name, '010-'||substr(phone,1,4)||'-'||substr(phone,5,4)
from test_member;

select genre, count(*)
from TEST_BOOK
group by genre
order by count(*) desc;

select mem_no, to_char(join_date, 'yyyy')
from TEST_MEMBER;

select name,
case substr(jumin,8,1)
when '1' then '남자' 
when '2' then '여자' 
when '3' then '남자'
when '4' then '여자'
end as "성별"
from test_member;

select title, borrowed_by, name
from test_book tb, test_member tm
where tb.borrowed_by = tm.mem_no(+);