select salary from [dbo].[employee_payroll] where name='john'
select * from [dbo].[employee_payroll] where start_date BETWEEN CAST('2010-01-01'AS DATE) AND CAST('01-01-2020' as date)