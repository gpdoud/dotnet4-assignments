use master;
go
drop database if exists SQLCAPSTONE;
go
use SQLCAPSTONE
create database PRSSQLCapstone

--Create table  [User](
--	ID int not null identity(737,719) primary key,
--	UserName nvarchar(30) not null unique,
--	[Password] nvarchar(30) not null,
--	FirstName nvarchar(30) not null,
--	LastName nvarchar(30) not null,
--	Phone nvarchar(30) not null,
--	Email nvarchar(255) not null,
--	isReviewer bit default 0,
--	IsAdmin bit default 0,
--	Active bit default 1
--	)
--	select * from [user]


	--create table Vendor(
	--id int not null identity(1,1) primary key,
	--Code nvarchar(30) not null unique index,
	--[name] nvarchar(255) not null,
	--[Address] nvarchar(255) not null,
	--City nvarchar(255) not null,
	--[State] nvarchar(2) not null,
	--zip nvarchar(5) not null,
	--phone nvarchar(255) not null,
	--Email nvarchar(255) not null,
	--IsPreApproved bit not null default 0,
	--Active bit not null default 1
	--);
	--go

	--insert into Vendor(code, [name],[address],city,[state], zip, phone, email, ispreapproved, active)
	--values ('WTF', 'Waldo''s The Favaorite', ' 991 Somewhere Pl', 'Orlando', 'FL', '12345', '888-555-1334', 'BlahBlah@WTF.COM', 1, 1);

	--insert into Vendor(code, [name],[address],city,[state], zip, phone, email, ispreapproved, active)
	--values ('FTW', 'Fancy Timeless Watches', ' 4719 Somewhere St', 'Ocala', 'FL', '34434', '888-555-1234', 'BlahBlah@FTW.COM', 1, 1);

	--insert into Vendor(code, [name],[address],city,[state], zip, phone, email, ispreapproved, active)
	--values ('ATM', 'All The Money', ' 1995 Before St', 'San Diego', 'CA', '91945', '881-515-1234', 'BlahBlah@ATM.COM', 1, 1);

	

	create unique index Code_index on Vendor(code);
	go

	select * from vendor
	--create table Product(
	--	Id int not null identity(1,1) primary key,
	--	vendorid int not null foreign key references Vendor(id),
	--	PartNumber nvarchar(50) not null unique,
	--	[Name] nvarchar(150) not null,
	--	Price decimal(10,2) not null,
	--	Unit nvarchar(255) not null,
	--	PhotoPath nvarchar(255),
	--	Active bit not null default 1);


	--alter procedure FillProduct
	--@VendorID int = null,
	--@PartNumber nvarchar(50) = null,
	--@name nvarchar(150) = null,
	--@price decimal(10,2) = null,
	--@unit nvarchar(255) = null
	--as
	--BEGIN

	--insert into product(VendorId, PartNumber, [Name], Price, Unit)
	--	values(@VendorID, @partnumber, @name, @price, @unit);
	--END
	--GO
	--EXEC FillProduct 3, '9', 'Collector''s Penny', 2.95, 'A mint condition penny and for only a nickle under three dolars!';
	--GO
	--exec fillproduct 3, '7', 'Collector''s Nickle', 3.95, 'A mint condition Nickle!';
	--go
	--exec fillproduct 3, '8', 'Collector''s Dime', 5.95, 'A mint condition Dime!';
	--go
	



		--create table purchaserequest(
		--id int not null identity(1,1) primary key,
		--UserId int foreign key references [user](id),
		--description nvarchar(100) not null,
		--justification nvarchar (255) not null,
		--deliverymode nvarchar(25) not null,
		--status nvarchar(10) not null default 'NEW',
		--Total decimal(10,2) not null default 0,
		--active bit not null default 1,
		--reasonforrejection nvarchar(100)
		--);


		--create table PurchaseRequestLineItem(
		--id int not null identity(1,1) primary key,
		--PurchaseRequestId int foreign key references purchaserequest(id),
		--productId int foreign key references product(id),
		--quantitiy int not null default 1,
		--active bit
		--);
