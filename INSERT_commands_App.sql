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
('Irreplaceble', '00:03:37', 1),
('Baby boy', '00:03:42', 1),
('Halo', '00:02:56', 1),
('Dreamgirls', '00:04:17', 2),
('I got you', '00:04:08', 3),
('Family', '00:03:51', 2),
('Frozen', '00:03:39', 4),
('Human Nature', '00:04:22', 5),
('Holywood', '00:03:58', 6),
('Vouge', '00:03:39', 4),
('Take a minute', '00:02:56', 5),
('Doesn"t really matter', '00:04:28', 6),
('Jump', '00:03:24', 5),
('Miss a thing', '00:04:09', 7),
('Shout', '00:03:45', 8),
('Pink', '00:02:48', 8),
('Dream On', '00:03:38', 9),
('Crazy', '00:04:02', 10),
('Fall down', '00:04:20', 10),
('Ride with me', '00:03:25', 11),
('Shawty', '00:03:43', 11),
('Try it out', '00:04:11', 12),
('Dilemma', '00:03:09', 12),
('My boo', '00:04:02', 13),
('Loose', '00:04:18', 13),
('Do my thang', '00:03:52', 13),
('Careless Whisper', '00:03:49', 14),
('Amaizing', '00:04:06', 15),
('Freedom', '00:03:27', 15),
('Heal my soul', '00:02:52', 16),
('Freek!', '00:03:44', 16),
('Last Christmas', '00:03:32', 14),
('What', '00:02:52', 17),
('Angel Eyes', '00:03:17', 17),
('My baby', '00:03:47', 17),
('Isla Bonita', '00:04:11', 18),
('Dream', '00:04:36', 18),
('Low riders', '00:03:48', 19),
('Mystical', '00:03:55', 19),
('All by myself', '00:04:04', 4);

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
(31, 4),
(40, 3);

