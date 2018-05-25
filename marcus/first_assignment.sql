drop table if exists savings;
go
create table savings (
	date datetime,
	memo nvarchar(80),
	amount decimal(10, 2)
);
go
drop procedure if exists addsavings;
go
create procedure addsavings
	as 
	BEGIN
	insert into savings
		(date, memo, amount)
		values
		('01-01-2017', 'Initial Deposit', 500)
	insert into savings
		(date, memo, amount)
		values
		('02-15-2017', 'Deposit check', 250)
	insert into savings
		(date, memo, amount)
		values
		('03-07-2017', 'Car Payment', -175)
	insert into savings
		(date, memo, amount)
		values
		('04-11-2017', 'Deposit birthday money', 200)
	insert into savings
		(date, memo, amount)
		values
		('05-25-2017', 'Pay deposit on new stereo', -50)
	insert into savings
		(date, memo, amount)
		values
		('12-31-2019', 'Deposit Lotto winners', 1000000)
	END;
go
exec addsavings;
go
update savings 
	set 
		amount = -200
	where 
		memo = 'Car payment';
go
delete from savings	where memo = 'Deposit Lotto winners';
go
select sum(amount) as 'Sum of Amt' from savings;
go
select format(date, 'D') as 'Date',
		Memo, 
		format(amount, 'C') as 'Amount'
		from savings order by date;