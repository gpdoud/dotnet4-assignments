use [SqlTutorial]
go

--Create table
Create table Savings
(
	id int not null identity(1,1) primary key,
	Date date not null,
	memo nvarchar(80) not null,
	amount decimal(9,2) not null
);

go

--Populate the table
insert into Savings
	(Date,memo,amount)
Values
	('2017-01-01', 'Initial Deposit', +500.00),
	('2017-02-15', 'Deposit check', +250.00),
	('2017-03-07', 'Car payment', -175.00),
	('2017-04-11', 'Deposit birthday money', +200.00),
	('2017-05-25', 'Pay deposit on new stereo', -50.00),
	('2019-12-31', 'Deposit Lotto winners', +1000000.00);

go

--Update car payment
update Savings
set amount = -200 
where memo = 'Car payment' and amount = -175

go
--Remove the Lotto winners row
delete from Savings
where memo = 'Deposit Lotto winners'

go

--Find the balance of the account
Select sum(amount) as 'Balance of account'
from Savings

