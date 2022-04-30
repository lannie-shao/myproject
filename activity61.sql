use AdventureWorks2014
go

select COUNT(*)
from HumanResources.Employee

select d.Name as departName, COUNT(*) as numEmployees
from HumanResources.Employee e, HumanResources.EmployeeDepartmentHistory h, HumanResources.Department d
where e.BusinessEntityID=h.BusinessEntityID
and h.DepartmentID=d.DepartmentID
group by d.Name
order by d.Name


select COUNT(*)
from HumanResources.Employee 
group by Gender

select d.Name as departName, COUNT(*) as numEmployees, e.Gender
from HumanResources.Employee e, HumanResources.EmployeeDepartmentHistory h, HumanResources.Department d
where e.BusinessEntityID=h.BusinessEntityID
and h.DepartmentID=d.DepartmentID
group by d.Name, e.Gender
order by d.Name

select year(hiredate),COUNT(*)as emplNum
from HumanResources.Employee
group by year(hiredate)
order by year(hiredate) desc

select min(h.rate) as minSal,max(h.rate) as maxSal,avg(h.rate) as avaSal
from HumanResources.Employee e, HumanResources.EmployeePayHistory h
where e.BusinessEntityID=h.BusinessEntityID

select d.Name, min(h.rate) as minSal,max(h.rate) as maxSal,avg(h.rate) as avaSal
from HumanResources.Employee e, HumanResources.EmployeePayHistory h,HumanResources.EmployeeDepartmentHistory dh,HumanResources.Department d
where e.BusinessEntityID=h.BusinessEntityID
and e.BusinessEntityID=dh.BusinessEntityID
and dh.DepartmentID=d.DepartmentID
group by d.Name

select d.Name, min(h.rate) as minSal,max(h.rate) as maxSal,avg(h.rate) as avaSal, COUNT(*) as staffNum
from HumanResources.Employee e, HumanResources.EmployeePayHistory h,HumanResources.EmployeeDepartmentHistory dh,HumanResources.Department d
where e.BusinessEntityID=h.BusinessEntityID
and e.BusinessEntityID=dh.BusinessEntityID
and dh.DepartmentID=d.DepartmentID
group by d.Name


select e.JobTitle,min(h.rate) as minSal,max(h.rate) as maxSal,avg(h.rate) as avaSal, COUNT(*)as staffNum
from HumanResources.Employee e, HumanResources.EmployeePayHistory h
where e.BusinessEntityID=h.BusinessEntityID
group by e.JobTitle
order by min(h.rate)

select e.Gender,min(h.rate) as minSal,max(h.rate) as maxSal,avg(h.rate) as avaSal, COUNT(*)as gender
from HumanResources.Employee e, HumanResources.EmployeePayHistory h
where e.BusinessEntityID=h.BusinessEntityID
group by e.Gender
order by min(h.rate)

select d.Name,sum(h.rate)as TotalSal
from HumanResources.Employee e, HumanResources.EmployeePayHistory h,HumanResources.EmployeeDepartmentHistory dh,HumanResources.Department d
where e.BusinessEntityID=h.BusinessEntityID
and e.BusinessEntityID=dh.BusinessEntityID
and dh.DepartmentID=d.DepartmentID
group by d.Name


select d.Name,sum(h.rate) as total,max(h.rate) as highest
from HumanResources.Employee e, HumanResources.EmployeePayHistory h,HumanResources.EmployeeDepartmentHistory dh,HumanResources.Department d
where e.BusinessEntityID=h.BusinessEntityID
and e.BusinessEntityID=dh.BusinessEntityID
and dh.DepartmentID=d.DepartmentID
group by d.Name
order by max(h.rate)