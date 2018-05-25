use master;
go
drop database if exists Bank;
go
create database Bank;
go
use Bank;
go
drop table if exists Savings
go
create table Savings (
	Id int not null Identity(1,1) Primary Key,
	Date DateTime not null,
	Memo nvarchar(80),
	Amount decimal(11,2) not null
);
go

go
create procedure AddSavings
	@Date DateTime,
	@Memo nvarchar(80),
	@Amount decimal(11,2)
as
BEGIN

insert into Savings (Date, Memo, Amount)
	values (@Date, @Memo, @Amount);

END
go
create procedure RemoveSavings
	@Date DateTime,
	@Memo nvarchar(80),
	@Amount decimal(11,2)
as
BEGIN

delete from Savings where Date = @Date and Memo = @Memo and Amount = @Amount;

END
go
create procedure BalanceSavings
as
BEGIN

Select SUM(Amount) as Total from Savings;

END
go
create procedure PrintSavings
as
BEGIN

select * from Savings
union all
Select null, GETDATE(), 'Total', SUM(Amount) as Total from Savings;

END
go
exec AddSavings '2017-01-01', 'Initial Deposit', 500;
exec AddSavings '2017-02-15', 'Deposit Check', 250;
exec AddSavings '2017-03-07', 'Car Payment', -175;
exec AddSavings '2017-04-11', 'Deposit Birthday Money', 200;
exec AddSavings '2017-05-25', 'Pay Deposit on new Stereo', -50;
exec AddSavings '2019-12-31', 'Deposit Lotto Winnners', 1000000;
go
exec RemoveSavings '2019-12-31', 'Deposit Lotto Winnners', 1000000;
go
exec BalanceSavings;
go
exec PrintSavings;
go