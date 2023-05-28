CREATE TABLE IF NOT EXISTS artist (
		id SERIAL PRIMARY KEY,
		artist_alias VARCHAR(60) NOT NULL
);
	

CREATE TABLE IF NOT EXISTS genre (
		id SERIAL PRIMARY KEY,
		genre_name VARCHAR(40) NOT NULL
);


CREATE TABLE IF NOT EXISTS artist_genre (
		artist_id INTEGER REFERENCES artist(id),
		genre_id INTEGER REFERENCES genre(id),
		CONSTRAINT pk PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS album (
		id SERIAL PRIMARY KEY,
		album_name VARCHAR(80) NOT NULL,
		album_releasedate INTEGER NOT NULL CHECK (album_releasedate > 1000)
);

CREATE TABLE IF NOT EXISTS track (
		id SERIAL PRIMARY KEY,
		track_name VARCHAR(80) NOT NULL,
		track_timeline NUMERIC(3, 2) NOT NULL,
		album_id INTEGER REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS artist_album (
		artist_id INTEGER REFERENCES artist(id),
		album_id INTEGER REFERENCES album(id),
		CONSTRAINT ppAA PRIMARY KEY (artist_id, album_id)
);


CREATE TABLE IF NOT EXISTS collection (
		id SERIAL PRIMARY KEY,
		collection_name VARCHAR(80) NOT NULL,
		collection_releasedate INTEGER NOT NULL CHECK (collection_releasedate > 1000)
);


CREATE TABLE IF NOT EXISTS track_collection (
		track_id INTEGER REFERENCES track(id),
		collection_id INTEGER REFERENCES collection(id),
		CONSTRAINT ppTC PRIMARY KEY (track_id, collection_id)
);

