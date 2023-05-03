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

INSERT INTO User
      (Name, UserName, Password, DJ)
      VALUES('Stacy Smith', 'USER', 'password1', FALSE);

INSERT INTO User
      (Name, UserName, Password, DJ)
      VALUES('John Doe', 'USER', 'password2', FALSE);

INSERT INTO User
      (Name, UserName, Password, DJ)
      VALUES('James Kelsey', 'DJ', 'password3', TRUE);

INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Stairway to Heaven',
             'Original',
             'https://www.youtube.com/watch?v=QkF3oxziUI4');
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Back in Black',
             'Original',
              'https://www.youtube.com/watch?v=pAgnJDJN4VA');
              
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Changes',
             'Original',
             'https://www.youtube.com/watch?v=xg3J5slvB-k');
             
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Without Me',
             'Original',
             'https://www.youtube.com/watch?v=YVkUvmDQ3HY');
             
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Till I Collapse',
             'Original',
             'https://www.youtube.com/watch?v=Pi3_Zs-oRUo');
             
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Sundress',
             'Original',
             'https://www.youtube.com/watch?v=xre-oQn1DhY');
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Nights',
             'Original',
             'https://www.youtube.com/watch?v=r4l9bFqgMaQ');
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Redbone',
             'Original',
             'https://www.youtube.com/watch?v=Kp7eSUU9oy8');
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('3005',
             'Original',
              'https://www.youtube.com/watch?v=Jh3fn9YwFtI');
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Pyramids',
             'Original',
             'https://www.youtube.com/watch?v=dMV31MWIjLE');             
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Nikes',
             'Original',
             'https://www.youtube.com/watch?v=diIFhc_Kzng');
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Forever',
             'Original',
             'https://www.youtube.com/watch?v=eDuRoPIOBjE');
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Hells Bells',
             'Original',
             'https://www.youtube.com/watch?v=etAIpkdhU9Q');

INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Everlong',
             'Original',
             'https://www.youtube.com/watch?v=AxuTd9rwEHQ');
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Smells Like Teen Spirit',
             'Original',
             'https://www.youtube.com/watch?v=hTWKbfoikeg');
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Love Bites',
             'Original',
             'https://www.youtube.com/watch?v=W4XiSFyYRE8');
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Hail to the King',
             'Original',
             'https://www.youtube.com/watch?v=MjwttGizNEs&list=RDGMEMJQXQAmqrnmK1SEjY_rKBGA&start_radio=1&rv=W4XiSFyYRE8');
             
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Dear Mama',
             'Original',
             'https://www.youtube.com/watch?v=Mb1ZvUDvLDY');


INSERT INTO Contributor (Name) VALUES ('Eminem');
INSERT INTO Contributor (Name) VALUES ('Drake');
INSERT INTO Contributor (Name) VALUES ('Lil Wayne');
INSERT INTO Contributor (Name) VALUES ('Kanye West');
INSERT INTO Contributor (Name) VALUES ('Def Leppard');
INSERT INTO Contributor (Name) VALUES ('Avenge Sevenfold');
INSERT INTO Contributor (Name) VALUES ('Foo Fighters');
INSERT INTO Contributor (Name) VALUES ('Nirvana');
INSERT INTO Contributor (Name) VALUES ('Krist Novoselic');
INSERT INTO Contributor (Name) VALUES ('Dave Grohl');
INSERT INTO Contributor (Name) VALUES ('Kurt Cobain');
INSERT INTO Contributor (Name) VALUES ('Taylor Hawkins');
INSERT INTO Contributor (Name) VALUES ('Pat Smear');
INSERT INTO Contributor (Name) VALUES ('Chris Shiflett');
INSERT INTO Contributor (Name) VALUES ('Nat Mendel');
INSERT INTO Contributor (Name) VALUES ('Rami Jaffee');
INSERT INTO Contributor (Name) VALUES ('William Goldsmith');
INSERT INTO Contributor (Name) VALUES ('Franz Stahl');
INSERT INTO Contributor (Name) VALUES ('Rick Savage');
INSERT INTO Contributor (Name) VALUES ('Joe Elliott');
INSERT INTO Contributor (Name) VALUES ('Rick Allen');
INSERT INTO Contributor (Name) VALUES ('Phil Collen');
INSERT INTO Contributor (Name) VALUES ('Vivian Campbell');
INSERT INTO Contributor (Name) VALUES ('2Pac');


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
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Eminem'), (SELECT SongID FROM Song WHERE Title = 'Till I Collapse'), 'artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Eminem'), (SELECT SongID FROM Song WHERE Title = 'Without Me'), 'artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = '2Pac'), (SELECT SongID FROM Song WHERE Title = 'Dear Mama'), 'artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = '2Pac'), (SELECT SongID FROM Song WHERE Title = 'Changes'), 'artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Joe Elliott'), (SELECT SongID FROM Song WHERE Title = 'Love Bites'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Vivian Campbell'), (SELECT SongID FROM Song WHERE Title = 'Love Bites'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Phil Collen'), (SELECT SongID FROM Song WHERE Title = 'Love Bites'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Rick Allen'), (SELECT SongID FROM Song WHERE Title = 'Love Bites'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Rick Savage'), (SELECT SongID FROM Song WHERE Title = 'Love Bites'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Def Leppard'), (SELECT SongID FROM Song WHERE Title = 'Love Bites'), 'artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Franz Stahl'), (SELECT SongID FROM Song WHERE Title = 'Everlong'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'William Goldsmith'), (SELECT SongID FROM Song WHERE Title = 'Everlong'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Rami Jaffee'), (SELECT SongID FROM Song WHERE Title = 'Everlong'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Nat Mendel'), (SELECT SongID FROM Song WHERE Title = 'Everlong'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Foo Fighters'), (SELECT SongID FROM Song WHERE Title = 'Everlong'), 'artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Taylor Hawkins'), (SELECT SongID FROM Song WHERE Title = 'Everlong'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Pat Smear'), (SELECT SongID FROM Song WHERE Title = 'Everlong'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Chris Shiflett'), (SELECT SongID FROM Song WHERE Title = 'Everlong'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Avenge Sevenfold'), (SELECT SongID FROM Song WHERE Title = 'Hail to the King'), 'artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Nirvana'), (SELECT SongID FROM Song WHERE Title = 'Smells Like Teen Spirit'), 'artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Krist Novoselic'), (SELECT SongID FROM Song WHERE Title = 'Smells Like Teen Spirit'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Dave Grohl'), (SELECT SongID FROM Song WHERE Title = 'Smells Like Teen Spirit'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Kurt Cobain'), (SELECT SongID FROM Song WHERE Title = 'Smells Like Teen Spirit'), 'main artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Eminem'), (SELECT SongID FROM Song WHERE Title = 'Forever'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Lil Wayne'), (SELECT SongID FROM Song WHERE Title = 'Forever'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Kanye West'), (SELECT SongID FROM Song WHERE Title = 'Forever'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Drake'), (SELECT SongID FROM Song WHERE Title = 'Forever'), 'featured artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Brian Johnson'), (SELECT SongID FROM Song WHERE Title = 'Hells Bells'), 'main artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'ASAP Rocky'), (SELECT SongID FROM Song WHERE Title = 'Sundress'), 'main artist');

INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Frank Ocean'), (SELECT SongID FROM Song WHERE Title = 'Pyramids'), 'main artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Frank Ocean'), (SELECT SongID FROM Song WHERE Title = 'Nikes'), 'main artist');

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


INSERT INTO User
      (Name, UserName, Password, DJ)
      VALUES('Jennifer Smith', 'USER', 'password4', FALSE);
      
INSERT INTO User
      (Name, UserName, Password, DJ)
      VALUES('Seth Anderson', 'USER', 'password5', FALSE);
 
INSERT INTO User
      (Name, UserName, Password, DJ)
      VALUES('Stephanie Stevens', 'USER', 'password6', FALSE);
      
INSERT INTO User
      (Name, UserName, Password, DJ)
      VALUES('Michael Anderson', 'USER', 'password7', FALSE);
      
INSERT INTO User
      (Name, UserName, Password, DJ)
      VALUES('Sarah Warren', 'USER', 'password8', FALSE);
      
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('White Ferrari',
             'Original',
             'https://www.youtube.com/watch?v=Dlz_XHeUUis');
            
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('White Ferrari San Holo Remix',
             'Remix',
             'https://www.youtube.com/watch?v=SrqmUux7TWY');
             
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Flashing Lights',
             'Original',
             'https://www.youtube.com/watch?v=ZAz3rnLGthg');
             
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Runaway',
             'Original',
             'https://www.youtube.com/watch?v=VhEoCOWUtcU');
        
INSERT INTO Song
      (Title, Description, FileURL)
      VALUES('Trophies',
             'Original',
             'https://www.youtube.com/watch?v=vkSFh6HMUtQ');
             
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Frank Ocean'), (SELECT SongID FROM Song WHERE Title = 'White Ferrari'), 'main artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Frank Ocean'), (SELECT SongID FROM Song WHERE Title = 'White Ferrari San Holo Remix'), 'main artist');
       
 INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Kanye West'), (SELECT SongID FROM Song WHERE Title = 'Flashing Lights'), 'main artist');
       
 INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Kanye West'), (SELECT SongID FROM Song WHERE Title = 'Runaway'), 'main artist');
       
INSERT INTO SongContribution
       (ContributorID, SongID, Role)
       VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Drake'), (SELECT SongID FROM Song WHERE Title = 'Trophies'), 'main artist');
       


INSERT INTO User
      (Name, UserName, Password, DJ)
      VALUES('Jane Doe', 'USER', 'Notpassword', FALSE);

INSERT INTO User
      (Name, UserName, Password, DJ)
      VALUES('Jonny Appleseed', 'USER', 'NotApassword', FALSE);

INSERT INTO Song (Title, Description, FileURL) VALUES('Viva La Vida', 'solo', 'https://www.youtube.com/watch?v=FSll_OC0L64');

INSERT INTO Song (Title, Description, FileURL) VALUES('King Kunta', 'solo', 'https://www.youtube.com/watch?v=TepbpUTI8o4');

INSERT INTO Song (Title, Description, FileURL) VALUES('My Girl', 'solo', 'https://www.youtube.com/watch?v=fuq_VBauc0A');

INSERT INTO Song (Title, Description, FileURL) VALUES('Last Nite', 'solo', 'https://www.youtube.com/watch?v=Gfsyf5JLck0');

INSERT INTO Song (Title, Description, FileURL) VALUES('Empire State Of Mind', 'duet', 'https://www.youtube.com/watch?v=52WbRVGAUBI');

INSERT INTO Song (Title, Description, FileURL) VALUES('Hold On, We''re Going Home', 'solo', 'https://www.youtube.com/watch?v=ZrgaKQN6Vcw');

INSERT INTO Song (Title, Description, FileURL) VALUES('Billie Jean', 'solo', 'https://www.youtube.com/watch?v=eXqBhDAlVCc');

INSERT INTO Contributor (Name) VALUES ('Coldplay');
INSERT INTO Contributor (Name) VALUES ('Chris Martin');
INSERT INTO Contributor (Name) VALUES ('Guy Berryman');
INSERT INTO Contributor (Name) VALUES ('Jonny Buckland');
INSERT INTO Contributor (Name) VALUES ('Will Champion');

INSERT INTO Contributor (Name) VALUES ('Kendrick Lamar');

INSERT INTO Contributor (Name) VALUES ('The Temptations');
INSERT INTO Contributor (Name) VALUES ('David Ruffin');
INSERT INTO Contributor (Name) VALUES ('Eddie Kendricks');
INSERT INTO Contributor (Name) VALUES ('Paul Williams');
INSERT INTO Contributor (Name) VALUES ('Melvin Franklin');
INSERT INTO Contributor (Name) VALUES ('Otis Williams');

INSERT INTO Contributor (Name) VALUES ('The Strokes');
INSERT INTO Contributor (Name) VALUES ('Julian Casablancas');
INSERT INTO Contributor (Name) VALUES ('Nick Valensi');
INSERT INTO Contributor (Name) VALUES ('Albert Hammond Jr');
INSERT INTO Contributor (Name) VALUES ('Nikolai Fraiture');
INSERT INTO Contributor (Name) VALUES ('Fabrizio Moretti');

INSERT INTO Contributor (Name) VALUES ('Jay Z');
INSERT INTO Contributor (Name) VALUES ('Alicia Keys');

INSERT INTO Contributor (Name) VALUES ('Drake');

INSERT INTO Contributor (Name) VALUES ('Michael Jackson');

INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Coldplay'), (SELECT SongID FROM Song WHERE Title = 'Viva La Vida'), 'artist');
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Chris Martin', (SELECT SongID FROM Song WHERE Title = 'Viva La Vida'), 'main artist');
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Guy Berryman'), (SELECT SongID FROM Song WHERE Title = 'Viva La Vida'), 'main artist');
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Jonny Buckland'), (SELECT SongID FROM Song WHERE Title = 'Viva La Vida'), 'main artist');
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Will Champion'), (SELECT SongID FROM Song WHERE Title = 'Viva La Vida'), 'main artist');

INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Kendrick Lamar'), (SELECT SongID FROM Song WHERE Title = 'King Kunta'), 'artist');

INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'The Temptations'), (SELECT SongID FROM Song WHERE Title = 'My Girl'), 'artist');
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'David Ruffin'), (SELECT SongID FROM Song WHERE Title = 'My Girl'), 'main artist');
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Eddie Kendricks'), (SELECT SongID FROM Song WHERE Title = 'My Girl'), 'main artist');
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Paul Williams'), (SELECT SongID FROM Song WHERE Title = 'My Girl'), 'main artist');
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Melvin Franklin'), (SELECT SongID FROM Song WHERE Title = 'My Girl'), 'main artist');
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Otis Williams'), (SELECT SongID FROM Song WHERE Title = 'My Girl'), 'main artist');

INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'The Strokes'), (SELECT SongID FROM Song WHERE Title = 'Last Nite'), 'artist');
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Julian Casablancas'), (SELECT SongID FROM Song WHERE Title = 'Last Nite'), 'main artist');
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Nick Valensi'), (SELECT SongID FROM Song WHERE Title = 'Last Nite'), 'main artist');
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Albert Hammond Jr'), (SELECT SongID FROM Song WHERE Title = 'Last Nite'), 'main artist');
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Nikolai Fraiture'), (SELECT SongID FROM Song WHERE Title = 'Last Nite'), 'main artist');
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Fabrizio Moretti'), (SELECT SongID FROM Song WHERE Title = 'Last Nite'), 'main artist');

INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Jay Z'), (SELECT SongID FROM Song WHERE Title = 'Empire State Of Mind'), 'artist');

INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Alicia Keys'), (SELECT SongID FROM Song WHERE Title = 'Empire State Of Mind'), 'featured artist');
    
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Drake'), (SELECT SongID FROM Song WHERE Title = 'Hold On, We''re Going Home'), 'artist');   

INSERT INTO SongContribution (ContributorID, SongID, Role) VALUE((SELECT ContributorID FROM Contributor WHERE Name = 'Michael Jackson'), (SELECT SongID FROM Song WHERE Title = 'Billie Jean'), 'artist');

INSERT INTO Queue (UserID, SongID, PremiumUser, AmountPaid) VALUE ((SELECT UserID FROM User WHERE Name = 'Jonny Appleseed'),(SELECT SongID FROM Song WHERE Title = 'Billie Jean'), 1, 7.50);

INSERT INTO Queue (UserID, SongID, PremiumUser) VALUE ((SELECT UserID FROM User WHERE Name = 'Jane Doe'),(SELECT SongID FROM Song WHERE Title = 'Viva La Vida'), 0);


