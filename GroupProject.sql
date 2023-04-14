CREATE TABLE Contributor (
  ContributorID INT(6) NOT NULL AUTO_INCREMENT,
  Name VARCHAR(30) NOT NULL,
  PRIMARY KEY (ContributorID)
); 

CREATE TABLE Song (
  SongID INT(6) NOT NULL AUTO_INCREMENT,
  Title VARCHAR(30) NOT NULL,
  FileURL VARCHAR(500) NOT NULL,
  PRIMARY KEY (SongID)
); 

CREATE TABLE User (
  UserID INT(6) NOT NULL AUTO_INCREMENT,
  Name VARCHAR(30) NOT NULL,
  PRIMARY KEY (UserID)
); 

CREATE TABLE SongContribution (
  ContributorID INT(6),
  SongID INT(6),
  --Role VARCHAR(30) NOT NULL,
  Role ENUM('artist', 'main artist', 'featured artist', 'writer', 'producer', 'engineer', 'mixer', 'editor', 'composer')
  PRIMARY KEY(ContributorID, Song ID),
  FOREIGN KEY(ContributorID) REFERENCES Contributor(ContributorID),
  FOREIGN KEY(SongID) REFERENCES Song(SongID) 
);

CREATE TABLE Queue (
  UserID INT(6),
  SongID INT(6),
  processing_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PremiumUser BOOLEAN NOT NULL,
  AmountPaid DECIMAL(4,2), 
  PRIMARY KEY(UserID, SongID),
  FOREIGN KEY(UserID) REFERENCES User(UserID),
  FOREIGN KEY(SongID) REFERENCES Song(SongID)  
); 
