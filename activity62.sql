use AdventureWorks2014

select COUNT(*)
from HumanResources.Employee

select d.Name, COUNT(*)as staffNum
from HumanResources.Department d, HumanResources.Employee e, HumanResources.EmployeeDepartmentHistory h
where d.DepartmentID= h.DepartmentID
and h.BusinessEntityID= e.BusinessEntityID
group by d.Name

select COUNT(*) as gender
from HumanResources.Employee
group by Gender

select d.Name as departName,e.JobTitle, COUNT(*)as staffNum, e.Gender
from HumanResources.Department d, HumanResources.Employee e, HumanResources.EmployeeDepartmentHistory h
where d.DepartmentID= h.DepartmentID
and h.BusinessEntityID= e.BusinessEntityID
group by e.JobTitle, e.Gender, d.Name

select year(HireDate),COUNT(*) 
from HumanResources.Employee
group by HireDate
order by year(HireDate) desc


select min(rate) as minSal, max(rate) as maxSal, AVG(rate) as avgSal
from HumanResources.EmployeePayHistory h
group by h.BusinessEntityID

select a.City, COUNT(*) as staffNum
from Person.Address a, Person.BusinessEntityAddress b,HumanResources.Employee e
where a.AddressID=b.AddressID
and b.BusinessEntityID=e.BusinessEntityID
group by a.City

select COUNT(*) as staffNum
from Person.Address
where city = 'sydney'
