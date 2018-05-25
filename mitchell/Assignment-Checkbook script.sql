drop table savings

create table Savings (
	Id int not null primary key identity(1,1),
	[Date] datetime not null,
	Memo nvarchar(80) not null,
	Amount decimal(10,2)
)
go

--create procedure addentry
--	@date datetime,
--	@memo nvarchar(80),
--	@amount decimal(10,2)
--as
--begin
--	insert into savings
--	([date], memo, amount)
--	values
--	(@date, @memo, @amount)
--end

exec addentry '2017-01-01', 'Initial Deposit', '500'
exec addentry '2017-02-15', 'Deposit Check', '250'
exec addentry '2017-03-07', 'Car Payment', '-175'
exec addentry '2017-04-11', 'Deposit Birthday Money', '200'
exec addentry '2017-05-25', 'Pay deposit on new Stereo', '-50'
exec addentry '2019-12-31', 'Deposit Lotto winners', '1000000'

go

update savings set
	amount = -200
		where memo = 'car payment'

delete from savings
	where memo='deposit lotto winners'

go

select sum(amount) from savings