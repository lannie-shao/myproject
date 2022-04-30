select *
from region
inner join winery
on region.regionid = winery.regionid

select*
from region
left outer join winery
on region.RegionID=winery.RegionID

select*
from region
right outer join winery
on region.RegionID=winery.RegionID

select*
from region
full outer join winery
on region.RegionID=winery.RegionID

select *
from HumanResources.Employee e
inner join Person.Person p
on e.BusinessEntityID= p.BusinessEntityID

select *
from HumanResources.Employee e
left outer join Person.Person p
on e.BusinessEntityID= p.BusinessEntityID

select *
from HumanResources.Employee e
right outer join Person.Person p
on e.BusinessEntityID= p.BusinessEntityID

select *
from HumanResources.Employee e
full outer join Person.Person p
on e.BusinessEntityID= p.BusinessEntityID