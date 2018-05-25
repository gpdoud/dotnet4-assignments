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
		(2017-01-01, 'Initial Deposit', 500)
	insert into savings
		(date, memo, amount)
		values
		(2017-02-15, 'Deposit check', 250)
	insert into savings
		(date, memo, amount)
		values
		(2017-03-07, 'Car Payment', -175)
	insert into savings
		(date, memo, amount)
		values
		(2017-04-11, 'Deposit birthday money', 200)
	insert into savings
		(date, memo, amount)
		values
		(2017-05-251, 'Pay deposit on new stereo', -50)
	insert into savings
		(date, memo, amount)
		values
		(2019-12-31, 'Deposit Lotto winners', 1000000)
	END
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
select format(date, 'd') as 'Date',
		Memo, 
		format(amount, 'C') as 'Amount'
from savings order by date;