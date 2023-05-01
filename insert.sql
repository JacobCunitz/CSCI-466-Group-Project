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

/*2 users and 7 songs, still need to add more contributers -AH
INSERT INTO User
      (Name, UserName, Password, DJ)
      VALUES('Jane Doe', 'USER', 'Notpassword', FALSE);

INSERT INTO User
      (Name, UserName, Password, DJ)
      VALUES('Jonny Appleseed', 'USER', 'NotApassword', FALSE);

INSERT INTO Song (Title, Description, FileURL) VALUES('Viva La Vida', 'solo', '');

INSERT INTO Song (Title, Description, FileURL) VALUES('King Kunta', 'solo', '');

INSERT INTO Song (Title, Description, FileURL) VALUES('My Girl', 'solo', '');

INSERT INTO Song (Title, Description, FileURL) VALUES('Last Nite', 'solo', '');

INSERT INTO Song (Title, Description, FileURL) VALUES('Empire State Of Mind', 'duet', '');

INSERT INTO Song (Title, Description, FileURL) VALUES('Hold On, We''re Going Home', 'solo', '');

INSERT INTO Song (Title, Description, FileURL) VALUES('Billie Jean', 'solo', '');

INSERT INTO Contributor (Name) VALUES ('Coldplay');

INSERT INTO Contributor (Name) VALUES ('Kendrick Lamar');

INSERT INTO Contributor (Name) VALUES ('The Temptations');

INSERT INTO Contributor (Name) VALUES ('The Strokes');

INSERT INTO Contributor (Name) VALUES ('Jay Z');
INSERT INTO Contributor (Name) VALUES ('Alicia Keys');

INSERT INTO Contributor (Name) VALUES ('Drake');

INSERT INTO Contributor (Name) VALUES ('Michael Jackson');

INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Coldplay'), (SELECT SongID FROM Song WHERE Title = 'Viva La Vida'), 'artist');

INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Kendrick Lamar'), (SELECT SongID FROM Song WHERE Title = 'King Kunta'), 'artist');

INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'The Temptations'), (SELECT SongID FROM Song WHERE Title = 'My Girl'), 'artist');

INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'The Strokes'), (SELECT SongID FROM Song WHERE Title = 'Last Nite'), 'artist');

INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Jay Z'), (SELECT SongID FROM Song WHERE Title = 'Empire State Of Mind'), 'artist');

INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Alicia Keys'), (SELECT SongID FROM Song WHERE Title = 'Empire State Of Mind'), 'featured artist');
    
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Drake'), (SELECT SongID FROM Song WHERE Title = 'Hold On, We''re Going Home'), 'artist');   

INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Michael Jackson'), (SELECT SongID FROM Song WHERE Title = 'Billie Jean'), 'artist');
*/

