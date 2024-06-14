CREATE DATABASE IF NOT EXISTS mellon;
USE mellon;

CREATE TABLE IF NOT EXISTS mellon.artist (
  ArtistID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(255) NOT NULL,
  Genre VARCHAR(100) NULL DEFAULT NULL,
  ArtistID INT NULL DEFAULT NULL,
  PRIMARY KEY (ArtistID),
  INDEX (ArtistID ASC) VISIBLE,
  FOREIGN KEY (FK_songID) 
    REFERENCES mellon.album (AlbumID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

SELECT * FROM mellon.artist;
	INSERT INTO artist VALUES (null, 'Intoxicados','punk');
	INSERT INTO artist VALUES (null, 'Patricio Rey y los redondos','rock');
	INSERT INTO artist VALUES (null, 'Los Tipitos','rock');
	INSERT INTO artist VALUES (null, 'Bob Marley','reagge');
	INSERT INTO artist VALUES (null, 'Led Zeppelin','rock');   
   
   
CREATE TABLE IF NOT EXISTS mellon.album (
  AlbumID INT NOT NULL AUTO_INCREMENT,
  Title VARCHAR(255) NOT NULL,
  ReleaseYear VARCHAR(100) NULL DEFAULT NULL,
  ArtistID INT NULL DEFAULT NULL,
  PRIMARY KEY (AlbumID),
  INDEX (ArtistID ASC) VISIBLE,
  FOREIGN KEY (ArtistID) 
    REFERENCES mellon.artist (ArtistID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

SELECT * FROM mellon.album;

INSERT INTO Album VALUES (null,'Otro dia en el planeta Tierra', '2005', null);
INSERT INTO album VALUES (null, 'Oktubre', '2008', null);
INSERT INTO Album VALUES (null,'Armando Camaleon', '2004', null);
INSERT INTO Album VALUES (null,'Exodus', '1977', null);
INSERT INTO Album VALUES (null,'Led Zeppellin', '1969', null);


CREATE TABLE IF NOT EXISTS mellon.user (
  UserID INT NOT NULL AUTO_INCREMENT,
  Username VARCHAR(50) NOT NULL,
  Email VARCHAR(255) NULL  NULL,
  Password VARCHAR(255) NOT NULL,
  RegistrationDate DATE NULL DEFAULT NULL,
  PRIMARY KEY (UserID),
  UNIQUE INDEX Email (Email ASC) VISIBLE,
  FOREIGN KEY (ArtistID) 
    REFERENCES mellon.artist (ArtistID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
SELECT * FROM mellon.user;

INSERT INTO Album VALUES (null,'Val', 'flash@a.com', '123', null);
INSERT INTO Album VALUES (null,'Luk', 'mood@a.com', '123', null);
INSERT INTO Album VALUES (null,'Fran', 'rain@a.com', '123', null);
INSERT INTO Album VALUES (null,'Num', 'cloud@a.com', '123', null);


CREATE TABLE IF NOT EXISTS mellon.song (
  SongID INT NOT NULL AUTO_INCREMENT,
  Title VARCHAR(255) NOT NULL,
  Length TIME NULL DEFAULT NULL,
  AlbumID INT NULL DEFAULT NULL,
  PRIMARY KEY (SongID),
  INDEX (AlbumID ASC) VISIBLE,
  CONSTRAINT song_ibfk_1
   FOREIGN KEY (AlbumID) 
    REFERENCES mellon.album (AlbumID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

SELECT * FROM mellon.song;

INSERT INTO song VALUES (null, 'Fuego', '00:04:30', null);
INSERT INTO song VALUES (null, 'Jijiji', '00:06:03', null);
INSERT INTO song VALUES (null, 'Brujeria', '00:03:10', null);
INSERT INTO song VALUES (null, 'Natural Mystic', '00:03:27', null);
INSERT INTO song VALUES (null, 'Good Times Bad Times', '00:02:46', null);


CREATE TABLE IF NOT EXISTS mellon.playlist (
  PlaylistID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(50) NOT NULL,
  UserID INT NULL DEFAULT NULL,
 PRIMARY KEY (PlaylistID),
 INDEX UserID (UserID ASC) VISIBLE,
 CONSTRAINT playlist_ibfk_1
    FOREIGN KEY (UserID)
    REFERENCES mellon.user (UserID),
 CONSTRAINT artist
    FOREIGN KEY (PlaylistID)
    REFERENCES mellon.artisT (Artist)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT song
    FOREIGN KEY (PlaylistID)
    REFERENCES mellon.song (SongID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);


SELECT * FROM mellon.playlist;

INSERT INTO playlist VALUES (null,'Lokura', null);
insert into playlist values (null, 'Fiesta', null);
insert into playlist values (null, 'Dormir', null);
INSERT INTO playlist VALUES (null,'Tranqui', null);
