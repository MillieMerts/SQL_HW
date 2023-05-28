INSERT INTO artist(artist_alias)
VALUES
('Beyonce'),
('Madonna'),
('Aerosmith'),
('Nelly'),
('George Michael');

INSERT INTO genre(genre_name)
VALUES
('pop'),
('rnb'),
('rock'),
('hip-hop');

INSERT INTO album(album_name, album_releasedate)
VALUES
('Dangerously in love', 2003),
('Dreamgirls', 2006),
('Renaissance', 2016),
('Rebel Heart', 2015),
('The Next Best Thing', 2000),
('Ray of Light', 1998),
('Armageddon', 1998),
('Nine Lives', 1997),
('Just Push Play', 2001),
('Honkin" on Bobo', 2004),
('Celebrity', 2002),
('Nasty Girl', 2005),
('Here I Am', 2008),
('Songs from the Last Century', 1999),
('Patience', 2004),
('Twenty Five', 2006),
('Infinity', 2019),
('Best Hits', 2020),
('Right away', 2019);

INSERT INTO track(track_name, track_timeline, album_id)
VALUES
('Irreplaceble', 3.37, 1),
('Baby boy', 3.42, 1),
('Halo', 2.56, 1),
('Dreamgirls', 4.17, 2),
('I got you', 4.08, 3),
('Family', 3.51, 2),
('Frozen', 3.39, 4),
('Human Nature', 4.22, 5),
('Holywood', 3.58, 6),
('Vouge', 3.39, 4),
('Take a minute', 2.56, 5),
('Doesn"t really matter', 4.28, 6),
('Jump', 3.24, 5),
('Miss a thing', 4.09, 7),
('Shout', 3.45, 8),
('Pink', 2.48, 8),
('Dream On', 3.38, 9),
('Crazy', 4.02, 10),
('Fall down', 4.20, 10),
('Ride with me', 3.25, 11),
('Shawty', 3.43, 11),
('Try it out', 4.11, 12),
('Dilemma', 3.09, 12),
('My boo', 4.02, 13),
('Loose', 4.18, 13),
('Do my thang', 3.52, 13),
('Careless Whisper', 3.49, 14),
('Amaizing', 4.06, 15),
('Freedom', 3.27, 15),
('Heal my soul', 2.52, 16),
('Freek!', 3.44, 16),
('Last Christmas', 3.32, 14),
('What', 2.52, 17),
('Angel Eyes', 3.17, 17),
('My baby', 3.47, 17),
('Isla Bonita', 4.11, 18),
('Dream', 4.36, 18),
('Low riders', 3.48, 19),
('Mystical', 3.55, 19);

INSERT INTO artist_genre(artist_id, genre_id)
VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 3),
(3, 1),
(4, 2),
(4, 4),
(5, 1);


INSERT INTO artist_album(artist_id, album_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 11),
(4, 12),
(4, 13),
(5, 14),
(5, 15),
(5, 16),
(1, 17),
(2, 18),
(4, 19);

INSERT INTO collection(collection_name, collection_releasedate)
VALUES
('Best of 2000s', 2012),
('Pop songs', 2016),
('Love songs', 2019),
('Hits', 2020);

INSERT INTO track_collection(track_id, collection_id)
VALUES
(1, 1),
(2, 1),
(8, 1),
(9, 1),
(13, 1),
(20, 1),
(23, 1),
(5, 2),
(11, 2),
(21, 2),
(25, 2),
(31, 2),
(3, 3),
(7, 3),
(12, 3),
(14, 3),
(18, 3),
(24, 3),
(35, 3),
(4, 4),
(8, 4),
(11, 4),
(13, 4),
(17, 4),
(20, 4),
(31, 4);

