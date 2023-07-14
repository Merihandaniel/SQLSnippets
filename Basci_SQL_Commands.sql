Create DATABASE Record_company;

CREATE TABLE songs (
  id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  length FLOAT,
  album_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (album_id)
);

SELECT bands.name AS 'Bands'
FROM bands;

SELECT AVG(length) as 'Average Song Time'
FROM songs;

#Utlizing joinn for two tables
SELECT
  albums.name AS 'Album',
  albums.release_year AS 'Release Year',
  MAX(songs.length) AS 'Duration'
FROM albums
JOIN songs ON albums.id = songs.album_id
GROUP BY songs.album_id;

INSERT INTO bands (name)
VALUES ('Maroon 5');

UPDATE albums
SET release_year = 2018
WHERE id = 9;
  
  