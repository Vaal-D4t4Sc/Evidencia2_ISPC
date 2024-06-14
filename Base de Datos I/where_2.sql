SELECT Song.* FROM Song JOIN Album ON Song.AlbumID = Album.AlbumID JOIN Artist 
  ON Album.ArtistID = Artist.ArtistID WHERE Artist.Name = 'Bob Marley';  
