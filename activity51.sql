use AdventureWorks2014
go

select Name,LEN(name) as Name_Length
from Production.Product


select CONCAT(firstname,' ', LastName)
from Person.Person


select CONCAT(name, ' ',UPPER(color),' ', CAST(listprice as char)) as item,Name, UPPER(color)as color
from Production.Product
where ListPrice>0

select getdate(), '2022-12-25', datediff(day, getdate(),2022-12-25) as daysleft
select getdate()

select s.Name, Datediff(day, o.orderdate, o.shipdate) as datedifference---------------7
from Sales.Store s, Sales.Customer c, Sales.SalesOrderHeader o
where s.BusinessEntityID= c.StoreID
and c.CustomerID= o.CustomerID

select p.Name, p.ListPrice,IIF(p.listprice>1000,'high','low')as cost
from Production.Product p
where p.listprice>0

Select DATENAME(weekday, '1979/07/14') as DayofBirth