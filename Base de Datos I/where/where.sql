SELECT * FROM Album WHERE ArtistID = ( SELECT ArtistID FROM Artist WHERE Name ='Bob Marley' ); 
