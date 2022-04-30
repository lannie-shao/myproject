use student

select *
from Student

select*
from Enrolment

create view vStudentResult as
select StudFName,StudLName,Result
from Student
inner join Enrolment
on Student.StudID=Enrolment.StudID

select*
from vStudentEnroll

select*
from vStudentResult

use bridging

use MK

select *
from PATIENT

select*
from product

select *
from Supplier

create view vProductT as
select product.ProdName,Supplier.SuppName,Supplier.SuppPhone
from product
full outer join Supplier
on product.ProdID=Supplier.SuppID

select*
from vProductT