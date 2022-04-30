use MKwinery

select*
from winery

select*
from region

select *
from region
inner join winery
on  region.RegionID=region.RegionID

select*
from dbo.Supplier s, dbo.product p

use adventureworks2014
go

select FirstName,MiddleName,LastName
from Person.Person
where BusinessEntityID in
(select BusinessEntityID
from HumanResources.Employee e 
where 
e.SickLeaveHours > (select AVG(SickLeaveHours) from HumanResources.Employee) )
