use AdventureWorks2014
go

select AVG(saleslastyear)as averageSale, CountryRegionCode
from Sales.SalesTerritory 
group by CountryRegionCode
order by AVG(saleslastyear)

select MAX(saleslastyear)as saleslastyear, CountryRegionCode
from Sales.SalesTerritory
group by CountryRegionCode
order by saleslastyear desc

select MIN(saleslastyear)as saleslastyear, CountryRegionCode
from Sales.SalesTerritory
group by CountryRegionCode
order by saleslastyear

select p.ProductID, max(p.OrderQty) as biggestSale
from Sales.SalesOrderDetail p, Sales.SalesOrderHeader o, Sales.SalesTerritory s
where p.SalesOrderID=o.SalesOrderID
and o.TerritoryID=s.TerritoryID
group by p.ProductID
order by max(p.orderqty) desc

select max(p.OrderQty) as biggestSale,s.CountryRegionCode
from Sales.SalesOrderDetail p, Sales.SalesOrderHeader o, Sales.SalesTerritory s
where p.SalesOrderID=o.SalesOrderID
and o.TerritoryID=s.TerritoryID
group by s.CountryRegionCode
order by max(p.orderqty) desc

select SalesLastYear, Name
from Sales.SalesTerritory 
where Name = 'australia'

select d.DepartmentID, AVG(p.rate) as aveSal
from HumanResources.Employee e, HumanResources.EmployeePayHistory p, HumanResources.EmployeeDepartmentHistory d
where e.BusinessEntityID=p.BusinessEntityID
and p.BusinessEntityID=d.BusinessEntityID
group by d.DepartmentID
order by AVG(p.rate) desc

select MAX(saleslastyear)as saleslastyear, CountryRegionCode
from Sales.SalesTerritory
group by CountryRegionCode
order by saleslastyear desc

select *
from Sales.Customer c,Sales.SalesTerritory r
where c.TerritoryID=r.TerritoryID
and r.CountryRegionCode='USA'



