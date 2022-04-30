Create Database StudentDB

Alter Database StudentDB
Modify name= StdentDB

--drop database StudentDB

Create table Student(
StudentID int not null,
StudentName varchar(50) not null,
DOB Date,
Address varchar(150) not null,
Gender varchar(1),
Email varchar(50),
PriorityGroup varchar(50) not null,
Postcode int not null,
Contact int not null,
State varchar(15) not null,
Country varchar(15) not null,
EnrolDate Date not null,
CourseCode int not null
)

alter table Student
add primary key(StudentID)


alter table Student
alter column Email varchar(50) not null

alter table student
add Suburb varchar(15) not null


insert into Student
(Address,postcode,state)
values
('39 thorogh bld', 2155, 'NSW')









