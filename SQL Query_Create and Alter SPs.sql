use FUNDAMENTALS;
go--to continue as batch statement
--===========================================
create procedure dbo.uspCreateArtist
(
	@FirstName as nvarchar(25),
	@LastName as nvarchar(25),
	@StageName as nvarchar(25),
	@BirthDate as date,
	@BirthCountry as nvarchar(45)
)
as
begin
	set nocount on;----number of rows affected in results are withheld

	insert into dbo.Artist(FirstName, LastName, StageName, BirthDate, BirthCountry)
	values(@FirstName,@LastName,@StageName,@BirthDate,@BirthCountry);

	select * from dbo.Artist where ArtistID = @@IDENTITY;
end;
--===========================================
exec dbo.uspCreateArtist 'Taylor','Swift','Taylor Swift','1989-12-13','United States';
go

select * from dbo.Artist 
go

--=====================================================
Use FUNDAMENTALS
go
--===========================================
alter procedure dbo.uspCreateArtist
(
	@FirstName as nvarchar(25),
	@LastName as nvarchar(25),
	@StageName as nvarchar(25),
	@BirthDate as date,
	@BirthCountry as nvarchar(45)
)
as
begin
	set nocount on;----number of rows affected in results are withheld

	insert into dbo.Artist(FirstName, LastName, StageName, BirthDate, BirthCountry)
	values(@FirstName,@LastName,@StageName,@BirthDate,@BirthCountry);

	print @StageName + 'has been inserted into Artist table'
	--select * from dbo.Artist where ArtistID = @@IDENTITY;
end;
go
--===========================================
exec dbo.uspCreateArtist 'James','Arthur','James Arthur','1998-03-02','United Kingdom';
go

Select * from dbo.Artist