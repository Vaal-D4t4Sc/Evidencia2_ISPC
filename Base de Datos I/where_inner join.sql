SELECT * 
FROM song 
INNER JOIN album ON song.albumID = album.albumID 
INNER JOIN artist ON album.artistID = artist.artistID 
WHERE album.name = 'Led Zeppellin'; 
