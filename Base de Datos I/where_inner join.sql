SELECT *
FROM song
INNER JOIN album ON song.AlbumID = album.AlbumID
INNER JOIN artist ON album.ArtistID = artist.ArtistID
WHERE album.Title = 'Led Zeppelin';
