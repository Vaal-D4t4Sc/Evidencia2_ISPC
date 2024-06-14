SELECT * FROM Album
WHERE ArtistID = (SELECT ArtistID FROM Artist WHERE Name = 'Bob Marley');
SELECT Song.*
FROM Song
JOIN Album ON Song.AlbumID = Album.AlbumID
JOIN Artist ON Album.ArtistID = Artist.ArtistID
WHERE Artist.Name = 'Bob Marley';
SELECT * FROM Playlist
WHERE UserID = (SELECT UserID FROM User WHERE Username = 'user1');
