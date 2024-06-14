-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS mellon;
USE mellon;

-- Crear la tabla artist
CREATE TABLE IF NOT EXISTS artist (
  ArtistID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(255) NOT NULL,
  Genre VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (ArtistID)
);

-- Insertar datos en la tabla artist
INSERT INTO artist (Name, Genre) VALUES ('Intoxicados', 'punk');
INSERT INTO artist (Name, Genre) VALUES ('Patricio Rey y los redondos', 'rock');
INSERT INTO artist (Name, Genre) VALUES ('Los Tipitos', 'rock');
INSERT INTO artist (Name, Genre) VALUES ('Bob Marley', 'reggae');
INSERT INTO artist (Name, Genre) VALUES ('Led Zeppelin', 'rock');

-- Crear la tabla album
CREATE TABLE IF NOT EXISTS album (
  AlbumID INT NOT NULL AUTO_INCREMENT,
  Title VARCHAR(255) NOT NULL,
  ReleaseYear VARCHAR(100) NULL DEFAULT NULL,
  ArtistID INT NULL DEFAULT NULL,
  PRIMARY KEY (AlbumID),
  INDEX (ArtistID ASC) VISIBLE,
  FOREIGN KEY (ArtistID) 
    REFERENCES artist (ArtistID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Insertar datos en la tabla album
INSERT INTO album (Title, ReleaseYear, ArtistID) VALUES ('Otro dia en el planeta Tierra', '2005', null);
INSERT INTO album (Title, ReleaseYear, ArtistID) VALUES ('Oktubre', '2008', null);
INSERT INTO album (Title, ReleaseYear, ArtistID) VALUES ('Armando Camaleon', '2004', null);
INSERT INTO album (Title, ReleaseYear, ArtistID) VALUES ('Exodus', '1977', null);
INSERT INTO album (Title, ReleaseYear, ArtistID) VALUES ('Led Zeppelin', '1969', null);

-- Crear la tabla user
CREATE TABLE IF NOT EXISTS user (
  UserID INT NOT NULL AUTO_INCREMENT,
  Username VARCHAR(50) NOT NULL,
  Email VARCHAR(255) NULL,
  Password VARCHAR(255) NOT NULL,
  RegistrationDate DATE NULL DEFAULT NULL,
  PRIMARY KEY (UserID),
  UNIQUE INDEX Email (Email ASC) VISIBLE
);

-- Insertar datos en la tabla user
INSERT INTO user (Username, Email, Password, RegistrationDate) VALUES (null,'Val', 'flash@a.com', '123', null);
INSERT INTO user (Username, Email, Password, RegistrationDate) VALUES (null,'Luk', 'mood@a.com', '123', null);
INSERT INTO user (Username, Email, Password, RegistrationDate) VALUES (null,'Fran', 'rain@a.com', '123', null);
INSERT INTO user (Username, Email, Password, RegistrationDate) VALUES (null,'Num', 'cloud@a.com', '123', null);

-- Crear la tabla song
CREATE TABLE IF NOT EXISTS song (
  SongID INT NOT NULL AUTO_INCREMENT,
  Title VARCHAR(255) NOT NULL,
  Length TIME NULL DEFAULT NULL,
  AlbumID INT NULL DEFAULT NULL,
  PRIMARY KEY (SongID),
  INDEX (AlbumID ASC) VISIBLE,
  FOREIGN KEY (AlbumID) 
    REFERENCES album (AlbumID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Insertar datos en la tabla song
INSERT INTO song (Title, Length, AlbumID) VALUES ('Fuego', '00:04:30', null);
INSERT INTO song (Title, Length, AlbumID) VALUES ('Jijiji', '00:06:03', null);
INSERT INTO song (Title, Length, AlbumID) VALUES ('Brujeria', '00:03:10', null);
INSERT INTO song (Title, Length, AlbumID) VALUES ('Natural Mystic', '00:03:27', null);
INSERT INTO song (Title, Length, AlbumID) VALUES ('Good Times Bad Times', '00:02:46', null);

-- Crear la tabla playlist
CREATE TABLE IF NOT EXISTS playlist (
  PlaylistID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(50) NOT NULL,
  UserID INT NULL DEFAULT NULL,
  PRIMARY KEY (PlaylistID),
  INDEX (UserID ASC) VISIBLE,
  FOREIGN KEY (UserID)
    REFERENCES user (UserID)
);

-- Insertar datos en la tabla playlist
INSERT INTO playlist (Name, UserID) VALUES ('Lokura', 1);
INSERT INTO playlist (Name, UserID) VALUES ('Fiesta', 2);
INSERT INTO playlist (Name, UserID) VALUES ('Dormir', 3);
INSERT INTO playlist (Name, UserID) VALUES ('Tranqui', 4);
