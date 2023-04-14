CREATE TABLE Contributor(
  ContributorID INT(6) NOT NULL AUTO_INCREMENT,
  Name CHAR(30) NOT NULL,
  Role CHAR(20) NOT NULL,
  PRIMARY KEY (ContributorID)
); 

CREATE TABLE Song (
  SongID INT(6) NOT NULL AUTO_INCREMENT,
  Title CHAR(15) NOT NULL,
  File CHAR(10) NOT NULL,
  Artist CHAR(30) NOT NULL,
  PRIMARY KEY (SongID)
); 

CREATE TABLE User (
  UserID INT(6) NOT NULL AUTO_INCREMENT,
  Name CHAR(20) NOT NULL,
  PRIMARY KEY (UserID)
); 

CREATE TABLE SongContribution(
     ContributorID INT(6),
     SongID INT(6),
     PRIMARY KEY(ContributorID, SongID),
     FOREIGN KEY(ContributorID)REFERENCES Contributor(ContributorID),
     FOREIGN KEY(SongID) REFERENCES Song(SongID)  );

CREATE TABLE Queue(
  UserID INT(6),
  SongID INT(6),
  Timestamp CHAR(15) NOT NULL,
  PremiumUser CHAR(3) NOT NULL,
  AmountPaid DECIMAL(19,2), 
  PRIMARY KEY(UserID, SongID),
  FOREIGN KEY(UserID) REFERENCES User(UserID),
  FOREIGN KEY(SongID) REFERENCES Song(SongID)  );
