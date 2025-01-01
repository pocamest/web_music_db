INSERT INTO genres (name)
VALUES ('Поп'), ('Рок'), ('Хип-хоп');

INSERT INTO artists (name)
VALUES ('Клава Кока'), ('Тима Белорусских'), ('Мия Бойка'), ('Дора');

INSERT INTO albums (name, release_date)
VALUES ('Пятница', '2020-01-15'),
       ('Любовь и мир', '2019-03-20'),
       ('Моя история', '2017-12-25');

INSERT INTO compilations (name, release_date)
VALUES ('Лучшие хиты 2018', '2018-05-10'),
       ('Музыкальный сборник 2019', '2019-08-30'),
       ('Звездный микс 2020', '2020-11-15'),
       ('Сборник лучших песен 2021', '2021-07-02');

INSERT INTO artists_genres (artist_id, genre_id)
VALUES (1, 1), (2, 2), (3, 3), (4, 1), (4, 2);

INSERT INTO artists_albums (artist_id, album_id)
VALUES (1, 1), (2, 2), (3, 3), (4, 1), (4, 2);

INSERT INTO tracks_compilations (track_id, compilation_id)
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 1), (6, 2);
