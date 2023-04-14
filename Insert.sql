INSERT INTO Contributor (Name) VALUES ('testname1');
INSERT INTO Contributor (Name) VALUES ('testname2');

INSERT INTO Song (Title, FileURL) VALUES ('Test Song 1', 'http://example.com/test1.mp3');
INSERT INTO Song (Title, FileURL) VALUES ('Test Song 2', 'http://example.com/test2.mp3');

INSERT INTO User (Name) VALUES ('testname1');
INSERT INTO User (Name) VALUES ('testname2');

INSERT INTO SongContribution (ContributorID, SongID, Role) VALUES (1, 1, 'artist');
INSERT INTO SongContribution (ContributorID, SongID, Role) VALUES (2, 1, 'producer');

INSERT INTO Queue (UserID, SongID, PremiumUser, AmountPaid) VALUES (1, 1, TRUE, 9.99);
INSERT INTO Queue (UserID, SongID, PremiumUser, AmountPaid) VALUES (2, 2, FALSE, 0.00);
