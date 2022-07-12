-- Tracks that don't have an album/track association
create view vTracks
as
select Track.Title as [Track], Genre.[Name] as [Genre] from dbo.Track
left join dbo.Genre on Genre.GenreID = Track.GenreID
where AlbumID is null
go

create view vSongsPerAlbum
as
select StageName, Album.Title as [Album], count(Track.Title) as TotalSongs from
dbo.Artist inner join dbo.Album
on Album.ArtistID = Artist.ArtistID
right join dbo.Track on Track.AlbumID = Album.AlbumID
group by StageName, Album.Title
go

------------------------------------------
---Select all data from the Track table---
SELECT *
FROM dbo.Track;
go

---Select 
CREATE VIEW vTotalSongsByAlbum
AS
SELECT
  Artist.StageName,
  Album.Title AS [Album],
  COUNT(*) AS TotalSongs
FROM dbo.Artist
INNER JOIN dbo.Album
  ON Album.ArtistID = Artist.ArtistID
RIGHT JOIN dbo.Track
  ON Track.AlbumID = Album.AlbumID
GROUP BY Artist.StageName,
         Album.Title