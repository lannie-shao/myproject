create database First_Normal_Form
go

create table Project
(projectID int primary key,
projectName char(50) not null,
employeeID int not null,
employName char(50) not null,
jobClass char(50) not null,
charge_Hour float not null,
deliverHours float not null,
TotalCharge float not null)

create table 