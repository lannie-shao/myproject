Create Database TeacherDB

Alter Database TeacherDB



Create table teacher(
teacherID int primary key,
DOB Date not null,
Address varchar(150),
Gender varchar(1) not null,
Email varchar(50),
Postcode int not null,
Contact int not null,
State varchar(15) not null,
Country varchar(15) not null,
Department varchar(15) 
);

Alter table teacher
alter column Email varchar not null;

Alter table teacher
alter column address varchar not null;