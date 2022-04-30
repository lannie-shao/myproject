create database bridging

use bridging

create table Fishing_Location(
LocaName varchar(30) primary key,
LocaDescr varchar(100),
LocaDateCreat datetime
)

create table Fish(
FishName varchar(12) primary key,
FishScientName varchar(50),
FishDescr varchar(50),
FishDateCreat datetime
)


insert into Fish
values
('carp','cyprinus carpio, imported',5-01-2013),
('herring',	'clupea pallasii, northern blue', 12-05-2014),
('mullet', 'mugil cephalis,	wavy fins',	19-10-2014)


insert into Fishing_Location
values
('CronullaPier','Ferry wharf in Gunamatta Bay',	9-06-2014),
('BonnetBay',	'southern-most groine',	12-07-2015),
('ComoBaths',	'western rocks past Baths',	19-09-2015),
('HallidaysPoint',	'southern rocks past pool',	21-11-2015)


Create table Fish_Sightings(
ID int primary key,
LocaID int not null foreign key,
FishName varchar(12) not null foreign key
)

