use LANNIE

create table Section
(setction_number int not null);

drop table Section

create table Section
(section_number int not null);

create table Class
(course_name varchar(20) primary key,
section_number int,
number_registered int not null,
class_date_time date not null)

alter table Class
alter column class_date_time datetime

insert into Class
(course_name,section_number,number_registered,class_date_time)
values('JavaScript',10, 2, GETDATE())

insert into Class
values('oop', 18, 3, GETDATE())

insert into Class
values('database',10,5, GETDATE())

select *
from Class
