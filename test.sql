/* Execute a `select` query */
select * from Album limit 5;

/* Execute a table join */
select Title, Name from Album
join Artist on Album.ArtistId = Artist.ArtistId
limit 5;

/* Execute an insert */
insert into Genre (Name) values ('Trad');

/* Show the last insert performed */
SELECT LAST_INSERT_ID();

/* Filter data using `where` */
select * from Genre where GenreId = 26;

/* Update a record */
update Genre set Name = 'Traditional' where Name = 'Trad';

/* Execute another select query */
select * from Genre;

/* Execute a delete query */
delete from Genre where Name = 'Traditional';

/* Try to select the record that was just deleted */
select * from Genre where Name = 'Traditional';

/*Create a Query that shows: The name of a track, the name of it's MediaType, and the name of it's genre. 
You'll need to join 3 tables together with the appropriate join columns. Add a filter to only show tracks 
with a MediaType of "Protected AAC audio file" and a Genre of "Soundtrack".*/

select Track.Name as Track, MediaType.Name as MediaType, Genre.Name as Genre from Track
    -> Inner Join MediaType on Track.MediaTypeId = MediaType.MediaTypeId
    -> Inner Join Genre on Track.GenreId= Genre.GenreId
    -> where MediaType.Name ="Protected AAC audio file" and Genre.Name="Soundtrack";
+---------------+--------------------------+------------+

/*Filter to only show results for the 'Grunge' playlist*/
SELECT Playlist.Name AS Playlist, Track.Name AS Track, Album.Title AS Album, Artist.Name AS Artist FROM Playlist
INNER JOIN PlaylistTrack ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
JOIN Track ON PlaylistTrack.TrackId = Track.TrackId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist on Album.ArtistId = Artist.ArtistId
WHERE Playlist.Name = 'Grunge';