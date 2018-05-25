drop table savings
go
create table Savings
(
	Date datetime,
	memo nvarchar(80),
	amount decimal(10,2)
);


insert into Savings
(Date,memo,amount)
values
(2017-01-01,'Inital Deposit',+500.00)
insert into Savings
(Date,memo,amount)
values
(2017-02-15,'Deposit check',+250.00)
insert into Savings
(Date,memo,amount)
values
(2017-03-07,'Car Payment',-175.00)
insert into Savings
(Date,memo,amount)
Values
(2017-04-11,'Deposit birthday money',+200.00)
insert into Savings
(Date,memo,amount)
values
(2017-05-25,'Pay deposit on new stereo',-50)
insert into Savings
(Date,memo,amount)
values
(2019-12-31,'Deposit looto wiiners',+1000000.00)


update Savings set amount=-200 where Date= 2017-03-07

delete from Savings
where amount=+1000000.00
select sum(amount) from Savings