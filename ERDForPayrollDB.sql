create table payroll
(
	Payroll_ID int not null primary key,
	basic_Pay money not null,
	deduction float not null,
	taxable real, 
	income_Tax float,
	netpay real, 
)

insert into payroll values
	(111,400000,200.20,2000,50000,25000),
	(112,500000,600.20,3000,70000,55000),
	(113,500000,600.20,3000,70000,55000),
	(114,700000,9900.10,4000,80000,56000)

select *from payroll
