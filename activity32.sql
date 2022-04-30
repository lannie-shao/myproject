use AdventureWorks2014
go

select BirthDate,lastname,getdate() as Today, datediff(year,BirthDate,GETDATE())as age, SickLeaveHours/8 as sickday,VacationHours/8 as vacationday


from HumanResources.Employee H, Person.Person P

where H.BusinessEntityID=P.BusinessEntityID------------------1 and 2
order by LastName


select StateProvinceCode,c.CountryRegionCode,s.Name--------------3
from Person.StateProvince S, Person.CountryRegion c
where s.Name=c.Name
and  S.IsOnlyStateProvinceFlag=1
order by c.CountryRegionCode


select*
from Person.StateProvince

select*
from Person.CountryRegion


select Name,StateProvinceCode-------------4
from Person.StateProvince
where IsOnlyStateProvinceFlag=0



select Name-------------------5
from Purchasing.Vendor v
where v.ActiveFlag=1
and name between 'a' and'm'
order by Name

select VacationHours/8 as vacationday, LastName------------6
from HumanResources.Employee H, Person.Person P
where H.BusinessEntityID=P.BusinessEntityID
and VacationHours/8 between 10 and 21
order by LastName


select VacationHours/8 as vacationday, LastName--------7
from HumanResources.Employee H, Person.Person P
where H.BusinessEntityID=P.BusinessEntityID
and VacationHours/8=0
order by LastName

select pr.Name,Quantity,l.LocationID------------8
from Production.Product pr,Production.Location l, Production.ProductInventory q
where  q.ProductID=pr.ProductID
and q.LocationID=l.LocationID
and Quantity between 1 and 101
order by Name


select s.Name,o.OrderDate,o.SubTotal---------------------------9
from sales.SalesOrderHeader o, Sales.Store s, Sales.Customer c
where s.BusinessEntityID= c.StoreID
and c.CustomerID= o.CustomerID
and OrderDate between '2011/08/01' and '2011/08/31'
order by s.Name


select a.City,a.AddressLine1, v.Name--------------------------------10
from Purchasing.Vendor v,Person.BusinessEntityAddress ba,Person.Address a
where v.BusinessEntityID=ba.BusinessEntityID
and ba.AddressID=a.AddressID
and a.city in ('Mill Valley','Oakland','Long Beach')



select n.FirstName,n.LastName,j.JobTitle-------------------11
from Person.Person N,HumanResources.Employee J
where j.BusinessEntityID=n.BusinessEntityID
and J.JobTitle in ('Design Engineer','Research and Development Engineer','Senior Design Engineer')
order by LastName


select lastname, FirstName------------------12
from Person.Person
where FirstName in ('Yolanda','Cameron')
and LastName like 'A%'

select p.Name,q.Quantity,p.ListPrice,q.LocationID---------------------13
from Production.Product p,Production.Location l, Production.ProductInventory q
where l.LocationID=q.LocationID
and p.ProductID=q.ProductID
and p.Name like 'chain%'
order by Name

select distinct City--------------------------------14
from Sales.Store s,Person.BusinessEntityAddress BA, Person.Address a
where s.BusinessEntityID=BA.BusinessEntityID
and ba.AddressID=a.AddressID

select distinct city----------------------------------15(575rows)
from Person.Address a, Person.StateProvince p, Person.CountryRegion c
where p.StateProvinceID=a.StateProvinceID
and p.CountryRegionCode=c.CountryRegionCode


select FirstName,LastName,EmailAddress,PhoneNumber------------------------16(18963rows)
from Person.Person n,Person.PersonPhone p,Person.EmailAddress e
where n.BusinessEntityID=p.BusinessEntityID
and n.BusinessEntityID=e.BusinessEntityID
and Title is null
order by LastName


select Name-----------------------------------------------------17(248rows)
from Production.Product
where color is null



select*
from Production.Product

select*
from Production.Location

select*
from Production.Product
