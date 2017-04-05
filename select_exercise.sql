USE codeup_test_db;

SELECT name as 'Pink Floyd Albums'
FROM albums 
WHERE artist = 'Pink Floyd';

-- =====================================================================

SELECT release_date as 'The year Sgt. Peppers Lonely Hearts Club Band was released' 
FROM albums 
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

-- =====================================================================

SELECT genre as "The Genre for the album 'Nevermind'" 
FROM albums 
WHERE name = 'Nevermind';

-- =====================================================================

SELECT * FROM albums 
WHERE release_date 
BETWEEN 1990 AND 1999;

-- =====================================================================

SELECT * FROM albums 
WHERE sales < 20000000;

-- =====================================================================

SELECT name as 'Albums that have a genre of Rock' 
FROM albums 
WHERE genre LIKE '%rock%' or genre LIKE 'Rock%';