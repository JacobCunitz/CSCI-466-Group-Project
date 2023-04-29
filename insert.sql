INSERT INTO Contributor (Name) VALUES ('testname1');
INSERT INTO Contributor (Name) VALUES ('testname2');

INSERT INTO Song (Title, Description, FileURL) VALUES ('Test Song 1', 'solo', 'http://example.com/test1.mp3');
INSERT INTO Song (Title, Description, FileURL) VALUES ('Test Song 1', 'duet', 'http://example.com/test2.mp3');
INSERT INTO Song (Title, Description, FileURL) VALUES ('Test Song 2', '', 'http://example.com/test3.mp3');

INSERT INTO User (Name, UserName, Password, DJ) VALUES ('testname1', 'DJ', 'password', 1);
INSERT INTO User (Name, UserName, Password, DJ) VALUES ('testname1', 'USER', 'password', 0);

INSERT INTO SongContribution (ContributorID, SongID, Role) VALUES (1, 1, 'artist');
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUES (2, 1, 'producer');

INSERT INTO Queue (UserID, SongID, PremiumUser, AmountPaid) VALUES (1, 1, TRUE, 9.99);
INSERT INTO Queue (UserID, SongID, PremiumUser, AmountPaid) VALUES (2, 2, FALSE, 0.00);
/*
#INSERTING 7 SONGS AND 2 USERS, STILL NEED TO HANDLE CONTRIBUTORS - JACOB C
INSERT INTO User
      (Name, UserName, Password, DJ)
      VALUES('Stacy Smith', 'USER', 'password', FALSE);

INSERT INTO User
      (Name, UserName, Password, DJ)
      VALUES('John Doe', 'USER', 'password', FALSE);

INSERT INTO User
      (Name, UserName, Password, DJ)
      VALUES('James Kelsey', 'DJ', 'password', TRUE);

INSERT INTO Song
      (Title, FileURL)
      VALUES('Stairway to Heaven',
             'Original');
INSERT INTO Song
      (Title, FileURL)
      VALUES('Back in Black',
             'Original');
INSERT INTO Song
      (Title, FileURL)
      VALUES('Sundress',
             'Original');
INSERT INTO Song
      (Title, FileURL)
      VALUES('Nights',
             'Original');
INSERT INTO Song
      (Title, FileURL)
      VALUES('Redbone',
             'Original');
INSERT INTO Song
      (Title, FileURL)
      VALUES('3005',
             'Original');
INSERT INTO Song
      (Title, FileURL)
      VALUES('Pyramids',
             'Original');

INSERT INTO Contributor
       (Name)
       VALUE('ASAP Rocky');

INSERT INTO Contributor
       (Name)
       VALUE('Frank Ocean');

INSERT INTO Contributor
       (Name)
       VALUE('Childish Gambino');

INSERT INTO Contributor
       (Name)
       VALUE('Brian Johnson');

INSERT INTO Contributor
       (Name)
       VALUE('Robert Plant');

INSERT INTO Contributor
       (Name)
       VALUE('ACDC');
       
INSERT INTO Contributor
       (Name)
       VALUE('Led Zepplin');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'ASAP Rocky'), (SELECT SongID FROM Song WHERE Title = 'Sundress'), 'main artist');

INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Frank Ocean'), (SELECT SongID FROM Song WHERE Title = 'Pyramids'), 'main artist');

INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Frank Ocean'), (SELECT SongID FROM Song WHERE Title = 'Nights'), 'main artist');

INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Childish Gambino'), (SELECT SongID FROM Song WHERE Title = 'Redbone'), 'main artist');

INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Childish Gambino'), (SELECT SongID FROM Song WHERE Title = '3005'), 'main artist');

INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Brian Johnson'), (SELECT SongID FROM Song WHERE Title = 'Back in Black'), 'main artist');

INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Robert Plant'), (SELECT SongID FROM Song WHERE Title = 'Stairway to Heaven'), 'artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'ACDC'), (SELECT SongID FROM Song WHERE Title = 'Back in Black'), 'artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Led Zepplin'), (SELECT SongID FROM Song WHERE Title = 'Stairway to Heaven'), 'artist');
*/
