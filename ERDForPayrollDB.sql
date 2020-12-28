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

create table Company
(
	Company_ID int primary key,
	ComapnyName varchar(20)
)

insert into Company values
	(501,'Infosys'),
	(502,'Bridgelab'),
	(503,'TCS'),
	(504,'Wipro')

select * from Company

create table Employee
(
	Employee_ID int not null primary key,
	name varchar(20) not null,
	gender varchar(1) not null,
	basic_pay money not null,
	start_Date date not null,
	phoneNumber varchar(10),
	addres varchar(60),
	CompanyEmployee_ID int REFERENCES Company(Company_ID),
	Payrol_ID int  REFERENCES Payroll(Payroll_ID)
)

insert into Employee values
	(001,'Nijam','M',700000,'2019-07-13','7894561230','Beed',501,111),
	(002,'Imran','M',800000,'2020-08-05','8975833278','Pune',502,112),
	(003,'Dipak','M',600000,'2019-08-09','9874563210','Parli',503,113),
	(004,'Priya','F',900000,'2018-07-05','9638527410','Latur',504,114)

select * from Employee

create table Department
(
	Department_ID int not null primary key,
	Department_Name varchar(20) not null,
)

insert into Department values
	(1,'HR'),
	(2,'Marketing'),
	(3,'Technical'),
	(4,'IT')

select * from Department

create table Department_Employee
(
	Dep_ID int not null primary key,
	Employee_ID int not null,
	Department_ID int not null,
	foreign key (Employee_ID) REFERENCES Employee (Employee_ID),
	foreign key (Department_ID) REFERENCES Department(Department_ID)
)

insert into Department_Employee values
	(11,001,4),
	(22,002,3),
	(33,003,1),
	(44,004,2)

select * from Department_Employee


