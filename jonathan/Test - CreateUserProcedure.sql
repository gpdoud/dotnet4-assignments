Alter procedure AddCustomer
	@Usr Nvarchar(40),
	@Psswrd Nvarchar(40),
	@Frstnme Nvarchar(40),
	@Lstnme Nvarchar(40),
	@Phne Nvarchar(12),
	@eml Nvarchar(40),
	@isrvwr bit = 0,
	@isadmn bit = 0,
	@Actve bit = 1

As
Begin
	Insert into [User]
		(Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin, Active)
	values
		(@Usr,@Psswrd,@Frstnme,@Lstnme,@Phne,@eml,@isrvwr,@isadmn,@Actve)
End
go
exec AddCustomer 'Doug', '1','Doug','Wilson','589-681-3287','DoodleDog@DogPaws.net',0,0,1;

select * from [User]