select * from Employee ;

/*self-joins*/

select emp.LastName, emp.FirstName, emp.EmployeeId, mng.LastName, mng.FirstName
from Employee emp
join Employee mng on emp.ReportsTo = mng.EmployeeId;

/*Having */
select employee.LastName as last_name, count(customer.SupportRepId) as NumberOfSupport
from Customer 
inner join Employee on customer.SupportRepId = employee.EmployeeId 
group by last_name 
Having NumberOfSupport > 18;
