SELECT album.*, artist.name AS artist_name 

FROM album 

INNER JOIN artist ON album.artistID = artist.artistID 

WHERE artist.name = 'Led Zeppellin';