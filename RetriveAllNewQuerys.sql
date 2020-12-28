select * from Employee e inner join Company c on 
e.CompanyEmployee_ID=c.Company_ID inner join Payroll p on 
p.Payroll_ID=e.Payrol_ID inner join Department_Employee de on
de.Employee_ID=e.Employee_ID inner join Department d on
d.Department_ID=de.Department_ID where e.Employee_ID=001;

select * from Employee e inner join Company c on 
e.CompanyEmployee_ID=c.Company_ID inner join Payroll p on
p.Payroll_ID=e.Payrol_ID inner join Department_Employee de on
de.Employee_ID=e.Employee_ID inner join Department d on
d.Department_ID=de.Department_ID where e.Employee_ID=002;

select name,basic_pay from Employee where start_Date between CAST('2019-01-01'as date) AND GETDATE();

select sum(basic_pay) from Employee where gender='M' GROUP BY gender;
select sum(basic_pay) from Employee where gender='F' GROUP BY gender;
select AVG(basic_pay) from Employee where gender='F' GROUP BY gender;
select COUNT(basic_pay) from Employee where gender='M' GROUP BY gender;
select COUNT(basic_pay) from Employee where gender='F' GROUP BY gender;
select MIN(basic_pay) from Employee where gender='F' GROUP BY gender;
select MAX(basic_pay) from Employee where gender='F' GROUP BY gender;

select * from Employee