use Checkbook;
go
drop database if exists Checkbook;
go
use Checkbook


create table Savings(
	ID int not null identity(1,1) primary key,
	[Date] datetime not null,
	Memo nvarchar(80) not null,
	Amount decimal(12,2) not null
);
go

create procedure TransactionSavings
	@Date datetime = null,
	@Memo nvarchar(80)= null,
	@Amount decimal(12,2)=null
	as
	BEGIN
insert into Savings
	([Date],Memo, Amount)
	values 
	(@Date, @Memo, @Amount)

	END
	go
exec TransactionSavings '2017-01-01', 'Initial Deposit', 500.00;
go 
exec TransactionSavings '2017-02-15', 'Deposit Check', 250.00;
go
exec TransactionSavings '2017-03-07', 'Car Payment', -1750.00;
go
exec TransactionSavings '2017-04-11', 'Deposit birthday money', 200.00;
go
exec  TransactionSavings '2017-05-25', 'Pay deposit on new stereo',- 50.00;
go
exec TransactionSavings '2019-12-31', 'Deposit Lotto winnings', 1000000.00;
go

create procedure MakeCorrection
@NewAmount decimal(12,2) = null,
@ID int = null
as
begin
update savings 
set amount = @NewAmount where id= @id
end
go

exec MakeCorrection -200.00, 3;
go

delete from savings where memo= 'Deposit Lotto Winnings';
go

select * from savings
