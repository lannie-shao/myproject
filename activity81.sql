create database student
go

use student

create table Student
(StudID int primary key,
StudFName varchar(15),
StudLName varchar(20)
)

create table Unit
(UnitID varchar(10) primary key,
UnitName varchar(100)
)

create table Enrolment
(EnrollID int primary key,
EnrolSem int,
EnrolYear int,
Result varchar(20),
StudID int foreign key references Student(StudID),
UnitID varchar(10) foreign key references Unit(UnitID)
)

insert into Student
values
(1, 'Donald','Duck'),
(2, 'Daisy','Duck'),
(3, 'Tom', 'Cruise'),
(4, 'Cindi', 'Lauper')

insert into Unit
values
('ICTDBS403','Create basic databases'),
('ICTPRG402',	'Apply query language'),
('ICTPRG414',	'Apply introductory programming skills in another language'),
('ICTPRG418',	'Apply intermediate programming skills in another language')


insert into Unit
values
('ICTPRG425', 	'Use structured query language')

insert into Enrolment
values
(1,	1,	2017,	null,	1,	'ICTDBS403'),
(2,	2,	2016,	'competent', 3,	'ICTPRG418'),
(3,	1,	2017,	'not yet competent', 2, 'ICTPRG425'),
(4,	2,	2016,	'competent', 4,	'ICTPRG402'),
(5,	1,	2017,	null,	3,	'ICTPRG425')

select*
from Student

select*
from Unit

select*
from Enrolment

select Student.StudFName, Student.StudLName
from Student.studID=Enrolment.StudID
where Enrolment.enrolsem = 1
and Enrolment.enrolyear = 2017

insert into Student
values
(5, 'Reece', 'Witherspoon'),
(6,'Danny', 'De Vito'),
(7, 'James', 'Cagney'),
(8, 'Daniel', 'O’Herlihy'),
(9, 'Peter', 'O’Toole')

insert into Unit
values
('ICTICT418',	'Contribute to copyright, ethics and privacy in an ICT environment' ),
('ICTICT417',	'Identify, evaluate and apply current industry-specific technologies to meet 
			industry standards' )

insert into Enrolment
values
(8,	2,	'2016',	null,	5,	'ICTICT418'),
(6,	2,	'2016',	null,	12,	'ICTICT418'),
(7,	1,	'2017',	'competent',	7,	'ICTICT411'),
(9, 'not null', 'not null', null, 'not null', 'not null'),
(10, 'not null', 'not null', null, 'not null', 'not null')
