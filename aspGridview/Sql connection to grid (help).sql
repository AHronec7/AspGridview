use sandbox
go 


Create Table contactTable
(
	Names varchar(30),
	address varchar(50),
	Phone  Varchar(15),
	state Varchar(20),
	email Varchar(35),
	primary key (Names)
)



Insert into ContactTable
(Names, address, phone, State, email)
VALUES ('Bob Jones', ' SW Chesnut Way', '454-564-7778', 'New Jersey', 'Bjones@yahoo.com'),
	   ('Mark Hamon', ' 3334 NW Johnson Ave', '434-444-9080', 'Georgia', 'HamonMark@outlook.com'),
	   ('Cory Sharp', '454 Meadow Lane', '352-677-6544', 'Florida', 'Corys@gmail.com'),
	   ('Molly Hatchet', '55 Sharpen Terrace', '564-333-3543', 'Wyoming', 'MollyH@yahoo.com')

GO 

Create proc Newuser
(
	@names varchar(30),
	@address varchar(30),
	@phonenumber varchar(15),
	@state  varchar(35),
	@email  Nvarchar(50)
)
AS
BEGIN
	INSERT INTO ContactTable
(
	[names],[address],[phone], [state], [email]
)

Values (@names, @address, @phonenumber, @state, @email)
END 
 

 select * from contactTable



