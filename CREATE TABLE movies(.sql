CREATE TABLE movies(
    id_movie INT NOT NULL AUTO_INCREMENT,
    type_movie BIT,
    name VARCHAR(200) NOT NULL,
    total_ep INT,
    atual_ep INT,
    last_view DATE DEFAULT timestamp(),
    PRIMARY KEY (id_movie)
);

INSERT INTO 'movies' ('id_movie', 'type_movie', 'name', 'total_ep', 'atual_ep', 'last_view') VALUES ('1',0,'Star-Wars Boba Fet', '6', '1', current_time()),
(2, 1, 'Vingadores', NULL, NULL, CURRENT_TIMESTAMP()), (3, 1, 'O chamado', NULL, NULL, CURRENT_TIMESTAMP()),
(4, 1, 'Halloween 2021', NULL, NULL, CURRENT_TIMESTAMP()), (5, 0, 'Jujutsu no Kaisen', 24, 13, CURRENT_TIMESTAMP()),
(6, 0, 'Demon Slayer', 35, 35, CURRENT_TIMESTAMP()); 

UPDATE 'movies' SET 'last_view' = '2022-01-28' WHERE 'movies', 'id' = 1;

SELECT * FROM movies;

SELECT name, id_movie FROM movies;
UPDATE movies SET name = 'Avengers' WHERE id_movie = 2;
UPDATE movies SET name = 'Kimetsu no Yaiba (Demon Slayer)' WHERE id_movie = 6;

SELECT * FROM movie WHERE name = 'Jujutsu no Kaisen';
DELETE FROM movie WHERE name = 'Jujutsu no Kaisen';

INSERT INTO 'movies' (type_movie, name, last_view) VALUES (0, 'Jujutsu Kaisen (呪じゅ術じゅつ廻かい戦せん - "Batalha de Feiticeiros"', '2022 03 25');

SELECT * FROM movies;
SELECT * FROM movies ORDER BY name;
SELECT * FROM movies ORDER BY name DESC;

SELECT COUNT(id_movie), type_movie FROM movie GROUP BY type_movie;
SELECT COUNT(type_movie), type_movie FROM movie GROUP BY type_movie;
