select * from Employee ;

/*self-joins*/

select emp.LastName, emp.FirstName, emp.EmployeeId, mng.LastName, mng.FirstName
from Employee emp
join Employee mng on emp.ReportsTo = mng.EmployeeId;