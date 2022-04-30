use AdventureWorks2014
go

select p.Name, p.ListPrice * 1.1 as retailPrice,p.ListPrice*0.1 as gst------------1
from Production.Product p
where p.ListPrice != 0

select distinct p.Name,q.Quantity, q.Quantity/24 as boxes,q.Quantity%24 as quantityleft------2
from Production.Product p ,Production.ProductInventory q
where size in ('s','m','l')
and p.ProductID= q.ProductID
and p.Name like '%classic vest%'


select *
from Production.ProductInventory


select *------------------------------3
from Production.Product p
where p.SellEndDate is null
order by p.SellEndDate

select n.FirstName, n.LastName, s.SickLeaveHours-------------4
from Person.Person n, HumanResources.Employee s
where s.SickLeaveHours <=30

select s.Name-------------------------5
from Sales.Store s, Sales.Customer c, Sales.SalesOrderHeader o
where s.BusinessEntityID= c.StoreID
and c.CustomerID= o.CustomerID
and o.ShipDate > o.DueDate

select s.Name, Datediff(day, o.orderdate, o.shipdate) as datedifference---------------6
from Sales.Store s, Sales.Customer c, Sales.SalesOrderHeader o
where s.BusinessEntityID= c.StoreID
and c.CustomerID= o.CustomerID



select*
from Sales.Store

select *
from sales.Customer

select *
from Sales.SalesOrderHeader