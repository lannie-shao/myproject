select*
from region,winery
where region.RegionID=winery.RegionID

select*
from region
inner join winery
on region.RegionID=winery.RegionID

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