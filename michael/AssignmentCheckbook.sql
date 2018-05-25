/*
1) Create any new database or use the SqlLesson database
*/
--using SqlTutorialDatabase

------------------------------------------------------
/*
2) Create the Savings table with these columns
  a) Date of type DateTime
  b) Memo of type string with max length 80
  c) Amount of type decimal with 2 decimal points
*/
create table Savings
(
	Date datetime not null,
	Memo nvarchar(80),
	Amount decimal (12,2)
);
go

------------------------------------------------------
/*
3) Add the rows that follow using SQL Insert statements
  a) 2017-01-01, "Initial Deposit", +500.00
  b) 2017-02-15, "Deposit check", +250.00
  c) 2017-03-07, "Car payment", -175.00  
  d) 2017-04-11, "Deposit birthday money", +200.00
  e) 2017-05-25, "Pay deposit on new stereo", -50.00
  f) 2019-12-31, "Deposit Lotto winners", +1000000.00
*/
insert into Savings
	(Date, Memo, Amount)
values
	(2017-01-01, 'Initial Deposit', 500.00),
	(2017-02-15, 'Deposit check', 250.00),
	(2017-03-07, 'Car payment', -175.00),
	(2017-04-11, 'Deposit birthday money', 200.00),
	(2017-05-25, 'Pay deposit on new stereo', -50.00),
	(2019-12-31, 'Deposit Lotto winners', 1000000.00);
go

------------------------------------------------------
/*
4) Change the "Car payment" amount to -200.00
*/
update Savings
set
	Amount = -200
 where
	memo = 'Car payment';
go

------------------------------------------------------
/*
5) Remove the "Deposit Lotto winners" row
*/
delete from Savings
where
	memo = 'Deposit Lotto winners';
go

------------------------------------------------------
/*
6) Using a SQL function, calculate the balance of the account
*/
select sum(amount) as 'Balance' from Savings;
go

------------------------------------------------------
select * from Savings;
