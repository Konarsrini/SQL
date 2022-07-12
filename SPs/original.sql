

USE [FUNDAMENTALS]
GO

create procedure [dbo].[uspCreateArtist]
(
	@FirstName as nvarchar(25),
    @LastName as nvarchar(25),
	@StageName as nvarchar(25),
	@BirthDate as date,
	@BirthCountry as nvarchar(45)
)
as
begin
	set nocount on;

	insert into dbo.Artist(FirstName, LastName, StageName, BirthDate, BirthCountry)
	values (@FirstName, @LastName, @StageName, @BirthDate, @BirthCountry);

	select * from dbo.Artist where ArtistID = @@IDENTITY;
end;
GO

