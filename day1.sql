use school;

show tables;

select * from state;

create table city(
cityid varchar(10),constraint cityidp primary key(cityid),
stateid varchar(10) ,
cityname varchar(40) ,
foreign key (stateid) references state(stateid) 
);

INSERT INTO city (cityid, stateid, cityname) VALUES
('c1', 's1', 'Mumbai'),
('c2', 's1', 'Pune'),
('c3', 's2', 'Lucknow'),
('c4', 's2', 'Kanpur'),
('c5', 's3', 'Bhopal'),
('c6', 's3', 'Indore'),
('c7', 's4', 'Bhubaneswar'),
('c8', 's4', 'Cuttack'),
('c9', 's5', 'Bangalore'),
('c10', 's5', 'Mysore');

select * from student;
select * from city;
select * from course;

create table connect(
studentid int,
cityid varchar(10),
s1 varchar(10),
s2 varchar(10),
s3 varchar(10),
foreign key(studentid) references student(studentid),
foreign key(cityid) references city(cityid),
foreign key(s1) references course(courseid),
foreign key(s2) references course(courseid),
foreign key(s3) references course(courseid)
);

INSERT INTO connect (studentid, cityid, s1, s2, s3) VALUES
(101, 'c1', 's01', 's02', 's03'),     
(102, 'c2', 's01', 's03', 's04'),     
(103, 'c3', 's02', 's03', 's04'),     
(104, 'c4', 's01', 's02', 's04'),    
(105, 'c5', 's01', 's03', 's04'),    
(106, 'c6', 's02', 's03', 's04'),     
(107, 'c7', 's01', 's02', 's04'),    
(108, 'c8', 's01', 's03', 's04'),    
(109, 'c9', 's01', 's02', 's03'),     
(110, 'c10', 's02', 's03', 's04');   

commit;

select distinct* from student;
select * from student;
select all* from student;-- depends upon select statemnt-- 

select connect.cityid from connect;
select c.cityid from connect c;

select c.cityid "city code" from connect c;
select c.cityid from connect c;

select * from student
-- where extract(month from dob)=07 or 11;-- 
where extract(month from dob)in(7,11);

select * from student
where fname like 'R%';

select * from student
where fname not like '_a%';

insert into student values (111,'a%b','abc','2003-09-11');

select * from student
where fname  like '%\%%';

select * from student,marks; 

select studentid,fname,testno from student
natural join marks;

select s.fname,c.cityname,st.statename from student s natural join connect natural join city c natural join state st;
select s.fname,m.testno from student s,marks m where s.studentid = m.studentid;

select s.studentid,s.fname,m.testno
from student s inner join marks m on s.studentid = m.studentid;

select s.studentid,s.fname,ct.cityname,st.statename 
from student s 
inner join connect c on (s.studentid = c.studentid)
inner join city ct on (ct.cityid = c.cityid) 
inner join state st on (ct.stateid = st.stateid);

select s.fname 
from student s
left outer join connect ct on ct.studentid = s.studentid
left outer join city cy on ct.cityid = cy.cityid 
where cy.cityid is null;




#to show student name,total marks and result for test1 with pass fail or dustiction 


#restrict ur databse so that it can be used only bw 9 to 5 if some data is deleted from the student take a backup and take the time and who has deleted it

select * from marks;
select * from course;
select * from student;
select * from city;
select * from connect;
select * from state;

#student who has not taken 1st test
select s.studentid , s.fname,m.testno from student s
inner join marks m on m.studentid = s.studentid
where testno not in ('t1');

#particulr state student

select s.studentid,s.fname,ct.cityname,st.statename 
from student s 
inner join connect c on (s.studentid = c.studentid)
inner join city ct on (ct.cityid = c.cityid) 
inner join state st on (ct.stateid = st.stateid)
where st.statename='Maharastra';

#to show how many students taken each test
select m.testno,count(s.studentid) "count" from
student s inner join marks m on(s.studentid=m.studentid)
group by m.testno;


#id,name and subject he has taken
select a.studentid,a.fname,b.coursename,c.coursename,d.coursename from 
student a inner join connect t on a.studentid = t.studentid
inner join course b on b.courseid = t.s1
inner join course c on c.courseid = t.s2
inner join course d on d.courseid = t.s3;

select a.studentid,a.fname,c.courseid,c.coursename from
student a,connect b,course c where 
a.studentid=b.studentid and
(b.s1=c.courseid or b.s2=c.courseid or b.s3=c.courseid);

#give me a list subjectwise no of students
select c.coursename,count(s.studentid) "count" from
student s,connect t,course c where
(s.studentid=t.studentid)
and
(t.s1=c.courseid or t.s2=c.courseid or t.s3=c.courseid)
group by c.courseid;

select a.studentid,a.fname,(b.marks1+b.marks2+b.marks3) tot,
case when b.marks1<35 or b.marks2<35 or b.marks3<35
then 'fail'
when ((b.marks1+b.marks2+b.marks3)/3) between 35 and 49
then 'pass'
when ((b.marks1+b.marks2+b.marks3)/3) between 50 and 59
then 'Second class'
when ((b.marks1+b.marks2+b.marks3)/3) between 60 and 80
then 'First class'
else 'distinction'
end result from student a inner join marks b on a.studentid =b.studentid and testno = 't1';