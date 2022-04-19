USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(150) NOT NULL,
    release_date INT(6),
    sales FLOAT NOT NULL,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Fall Out Boy', 'From Under The Cork Tree', 2005, 233, 'Alternative Rock');

INSERT INTO albums(artist, name, release_date, sales, genre) VALUES ('Flyleaf', 'Flyleaf', 2006, 22323, 'Alternative Rock');

INSERT INTO albums(artist, name, release_date, sales, genre) VALUES
('Paramore', 'Riot!', 2007, 282828, 'Alternative');

INSERT INTO albums(artist, name, release_date, sales, genre) VALUES ('Bad Bunny', 'YHLQMDLG', 2020, 83838338, 'Reggaeton');



DESCRIBE albums;
SHOW CREATE TABLE albums;

