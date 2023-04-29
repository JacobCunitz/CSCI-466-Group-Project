CREATE TABLE Contributor (
  ContributorID INT(6) NOT NULL AUTO_INCREMENT,
  Name VARCHAR(30) NOT NULL,
  PRIMARY KEY (ContributorID)
); 

CREATE TABLE Song (
  SongID INT(6) NOT NULL AUTO_INCREMENT,
  Title VARCHAR(30) NOT NULL,
  Description VARCHAR(100),
  FileURL VARCHAR(500) NOT NULL,
  PRIMARY KEY (SongID)
); 

CREATE TABLE User (
  UserID INT(6) NOT NULL AUTO_INCREMENT,
  Name VARCHAR(30) NOT NULL,
  UserName VARCHAR(30) NOT NULL,
  Password VARCHAR(30) NOT NULL,
  DJ BOOLEAN NOT NULL,
  PRIMARY KEY (UserID)
); 

CREATE TABLE SongContribution (
  ContributorID INT(6),
  SongID INT(6),
  Role ENUM('artist', 'main artist', 'featured artist', 'writer', 'producer', 'engineer', 'mixer', 'editor', 'composer'),
  PRIMARY KEY(ContributorID, SongID),
  FOREIGN KEY(ContributorID) REFERENCES Contributor(ContributorID),
  FOREIGN KEY(SongID) REFERENCES Song(SongID) 
);

CREATE TABLE Queue (
  QueueID INT(6) AUTO_INCREMENT,
  UserID INT(6),
  SongID INT(6),
  processing_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PremiumUser BOOLEAN NOT NULL,
  AmountPaid DECIMAL(4,2), 
  PRIMARY KEY(QueueID),
  FOREIGN KEY(UserID) REFERENCES User(UserID),
  FOREIGN KEY(SongID) REFERENCES Song(SongID)  
); 
