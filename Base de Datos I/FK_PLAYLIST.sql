ALTER TABLE mellon.playlist
ADD CONSTRAINT playlist_ibfk_1
    FOREIGN KEY (UserID)
    REFERENCES mellon.user (UserID),
ADD  CONSTRAINT artist
    FOREIGN KEY (PlaylistID)
    REFERENCES mellon.artist (ArtistID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
ADD  CONSTRAINT song
    FOREIGN KEY (PlaylistID)
    REFERENCES mellon.song (SongID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
    ;
