CREATE TABLE movies(
    id_movie INT PRIMARY KEY AUTO_INCREMENT,
    type_movie BIT,
    name VARCHAR(60) NOT NULL,
    total_ep INT,
    atual_ep INT,
    last_view DATE DEFAULT timestamp()
);

INSERT INTO 'movies' ('id_movie', 'type_movie', 'name', 'total_ep', 'atual_ep', 'last_view') VALUES ('1',0,'Star-Wars Boba Fet', '6', '1', current_time()),
(2, 1, 'Vingadores', NULL, NULL, CURRENT_TIMESTAMP()), (3, 1, 'O chamado', NULL, NULL, CURRENT_TIMESTAMP()),
(4, 1, 'Halloween 2021', NULL, NULL, CURRENT_TIMESTAMP()), (5, 0, 'Jujutsu no Kaisen', 24, 13, CURRENT_TIMESTAMP()),
(6, 0, 'Demon Slayer', 35, 35, CURRENT_TIMESTAMP()); 

UPDATE 'movies' SET 'last_view' = '2022-01-28' WHERE 'movies', 'id' = 1;
