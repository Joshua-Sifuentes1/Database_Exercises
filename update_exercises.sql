USE codeup_test_db;

-- ==================================================================

SELECT name as "All albums", release_date, sales
FROM albums;

UPDATE albums
SET sales = (sales * 10)
WHERE sales = sales;

SELECT name as "All albums", release_date, sales
FROM albums;

-- ==================================================================

SELECT name as "Albums released before 1980", release_date, sales 
FROM albums
WHERE release_date < '1980';

UPDATE albums
SET release_date = "1900-01-01"
WHERE release_date < '1980-01-01';

SELECT name as "Albums released before 1980", release_date, sales 
FROM albums
WHERE release_date < '1980';

-- ==================================================================

SELECT name as "Michael Jackson albums"
FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT name as "Michael Jackson albums converted to Peter Jackson", artist, release_date
FROM albums
WHERE artist = 'Peter Jackson';