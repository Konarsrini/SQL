--drop table test.Employees
--drop schema test
Use NORTHWND
create schema test;
go

create table test.Employees
(
	EmployeeID int not null identity(1,1) primary key,
	LastName nvarchar(75) not null,
	FirstName nvarchar(75) not null,
	HireDate date null default getdate(),
	Department nvarchar(10) not null,
	Salary money not null
);
go

select * from test.Employees