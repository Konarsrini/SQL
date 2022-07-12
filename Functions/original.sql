
USE [FUNDAMENTALS]
GO

create function [dbo].[fnGetMyLuckyNumber]()
returns int
as
begin
	return 9;
end;
GO

CREATE function [dbo].[fnGetTotalSongsByStageName]
(
	@stageName as nvarchar(25)
)
returns int
as
begin
	declare @totalSongs as int;

	select
		@totalSongs = count(*)
	from dbo.Artist
	inner join dbo.Album
		on Album.ArtistID = Artist.ArtistID
	right join dbo.Track
		on Track.AlbumID = Album.AlbumID
	where Artist.StageName = @stageName
	group by Artist.StageName;

	return @totalSongs * 10;
end
GO


