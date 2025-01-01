CREATE TABLE genres (
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(255)
);

CREATE TABLE artists (
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(255)
);

CREATE TABLE albums (
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(255),
	release_date DATE
);

CREATE TABLE tracks (
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(255),
	duration INTEGER,
	album_id INT REFERENCES albums(id)
);

CREATE TABLE compilations (
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(255),
	release_date DATE
);

CREATE TABLE artists_genres (
	artist_id INT REFERENCES artists(id),
	genre_id INT REFERENCES genres(id),
	PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE artists_albums (
	artist_id INT REFERENCES artists(id),
	album_id INT REFERENCES albums(id),
	PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE tracks_compilations (
	track_id INT REFERENCES tracks(id),
	compilation_id INT REFERENCES compilations(id),
	PRIMARY KEY (track_id, compilation_id)
);