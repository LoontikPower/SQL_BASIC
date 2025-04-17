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

/*EXISTS*/
select FirstName from Customer 
where EXISTS ( select LastName from Employee where employee.EmployeeId = customer.SupportRepId and employee.EmployeeId >3 );