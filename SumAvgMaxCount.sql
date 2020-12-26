select sum(salary) from  [dbo].[employee_payroll] WHERE gender = 'M' GROUP BY gender;
select sum(salary) from  [dbo].[employee_payroll] WHERE gender = 'F' GROUP BY gender;
select AVG(salary) from  [dbo].[employee_payroll] WHERE gender = 'F' GROUP BY gender;
select MIN(salary) from  [dbo].[employee_payroll] WHERE gender = 'F' GROUP BY gender;
select MAX(salary) from  [dbo].[employee_payroll] WHERE gender = 'F' GROUP BY gender;
select COUNT(salary) from  [dbo].[employee_payroll] WHERE gender = 'F' GROUP BY gender;