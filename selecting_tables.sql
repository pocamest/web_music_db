SELECT name, duration
FROM tracks
ORDER BY duration DESC
LIMIT 1;

SELECT name
FROM tracks
WHERE duration >= 210;

SELECT name
FROM compilations
WHERE release_date BETWEEN '2018-01-01' AND '2020-12-31';

SELECT name
FROM artists
WHERE name SIMILAR TO '[^ ]+';

SELECT name
FROM tracks
WHERE LOWER(name) LIKE '%мой%' OR LOWER(name) LIKE '%my%';


SELECT g.name AS genre_name, COUNT(ag.artist_id) AS artists_count
FROM genres AS g
INNER JOIN artists_genres AS ag ON g.id = ag.genre_id
GROUP BY genre_name;

SELECT COUNT(*) AS traks_count
FROM tracks AS t
INNER JOIN albums AS a ON t.album_id = a.id
WHERE a.release_date BETWEEN '2019-01-01' AND '2020-12-31';

SELECT a.name AS album_name, AVG(t.duration) AS avg_track
FROM tracks AS t
INNER JOIN albums AS a ON t.album_id = a.id
GROUP BY album_name;

SELECT DISTINCT ar.name AS artist_name
FROM artists AS ar
WHERE NOT EXISTS (
    SELECT *
    FROM artists_albums AS ar_al
    JOIN albums AS al ON ar_al.album_id = al.id
    WHERE ar.id = ar_al.artist_id
        AND release_date BETWEEN '2020-01-01' AND '2020-12-31'
);

SELECT c.name AS compilation_name
FROM tracks_compilations AS tc
INNER JOIN compilations AS c ON tc.compilation_id = c.id
INNER JOIN tracks AS t ON tc.track_id = t.id
INNER JOIN artists_albums AS aa ON t.album_id = aa.album_id
WHERE aa.artist_id = 1;

