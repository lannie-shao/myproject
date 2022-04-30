use NORTHWND

SELECT*
from Suppliers

SELECT*
from Customers

select city,country
from Suppliers
union all
select city,country
from Customers

select city,country
from Suppliers
union ------------------去掉重复的rows
select city,country
from Customers