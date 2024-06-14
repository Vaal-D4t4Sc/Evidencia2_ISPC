SELECT song.Title AS SongTitle, album.Title AS AlbumTitle, artist.Name AS ArtistName, album.ReleaseYear 

FROM song 

INNER JOIN album ON song.AlbumID = album.AlbumID 

INNER JOIN artist ON album.ArtistID = artist.ArtistID 

WHERE album.ReleaseYear > 2000;