-- Create table User
CREATE TABLE User (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Password VARCHAR(100) NOT NULL,
    Born DATE,
    Country VARCHAR(50)
    Preferences INT
    FOREIGN KEY (email) REFERENCES User(UserID)
    FOREIGN KEY (User) REFERENCES User(PlanID)
);

-- Create table user
CREATE TABLE user (
    PlanID INT AUTO_INCREMENT PRIMARY KEY
    Subscription VARCHAR(50) NOT NULL,
    Payment VARCHAR(45) NOT NULL,
    Expiry DATE,
    Registration DATE
    FOREIGN KEY (UserID) REFERENCES User(UserID)
    FOREIGN KEY (email) REFERENCES User(UserID)
);	

-- Create table like
CREATE TABLE like (
    LikeID INT,
    Repetition VARCHAR(45),
    Priority VARCHAR(45)
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

-- Create table Genre
CREATE TABLE genre (
    GenreID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

-- Create table Artist
CREATE TABLE Artist (
    ArtistID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Country VARCHAR(50)
    Biography VARCHAR(45)
    FOREIGN KEY (GenreID) REFERENCES Genre(GenreID),
    FOREIGN KEY (AlbumID) REFERENCES Album(AlbumID),
    FOREIGN KEY (SongID) REFERENCES Song(SongID),
);

-- Create table album
CREATE TABLE Album (
    AlbumID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    release YEAR,
    ArtistID INT,
    GenreID INT,
    FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID),
    FOREIGN KEY (GenreID) REFERENCES Genre(GenreID)
);

-- Create table song
CREATE TABLE song (
    SongID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    length TIME,
    AlbumID INT,
    ArtistID INT,
    FOREIGN KEY (AlbumID) REFERENCES Album(AlbumID),
    FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID)
    FOREIGN KEY (GenreID) REFERENCES Genre(GenreID)
);

-- create table playlist
CREATE TABLE playlist (
    PlaylistID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Creation date DATE,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);


