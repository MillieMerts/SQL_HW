-- Название и продолжительность самого длительного трека
SELECT track_name, track_timeline
FROM track
WHERE track_timeline = (SELECT MAX(track_timeline) FROM track);

-- Название треков, продолжительность которых не менее 3,5 минут
SELECT track_name, track_timeline
FROM track
WHERE track_timeline >= '00:03:30';

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT collection_name, collection_releasedate
FROM collection
WHERE collection_releasedate BETWEEN 2018 AND 2020;

-- Исполнители, чьё имя состоит из одного слова
SELECT artist_alias
FROM artist
WHERE artist_alias NOT LIKE '% %';

-- Название треков, которые содержат слово «мой» или «my»
SELECT track_name
FROM track
WHERE STRING_TO_ARRAY(LOWER(track_name), ' ')&& ARRAY['my', 'мой'];

-- Количество исполнителей в каждом жанре
SELECT genre_name, COUNT(artist_id) 
FROM genre
JOIN artist_genre ON genre.id = artist_genre.genre_id
GROUP BY genre_name;

-- Количество треков, вошедших в альбомы 2019–2020 годов
SELECT COUNT(track.id)
FROM track
JOIN album ON album.id = track.album_id
WHERE album_releasedate BETWEEN 2019 AND 2020;

-- Средняя продолжительность треков по каждому альбому
SELECT album_name, AVG(track_timeline)
FROM track
JOIN album ON album.id = track.album_id
GROUP BY album_name;

-- Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT artist_alias
FROM artist
WHERE artist_alias != (
	SELECT artist.artist_alias FROM artist
	JOIN artist_album ON artist.id = artist_album.artist_id
	JOIN album ON artist_album.album_id = album.id
	WHERE album_releasedate = 2020);

-- Названия сборников, в которых присутствует конкретный исполнитель - Aerosmith.
SELECT DISTINCT collection_name 
FROM collection
JOIN track_collection ON collection.id = track_collection.collection_id 
JOIN track ON track_collection.track_id = track.id 
JOIN album ON track.album_id = album.id 
JOIN artist_album ON album.id = artist_album.album_id 
JOIN artist ON artist_album.artist_id = artist.id 
WHERE artist_alias = 'Aerosmith';
