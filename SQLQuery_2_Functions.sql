create function dbo.fnGetMyLuckyNumber()
returns int
as
begin
	return 9;
end;
go

select dbo.fnGetMyLuckyNumber();

create function dbo.fnGetTotalSongsbyStateName
(
	@stageName as nvarchar(25)
)
returns int
as 
begin
	declare @totalsongs as int;
	
	select @totalsongs = count(*)
	from dbo.Artist 
	inner join dbo.Album on Album.ArtistID = Artist.ArtistID
	right join dbo.Track on Track.AlbumID = Album.AlbumID
	Where Artist.StageName = @stageName 
	group by Artist.StageName

	return @totalSongs;
end


select dbo.fnGetTotalSongsbyStateName('Usher');

Select Artist.StageName, dbo.fnGetTotalSongsbyStateName(Artist.StageName) as [Total Songs]
from dbo.Artist