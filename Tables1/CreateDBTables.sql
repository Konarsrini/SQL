
CREATE DATABASE FUNDAMENTALS;
GO


use FUNDAMENTALS;
go

create table dbo.Artist
(
	ArtistID int identity(1,1) not null primary key,
	FirstName nvarchar(25) not null,
	LastName nvarchar(25) not null,
	StageName nvarchar(25) null,
	BirthDate date null,
	BirthCountry nvarchar(45) null
);

create table dbo.Genre
(
	GenreID int identity(1,1) not null primary key,
	[Name] nvarchar(25) not null
);

create table dbo.Album
(
	AlbumID int identity(1,1) not null primary key,
	ArtistID int not null foreign key references dbo.Artist (ArtistID),
	Title nvarchar(45) not null,
	ReleaseDate date not null
);

create table dbo.Track
(
	TrackID int identity(1,1) not null primary key,
	AlbumID int null foreign key references dbo.Album (AlbumID),
	GenreID int null foreign key references dbo.Genre (GenreID),
	Title nvarchar(45) not null,
	TrackNumber tinyint null default 0 check (TrackNumber between 1 and 25)
);